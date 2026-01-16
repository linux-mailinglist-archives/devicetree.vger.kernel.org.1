Return-Path: <devicetree+bounces-255948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CAAD2E8EA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6355E309E466
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3148331D74B;
	Fri, 16 Jan 2026 09:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pi8JlhvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236A431BC84
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768554736; cv=none; b=CnrMuIokZxJMX8IhKaj5LdT2Wnp/UICyQ3f5ct+w5I/m9r75JaqAO/yGf98Bf21PKOdZl6Al7rzpL8lQAUi95mnHnpKp5gcj0/YyCfpJAEDcmhPT5iALj1KGA+wtYeW6Z8q2DM77x1GAfWalzC31g0mxEdMH84QQw/fMqUPsmMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768554736; c=relaxed/simple;
	bh=/HeROcY+wue/RnfDCzGh5TkygmGivHiZHG7v8KNDXNQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WpI3ItRp/IJ3zvV/Wst9k2Q4s1WYKzFRzyTED37KZczu0a9qtF9RTcB2gkrwb80elcBhQKMRsZiQtScXJLHy0scw6APbArqA619UgEjYXD1fPdRqOG49+ooeHx7tncoA6MmeI89Jn5qMBCJ8N10ZY0httTweqU31F2MatgVaOrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pi8JlhvX; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-382fb1e257bso2512951fa.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768554729; x=1769159529; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pqAbJs5DEIYF5QCBGJfgcurtZvGAMM7ELYVo8ENiu9M=;
        b=pi8JlhvXn++3rJEQ8Wv+3wopz/ouDG0V6LlCBdNEckYz7gLn9hS4zOS8yFN4JVTuj6
         eUgVu2KVJlxZnSzR1uD6lqWeK/wEaVuWDmndR/TxKCBm3gBH8soWuXOFCsxpVKgYkChl
         C87Vmhym4AvFaMuTl4VvwU5NZdS2rqiEFvMLu9QLy/Hd7lSLu+k+DifphE13QGO4pXMT
         hT2wgq7+snBL3wFBYhoYhLF5Gd9x3v+/aSKD7VtkDI+uCMG/Ovi36zSTCmvrEQZFslzN
         nOIqU6sxfdpeFhC/OFi15iANK6tfQir0yJkV8T8oevHvKGLwTZOASigK+1rtO1j/o5pn
         skww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768554729; x=1769159529;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pqAbJs5DEIYF5QCBGJfgcurtZvGAMM7ELYVo8ENiu9M=;
        b=VgIW+ShkTI1J2A9DS8y8jgFkdkWg318OMh+EC2EZ+bGwXO9X/Ck2KZPLLuileP5Twv
         kG/s4T0iDXlsfh8FcvrJ1XdeZ3TTzu2wVAw0yFnagpdrase9w2yS6cX3FFD+hoCsf2AG
         Tg3/MOwRmq/u7lJKhm3QXT8ttAXNnwfE/FRFHHG3ak+ueISUGBU8A/KDn9jC/iASe9FM
         wuMORe0+GwYRH4mPAX1okaHGsFfOrVhZaikowVCu6QYKFm5CqIulE+BZzFbX2f2aw7q7
         6FJygTlXQ6DYwEwKeZGplio0lAG4jj8rw1zV1Uz/gOV6/DlgBDTZ5CGZhlmGodx+vzXK
         urJA==
X-Forwarded-Encrypted: i=1; AJvYcCU6Rz6Ntq2nDvXfx60wIGh/QA7YdgLyOeZ16po2L30ogG948KImPK/7xhZs2lgkp3CDKkycsgh/1WPk@vger.kernel.org
X-Gm-Message-State: AOJu0YxSv41hcEBG1e2qvByRA8heRpQoYaMX5LjCnzZ573fNfTET7eME
	bkEKWMegsy96IxRFAtY3NdQLtCz2lx5BpoOPabrP0f+kapuSORayHNqBAFNoVdh7y/M=
