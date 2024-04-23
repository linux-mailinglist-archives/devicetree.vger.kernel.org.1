Return-Path: <devicetree+bounces-61843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 504778AE62C
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:36:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC7561F25706
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B0086AE6;
	Tue, 23 Apr 2024 12:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SK2picvp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F87086242
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713875720; cv=none; b=oAHCR6vTd6CLTnmodjkJ5ZziI1RfOXmYiPhc030FeH59D6BheF2p3qzJIZSz89n7q4IEt/odsBEL+uElmwQeQjQfiuDqflj+0uYjUyD0mWNAuxrwOeFC13HKFa77AhibB5a4dbH94Hkf7Cy/KXqlkg4dBh8l+utbUfPt3de/sqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713875720; c=relaxed/simple;
	bh=+npk7CU5D1IrWY2XUTyMctxvg7b3VXIhqcFDFMQo+e8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YC6F46qoUqdCnCVTeak0vVm2J0zZ+lvrLl/DZV7MTnCtRcZMh/JxkRGtCuM8KVpvfqaE9a7aihmeMVq12R0dtrf/U8kMWZ5QKX/RGL/FOQrqr/ZgP9YTb1oNz/q/GUqrNiwes7PkcYNaZgpTcTgKYVkOzsvhqkKCRM6eRUBErUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SK2picvp; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d8a24f8a3cso70352581fa.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 05:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713875717; x=1714480517; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ph4gnrNXsU4/y4bAQnJy1r34G9v8Qh27X1SKuQMEaTw=;
        b=SK2picvpes6D9vOWit72ewWIIUxsxX4jaUcrp/zimEWXQVPYNGjwLrhvtEPmf0urVl
         YmRolHRpLQo/CPGoAA0Xww1h15iOR8CUET4kyVZkeEidK2ZP2+EDggHbc2LGCFlD8pzT
         r6YERu3hy+esQZxkQQA4H68CDTVWi7Wy2rU0RBYHOc/CTrPjpJC7Vhy/zvO1CvC4Za3D
         ah39nzB4PWGNlTzaPr5DoOQcQ9h9PMqPkGXaORoo0TVHtqATlWjAVp4xsEwdkKGD6INB
         EtKRuoci5Add5gCayWYXzzJ6FJ77yeirJl2stv4hcrTwdhwhh6IBtWsL8PhGSz999M+Q
         aMpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713875717; x=1714480517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ph4gnrNXsU4/y4bAQnJy1r34G9v8Qh27X1SKuQMEaTw=;
        b=OfmCqfDoNKWnKjycx6w0a09tkftPRWn3uHBs7RKEoQ6nH5GdVpTGVuJINdK0HY0kYR
         j0WvvJ+hvSWCv7hOmV2jbJfqmzGYXvSvTxx+un3ABzQl/+bmAlCfuT7MSN2F9CHOFpX/
         7s18GyiLG3FE88YrKDiW6ZfcqkpV8b03YaqE539f4e+LxyzzP4wFtp6aO5N32tK61q6O
         4LdZBroiuaMgtOBi8FmYoYKpfQtFuPIHWK7ruUbJt1gc2AiIL4+ruZidr0lIADh79aWT
         t899VCFmW6WMVVKBmgnOuAC+aBss/yXdZbdsFAr0TlyZfQUNaMUCvHwtGxRnTkeJBONX
         NxWA==
X-Forwarded-Encrypted: i=1; AJvYcCUEr3u9lqbL2ci5gToJaLl9JbhFLFz9qvrNUmJMYjKacN8Jv6nu3GsdebKl/xrMXgvpf8inYMxW8JvXX0quZRz5OISvasN+i82Q/Q==
X-Gm-Message-State: AOJu0YwBKOg9aHlZaNSpDbmxt/xsh70q1uDeoUnov8TQp5kt4tCdc6e1
	4TthIfFrbnNhljX4gJZWKhKDH1g5okTWQEiN9Cfq8ermUlpDQ1FFYW2buxm3+tc=
X-Google-Smtp-Source: AGHT+IGpYlyiOfOUNdMRXGfWPTLzW+ofzpyxAXXOrOSh/XHRY4qI3aB6iBHB5IbjxUmQ1zoiQS/Kiw==
X-Received: by 2002:a2e:b712:0:b0:2d8:7fa5:5034 with SMTP id j18-20020a2eb712000000b002d87fa55034mr7987293ljo.43.1713875716528;
        Tue, 23 Apr 2024 05:35:16 -0700 (PDT)
Received: from [172.30.205.0] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g18-20020a2eb5d2000000b002d9fc892cc3sm1718213ljn.13.2024.04.23.05.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 05:35:16 -0700 (PDT)
Message-ID: <c1d07eff-4832-47d9-8598-aa6709b465ff@linaro.org>
Date: Tue, 23 Apr 2024 14:35:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] clk: qcom: lpassaudiocc-sc7280: Add support to skip
 PLL configuration
To: Taniya Das <quic_tdas@quicinc.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240208062836.19767-1-quic_tdas@quicinc.com>
 <20240208062836.19767-3-quic_tdas@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240208062836.19767-3-quic_tdas@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/8/24 07:28, Taniya Das wrote:
> The PLL configuration needs to be skipped when remoteproc brings the
> LPASS out of reset.
> 
> Also update the lpassaudio_cc_reset regmap name and max register to handle
> the regmap conflict warning between lpassaudio_cc_reset and lpassaudio_cc.
> 
> Fixes: a9dd26639d05 ("clk: qcom: lpass: Add support for LPASS clock controller for SC7280")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>   drivers/clk/qcom/lpassaudiocc-sc7280.c | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/qcom/lpassaudiocc-sc7280.c b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> index c43d0b1af7f7..2619a8ced9d5 100644
> --- a/drivers/clk/qcom/lpassaudiocc-sc7280.c
> +++ b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> @@ -1,6 +1,7 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
>    * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>    */
> 
>   #include <linux/clk-provider.h>
> @@ -766,11 +767,13 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
>   		goto exit;
>   	}
> 
> -	clk_zonda_pll_configure(&lpass_audio_cc_pll, regmap, &lpass_audio_cc_pll_config);
> +	if (!of_property_read_bool(pdev->dev.of_node, "qcom,adsp-skip-pll")) {

Big no-no.

> +		clk_zonda_pll_configure(&lpass_audio_cc_pll, regmap, &lpass_audio_cc_pll_config);
> 
> -	/* PLL settings */
> -	regmap_write(regmap, 0x4, 0x3b);
> -	regmap_write(regmap, 0x8, 0xff05);
> +		/* PLL settings */
> +		regmap_write(regmap, 0x4, 0x3b);
> +		regmap_write(regmap, 0x8, 0xff05);

Model these properly and use the abstracted clock (re)configuration functions.
Add the unreachable clocks to `protected-clocks = <>` and make sure that the
aforementioned configure calls check if the PLL was really registered.

> +	}
> 
>   	ret = qcom_cc_really_probe(pdev, &lpass_audio_cc_sc7280_desc, regmap);
>   	if (ret) {
> @@ -778,6 +781,9 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
>   		goto exit;
>   	}
> 
> +	lpass_audio_cc_sc7280_regmap_config.name = "lpassaudio_cc_reset";

Ugh.. are these really not contiguous, or were the register ranges misrepresented from
the start?

> +	lpass_audio_cc_sc7280_regmap_config.max_register = 0xc8;

Provide the real size of the block in .max_register instead, unconditionally

Konrad

