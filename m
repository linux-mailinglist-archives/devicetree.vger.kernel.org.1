Return-Path: <devicetree+bounces-40367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD4A85047A
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 14:04:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 095991C2111A
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 13:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A98481A8;
	Sat, 10 Feb 2024 13:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="ybFERKQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF26F47F62
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 13:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707570281; cv=none; b=HSYQK7BBORsXJzv2x9gWP+kSkyYwxDcnTcahVnmHFTD/Nmtm4KJRMuTOHkLjgD/VjC307tqgscPEnHQXEg/h9S58s7T/F+AdHo9D3Sxga24qXNc6oEaxksg/DymXc7NmiWETPQ25U3p52Ks71mAOEzttoTUizI+d8lrhpf/esVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707570281; c=relaxed/simple;
	bh=w4i4fIJiPogpYi5h8NbjPxKLDg6R9DM8+doBkL13a7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FCNzjRwDQYBmKneUxmk4dpw1CjQlDGsoIqJlTsqVPUZPmR8WkBjuSi40A35AeDmMbav54Q3eHeo1Z6QAEnONRiFuRSIC8fnkxkmk3wSKgCbb+G/3T4TrnTBOhFhOilRgVINKDOo8c0fefQ8ri0WsotWoAz2prPDSx4Xnh9Dvt1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=ybFERKQR; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51147d0abd1so2034389e87.1
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 05:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1707570274; x=1708175074; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hOkDnjZj6UisfqwAiwqQ0AC9LS0mc/y5TNT2hjX6doc=;
        b=ybFERKQRllz5L+1/iaUZC31ODjfeB+09g5BZigEQWsV6lFgV3h9KTpjNDBbEsfnNWX
         O5vpx/JT44VQfM7FRlOCAYBZLdx2uUAl5aO9Dg+24aP4QMOwiHyFXw5JosKTiQxm2aJE
         Njg5E248+HWIVFQHpVPBSqeuul7MWOKE17w81X6NTEMJqG+sOFDJ6VduJXeJFExD8DSU
         oiE06MZe9Y0kcaS3bUtf401nk5MazE/fTahX6jwxrPZQHG1iY/kwFIm0yeaZl6aQi+MG
         ljv7IuLoeJ0jvtJg1GRZTUmnbuAbeMv42U4B5lS89Lf1+X9uChzRUPmVS7CWZQe4NPXx
         iVIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707570274; x=1708175074;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hOkDnjZj6UisfqwAiwqQ0AC9LS0mc/y5TNT2hjX6doc=;
        b=v3jj9P2dHvg+vcL449swRVsngMSvuQLKFdsjvKX5Nqx6aiEYtZbkSMXyQ/18oo6ilP
         cfh4fie152QAlnjqq1DBk1Yt8yLTuX8DOCRrRcoXLc0L9B6Vx9RXKM6zLzm60dAX1I9j
         dFV1pYNEC4XKMarEXWhT9o5gONVFLiDaboBr54+CkczacgLv2oyPERvgA09s+BdLe45C
         C1lBreZ/xRQ4riJGfikd9lEEy5lz112ZzX2wOs9qN2p1epuWDm2AmzgHHCCMOxXjwyuz
         FTsn1RVSip/vVtzQmTqtHNx66uEuaOPom4Z4wIU+uoXO5Zyqv4crImSgFrwdyf/x9D/s
         h9lQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXhCJE3B8A1SoXKXSSAz4uG6oesTrEsgMkceMMBTtcStev2PFlGK/Du8hdv7msCBk8TbTRiixrDM1xE/eWTxcg1ycZvq3mY7lIhA==
X-Gm-Message-State: AOJu0YyBXsG8As1NWFpX7TQk5uGXmNvuckQ8bD8sOVripzHgC5gSjJGl
	hATrO94MFb3vbS/cfOZsCfK09FKg5kLPLbiAzmMaP+w6iNWKPleItju4hzUchKo=
