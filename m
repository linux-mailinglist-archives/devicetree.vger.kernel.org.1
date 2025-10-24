Return-Path: <devicetree+bounces-230776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD99C058FE
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:25:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3ABA14E77B1
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EC030F814;
	Fri, 24 Oct 2025 10:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="brIU8JfA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2163230171F
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761301516; cv=none; b=qq2XUpn6w8f7SgXVfctCxi/Qqj4RJ7eYYJUoiwvCy6txgevJEQ08RWpbA0SjqeNDxZRvbWQoZT1fdWpwUDr0ld0o7G23XyyicBczIbLnxqN8NDGu9lxQ0MC9y9o+6OWzG/ANc53CfmRxfhfQ0Qliz21lXyUwqYVwmM8nrCG2vTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761301516; c=relaxed/simple;
	bh=AAPNzwvfIyboDX9+wzPPjQ4GD1ao/bEZQIRpSO49rII=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fqpuavbVBCgSCucBSE8+V8l/y09kluytu63uf4jxtzCGIm8zO8IdrpFbTwTJYSxHOnkGEhreTldu3faDtfuWYz4NHJY2vEYLHzc6kDXR5IhsLnP98STDzKG6+oHGHNjFyIM9fvTrS6OptX0TDn+armPDktrDKzuqkkUfpoeAorY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=brIU8JfA; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-63c3d7e2217so3684073a12.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761301512; x=1761906312; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X6t96NTq7vBJvnV/QSRlBuWO2dHEvhujwQJZIc/2QTo=;
        b=brIU8JfAvAkH7F9h9sStMVX8CrCbbL0lOm98vXIUcYFX5M9pd8taVw5KTP2Tuize3C
         9oxCn/pN2Clgg6NUaBN+ZtmZvoSWZKaR/gU5Gahq/WGMIkAkYdJ33pEb8TIpM81wGmgi
         n5UGOc9gFOPKBJv6i3dCXYzeNFPxqnWnUOVog0Ck6sHsN1IamX+Rk3UApJawHSj1YTiD
         5FUs3kdsutxOoxtH/6W7C1rQGGpsv0Hsk4dJDDbWZgsUgSejGSwOD/4PPCHDrA6XMCrB
         QuRcnPfwVWN6i9jDo2tb9glBE02QYb1cvmUeU+YwpSEPOIgfWdoRsboUyiiO4bhTVbm1
         56dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761301512; x=1761906312;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X6t96NTq7vBJvnV/QSRlBuWO2dHEvhujwQJZIc/2QTo=;
        b=liR/A3Q5Dpkvm9G7LxqrWKc5WGK2PTg7eNfbyZeGp13zhFAkmrVHRuRB+psUOO3XRB
         FSj9BzIlZi1iKhwMmjhGt9yfYgfDaMh3WEQXbuUBO0f74E3nGYlGQAqvJMGMg0UeYJhi
         jsuYCeE5+vYhyRTpoKFTRr8Br4hR04kPMQuXs+UoL7VzVWaHmHBTkAujeri19gBGX3we
         FuO6eR5SICOLBXiZtULC8kfis6DY86Yv9V/8dlOqTyw0qqzJoeLcM+aNeoMY2Thtm307
         ByDR6tltJlc/wKq3r6aRfCxIrSx73dkKi2MpGXLQRqctK01APJM0mmiemp4l65uwADTB
         CuaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxjJkDptMPWvV6Z57jhRU52nxAHdVIEFUxAfw9oweuZDqP3HxwNGBXBTFBkSmse+YkThbkvo21dU/N@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/TdO+07tss9xe368yx2pHJ4U3hfw7WI91Im256t9FwYAhlLcW
	BpdHfed0GvDCLllmM6NDxRnwE5xFPGGV3H9tDi9xjJlm/Jz1gXU+bEAg
X-Gm-Gg: ASbGnctmx/OEduDoA/H1D3dJ3qhausyaORlOeyISxvaOpJwvCf2C1JqVew9EbAoBLJm
	mrgvUzsAgel+mInCpLqYkGeOZugQlLfV4FE5z66aSMCPpE7LgwyNo25VJK0zRBGhvaTX0yTvYaD
	rD+F8EarOLK0aBtaggpiX8oHBD4HRr5QBEvtmnu4uvfqPA2qwv8yM6HL9eEBq4f5sHGnlHc6fXD
	VOK7JoO4VvXiwwRNdeY2ZZpemlhE90ao+OmoDkl46v7rgVVvw3iFrWK30Kd3nRuQYquarD0uQmp
	+iNd+Xg+u0goNSaJVhWQJTiDdwTeBi15ahPOuorgO7a2YdOUlP9N0HWo8gWtGytJ4cAVEHC3978
	irV/3O8ffl0a9wT+9h7zMWS6/dix2XTk9S7rfD/Vy1Tst7dXqer1yocjgKMYDzbugFhC2slZE6L
	FDO7kGvfuHp1tmWklWS+Oy9kB2cZPYbW75WthLLlvx8hekiHih2aAy4ngckQ9hMrqjZSmW6Ma1P
	NvzyfBGuA6X