X-Gm-Gg: AY/fxX7Bg7sWL4qmAYuSCtMgUJpd3U9HqV0h/V4XljGp8M/uSBk0ekw7ipVRbVfhaNc
	w6fDcC9YVVw0a11V81mN0jlg7CQY4RGlUpl0acQQbnIsW1CCnLh92ld40N1oJELyhT8qQj6E6WI
	t6QbcAy8V2hQx/tWjBh1CrENduyVKPTVWxkTYiGeXd9WLVScFIrJY80fIZwttXfxMovGWbpSAxI
	iypWLueNyQacCc9otj5LcU4tR5SkzKT5FUQrsARLTqrw/isbIV7S/Qw1gPzaYT0h3ztFl2CxrFI
	d7LgzxOwT88scBJbI9SAcJAF3blhZrB4c6a6a3IlqrdxvzNbRMQvorr3l12IqfOuk91A1OCVB0c
	9neQr0dSK+cUhifHWoJazYeb5Oj2J8evfBmp2/TdUaN3pm08flVy3cNfhz/dIXpSJPFuCPOpr7W
	6TK3HWAPSB/BuoWwdi6bbOA7jJ2svSSDFt+omf+R0A2uyLqp/snSmO3IShTYTGXDvg7A==
X-Received: by 2002:a05:651c:991:b0:380:a1c:7039 with SMTP id 38308e7fff4ca-38383fe5fbemr4683611fa.0.1768554729185;
        Fri, 16 Jan 2026 01:12:09 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384d8e0e5sm5608701fa.17.2026.01.16.01.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 01:12:08 -0800 (PST)
Message-ID: <3b16ffa2-1580-426c-aa9c-f377d913d49c@linaro.org>
Date: Fri, 16 Jan 2026 11:12:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: talos-evk-camera: Add DT overlay
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
References: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
 <20260115-sm6150_evk-v3-5-81526dd15543@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260115-sm6150_evk-v3-5-81526dd15543@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/15/26 12:12, Wenmeng Liu wrote:
> Enable IMX577 via CCI on Taloss EVK Core Kit.
> 
> The Talos EVK board does not include a camera sensor
> by default, this DTSO has enabled the Arducam 12.3MP
> IMX577 Mini Camera Module on the CSI-1 interface.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/Makefile                  |  3 ++
>   .../boot/dts/qcom/talos-evk-camera-imx577.dtso     | 63 ++++++++++++++++++++++
>   2 files changed, 66 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 00652614e73582fa9bd5fbeff4836b9496721d2d..be9aeff2cd1555bc436e1b8eb78d8e1c9b84f9c4 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -339,8 +339,11 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
> +dtbo-$(CONFIG_ARCH_QCOM)	+= talos-evk-camera-imx577.dtbo

Please remind me, what does dtbo-y Makefile target serve for?

> +talos-evk-camera-imx577-dtbs	:= talos-evk.dtb talos-evk-camera-imx577.dtbo
>   talos-evk-lvds-auo,g133han01-dtbs	:= \
>   	talos-evk.dtb talos-evk-lvds-auo,g133han01.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-camera-imx577.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-lvds-auo,g133han01.dtb
>   x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
>   dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-camera-imx577.dtso b/arch/arm64/boot/dts/qcom/talos-evk-camera-imx577.dtso
> new file mode 100644
> index 0000000000000000000000000000000000000000..53006a861878f9112673b9a0ad954bed7a5fdca5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-camera-imx577.dtso
> @@ -0,0 +1,63 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/qcom,qcs615-camcc.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&camss {
> +	vdd-csiphy-1p2-supply = <&vreg_l11a>;
> +	vdd-csiphy-1p8-supply = <&vreg_l12a>;
> +
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			csiphy1_ep: endpoint {
> +				data-lanes = <0 1 2 3>;
> +				remote-endpoint = <&imx577_ep1>;
> +			};
> +		};
> +	};
> +};
> +
> +&cci {
> +	status = "okay";
> +};
> +
> +&cci_i2c1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	camera@1a {
> +		compatible = "sony,imx577";
> +		reg = <0x1a>;
> +
> +		reset-gpios = <&tlmm 29 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&cam2_default>;
> +		pinctrl-names = "default";
> +
> +		clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		assigned-clock-rates = <24000000>;
> +
> +		avdd-supply = <&vreg_s4a>;
> +
> +		port {
> +			imx577_ep1: endpoint {
> +				link-frequencies = /bits/ 64 <600000000>;
> +				data-lanes = <1 2 3 4>;
> +				remote-endpoint = <&csiphy1_ep>;
> +			};
> +		};
> +	};
> +};
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

