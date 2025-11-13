Return-Path: <devicetree+bounces-238332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9FCC59E72
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 21:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 580023AD72D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FE1F2DA77D;
	Thu, 13 Nov 2025 20:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EIEguRPm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H5lGj5eI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F46429CEB
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763064509; cv=none; b=Cg65kGuAbpcjao4MP6T7nBQU4Sg5ubu5sRmY1e1P4B0HOvzmuZE0V7V+0pSbrpbNZbXI2E//2IHEpVo8M+l2wTJGj8ad+gbIyS68YQTBzrfY5aWXW4+N9Keb3oiqiZ+pIZj5zZ06D+bDjWUr1k09FjZjLfYGs+B/CQOkQ7McT7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763064509; c=relaxed/simple;
	bh=776WuZzaqCT1JOZwWwqaNZMuyb/07idsRY5aHyLei8s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h1xccT7ubLj3qPx9aeYrWeP685PH7LNKYjg3xPRWZPmlXOQpn0x+IaiQzxSJ4n+qfDT2RVDZ/7cbaKS4gXUEHJlsfLbXbC9XaI9e2WAb46MjEwL0c2/pmE3PPlc5dJonuOUrOd9jBR1xr7vOWhajKCK4yvsmJ7HeAuko5RNqRt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EIEguRPm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H5lGj5eI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADFP5XQ482919
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:08:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lTQbYGb42dgz3ANQkSxjRbxw
	jZ17Atrrw8Ei0NIl8w4=; b=EIEguRPmC5G+gln5hE8SpAbigmIWcNw6ZJqG7tbg
	FM7K0I9Lyl+VuFZu71IHlH4ST+NSb9DosBTTdC1825Jy3d1nWN5/Oy9Nmuok2RZF
	vhXSFhAs70XphQdT2UXB3lrn6VG9I6yOWAbH+nI8Ep4qqPdpxAHxDlr2bcrJLDU6
	FbcqTv84O7BQ+iqM3GW66GaQS7YyK8LrHE9IvZR3gVOOD9up3YGvi9dgJD1+FKXG
	d0a7+jMQee2fPwtudU8FqHaBnBlDxtMaZ5wEH9e4TzXB+O1okYbYNlXmz/ehq7L7
	quYPZbUbE+fWfmU7DiifSYoLhv1xMmGifTC+T9n1jIxaVQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adhy30vy5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:08:24 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed69f9ce96so55585761cf.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763064504; x=1763669304; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lTQbYGb42dgz3ANQkSxjRbxwjZ17Atrrw8Ei0NIl8w4=;
        b=H5lGj5eIkjr2kITThj9pCLn+X10LSC7To8yeECx7jORY3eu9kkHb7QrxBXpbUvOIuS
         2F9ie5JRboPxHeJ9GOK44vMTfVJRvbeZfxlPhj/UCvdrcWXcq9d2a7hzltP6TMbbCyDX
         UulvU6mZVUI8bixxXJeruQMDnm/N4aVNel1G5xS//ZJGM7jwlDL6HQpNoAdZtvo2Bqg8
         M4HnSvjEMlLYAy53+OTLr/IgVu6MqzgN772nZrtVxXl8jQJerxFVtS8Ng7PmP4VjAhQs
         rvj4O5QXut+QRN+HLjmsFtq0Ab1Ux/QMou3odTI+IjzEgNKkroi28XfjoH0+HH2mCnN5
         VNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763064504; x=1763669304;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lTQbYGb42dgz3ANQkSxjRbxwjZ17Atrrw8Ei0NIl8w4=;
        b=XsCFnesvOTOW0A5tbq5+yVxqUHTPakkyMFOJ3NETWiDCd3B62mo4oe7bZzjZcFNRzY
         B6Nz26szWveSBY+SQAMZndVT9tuVE3GyTqWoKAmuKKMMShufu8x5ssVAkngWyOPizNFN
         9Q+69jsv4WxBNy736fmy8Odlfo/YbSVbDVSpF5+e0BVzjdHVVV1AzBXTybEiyRKJ4cqs
         DQSUVKfW/YsG0OzUTyL70UmiIbfabHFXhWXBojC+yIVLK1RsO68kt5UyYWN+gbTojrYc
         CeC6N5LVImSPlF0eGPWjVpTCIMdlMvZTYGO2I+cK1zo07mhQmhuNWznzSU5EbmEwVIzw
         hu/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUOvCgHCbgCygHx0+08cdaDrvieknmw6GciiuThiJP2aIldluxuFWTjI/UsodlDwsObCXdoHHUk5szx@vger.kernel.org
