Return-Path: <devicetree+bounces-145560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBCAA31A84
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 01:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BC1E3A3307
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 00:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A2B27181C;
	Wed, 12 Feb 2025 00:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L7vO9r8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EC3271807
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 00:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739320304; cv=none; b=kX6NQhl1RzZhl3oTFlvpTxOjqfzJroqUMM3QwfHbnWrW+opUCoPTF4OC/OkY2ZoOduorBOJpUJfh1MYKAot4psMqXmy5ca3nSI+Nkuti7Thq7z+/rwFI9lMRDH5XhXQpkgxfLJ0+XKToYD/oUlHZV1FIINuWL3DmZsfARdcdlsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739320304; c=relaxed/simple;
	bh=ubFtGpaq/72G135xlH8QQOFZXzj6XHSpZfNjFOlimt0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rnac/DTU9M0COeWLgCV4YzvkEDX1gX/uo67LyEAsb8hmWYcmItbhJdMbd3M5t/vUcSyLm5932ziNXNaLP2N0kQoqx0aYqGEGUAH2NYF3NQmNpV8cYbfBWzV4+hvTPaQKdleyqT3UvmuAQ/lS8iQQUKit3imQrKsZ7j+TqHNYziQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L7vO9r8l; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7c05a0a4872so392008285a.3
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 16:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739320300; x=1739925100; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Mvzvj3+uBjZ2P6EYQWNLPK6UKaBiFgtR0j4cfu3WJTQ=;
        b=L7vO9r8lU7GVAnHDvwy6a1QMe+dKSuUkKJ5bdtFHBPLQ1qeNjyP6jokCsV7PuEAWay
         TrFptRVx2mUAdzU6HrNIxkTkl280/T/FLuppPpqoXPjADkKmv1ZnULFBwk+F/1w+Z5wY
         ZbPfO5pT70GH/bzWwHxTxc0V0UNmS1Ia+HRamYGYB3DE4+kxSVLSuxThSx41kcQIXOoS
         Q+ZxPX4zRiZdvCuS1k3ndw9r3UMOYUPTrL5luHDLsps1PAJnWZZgVGYg1Vt715G+ei8L
         dt6wb/E7JaeTV9h4u9YhNelnLna2Pxp9VdS8raXiOP/2/wIAcS0UiLfEKzzhQNZLGX5F
         hz/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739320300; x=1739925100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mvzvj3+uBjZ2P6EYQWNLPK6UKaBiFgtR0j4cfu3WJTQ=;
        b=dAyMBP08w3t5LM5vv1E3bQ1nHyfvVNoN19fFIQSmWJLbzPiAM7uXLVXmVTSTy6DyAg
         wAPf+rgsAvYJ1+l38Gq4G4bGDkfu6sVJd+qD3giEpp7roqNkqdNL2HS4sk4/wPkr4qEP
         ZuKkMfVlEZCS2CyTxbuoZ24aXmc58Q+VvMrYPzwFOxPK6cbbGi3C2WNQrBdT54s0b/Tx
         xgRYzDNGI/E2SGoCLa5x/ZlsCIdZTIZmGrkm4516tvwWWFFyG5w/EEXMC5m8svGaEGHl
         ehc8zom4e+aTv1kbNmQpSjA1FxlJzH0b4G/s2X+I5fiaUA/RgHnnMKNrxHG+4shoTzIE
         Q0Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUtquR1WpsxOiWxSchwQVr5GnakLVyEdmrQh1ZmTSs1SvObFWVL3C45muqTEQliCSyC6YDxZG1Pofqq@vger.kernel.org
X-Gm-Message-State: AOJu0YzIsWgXwY4zoMvD9k+4GNvbUozk709On0MEmB7/lUVDavem8rtF
	iActZrySV2YWrdJfd8eATNhHcczV3k7CVHTNyw0S0sPkDJIfj5ru
X-Gm-Gg: ASbGncvThfXFGinvWBqQE/8sSUAdOzqcZWEpQBwjgSaoA4Ynkhfds119a9x2+WHT1d7
	+ZCp2driMLw60C848xfQhyNlt+byZHDBylF12pEI82dxpWq7cnoDpIZ3WiDPvg/Lxl/0RseC3mP
	mPoG23CnrlWCFXklQco5t8ioI+0r3vlEDVXoafeOHUsiYGLFRRbY6iTIMrimLJd9eeEiw1rhYEF
	V6h+YvPs4QinlZfKELBMmdX/Lwc730t/5VJm+V1trpXckM98IGbDFbLLJORgcCSmwo=
