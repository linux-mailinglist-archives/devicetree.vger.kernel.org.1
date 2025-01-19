Return-Path: <devicetree+bounces-139583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CE6A1644F
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 23:28:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60B2E163C31
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 22:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF0241DF97E;
	Sun, 19 Jan 2025 22:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BFjDq2do"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6311A260
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 22:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737325676; cv=none; b=uQVzj/w6eSJjKYm4oE4MJoClh/jhZqv8/vjA/AvYADRLZu03DGwu9qLjOakHdoyuE6uwI/bxWMqyOKFsdoVea3MSsa/1m0TaH/J83oqMRb/83gKT6MgBOkAODdtxvOQNxEUfZ1InFsRh8BlKnpGCroLIF0zZle1JdZxZxRqSmV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737325676; c=relaxed/simple;
	bh=m2K9R64KhDMtl3LFgcHFBofAwvyZnwVoUecJwStlLz8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AeDNH0NL6UQAMufrC1aaQUNH7AXT433AjrOTG2eNofoeUIrSHQcQaTLR91AjZFKQalHAZ/weWVIupA1BX8cNz13aDLl2xw/QE0blfLd1YQTBEo841waERbA0vBIh9Ii8ixiIZ04B7TrRY1PAUADLKPSXtgngHBE248udz0Lx1aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BFjDq2do; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7be49f6b331so347486885a.1
        for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 14:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737325674; x=1737930474; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B1NEaOvJP6ktRyon1qt65VnsfcXxR9/jvk2LgosJ8u8=;
        b=BFjDq2dofHtMjI6w6EqUjWNJbvrfZgoU+7DdtA3JW0qK9H/83sSTdQXOl+kmbs17qG
         WzW9sqwHNfhUz5yXdEbc6jCZPmhmrV7l0gIv4f0aK8x3gDJd5OMXFrIDK58kMYRt8yDz
         WotSS5xdbLaxeTbbyFCnjL+HQlLLwVf3zGEKRge683MQuPwx3P/6A0RHR2/d5IllFwp5
         dJqhSqR/AMMWl7+aGWKEjqYUoqvUONji3E9qdp4grT807s/sohOuJ/60RjOTkyemIxj5
         7SnjiT/tXxW+LAaUc5GVF1ZI+V/2QfRGD8VrVmj4R2JWTmotGbm1WZT99cSEDx55Oh3D
         WAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737325674; x=1737930474;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B1NEaOvJP6ktRyon1qt65VnsfcXxR9/jvk2LgosJ8u8=;
        b=HVs1L3y6knBG3B/wHS/gfWhJs21iSf26P4Rph28ickc8Ij173dnENmfQ+aspXo+nRM
         wWUnrHEe0f4JHlu5912wqTWldYgt1Y+3yirAxANrz1cJGlySXPt4fJ5weS8C0Ca+yn4W
         TtR4lGwgR0x2n5YWoWQFq080wa3w3jDSeuio5d4sE2avuX4wV+iq0SCjIfN428Ju+ykH
         AWW86VTPtKXMovBltF3HpRuX/RjfMDiCU1k3HKT/cZ7TEYIyWWL0r4rXhpFB9T8FKyru
         VypY1B5MRfCuuPZtO8igalcMhMg6G2C1+5+WU9RhAryWXhcLONMeO+JSxERqX4Jca2qj
         eoWQ==
X-Forwarded-Encrypted: i=1; AJvYcCV56iK4L55Rk5eLR72eR8qJrhnKR+U48og+Fm7fduql6Edv8LvLLsfQA9vYr5SJp08S3L7iRxzPpS4t@vger.kernel.org
X-Gm-Message-State: AOJu0YwUlvaQUKRVFZeQnkKEPlbTinSfe+pJ3Q8w1c5RaXJHz4oXqJPL
	wvA26UjrOP7jYT4b5WLzM+n2+v2JrAAob6YomcfZlPElQv48fRH1gOCeyw==
X-Gm-Gg: ASbGncvb+YdUm054WdOcGktsrSNrs7PDNuFe9PQLfPoBWiDF1vOKpKN+lyRGSRQyby6
	arUpqoU9ENInefwxF+HGpNQH+XtNu3Ct/s4/++x1d2dLFs1f+2GKvlX7EH3gUsEMcvKDNUu9byn
	DpP+spJc85hMA6mMYa1leXYMS0z0+V9a2CWFEF5IafgqHmsu3HV27TLLOYNZroLYDdjpl5wHRDy
	uHbw6dR3WEB51cGvJ8JnSSmIFha61Gc53aRAf/kBxTPKQ==
X-Google-Smtp-Source: AGHT+IEvXRhN3YOjdvwsWeaMRKtp+AaGrFt8Vm/FPxPy/a3iJh+S2H70++OJxxsiqffQ3B4rmvMnqw==
X-Received: by 2002:a05:620a:44d5:b0:7b6:d1f6:3dc with SMTP id af79cd13be357-7be6321bf8cmr1874388785a.18.1737325673880;
        Sun, 19 Jan 2025 14:27:53 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-7be61487360sm369189485a.57.2025.01.19.14.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2025 14:27:53 -0800 (PST)
