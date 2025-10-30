Return-Path: <devicetree+bounces-233154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBC9C1F9E6
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F3921A2337F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 522F2351FC8;
	Thu, 30 Oct 2025 10:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dqDeOkJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402D4338912
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821064; cv=none; b=GPgPKcA7KoU1jfZakZv9aa4psDrZjxRkOKUsM4MmHn+E44atm/GzL+tG7377SYSWQ6edht+YuVmtxGN05HyVXYZSLFhZ/If9Xnl5hZ2ori2/VsIwdzyMkGJjTTH5kh/xv24a0lndij62XuEyGkLgtDL1E+RtxQlPlB/gDMVF6fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821064; c=relaxed/simple;
	bh=WBNuq+ZGVxRWTCoDAXYspaxNG/EOMwfhzOF6NNl22pY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o9WCbj6/+08tKwgl94gGwMwAD3iRe+SUIrydYs+ef1L1w1Ao99nRSKRhYd3cQPdqjE6k4iLTlzEJZthQ+dBaP3ZIxW7gBM0DBpRE5q1Wk497KdSLq8yw5dhDdCSpfpdLFwrjwSuG6gFrcYGVqy6W5T6SSVP8E3EOTGwP3csmMzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dqDeOkJ0; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b3e9d633b78so227240666b.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761821060; x=1762425860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zOErGZpwLMOb7PwfNc34LT3iVngAjXuP7cLtNkH6Fno=;
        b=dqDeOkJ0zee/6wsx7HfVyGLj1p7EWv9PWVfkLMVSDFQlIow8/et3xbkvSN2hRHi8w9
         kl8deXgZkWwb7lenp0FJI5C7GGZ07XeRMwG+AjON0QKKmetxMq7KxSZ8PJpUXv+sAW3Y
         qZIypgPnBEmDi0DO9k2kbL0y4AL1R+wIBAZIohNNw9lmgbs6sWT5v3Zxeqrk+6UQKLIw
         eih3OcjE8fei55tpKuMoV3w7N3/yqcqBw3NBTSk0hDkUTYLjkxm9Dok6nPdkm6mB93Pu
         HFaTdRp/l1Vh0zPwhByPVWeRfIEBSr4JlER7eEdBurUOqPosSng+0oPyxdcaXvgF8DEE
         C9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761821060; x=1762425860;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zOErGZpwLMOb7PwfNc34LT3iVngAjXuP7cLtNkH6Fno=;
        b=EJ2/fkSFJXh4yyqmMEYj3yh4PrtFMlMRSUEIjO+QFIRt9oVY1kvBtWiHqKOFGuVqJr
         7tjgeG2FvlrfOH6yeNlGxIBju7nhEPBGNh/5yu8Bw6NF2T/r/+SKKiQU+Bpc5wJaXcwB
         iL9oywAAd57tq1qT1SvUvgWrn4zU4q79lK+qCokx9SYfPI0x+ek9YQWYF9kFiazBhqYO
         Bpu4oYtzqqSE0qwEV50XfPEfjEw2MV6AUjgwB+IOCnqkBrodQdHNTnAIgFs7KG0umf/u
         rwiQbFu+YY9GdNDDlGTlIFw1uHFvUNmoU71/x0EwApf4p/ZTMBuTSlHp+VAMFn6DGqrs
         +UEA==
X-Forwarded-Encrypted: i=1; AJvYcCVTt44cDfqplh0pimhU4Sf1p0yGjLQn04BR1U6+HqUzkms2h01jEIr/fov/Bd86ElwXuB3gKnmktYXP@vger.kernel.org
X-Gm-Message-State: AOJu0YxRIWr93o6aENKZ52S/OAKemTdsWi4V8hBI2Mui2ypw5aaFF3b4
	aYajj5fbzjgcpm/nY87bGnq5fnKKs9MHKyMRVZe/LNDOq+DCTxloOh/DPlUw/Pjk4UE=
X-Gm-Gg: ASbGncuNtP87w8D2ddjVxMMZup+DsSlyizRBU9qXpTK+VFD8xKc9p1vCCxium4oAUfj
	nLkuxZiqrLc3+X58KpCRkA6Cnv9DPQ03sztNzj+2cEmWD90H7rIZV0TepGiikwtb3kl6ZQ4Z9ng
	UZKtEljYKi9ZcBEDn7T3wFh28I8cojD/At2N/J8CFzJViwcxUVkATAtMOpdlskklEaeLjcGIzfp
	NaHxpPPeqIldGtw09ICzmsksmG94psh8zBKULNBICra7qdEiA23kuS1odLQKqLROgeKptLns8FP
	ecOb+137DRKaz/N/GXin6zI+rO77Jc4tPZ0oCW07OSTJNvNQyPxqePY/I15reSajA5M98yzNsE3
	3lSGSWrh3zIWxxPeggu/byIMv/DkisdahVtkyLUx7CeNZE753+kBoBPKKPXe+flqIsfQuC3GszU
	lf5ZUWwpX7oX3uENJtu0lMvFJfAouuu4AZ/aAM7rsgXt+AARbEIFX3pE2+b6X6WyY=
