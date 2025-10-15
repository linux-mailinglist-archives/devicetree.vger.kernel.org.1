Return-Path: <devicetree+bounces-227303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EC5BE0565
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:15:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8AD819A7541
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E45627E05F;
	Wed, 15 Oct 2025 19:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xyvg51jg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AED1E285A
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555727; cv=none; b=nyQrIAG0asWhZiY+8+wuZYroiwQQhcdBqXZcR9KbIqFHOK3Fi912f/d4BUuw9qH3HHLMGpYoy/3JLghoTnVtUC3zKhPc/KNHxN7ObYfO0JXBm2vI3SPZ/ECMHCMceLKkhgwNKQmpLrmJtLxRBaQ8phRbEP8bjc4jYPAS0QuRmDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555727; c=relaxed/simple;
	bh=N4ajDePlS/twOJgwxncquwTj2rTsemHlCNgU1E+c+Jc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W3VF+8WNYnzvOOy7IuatgkaYpd06vH0+9GM0w8BnlLy2jgzE9ixJYou3z7OtNeN9C/BouPOI5S0oQc4OeLoBmvkZeEZfSS0dwj6GgAcKAxbhJzV6wM/ROWrLqifbxDi4oZ/RSyjM7BNCNRq31IA9zzN6xjlJU+gzNEjQ5w0CGXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xyvg51jg; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-58d8c50080cso1003981e87.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760555723; x=1761160523; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AYMPELcVaISMPo8LK5uoTYd/MIXJATV+1x3V+joTCO4=;
        b=xyvg51jgOOyzchSw1IdQNDtfVeoTDkxmFmbEjFz5CKmP8+FA/EWflm5HPLca64UO4K
         aM7nSgNddZ9KBj+9VzIafyIMwBZLvUosHXzkDNZAI4lgMLjdTo2rEOoixn1ObTikKAl0
         iq5kGgAU83Uh6akxYSZeks7KRCpE8/6tWX5bdRvQQebbHF7DH90zw/1ZHqj2OMJjAoff
         3n7C8V31OgG+wk9OFN3wSIVMbDCpKW5EtZ40GyhyQlpmvtpSdVeN8mERDRUqNOBxf1bI
         HELnAFT71WLXaXTUkLB5f074xvHsdEZ+8ZCUbL4lkyz7VC7hTF80Pyh/aUwHcYPi5RNz
         Ab7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760555723; x=1761160523;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AYMPELcVaISMPo8LK5uoTYd/MIXJATV+1x3V+joTCO4=;
        b=vd58q+i0abKy/z0K74T7DaORZZNbpBEWPcsHGaMRfeY7gbpmY4Xuz8pBiTH9nx/n+c
         vHy6vifiIzFf526klwx7Fe7FThcxmwRvpoWr9TVPz7psFUB8F+BfwD9QQbhhFyKKvsMh
         ruoSCwfnuBEBwCxhWSoSskWwx6vpBKShRO+N0VsJW/ii5+trWeNMFSxynIet/9XdnHU/
         HKn5frXJhv8v8nMhPKuqMAQa8K+X2vt38QJRkIL0Tv4fOp9svuldnSgvwRuj5T+ye13i
         WysUsTlMlx639+osNfZJU83Y/hJxDRtD/tvv7BlaX+ZznfotcEHPsus6xFC0lljUpVpj
         O60Q==
X-Forwarded-Encrypted: i=1; AJvYcCUX+iANwQXpxj5BHrxxiXFrG9IRiTEhBR4jngBEk3dFeBXVdmNHUPV9zu4U4gc6L+MTbQY1CogL+VlY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqa97EmUU60YE2sJpiGcpG8k2emPMaVzjuKF9v8Usiop/36+Wj
	ehxepFmVovIu6eKNJE4jGkyJp5xqhdQHBdus530XOnMm2FNp/YaeWV8tnlNuHqhtkJ5p+sSTTWD
	Muxj4
X-Gm-Gg: ASbGncvbHNfg5ZIhw4pTzu1qsxf65zrPvi8JGEaGrqK0bNp50cDy8olNQg3pNLC8PGi
	iH01hA4Y5VxVUjZgrnTO8Zdupw2+uojRYvBwRdTfAzhymfM3jO53kfML548/WokyZ4TZps6fUpY
	7GV/CJdUPMkiandMGSIrx/bandOTvmVBlf6pAqncbHh1YWVlzL8KA4HGeIJlHZNM+ygY7JJ12Qn
	Ibah8oPnTcpytFDd5OVDNLSLffQs06XvdfRtmeuPpG972/cUakYo12bXEbFDQFlW5rzyiTJ+XpB
	g9tk/IBdhO/QMMRQYNJG7o7NtpHDiIvGJgWyEcdgOR9uSPzFHyeMk175VwczaE3qCHEru8mcl9k
	sy/Ljy2ChgEp62JG+ErgCR6MfzspWPC+cwvk1gve3yfVulxOT46z4oqUfPYArt04A4owOGKcpns
	32KBKVerk/S0Mm8S2snb6Mj4ud
X-Google-Smtp-Source: AGHT+IFgzACMuHh1h6LF8dPmcEJiKNFPz6aoHpNx1WbuO3O96mp7uLNPRB6iBtFq+qytOvveTnYOOw==
X-Received: by 2002:a05:651c:1547:b0:36b:d9d2:7357 with SMTP id 38308e7fff4ca-37609c974damr44742481fa.1.1760555723317;
        Wed, 15 Oct 2025 12:15:23 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762e7b8f8bsm49637231fa.25.2025.10.15.12.15.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 12:15:22 -0700 (PDT)
Message-ID: <ec23a3b2-fb50-4da7-8912-512b0a741ecf@linaro.org>
Date: Wed, 15 Oct 2025 22:15:21 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: monaco-evk-camera: Add DT
 overlay
To: Vikram Sharma <quic_vikramsa@quicinc.com>, bryan.odonoghue@linaro.org,
 mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 quic_nihalkum@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ravi Shankar <quic_rshankar@quicinc.com>,
 Vishal Verma <quic_vishverm@quicinc.com>
References: <20251015131303.2797800-1-quic_vikramsa@quicinc.com>
 <20251015131303.2797800-4-quic_vikramsa@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251015131303.2797800-4-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/25 16:13, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Monaco EVK board does not include a camera sensor in its default hardware
> configuration. Introducing a device tree overlay to support optional

s/Introducing/Introduce

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

The first expected Signed-off-by tag shall be from the change author, and
it is not.

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

Year is missing.

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

Please remove empty lines between individual properties.

> +		port {
> +			imx577_ep1: endpoint {
> +				clock-lanes = <7>;

Remove 'clock-lanes' property, first of all it is non-configurable,
and definitely it's hypothetical value can not be equal to '7'.

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

I'd suggest to add a description of pins with MCLK function in a separate
change to the SoC specific .dtsi file. It will cover gpio67, gpio68, gpio74
and gpio69, so here it's a MCLK1 pin for instance.

> +
> +		ldo-avdd-pins {
> +			pins = "gpio74";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +	};
> +};

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

