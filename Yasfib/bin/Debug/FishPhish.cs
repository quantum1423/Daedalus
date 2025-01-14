﻿    /* LICENSE 
         * THIS C SHARP SOURCE CODE IS LICENSED UNDER THE
         * GPL-INCOMPATIBLE FISHPHISH NON-FREE LICENSE, AND
         * IS (C) 2011 ERIC DONG AND THE AUTHORS OF
         * DAEDALUS.
         You may not modify this code in any way, though
         you may redistribute it with your programs.
         Eric Dong and the authors of Yasfib grant you
         the right to utilize FishPhish to block phishing
         sites in your browsers, provided that you agree
         to the following terms:
         
         1. You may not claim the code as your own.
         2. You may not re-brand FishPhish.
         3. You must credit Eric Dong or Daedalus in
         the about page AND in all advertisements
         featuring the phishing engine. You are not
         allowed to credit us with anything smaller
         than 9 point text.*/
using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
namespace Yasfib
{
    class FishPhish
    {
        public static string string2domain(string Url)
        {
            if (!Url.Contains("://"))
                Url = "http://" + Url;

            return new Uri(Url).Host;
        }
        
        public static bool checkAll(string content, string url)
        {
            try
            {
                //PayPal
                if (string2domain(url).ToString() != "www.paypal.com")
                {
                    if (content.Contains("i/logo/paypal_logo.gif") ||
                        content.Contains("webscr?cmd=_home"))
                    {
                        return true;
                    }
                }
                //Taobao
                if (string2domain(url).ToString() != "login.taobao.com")
                {
                    if (content.Contains("<p>移动<em>106575258196</em></p>") ||
                        content.Contains("<h4>您需要安装安全控件，才可使用安全登录。</h4>") ||
                        content.Contains("<span class=\"visitor\" id=\"J_VisitorTips_1\">"))
                    {
                        return true;
                    }
                }
                //Alipay
                if (string2domain(url).ToString() != "auth.alipay.com")
                {
                    if (content.Contains("<!--CMS大区域开始/标准登录页/标准登录页banner/loginBanner-->") ||
                        content.Contains("h2 seed=\"auth-alipayMember\">") ||
                        content.Contains("login.jhtml?style=alipay&amp;goto=") ||
                        content.Contains("<form name=\"loginForm\" id=\"login\" action=\"https://auth.alipay.com/login/index.htm\" method=\"post\" > "))
                    {
                        return true;
                    }
                }
                if (string2domain(url).ToString() != "mail.qq.com")
                {
                    if (content.Contains("https://res.mail.qq.com/zh_CN/htmledition/images/ico_help023457.gif") ||
                        content.Contains("src=\"/cgi-bin/getverifyimage?aid=23000101&f=html&ck=1&54973\"") ||
                        content.Contains("login.jhtml?style=alipay&amp;goto=") ||
                        content.Contains("><li>如上述方式仍然无法解决问题，请登录<a href=\"http://maildisk.bbs.qq.com\"_top>邮箱论坛通知我们</a>") ||
                        content.Contains("*margin-left:45px;color:#868686;clear:left;"))
                    {
                        return true;
                    }
                }
                if (string2domain(url).ToString() != "mail.163.com")
                {
                    if (content.Contains("<a href=\"http://uinfo.mail.163.com/cgi-bin/hseed/two.pl\"></a>"))
                    {
                        return true;
                    }
                    else { return false; }
                }
            }
            catch {}
            return false;
        }
       
    }
}