X-Google-Smtp-Source: AGHT+IGtYVJD/Y/pHf4k9CBt97P94Orn8JwMiP/b+9frzwAxKr8mPjQLaIEcIupT/9ucSIpkO3DApA==
X-Received: by 2002:a17:907:d1a:b0:b70:4f7d:24f8 with SMTP id a640c23a62f3a-b70520e4069mr289801566b.22.1761821060521;
        Thu, 30 Oct 2025 03:44:20 -0700 (PDT)
Received: from [192.168.0.21] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85445e81sm1710205466b.64.2025.10.30.03.44.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 03:44:20 -0700 (PDT)
Message-ID: <9b6b1427-9712-4934-8b0c-ab0a8ae97b4a@linaro.org>
Date: Thu, 30 Oct 2025 10:44:18 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: monaco-evk-camera: Add DT
 overlay
To: Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 quic_nihalkum@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ravi Shankar <quic_rshankar@quicinc.com>,
 Vishal Verma <quic_vishverm@quicinc.com>
References: <20251015131303.2797800-1-quic_vikramsa@quicinc.com>
 <20251015131303.2797800-4-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251015131303.2797800-4-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/10/2025 14:13, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Monaco EVK board does not include a camera sensor in its default hardware
> configuration. Introducing a device tree overlay to support optional
> integration of the IMX577 sensor via CSIPHY1.
> 
> Camera reset is handled through an I2C expander, and power is enabled
> via TLMM GPIO74.
> 
> An example media-ctl pipeline for the imx577 is:
> 
> media-ctl --reset
> media-ctl -V '"imx577 3-001a":0[fmt:SRGGB10/4056x3040 field:none]'
> media-ctl -V '"msm_csiphy1":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -l '"msm_csiphy1":1->"msm_csid0":0[1]'
> media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> yavta -B capture-mplane -c -I -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video1
> 
> Co-developed-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Signed-off-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Co-developed-by: Vishal Verma <quic_vishverm@quicinc.com>
> Signed-off-by: Vishal Verma <quic_vishverm@quicinc.com>
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/Makefile             |  4 +
>   .../dts/qcom/monaco-evk-camera-imx577.dtso    | 96 +++++++++++++++++++
>   2 files changed, 100 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-camera-imx577.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 296688f7cb26..4df3044639a4 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -36,6 +36,10 @@ lemans-evk-camera-csi1-imx577-dtbs	:= lemans-evk.dtb lemans-evk-camera-csi1-imx5
>   
>   dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk-camera-csi1-imx577.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
> +
> +monaco-evk-camera-imx577-dtbs	:= monaco-evk.dtb monaco-evk-camera-imx577.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk-camera-imx577.dtb
> +
>   dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-camera-imx577.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-camera-imx577.dtso
> new file mode 100644
> index 000000000000..2237f0fc4a14
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk-camera-imx577.dtso
> @@ -0,0 +1,96 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/qcom,sa8775p-camcc.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&{/} {
> +	vreg_cam1_2p8: vreg-cam1-2p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_cam1_2p8";
> +		startup-delay-us = <10000>;
> +		enable-active-high;
> +		gpio = <&tlmm 74 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&camss {
> +	vdda-phy-supply = <&vreg_l4a>;
> +	vdda-pll-supply = <&vreg_l5a>;
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
> +				clock-lanes = <7>;
> +				data-lanes = <0 1 2 3>;
> +				remote-endpoint = <&imx577_ep1>;
> +			};
> +		};
> +	};
> +};
> +
> +&cci1 {
> +	pinctrl-0 = <&cci1_i2c0_default>;
> +	pinctrl-1 = <&cci1_i2c0_sleep>;
> +
> +	status = "okay";
> +};
> +
> +&cci1_i2c0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	camera@1a {
> +		compatible = "sony,imx577";
> +		reg = <0x1a>;
> +
> +		reset-gpios = <&expander2 1 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&cam1_default>;
> +		pinctrl-names = "default";
> +
> +		clocks = <&camcc CAM_CC_MCLK1_CLK>;
> +		assigned-clocks = <&camcc CAM_CC_MCLK1_CLK>;
> +		assigned-clock-rates = <24000000>;
> +
> +		avdd-supply = <&vreg_cam1_2p8>;
> +
> +		port {
> +			imx577_ep1: endpoint {
> +				clock-lanes = <7>;
> +				link-frequencies = /bits/ 64 <600000000>;
> +				data-lanes = <0 1 2 3>;
> +				remote-endpoint = <&csiphy1_ep>;
> +			};
> +		};
> +	};
> +};
> +
> +&tlmm {
> +	cam1_default: cam1-default-state {
> +		mclk-pins {
> +			pins = "gpio68";
> +			function = "cam_mclk";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		ldo-avdd-pins {
> +			pins = "gpio74";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +	};
> +};
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

