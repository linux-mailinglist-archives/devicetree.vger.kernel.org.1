Return-Path: <devicetree+bounces-117155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E93569B533D
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 21:18:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 178511C22823
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 20:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422642076BB;
	Tue, 29 Oct 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJZ4NPsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11294192B74;
	Tue, 29 Oct 2024 20:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730233096; cv=none; b=LISmLUUC7YK5XGPLwQyCGsnoBKEvACj7lhwNckLS2yA2AUnxDEUlsimrnTZgRZfJEY1OGMfqiVUIwleqO1OpgccjSGuVEX9OAOrP0djH9gFZMT3Z4Ja8vOz25VlEiqrPiQytUmRa7Dx7TumpnlwRvO9fZXmQ4VaDAX+HLxxiXFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730233096; c=relaxed/simple;
	bh=i0GyeNN51H0fKoka/ieYkakIEMWbIm2kC++MhlfwmUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p4U/dPVhnqeSSnazFwlRi9/kEUirKoD6AIzrTJw0vo6R+FBCX5pkP+xm17lf1CbR04YiSyMQrlqbOU2aKeOvL4ZH29d9XGEpdx1SOuibeJx4PSimBWGuHvjDoc2uA6faR5i3cOjagU7LGXyvMr/dwiWmKA5KDH/BxdZts87ApZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJZ4NPsQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC784C4CECD;
	Tue, 29 Oct 2024 20:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730233095;
	bh=i0GyeNN51H0fKoka/ieYkakIEMWbIm2kC++MhlfwmUk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uJZ4NPsQieFz+Jx8n1NxUu8vovrd7+Hd5dJFb17XvRyWk4EmV0W0RK56XFt3RL9k4
	 /Eisklc0mhnoVtcFM58ddZoAzuGTXchFAzKTa6oSNu5dC9+GiGYoxE9bHMsNJffRr4
	 xEbbUAgIfGT5Z54NuN1TmNGe+Aw+OaVuz/dmaLaFRzQQK9nNI8hxptQUa1BWmGx+Qn
	 xvBVh/uy+qvEHYKT1i5uycYLTZ1Kg+RKB+pqN3zSwTJtUdmtkLYuw0ZeNegA9sn/HK
	 wPvzOKWI/CH7q3Ls1CQiv4SBl1eRRcFExTxVyqiiLh1wWjOVikg4mXaq950kokG2uR
	 inUEy2u2jgc4A==
Date: Tue, 29 Oct 2024 15:18:12 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: jens.glathe@oldschoolsolutions.biz
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Merck Hung <merckhung@gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sc8280xp-blackrock: dt
 definition for WDK2023
Message-ID: <tralm5ue3g3q6bqxwfd765guy6gfuwldv4kxfrjzbpenx3xnb5@nasoa3nx5sz2>
References: <20241027-jg-blackrock-for-upstream-v4-0-703b254fc95f@oldschoolsolutions.biz>
 <20241027-jg-blackrock-for-upstream-v4-3-703b254fc95f@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241027-jg-blackrock-for-upstream-v4-3-703b254fc95f@oldschoolsolutions.biz>

On Sun, Oct 27, 2024 at 02:02:18PM GMT, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Device tree for the Microsoft Windows Dev Kit 2023. This work
> is based on the initial work of Merck Hung <merckhung@gmail.com>.
> 
> The Windows Dev Kit 2023 is a nice little desktop based on sc8280xp.
> Link: https://learn.microsoft.com/en-us/windows/arm/dev-kit/
> 
> Supported features:
> - USB type-c and type-a ports
> - minidp connector
> - built-in r8152 Ethernet adapter
> - PCIe devices
> - nvme
> - ath11k WiFi (WCN6855)
> - WCN6855 Bluetooth
> - A690 GPU
> - ADSP and CDSP
> - GPIO keys
> - Audio definition (works via USB)
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> Signed-off-by: Merck Hung <merckhung@gmail.com>

Is this Co-developed-by, or is it simply "Based on initial work by Merck
Hung"?

If the latter, I'd suggest drop Merck's s-o-b, give credit to Merck in a
written comment and rely on "Developer's certificate of origin" option b.

