Return-Path: <devicetree+bounces-7308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BF87BFFAF
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:52:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10BA2281C36
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B05424C73;
	Tue, 10 Oct 2023 14:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pvcp2L4H"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1801428E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:52:52 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8664B6;
	Tue, 10 Oct 2023 07:52:49 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50336768615so7554274e87.0;
        Tue, 10 Oct 2023 07:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696949568; x=1697554368; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NUkVmCPpadfaQWhNaIF6MgMWdRIKYVJjqWjOHwXj0+M=;
        b=Pvcp2L4H/n5MrjMlX+4ChK8D4NfrneG5m4ht+I+7Qa4NUwdnR6c32KXd78/j1Y0kch
         HLBqOIBRuXJeLbzVaE2j5uCV1w+uVhxzGAFay5nCUHsDzk+vFIv5SPY9wOftgkEJxFuH
         c6HA+QIYAifmlG7iTQhn4bZQpC+xAyK2Ql03E/P+0VObUPczL7oLWdusdgRvI/rkMAC1
         fV9W2HC8mgOG7/2gkADTHxQyt9KJxHrZYB8oyEOXmsLrqT9P7LaAxkA4Vao/102aXSln
         NuvPEqkKfas+pxFsdPkYdA9rfK3hJ8mX4Gg5JTpVTdC/NFHRkFuwRJH+a1UG1K+n/+VS
         6ktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696949568; x=1697554368;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NUkVmCPpadfaQWhNaIF6MgMWdRIKYVJjqWjOHwXj0+M=;
        b=BCC3wWGAKnXYnJJ29bFVcGc/glqjWQZos/o3tu5do/TO49Wg6VJXvo+QZzxNvZchbf
         uMqmZvmEMmyhEQLHSuOHUTwl76NDFWwrI0slClDWef57CbK5eqr/MWXi8mlYmos1R3mp
         17T/gHV943kqgtx0mFu/ljMiw8CRkGXM6+4zRVCbBifHUS6SYIXbdzLkCx/9/+sVrb7C
         lfWoxXGwHxNJBLcd/zuqyFDjSCFVQNg+DqvnQYI2sR652OnXPaCFfJQuJ3pCaBo3tUo4
         PnEjSQggpXKu50IUbANNOhgBfrW5oLxlTnxdwxtuv+McO00BPiTU125HOKnvwU05eg9u
         LEIA==
X-Gm-Message-State: AOJu0YyjSRdeod04VuWljAXpnCh6ZtsQqgUfmSYbDdrGJkoRIG4V3+9+
	9WCU6oXlXrwlxagWm4CWxLI=
X-Google-Smtp-Source: AGHT+IHO5E5YV/KKLewCzVIm1cEGcf6Poaf/0tI/To+Cb4NOLcjUdSdP7uCOnzJ52UrXqYpIrAKptg==
X-Received: by 2002:a05:6512:3608:b0:4ff:9a75:211e with SMTP id f8-20020a056512360800b004ff9a75211emr13113617lfs.42.1696949567369;
        Tue, 10 Oct 2023 07:52:47 -0700 (PDT)
Received: from [192.168.1.103] ([178.176.74.144])
        by smtp.gmail.com with ESMTPSA id o9-20020a05651238a900b00501c8959f6asm1840709lft.98.2023.10.10.07.52.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 07:52:46 -0700 (PDT)
Subject: Re: [PATCH 1/6] clk: renesas: rzg2l: Use %x format specifier to print
 CLK_ON_R()
To: Claudiu <claudiu.beznea@tuxon.dev>, geert+renesas@glider.be,
 magnus.damm@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
 <20231010132701.1658737-2-claudiu.beznea.uj@bp.renesas.com>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Message-ID: <8226bd48-4297-0b32-c733-2e569114a934@gmail.com>
Date: Tue, 10 Oct 2023 17:52:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231010132701.1658737-2-claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello!

On 10/10/23 4:26 PM, Claudiu wrote:

> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Use %x format specifier to print CLK_ON_R(). This is easier when
> debugging as the value printed will be hexadecimal like in the hardware
> manual. Along with it "0x" has been added in front of the printed value.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>  drivers/clk/renesas/rzg2l-cpg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
> index d62f1bc1f60e..764bd72cf059 100644
> --- a/drivers/clk/renesas/rzg2l-cpg.c
> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> @@ -1213,7 +1213,7 @@ static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
>  		return 0;
>  	}
>  
> -	dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
> +	dev_dbg(dev, "CLK_ON 0x%x/%pC %s\n", CLK_ON_R(reg), hw->clk,

   Perhaps "%#x" instead of "0x%x"?

[...]

MBR, Sergey

