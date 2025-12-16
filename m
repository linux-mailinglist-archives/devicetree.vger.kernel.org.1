Return-Path: <devicetree+bounces-246967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2E5CC204D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6584F30057B0
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BD5330E827;
	Tue, 16 Dec 2025 10:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zZ6BqBER"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197B723BCF3
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 10:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765882073; cv=none; b=OU7k5DCGOWIPuYVCkrc3YJkEDuiZ6VLKWWGtzg13QNLhLX5CivhbFpbYekoCgI43vzCx8dzrTOB4I/3GlJDgeKxhW2cD2UvZUCtADNlw5Rfz2GwskD6hqFLjo8En7SbkfRTczLPFvSfuBxAcvyPOfM51koYxUU8TTJrI3Tm8Efw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765882073; c=relaxed/simple;
	bh=qK2WahaIx91FQUd5b/negr3UGlrtL4mCkdFv/WLMjRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o3zLUufgUhWI66MoCbxzw/26J1UpxDfbuGLpfpHVMDkxAgmg8e9NRbcqS/ubhAWeA9SIuZZyDSBIRbGrH3XGeKRLfSkUJi84c7SNR25qiaFeaf7C96j7ii7mO0LTjehCG41FQrNHmQn5hQDn+cY+mKOYJiavplcVRTAgGFz4W8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zZ6BqBER; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-598ea574e6eso411402e87.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 02:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765882069; x=1766486869; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wmKGehAtF2aC6hECS065yudbuhoIUUvkuW0P86X+zRI=;
        b=zZ6BqBERjLoJa7UZuDvuLxysJcIVW1IZURBViObFCiOo5Enz4RwBdmZWQWRU+kmlX4
         FHE+QnC2/0GD/VQ/QFCZYmFYzsuZTHHNpL6cGT4db/N14s4SSgCj/AfT+6XADT48geYC
         ovJftVlH1g7dC4s7LPhdgAM9IhUXB4mk03yZi7aArR2lY3MqNCS8BC70zNsCkMA+q603
         cQpVNOrx/+HKK2NZsav/W3Mh+3/JjugUaQ3D+l2cOH+j6QUobxi0yElXNLE3TYlZNVyC
         M2L9q2aQMdxvGL+wPnkW5WsUZ3v+0Xah0xoMWYNpDLlRdPwD1B3uz5ISYNCfZP1YqrRq
         lhjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765882069; x=1766486869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wmKGehAtF2aC6hECS065yudbuhoIUUvkuW0P86X+zRI=;
        b=cNQcil+UsmUCKzG3VKJewvjyWpwsBrIW0Bnjcx8K/bBTmy19GpLb0q8eQAaxBPjxq8
         jG1Fq895XH+mHrUX444OMWu+BiUzYErwnLDCuIFDk/u7jp93G8y8SA8efDXmxh1at+8j
         PsQsP0M4Ih1WLW/VutiZb/dmRWVeoS91sd1TE8q0FQg0uCLEl4Kj89mwsZZwOBPDliFB
         apTNf/IF2gZj3UkZcXCPx1ZnsOeCPHMHiZs5FtVhZ+0Wsz8xbJ1r9d2F0th4KK6iYuLP
         hSn00B/fL6RH+eypQrtzXup4++QiOYjzoY9I94YiU2AYCTHGMkTEUU/r/cVPTyRdmslC
         Yafg==
X-Forwarded-Encrypted: i=1; AJvYcCWYf/UfeBpJu2Yaw5+JxX6/AFIUyU1tiUq6bs7qlI5tviUZ7If40Eg1zeSi5+b/gtEfve1vk9sqRygl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1DLqaaJvTeqBI+oagwqjdFg3hLpwZQEyHvSX8wr/4EWa1ywZR
	E3eVqdCX6/8J8F/rpl624sbAiN1Zb19+BDaHCphcsoPI81FuYGSlE74SjRnn8r3iFfM=
X-Gm-Gg: AY/fxX6Wa8unI91uqd3dzxEejRwTcPg3EXBcWvZIN6KXtMKcNxnuEptMNnG0om0rbjv
	035U4f3N4xYhY+HiIHEyKXIcv3pv2dv/1kitnpsWDpWpNWys4CI2eNz0vMnJZ/cKBbsDJmFg0Av
	Oxwi0uZimjNotwCytxbd7WvMwYdglYfUXhkwgb37YHMAljbRcQJ7WJtuxAoms0ixAZjTPmrhBGg
	wSYpPYtCbAH9J6jUFUrQ85M/0Jh8xUjSkuspyesr4vAG7iabnNm3XARqf+QkObSAM9TKBLrC0fi
	aIkYHQ7ac2ddvb3sK0OsGtX51fbV/mFrJH6ohIDyzNA5vBUKOwMv5dWnUSiDq5rEVb058qZM8ap
	FdGlHMQWDBEqvK64Cb8TcWC2bd6+M3lkV4NHljW2etxRQagictvSIGmNTl2g/vMQxq54Yxc1zYH
	xReYbG2obarUGAx77RQB+9feAnoXy33PgXnH8T3fMBCVWxs1nx7m4rDAzuC5UFRMC2rg==
