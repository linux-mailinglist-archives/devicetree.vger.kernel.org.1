Return-Path: <devicetree+bounces-146072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F81A332EB
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5D37188997E
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0945A2036E2;
	Wed, 12 Feb 2025 22:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HlZxvxVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AC61FBC9C
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739400902; cv=none; b=R1aABvTNyD2T54u3pEEIkMd/zvdNZhGsydY7einLVl9/kEBdA5EC/U7idOUGG9wEp+V+TtTAWJS7XdM4GHtHpy6tVdP0zM0ymeRMjrMDDJgJyejvoMcSldcAQJFXl+cDbYx/NN3GZLAHfEg7zLA7Z4VKh7iRUAGViewQe5xxPT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739400902; c=relaxed/simple;
	bh=ylHhigHsZGkXHiaFw8MFBO09IlCFkuFyTs7XnHAruDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IFtbH40MVQqxtbQk6MTJhudevWu5xB+8LDkUbgp8NwQ21bD2tu2jSciCVI5ES6r0WthFBr4jL/E9G/YZPQMru9EbFJczvAsZz17G/K3BAM0zgnmtov3Eb8yP3RAaVIFwXtK/YajubILXS8uHy6LBFJb/bu8UwtsfswYPGC/7tmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HlZxvxVh; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7c05c30e0aaso23839485a.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739400900; x=1740005700; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V6HQFoAKtM4Eig1pjdtVV39897nG8Lrdk04nnScsT/g=;
        b=HlZxvxVhqGZ07dnRyq2OukKY2s9VhoCD0tMGr5cj94ZpoNX0K1Tmrn85OrGP8K1CG9
         b/3fy/5wuW0stfecOeL+S+no0QS5xiskWHJ2pgJ1BT6kGZak99EYtvw9qYdqwrknVNUK
         zVBYAeEkgRUpa2pA2Pq1ep1RUfmpaIU0ITVF6KKws+aLJ3L9U1EtRIfIi2rbqUUdiN7K
         SrMwwiG8HsiiXEy6IFUvMh+M91in9rRy/UPq1znFr7wVJsadV6b1b3InPD+OJwZTn/SY
         RXHd9mo8yMR6KtMJXScrDrUk3TJkzfQm7nx/dTHqCJ6pS4kWJXg/LYiOvC5cz2aeimzn
         ZQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739400900; x=1740005700;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V6HQFoAKtM4Eig1pjdtVV39897nG8Lrdk04nnScsT/g=;
        b=rJxPskpXRKyGffpUU5Wx/fYVGoIkw0BPk/t2WhNTzcym4miFCqaTha3aVBcTx4+ogl
         sjs+gJ7D7FigfNnlmmj1FmTKEaSkSgORreW6IYjHNOnvfaXt48+tIkHuRQtj0XpdVge7
         0gBwLmsznf+k/wpwIz167KPWEz6yP0mL8fVM2khvV3c/ySWr7y6WYAkN7dgwStzkHGb4
         wjiEksm91GhpXZryCsuTHTGrZcc0Yx18AoQwIfRFVPMuzfackb5bzi+B3qkIMsqOoaIL
         0FENzAzW9yC8ft/r76Jhl3P8cpBjH8r+i6Y/VCtc8JvrpbuWdATIGPxE4HN+dSKIN2qO
         SMkA==
X-Forwarded-Encrypted: i=1; AJvYcCXx2/YXn+r0MSgbVts2CSniZ1V+iNyVnfRUv4VprwO6UjlLHQy6eMzkONGCcQKT7ugaBG2tXq7IiwOG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3fz5bYCJExXDidIzEeeF0ewGuDmQPOhRJCJRxGHRppjjFUs+M
	/1yrrAb3I+a3LVpyugM1AHxcxBnjsSUGF/YmIxTvViQGTGnINT9r