X-Gm-Message-State: AOJu0YxFwoEOJ8o6NLHTQ4qAEpDlg2ND3vsqWH5mHFNK+YOaOxej9qsm
	Ar2j0EwUINI1xi+pOuOBVzEqKE3ISSyvbnNd459GpZEJq3FBxgsi+L0M2dw2HS8gk68FlaCqa/9
	k8zk07XEayNRiVZkiRncdy8OPCOOAatZPBy6P1BpkHntYtZfdG+jEIFQWpT7RF3Uj
X-Gm-Gg: ASbGnct95MRCxYA9S2yjd3N1bzyxzJfFZ3H4meaX464puFsIdKuSQZfaWitL+KbrkU8
	L7oDJc70I4z7bCi3IDiItENJ9V/glyhHKVgqbLLj8Hu8ooNC67OvvYk0qlzz4M/QRtTnapqXnQx
	J8uOn972ZusQ7F2sevActcBZEoaSJdib/rpFe4V9sH+m/QlMSWlPLRsaykd7yqbhyJYaNBLzaUU
	BmXJwNW04DoptYZGhYs1aZNMpjFYQNIs1QlqDQn/hb2pP+4/s2Xd3IqMBz77+zL5E09hBY95KhE
	l4ag0SO0vMu1fpI4YUxkjNz5xbFtfSGwi2zT5xcNg/Niq7Z514t1N+DtDVThauNvDmCJuO3fK8d
	TS1c1Iyn/dYm0E1S1MDmUJcMrx7OeXsssFtYRY+Oo5Mr4X042cXxggF2Yst7i1UOPr4XgS5aGHP
	PF4Q7wM8aqgvEE
X-Received: by 2002:a05:622a:1a01:b0:4e8:a941:4b81 with SMTP id d75a77b69052e-4edf2063f18mr13630091cf.32.1763064503857;
        Thu, 13 Nov 2025 12:08:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGavHkhXA7CQq6oz6Cq34HFWMtiZNfSwlVWyEFrDFohuLJhqqZctJrPN9TSX5XdnVUSMe8zqQ==
X-Received: by 2002:a05:622a:1a01:b0:4e8:a941:4b81 with SMTP id d75a77b69052e-4edf2063f18mr13629581cf.32.1763064503274;
        Thu, 13 Nov 2025 12:08:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804001fasm585291e87.57.2025.11.13.12.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 12:08:22 -0800 (PST)
Date: Thu, 13 Nov 2025 22:08:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <badmoityubqmjsxune27vrh2e6htwkhvnak4uj7iiixnxhjpkm@qi56e6kilyt2>
References: <20251107105735.1491273-1-tessolveupstream@gmail.com>
 <20251107105735.1491273-3-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107105735.1491273-3-tessolveupstream@gmail.com>
X-Proofpoint-GUID: vlwYUxWZpY0km2U5vEfRA6aTGe-nJRUD
X-Proofpoint-ORIG-GUID: vlwYUxWZpY0km2U5vEfRA6aTGe-nJRUD
X-Authority-Analysis: v=2.4 cv=JuT8bc4C c=1 sm=1 tr=0 ts=69163ab9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=oeIxGxWSNplIu_Kw4KcA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE1NyBTYWx0ZWRfXzD1O/U/wAHEp
 o7dCeciviyRRuFezdSTVZptYOOh37aN97PUd6snaDk0CmawsMdlIrdnx5ui1DUtsErc8MoHSAVI
 Rtlm2teGKtdyUKU2Ga8/DcwuKIfLd0c0RF/yZQXKH/WhdUmRdNDSc9AKh8hfrqPXfUetuZlEueX
 5DGlAaYmlAZRc63O29j2jDZ6Eluc9B4GfQIX3DyacM4fD24v8J7UXAPaylNd20dVtb2qx1fbJ+M
 Shi80YyBfh6yNJSa0n0Ruj9xO8LhpXPArALh1VeV43fqyqKO75lXGI0NsotGCvB9QXNN3gfVH9W
 G6+GTIARhKhCJlE1US3f2lTfT0tuY4CwkdJx11lNCXHosN2o9XG7zRDrsa1+XvWRn5fCBtJuyss
 KZIfwm5yTO11IRRNhtseerJQbZpH1A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 phishscore=0 adultscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130157

