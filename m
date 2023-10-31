Return-Path: <devicetree+bounces-13146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E509B7DCB6D
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 12:08:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11F101C20B88
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 11:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51DB3199C9;
	Tue, 31 Oct 2023 11:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s3T8lMb7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF64519442
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 11:08:28 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95E6CC1
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 04:08:25 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c518a1d83fso78175621fa.3
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 04:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698750504; x=1699355304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ekMRq7N8w87yosvVmWX+qXyXBeNazRpHmYnMqCG6Xwk=;
        b=s3T8lMb7RtHvevrV12lEenexMl7bzPpYoHBlODflkm7/lj95/7M2MRiIWK8RW7LD/e
         V/z9I7yIO1hbGRCbTVacqCGHMEXrPOKnX8exNuFDVu2nQXRUhCyPpoY3j/2iViUAFKoB
         BnKSNXfl4m9EnvXLiiWSYcqGqq8jEtTR21Adf8FwLk1Rb4CsIVr5W8T8hywEEchPD0lI
         gma5aVsjl+CpBwvrGjn+rcQ5KQCgI4Z32bAwXzO0SdbzlepTMskUN07/3eWzr+dqTCbS
         1wpKUdWsruyx0jmpUt+rxDCLQWpJV96Ion76ZGzCvMAGUHKCOe4GEYdH5pZh8murrkAI
         +vcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698750504; x=1699355304;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ekMRq7N8w87yosvVmWX+qXyXBeNazRpHmYnMqCG6Xwk=;
        b=VYmEnf68bOFLLJeSYOpvsxSN0E/EH0UO6/sZVVhbMwW5LmAmlobN9t5bCA81HUv6qa
         2f7yAAJAOeFllZea335CgrdHW6wqeZWp9KW+5CVOlGyhk6SI7JMmfTeSmY6MmKy2dMlo
         6u6V8ZVFR3i9+Rf2rpUD5hKTBLI6ag2uEQHurKirR+JIPeHIvurdwuicHq+uRLJfsPly
         gLffeKbA0puNolPk0xg/cTPHOOLfhYxfdwGHTI98Gxd8IO4labhP4cSfskZdflJDsuh3
         zs9474fk4g731DWX9sVm3nvjLbFLeFwM6qmcSLB0487HdfdThKCudzFMwBmDojn4kNQ6
         niJw==
X-Gm-Message-State: AOJu0Yw7zpy3Bu2nrwMchI/2BhzpcfnHPV2ggLjiCB9PRQzcNF+D9HV0
	o5HaLC1FtWxBMTN+5aeZWRwrEQ==
X-Google-Smtp-Source: AGHT+IEr4Af+f59IpW84BOUzXVXar4DKFPz29mDOCa0G9Fwid3R6xyGj4uxuobxvGBTf08kEvQxYIw==
X-Received: by 2002:a05:651c:1208:b0:2c5:1a40:f26a with SMTP id i8-20020a05651c120800b002c51a40f26amr9332346lja.13.1698750503858;
        Tue, 31 Oct 2023 04:08:23 -0700 (PDT)
Received: from [192.168.143.96] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id 9-20020a2e0e09000000b002c12c2094e4sm174289ljo.74.2023.10.31.04.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 04:08:23 -0700 (PDT)
Message-ID: <a3162513-c4d0-4db6-9ff9-447f4249fc67@linaro.org>
Date: Tue, 31 Oct 2023 12:08:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] ARM: dts: qcom: Add support for Samsung Galaxy Tab
 4 10.1 LTE (SM-T535)
Content-Language: en-US
To: Stefan Hansson <newbyte@postmarketos.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20231025083952.12367-1-newbyte@postmarketos.org>
 <20231025083952.12367-4-newbyte@postmarketos.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231025083952.12367-4-newbyte@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 25.10.2023 10:37, Stefan Hansson wrote:
> Add a device tree for the Samsung Galaxy Tab 4 10.1 (SM-T535) LTE tablet
> based on the MSM8926 platform.
> 
> Signed-off-by: Stefan Hansson <newbyte@postmarketos.org>
> ---
>  arch/arm/boot/dts/qcom/Makefile               |  1 +
>  .../qcom/qcom-msm8926-samsung-matisselte.dts  | 36 +++++++++++++++++++
>  2 files changed, 37 insertions(+)
>  create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts
> 
> diff --git a/arch/arm/boot/dts/qcom/Makefile b/arch/arm/boot/dts/qcom/Makefile
> index a3d293e40820..cab35eeb30f6 100644
> --- a/arch/arm/boot/dts/qcom/Makefile
> +++ b/arch/arm/boot/dts/qcom/Makefile
> @@ -34,6 +34,7 @@ dtb-$(CONFIG_ARCH_QCOM) += \
>  	qcom-msm8916-samsung-serranove.dtb \
>  	qcom-msm8926-microsoft-superman-lte.dtb \
>  	qcom-msm8926-microsoft-tesla.dtb \
> +	qcom-msm8926-samsung-matisselte.dtb \
>  	qcom-msm8960-cdp.dtb \
>  	qcom-msm8960-samsung-expressatt.dtb \
>  	qcom-msm8974-lge-nexus5-hammerhead.dtb \
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts b/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts
> new file mode 100644
> index 000000000000..6e25b1a74ce5
> --- /dev/null
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8926-samsung-matisselte.dts
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2022, Matti Lehtimäki <matti.lehtimaki@gmail.com>
> + * Copyright (c) 2023, Stefan Hansson <newbyte@postmarketos.org>
> + */
> +
> +/dts-v1/;
> +
> +#include "qcom-msm8226-samsung-matisse-common.dtsi"
> +
> +/ {
> +	model = "Samsung Galaxy Tab 4 10.1 LTE";
> +	compatible = "samsung,matisselte", "qcom,msm8926", "qcom,msm8226";
> +	chassis-type = "tablet";
> +};
> +
> +&pm8226_l3 {
> +	regulator-max-microvolt = <1350000>;
> +};
> +
> +&pm8226_s4 {
> +	regulator-max-microvolt = <2200000>;
> +};
> +
> +&reg_tsp_3p3v {
> +	gpio = <&tlmm 32 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&sdhc_2 {
> +	/* SD card fails to probe with error -110 */
> +	status = "disabled";
Can you give us some logs?

Konrad