X-Gm-Gg: ASbGncu1huSFeEacmEcA0EULkHtBtxH+jkxw2PQ4FpaLh+3N8XL/7mCJIfEZISvV4MN
	fXCLi6+oOBCQ54W1OfbtujBjO2AS0wVuxzAqlU4owkjlkbtMxzygEoO/odfDErexRyjJoNRhxL/
	iIO7G8EEbFknHlvCDOBtMsSl/xMx7K+1SFQI1OltjzEf8LTFZWnikxjze2muXHjOQiQsy6uEC1i
	sKVzd/n4us7fIfV8VGVUyokgsIx6X6R13idk5FIicTqqtc0HEsxpBElzPARAqw9IzE=
X-Google-Smtp-Source: AGHT+IHCyAPxx2twp+cdL0i9qawY2rWtBFMwU6iMbJ7fd7ZqtRa9MEtabZxbz+dLloUrNoDmSclwAg==
X-Received: by 2002:a05:620a:288b:b0:7b6:dd32:ec99 with SMTP id af79cd13be357-7c06fc552a5mr747104485a.5.1739400899012;
        Wed, 12 Feb 2025 14:54:59 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-7c05cb5725bsm531437085a.47.2025.02.12.14.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 14:54:58 -0800 (PST)
Date: Thu, 13 Feb 2025 06:54:51 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Haylen Chu <heylenay@outlook.com>, linux-arm-kernel@lists.infradead.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Chao Wei <chao.wei@sophgo.com>
Subject: Re: [PATCH v3 1/7] riscv: dts: sophgo: cv18xx: Move RiscV-specific
 part into SoCs' .dtsi files
Message-ID: <x4zncooa3lmyf2bikowjw7oabz66dhhbxl44cmujzzkwaslcl5@tj3l2u7e4akx>
References: <20250212224347.1767819-1-alexander.sverdlin@gmail.com>
 <20250212224347.1767819-2-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212224347.1767819-2-alexander.sverdlin@gmail.com>

On Wed, Feb 12, 2025 at 11:43:33PM +0100, Alexander Sverdlin wrote:
> Make the peripheral device tree re-usable on ARM64 platform by moving CPU
> core and interrupt controllers' parts into new cv18xx-cpu.dtsi and
> cv18xx-intc.dtsi.
> 
> Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nubering
> into "plic" interrupt-controller numbering.
> 
> On RiscV side this patch has been dtc-compile-tested only. IRQ numbers
> substitution with SOC_PERIPHERAL_IRQ() has been scripted in vim.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
> Changelog:
> v3:
> - &cpus node has been moved into cv18xx-cpu.dtsi, &plic and &clint nodes
> were moved into cv18xx-intc.dtsi to reduce code duplication;
> v2:
> - instead of carving out peripherals' part, carve out ARCH-specifics (CPU
> core, interrupt controllers) and spread them among 3 SoC .dtsi files which
> included cv18xx.dtsi;
> - define a label for the "soc" node and use it in the newly introduced DTs;
> 
>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi     | 28 ++++---
>  arch/riscv/boot/dts/sophgo/cv1812h.dtsi     | 28 ++++---
>  arch/riscv/boot/dts/sophgo/cv181x.dtsi      |  2 +-
>  arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi  | 36 ++++++++
>  arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi | 23 ++++++
>  arch/riscv/boot/dts/sophgo/cv18xx.dtsi      | 91 ++++++---------------
>  arch/riscv/boot/dts/sophgo/sg2002.dtsi      | 34 ++++----
>  7 files changed, 137 insertions(+), 105 deletions(-)
>  create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
>  create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi
> 
> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> index aa1f5df100f0..9fb7dd2dab18 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> @@ -3,8 +3,12 @@
>   * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
>   */
>  
> +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> +
>  #include <dt-bindings/pinctrl/pinctrl-cv1800b.h>
> +#include "cv18xx-cpu.dtsi"
>  #include "cv18xx.dtsi"
> +#include "cv18xx-intc.dtsi"
>  
>  / {
>  	compatible = "sophgo,cv1800b";
> @@ -13,17 +17,23 @@ memory@80000000 {
>  		device_type = "memory";
>  		reg = <0x80000000 0x4000000>;
>  	};
> +};
> +