On Fri, Nov 07, 2025 at 04:27:35PM +0530, Sudarshan Shetty wrote:
> Introduce the device tree support for the QCS615-based talos-evk

You can't introduce DT _support_. It's either introducing a DT or
supporting.

> platform, which follows the SMARC (Smart Mobility ARChitecture)
> standard. The platform is composed of two main hardware
> components: the talos-evk-som and the talos-evk-cb.

are those the actual names? I'd say, the platform is composed of the SoM
(following some standard or not) and a Carrier Board.

> The Talos EVK platform supports multiple display configurations
> HDMI and LVDS that share a common carrier board design.

Other way, the Carrier Board supports several (not multiple) display
configurations.

> Both configurations use the same base carrier board hardware,
> while the display output is selected through hardware configuration
> options (DIP switch selection).

drop the "hardware configuration options". DIP-switch is enough.

> 
> To avoid duplication, introduce a new include file,

s/introduce/use/

> talos-evk-cb.dtsi, which defines interfaces and peripherals that are
> common to both display variants.

... and two DTs, cb-hdmi and cb-lvds, describing the selected
configuration.

> 
> The initial device tree includes basic support for:

Can any of them be non-basic?

> - CPU and memory
> - UART
> - GPIOs
> - Regulators
> - PMIC
> - Early console
> - AT24MAC602 EEPROM
> - MCP2515 SPI to CAN
> - ADV7535 DSI-to-HDMI bridge
> - DisplayPort

What else is present as a part of the platform? Are we missing
something?

> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>  arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi  |  56 +++
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 443 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/talos-evk.dts      |  89 ++++
>  4 files changed, 589 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 5b52f9e4e5f3..282d744acd73 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -305,6 +305,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
>  x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
>  x1e78100-lenovo-thinkpad-t14s-el2-dtbs	:= x1e78100-lenovo-thinkpad-t14s.dtb x1-el2.dtbo
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi
> new file mode 100644
> index 000000000000..81d15ee4f366
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi
> @@ -0,0 +1,55 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +/dts-v1/;
> +
> +#include "talos-evk-som.dtsi"
> +
> +/ {
> +	model = "Qualcomm QCS615 IQ 615 EVK";
> +	compatible = "qcom,talos-evk", "qcom,qcs615", "qcom,sm6150";
> +	chassis-type = "embedded";
> +
> +	aliases {
> +		mmc1 = &sdhc_2;
> +	};
> +
> +	dp-connector {
> +		compatible = "dp-connector";
> +		label = "DP0";
> +		type = "full-size";
> +
> +		hpd-gpios = <&tlmm 104 GPIO_ACTIVE_HIGH>;
> +
> +		port {
> +			dp0_connector_in: endpoint {
> +				remote-endpoint = <&mdss_dp0_out>;
> +			};
> +		};
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
> +&sdhc_2 {
> +	pinctrl-0 = <&sdc2_state_on>;
> +	pinctrl-1 = <&sdc2_state_off>;
> +	pinctrl-names = "default", "sleep";
> +
> +	bus-width = <4>;
> +	cd-gpios = <&tlmm 99 GPIO_ACTIVE_LOW>;
> +
> +	vmmc-supply = <&vreg_l10a>;
> +	vqmmc-supply = <&vreg_s4a>;
> +
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> new file mode 100644
> index 000000000000..9e6198892c11
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> @@ -0,0 +1,443 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include "sm6150.dtsi"
> +#include "pm8150.dtsi"
> +/ {
> +	aliases {
> +		mmc0 = &sdhc_1;
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	clocks {
> +		sleep_clk: sleep-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <32764>;
> +			#clock-cells = <0>;
> +		};
> +
> +		xo_board_clk: xo-board-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <38400000>;
> +			#clock-cells = <0>;
> +		};
> +	};
> +
> +	regulator-usb2-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "USB2_VBUS";
> +		gpio = <&pm8150_gpios 10 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&usb2_en>;
> +		pinctrl-names = "default";
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v3p3_can: regulator-v3p3-can {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v3p3-can";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v5p0_can: regulator-v5p0-can {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v5p0-can";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +};
> +
> +&apps_rsc {
> +	regulators-0 {
> +		compatible = "qcom,pm8150-rpmh-regulators";
> +		qcom,pmic-id = "a";
> +
> +		vreg_s3a: smps3 {
> +			regulator-name = "vreg_s3a";
> +			regulator-min-microvolt = <600000>;
> +			regulator-max-microvolt = <650000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s4a: smps4 {
> +			regulator-name = "vreg_s4a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1829000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s5a: smps5 {
> +			regulator-name = "vreg_s5a";
> +			regulator-min-microvolt = <1896000>;
> +			regulator-max-microvolt = <2040000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s6a: smps6 {
> +			regulator-name = "vreg_s6a";
> +			regulator-min-microvolt = <1304000>;
> +			regulator-max-microvolt = <1404000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l1a: ldo1 {
> +			regulator-name = "vreg_l1a";
> +			regulator-min-microvolt = <488000>;
> +			regulator-max-microvolt = <852000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l2a: ldo2 {
> +			regulator-name = "vreg_l2a";
> +			regulator-min-microvolt = <1650000>;
> +			regulator-max-microvolt = <3100000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l3a: ldo3 {
> +			regulator-name = "vreg_l3a";
> +			regulator-min-microvolt = <1000000>;
> +			regulator-max-microvolt = <1248000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l5a: ldo5 {
> +			regulator-name = "vreg_l5a";
> +			regulator-min-microvolt = <875000>;
> +			regulator-max-microvolt = <975000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7a: ldo7 {
> +			regulator-name = "vreg_l7a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1900000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l8a: ldo8 {
> +			regulator-name = "vreg_l8a";
> +			regulator-min-microvolt = <1150000>;
> +			regulator-max-microvolt = <1350000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l10a: ldo10 {
> +			regulator-name = "vreg_l10a";
> +			regulator-min-microvolt = <2950000>;
> +			regulator-max-microvolt = <3312000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l11a: ldo11 {
> +			regulator-name = "vreg_l11a";
> +			regulator-min-microvolt = <1232000>;
> +			regulator-max-microvolt = <1260000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l12a: ldo12 {
> +			regulator-name = "vreg_l12a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1890000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l13a: ldo13 {
> +			regulator-name = "vreg_l13a";
> +			regulator-min-microvolt = <3000000>;
> +			regulator-max-microvolt = <3230000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l15a: ldo15 {
> +			regulator-name = "vreg_l15a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1904000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l16a: ldo16 {
> +			regulator-name = "vreg_l16a";
> +			regulator-min-microvolt = <3000000>;
> +			regulator-max-microvolt = <3312000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l17a: ldo17 {
> +			regulator-name = "vreg_l17a";
> +			regulator-min-microvolt = <2950000>;
> +			regulator-max-microvolt = <3312000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
> +};
> +
> +&i2c5 {
> +	status = "okay";

No clock-frequency? Why not add one, disabling the warning?

> +
> +	eeprom@57 {
> +		compatible = "atmel,24c02";
> +		reg = <0x57>;
> +		pagesize = <16>;
> +	};
> +
> +	eeprom@5f {
> +		compatible = "atmel,24mac602";
> +		reg = <0x5f>;
> +		pagesize = <16>;
> +	};
> +};
> +
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dp0 {
> +	status = "okay";
> +};
> +
> +&mdss_dp0_out {
> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000>;
> +	remote-endpoint = <&dp0_connector_in>;
> +};
> +
> +&mdss_dp_phy {
> +	vdda-phy-supply = <&vreg_l11a>;
> +	vdda-pll-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vreg_l11a>;
> +
> +	status = "okay";
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&adv7535_in>;

If ADV7535 isn't a part of the SoM, why is this property here?

> +	data-lanes = <0 1 2 3>;
> +};
> +
> +&mdss_dsi0_phy {
> +	vdds-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +};
> +
> +&pcie {
> +	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 = <&pcie_default_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +
> +	status = "okay";
> +};
> +
> +&pm8150_gpios {
> +	usb2_en: usb2-en-state {
> +		pins = "gpio10";
> +		function = "normal";
> +		output-enable;
> +		power-source = <0>;
> +	};
> +};
> +
> +&qupv3_id_0 {
> +	status = "okay";
> +};

Is there a need to also enable GPI_DMA?

> +
> +&qupv3_id_1 {
> +	status = "okay";
> +};
> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/qcs615/adsp.mbn";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/qcs615/cdsp.mbn";
> +
> +	status = "okay";
> +};
> +
> +&sdhc_1 {
> +	pinctrl-0 = <&sdc1_state_on>;
> +	pinctrl-1 = <&sdc1_state_off>;
> +	pinctrl-names = "default", "sleep";
> +
> +	bus-width = <8>;
> +	mmc-ddr-1_8v;
> +	mmc-hs200-1_8v;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
> +	vmmc-supply = <&vreg_l17a>;
> +	vqmmc-supply = <&vreg_s4a>;
> +
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +
> +	status = "okay";
> +};
> +
> +&spi6 {
> +	status = "okay";
> +
> +	can@0 {
> +		compatible = "microchip,mcp2515";



> +		reg = <0>;
> +		clock-frequency = <20000000>;
> +		interrupts-extended = <&tlmm 87 IRQ_TYPE_LEVEL_LOW>;
> +		spi-max-frequency = <10000000>;
> +		vdd-supply = <&vreg_v3p3_can>;
> +		xceiver-supply = <&vreg_v5p0_can>;
> +	};
> +};
> +
> +&tlmm {
> +	pcie_default_state: pcie-default-state {
> +		clkreq-pins {
> +			pins = "gpio90";
> +			function = "pcie_clk_req";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio101";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio100";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +	vdda-phy-dpdm-supply = <&vreg_l13a>;
> +
> +	status = "okay";
> +};
> +
> +&usb_qmpphy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +
> +	status = "okay";
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
> +&usb_hsphy_2 {

So, the labels are usb_1_hsphy, but usb_hsphy_2? That's not logical,
please fix one of them. Then please fix the order of nodes here.

> +	vdd-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +	vdda-phy-dpdm-supply = <&vreg_l13a>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2 {
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 123 GPIO_ACTIVE_LOW>;
> +	vcc-supply = <&vreg_l17a>;
> +	vcc-max-microamp = <600000>;
> +	vccq2-supply = <&vreg_s4a>;
> +	vccq2-max-microamp = <600000>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +
> +	status = "okay";
> +};
> +
> +&venus {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
> new file mode 100644
> index 000000000000..b694dda422a8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
> @@ -0,0 +1,89 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +/dts-v1/;
> +
> +#include "talos-evk-cb.dtsi"
> +
> +/ {
> +	hdmi-out {
> +		compatible = "hdmi-connector";
> +		type = "d";
> +
> +		port {
> +			hdmi_con_out: endpoint {
> +				remote-endpoint = <&adv7535_out>;
> +			};
> +		};
> +	};
> +
> +	vreg_v5p0_out: regulator-v5p0-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v5p0-out";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		/* Powered by system 20V rail (USBC_VBUS_IN) */
> +	};
> +
> +	vreg_v3p3_out: regulator-v3p3-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v3p3-out";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vreg_v5p0_out>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v1p8_out: regulator-v1p8-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v1p8-out";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vreg_v5p0_out>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	bridge: bridge@3d {
> +		compatible = "adi,adv7535";
> +		reg = <0x3d>;
> +		avdd-supply = <&vreg_v1p8_out>;
> +		dvdd-supply = <&vreg_v1p8_out>;
> +		pvdd-supply = <&vreg_v1p8_out>;
> +		a2vdd-supply = <&vreg_v1p8_out>;
> +		v3p3-supply = <&vreg_v3p3_out>;
> +		interrupts-extended = <&tlmm 26 IRQ_TYPE_LEVEL_LOW>;
> +		adi,dsi-lanes = <4>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				adv7535_in: endpoint {
> +					remote-endpoint = <&mdss_dsi0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				adv7535_out: endpoint {
> +					remote-endpoint = <&hdmi_con_out>;
> +				};
> +			};
> +		};
> +	};
> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

