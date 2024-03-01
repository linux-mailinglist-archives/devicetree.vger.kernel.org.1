Return-Path: <devicetree+bounces-47841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6DD86ED19
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 00:56:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3E551F23B91
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 23:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A2045EE70;
	Fri,  1 Mar 2024 23:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GNZYa/8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15375F472
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 23:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709337380; cv=none; b=YMoeMHBBbosH0pNqSebvNdCK6YLMD+t+0BeD9iC0gT8g5Vzi2nMvZzR7ptLda1g8hYOt43Ngr8UiME/4lMyDKw8em5Ej68EAImhZgamt3qeN+TcPqRcogS5i8rLPRmm/90kyld7fkatoVIACbn9hDMVay2aNv1eG/kp62fDhCWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709337380; c=relaxed/simple;
	bh=QkJ1xdbAMKMnvRj2AyuRDjj1b4wJiMw5P0RDMBnY9oU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e0cd7mGVwj5WRMBhre0+4DA2Me8JpHzMAWja7hBc1kHR3JnbQzPGA9Bm23idHk4ZTmH9ZlAvEQH9f8y2Ehrr7JZDFg++JVXA8iInAuaqw2W1QC8g4i4HGKZc9oa8u/Q4eAW2eR8dxaYGrJeUcKgAW8cyTbiLZis9tjTe8NZtQZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GNZYa/8h; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a43f922b2c5so329728166b.3
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 15:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709337375; x=1709942175; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q4bK4AfVct1aRZS5U/svuHPQiO8tDHE4H8kEQpOUhsU=;
        b=GNZYa/8hpS4M9OvFHilyIiXdDnT5EiUEIpVBKxYG43sktF0tNX3ZO1PA81Xrlrd6IR
         r4yvMGsguHDtxFbm3ouLMSs9knIqyI6ZlWjvqlkGoKx3ns0TlPpLolBlwJ9I7SdMF1kO
         lKJHzb7fnXSAnaqOik9GCFoJPYNQTuA4F0/hp+GMAEoAxVHj98MzuD+cclg8YNNA2gjo
         l68auxY1tfz/1iNQkJK8yprcxceGAm+XwtP7FukQS1CXpO9JlRAYip6771aZnwouQeMU
         lxmQPglumgg6Ymmm92pSB1Zse03VMbvH06iSFu8M/vuUohXKHj71Vyrfah2IhV1gSqwT
         0Ffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709337375; x=1709942175;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q4bK4AfVct1aRZS5U/svuHPQiO8tDHE4H8kEQpOUhsU=;
        b=d6jcDLYkjlQg3m2K1MXShqRrmeJXkYPJCGj2IeADlikOIIjn2IoYnxZo1w4DUv/2mM
         16et615s6XdPGrCB52szrvaGwX3KgXXCijBW1mMWE0HwXbDor90sfHfPFP+LxbRm5PzR
         w3LVhxmtLevuk4heekdibAv78l51GoEng7DL44eBShbMOJwgmMIWqj1wZUEiAcG8fTMT
         5ef3i/+96UTq22Mq61GKSiX/goJjVF6B3xlo2qOVZDsgPWdUt8C28DBzpiNE9EbfL3H7
         Lv5+achDccwuIIN13+5Ad1rl4DipJ86opwDqCXeNP8t5X+il1XdR51aCRacaQntEZAhF
         ZJsA==
X-Forwarded-Encrypted: i=1; AJvYcCUIGIwLu3YMO1rsfd/iNp2JWIgRVqsN2EwzvHvRyhd7QDd27FNFwQCA9rOnltHI3zHsymVhySP9zG5tIM2mjqrRCumKXYVNjm4FNQ==
X-Gm-Message-State: AOJu0YzWmWiYNpcgWhSlIertyVJLdjDwi7DVz+A5qwKuLhxHbA8wmZxs
	U76iH810A29TGrkyBaJICK3Om+ZJAqMUgjKKfwF3mxc6NmDd+5Hh8WWK3yrX1BE=
X-Google-Smtp-Source: AGHT+IEHYTRyWRSIxB3bWILGlwC2NxaxqTT4jgrqo6fjDX/ZTPRKNg4OMrKKdvcN0EakUO8IrGKa+g==
X-Received: by 2002:a17:906:7191:b0:a44:c896:6751 with SMTP id h17-20020a170906719100b00a44c8966751mr503841ejk.67.1709337375411;
        Fri, 01 Mar 2024 15:56:15 -0800 (PST)
Received: from [192.168.216.32] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id v23-20020a1709067d9700b00a42ee62b634sm2141583ejo.106.2024.03.01.15.56.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Mar 2024 15:56:14 -0800 (PST)
Message-ID: <630bb10a-2197-4573-a6d5-01fa6650c315@linaro.org>
Date: Sat, 2 Mar 2024 00:56:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] clk: qcom: clk-alpha-pll: Add support for Regera PLL
 ops
Content-Language: en-US
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Stephen Boyd <sboyd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20240229-camcc-support-sm8150-v1-0-8c28c6c87990@quicinc.com>
 <20240229-camcc-support-sm8150-v1-2-8c28c6c87990@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240229-camcc-support-sm8150-v1-2-8c28c6c87990@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29.02.2024 06:38, Satya Priya Kakitapalli wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> Regera PLL ops are required to control the Regera PLL from clock
> controller drivers, thus add support for the same.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---

[...]


> +static int clk_regera_pll_enable(struct clk_hw *hw)

This function is 1:1 clk_zonda_pll_enable() logic-wise, except for
the `if (val & ZONDA_STAY_IN_CFA)` part. Would it be an issue on
Regera?

> +static void clk_regera_pll_disable(struct clk_hw *hw)

This again is clk_zonda_pll_disable(), except the very last value written
to PLL_OPMODE is different. Could you commonize them?


> +
> +static void zonda_pll_adjust_l_val(unsigned long rate, unsigned long prate,
> +									u32 *l)

(Ugly wrapping, please touch it up)

..should it apply to zonda as the name suggests? Also, any explanations?

> +	u64 remainder, quotient;
> +
> +	quotient = rate;
> +	remainder = do_div(quotient, prate);
> +	*l = quotient;
> +
> +	if ((remainder * 2) / prate)
> +		*l = *l + 1;
> +}
> +
> +static int clk_regera_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> +				  unsigned long prate)
> +{
> +	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> +	unsigned long rrate;
> +	u32 l, alpha_width = pll_alpha_width(pll);
> +	u64 a;
> +	int ret;
> +
> +	rrate = alpha_pll_round_rate(rate, prate, &l, &a, alpha_width);
> +
> +	ret = alpha_pll_check_rate_margin(hw, rrate, rate);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (a && (a & BIT(15)))

What is BIT(15)?

Also, the left part of the condition is totally bogus, if a is 0 then
a & BIT(15) will surely be zero as well.

Konrad



