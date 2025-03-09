Return-Path: <devicetree+bounces-155776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A25A581A2
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 09:33:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C03EB3AAB7F
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 08:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD431922C0;
	Sun,  9 Mar 2025 08:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eQM7SNW3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D992C18E743
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 08:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741509231; cv=none; b=VkXwdZQMW56bZZaQkYoEJQB3EF+9EApSDqCZkKPi+h1ft25rNJGPSBJSYed9PObM7c9Z6KWHzlS5G8lugonap6eMk+IhdqCfIS9ZjZLWonvVfgAaxQYOrxsbAxXdpFqi5U/iKdTIRdE+a7B5zShH0yy7wF4QRHRBDytomIaSk2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741509231; c=relaxed/simple;
	bh=DA4Kxjtg2wyfiGDjO0XkWZ8J8EZ7dUH8HeuhUhvDAGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZWiID68GdtghcXglmsHbwW/Bj0uvLKN0wZxpWV7Cq4NIRuaugv5PgwIC0aurtKXsifxw1+ytLF/O1P8yxBMEhU65NKxZPFV6R7yWWL83FPrq/GRx2QzQfD6wRPahHQxa7nZYmJOP5wlPn5AWp8QpAbRQYB/zz1RDxSfPmekGrIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eQM7SNW3; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30bfd4d4c63so16410801fa.2
        for <devicetree@vger.kernel.org>; Sun, 09 Mar 2025 00:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741509227; x=1742114027; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rKR4H/QECSO/fobjTrFesS+ZjcSBWrrROqlfipaQXZQ=;
        b=eQM7SNW35/m/HoGbWCq4xC8drIOSJM8BTkpYqE1Px1/RCBavPlyaNNLx6MNcvXApSQ
         rZHPXzqHSwFoVpnic/1y9ikE23mVSVBf+S2+0ypCnSPngKy24ladqwAmb+iEIrgTRFJD
         nw74SoLZ+tc74qoFgncqpLXeAY+XZLalzpwd+YXq4Kmi8Svaid0bG5TC7con8MAUMnbK
         QwbZck+ZpCk1Ly+ugJ5KXkuxxkof+mWmEUOj+wpZwX+knlLKB/AxWcXh39DIp01HBL+e
         8LKTnTppqbjYR1p2PhaufZnEjzZ4BmL8rvCBMsrV1t5aSyW3e2VKiDOm+SFpsqbdFF0L
         69bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741509227; x=1742114027;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rKR4H/QECSO/fobjTrFesS+ZjcSBWrrROqlfipaQXZQ=;
        b=dMvoNVw3pgF1n8aEi+xyz8V4kD0gZ16FQWB1zYuVlDSpjfFktHzRZK5AJMTD9HvV5e
         MGlgkV3RO1z7pRAVzoMUxrD662uRvrhAxTYkbC/BLfM1BLSo2naQJs8yeVHeTvl+7m2k
         8ZUQlkg8+NLYAWNFcOrbN7LqHA7osOT+QzLfdHt0uFZHBmAUZsoSs/UVILshOfjl/e1B
         eOeNgHlXbVWPZJ6nHdR4OLU7XEq0EFnIsD2GJbaFrLX9zo5Dj4SVaE65jMbTxIADL9ay
         wm9HnAAaCu7476ajzhZrujVK2JCfEsJGLWJMaOLIRyFyXfvvalOl3meZ3ljtYU0ZrASO
         kTiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO+Z+2PNfkr2b4NOnSFetvCOccqqtlWfwa3ZTLqcIH/ChouhykzV091HLIZHRICtdOtDlB1rm9btPO@vger.kernel.org
X-Gm-Message-State: AOJu0YyY4eMm1kfB8ceyCSrzyjFHLWPBiIowmYRnbIs9sTLfAXs1HXYF
	GIe0BvkWAm2XlpdYrG+VzxVEdzuPbwc6tEVFDgiZRq8CcwaLbXe2fB1PRRGM9fg=
