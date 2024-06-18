Return-Path: <devicetree+bounces-76895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCB490C76E
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:44:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D83D328532F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7D91B4C4F;
	Tue, 18 Jun 2024 08:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yJWfJ6vy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFD21B4C43
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 08:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718700543; cv=none; b=KB1yTCjIH6Y7T1LZpsRCgV//xTUYt/o21mYnUdx/hv2uiWAjVp2fku1TTyDF6CXhSdqDORGUwx8s3M5pKDReblC5QYToi0hcykVkPJw/A7LeIcgMKJ7mucoiVJ2qi4F4CnTUGbrK6rtTZmSsNxOxxWlAeIHFaMc6jioXqGioSIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718700543; c=relaxed/simple;
	bh=r/mGT1Ytsmt1SsOueabAl3dUaccZutG1w6sSrF+5+ng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PzSH5kuGW/4ypcTNkE4b4wgOGxl+SWnkMeSWJlDGdKvqNc1ve4v5GRENjWiwHtHjijttEzRwXqpkno1gEnP+Cp29au6iCEX9fzkihmqvbQI8C+PxbuUJi+rjRxsH5GwyidxBHnfZw/zuPDhr8+s8TyrPvn0PTrASE9628Zt6JQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yJWfJ6vy; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ebe3fb5d4dso46431861fa.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 01:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718700538; x=1719305338; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LQuU6GbY7BxkjWCyOKXd4lI70w5/0sPPU5KVw/atijE=;
        b=yJWfJ6vypsv008O8SmrfhZfUUh77QhG0RMd8I9p9H8hHExfNqgJ3njUzzx+IFeHRMN
         fG9pqeVX6kRSB74Vv9LWA5vGVZJEG0XoMRFuOCvFIq1Rn3n0J9jhJFgvVHg9qRl4r1LX
         iwaMIyu8yHBbw0bWOD/9K7sBzNqNlOZdikHztQu0HFF1++rnj+sPRtvk8r4REb4Xjl56
         hOlj4Qzikaul5l9s+lTHoswbH+2g8JfIVkITvNTSTY2hBhPfDDi/Gh2EMwOoUt5CG9pJ
         WnstOtZ1d8qKXE+tDQC1rLWpytC+TqvTgB/ZqJiNmWMSDzy330vbOZQi1AMh/ISvZKIR
         eJsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718700538; x=1719305338;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQuU6GbY7BxkjWCyOKXd4lI70w5/0sPPU5KVw/atijE=;
        b=qRiwnFXpL+g+zCASHWxPhxpgzR2ASthNCbp2bCh/++1a0RABc/JJENO6SnUzTz/QCs
         nJWr9mUl7CWYP5ZngD99+pxk/r6bcRn0Ct/1C4DhmyMH69IW33TQV9h4WcLLRP8IM/Sh
         dWhSm6f81flw6D3Xd5ub4Rm3+aEaKUtBYUsQ5D4CQGkZLJQaPUWI9ADEi4CbgKPZblMK
         PmfJeGi85Z1kzuLFjF1qhiuuXWt6i+LTbs+K7r7UQM8pIxbGSMZVe7IInw/pM5DOOLgh
         yKyo5v08KTpePhxgjQwMkC+iBmusF1OmMgEZhI6nEKEFrnDuFCfwQB/cxl9D7q2Pd3TN
         cRLA==
X-Forwarded-Encrypted: i=1; AJvYcCVEnxhlPWhU32U/7ezAuCxvAKwLKKmm04GqLeBX9Il3TKImdJ/dLfaasU9oV5ONV+Bgg0s5t3L+8A+g4N8Otq3m76sviiHNSbGSqw==
X-Gm-Message-State: AOJu0Yw611htjPAMBkX1fwLcLFQ/4uvxDUubT+neNPF1euAKZcCtCkIg
	b6RiF32qpnXFjfXgy9WpUIZG0Yq1un5bf6XbPRNsDGPFzp6LeTLvXoel3BsCoqM=