X-Google-Smtp-Source: AGHT+IGGvxGMlIooDqLBbD7Vg0f8NrhOtGm48wt2qhHgC7AeN5RS49eo/QoC4XGyRyOy0nngnMsVlQ==
X-Received: by 2002:ac2:47e3:0:b0:511:42b5:5616 with SMTP id b3-20020ac247e3000000b0051142b55616mr1131123lfp.17.1707570274400;
        Sat, 10 Feb 2024 05:04:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXom/5JquhXV3GR8HEvqoPlWNX3jVOzhhaLbfPKln1pZHm7SxC/ht4NuoSgyc9/pKi2vWrPQWaGt26TDRS4sh2baguGD/MuXK91QQ==
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id m11-20020a05651202eb00b005113cdc5f64sm231048lfq.201.2024.02.10.05.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Feb 2024 05:04:33 -0800 (PST)
Date: Sat, 10 Feb 2024 14:04:32 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: renesas: eagle: Add capture overlay for
 expansion board
Message-ID: <20240210130432.GD1177919@ragnatech.se>
References: <20240123145354.1571800-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240123145354.1571800-1-niklas.soderlund+renesas@ragnatech.se>

Hi Geert,

A gentle ping on this patch.

On 2024-01-23 15:53:54 +0100, Niklas Söderlund wrote:
> The Eagle board supports an optional expansion board. The expansion
> board adds support for HDMI OUT, HDMI capture from two different sources
> and eMMC.
> 
> This change only adds support for the two HDMI capture sources.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> ---
>  arch/arm64/boot/dts/renesas/Makefile          |   2 +
>  .../dts/renesas/r8a77970-eagle-expansion.dtso | 214 ++++++++++++++++++
>  2 files changed, 216 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/renesas/r8a77970-eagle-expansion.dtso
> 
> diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
> index 8ea68d582710..38fadc161709 100644
> --- a/arch/arm64/boot/dts/renesas/Makefile
> +++ b/arch/arm64/boot/dts/renesas/Makefile
> @@ -62,6 +62,8 @@ dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-ulcb.dtb
>  dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-ulcb-kf.dtb
>  
>  dtb-$(CONFIG_ARCH_R8A77970) += r8a77970-eagle.dtb
> +r8a77970-eagle-expansion-dtbs := r8a77970-eagle.dtb r8a77970-eagle-expansion.dtbo
> +dtb-$(CONFIG_ARCH_R8A77970) += r8a77970-eagle-expansion.dtb
>  dtb-$(CONFIG_ARCH_R8A77970) += r8a77970-v3msk.dtb
>  
>  dtb-$(CONFIG_ARCH_R8A77980) += r8a77980-condor.dtb
> diff --git a/arch/arm64/boot/dts/renesas/r8a77970-eagle-expansion.dtso b/arch/arm64/boot/dts/renesas/r8a77970-eagle-expansion.dtso
> new file mode 100644
> index 000000000000..bd32f263e740
> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r8a77970-eagle-expansion.dtso
> @@ -0,0 +1,214 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Source for the Eagle V3M expansion board.
> + *
> + * Copyright (C) 2024 Niklas Söderlund <niklas.soderlund@ragnatech.se>
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/dts-v1/;
> +/plugin/;
> +
> +/ {
> +	/* CN4 */
> +	/* Eagle: SW18 set to OFF */
> +	cvbs-in-cn4 {
> +		compatible = "composite-video-connector";
> +		label = "CVBS IN CN4";
> +
> +		port {
> +			cvbs_con: endpoint {
> +				remote-endpoint = <&adv7482_ain7>;
> +			};
> +		};
> +	};
> +
> +	/* CN3 */
> +	/* Eagle: SW18 set to OFF */
> +	hdmi-in-cn3 {
> +		compatible = "hdmi-connector";
> +		label = "HDMI IN CN3";
> +		type = "a";
> +
> +		port {
> +			hdmi_in_con: endpoint {
> +				remote-endpoint = <&adv7482_hdmi>;
> +			};
> +		};
> +	};
> +
> +	/* CN2 */
> +	/* Eagle: SW35 set 5, 6 and 8 to OFF */
> +	hdmi-in-cn2 {
> +		compatible = "hdmi-connector";
> +		label = "HDMI IN CN2";
> +		type = "a";
> +
> +		port {
> +			hdmi_in_con2: endpoint {
> +				remote-endpoint = <&adv7612_in>;
> +			};
> +		};
> +	};
> +};
> +
> +/* Disconnect MAX9286 GMSL i2c. */
> +&i2c3 {
> +	status = "disabled";
> +};
> +
> +/* Connect expansion board i2c. */
> +&i2c0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	io_expander_27: gpio@27 {
> +		compatible = "onnn,pca9654";
> +		reg = <0x27>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		vin0_adv7612_en {
> +                       gpio-hog;
> +                       gpios = <0x3 0x0>;
> +                       output-low;
> +                       line-name = "VIN0_ADV7612_ENn";
> +               };
> +	};
> +
> +	dmi-decoder@4c {
> +		compatible = "adi,adv7612";
> +		reg = <0x4c>, <0x50>, <0x52>, <0x54>, <0x56>, <0x58>;
> +		reg-names = "main", "afe", "rep", "edid", "hdmi", "cp";
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
> +		default-input = <0>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				adv7612_in: endpoint {
> +					remote-endpoint = <&hdmi_in_con2>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +
> +				adv7612_out: endpoint {
> +					remote-endpoint = <&vin0_in>;
> +				};
> +			};
> +		};
> +	};
> +
> +	adv7482_70: video-receiver@70 {
> +		compatible = "adi,adv7482";
> +		reg = <0x70 0x71 0x72 0x73 0x74 0x75
> +		       0x60 0x61 0x62 0x63 0x64 0x65>;
> +		reg-names = "main", "dpll", "cp", "hdmi", "edid", "repeater",
> +			    "infoframe", "cbus", "cec", "sdp", "txa", "txb" ;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <03 IRQ_TYPE_LEVEL_LOW>, <04 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names = "intrq1", "intrq2";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@7 {
> +				reg = <7>;
> +
> +				adv7482_ain7: endpoint {
> +					remote-endpoint = <&cvbs_con>;
> +				};
> +			};
> +
> +			port@8 {
> +				reg = <8>;
> +
> +				adv7482_hdmi: endpoint {
> +					remote-endpoint = <&hdmi_in_con>;
> +				};
> +			};
> +
> +			port@a {
> +				reg = <10>;
> +
> +				adv7482_txa: endpoint {
> +					clock-lanes = <0>;
> +					data-lanes = <1 2 3 4>;
> +					remote-endpoint = <&csi40_in>;
> +				};
> +			};
> +		};
> +	};
> +
> +};
> +
> +&csi40 {
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +
> +			csi40_in: endpoint {
> +				clock-lanes = <0>;
> +				data-lanes = <1 2 3 4>;
> +				remote-endpoint = <&adv7482_txa>;
> +			};
> +		};
> +	};
> +};
> +
> +&pfc {
> +	vin0_pins_parallel: vin0 {
> +		groups = "vin0_data12", "vin0_sync", "vin0_clk", "vin0_clkenb";
> +		function = "vin0";
> +	};
> +};
> +
> +&vin0 {
> +	status = "okay";
> +
> +	pinctrl-0 = <&vin0_pins_parallel>;
> +	pinctrl-names = "default";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +
> +			vin0_in: endpoint {
> +				pclk-sample = <0>;
> +				hsync-active = <0>;
> +				vsync-active = <0>;
> +				remote-endpoint = <&adv7612_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&vin1 {
> +	status = "okay";
> +};
> +
> +&vin2 {
> +	status = "okay";
> +};
> +
> +&vin3 {
> +	status = "okay";
> +};
> -- 
> 2.43.0
> 

-- 
Kind Regards,
Niklas Söderlund