Regards,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |    1 +
>  .../boot/dts/qcom/sc8280xp-microsoft-blackrock.dts | 1383 ++++++++++++++++++++
>  2 files changed, 1384 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index ac199f809b0d4..0e354299f832b 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -192,6 +192,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sc8180x-primus.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc8280xp-crd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc8280xp-lenovo-thinkpad-x13s.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sc8280xp-microsoft-arcata.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sc8280xp-microsoft-blackrock.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sda660-inforce-ifc6560.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm450-lenovo-tbx605f.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm450-motorola-ali.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts
> new file mode 100644
> index 0000000000000..19ce7bb12c2e1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts
> @@ -0,0 +1,1383 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2022, Linaro Limited
> + * Copyright (c) 2023, Merck Hung <merckhung@gmail.com>
> + * Copyright (c) 2023, 2024 Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/iio/qcom,spmi-adc7-pm8350.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/gpio-keys.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "sc8280xp.dtsi"
> +#include "sc8280xp-pmics.dtsi"
> +
> +/ {
> +	model = "Windows Dev Kit 2023";
> +	compatible = "microsoft,blackrock", "qcom,sc8280xp";
> +	chassis-type = "desktop";
> +
> +	aliases {
> +		i2c4 = &i2c4;
> +		i2c21 = &i2c21;
> +		serial1 = &uart2;
> +	};
> +
> +	wcd938x: audio-codec {
> +		compatible = "qcom,wcd9380-codec";
> +
> +		pinctrl-0 = <&wcd_default>;
> +		pinctrl-names = "default";
> +
> +		reset-gpios = <&tlmm 106 GPIO_ACTIVE_LOW>;
> +
> +		vdd-buck-supply = <&vreg_s10b>;
> +		vdd-rxtx-supply = <&vreg_s10b>;
> +		vdd-io-supply = <&vreg_s10b>;
> +		vdd-mic-bias-supply = <&vreg_bob>;
> +
> +		qcom,micbias1-microvolt = <1800000>;
> +		qcom,micbias2-microvolt = <1800000>;
> +		qcom,micbias3-microvolt = <1800000>;
> +		qcom,micbias4-microvolt = <1800000>;
> +		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
> +		qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
> +		qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
> +		qcom,rx-device = <&wcd_rx>;
> +		qcom,tx-device = <&wcd_tx>;
> +
> +		#sound-dai-cells = <1>;
> +	};
> +
> +	dp3_connector: connector {
> +		compatible = "dp-connector";
> +		label = "DP-3";
> +		type = "mini";
> +
> +		dp-pwr-supply = <&vreg_misc_3p3>;
> +
> +		port {
> +			dp1_connector_in: endpoint {
> +				remote-endpoint = <&mdss0_dp2_phy_out>;
> +			};
> +		};
> +	};
> +
> +	pmic-glink {
> +		compatible = "qcom,sc8280xp-pmic-glink", "qcom,pmic-glink";
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 166 GPIO_ACTIVE_HIGH>,
> +				    <&tlmm 49 GPIO_ACTIVE_HIGH>;
> +
> +		/* Left-side rear port */
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +			power-role = "source";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_con0_hs: endpoint {
> +						remote-endpoint = <&usb_0_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_con0_ss: endpoint {
> +						remote-endpoint = <&usb_0_qmpphy_out>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					pmic_glink_con0_sbu: endpoint {
> +						remote-endpoint = <&usb0_sbu_mux>;
> +					};
> +				};
> +			};
> +		};
> +
> +		/* Left-side front port */
> +		connector@1 {
> +			compatible = "usb-c-connector";
> +			reg = <1>;
> +			power-role = "source";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_con1_hs: endpoint {
> +						remote-endpoint = <&usb_1_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_con1_ss: endpoint {
> +						remote-endpoint = <&usb_1_qmpphy_out>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					pmic_glink_con1_sbu: endpoint {
> +						remote-endpoint = <&usb1_sbu_mux>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +
> +	vreg_misc_3p3: regulator-misc-3p3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VCC3B";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmc8280_1_gpios 1 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&misc_3p3_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_nvme: regulator-nvme {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VCC3_SSD";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 135 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&nvme_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_vph_pwr: regulator-vph-pwr {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VPH_VCC3R9";
> +		regulator-min-microvolt = <3900000>;
> +		regulator-max-microvolt = <3900000>;
> +
> +		regulator-always-on;
> +	};
> +
> +	vreg_wlan: regulator-wlan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VCC_WLAN_3R9";
> +		regulator-min-microvolt = <3900000>;
> +		regulator-max-microvolt = <3900000>;
> +
> +		gpio = <&pmr735a_gpios 1 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&hastings_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_wwan: regulator-wwan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VCC3B_WAN";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmc8280_2_gpios 1 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&wwan_sw_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	reserved-memory {
> +		gpu_mem: gpu-mem@8bf00000 {
> +			reg = <0 0x8bf00000 0 0x2000>;
> +			no-map;
> +		};
> +
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			size = <0x0 0x8000000>;
> +			reusable;
> +			linux,cma-default;
> +		};
> +	};
> +
> +	usb0-sbu-mux {
> +		compatible = "pericom,pi3usb102", "gpio-sbu-mux";
> +
> +		enable-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
> +		select-gpios = <&tlmm 164 GPIO_ACTIVE_HIGH>;
> +
> +		pinctrl-0 = <&usb0_sbu_default>;
> +		pinctrl-names = "default";
> +
> +		mode-switch;
> +		orientation-switch;
> +
> +		port {
> +			usb0_sbu_mux: endpoint {
> +				remote-endpoint = <&pmic_glink_con0_sbu>;
> +			};
> +		};
> +	};
> +
> +	usb1-sbu-mux {
> +		compatible = "pericom,pi3usb102", "gpio-sbu-mux";
> +
> +		enable-gpios = <&tlmm 48 GPIO_ACTIVE_LOW>;
> +		select-gpios = <&tlmm 47 GPIO_ACTIVE_HIGH>;
> +
> +		pinctrl-0 = <&usb1_sbu_default>;
> +		pinctrl-names = "default";
> +
> +		mode-switch;
> +		orientation-switch;
> +
> +		port {
> +			usb1_sbu_mux: endpoint {
> +				remote-endpoint = <&pmic_glink_con1_sbu>;
> +			};
> +		};
> +	};
> +
> +	wcn6855-pmu {
> +		compatible = "qcom,wcn6855-pmu";
> +
> +		pinctrl-0 = <&bt_default>, <&wlan_en>;
> +		pinctrl-names = "default";
> +
> +		wlan-enable-gpios = <&tlmm 134 GPIO_ACTIVE_HIGH>;
> +		bt-enable-gpios = <&tlmm 133 GPIO_ACTIVE_HIGH>;
> +
> +		vddio-supply = <&vreg_s10b>;
> +		vddaon-supply = <&vreg_s12b>;
> +		vddpmu-supply = <&vreg_s12b>;
> +		vddrfa0p95-supply = <&vreg_s12b>;
> +		vddrfa1p3-supply = <&vreg_s11b>;
> +		vddrfa1p9-supply = <&vreg_s1c>;
> +		vddpcie1p3-supply = <&vreg_s11b>;
> +		vddpcie1p9-supply = <&vreg_s1c>;
> +
> +		regulators {
> +			vreg_pmu_rfa_cmn_0p8: ldo0 {
> +				regulator-name = "vreg_pmu_rfa_cmn_0p8";
> +			};
> +
> +			vreg_pmu_aon_0p8: ldo1 {
> +				regulator-name = "vreg_pmu_aon_0p8";
> +			};
> +
> +			vreg_pmu_wlcx_0p8: ldo2 {
> +				regulator-name = "vreg_pmu_wlcx_0p8";
> +			};
> +
> +			vreg_pmu_wlmx_0p8: ldo3 {
> +				regulator-name = "vreg_pmu_wlmx_0p8";
> +			};
> +
> +			vreg_pmu_btcmx_0p8: ldo4 {
> +				regulator-name = "vreg_pmu_btcmx_0p8";
> +			};
> +
> +			vreg_pmu_pcie_1p8: ldo5 {
> +				regulator-name = "vreg_pmu_pcie_1p8";
> +			};
> +
> +			vreg_pmu_pcie_0p9: ldo6 {
> +				regulator-name = "vreg_pmu_pcie_0p9";
> +			};
> +
> +			vreg_pmu_rfa_0p8: ldo7 {
> +				regulator-name = "vreg_pmu_rfa_0p8";
> +			};
> +
> +			vreg_pmu_rfa_1p2: ldo8 {
> +				regulator-name = "vreg_pmu_rfa_1p2";
> +			};
> +
> +			vreg_pmu_rfa_1p7: ldo9 {
> +				regulator-name = "vreg_pmu_rfa_1p7";
> +			};
> +		};
> +	};
> +};
> +
> +&apps_rsc {
> +	regulators-0 {
> +		compatible = "qcom,pm8350-rpmh-regulators";
> +		qcom,pmic-id = "b";
> +
> +		vdd-s10-supply = <&vreg_vph_pwr>;
> +		vdd-s11-supply = <&vreg_vph_pwr>;
> +		vdd-s12-supply = <&vreg_vph_pwr>;
> +		vdd-l1-l4-supply = <&vreg_s12b>;
> +		vdd-l2-l7-supply = <&vreg_bob>;
> +		vdd-l3-l5-supply = <&vreg_s11b>;
> +		vdd-l6-l9-l10-supply = <&vreg_s12b>;
> +		vdd-l8-supply = <&vreg_s12b>;
> +
> +		vreg_s10b: smps10 {
> +			regulator-name = "vreg_s10b";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-always-on;
> +		};
> +
> +		vreg_s11b: smps11 {
> +			regulator-name = "vreg_s11b";
> +			regulator-min-microvolt = <1272000>;
> +			regulator-max-microvolt = <1272000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s12b: smps12 {
> +			regulator-name = "vreg_s12b";
> +			regulator-min-microvolt = <984000>;
> +			regulator-max-microvolt = <984000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l1b: ldo1 {
> +			regulator-name = "vreg_l1b";
> +			regulator-min-microvolt = <912000>;
> +			regulator-max-microvolt = <912000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l3b: ldo3 {
> +			regulator-name = "vreg_l3b";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-boot-on;
> +		};
> +
> +		vreg_l4b: ldo4 {
> +			regulator-name = "vreg_l4b";
> +			regulator-min-microvolt = <912000>;
> +			regulator-max-microvolt = <912000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l6b: ldo6 {
> +			regulator-name = "vreg_l6b";
> +			regulator-min-microvolt = <880000>;
> +			regulator-max-microvolt = <880000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-boot-on;
> +		};
> +	};
> +
> +	regulators-1 {
> +		compatible = "qcom,pm8350c-rpmh-regulators";
> +		qcom,pmic-id = "c";
> +
> +		vdd-bob-supply = <&vreg_vph_pwr>;
> +		vdd-l1-l12-supply = <&vreg_s1c>;
> +		vdd-l2-l8-supply = <&vreg_s1c>;
> +		vdd-l3-l4-l5-l7-l13-supply = <&vreg_bob>;
> +		vdd-l6-l9-l11-supply = <&vreg_bob>;
> +		vdd-l10-supply = <&vreg_s11b>;
> +
> +		vreg_s1c: smps1 {
> +			regulator-name = "vreg_s1c";
> +			regulator-min-microvolt = <1880000>;
> +			regulator-max-microvolt = <1900000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-always-on;
> +		};
> +
> +		vreg_l1c: ldo1 {
> +			regulator-name = "vreg_l1c";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l6c: ldo6 {
> +			regulator-name = "vreg_l6c";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <2960000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7c: ldo7 {
> +			regulator-name = "vreg_l7c";
> +			regulator-min-microvolt = <2504000>;
> +			regulator-max-microvolt = <2504000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l8c: ldo8 {
> +			regulator-name = "vreg_l8c";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l9c: ldo9 {
> +			regulator-name = "vreg_l9c";
> +			regulator-min-microvolt = <2960000>;
> +			regulator-max-microvolt = <2960000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l12c: ldo12 {
> +			regulator-name = "vreg_l12c";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l13c: ldo13 {
> +			regulator-name = "vreg_l13c";
> +			regulator-min-microvolt = <3072000>;
> +			regulator-max-microvolt = <3072000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_bob: bob {
> +			regulator-name = "vreg_bob";
> +			regulator-min-microvolt = <3008000>;
> +			regulator-max-microvolt = <3960000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
> +			regulator-always-on;
> +		};
> +	};
> +
> +	regulators-2 {
> +		compatible = "qcom,pm8350-rpmh-regulators";
> +		qcom,pmic-id = "d";
> +
> +		vdd-l1-l4-supply = <&vreg_s11b>;
> +		vdd-l2-l7-supply = <&vreg_bob>;
> +		vdd-l3-l5-supply = <&vreg_s11b>;
> +		vdd-l6-l9-l10-supply = <&vreg_s12b>;
> +		vdd-l8-supply = <&vreg_s12b>;
> +
> +		vreg_l2d: ldo2 {
> +			regulator-name = "vreg_l2d";
> +			regulator-min-microvolt = <3072000>;
> +			regulator-max-microvolt = <3072000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l3d: ldo3 {
> +			regulator-name = "vreg_l3d";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +				 RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l4d: ldo4 {
> +			regulator-name = "vreg_l4d";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l6d: ldo6 {
> +			regulator-name = "vreg_l6d";
> +			regulator-min-microvolt = <880000>;
> +			regulator-max-microvolt = <880000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7d: ldo7 {
> +			regulator-name = "vreg_l7d";
> +			regulator-min-microvolt = <3072000>;
> +			regulator-max-microvolt = <3072000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l8d: ldo8 {
> +			regulator-name = "vreg_l8d";
> +			regulator-min-microvolt = <912000>;
> +			regulator-max-microvolt = <912000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l9d: ldo9 {
> +			regulator-name = "vreg_l9d";
> +			regulator-min-microvolt = <912000>;
> +			regulator-max-microvolt = <912000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l10d: ldo10 {
> +			regulator-name = "vreg_l10d";
> +			regulator-min-microvolt = <912000>;
> +			regulator-max-microvolt = <912000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
> +};
> +
> +&dispcc0 {
> +	status = "okay";
> +};
> +
> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {
> +		memory-region = <&gpu_mem>;
> +		firmware-name = "qcom/sc8280xp/microsoft/blackrock/qcdxkmsuc8280.mbn";
> +	};
> +};
> +
> +&mdss0 {
> +	status = "okay";
> +};
> +
> +&mdss0_dp0 {
> +	status = "okay";
> +};
> +
> +&mdss0_dp0_out {
> +	data-lanes = <0 1>;
> +	remote-endpoint = <&usb_0_qmpphy_dp_in>;
> +};
> +
> +&mdss0_dp1 {
> +	status = "okay";
> +};
> +
> +&mdss0_dp1_out {
> +	data-lanes = <0 1>;
> +	remote-endpoint = <&usb_1_qmpphy_dp_in>;
> +};
> +
> +&mdss0_dp2 {
> +	compatible = "qcom,sc8280xp-dp";
> +
> +	data-lanes = <0 1 2 3>;
> +
> +	status = "okay";
> +
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +			mdss0_dp2_phy_out: endpoint {
> +				remote-endpoint = <&dp1_connector_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&mdss0_dp2_phy {
> +	compatible = "qcom,sc8280xp-dp-phy";
> +
> +	vdda-phy-supply = <&vreg_l3b>;
> +	vdda-pll-supply = <&vreg_l6b>;
> +
> +	status = "okay";
> +};
> +
> +&pcie2a {
> +	aspm-no-l0s;
> +	max-link-speed = <16>;
> +
> +	perst-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 145 GPIO_ACTIVE_LOW>;
> +
> +	vddpe-3v3-supply = <&vreg_nvme>;
> +	vdda-supply = <&vreg_l7d>;
> +
> +	pinctrl-0 = <&pcie2a_default>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie2a_phy {
> +	vdda-phy-supply = <&vreg_l4d>;
> +	vdda-pll-supply = <&vreg_l6d>;
> +
> +	status = "okay";
> +};
> +
> +&pcie4 {
> +	aspm-no-l0s;
> +	max-link-speed = <2>;
> +
> +	perst-gpios = <&tlmm 141 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 139 GPIO_ACTIVE_LOW>;
> +
> +	vddpe-3v3-supply = <&vreg_wlan>;
> +	vdda-supply = <&vreg_l7d>;
> +
> +	pinctrl-0 = <&pcie4_default>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie4_port0 {
> +	wifi@0 {
> +		compatible = "pci17cb,1103";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn_0p8>;
> +		vddaon-supply = <&vreg_pmu_aon_0p8>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p8>;
> +		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> +		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
> +
> +		qcom,ath11k-calibration-variant = "volterra";
> +	};
> +};
> +
> +&pcie4_phy {
> +	vdda-phy-supply = <&vreg_l4d>;
> +	vdda-pll-supply = <&vreg_l6d>;
> +
> +	status = "okay";
> +};
> +
> +&pmc8280c_lpg {
> +	status = "okay";
> +};
> +
> +&pmk8280_adc_tm {
> +	status = "okay";
> +
> +	sys-therm@0 {
> +		reg = <0>;
> +		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM1_100K_PU(1)>;
> +		qcom,hw-settle-time-us = <200>;
> +		qcom,avg-samples = <2>;
> +		qcom,ratiometric;
> +	};
> +
> +	sys-therm@1 {
> +		reg = <1>;
> +		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM2_100K_PU(1)>;
> +		qcom,hw-settle-time-us = <200>;
> +		qcom,avg-samples = <2>;
> +		qcom,ratiometric;
> +	};
> +
> +	sys-therm@2 {
> +		reg = <2>;
> +		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM3_100K_PU(1)>;
> +		qcom,hw-settle-time-us = <200>;
> +		qcom,avg-samples = <2>;
> +		qcom,ratiometric;
> +	};
> +
> +	sys-therm@3 {
> +		reg = <3>;
> +		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM4_100K_PU(1)>;
> +		qcom,hw-settle-time-us = <200>;
> +		qcom,avg-samples = <2>;
> +		qcom,ratiometric;
> +	};
> +
> +	sys-therm@4 {
> +		reg = <4>;
> +		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM1_100K_PU(3)>;
> +		qcom,hw-settle-time-us = <200>;
> +		qcom,avg-samples = <2>;
> +		qcom,ratiometric;
> +	};
> +
> +	sys-therm@5 {
> +		reg = <5>;
> +		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM2_100K_PU(3)>;
> +		qcom,hw-settle-time-us = <200>;
> +		qcom,avg-samples = <2>;
> +		qcom,ratiometric;
> +	};
> +
> +	sys-therm@6 {
> +		reg = <6>;
> +		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM3_100K_PU(3)>;
> +		qcom,hw-settle-time-us = <200>;
> +		qcom,avg-samples = <2>;
> +		qcom,ratiometric;
> +	};
> +
> +	sys-therm@7 {
> +		reg = <7>;
> +		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM4_100K_PU(3)>;
> +		qcom,hw-settle-time-us = <200>;
> +		qcom,avg-samples = <2>;
> +		qcom,ratiometric;
> +	};
> +};
> +
> +&pmk8280_pon_pwrkey {
> +	status = "okay";
> +};
> +
> +&pmk8280_pon_resin {
> +	status = "okay";
> +};
> +
> +&pmk8280_rtc {
> +	nvmem-cells = <&rtc_offset>;
> +	nvmem-cell-names = "offset";
> +
> +	status = "okay";
> +};
> +
> +&pmk8280_sdam_6 {
> +	status = "okay";
> +
> +	rtc_offset: rtc-offset@bc {
> +		reg = <0xbc 0x4>;
> +	};
> +};
> +
> +&pmk8280_vadc {
> +	channel@144 {
> +		reg = <PM8350_ADC7_AMUX_THM1_100K_PU(1)>;
> +		qcom,hw-settle-time = <200>;
> +		qcom,ratiometric;
> +		label = "sys_therm1";
> +	};
> +
> +	channel@145 {
> +		reg = <PM8350_ADC7_AMUX_THM2_100K_PU(1)>;
> +		qcom,hw-settle-time = <200>;
> +		qcom,ratiometric;
> +		label = "sys_therm2";
> +	};
> +
> +	channel@146 {
> +		reg = <PM8350_ADC7_AMUX_THM3_100K_PU(1)>;
> +		qcom,hw-settle-time = <200>;
> +		qcom,ratiometric;
> +		label = "sys_therm3";
> +	};
> +
> +	channel@147 {
> +		reg = <PM8350_ADC7_AMUX_THM4_100K_PU(1)>;
> +		qcom,hw-settle-time = <200>;
> +		qcom,ratiometric;
> +		label = "sys_therm4";
> +	};
> +
> +	channel@344 {
> +		reg = <PM8350_ADC7_AMUX_THM1_100K_PU(3)>;
> +		qcom,hw-settle-time = <200>;
> +		qcom,ratiometric;
> +		label = "sys_therm5";
> +	};
> +
> +	channel@345 {
> +		reg = <PM8350_ADC7_AMUX_THM2_100K_PU(3)>;
> +		qcom,hw-settle-time = <200>;
> +		qcom,ratiometric;
> +		label = "sys_therm6";
> +	};
> +
> +	channel@346 {
> +		reg = <PM8350_ADC7_AMUX_THM3_100K_PU(3)>;
> +		qcom,hw-settle-time = <200>;
> +		qcom,ratiometric;
> +		label = "sys_therm7";
> +	};
> +
> +	channel@347 {
> +		reg = <PM8350_ADC7_AMUX_THM4_100K_PU(3)>;
> +		qcom,hw-settle-time = <200>;
> +		qcom,ratiometric;
> +		label = "sys_therm8";
> +	};
> +};
> +
> +&qup0 {
> +	status = "okay";
> +};
> +
> +&qup1 {
> +	status = "okay";
> +};
> +
> +&qup2 {
> +	status = "okay";
> +};
> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/sc8280xp/microsoft/blackrock/qcadsp8280.mbn";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_nsp0 {
> +	firmware-name = "qcom/sc8280xp/microsoft/blackrock/qccdsp8280.mbn";
> +
> +	status = "okay";
> +};
> +
> +&rxmacro {
> +	status = "okay";
> +};
> +
> +&sound {
> +	compatible = "qcom,sc8280xp-sndcard";
> +	model = "microsoft/blackrock";
> +	audio-routing =
> +		"SpkrLeft IN", "WSA_SPK1 OUT",
> +		"SpkrRight IN", "WSA_SPK2 OUT",
> +		"IN1_HPHL", "HPHL_OUT",
> +		"IN2_HPHR", "HPHR_OUT",
> +		"AMIC2", "MIC BIAS2",
> +		"VA DMIC0", "MIC BIAS1",
> +		"VA DMIC1", "MIC BIAS1",
> +		"VA DMIC2", "MIC BIAS3",
> +		"VA DMIC0", "VA MIC BIAS1",
> +		"VA DMIC1", "VA MIC BIAS1",
> +		"VA DMIC2", "VA MIC BIAS3",
> +		"TX SWR_ADC1", "ADC2_OUTPUT";
> +
> +	wcd-playback-dai-link {
> +		link-name = "WCD Playback";
> +
> +		cpu {
> +			sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
> +		};
> +
> +		codec {
> +			sound-dai = <&wcd938x 0>, <&swr1 0>, <&rxmacro 0>;
> +		};
> +
> +		platform {
> +			sound-dai = <&q6apm>;
> +		};
> +	};
> +
> +	wcd-capture-dai-link {
> +		link-name = "WCD Capture";
> +
> +		cpu {
> +			sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
> +		};
> +
> +		codec {
> +			sound-dai = <&wcd938x 1>, <&swr2 0>, <&txmacro 0>;
> +		};
> +
> +		platform {
> +			sound-dai = <&q6apm>;
> +		};
> +	};
> +
> +	wsa-dai-link {
> +		link-name = "WSA Playback";
> +
> +		cpu {
> +			sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
> +		};
> +
> +		codec {
> +			sound-dai = <&swr0 0>, <&wsamacro 0>;
> +		};
> +
> +		platform {
> +			sound-dai = <&q6apm>;
> +		};
> +	};
> +
> +	va-dai-link {
> +		link-name = "VA Capture";
> +
> +		cpu {
> +			sound-dai = <&q6apmbedai VA_CODEC_DMA_TX_0>;
> +		};
> +
> +		platform {
> +			sound-dai = <&q6apm>;
> +		};
> +
> +		codec {
> +			sound-dai = <&vamacro 0>;
> +		};
> +	};
> +};
> +
> +&swr0 {
> +	status = "okay";
> +};
> +
> +&swr1 {
> +	status = "okay";
> +
> +	wcd_rx: wcd9380-rx@0,4 {
> +		compatible = "sdw20217010d00";
> +		reg = <0 4>;
> +		qcom,rx-port-mapping = <1 2 3 4 5>;
> +	};
> +};
> +
> +&swr2 {
> +	status = "okay";
> +
> +	wcd_tx: wcd9380-tx@0,3 {
> +		compatible = "sdw20217010d00";
> +		reg = <0 3>;
> +		qcom,tx-port-mapping = <1 1 2 3>;
> +	};
> +};
> +
> +&txmacro {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-0 = <&uart2_default>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "qcom,wcn6855-bt";
> +
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn_0p8>;
> +		vddaon-supply = <&vreg_pmu_aon_0p8>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p8>;
> +		vddbtcmx-supply = <&vreg_pmu_btcmx_0p8>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
> +
> +		max-speed = <3200000>;
> +	};
> +};
> +
> +&usb_0 {
> +	status = "okay";
> +};
> +
> +&usb_0_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_0_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_con0_hs>;
> +};
> +
> +&usb_0_hsphy {
> +	vdda-pll-supply = <&vreg_l9d>;
> +	vdda-phy-supply = <&vreg_l4d>;
> +	vdda18-supply = <&vreg_l1c>;
> +	vdda33-supply = <&vreg_l7d>;
> +
> +	status = "okay";
> +};
> +
> +&usb_0_qmpphy {
> +	vdda-phy-supply = <&vreg_l4d>;
> +	vdda-pll-supply = <&vreg_l9d>;
> +
> +	orientation-switch;
> +
> +	status = "okay";
> +};
> +
> +&usb_0_qmpphy_dp_in {
> +	remote-endpoint = <&mdss0_dp0_out>;
> +};
> +
> +&usb_0_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_con0_ss>;
> +};
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_1_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_con1_hs>;
> +};
> +
> +&usb_1_hsphy {
> +	vdda-pll-supply = <&vreg_l4b>;
> +	vdda-phy-supply = <&vreg_l3b>;
> +	vdda18-supply = <&vreg_l1c>;
> +	vdda33-supply = <&vreg_l13c>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy {
> +	vdda-phy-supply = <&vreg_l3b>;
> +	vdda-pll-supply = <&vreg_l4b>;
> +
> +	orientation-switch;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy_dp_in {
> +	remote-endpoint = <&mdss0_dp1_out>;
> +};
> +
> +&usb_1_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_con1_ss>;
> +};
> +
> +&usb_2 {
> +	pinctrl-0 = <&usb2_en_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	dr_mode = "host";
> +	phy-names = "usb2-port0", "usb3-port0";
> +	phys = <&usb_2_hsphy0>, <&usb_2_qmpphy0>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2_hsphy0 {
> +	vdda-pll-supply = <&vreg_l1b>;
> +	vdda-phy-supply = <&vreg_l3d>;
> +	vdda18-supply = <&vreg_l1c>;
> +	vdda33-supply = <&vreg_l7d>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2_hsphy1 {
> +	vdda-pll-supply = <&vreg_l8d>;
> +	vdda-phy-supply = <&vreg_l3d>;
> +	vdda18-supply = <&vreg_l1c>;
> +	vdda33-supply = <&vreg_l7d>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2_hsphy2 {
> +	vdda-pll-supply = <&vreg_l10d>;
> +	vdda-phy-supply = <&vreg_l3d>;
> +	vdda18-supply = <&vreg_l8c>;
> +	vdda33-supply = <&vreg_l2d>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2_hsphy3 {
> +	vdda-pll-supply = <&vreg_l10d>;
> +	vdda-phy-supply = <&vreg_l3d>;
> +	vdda18-supply = <&vreg_l8c>;
> +	vdda33-supply = <&vreg_l2d>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l1b>;
> +	vdda-pll-supply = <&vreg_l4d>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2_qmpphy1 {
> +	vdda-phy-supply = <&vreg_l8d>;
> +	vdda-pll-supply = <&vreg_l4d>;
> +
> +	status = "okay";
> +};
> +
> +&vamacro {
> +	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
> +	pinctrl-names = "default";
> +
> +	vdd-micb-supply = <&vreg_s10b>;
> +
> +	qcom,dmic-sample-rate = <4800000>;
> +
> +	status = "okay";
> +};
> +
> +&wsamacro {
> +	status = "okay";
> +};
> +
> +&xo_board_clk {
> +	clock-frequency = <38400000>;
> +};
> +
> +/* PINCTRL */
> +
> +&lpass_tlmm {
> +	status = "okay";
> +};
> +
> +&pmc8280_1_gpios {
> +	edp_bl_en: edp-bl-en-state {
> +		pins = "gpio8";
> +		function = "normal";
> +	};
> +
> +	edp_bl_reg_en: edp-bl-reg-en-state {
> +		pins = "gpio9";
> +		function = "normal";
> +	};
> +
> +	misc_3p3_reg_en: misc-3p3-reg-en-state {
> +		pins = "gpio1";
> +		function = "normal";
> +	};
> +};
> +
> +&pmc8280_2_gpios {
> +	wwan_sw_en: wwan-sw-en-state {
> +		pins = "gpio1";
> +		function = "normal";
> +	};
> +};
> +
> +&pmc8280c_gpios {
> +	edp_bl_pwm: edp-bl-pwm-state {
> +		pins = "gpio8";
> +		function = "func1";
> +	};
> +};
> +
> +&pmr735a_gpios {
> +	hastings_reg_en: hastings-reg-en-state {
> +		pins = "gpio1";
> +		function = "normal";
> +	};
> +};
> +
> +&tlmm {
> +	gpio-reserved-ranges = <70 2>, <74 6>, <125 2>, <128 2>, <154 4>;
> +
> +	bt_default: bt-default-state {
> +		hstp-bt-en-pins {
> +			pins = "gpio133";
> +			function = "gpio";
> +			drive-strength = <16>;
> +			bias-disable;
> +		};
> +
> +		hstp-sw-ctrl-pins {
> +			pins = "gpio132";
> +			function = "gpio";
> +			bias-pull-down;
> +		};
> +	};
> +
> +	nvme_reg_en: nvme-reg-en-state {
> +		pins = "gpio135";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	pcie2a_default: pcie2a-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio142";
> +			function = "pcie2a_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio143";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio145";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	pcie3a_default: pcie3a-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio150";
> +			function = "pcie3a_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio151";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio148";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	pcie4_default: pcie4-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio140";
> +			function = "pcie4_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio141";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio139";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	uart2_default: uart2-default-state {
> +		cts-pins {
> +			pins = "gpio121";
> +			function = "qup2";
> +			bias-bus-hold;
> +		};
> +
> +		rts-pins {
> +			pins = "gpio122";
> +			function = "qup2";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		rx-pins {
> +			pins = "gpio124";
> +			function = "qup2";
> +			bias-pull-up;
> +		};
> +
> +		tx-pins {
> +			pins = "gpio123";
> +			function = "qup2";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +	};
> +
> +	usb0_sbu_default: usb0-sbu-state {
> +		oe-n-pins {
> +			pins = "gpio101";
> +			function = "gpio";
> +			bias-disable;
> +			drive-strength = <16>;
> +			output-high;
> +		};
> +
> +		sel-pins {
> +			pins = "gpio164";
> +			function = "gpio";
> +			bias-disable;
> +			drive-strength = <16>;
> +		};
> +	};
> +
> +	usb1_sbu_default: usb1-sbu-state {
> +		oe-n-pins {
> +			pins = "gpio48";
> +			function = "gpio";
> +			bias-disable;
> +			drive-strength = <16>;
> +			output-high;
> +		};
> +
> +		sel-pins {
> +			pins = "gpio47";
> +			function = "gpio";
> +			bias-disable;
> +			drive-strength = <16>;
> +		};
> +	};
> +
> +	usb2_en_state: usb2-en-state {
> +		/* TS3USB221A USB2.0 mux select */
> +		pins = "gpio24";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +		output-low;
> +	};
> +
> +	wcd_default: wcd-default-state {
> +		reset-pins {
> +			pins = "gpio106";
> +			function = "gpio";
> +			bias-disable;
> +		};
> +	};
> +
> +	wlan_en: wlan-en-state {
> +		pins = "gpio134";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-pull-down;
> +	};
> +};
> 
> -- 
> 2.43.0
> 
> 