X-Gm-Gg: ASbGncsgcXVpxktbkt5ZODbtfHsWeCsoEq+mJFMBlOzAquBgtJ4N17orVeeaHRyxynl
	Y2fxDCoP7b/tj0KDQtnc4vXrAJF6R2e+v236Lztz/kFCDdvHo/2N93zFQjmJZyYG6Z0vZZDXKmO
	gOxHb2GT8iNwvJ4rx/9wYPtJgoIyl9y2JxtSJtSJvDeqpLg9/OrSnE48vieVTlzZuekxozpyHJ4
	sCPfAJxlcZjqjuC+x3penM5XaHR3mDn9uOwQcRmKQHJxfIpZCrNPU74BMNB/KxfnPcsPKqSjUCp
	paoXgZHYiQk+ifKUPt9iaB+bxT+kSZEzQbaXNNMhU9wmKpYYlGA1FyPsyKCtK0x2+g6DrmZoVCH
	I5/kxjsUOAh8VrIQZVjEsPOmg
X-Google-Smtp-Source: AGHT+IGeARXVcG2cHhhuIEZTvFQOsMPoaHjmx3ib/t6sXJ722tNpW4RJ3V2x8jYPJEBhJrS3NGqcyA==
X-Received: by 2002:a05:6512:1597:b0:549:8d67:c48b with SMTP id 2adb3069b0e04-54990e5d44dmr3729878e87.20.1741509226867;
        Sun, 09 Mar 2025 00:33:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498ae4605asm1047163e87.29.2025.03.09.00.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Mar 2025 00:33:46 -0800 (PST)
Date: Sun, 9 Mar 2025 10:33:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
	Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, Ivan Belokobylskiy <belokobylskij@gmail.com>
Subject: Re: [PATCH v3] ARM: dts: nexus4: Initial dts
Message-ID: <l4lv22oi2ktubf7aveqxqtwb7zz7cfrzdayuxxgwdj46ygubfs@qpl6ut37taoe>
References: <20250309-lg-nexus4-mako-v3-1-1dc2807df296@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250309-lg-nexus4-mako-v3-1-1dc2807df296@ixit.cz>