> +&soc {
> +	dma-noncoherent;
>  
> -	soc {
> -		pinctrl: pinctrl@3001000 {
> -			compatible = "sophgo,cv1800b-pinctrl";
> -			reg = <0x03001000 0x1000>,
> -			      <0x05027000 0x1000>;
> -			reg-names = "sys", "rtc";
> -		};
> +	pinctrl: pinctrl@3001000 {
> +		compatible = "sophgo,cv1800b-pinctrl";
> +		reg = <0x03001000 0x1000>,
> +		      <0x05027000 0x1000>;
> +		reg-names = "sys", "rtc";
>  	};
>  };
>  

The origianl /soc path can be used to override things, 
why change it to the reference archor? I see no change
for it.

> +&clk {
> +	compatible = "sophgo,cv1800-clk";
> +};
> +
>  &plic {
>  	compatible = "sophgo,cv1800b-plic", "thead,c900-plic";
>  };
> @@ -31,7 +41,3 @@ &plic {
>  &clint {
>  	compatible = "sophgo,cv1800b-clint", "thead,c900-clint";
>  };
> -
> -&clk {
> -	compatible = "sophgo,cv1800-clk";
> -};
> diff --git a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> index 8a1b95c5116b..f23c4dd6687d 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> @@ -3,10 +3,14 @@
>   * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
>   */
>  
> +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> +
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/pinctrl-cv1812h.h>
> +#include "cv18xx-cpu.dtsi"
>  #include "cv18xx.dtsi"
>  #include "cv181x.dtsi"
> +#include "cv18xx-intc.dtsi"
>  
>  / {
>  	compatible = "sophgo,cv1812h";
> @@ -15,17 +19,23 @@ memory@80000000 {
>  		device_type = "memory";
>  		reg = <0x80000000 0x10000000>;
>  	};
> +};
> +
> +&soc {

> +	dma-noncoherent;

I think this can be moved into cv18xx-cpu.dtsi file, and let
all SoCs share it.

>  
> -	soc {
> -		pinctrl: pinctrl@3001000 {
> -			compatible = "sophgo,cv1812h-pinctrl";
> -			reg = <0x03001000 0x1000>,
> -			      <0x05027000 0x1000>;
> -			reg-names = "sys", "rtc";
> -		};
> +	pinctrl: pinctrl@3001000 {
> +		compatible = "sophgo,cv1812h-pinctrl";
> +		reg = <0x03001000 0x1000>,
> +		      <0x05027000 0x1000>;
> +		reg-names = "sys", "rtc";
>  	};
>  };
>  
> +&clk {
> +	compatible = "sophgo,cv1810-clk";
> +};
> +
>  &plic {
>  	compatible = "sophgo,cv1812h-plic", "thead,c900-plic";
>  };
> @@ -33,7 +43,3 @@ &plic {
>  &clint {
>  	compatible = "sophgo,cv1812h-clint", "thead,c900-clint";
>  };
> -
> -&clk {
> -	compatible = "sophgo,cv1810-clk";
> -};
>
> [...]
>

> diff --git a/arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi
> new file mode 100644
> index 000000000000..90817993a326
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> + * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> + */
> +
> +&soc {
> +	interrupt-parent = <&plic>;
> +
> +	plic: interrupt-controller@70000000 {
> +		reg = <0x70000000 0x4000000>;
> +		interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> +		interrupt-controller;
> +		#address-cells = <0>;
> +		#interrupt-cells = <2>;
> +		riscv,ndev = <101>;
> +	};
> +
> +	clint: timer@74000000 {
> +		reg = <0x74000000 0x10000>;
> +		interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
> +	};
> +};


I think this file can be merged in to cv18xx-cpu.dtsi.
clint and plic is more like a core specific device.

Regards,
Inochi