X-Google-Smtp-Source: AGHT+IF75ejZFbfqk8foSxt+7CSfMkjAVcQVx0BfgcCLGCCCi9HSZrbtSb2foVAqGkn8iXyNbfm/FA==
X-Received: by 2002:a05:620a:390f:b0:7bf:f916:faf3 with SMTP id af79cd13be357-7c06fc4dbdcmr203669585a.8.1739320299786;
        Tue, 11 Feb 2025 16:31:39 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-7c041e9f965sm746971285a.86.2025.02.11.16.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 16:31:38 -0800 (PST)
Date: Wed, 12 Feb 2025 08:31:32 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Haylen Chu <heylenay@outlook.com>, linux-arm-kernel@lists.infradead.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Chao Wei <chao.wei@sophgo.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Subject: Re: [PATCH v2 1/7] riscv: dts: sophgo: cv18xx: Move RiscV-specific
 part into SoCs' .dtsi files
Message-ID: <uvy62iqzul6kajzsmiaovdzogftcsc5b53cswkv4cbxh4w6som@32libbd7kffq>
References: <20250210220951.1248533-1-alexander.sverdlin@gmail.com>
 <20250210220951.1248533-2-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210220951.1248533-2-alexander.sverdlin@gmail.com>

On Mon, Feb 10, 2025 at 11:09:41PM +0100, Alexander Sverdlin wrote:
> Make the peripheral device tree re-usable on ARM64 platform by moving CPU
> core and interrupt controllers' parts into the respective per-SoC .dtsi
> files.
> 
> Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nubering
> into "plic" interrupt-controller numbering.
> 
> Have a nice refactoring side-effect that "plic" and "clint" "compatible"
> property is not specified outside of the corresponding device itself.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
> Changelog:
> v2:
> - instead of carving out peripherals' part, carve out ARCH-specifics (CPU
> core, interrupt controllers) and spread them among 3 SoC .dtsi files which
> included cv18xx.dtsi;
> - define a label for the "soc" node and use it in the newly introduced DTs;
> 
>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi    | 64 ++++++++++++---
>  arch/riscv/boot/dts/sophgo/cv1812h.dtsi    | 64 ++++++++++++---
>  arch/riscv/boot/dts/sophgo/cv181x.dtsi     |  2 +-
>  arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi | 57 ++++++++++++++
>  arch/riscv/boot/dts/sophgo/cv18xx.dtsi     | 91 ++++++----------------
>  arch/riscv/boot/dts/sophgo/sg2002.dtsi     | 64 ++++++++++++---
>  6 files changed, 240 insertions(+), 102 deletions(-)
>  create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
> 
> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> index aa1f5df100f0..eef2884b36f9 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> @@ -3,6 +3,8 @@
>   * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
>   */
>  
> +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> +
>  #include <dt-bindings/pinctrl/pinctrl-cv1800b.h>
>  #include "cv18xx.dtsi"
>  
> @@ -14,22 +16,62 @@ memory@80000000 {
>  		reg = <0x80000000 0x4000000>;
>  	};
>  

> -	soc {
> -		pinctrl: pinctrl@3001000 {
> -			compatible = "sophgo,cv1800b-pinctrl";
> -			reg = <0x03001000 0x1000>,
> -			      <0x05027000 0x1000>;
> -			reg-names = "sys", "rtc";


> +	cpus: cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		timebase-frequency = <25000000>;
> +
> +		cpu0: cpu@0 {
> +			compatible = "thead,c906", "riscv";
> +			device_type = "cpu";
> +			reg = <0>;
> +			d-cache-block-size = <64>;
> +			d-cache-sets = <512>;
> +			d-cache-size = <65536>;
> +			i-cache-block-size = <64>;
> +			i-cache-sets = <128>;
> +			i-cache-size = <32768>;
> +			mmu-type = "riscv,sv39";
> +			riscv,isa = "rv64imafdc";
> +			riscv,isa-base = "rv64i";
> +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> +					       "zifencei", "zihpm";
> +
> +			cpu0_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
>  		};
>  	};
>  };