X-Google-Smtp-Source: AGHT+IF0H41NSoDHeiVoQB8t5PFRmbwgMPCmvxitVkRlghvklguwBlJGvPt9E5BeekSJvgfAgDKMYA==
X-Received: by 2002:a05:6512:3c8b:b0:594:2f72:2f78 with SMTP id 2adb3069b0e04-598faab5a2emr2935465e87.8.1765882069039;
        Tue, 16 Dec 2025 02:47:49 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da119c1sm806260e87.18.2025.12.16.02.47.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 02:47:47 -0800 (PST)
Message-ID: <3658e6cc-755c-4b38-aec7-b8bfdd7c8bd2@linaro.org>
Date: Tue, 16 Dec 2025 12:47:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/11] dt-bindings: clock: qcom: Add support for CAMCC
 for Kaanapali
Content-Language: ru-RU
To: Taniya Das <taniya.das@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
 Imran Shaik <imran.shaik@oss.qualcomm.com>,
 Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-5-fb44e78f300b@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251125-kaanapali-mmcc-v2-v2-5-fb44e78f300b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Taniya.

On 11/25/25 19:45, Taniya Das wrote:
> Update the compatible and the bindings for CAMCC support on Kaanapali
> SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>   .../bindings/clock/qcom,sm8450-camcc.yaml          |   6 +
>   .../clock/qcom,kaanapali-cambistmclkcc.h           |  33 +++++
>   include/dt-bindings/clock/qcom,kaanapali-camcc.h   | 147 +++++++++++++++++++++
>   3 files changed, 186 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> index c1e06f39431e68a3cd2f6c2dba84be2a3c143bb1..3ec9bf4d82ad3b0fbb3e58fe312a416b3580c30c 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> @@ -15,6 +15,8 @@ description: |
>     domains on SM8450.
>   
>     See also:
> +    include/dt-bindings/clock/qcom,kaanapali-camcc.h
> +    include/dt-bindings/clock/qcom,kaanapali-cambistmclkcc.h
>       include/dt-bindings/clock/qcom,sm8450-camcc.h
>       include/dt-bindings/clock/qcom,sm8550-camcc.h
>       include/dt-bindings/clock/qcom,sm8650-camcc.h
> @@ -22,6 +24,8 @@ description: |
>   properties:
>     compatible:
>       enum:
> +      - qcom,kaanapali-cambistmclkcc
> +      - qcom,kaanapali-camcc

I do have right the same review comment as the given for SM8750 CAMCC one.

The introduced qcom,kaanapali-cambistmclkcc does not inherit reset
controller or power domain controller properties, thus it should not be
added to the list of regular camera clock contollers.

Please create a new dt schema file for qcom,kaanapali-cambistmclkcc
and qcom,sm8750-cambistmclkcc IP descriptions.

>         - qcom,sm8450-camcc
>         - qcom,sm8475-camcc
>         - qcom,sm8550-camcc
> @@ -63,6 +67,8 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,kaanapali-cambistmclkcc
> +              - qcom,kaanapali-camcc
>                 - qcom,sc8280xp-camcc
>                 - qcom,sm8450-camcc
>                 - qcom,sm8550-camcc
> diff --git a/include/dt-bindings/clock/qcom,kaanapali-cambistmclkcc.h b/include/dt-bindings/clock/qcom,kaanapali-cambistmclkcc.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..ddb083b5289ecc5ddbf9ce0b8afa5e2b3bd7ccad
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,kaanapali-cambistmclkcc.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_QCOM_CAM_BIST_MCLK_CC_KAANAPALI_H
> +#define _DT_BINDINGS_CLK_QCOM_CAM_BIST_MCLK_CC_KAANAPALI_H
> +
> +/* CAM_BIST_MCLK_CC clocks */
> +#define CAM_BIST_MCLK_CC_DEBUG_CLK				0
> +#define CAM_BIST_MCLK_CC_DEBUG_DIV_CLK_SRC			1
> +#define CAM_BIST_MCLK_CC_MCLK0_CLK				2
> +#define CAM_BIST_MCLK_CC_MCLK0_CLK_SRC				3
> +#define CAM_BIST_MCLK_CC_MCLK1_CLK				4
> +#define CAM_BIST_MCLK_CC_MCLK1_CLK_SRC				5
> +#define CAM_BIST_MCLK_CC_MCLK2_CLK				6
> +#define CAM_BIST_MCLK_CC_MCLK2_CLK_SRC				7
> +#define CAM_BIST_MCLK_CC_MCLK3_CLK				8
> +#define CAM_BIST_MCLK_CC_MCLK3_CLK_SRC				9
> +#define CAM_BIST_MCLK_CC_MCLK4_CLK				10
> +#define CAM_BIST_MCLK_CC_MCLK4_CLK_SRC				11
> +#define CAM_BIST_MCLK_CC_MCLK5_CLK				12
> +#define CAM_BIST_MCLK_CC_MCLK5_CLK_SRC				13
> +#define CAM_BIST_MCLK_CC_MCLK6_CLK				14
> +#define CAM_BIST_MCLK_CC_MCLK6_CLK_SRC				15
> +#define CAM_BIST_MCLK_CC_MCLK7_CLK				16
> +#define CAM_BIST_MCLK_CC_MCLK7_CLK_SRC				17
> +#define CAM_BIST_MCLK_CC_PLL0					18
> +#define CAM_BIST_MCLK_CC_PLL_TEST_CLK				19
> +#define CAM_BIST_MCLK_CC_PLL_TEST_DIV_CLK_SRC			20
> +#define CAM_BIST_MCLK_CC_SLEEP_CLK				21
> +
> +#endif

-- 
Best wishes,
Vladimir

