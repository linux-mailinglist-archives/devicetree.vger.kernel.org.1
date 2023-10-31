Return-Path: <devicetree+bounces-13302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3B47DD6BD
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 20:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0BAE1F21730
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 19:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8232232A;
	Tue, 31 Oct 2023 19:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EHc4OcE5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C249134D6
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 19:46:50 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8341C83;
	Tue, 31 Oct 2023 12:46:48 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c518a1d83fso85530641fa.3;
        Tue, 31 Oct 2023 12:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698781607; x=1699386407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=purwZ105GsEhgtQHpkdP9umavsYHSc4ApWwflAbtrrc=;
        b=EHc4OcE56l85l0RGlsWNTcov1sWKT63o3L/Of/LUVeBPCFjuo5SPXQ/7Rbd0U/3NmD
         wsm81iz/kxwbKU6ZzRlIlC0UcPjjc2akCn221EPsk0aM0XE+8eJKNVGdsIRJoZ7LVWaO
         rO3JhfHNFaDAswKuuPnm9wFZ0jElgeQOvaO7p6B7X0yxgeyfRUGHD02rf+KYJM9H+tiG
         /INcKvOKyIUD3p0RU5tcZcbXDrBmm1bphMc6Ll3kBJmokqVwO1b+mpDsfcJW7uoaf7LR
         tOJZDdvaHSi18gwxAXz6V+WHhhYh7y4WSfAfArx9/zmTBjX7JeAEm2irPeTa4ySTPh1Z
         qkYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698781607; x=1699386407;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=purwZ105GsEhgtQHpkdP9umavsYHSc4ApWwflAbtrrc=;
        b=UKojw2NaElWuJAFqAQ7TEyzuD3J+VFlsTHUeuZX241gp/Orkv6L565QS83/YGUyhTN
         3x4aGBp6uO52Tt1Uy1xKYuGfGlpjXLmuALkKVXk/kiUPyzcGDvTdB2/AdEWkcw1qXth2
         Dw0rextBrqA483qrRcMyUpy6z3DbugrW5mfjBfGwX1TXa1TzETaraf9qhSbYV6V6hOXz
         Ao8rHXMh9YV9MjvI5QEyWVXUti+4EXVPUbuu71YVIOHiAirfIGOlN5DPqPKxy64BgLrZ
         ksGGjZzMNJgbXCqogpG1M8b7haw6gtxavnKVPbQZfWGedfGeauqOkjMLtDG4BM1cQELZ
         WgAQ==
X-Gm-Message-State: AOJu0Yx678i6I8abs+jAVd93dATUO8eS3oRDBUa78y8j5wRgC5ZgSnLX
	SnMqpFUmUdfoLbACcYGPJI0=
X-Google-Smtp-Source: AGHT+IEOLRiyG9O+qr6AzZRS5vIZx/36cYDoFO/IMWC9eGiCVgGOswCJxAHnc67RSaD+pLKgSCkFgQ==
X-Received: by 2002:a05:651c:1a20:b0:2c5:1808:4aa4 with SMTP id by32-20020a05651c1a2000b002c518084aa4mr12208174ljb.12.1698781606309;
        Tue, 31 Oct 2023 12:46:46 -0700 (PDT)
Received: from [192.168.3.32] (cpezg-94-253-131-198-cbl.xnet.hr. [94.253.131.198])
        by smtp.gmail.com with ESMTPSA id 9-20020a2e0f09000000b002b6cd89a3fcsm7524ljp.118.2023.10.31.12.46.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 12:46:45 -0700 (PDT)
Message-ID: <65cc630c-1d71-48e1-b639-b92221a8d7b1@gmail.com>
Date: Tue, 31 Oct 2023 20:46:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: ipq6018: add SDHCI node
To: Mantas Pucka <mantas@8devices.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: Abhishek Sahu <absahu@codeaurora.org>,
 Anusha Canchi Ramachandra Rao <anusharao@codeaurora.org>,
 Sricharan R <sricharan@codeaurora.org>,
 Sivaprakash Murugesan <sivaprak@codeaurora.org>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org
References: <1682338412-15420-1-git-send-email-mantas@8devices.com>
 <1682338412-15420-3-git-send-email-mantas@8devices.com>
Content-Language: en-US
From: Robert Marko <robimarko@gmail.com>
In-Reply-To: <1682338412-15420-3-git-send-email-mantas@8devices.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 24. 04. 2023. 14:13, Mantas Pucka wrote:
> IPQ6018 has one SD/eMMC controller, add node for it.
>
> Signed-off-by: Mantas Pucka <mantas@8devices.com>

Tested-by: Robert Marko <robimarko@gmail.com>

> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 23 +++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 9ff4e9d45065..b129b23d68b1 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -414,6 +414,29 @@
>   			};
>   		};
>   
> +		sdhc_1: mmc@7804000 {
> +			compatible = "qcom,ipq6018-sdhci", "qcom,sdhci-msm-v5";
> +			reg = <0x0 0x07804000 0x0 0x1000>,
> +			      <0x0 0x07805000 0x0 0x1000>,
> +			      <0x0 0x07808000 0x0 0x2000>;
> +			reg-names = "hc", "cqhci", "ice";
> +
> +			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hc_irq", "pwr_irq";
> +
> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> +				 <&gcc GCC_SDCC1_APPS_CLK>,
> +				 <&xo>,
> +				 <&gcc GCC_SDCC1_ICE_CORE_CLK>;
> +			clock-names = "iface", "core", "xo", "ice";
> +
> +			resets = <&gcc GCC_SDCC1_BCR>;
> +			supports-cqe;
> +			bus-width = <8>;
> +			status = "disabled";
> +		};
> +
>   		blsp_dma: dma-controller@7884000 {
>   			compatible = "qcom,bam-v1.7.0";
>   			reg = <0x0 0x07884000 0x0 0x2b000>;

