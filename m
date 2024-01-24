Return-Path: <devicetree+bounces-34714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E63E983AB32
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 14:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96F7F293D06
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C9A77F26;
	Wed, 24 Jan 2024 13:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1ChIg2SQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E32604B2
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 13:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706104502; cv=none; b=VKKerYBw6OKf+eU2aWBgv2SGb+syJYo5W0WQowAPPicVkH00IHnwBK7G3Cuwgdip/1PDNX+pw/7cLmepmhJA8qNHWHuaBbSb93rmMrROQ6YqtOO2KCEoBYuhpOfls0YtVxItLTyEp9AFLC8ku9orvS0LXYi9yQxt1xJpaPirxs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706104502; c=relaxed/simple;
	bh=ZPj+aSm74ClpPYNamv7tDbPAtF9PV6hsahh26FwF26A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gIcCtvCeKycKtpibc5IFL4GZ+R+/Lj+LMo3lNh7QIbQaBKBerU03drLeAgj8K6lRl1WtXFfN3aDikZHoTc1YDyHhyZGSYftd0ck9eW8Zol6DWIM5ZV4i7psbl9FwfPqCkIfhaIT5WTn9ssDR8vicEInxUKhOlj6bWb4CXVOBt5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1ChIg2SQ; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-55cd798b394so550836a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 05:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1706104498; x=1706709298; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=arcFKn7pa81rkXcV2PahmJ9wcYnK9Y/sjzwwrGnciYA=;
        b=1ChIg2SQ8d46PrAkbRZhR6aFeVF0rc8jDgmPLqi9EgNjzlLLjBPddGOwivAkavE3wa
         CUxAKoHDUxSMNI/qhzcnMvzK+3SQu5+Rue/OnmaDkmwWkgsOt7zkmpExPl7GsVd8ZBdk
         ORsBcHsyCmbdZAxrm7E68LOtPdhgQ8156RYvHHjdxpf3BDTHAb+nv76fGW563H0AqJcj
         0h4HCzBbv3X+WRbkf9lsgj56OV+IkT3bDlryzsjgrqbYBJwN8ky1Oyje8DdoCz356JWA
         NYbFBh1NJlG/mZ7azd43pbbI7+qM46YxkIa0OjmPLHYDXa5Twt7UXn4g02ixlOLQI693
         C1ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706104498; x=1706709298;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=arcFKn7pa81rkXcV2PahmJ9wcYnK9Y/sjzwwrGnciYA=;
        b=RQBhXcDXtilGLqxDF6IT1c3uXa/D7ugENl+ra0EtYNEQM7n/ZU/J6vyG1pkuEemlwf
         xAMrqJSE7GhM6gV3dhySlFk4nswPELvus4vWyjGBXr51taZYUfCCFfAtpVy6rwp/Lm4m
         9XusCA+qTGJ+tTyBZLTa7Mwfr5RbGQHxcT1js5KOWZ7wAzc4ROAOX1j0faVclrdQMmNQ
         vDSK/pdEyL87dB+2WRKY1CafgSZKSM9LjwyeQoXSw5ZtJ1mUWvNy3WXNU7g3ny7vlhyt
         e1JVAHYl5PXhYsU4NjMJCCPSpSx5aLxA0jcnpK5QChDBeCb8cfZ+gs4nEf45JSuO7zhu
         S4Og==
X-Gm-Message-State: AOJu0Yxhl47M1BabtLwkA8LzTn/KIUnK/znsJJkYaMPzrQpqtBvtsmAt
	Sgyxud94YmfIJ34KY+g6VgdEPQE0k1LanfwQUI1FrHukEsgEMAMFF/qwFmnB+lo=
X-Google-Smtp-Source: AGHT+IER83qUnDQ0/5odMTowMrN8PYTDbFq6HycYcZ+oqxgHoyzBNOxOtPvTlZ2bOM5iHOj5YOfM5g==
X-Received: by 2002:a17:907:c783:b0:a31:480d:8abe with SMTP id tz3-20020a170907c78300b00a31480d8abemr278585ejc.67.1706104498406;
        Wed, 24 Jan 2024 05:54:58 -0800 (PST)
Received: from blmsp ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id w25-20020a17090633d900b00a28479fcb8esm15508771eja.103.2024.01.24.05.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 05:54:57 -0800 (PST)
Date: Wed, 24 Jan 2024 14:54:57 +0100
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Tony Lindgren <tony@atomide.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <q54c4f3l2ddvnnwzigz2hebru27nhevf4oij6g2nqv6yyijigr@nuvwukfwpsjh>
References: <20231219072503.12427-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231219072503.12427-1-tony@atomide.com>

Hi Tony,

On Tue, Dec 19, 2023 at 09:25:01AM +0200, Tony Lindgren wrote:
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
> Reviewed-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

I tested this patch on am62-lp-sk and required this additional property:

  ti,no-reset-on-init;

I am not sure at the moment why a reset doesn't work. But with the given
property (so without reset) the wakeup on wkup_uart0 works as expected.

So if you include the above property:

Tested-by: Markus Schneider-Pargmann <msp@baylibre.com>

Best,
Markus

> ---
> 
> Changes since v3:
> 
> - Use the first reg for the target module node name to avoid a
>   make W=1 dtbs warning as noted by Nishanth
> 
> Changes since v2:
> 
> - Fix node name for 8250 IP, it's at offset 0 from the target module
> 
> - Added Kevin's Reviewed-by from v2 as the node name change is mostly
>   cosmetic
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
> +	target-module@2b300050 {
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
> -		clock-names = "fclk";
> -		status = "disabled";
> +		clock-names = "fck";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0 0x2b300000 0x100000>;
> +
> +		wkup_uart0: serial@0 {
> +			compatible = "ti,am64-uart", "ti,am654-uart";
> +			reg = <0 0x100>;
> +			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
>  	};
>  
>  	wkup_i2c0: i2c@2b200000 {
> -- 
> 2.43.0
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