Make all soc definition include the common cpu file. 
Not just copy it.

>  
> -&plic {
> -	compatible = "sophgo,cv1800b-plic", "thead,c900-plic";
> -};
> +&soc {
> +	interrupt-parent = <&plic>;
> +	dma-noncoherent;
>  
> -&clint {
> -	compatible = "sophgo,cv1800b-clint", "thead,c900-clint";
> +	pinctrl: pinctrl@3001000 {
> +		compatible = "sophgo,cv1800b-pinctrl";
> +		reg = <0x03001000 0x1000>,
> +		      <0x05027000 0x1000>;
> +		reg-names = "sys", "rtc";
> +	};
> +
> +	plic: interrupt-controller@70000000 {
> +		compatible = "sophgo,cv1800b-plic", "thead,c900-plic";
> +		reg = <0x70000000 0x4000000>;
> +		interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> +		interrupt-controller;
> +		#address-cells = <0>;
> +		#interrupt-cells = <2>;
> +		riscv,ndev = <101>;
> +	};
> +
> +	clint: timer@74000000 {
> +		compatible = "sophgo,cv1800b-clint", "thead,c900-clint";
> +		reg = <0x74000000 0x10000>;
> +		interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
> +	};
>  };
>  
>  &clk {
> diff --git a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> index 8a1b95c5116b..54f7e229bcd8 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> @@ -3,6 +3,8 @@
>   * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
>   */
>  
> +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> +
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/pinctrl-cv1812h.h>
>  #include "cv18xx.dtsi"
> @@ -16,22 +18,62 @@ memory@80000000 {
>  		reg = <0x80000000 0x10000000>;
>  	};
>  
> -	soc {
> -		pinctrl: pinctrl@3001000 {
> -			compatible = "sophgo,cv1812h-pinctrl";
> -			reg = <0x03001000 0x1000>,
> -			      <0x05027000 0x1000>;
> -			reg-names = "sys", "rtc";
> +	cpus: cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		timebase-frequency = <25000000>;
> +
> +		cpu0: cpu@0 {
> +			compatible = "thead,c906", "riscv";
> +			device_type = "cpu";
> +			reg = <0>;
> +			d-cache-block-size = <64>;
> +			d-cache-sets = <512>;
> +			d-cache-size = <65536>;
> +			i-cache-block-size = <64>;
> +			i-cache-sets = <128>;
> +			i-cache-size = <32768>;
> +			mmu-type = "riscv,sv39";
> +			riscv,isa = "rv64imafdc";
> +			riscv,isa-base = "rv64i";
> +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> +					       "zifencei", "zihpm";
> +
> +			cpu0_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
>  		};
>  	};
>  };
>  
> -&plic {
> -	compatible = "sophgo,cv1812h-plic", "thead,c900-plic";
> -};
> +&soc {
> +	interrupt-parent = <&plic>;
> +	dma-noncoherent;
>  
> -&clint {
> -	compatible = "sophgo,cv1812h-clint", "thead,c900-clint";
> +	pinctrl: pinctrl@3001000 {
> +		compatible = "sophgo,cv1812h-pinctrl";
> +		reg = <0x03001000 0x1000>,
> +		      <0x05027000 0x1000>;
> +		reg-names = "sys", "rtc";
> +	};
> +
> +	plic: interrupt-controller@70000000 {
> +		compatible = "sophgo,cv1812h-plic", "thead,c900-plic";
> +		reg = <0x70000000 0x4000000>;
> +		interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> +		interrupt-controller;
> +		#address-cells = <0>;
> +		#interrupt-cells = <2>;
> +		riscv,ndev = <101>;
> +	};
> +
> +	clint: timer@74000000 {
> +		compatible = "sophgo,cv1812h-clint", "thead,c900-clint";
> +		reg = <0x74000000 0x10000>;
> +		interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
> +	};
>  };
>  
>  &clk {
> diff --git a/arch/riscv/boot/dts/sophgo/cv181x.dtsi b/arch/riscv/boot/dts/sophgo/cv181x.dtsi
> index 5fd14dd1b14f..bbdb30653e9a 100644
> --- a/arch/riscv/boot/dts/sophgo/cv181x.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv181x.dtsi
> @@ -11,7 +11,7 @@ soc {
>  		emmc: mmc@4300000 {
>  			compatible = "sophgo,cv1800b-dwcmshc";
>  			reg = <0x4300000 0x1000>;
> -			interrupts = <34 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(18) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_AXI4_EMMC>,
>  				 <&clk CLK_EMMC>;
>  			clock-names = "core", "bus";
> diff --git a/arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
> new file mode 100644
> index 000000000000..a68d61131efb
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
> @@ -0,0 +1,57 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> + * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> + */
> +
> +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> +
> +/ {
> +	cpus: cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		timebase-frequency = <25000000>;
> +
> +		cpu0: cpu@0 {
> +			compatible = "thead,c906", "riscv";
> +			device_type = "cpu";
> +			reg = <0>;
> +			d-cache-block-size = <64>;
> +			d-cache-sets = <512>;
> +			d-cache-size = <65536>;
> +			i-cache-block-size = <64>;
> +			i-cache-sets = <128>;
> +			i-cache-size = <32768>;
> +			mmu-type = "riscv,sv39";
> +			riscv,isa = "rv64imafdc";
> +			riscv,isa-base = "rv64i";
> +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> +					       "zifencei", "zihpm";
> +
> +			cpu0_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +	};
> +};
> +
> +&soc {
> +	interrupt-parent = <&plic>;
> +	dma-noncoherent;
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
> diff --git a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> index c18822ec849f..62c1464a0490 100644
> --- a/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv18xx.dtsi
> @@ -12,47 +12,16 @@ / {
>  	#address-cells = <1>;
>  	#size-cells = <1>;
>  
> -	cpus: cpus {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		timebase-frequency = <25000000>;
> -
> -		cpu0: cpu@0 {
> -			compatible = "thead,c906", "riscv";
> -			device_type = "cpu";
> -			reg = <0>;
> -			d-cache-block-size = <64>;
> -			d-cache-sets = <512>;
> -			d-cache-size = <65536>;
> -			i-cache-block-size = <64>;
> -			i-cache-sets = <128>;
> -			i-cache-size = <32768>;
> -			mmu-type = "riscv,sv39";
> -			riscv,isa = "rv64imafdc";
> -			riscv,isa-base = "rv64i";
> -			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> -					       "zifencei", "zihpm";
> -
> -			cpu0_intc: interrupt-controller {
> -				compatible = "riscv,cpu-intc";
> -				interrupt-controller;
> -				#interrupt-cells = <1>;
> -			};
> -		};
> -	};
> -
>  	osc: oscillator {
>  		compatible = "fixed-clock";
>  		clock-output-names = "osc_25m";
>  		#clock-cells = <0>;
>  	};
>  
> -	soc {
> +	soc: soc {
>  		compatible = "simple-bus";
> -		interrupt-parent = <&plic>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		dma-noncoherent;
>  		ranges;
>  
>  		clk: clock-controller@3002000 {
> @@ -75,7 +44,7 @@ porta: gpio-controller@0 {
>  				reg = <0>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> -				interrupts = <60 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts = <SOC_PERIPHERAL_IRQ(44) IRQ_TYPE_LEVEL_HIGH>;
>  			};
>  		};
>  
> @@ -93,7 +62,7 @@ portb: gpio-controller@0 {
>  				reg = <0>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> -				interrupts = <61 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts = <SOC_PERIPHERAL_IRQ(45) IRQ_TYPE_LEVEL_HIGH>;
>  			};
>  		};
>  
> @@ -111,7 +80,7 @@ portc: gpio-controller@0 {
>  				reg = <0>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> -				interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts = <SOC_PERIPHERAL_IRQ(46) IRQ_TYPE_LEVEL_HIGH>;
>  			};
>  		};
>  
> @@ -129,7 +98,7 @@ portd: gpio-controller@0 {
>  				reg = <0>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> -				interrupts = <63 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts = <SOC_PERIPHERAL_IRQ(47) IRQ_TYPE_LEVEL_HIGH>;
>  			};
>  		};
>  
> @@ -137,7 +106,7 @@ saradc: adc@30f0000 {
>  			compatible = "sophgo,cv1800b-saradc";
>  			reg = <0x030f0000 0x1000>;
>  			clocks = <&clk CLK_SARADC>;
> -			interrupts = <100 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(84) IRQ_TYPE_LEVEL_HIGH>;
>  			#address-cells = <1>;
>  			#size-cells = <0>;
>  			status = "disabled";
> @@ -162,7 +131,7 @@ i2c0: i2c@4000000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C0>;
>  			clock-names = "ref", "pclk";
> -			interrupts = <49 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(33) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
> @@ -173,7 +142,7 @@ i2c1: i2c@4010000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C1>;
>  			clock-names = "ref", "pclk";
> -			interrupts = <50 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(34) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
> @@ -184,7 +153,7 @@ i2c2: i2c@4020000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C2>;
>  			clock-names = "ref", "pclk";
> -			interrupts = <51 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(35) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
> @@ -195,7 +164,7 @@ i2c3: i2c@4030000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C3>;
>  			clock-names = "ref", "pclk";
> -			interrupts = <52 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(36) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
> @@ -206,14 +175,14 @@ i2c4: i2c@4040000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_I2C>, <&clk CLK_APB_I2C4>;
>  			clock-names = "ref", "pclk";
> -			interrupts = <53 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(37) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
>  		uart0: serial@4140000 {
>  			compatible = "snps,dw-apb-uart";
>  			reg = <0x04140000 0x100>;
> -			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(28) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_UART0>, <&clk CLK_APB_UART0>;
>  			clock-names = "baudclk", "apb_pclk";
>  			reg-shift = <2>;
> @@ -224,7 +193,7 @@ uart0: serial@4140000 {
>  		uart1: serial@4150000 {
>  			compatible = "snps,dw-apb-uart";
>  			reg = <0x04150000 0x100>;
> -			interrupts = <45 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(29) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_UART1>, <&clk CLK_APB_UART1>;
>  			clock-names = "baudclk", "apb_pclk";
>  			reg-shift = <2>;
> @@ -235,7 +204,7 @@ uart1: serial@4150000 {
>  		uart2: serial@4160000 {
>  			compatible = "snps,dw-apb-uart";
>  			reg = <0x04160000 0x100>;
> -			interrupts = <46 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(30) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_UART2>, <&clk CLK_APB_UART2>;
>  			clock-names = "baudclk", "apb_pclk";
>  			reg-shift = <2>;
> @@ -246,7 +215,7 @@ uart2: serial@4160000 {
>  		uart3: serial@4170000 {
>  			compatible = "snps,dw-apb-uart";
>  			reg = <0x04170000 0x100>;
> -			interrupts = <47 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(31) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_UART3>, <&clk CLK_APB_UART3>;
>  			clock-names = "baudclk", "apb_pclk";
>  			reg-shift = <2>;
> @@ -261,7 +230,7 @@ spi0: spi@4180000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI0>;
>  			clock-names = "ssi_clk", "pclk";
> -			interrupts = <54 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(38) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
> @@ -272,7 +241,7 @@ spi1: spi@4190000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI1>;
>  			clock-names = "ssi_clk", "pclk";
> -			interrupts = <55 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(39) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
> @@ -283,7 +252,7 @@ spi2: spi@41a0000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI2>;
>  			clock-names = "ssi_clk", "pclk";
> -			interrupts = <56 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(40) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
> @@ -294,14 +263,14 @@ spi3: spi@41b0000 {
>  			#size-cells = <0>;
>  			clocks = <&clk CLK_SPI>, <&clk CLK_APB_SPI3>;
>  			clock-names = "ssi_clk", "pclk";
> -			interrupts = <57 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(41) IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
>  
>  		uart4: serial@41c0000 {
>  			compatible = "snps,dw-apb-uart";
>  			reg = <0x041c0000 0x100>;
> -			interrupts = <48 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(32) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_UART4>, <&clk CLK_APB_UART4>;
>  			clock-names = "baudclk", "apb_pclk";
>  			reg-shift = <2>;
> @@ -312,7 +281,7 @@ uart4: serial@41c0000 {
>  		sdhci0: mmc@4310000 {
>  			compatible = "sophgo,cv1800b-dwcmshc";
>  			reg = <0x4310000 0x1000>;
> -			interrupts = <36 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(20) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_AXI4_SD0>,
>  				 <&clk CLK_SD0>;
>  			clock-names = "core", "bus";
> @@ -322,7 +291,7 @@ sdhci0: mmc@4310000 {
>  		sdhci1: mmc@4320000 {
>  			compatible = "sophgo,cv1800b-dwcmshc";
>  			reg = <0x4320000 0x1000>;
> -			interrupts = <38 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(22) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_AXI4_SD1>,
>  				 <&clk CLK_SD1>;
>  			clock-names = "core", "bus";
> @@ -332,7 +301,7 @@ sdhci1: mmc@4320000 {
>  		dmac: dma-controller@4330000 {
>  			compatible = "snps,axi-dma-1.01a";
>  			reg = <0x04330000 0x1000>;
> -			interrupts = <29 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(13) IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk CLK_SDMA_AXI>, <&clk CLK_SDMA_AXI>;
>  			clock-names = "core-clk", "cfgr-clk";
>  			#dma-cells = <1>;
> @@ -344,19 +313,5 @@ dmac: dma-controller@4330000 {
>  			snps,data-width = <4>;
>  			status = "disabled";
>  		};
> -
> -		plic: interrupt-controller@70000000 {
> -			reg = <0x70000000 0x4000000>;
> -			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> -			interrupt-controller;
> -			#address-cells = <0>;
> -			#interrupt-cells = <2>;
> -			riscv,ndev = <101>;
> -		};
> -
> -		clint: timer@74000000 {
> -			reg = <0x74000000 0x10000>;
> -			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
> -		};
>  	};
>  };
> diff --git a/arch/riscv/boot/dts/sophgo/sg2002.dtsi b/arch/riscv/boot/dts/sophgo/sg2002.dtsi
> index 7f79de33163c..732d0e72cf13 100644
> --- a/arch/riscv/boot/dts/sophgo/sg2002.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/sg2002.dtsi
> @@ -3,6 +3,8 @@
>   * Copyright (C) 2024 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
>   */
>  
> +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> +
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/pinctrl-sg2002.h>
>  #include "cv18xx.dtsi"
> @@ -16,22 +18,62 @@ memory@80000000 {
>  		reg = <0x80000000 0x10000000>;
>  	};
>  
> -	soc {
> -		pinctrl: pinctrl@3001000 {
> -			compatible = "sophgo,sg2002-pinctrl";
> -			reg = <0x03001000 0x1000>,
> -			      <0x05027000 0x1000>;
> -			reg-names = "sys", "rtc";
> +	cpus: cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		timebase-frequency = <25000000>;
> +
> +		cpu0: cpu@0 {
> +			compatible = "thead,c906", "riscv";
> +			device_type = "cpu";
> +			reg = <0>;
> +			d-cache-block-size = <64>;
> +			d-cache-sets = <512>;
> +			d-cache-size = <65536>;
> +			i-cache-block-size = <64>;
> +			i-cache-sets = <128>;
> +			i-cache-size = <32768>;
> +			mmu-type = "riscv,sv39";
> +			riscv,isa = "rv64imafdc";
> +			riscv,isa-base = "rv64i";
> +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> +					       "zifencei", "zihpm";
> +
> +			cpu0_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
>  		};
>  	};
>  };
>  
> -&plic {
> -	compatible = "sophgo,sg2002-plic", "thead,c900-plic";
> -};
> +&soc {
> +	interrupt-parent = <&plic>;
> +	dma-noncoherent;
>  
> -&clint {
> -	compatible = "sophgo,sg2002-clint", "thead,c900-clint";
> +	pinctrl: pinctrl@3001000 {
> +		compatible = "sophgo,sg2002-pinctrl";
> +		reg = <0x03001000 0x1000>,
> +		      <0x05027000 0x1000>;
> +		reg-names = "sys", "rtc";
> +	};
> +
> +	plic: interrupt-controller@70000000 {
> +		compatible = "sophgo,sg2002-plic", "thead,c900-plic";
> +		reg = <0x70000000 0x4000000>;
> +		interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> +		interrupt-controller;
> +		#address-cells = <0>;
> +		#interrupt-cells = <2>;
> +		riscv,ndev = <101>;
> +	};
> +
> +	clint: timer@74000000 {
> +		compatible = "sophgo,sg2002-clint", "thead,c900-clint";
> +		reg = <0x74000000 0x10000>;
> +		interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
> +	};
>  };
>  
>  &clk {
> -- 
> 2.48.1
> 