X-Google-Smtp-Source: AGHT+IFIjoChiwAT9XLvIqAJZhWa5zOO2JkT6iRby/LFt6wY73Kln9ElF883nCG09GJtJQJrfrdPkg==
X-Received: by 2002:a2e:a172:0:b0:2eb:eced:accd with SMTP id 38308e7fff4ca-2ec3466bb95mr5748781fa.13.1718700538320;
        Tue, 18 Jun 2024 01:48:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c05f3fsm16324491fa.37.2024.06.18.01.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 01:48:57 -0700 (PDT)
Date: Tue, 18 Jun 2024 11:48:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com, 
	Qiang Yu <quic_qianyu@quicinc.com>, Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: [PATCH v10 4/4] arm64: dts: qcom: aim300: add AIM300 AIoT
Message-ID: <qck3nuenuizs46an3kd2akhmadu6dwumxsv5jrg4uwk53ke4l2@vt47suphknyq>
References: <20240618072202.2516025-1-quic_tengfan@quicinc.com>
 <20240618072202.2516025-5-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618072202.2516025-5-quic_tengfan@quicinc.com>

On Tue, Jun 18, 2024 at 03:22:02PM GMT, Tengfei Fan wrote:
> Add AIM300 AIoT Carrier board DTS support, including usb, UART, PCIe,
> I2C functions support.
> Here is a diagram of AIM300 AIoT Carrie Board and SoM
>  +--------------------------------------------------+
>  |             AIM300 AIOT Carrier Board            |
>  |                                                  |
>  |           +-----------------+                    |
>  |power----->| Fixed regulator |---------+          |
>  |           +-----------------+         |          |
>  |                                       |          |
>  |                                       v VPH_PWR  |
>  | +----------------------------------------------+ |
>  | |                          AIM300 SOM |        | |
>  | |                                     |VPH_PWR | |
>  | |                                     v        | |
>  | |   +-------+       +--------+     +------+    | |
>  | |   | UFS   |       | QCS8550|     |PMIC  |    | |
>  | |   +-------+       +--------+     +------+    | |
>  | |                                              | |
>  | +----------------------------------------------+ |
>  |                                                  |
>  |                    +----+          +------+      |
>  |                    |USB |          | UART |      |
>  |                    +----+          +------+      |
>  +--------------------------------------------------+
> 
> Co-developed-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Co-developed-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/qcs8550-aim300-aiot.dts     | 315 ++++++++++++++++++
>  2 files changed, 316 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0c1cebd16649..5576c7d6ea06 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -102,6 +102,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-shift-otter.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts b/arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts
> new file mode 100644
> index 000000000000..d4fb10149e66
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts
> @@ -0,0 +1,315 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/leds/common.h>
> +#include "qcs8550-aim300.dtsi"
> +#include "pm8010.dtsi"
> +#include "pmr735d_a.dtsi"
> +#include "pmr735d_b.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. QCS8550 AIM300 AIOT";
> +	compatible = "qcom,qcs8550-aim300-aiot", "qcom,qcs8550-aim300", "qcom,qcs8550",
> +		     "qcom,sm8550";
> +
> +	aliases {
> +		serial0 = &uart7;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-0 = <&volume_up_n>;
> +		pinctrl-names = "default";
> +
> +		key-volume-up {
> +			label = "Volume Up";
> +			debounce-interval = <15>;
> +			gpios = <&pm8550_gpios 6 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +	};
> +
> +	pmic-glink {
> +		compatible = "qcom,sm8550-pmic-glink", "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 11 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_hs_in: endpoint {
> +						remote-endpoint = <&usb_1_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_ss_in: endpoint {
> +						remote-endpoint = <&redriver_ss_out>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					pmic_glink_sbu: endpoint {
> +						remote-endpoint = <&fsa4480_sbu_mux>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +
> +	vph_pwr: regulator-vph-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +};
> +
> +&apps_rsc {
> +	regulators-0 {
> +		vdd-bob1-supply = <&vph_pwr>;
> +		vdd-bob2-supply = <&vph_pwr>;
> +	};
> +
> +	regulators-3 {
> +		vdd-s4-supply = <&vph_pwr>;
> +		vdd-s5-supply = <&vph_pwr>;
> +	};
> +
> +	regulators-4 {
> +		vdd-s4-supply = <&vph_pwr>;
> +	};
> +
> +	regulators-5 {
> +		vdd-s1-supply = <&vph_pwr>;
> +		vdd-s2-supply = <&vph_pwr>;
> +		vdd-s3-supply = <&vph_pwr>;
> +		vdd-s4-supply = <&vph_pwr>;
> +		vdd-s5-supply = <&vph_pwr>;
> +		vdd-s6-supply = <&vph_pwr>;
> +	};
> +};
> +
> +&i2c_hub_2 {
> +	status = "okay";
> +
> +	typec-mux@42 {
> +		compatible = "fcs,fsa4480";
> +		reg = <0x42>;
> +
> +		vcc-supply = <&vreg_bob1>;
> +
> +		mode-switch;
> +		orientation-switch;
> +
> +		port {
> +			fsa4480_sbu_mux: endpoint {
> +				remote-endpoint = <&pmic_glink_sbu>;
> +			};
> +		};
> +	};
> +
> +	typec-retimer@1c {
> +		compatible = "onnn,nb7vpq904m";
> +		reg = <0x1c>;
> +
> +		vcc-supply = <&vreg_l15b_1p8>;
> +
> +		orientation-switch;
> +		retimer-switch;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				redriver_ss_out: endpoint {
> +					remote-endpoint = <&pmic_glink_ss_in>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				redriver_ss_in: endpoint {
> +					data-lanes = <3 2 1 0>;
> +					remote-endpoint = <&usb_dp_qmpphy_out>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&mdss_dsi0 {
> +	status = "okay";
> +
> +	panel@0 {
> +		compatible = "visionox,vtdr6130";
> +		reg = <0>;
> +
> +		pinctrl-0 = <&dsi_active>, <&te_default>;
> +		pinctrl-1 = <&dsi_suspend>, <&te_default>;
> +		pinctrl-names = "default", "sleep";
> +
> +		reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
> +
> +		vci-supply = <&vreg_l13b_3p0>;
> +		vdd-supply = <&vreg_l11b_1p2>;
> +		vddio-supply = <&vreg_l12b_1p8>;
> +
> +		port {
> +			panel0_in: endpoint {
> +				remote-endpoint = <&mdss_dsi0_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&panel0_in>;
> +	data-lanes = <0 1 2 3>;
> +};
> +
> +&mdss_dsi0_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	status = "okay";
> +};
> +
> +&pcie0_phy {
> +	status = "okay";
> +};
> +
> +&pcie1 {
> +	status = "okay";
> +};
> +
> +&pcie1_phy {
> +	status = "okay";
> +};
> +
> +&pm8550_gpios {
> +	volume_up_n: volume-up-n-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		power-source = <1>;
> +		bias-pull-up;
> +		input-enable;
> +	};
> +};
> +
> +&pon_pwrkey {
> +	status = "okay";
> +};
> +
> +&pon_resin {
> +	linux,code = <KEY_VOLUMEDOWN>;
> +
> +	status = "okay";
> +};
> +
> +&qupv3_id_0 {
> +	status = "okay";
> +};
> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/qcs8550/adsp.mbn",
> +			"qcom/qcs8550/adsp_dtbs.mbn";

adsp_dtb.mbn, not _dtbs.mbn.

https://lore.kernel.org/linux-arm-msm/s5gt3p6zsd5ebrkop4dhd33tykln33f6ahu3pibymecxsmakyd@lg5wfgec6dat/

> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/qcs8550/cdsp.mbn",
> +			"qcom/qcs8550/cdsp_dtbs.mbn";
> +	status = "okay";
> +};
> +
> +&swr1 {
> +	status = "okay";
> +};
> +
> +&swr2 {
> +	status = "okay";
> +};
> +
> +&tlmm {
> +	gpio-reserved-ranges = <32 8>;
> +
> +	dsi_active: dsi-active-state {
> +		pins = "gpio133";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	dsi_suspend: dsi-suspend-state {
> +		pins = "gpio133";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
> +
> +	te_default: te-default-state {
> +		pins = "gpio86";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
> +};
> +
> +&uart7 {
> +	status = "okay";
> +};
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in>;
> +};
> +
> +&usb_1_hsphy {
> +	status = "okay";
> +};
> +
> +&usb_dp_qmpphy {
> +	status = "okay";
> +};
> +
> +&usb_dp_qmpphy_out {
> +	remote-endpoint = <&redriver_ss_in>;
> +};
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