Date: Mon, 20 Jan 2025 06:27:07 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC] arm64: dts: sophgo: Add initial SG2000 SoC device
 tree
Message-ID: <3iz53irwp7u3cvxf53j3ibcqbyojodnbxq7kgr4v6rvj3rx7ng@v3lolzcxh5ev>
References: <19bb108e93bb58eecc6a53d78ff4e75fc380f072.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <19bb108e93bb58eecc6a53d78ff4e75fc380f072.camel@gmail.com>

On Sun, Jan 12, 2025 at 01:55:05AM +0100, Alexander Sverdlin wrote:
> Add initial device tree for the SG2000 SoC by SOPHGO (from ARM64 PoV).
> 
> ---
> Dear ARM, RISCV, DT maintainers, I'd like to ask your opinion on the
> below patch, which I plan as a base for ARM64 BSP for dual-arch (RISCV or
> ARM64) Cvitek SoC SG2000. The main motivation for ARM64 support is the
> ARCH support in the upstream gcc, which is not that mature for RISCV.
> 
> I believe it's the first time we already have quite some base in the
> tree for a SoC, so it would be advantageous to re-use it and not
> duplicate the same SoC structures in two places, especially having
> in mind that Cvitek/Sophgo are still working on upstreaming and by
> far not all HW blocks are populated in the SoC DTs. They focus primarely
> on RISCV, so ARM64 would be dragging behind in this case if it would be
> forked.
> 
> On the other hand, including SoC dtsi from RISCV into ARM64 poses
> some technical challenges by itself, obviously CPU cores have to be
> deleted, same is true for interrupt controller. And the interrupt
> numbers are of course difference for ARM GIC, so they have to be
> overwritten.
> 
> Alternatively I can split existing .dtsi included below into their
> RISCV-specific and generic parts, so that both ARM64 and RISCV would
> include generic part and their corresponding ARCH-specific parts
> bringing CPU cores + interrupt controller + IRQ numbers for each and
> every device separately.
> 
> The below example isactually booting (being included into board-level
> DT), so it's a real example I'd be ready to submit if there will be
> no objections of the cross-ARCH include approach in general.
> 
> What are your thoughts?
> 
>  arch/arm64/boot/dts/sophgo/sg2000.dtsi | 164 +++++++++++++++++++++++++
>  1 file changed, 164 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/sophgo/sg2000.dtsi
> 
> diff --git a/arch/arm64/boot/dts/sophgo/sg2000.dtsi b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
> new file mode 100644
> index 000000000000..96afd342bde5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
> @@ -0,0 +1,164 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include "../../../../riscv/boot/dts/sophgo/cv18xx.dtsi"
> +#include "../../../../riscv/boot/dts/sophgo/cv181x.dtsi"
> +

> +/delete-node/ &cpu0;
> +/delete-node/ &plic;
> +/delete-node/ &clint;

You can split the riscv specific device into a separate file
so you not need to set delete-node.

> +
> +/ {
> +	compatible = "sophgo,sg2000";
> +	interrupt-parent = <&gic>;
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x20000000>;	/* 512MiB */
> +	};
> +
> +	pmu {
> +		compatible = "arm,cortex-a53-pmu";
> +		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
> +		always-on;
> +		clock-frequency = <25000000>;
> +	};
> +
> +	gic: interrupt-controller@1f01000 {
> +		compatible = "arm,cortex-a15-gic";
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		reg = <0x01f01000 0x1000>,
> +		      <0x01f02000 0x2000>;
> +	};
> +
> +	soc {
> +		/delete-property/ interrupt-parent;
> +
> +		pinctrl: pinctrl@3001000 {
> +			compatible = "sophgo,sg2000-pinctrl";
> +			reg = <0x03001000 0x1000>,
> +			      <0x05027000 0x1000>;
> +			reg-names = "sys", "rtc";
> +		};
> +	};
> +};
> +
> +&cpus {
> +	cpu0: cpu@0 {
> +		compatible = "arm,cortex-a53";
> +		device_type = "cpu";
> +		reg = <0>;
> +		enable-method = "psci";
> +		next-level-cache = <&l2>;
> +	};
> +
> +	l2: l2-cache {
> +		compatible = "cache";
> +	};
> +};
> +
> +&clk {
> +	compatible = "sophgo,sg2000-clk";
> +};
> +
> +&saradc {
> +	interrupts = <GIC_SPI 84 IRQ_TYPE_EDGE_RISING>;
> +};
> +
> +&dmac {
> +	interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&spi0 {
> +	interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&spi1 {
> +	interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&spi2 {
> +	interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&spi3 {
> +	interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&uart0 {
> +	interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&uart1 {
> +	interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&uart2 {
> +	interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&uart3 {
> +	interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&uart4 {
> +	interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&porta {
> +	interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&portb {
> +	interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&portc {
> +	interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&portd {
> +	interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&i2c0 {
> +	interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&i2c1 {
> +	interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&i2c2 {
> +	interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&i2c3 {
> +	interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&i2c4 {
> +	interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&emmc {
> +	interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&sdhci0 {
> +	interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
> +&sdhci1 {
> +	interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
> +};
> 
> -- 
> Alexander Sverdlin.
> 

