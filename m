Return-Path: <devicetree+bounces-6259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3B17BA839
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 19:40:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id AB1C8B208CC
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8CCA38FBD;
	Thu,  5 Oct 2023 17:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="cvpAYGbp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8733374FB
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 17:40:01 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68E25DD
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:39:49 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1c6052422acso12785ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 10:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696527589; x=1697132389; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IXODrEGswDBHgZt3EC36Idp+LKyU6nTpAzOo1uX2Tbo=;
        b=cvpAYGbp30c0Q9flMLgxUpDsjTg3LMfeWkl8mAJ+UjYblZUZbG4AHF3pQu8KK5e6nn
         WF2MqzPQ2/TplzXSz8axz/XmxzdsqIPTTyZG2boReLy7qR4Ryzs6lyJjCE6jxYZFJF9g
         csnIc7QpU/OLhI9OVS4V3yptopGOnkner2hZRviR9iboUgRseGrZrnPyfx7FvcO0WS+j
         edUy9MCfUmpn78J401oOGAD6+iw2OF3F3WnIT+ZUZGilY9HJ0BGDNpqXL6uwt0QKfOEP
         XmLyQYanXINmSdAMKwZhqfGvgURLcC7HcWlGlwaV+GwmsPpcQSpfkMDpDWAvQB2svv/g
         tSyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696527589; x=1697132389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXODrEGswDBHgZt3EC36Idp+LKyU6nTpAzOo1uX2Tbo=;
        b=SgEfM2x0tFjy670axxbnDmJYZ2uXffNBAd08EsqfNpI33B5bL894DbgB+3sNR8EYz1
         9b4Y7TX/Si1l0W1trOK5CO9UkwmL5C00HK78PlykKpwPWYbhgvL465hwSE4Atr/St9Dx
         Yr05cG2AazZVQYnCH0R08ddEVO2lkV+qcqesBay1Gq1PAAP5O67Y5t3vtpo6tXPgLBxl
         lFjDSEdXBV1Yic31RqsgeuDRMHbPYTUPsg2lwk51rQV3+GsR5SggPZJXgamzXhe7g3fA
         SiIQgPWFFkqU7niDzubOiqPN9CKwPx45sAzN3ZDk8cn18KP1v3SL71Frm8mO972vCrLc
         NV/g==
X-Gm-Message-State: AOJu0YwyEL4HEXqj8IjHVV7U8t8tseORr1BxpyT6Z8gySiE/Vthr1v8d
	sa2xud59+mkbpmbNcwod9LREjQ==
X-Google-Smtp-Source: AGHT+IFvigfflXUA9HwY9N7eYv+zsvKrsN9xemzqOgeiVvG2YkDU2e3seNYkty+sv2qmvZvZeQ4iYQ==
X-Received: by 2002:a17:902:d4c8:b0:1c3:5df4:a778 with SMTP id o8-20020a170902d4c800b001c35df4a778mr161516plg.13.1696527588397;
        Thu, 05 Oct 2023 10:39:48 -0700 (PDT)
Received: from google.com (13.65.82.34.bc.googleusercontent.com. [34.82.65.13])
        by smtp.gmail.com with ESMTPSA id 19-20020a170902c11300b001b896686c78sm2005265pli.66.2023.10.05.10.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 10:39:47 -0700 (PDT)
Date: Thu, 5 Oct 2023 10:39:44 -0700
From: William McVicker <willmcvicker@google.com>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org,
	tomasz.figa@gmail.com, s.nawrocki@samsung.com,
	linus.walleij@linaro.org, wim@linux-watchdog.org,
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org,
	arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com,
	tudor.ambarus@linaro.org, andre.draszik@linaro.org,
	semen.protsenko@linaro.org, soc@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	kernel-team@android.com
Subject: Re: [PATCH 12/21] clk: samsung: clk-pll: Add support for
 pll_{0516,0517,518}
Message-ID: <ZR704FEUwYpq5sFJ@google.com>
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-13-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005155618.700312-13-peter.griffin@linaro.org>
X-Spam-Status: No, score=-15.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/05/2023, Peter Griffin wrote:
> Thesee plls are found in the Tensor gs101 SoC found in the Pixel 6.

nit: Thesee -> These

> 
> pll0516x: Integrer PLL with high frequency
> pll0517x: Integrer PLL with middle frequency
> pll0518x: Integrer PLL with low frequency

nit: Integrer -> Integer?

Regards,
Will

> 
> PLL0516x
> FOUT = (MDIV * 2 * FIN)/PDIV * 2^SDIV)
> 
> PLL0517x and PLL0518x
> FOUT = (MDIV * FIN)/PDIV*2^SDIV)
> 
> The PLLs are similar enough to pll_0822x that the same code can handle
> both. The main difference is the change in the fout formula for the
> high frequency 0516 pll.
> 
> Locktime for 516,517 & 518 is 150 the same as the pll_0822x lock factor.
> MDIV, SDIV PDIV masks and bit shifts are also the same as 0822x.
> 
> When defining the PLL the "con" parameter should be set to CON3
> register, like this
> 
> PLL(pll_0517x, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
>     PLL_LOCKTIME_PLL_SHARED0, PLL_CON3_PLL_SHARED0,
>     NULL),
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/clk/samsung/clk-pll.c | 9 ++++++++-
>  drivers/clk/samsung/clk-pll.h | 3 +++
>  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
> index 74934c6182ce..4ef9fea2a425 100644
> --- a/drivers/clk/samsung/clk-pll.c
> +++ b/drivers/clk/samsung/clk-pll.c
> @@ -442,7 +442,11 @@ static unsigned long samsung_pll0822x_recalc_rate(struct clk_hw *hw,
>  	pdiv = (pll_con3 >> PLL0822X_PDIV_SHIFT) & PLL0822X_PDIV_MASK;
>  	sdiv = (pll_con3 >> PLL0822X_SDIV_SHIFT) & PLL0822X_SDIV_MASK;
>  
> -	fvco *= mdiv;
> +	if (pll->type == pll_0516x)
> +		fvco = fvco * 2 * mdiv;
> +	else
> +		fvco *= mdiv;
> +
>  	do_div(fvco, (pdiv << sdiv));
>  
>  	return (unsigned long)fvco;
> @@ -1316,6 +1320,9 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
>  	case pll_1417x:
>  	case pll_0818x:
>  	case pll_0822x:
> +	case pll_0516x:
> +	case pll_0517x:
> +	case pll_0518x:
>  		pll->enable_offs = PLL0822X_ENABLE_SHIFT;
>  		pll->lock_offs = PLL0822X_LOCK_STAT_SHIFT;
>  		if (!pll->rate_table)
> diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
> index 0725d485c6ee..ffd3d52c0dec 100644
> --- a/drivers/clk/samsung/clk-pll.h
> +++ b/drivers/clk/samsung/clk-pll.h
> @@ -38,6 +38,9 @@ enum samsung_pll_type {
>  	pll_0822x,
>  	pll_0831x,
>  	pll_142xx,
> +	pll_0516x,
> +	pll_0517x,
> +	pll_0518x,
>  };
>  
>  #define PLL_RATE(_fin, _m, _p, _s, _k, _ks) \
> -- 
> 2.42.0.582.g8ccd20d70d-goog
> 

