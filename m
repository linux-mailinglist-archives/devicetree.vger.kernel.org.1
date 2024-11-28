Return-Path: <devicetree+bounces-125317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 729739DB8A9
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31742284D58
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34A9E1AA1C1;
	Thu, 28 Nov 2024 13:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQI7L1om"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0535F1A9B2D
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732800558; cv=none; b=URlqzfs2acihhOaPUZd6Lr2pgkNKnaIjDLnAKwELhGc/Neg0prGjfd0DMD7LxY1Z0fndnItugeV1PoRSE+KvftWf4sH0Qt02zbi9ILbx2m21oLsufrHPdvaSkz/l5DJ44xB8iT+NANXmg6yjo7G2SpieC3mXv0Bg3PqHH5xHp3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732800558; c=relaxed/simple;
	bh=wMAWalfuWsuDIz3yowdMMxvuCErhNK7h384phiTRa9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kZZZ1YUVX6Ep8fN6UjLg74abhNTpFjpylp0h+MHjMlMkMi3+RfRxddWZ76h3bAQ75vp9g5yh6vyHH86GSdxBvk3fRDF2wftflLcIGhmpxEir6+Iq2iJ5GjOm9oC6ENM2+TetQmavqZ0aQp/dYWamNNX4KxmiN1xoQNgnaKadDZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQI7L1om; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53df63230d0so807279e87.3
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732800554; x=1733405354; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1M9x+r+YCviBGoZJC9x2b+6oMkUPbXP/SxU+uMpJQBk=;
        b=zQI7L1om6mbufH4f2d4gaUKQTV0IY5t1b6XDuZNlbXWjbsN1uoww4llCfyVWO1BjVU
         55ny/jYF9E5qF5+eNRrva9L0c9O5CE0tH3A2Gjm7hla9oCKbGoZz74ezGjV3cDFkBYzm
         E1JFMtcWZn2zIhtIwM11LMdQpc6pLXWMSnSwQG0iMLcdLUh5NcXuQMrWUBjjaGorX8sY
         UAqJAnmWTy7SP1TabF0AmEgWPmK/rzVDH3ApP3+lU5ATwr7+YKKSvGpUgN2L5VZSbSDs
         t4axkGSepvUf2woTFxZpagShkMWj1xJhKXQNUgeA+7KG+KfYRUOfrDUbpNd1tdkGgjOe
         WchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732800554; x=1733405354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1M9x+r+YCviBGoZJC9x2b+6oMkUPbXP/SxU+uMpJQBk=;
        b=OtDMk6lEISFUljfiHirjskcuMBRVqxgi2AwB98PDEBEN3vC4O1FdDuXU3YsaEw4c46
         z43DeNvMRc9jaM1yZ6J0KYTEYivGbUvl0t/VqmTMCz8dNesoPeP2hx14x32RQy3vZsEb
         /PDX9mxJGQ7pOF4ZBb/zen6nCrPinNKsVnuP3QP2PfH4m8ZL6JuI9Q7KOBO24GPDzSAp
         mjjB9cIlRGSo/bWr20csi8EzmWJ/gjk789djH5RjGK25XW+gRsAIJ26uGMs1Ve8vIZWg
         h0oUACaqedoxMLuZDFbCGdKLViMmQRAk4xuQ1CFKnpRA0GK3GszegCPUNsuhKD/3EOHs
         1tEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEbRD6pFSUSU4PT8lqeL14XH5btN4g76Uu1UwAIjMthvsjERmJguvo/qZrTv1MMj65eHt+OEF/TMY7@vger.kernel.org
X-Gm-Message-State: AOJu0YxHeUP9kLS1KHpnfXziU5Tm5HY4UxB3GQ9uiAfTz2h11WsaHSoC
	T6yOO37TDjPihsJ7h6ZokqgOC/uNZc2xpY3bIqjM76R2/FMmN9EllBWM5Fa494g=
X-Gm-Gg: ASbGncsVw3Ll2rKpLUpmxBvhqijnRyJw2MdISSL6ybEhdfQxJLZnp17meK8xqbqnJOb
	ZZvHN1mbUzBmBEUDK/07B2MIDk3ZuqDatdnIcOOjYTcjB7VJUcOtmkou5lR3trob59AMBL/YST6
	AYv/8Bgp+kCkzgSMUPVHs6fH4dZf7Yy89gYb1l1VnkNK2/DHKBbeVfPWKXhLhL2B4aA/y5uwI51
	Si1LUhJjat2SROP4mao5P47IRtdEdDRE/PqDngcG4uhqq8zVFDJbsHrXNop+pTnWXIjLaiw9y5z
	XPu9AyzN2AmD7KrtgBfXZyunZuympw==
X-Google-Smtp-Source: AGHT+IHy0ZGE4Q0Xmg9+8tJl78/gObc6lT7zqEAjjh/Q+2LBS9UBU7Z9bBloHS8dGT7KVHRth1FBbg==
X-Received: by 2002:a05:6512:3b9e:b0:53d:ecf6:aad5 with SMTP id 2adb3069b0e04-53df00d1b2dmr4636025e87.16.1732800554046;
        Thu, 28 Nov 2024 05:29:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64434d3sm179283e87.97.2024.11.28.05.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:29:13 -0800 (PST)