On Sun, Mar 09, 2025 at 01:45:51AM +0100, David Heidelberg via B4 Relay wrote:
> From: Ivan Belokobylskiy <belokobylskij@gmail.com>
> 
> Add initial support for LG Nexus 4 (mako).
> 
> Features currently working: regulators, eMMC, WiFi, and volume keys.
> 
> Signed-off-by: Ivan Belokobylskiy <belokobylskij@gmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> Changes in v3:
> - rebased against next-20250307
> - dropped backlight until driver gets converted to DT
> 
> Changes in v2:
> - lge vendor doesn't exist anymore, rename to lg
> - sdcc@ to mmc@ to comply with dt-schema
> ---
>  arch/arm/boot/dts/qcom/Makefile                    |   1 +
>  .../boot/dts/qcom/qcom-apq8064-lg-nexus4-mako.dts  | 342 +++++++++++++++++++++
>  2 files changed, 343 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/Makefile b/arch/arm/boot/dts/qcom/Makefile
> index f06c6d425e91dd73c2b453d15543d95bd32383b9..0c1d116f6e84f76994aa8c8286350bdcd1657a42 100644
> --- a/arch/arm/boot/dts/qcom/Makefile
> +++ b/arch/arm/boot/dts/qcom/Makefile
> @@ -12,6 +12,7 @@ dtb-$(CONFIG_ARCH_QCOM) += \
>  	qcom-apq8064-ifc6410.dtb \
>  	qcom-apq8064-sony-xperia-lagan-yuga.dtb \
>  	qcom-apq8064-asus-nexus7-flo.dtb \
> +	qcom-apq8064-lg-nexus4-mako.dtb \
>  	qcom-apq8074-dragonboard.dtb \
>  	qcom-apq8084-ifc6540.dtb \
>  	qcom-apq8084-mtp.dtb \
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-lg-nexus4-mako.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-lg-nexus4-mako.dts
> new file mode 100644
> index 0000000000000000000000000000000000000000..bcb57675aa24892b290d543601f7a6b36b6a65f6
> --- /dev/null
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064-lg-nexus4-mako.dts
> @@ -0,0 +1,342 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include "qcom-apq8064-v2.0.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/mfd/qcom-rpm.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +/ {
> +	model = "LG Nexus 4 (mako)";
> +	compatible = "lg,nexus4-mako", "qcom,apq8064";
> +
> +	aliases {
> +		serial0 = &gsbi7_serial;
> +		serial1 = &gsbi6_serial;
> +		serial2 = &gsbi4_serial;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:115200n8";
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		ramoops@88d00000{
> +			compatible = "ramoops";
> +			reg = <0x88d00000 0x100000>;
> +			record-size = <0x00020000>;
> +			console-size = <0x00020000>;
> +			ftrace-size = <0x00020000>;
> +		};
> +	};
> +
> +	battery_cell: battery-cell {
> +		compatible = "simple-battery";
> +		constant-charge-current-max-microamp = <900000>;
> +		operating-range-celsius = <0 45>;
> +	};
> +
> +	soc {
> +		rpm@108000 {

Please use &rpm { ... }; instead.

> +			regulators {
> +				vdd_l1_l2_l12_l18-supply = <&pm8921_s4>;
> +				vin_lvs1_3_6-supply = <&pm8921_s4>;

Please move vin_lvs2-supply here.

> +				vin_lvs4_5_7-supply = <&pm8921_s4>;
> +

Please move vdd_l1_l2_l12_l18 here.

> +				vdd_l24-supply = <&pm8921_s1>;
> +				vdd_l25-supply = <&pm8921_s1>;
> +				vin_lvs2-supply = <&pm8921_s1>;
> +
> +				vdd_l26-supply = <&pm8921_s7>;
> +				vdd_l27-supply = <&pm8921_s7>;
> +				vdd_l28-supply = <&pm8921_s7>;
> +
> +				/* Buck SMPS */
> +				s1 {
> +					regulator-always-on;
> +					regulator-min-microvolt = <1225000>;
> +					regulator-max-microvolt = <1225000>;
> +					qcom,switch-mode-frequency = <3200000>;
> +					bias-pull-down;
> +				};

empty line

> +				s2 {
> +					regulator-min-microvolt = <1300000>;
> +					regulator-max-microvolt = <1300000>;
> +					qcom,switch-mode-frequency = <1600000>;
> +					bias-pull-down;
> +				};
> +
> +				/* msm otg HSUSB_VDDCX */
> +				s3 {
> +					regulator-min-microvolt = <500000>;
> +					regulator-max-microvolt = <1150000>;
> +					qcom,switch-mode-frequency = <4800000>;
> +					bias-pull-down;
> +				};
> +
> +				/*
> +				 * msm_sdcc.1-sdc-vdd_io
> +				 * tabla2x-slim-CDC_VDDA_RX
> +				 * tabla2x-slim-CDC_VDDA_TX
> +				 * tabla2x-slim-CDC_VDD_CP
> +				 * tabla2x-slim-VDDIO_CDC
> +				 */
> +				s4 {
> +					regulator-always-on;
> +					regulator-min-microvolt	= <1800000>;
> +					regulator-max-microvolt	= <1800000>;
> +					qcom,switch-mode-frequency = <1600000>;
> +					bias-pull-down;
> +					qcom,force-mode = <QCOM_RPM_FORCE_MODE_AUTO>;
> +				};
> +
> +				/*
> +				 * supply vdd_l26, vdd_l27, vdd_l28
> +				 */
> +				s7 {
> +					regulator-min-microvolt = <1300000>;
> +					regulator-max-microvolt = <1300000>;
> +					qcom,switch-mode-frequency = <3200000>;
> +				};
> +
> +				s8 {
> +					regulator-min-microvolt = <2200000>;
> +					regulator-max-microvolt = <2200000>;
> +					qcom,switch-mode-frequency = <1600000>;
> +				};
> +
> +				l1 {
> +					regulator-min-microvolt = <1100000>;
> +					regulator-max-microvolt = <1100000>;
> +					regulator-always-on;
> +					bias-pull-down;
> +				};
> +
> +				/* mipi_dsi.1-dsi1_pll_vdda */
> +				l2 {
> +					regulator-min-microvolt = <1200000>;
> +					regulator-max-microvolt = <1200000>;
> +					bias-pull-down;
> +				};
> +
> +				/* msm_otg-HSUSB_3p3 */
> +				l3 {
> +					regulator-min-microvolt = <3075000>;
> +					regulator-max-microvolt = <3500000>;
> +					bias-pull-down;
> +				};
> +
> +				/* msm_otg-HSUSB_1p8 */
> +				l4 {
> +					regulator-always-on;
> +					regulator-min-microvolt = <1800000>;
> +					regulator-max-microvolt = <1800000>;
> +				};
> +
> +				/* msm_sdcc.1-sdc_vdd */
> +				l5 {
> +					regulator-min-microvolt = <2950000>;
> +					regulator-max-microvolt = <2950000>;
> +					bias-pull-down;
> +				};
> +
> +				/* earjack_debug */
> +				l6 {
> +					regulator-min-microvolt = <3000000>;
> +					regulator-max-microvolt = <3000000>;
> +					bias-pull-down;
> +				};
> +
> +				/* mipi_dsi.1-dsi_vci */
> +				l8 {
> +					regulator-min-microvolt = <2800000>;
> +					regulator-max-microvolt = <3000000>;
> +					bias-pull-down;
> +				};
> +
> +				/* wcnss_wlan.0-iris_vddpa */
> +				l10 {
> +					regulator-min-microvolt = <2900000>;
> +					regulator-max-microvolt = <2900000>;
> +					bias-pull-down;
> +				};
> +
> +				/* mipi_dsi.1-dsi1_avdd */
> +				l11 {
> +					regulator-min-microvolt = <2850000>;
> +					regulator-max-microvolt = <2850000>;
> +					bias-pull-down;
> +				};
> +
> +				/* touch_vdd */
> +				l15 {
> +					regulator-min-microvolt = <1800000>;
> +					regulator-max-microvolt = <2950000>;
> +					bias-pull-down;
> +				};
> +
> +				/* slimport_dvdd */
> +				l18 {
> +					regulator-min-microvolt = <1100000>;
> +					regulator-max-microvolt = <1100000>;
> +					bias-pull-down;
> +				};
> +
> +				/* touch_io */
> +				l22 {
> +					regulator-min-microvolt = <1800000>;
> +					regulator-max-microvolt = <1800000>;
> +					bias-pull-down;
> +				};
> +
> +				/*
> +				 * mipi_dsi.1-dsi_vddio
> +				 * pil_qdsp6v4.1-pll_vdd
> +				 * pil_qdsp6v4.2-pll_vdd
> +				 * msm_ehci_host.0-HSUSB_1p8
> +				 * msm_ehci_host.1-HSUSB_1p8
> +				 */
> +				l23 {
> +					regulator-min-microvolt = <1800000>;
> +					regulator-max-microvolt = <1800000>;
> +					bias-pull-down;
> +				};
> +
> +				/*
> +				 * tabla2x-slim-CDC_VDDA_A_1P2V
> +				 * tabla2x-slim-VDDD_CDC_D
> +				 */
> +				l24 {
> +					regulator-min-microvolt = <750000>;
> +					regulator-max-microvolt = <1150000>;
> +					bias-pull-down;
> +				};
> +
> +				l25 {
> +					regulator-min-microvolt = <1250000>;
> +					regulator-max-microvolt = <1250000>;
> +					regulator-always-on;
> +					bias-pull-down;
> +				};
> +
> +				l26 {
> +					regulator-min-microvolt = <375000>;
> +					regulator-max-microvolt = <1050000>;
> +					regulator-always-on;
> +					bias-pull-down;
> +				};
> +
> +				l27 {
> +					regulator-min-microvolt = <1100000>;
> +					regulator-max-microvolt = <1100000>;
> +				};
> +
> +				l28 {
> +					regulator-min-microvolt = <1050000>;
> +					regulator-max-microvolt = <1050000>;
> +					bias-pull-down;
> +				};
> +
> +				/* wcnss_wlan.0-iris_vddio */
> +				lvs1 {
> +					bias-pull-down;
> +				};
> +
> +				/* wcnss_wlan.0-iris_vdddig */
> +				lvs2 {
> +					bias-pull-down;
> +				};
> +
> +				lvs3 {
> +					bias-pull-down;
> +				};
> +
> +				lvs4 {
> +					bias-pull-down;
> +				};
> +
> +				lvs5 {
> +					bias-pull-down;
> +				};
> +
> +				/* mipi_dsi.1-dsi_iovcc */
> +				lvs6 {
> +					bias-pull-down;
> +				};
> +
> +				/*
> +				 * pil_riva-pll_vdd
> +				 * lvds.0-lvds_vdda
> +				 * mipi_dsi.1-dsi1_vddio
> +				 * hdmi_msm.0-hdmi_vdda
> +				 */
> +				lvs7 {
> +					bias-pull-down;
> +				};
> +
> +				ncp {
> +					regulator-min-microvolt = <1800000>;
> +					regulator-max-microvolt = <1800000>;
> +					qcom,switch-mode-frequency = <1600000>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&pmicintc {
> +	keypad@148 {
> +		compatible = "qcom,pm8921-keypad";
> +		reg = <0x148>;
> +		interrupt-parent = <&pmicintc>;
> +		interrupts = <74 1>, <75 1>;

IRQ_TYPE_EDGE_RISING


> +		linux,keymap = <
> +			MATRIX_KEY(0, 0, KEY_VOLUMEDOWN)
> +			MATRIX_KEY(0, 1, KEY_VOLUMEUP)
> +		>;
> +
> +		keypad,num-rows = <1>;
> +		keypad,num-columns = <5>;
> +		debounce = <15>;
> +		scan-delay = <32>;
> +		row-hold = <91500>;
> +	};
> +};
> +
> +&gsbi1 {
> +	status = "okay";

Status should be the last property. Add empty line before it (here and
further)

> +	qcom,mode = <GSBI_PROT_I2C>;
> +};
> +
> +&gsbi1_i2c {
> +	status = "okay";
> +	clock-frequency = <200000>;
> +	pinctrl-0 = <&i2c1_pins>;
> +	pinctrl-names = "default";

I don't see i2c1_pins being defined. Did it pass the build?
Also there is already a pinctrl for this device. Why do you need to
overwrite it?

> +};
> +
> +&gsbi4 {
> +	status = "okay";
> +	qcom,mode = <GSBI_PROT_I2C_UART>;
> +};
> +
> +&gsbi4_serial {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gsbi4_uart_pin_a>;

Unnecessary, can be dropped. It's set in qcom-apq8064.dtsi.

> +};
> +
> +/* eMMC */
> +&sdcc1 {
> +	status = "okay";
> +	vmmc-supply = <&pm8921_l5>;
> +	vqmmc-supply = <&pm8921_s4>;
> +};
> +
> +&riva {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&riva_wlan_pin_a>;

Where is it defined? Also pinctrl-names should come after pinctrl-N.

> +};
> 
> ---
> base-commit: 0a2f889128969dab41861b6e40111aa03dc57014
> change-id: 20250309-lg-nexus4-mako-da0833885b26
> 
> Best regards,
> -- 
> David Heidelberg <david@ixit.cz>
> 
> 

-- 
With best wishes
Dmitry

