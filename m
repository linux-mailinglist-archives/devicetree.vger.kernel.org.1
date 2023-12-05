Return-Path: <devicetree+bounces-21955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0FB805D09
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:14:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D1481C21049
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:14:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829205F1F4;
	Tue,  5 Dec 2023 18:14:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E5FB0
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 10:13:59 -0800 (PST)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6ce26a03d9eso2246308b3a.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 10:13:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701800039; x=1702404839;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f6O3k1fVwKBlR9l5h/5iOcOYL+vrfkO7m0bwm2f3PUY=;
        b=MLgDGh1dQmCGJS6ghAxXQHY7RAefNdkH7PBUQef/uhp3DeIWz3478f/hU5t3/Om6Iy
         eBcREPqK2IfCQXrd+P4+XLQQrpYwEjhAJr2+G1T9PVjcHEucp/jpF8qpsHSxa9fXfYH3
         UyMUooosTjEA6ZNDMiadAJCCylBIeQYd/+qLIxPymMMtWwMC9bGUv83p60YRyC4pe2pm
         rjyULOI68cuHc9sKkYuJcYPwgm50fyM4Ito9CQKLZr+i3lWyNZkco/KrIFRgN4CGjLVW
         fQz/VIM/tZiNRIQMk2fpq/U8rpnKUAqsRwwqnPj2HeFHiPK254l+t4IK5Hr1iy1mp7JN
         b+3w==
X-Gm-Message-State: AOJu0Yyj2jUSonu4fWB7HZ1fMvahsocbd4U0y+nNFqwJn/Tb2wuRPTqZ
	ko739pZPnZdT727IzrUn3SzsXA==
X-Google-Smtp-Source: AGHT+IFGoWu4itf8bKlSc1tdncXMBMxZOM89k8FZfHLXfBhCe0/dkLvWZKn7t/8Qk11x0KbdHGPe7g==
X-Received: by 2002:a05:6a20:840d:b0:18d:1e16:8017 with SMTP id c13-20020a056a20840d00b0018d1e168017mr14397847pzd.8.1701800038431;
        Tue, 05 Dec 2023 10:13:58 -0800 (PST)
Received: from localhost (75-172-121-199.tukw.qwest.net. [75.172.121.199])
        by smtp.gmail.com with ESMTPSA id bm10-20020a056a00320a00b006cbafd6996csm9733230pfb.123.2023.12.05.10.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 10:13:57 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Dhruva
 Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure
 ti-sysc for wkup_uart0
In-Reply-To: <20231114073209.40756-1-tony@atomide.com>
References: <20231114073209.40756-1-tony@atomide.com>
Date: Tue, 05 Dec 2023 10:13:57 -0800
Message-ID: <7h5y1c7c0q.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Tony Lindgren <tony@atomide.com> writes:

> The devices in the wkup domain are capable of waking up the system from
> suspend. We can configure the wkup domain devices in a generic way using
> the ti-sysc interconnect target module driver like we have done with the
> earlier TI SoCs.
>
> As ti-sysc manages the SYSCONFIG related registers independent of the
> child hardware device, the wake-up configuration is also set even if
> wkup_uart0 is reserved by sysfw.
>
> The wkup_uart0 device has interconnect target module register mapping like
> dra7 wkup uart. There is a 1 MB interconnect target range with one uart IP
> block in the target module. The power domain and clock affects the whole
> interconnect target module.
>
> Note we change the functional clock name to follow the ti-sysc binding
> and use "fck" instead of "fclk".
>
> Tested-by: Dhruva Gole <d-gole@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>
> Changes since v1:
>
> - Added Tested-by from Dhruva
>
> ---
>  arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi | 33 ++++++++++++++++++----
>  1 file changed, 27 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> @@ -5,6 +5,8 @@
>   * Copyright (C) 2020-2022 Texas Instruments Incorporated - https://www.ti.com/
>   */
>  
> +#include <dt-bindings/bus/ti-sysc.h>
> +
>  &cbass_wakeup {
>  	wkup_conf: syscon@43000000 {
>  		bootph-all;
> @@ -21,14 +23,33 @@ chipid: chipid@14 {
>  		};
>  	};
>  
> -	wkup_uart0: serial@2b300000 {
> -		compatible = "ti,am64-uart", "ti,am654-uart";
> -		reg = <0x00 0x2b300000 0x00 0x100>;
> -		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> +	target-module@2b300000 {
> +		compatible = "ti,sysc-omap2", "ti,sysc";
> +		reg = <0 0x2b300050 0 0x4>,
> +		      <0 0x2b300054 0 0x4>,
> +		      <0 0x2b300058 0 0x4>;
> +		reg-names = "rev", "sysc", "syss";
> +		ti,sysc-mask = <(SYSC_OMAP2_ENAWAKEUP |
> +				 SYSC_OMAP2_SOFTRESET |
> +				 SYSC_OMAP2_AUTOIDLE)>;
> +		ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +				<SYSC_IDLE_NO>,
> +				<SYSC_IDLE_SMART>,
> +				<SYSC_IDLE_SMART_WKUP>;
> +		ti,syss-mask = <1>;
>  		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
>  		clocks = <&k3_clks 114 0>;

I'm a little confused why these power-domain and clocks stay here and
are not moved under the wkup_uart0 node... 

> -		clock-names = "fclk";
> -		status = "disabled";
> +		clock-names = "fck";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0 0x2b300000 0x100000>;
> +
> +		wkup_uart0: serial@2b300000 {
> +			compatible = "ti,am64-uart", "ti,am654-uart";
> +			reg = <0 0x100>;
> +			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";

...here.

The SCI device ID 114 is specifically for wkup_uart0[1], so it seems to
me those should be in the wkup_uart0 node.

Kevin

[1] https://software-dl.ti.com/tisci/esd/latest/5_soc_doc/am62x/devices.html

