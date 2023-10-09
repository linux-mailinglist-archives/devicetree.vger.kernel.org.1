Return-Path: <devicetree+bounces-6842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E38B77BD10B
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 00:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 149061C20805
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 22:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB1D63419A;
	Sun,  8 Oct 2023 22:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOal2hxF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2428C0F
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 22:51:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ACB5C433C7;
	Sun,  8 Oct 2023 22:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696805516;
	bh=ghQ73fAQ0nnzq2BfEdEnDGJzGcSnGWysE1dPS7nZn6A=;
	h=Date:Subject:To:List-Id:Cc:References:From:In-Reply-To:From;
	b=rOal2hxFDZfBaOErGG6VAI8nja1JPKfmH+qbGXYHZLAkDihNedID8/dVbSnSB2dij
	 WNUngH7r7zK9mw0f12dE+a6MkSDUPNUJ+DD43ol204eKa+WIcOam7xtH6CS7FHpyQB
	 5rig33VeWA06SqRGm91Bo03OOo5h+9fR8KSKMDGHgVa+u5FCQCrfSlcDmI/JhvTqQq
	 2nKe2nPG4kw51QM6gPXZwMVNXiyPmRo8fs36J34ltUg7VSigY5kOxH/VyQI8UdrfwX
	 2YBl8evV3ZAiS+bUUhbC00BSxIqQCpQW0/w/8DztG21V04KidxQ1Q2oimGKocpT1gF
	 /WAw8niUoFggg==
Message-ID: <6986a29d-9413-4b3d-ac5e-2adc22b9d0c9@kernel.org>
Date: Mon, 9 Oct 2023 07:51:50 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/21] clk: samsung: clk-pll: Add support for
 pll_{0516,0517,518}
Content-Language: en-US
To: Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com,
 s.nawrocki@samsung.com, linus.walleij@linaro.org, wim@linux-watchdog.org,
 linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de,
 olof@lixom.net, cw00.choi@samsung.com
List-Id: <soc.lore.kernel.org>
Cc: tudor.ambarus@linaro.org, andre.draszik@linaro.org,
 semen.protsenko@linaro.org, soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-13-peter.griffin@linaro.org>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231005155618.700312-13-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 23. 10. 6. 00:56, Peter Griffin wrote:
> Thesee plls are found in the Tensor gs101 SoC found in the Pixel 6.
> 
> pll0516x: Integrer PLL with high frequency
> pll0517x: Integrer PLL with middle frequency
> pll0518x: Integrer PLL with low frequency
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

Thanks for the detailed description about h/w spec.

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

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