X-Google-Smtp-Source: AGHT+IHTHgs0pyWlo13qBQS26Rgr3vhTfFmMcTIQ+wdzXkyhuEnAqbnnt4Ad2dnb5X5EuPrAo4MDig==
X-Received: by 2002:a05:6402:2708:b0:634:5db4:8fab with SMTP id 4fb4d7f45d1cf-63e6008435cmr1888460a12.6.1761301511996;
        Fri, 24 Oct 2025 03:25:11 -0700 (PDT)
Received: from alb3rt0-ThinkPad-P15-Gen-1 (host-81-118-90-13.business.telecomitalia.it. [81.118.90.13])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3f324275sm3877742a12.33.2025.10.24.03.25.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 03:25:11 -0700 (PDT)
Date: Fri, 24 Oct 2025 12:25:08 +0200
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: Primoz Fiser <primoz.fiser@norik.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH 2/2] arm64: dts: freescale: imx93-phyboard-nash: Add
 pwm-fan overlay
Message-ID: <aPtUBGowNkBB5DRR@alb3rt0-ThinkPad-P15-Gen-1>
References: <20251007084028.1125185-1-primoz.fiser@norik.com>
 <20251007084028.1125185-2-primoz.fiser@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251007084028.1125185-2-primoz.fiser@norik.com>

On Tue, Oct 07, 2025 at 10:40:28AM +0200, Primoz Fiser wrote:
> Add overlay to support PWM fan on the phyBOARD-Nash-i.MX93 board. Fan
> can be connected to the FAN (X48) connector on the board and will be
> controlled according to the following CPU temperature trips table:
> 
>  - bellow 50 degrees - fan is off (<1% duty cycle)
>  - between 50 and 58 degrees - low fan speed (~35% duty cycle)
>  - between 58 and 65 degrees - fan medium speed (~60% duty cycle)
>  - above 65 degrees - fan at full speed (>99% duty cycle)
> 
> The output frequency of PWM signal is set to 25 kHz.
> 
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |  2 +
>  .../imx93-phyboard-nash-pwm-fan.dtso          | 75 +++++++++++++++++++
>  2 files changed, 77 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx93-phyboard-nash-pwm-fan.dtso
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index c72a6fdc5412..9807eb878916 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -358,11 +358,13 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin.dtb
>  
>  imx93-phyboard-nash-jtag-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-jtag.dtbo
>  imx93-phyboard-nash-peb-wlbt-07-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-peb-wlbt-07.dtbo
> +imx93-phyboard-nash-pwm-fan-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-nash-pwm-fan.dtbo
>  imx93-phyboard-segin-peb-eval-01-dtbs += imx93-phyboard-segin.dtb imx93-phyboard-segin-peb-eval-01.dtbo
>  imx93-phyboard-segin-peb-wlbt-05-dtbs += imx93-phyboard-segin.dtb imx93-phyboard-segin-peb-wlbt-05.dtbo
>  imx93-phycore-rpmsg-dtbs += imx93-phyboard-nash.dtb imx93-phyboard-segin.dtb imx93-phycore-rpmsg.dtbo
>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash-jtag.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash-peb-wlbt-07.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash-pwm-fan.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin-peb-eval-01.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin-peb-wlbt-05.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-phycore-rpmsg.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-pwm-fan.dtso b/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-pwm-fan.dtso
> new file mode 100644
> index 000000000000..d1adf04d56d9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx93-phyboard-nash-pwm-fan.dtso
> @@ -0,0 +1,75 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2025 PHYTEC Messtechnik GmbH
> + * Author: Primoz Fiser <primoz.fiser@norik.com>
> + */
> +
> +#include <dt-bindings/pwm/pwm.h>
> +#include "imx93-pinfunc.h"
> +
> +/dts-v1/;
> +/plugin/;
> +
> +&{/} {
> +	fan0: pwm-fan {
> +		compatible = "pwm-fan";
> +		#cooling-cells = <2>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_fan>;
> +		cooling-levels = <1 90 150 200 255>;
> +		pwms = <&tpm6 1 40000 PWM_POLARITY_INVERTED>;
> +	};
> +
> +	thermal-zones {
> +		cpu-thermal {
> +			trips {
> +				cpu_low: cpu-low {
> +					hysteresis = <3000>;
> +					temperature = <50000>;
> +					type = "active";
> +				};
> +
> +				cpu_med: cpu-med {
> +					hysteresis = <3000>;
> +					temperature = <58000>;
> +					type = "active";
> +				};
> +
> +				cpu_high: cpu-high {
> +					hysteresis = <3000>;
> +					temperature = <65000>;
> +					type = "active";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map1 {
> +					cooling-device = <&fan0 1 1>;
> +					trip = <&cpu_low>;
> +				};
> +
> +				map2 {
> +					cooling-device = <&fan0 2 2>;
> +					trip = <&cpu_med>;
> +				};
> +
> +				map3 {
> +					cooling-device = <&fan0 4 4>;
> +					trip = <&cpu_high>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&tpm6 {
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_fan: fangrp {
> +		fsl,pins = <
> +			MX93_PAD_GPIO_IO23__TPM6_CH1	0x31e
> +		>;
> +	};
> +};
> -- 
> 2.34.1
> 
> 
Reviewed-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>