Date: Thu, 28 Nov 2024 15:29:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, quic_tengfan@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: add base QCS8300 RIDE board
Message-ID: <hswfcxj6vlutl7covrbqqzueljv6nkm3q4qrgccii3zh72qrig@spfbtrvrar5f>
References: <20241128-qcs8300_initial_dtsi-v3-0-26aa8a164914@quicinc.com>
 <20241128-qcs8300_initial_dtsi-v3-4-26aa8a164914@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128-qcs8300_initial_dtsi-v3-4-26aa8a164914@quicinc.com>

On Thu, Nov 28, 2024 at 04:44:46PM +0800, Jingyi Wang wrote:
> Add initial support for Qualcomm QCS8300 RIDE board which enables DSPs,
> UFS and booting to shell with uart console.
> 
> Written with help from Tingguo Cheng (added rpmhpd nodes) and Xin Liu
> (added ufs, adsp and gpdsp nodes).
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile         |   2 +-
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 267 ++++++++++++++++++++++++++++++
>  2 files changed, 268 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 9bb8b191aeb5..d9545743606a 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -114,7 +114,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-shift-otter.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
> -dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> new file mode 100644
> index 000000000000..7eed19a694c3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -0,0 +1,267 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "qcs8300.dtsi"
> +/ {
> +	model = "Qualcomm Technologies, Inc. QCS8300 Ride";
> +	compatible = "qcom,qcs8300-ride", "qcom,qcs8300";
> +	chassis-type = "embedded";
> +
> +	aliases {
> +		serial0 = &uart7;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	clocks {
> +		xo_board_clk: xo-board-clk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <38400000>;
> +		};
> +
> +		sleep_clk: sleep-clk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <32000>;
> +		};

Move both clocks to the qcs8300.dtsi. If you wish, you can keep
frequencies in the board DT file.

> +	};
> +};
> +
> +&apps_rsc {
> +	regulators-0 {
> +		compatible = "qcom,pmm8654au-rpmh-regulators";
> +		qcom,pmic-id = "a";
> +
> +		vreg_s4a: smps4 {
> +			regulator-name = "vreg_s4a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s9a: smps9 {
> +			regulator-name = "vreg_s9a";
> +			regulator-min-microvolt = <1352000>;
> +			regulator-max-microvolt = <1352000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l3a: ldo3 {
> +			regulator-name = "vreg_l3a";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l4a: ldo4 {
> +			regulator-name = "vreg_l4a";
> +			regulator-min-microvolt = <880000>;
> +			regulator-max-microvolt = <912000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l5a: ldo5 {
> +			regulator-name = "vreg_l5a";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l6a: ldo6 {
> +			regulator-name = "vreg_l6a";
> +			regulator-min-microvolt = <880000>;
> +			regulator-max-microvolt = <912000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7a: ldo7 {
> +			regulator-name = "vreg_l7a";
> +			regulator-min-microvolt = <880000>;
> +			regulator-max-microvolt = <912000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l8a: ldo8 {
> +			regulator-name = "vreg_l8a";
> +			regulator-min-microvolt = <2504000>;
> +			regulator-max-microvolt = <2960000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l9a: ldo9 {
> +			regulator-name = "vreg_l9a";
> +			regulator-min-microvolt = <2970000>;
> +			regulator-max-microvolt = <3072000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
> +
> +	regulators-1 {
> +		compatible = "qcom,pmm8654au-rpmh-regulators";
> +		qcom,pmic-id = "c";
> +
> +		vreg_s5c: smps5 {
> +			regulator-name = "vreg_s5c";
> +			regulator-min-microvolt = <1104000>;
> +			regulator-max-microvolt = <1104000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l1c: ldo1 {
> +			regulator-name = "vreg_l1c";
> +			regulator-min-microvolt = <300000>;
> +			regulator-max-microvolt = <500000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l2c: ldo2 {
> +			regulator-name = "vreg_l2c";
> +			regulator-min-microvolt = <900000>;
> +			regulator-max-microvolt = <904000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l4c: ldo4 {
> +			regulator-name = "vreg_l4c";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l6c: ldo6 {
> +			regulator-name = "vreg_l6c";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7c: ldo7 {
> +			regulator-name = "vreg_l7c";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
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
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l9c: ldo9 {
> +			regulator-name = "vreg_l9c";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
> +};
> +
> +&gcc {
> +	clocks = <&rpmhcc RPMH_CXO_CLK>,
> +		 <&sleep_clk>,
> +		 <0>,
> +		 <0>,
> +		 <0>,
> +		 <0>,
> +		 <0>,
> +		 <0>,
> +		 <0>,
> +		 <0>;

Move this to the qcs8300.dtsi (and rpmhcc too).

> +};
> +
> +&qupv3_id_0 {
> +	status = "okay";
> +};
> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/qcs8300/adsp.mbn";
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/qcs8300/cdsp0.mbn";
> +	status = "okay";
> +};
> +
> +&remoteproc_gpdsp {
> +	firmware-name = "qcom/qcs8300/gpdsp0.mbn";
> +	status = "okay";
> +};
> +
> +&rpmhcc {
> +	clocks = <&xo_board_clk>;
> +	clock-names = "xo";

qcs8300.dtsi

> +};
> +
> +&uart7 {
> +	status = "okay";
> +};
> +
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
> +	vcc-supply = <&vreg_l8a>;
> +	vcc-max-microamp = <1100000>;
> +	vccq-supply = <&vreg_l4c>;
> +	vccq-max-microamp = <1200000>;
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l4a>;
> +	vdda-pll-supply = <&vreg_l5a>;
> +	status = "okay";
> +};
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

