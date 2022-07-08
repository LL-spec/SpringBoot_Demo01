package com.dfbz.controller;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.dfbz.dao.DingdanDao;
import com.dfbz.po.AlipayBean;
import com.dfbz.po.Dingdan;
import com.dfbz.po.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/alipay")
public class AlipayController {
    /**日志对象*/
    private static final Logger logger = LoggerFactory.getLogger(AlipayController.class);

    //应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
//    @Value("${appid}")
    private String appId = "2021000121613210";

    //商户私钥 您的PKCS8格式RSA2私钥
    private String privateKey = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCEgWPTFJEhijoanRd/JFeYZFWtJnWa2cx2pe+JlkmpMokxbqFvHJ2ECRTxOYWeD5z4seDtpLcMk5xYRzqc5D9hbz+2da9FYoIEQZCbVb0nAyVVCLh9hj9PrebkMRUwMrQ8u0LKR//L8cP1MIvxylXui+XTHDPg5isogKQhZoxOONmKBe+hpyMxtmw6uBWcKczTJ0B2BSCRKJK70hyazIFNOsJHOlbe1cUHEPNcMag2PGRaj41SJ+tyHnXagtNMqM7ZXHHHMPDZjmlfDL3+9R93d8TqM+aMlJh6COonKG6ttd9AAsNivrnbcjQJJtQ8jIP6Xv/rot6PtBOIMkTndSJNAgMBAAECggEBAINtg4IeaEWIQVGcd23Ysjmpa4GvH/9UAIW+2PTzaGS2h3XMcbsv+ty31Vne4DWC7wOOC7grJJUI5I57OBveGS+flOZ5nDuKFcP69F/ejxte92x8leGLgsiZiObV+FoyMKv8YacZ+xJi3ycX2/cb5lgR0weudZahNjWaQzIN8SSztredVq2qR24wpCjed3Bgr7jAlB4+Yc7AVUS8ZmChedOyvssvBfjCrbJv8mDMAhaWrKTHSByaNTWUjge44nQEPYBwRc4opG3i+btJqJ2MAZnK3Z70nFfhSEMICH4OynhJBNl2wphRkMs5pr9QePL9lV9PRZuHu+Aum7LaUCSrxdECgYEAz5DdLjhYdbWRilHS/xFW9awrFATspNMdjrffHl26TU/965N3x1+uBryHYkYWKnqxgPmelKMzPE48J8YlQEccLJ7pGZUroeWX2kYH/ZZQ7scHNUCJZSmqhqUk6L6JIxqibd+5/OuM/hkZcVgLC9kA4bW4iLNaNGq9e9IADiqcl5MCgYEAo2y42pKXg8DzzZEcCGqfzPxrar/BctJfHsZ9my4vajzMWnOfdWUhAdXJTLdIC29r79Naz739m+APmJbt/PTLHpAnrLMzT/eKlxtmTz5DgJy7IzqBRGOqAIypnIjnGEFaHx7dNuG699ZoAGRdE9DUNLgZvdxIIaFam6z5COqjyp8CgYEAn/31vy7HYNP3vzqa/OkMsolnGyNAlTv1yJCKdwmgFP/XpcIhzZg+uAqSAHotk8jHEbdXORMi5xUW4UGmbQli+jHzUzjcTQqAJktc1WcMM0FOmQmJ3mRjgS3CaXSUmG5rTW3qGr4mC6alKezHdvZp65D7EMPOgCDWtZ6FVGYcFekCgYEAkP6LW9GoAEuXhBF1D7qaIWLrYwDS/67KmiF9m8r0Youiu7XOCng5OsmVGi2bDBpFZ7jb32kvs7at37I5YK9H78vyh3VO12pHWh4DPdd+SIPGPVFRE35hfK9QZQPKFWkWLnpRxrmsCuv9xitFsakcPdIBdMQWc1AXdfuX0GNuAv0CgYAu1K0WXERVeMImHePiqQ+unsiBkUMxltByLNYkpXlWxWsYyXiQSbykE1DWKv0MMc9PhYmTRnD8Is66Qyfd3w1Y9IJdcvGX+tn0lJIMRFBv20ue70ke5fALjsCBMQ6+aiVN/0axhM2gPTFYkDZYo0N2Hp5+rEHVH6FAzahTzPH4PA==";

    //支付宝公钥
    private String publicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvWUmKJiX90taUJVjX69kMDILtFXyBuzpbndYWQXuBoWBFN2cOLunH4+gfVFA3NSzxSwojU7Bl5Wu2EzBMf1TQzFErYEjR6z972g1J1Uo21vovzIU/8f7iljRjNNYMZ5AfX57YPzmiU95YPJv2wnfoToIcqzcl4/LBnXfVYe6DbJTuzfudV7dvrRZ+Kb54r+nYkd77PUs4iPnre8XF4+dC7zjQWBIzJyUayOTQpwjnJPTRCmP0qikH5PuG2KQJVeEXiVTnglgYjhFXLsz7qJS4g3LxssLnCg2U9N3pwc8m7hCYgy2OpKTX9MeP4w2KsxCwsChs9NayHqSDp5U8to7cwIDAQAB";


    //服务器异步通知页面路径
    private String notify_url = " http://zt536v.natappfree.cc/alipay/notify";

    //http://pwbiyr.natappfree.cc

    //页面跳转同步通知页面路径
    private String return_url = " http://localhost:8080/alipay/success";

    //签名方式
    private String signType = "RSA2";

    //字符编码格式
    private String charset = "utf-8";

    //支付宝网关
    private String gateway = "https://openapi.alipaydev.com/gateway.do";

    private final String format = "json";

    @Autowired
    DingdanDao dingdanDao;

    //PC网页段支付，返回的是支付宝账号的登录页面
    @RequestMapping("/pay")
    @ResponseBody
    public String pay(Dingdan dingdan) throws AlipayApiException {
        //模拟数据 alipay：支付宝的下单接口
        AlipayBean alipayBean = new AlipayBean();
        if (dingdan.getCname().equals("所有订单")) {
            alipayBean.setOut_trade_no(UUID.randomUUID().toString().replaceAll("-", ""));
        } else {
            alipayBean.setOut_trade_no(dingdan.getDid().toString());
        }
        alipayBean.setSubject(dingdan.getCname());
        alipayBean.setTotal_amount(dingdan.getTotal().toString());
        alipayBean.setBody(dingdan.getCdetail());

        System.out.println(alipayBean);

        AlipayClient alipayClient = new DefaultAlipayClient(gateway, appId, privateKey, format, charset, publicKey, signType);
        //PC网页支付使用AlipayTradePagePayRequest传参，下面调用的是pageExecute方法 初始化一个阿里封装的request
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        //把回调函数地址
        alipayRequest.setReturnUrl(return_url);
        alipayRequest.setNotifyUrl(notify_url);
        alipayRequest.setBizContent(JSON.toJSONString(alipayBean));
        logger.info("封装请求支付宝付款参数为:{}", JSON.toJSONString(alipayRequest));

        // 调用SDK生成表单
        String result = alipayClient.pageExecute(alipayRequest).getBody();
        logger.info("请求支付宝付款返回参数为:{}", result);

        return result;
    }

    @RequestMapping("/success")
    public String success(){
        return "confirm";
    }

    @PostMapping("/notify")
//    @ResponseBody
    public String finishNotify(HttpServletRequest request) throws AlipayApiException, UnsupportedEncodingException {

        System.out.println("mqfmjv1103@sandbox.com");
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();


        User user = (User) request.getSession().getAttribute("user");
        System.out.println(user);

        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext(); ) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        }

        //调用SDK验证签名
        System.out.println(params.toString());
        boolean signVerified = AlipaySignature.rsaCheckV1(params, publicKey, charset, signType);
        System.out.println("SDK验证签名结果1：" + signVerified);

        if (signVerified) { //验证成功
            // 商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");

            // 支付宝交易号
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");

            // 交易状态
            String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"), "UTF-8");

            //订单名称
            String subject = request.getParameter("subject");


            System.out.println("==========");
            System.out.println("out_trade_no: " + out_trade_no);
            System.out.println("trade_no: " + trade_no);
            System.out.println("trade_status: " + trade_status);
            System.out.println("subject: " + subject);


            if (trade_status.equals("TRADE_FINISHED")) {
                // 判断该笔订单是否在商户网站中已经做过处理
                // 如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                // 如果有做过处理，不执行商户的业务程序

                // 注意：
                // 退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
            } else if (trade_status.equals("TRADE_SUCCESS")) {

                if (subject.equals("所有订单")) {
                    dingdanDao.updateAllStatus(user.getUid());
                } else {
                    dingdanDao.updateStatus(Integer.parseInt(out_trade_no));
                }
                // 判断该笔订单是否在商户网站中已经做过处理
                // 如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                // 如果有做过处理，不执行商户的业务程序

                // 注意：
                // 付款完成后，支付宝系统发送该交易状态通知
            }
            return "success";

        } else { //验证失败
            // 调试用，写文本函数记录程序运行情况是否正常
            // String sWord = AlipaySignature.getSignCheckContentV1(params);
            // AlipayConfig.logResult(sWord);
            return "fail";
        }

    }
}
