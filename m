Return-Path: <devicetree+bounces-146062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F22A332A5
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:31:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 985CA3A862E
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC7E1FFC57;
	Wed, 12 Feb 2025 22:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U1JvYhEh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA3D204086
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739399482; cv=none; b=qhF3SOjxd7t21Y/1UJqxReDTwNaK4yvIfOnspBxy3LLcKLdrOqwqPAvMixA0hu8I0sUzUTvHMV7+3Bwppx4xFWbXAZ+3wORlJvqE+ewNrU1u8EjLNbRk2j1DOQCiZNVL7uLz3ElKFt/N0Jbhn4vRLbbMVD1CyXfwPECj8infhKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739399482; c=relaxed/simple;
	bh=C5rKNCAp3ajPxfDFPBZWmHQnxa8j05xpYEE4gyHY0Gg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J4ODgHj+pmLkygZRJdB21HeKESM+MQHPwrKDu/w60g2vaxLk1p1IsPUB2Ftco97BcSfBFkRNbso+LSM4x+0uwOGJe/afYopHjvHei8F4HILgDY5Ao+RDhVJMbACUWmnmsZr5kchLKvoIoSyVI/9X8+YwIrOg461CKGzTRCf/xz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U1JvYhEh; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7c053a107b8so20014885a.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739399479; x=1740004279; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=adA61KlZ7NgJ00d9AP44x5Drt9hRKTZfXpJfv6UN5KI=;
        b=U1JvYhEh1aU92X7QmVf+YpWsfbgXNYIs3xZrvn4glv1JM82QW36J/5AB2WcU5nyEDy
         xvhPBYkMZThkDcKpnIjh/ym4uVmYPb0IeYQQefYpRti7TKiI069FszE8ZMYqMFfYtzab
         KNQd+FvrIAhCqpAVQdON2PWk2t9Nxz7mFMrN7Rgy5LEdJhnwpUxr4sDOOw1h/A1jAwwh
         1oWBjcglLn8SYkp0yAXoPkqULoEu8FiiVXq/DhT/2a4g7tQxOKR7QN20O3ybV8vGk9Hy
         KbMdIgvwOz/2fLtScg6T6wlAs/p2zOZyQLyyuYpo4UlP9PWzIjAwaXwylxAKuSfUGKRJ
         OzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739399479; x=1740004279;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=adA61KlZ7NgJ00d9AP44x5Drt9hRKTZfXpJfv6UN5KI=;
        b=XeoitG1fZ605OLv7ERqLG3iUhx90qEeATDhur4FsoDfuyCscJT3hnxSZq91Yer7tIk
         xO5WV4wtF+evrg0nOZiwZ9Bnlm6/PHuXeRCHFIDpsPiCijAeL60OyXR9x/eYVx60/qS9
         psKhbIFNP3kKb2HU6RoGzfTDJt9yi4g1doHDJz9wTOrlzFW7e69r62VpD0q/aUh1JIe3
         /qqAb9vJJ5RL9MjiZPgqiumQyfMqV/fc/wJolLqMy+mykfrmA+M21lXo8mfKvvQXbA+E
         IBk63B/tTmbDK2Wqb77uDCRarBCJGMO4rCd0bIMhkWETXxtyb4Zmyas2eBxLATdvtR+c
         XO9A==
X-Forwarded-Encrypted: i=1; AJvYcCXmW3K4Nu2Lh7ybAMTnOY/xtItySrgTwYrh8eAVgSGvB0T7Ykq9/t/ythiV4RA2gXswXCtRk5h7GrF8@vger.kernel.org
X-Gm-Message-State: AOJu0YzKv6KLS/Q5huSauy6MLtjj3iv7vbSYfVP29nRsCWdwSg8TUklR
	PJGekywmA+TflObSsMgIptoQuVvdlrkdDWDivLZ+cRelVB4qc9Wt
X-Gm-Gg: ASbGncueYFIOJLGFUkC1EWvdwmzuG8dRlovtw0NP32DvlWFkQc2hPT5X5uvBuMZWWA2
	1i9btoOMv88MxET1b8kpkxBHR4CmojCWiCEbAz5o9Lu+NR82D/npGn1wTojkoNynw8eMdSPRyUj
	VI29RiPMourQh00s1ecSqsIxx6OKAvN9Mo62Vpxdyk0zS85oEb3gfr/nmGwdoHAu84c1+fuRG2v
	qJ9XxHSOJPSLEyiamWzj6meaIDs/2RyiEAJMlyD8ljZnLWE8N7Zd+XSvaeI67alaI4=
X-Google-Smtp-Source: AGHT+IG/jqO7Gs3aNEJD2jlxWGUNxNPhJfXHJaQNAvosjjzRMKiNe50EuVFrHjd49yXn9DToPQh2SQ==
X-Received: by 2002:a05:620a:269c:b0:7c0:6c5b:d6e5 with SMTP id af79cd13be357-7c07a1ead00mr229402985a.54.1739399479479;
        Wed, 12 Feb 2025 14:31:19 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-7c07518e80fsm127058185a.26.2025.02.12.14.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 14:31:19 -0800 (PST)
Date: Thu, 13 Feb 2025 06:31:11 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Inochi Amaoto <inochiama@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Haylen Chu <heylenay@outlook.com>, linux-arm-kernel@lists.infradead.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Chao Wei <chao.wei@sophgo.com>
Subject: Re: [PATCH v2 1/7] riscv: dts: sophgo: cv18xx: Move RiscV-specific
 part into SoCs' .dtsi files
Message-ID: <p5aolstlrxnhb7wk45eukthlwiui337fssbum4lrpflvui773i@beif6axz66jx>
References: <20250210220951.1248533-1-alexander.sverdlin@gmail.com>
 <20250210220951.1248533-2-alexander.sverdlin@gmail.com>
 <uvy62iqzul6kajzsmiaovdzogftcsc5b53cswkv4cbxh4w6som@32libbd7kffq>
 <708cdc497b8474609989395dbf8a0898037a22de.camel@gmail.com>
 <33654180-5488-4601-9103-8e4218c4a198@kernel.org>
 <26ddcdaadd777f170dbab51ab840c899f0edde24.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <26ddcdaadd777f170dbab51ab840c899f0edde24.camel@gmail.com>

On Wed, Feb 12, 2025 at 06:44:15PM +0100, Alexander Sverdlin wrote:
> Hi 
> 
> On Wed, 2025-02-12 at 17:46 +0100, Krzysztof Kozlowski wrote:
> > > > > Make the peripheral device tree re-usable on ARM64 platform by moving CPU
> > > > > core and interrupt controllers' parts into the respective per-SoC .dtsi
> > > > > files.
> > > > > 
> > > > > Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nubering
> > > > > into "plic" interrupt-controller numbering.
> > > > > 
> > > > > Have a nice refactoring side-effect that "plic" and "clint" "compatible"
> > > > > property is not specified outside of the corresponding device itself.
> > > > > 
> > > > > Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> > > > > ---
> > > > > Changelog:
> > > > > v2:
> > > > > - instead of carving out peripherals' part, carve out ARCH-specifics (CPU
> > > > > core, interrupt controllers) and spread them among 3 SoC .dtsi files which
> > > > > included cv18xx.dtsi;
> > > > > - define a label for the "soc" node and use it in the newly introduced DTs;
> > > > > 
> > > > >  arch/riscv/boot/dts/sophgo/cv1800b.dtsi    | 64 ++++++++++++---
> > > > >  arch/riscv/boot/dts/sophgo/cv1812h.dtsi    | 64 ++++++++++++---
> > > > >  arch/riscv/boot/dts/sophgo/cv181x.dtsi     |  2 +-
> > > > >  arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi | 57 ++++++++++++++
> > > > >  arch/riscv/boot/dts/sophgo/cv18xx.dtsi     | 91 ++++++----------------
> > > > >  arch/riscv/boot/dts/sophgo/sg2002.dtsi     | 64 ++++++++++++---
> > > > >  6 files changed, 240 insertions(+), 102 deletions(-)
> > > > >  create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
> > > > > 
> > > > > diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > > > > index aa1f5df100f0..eef2884b36f9 100644
> > > > > --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > > > > +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > > > > @@ -3,6 +3,8 @@
> > > > >   * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > > > >   */
> > > > >  
> > > > > +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> > > > > +
> > > > >  #include <dt-bindings/pinctrl/pinctrl-cv1800b.h>
> > > > >  #include "cv18xx.dtsi"
> > > > >  
> > > > > @@ -14,22 +16,62 @@ memory@80000000 {
> > > > >  		reg = <0x80000000 0x4000000>;
> > > > >  	};
> > > > >  
> > > > 
> > > > > -	soc {
> > > > > -		pinctrl: pinctrl@3001000 {
> > > > > -			compatible = "sophgo,cv1800b-pinctrl";
> > > > > -			reg = <0x03001000 0x1000>,
> > > > > -			      <0x05027000 0x1000>;
> > > > > -			reg-names = "sys", "rtc";
> > > > 
> > > > 
> > > > > +	cpus: cpus {
> > > > > +		#address-cells = <1>;
> > > > > +		#size-cells = <0>;
> > > > > +		timebase-frequency = <25000000>;
> > > > > +
> > > > > +		cpu0: cpu@0 {
> > > > > +			compatible = "thead,c906", "riscv";
> > > > > +			device_type = "cpu";
> > > > > +			reg = <0>;
> > > > > +			d-cache-block-size = <64>;
> > > > > +			d-cache-sets = <512>;
> > > > > +			d-cache-size = <65536>;
> > > > > +			i-cache-block-size = <64>;
> > > > > +			i-cache-sets = <128>;
> > > > > +			i-cache-size = <32768>;
> > > > > +			mmu-type = "riscv,sv39";
> > > > > +			riscv,isa = "rv64imafdc";
> > > > > +			riscv,isa-base = "rv64i";
> > > > > +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> > > > > +					       "zifencei", "zihpm";
> > > > > +
> > > > > +			cpu0_intc: interrupt-controller {
> > > > > +				compatible = "riscv,cpu-intc";
> > > > > +				interrupt-controller;
> > > > > +				#interrupt-cells = <1>;
> > > > > +			};
> > > > >  		};
> > > > >  	};
> > > > >  };
> > > > 
> > > > Make all soc definition include the common cpu file. 
> > > > Not just copy it.
> > > 
> > > I was acting according to Krzysztof's suggestion:
> > > https://lore.kernel.org/soc/d3ba0ea5-0491-42d5-a18e-64cf21df696c@kernel.org/
> > > 
> > > Krzysztof, I can name the file cv18xx-cpu-intc.dtsi and pack CPU core + interrupt
> > > controllers into it. Would it make sense?
> > 
> > 
> > I don't understand the original suggestion.
> 
> This is the snippet in question:
> 
> ---[ cut ]---
> #define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> 
> / {
> 	cpus: cpus {
> 		#address-cells = <1>;
> 		#size-cells = <0>;
> 		timebase-frequency = <25000000>;
> 
> 		cpu0: cpu@0 {
> 			compatible = "thead,c906", "riscv";
> 			device_type = "cpu";
> 			reg = <0>;
> 			d-cache-block-size = <64>;
> 			d-cache-sets = <512>;
> 			d-cache-size = <65536>;
> 			i-cache-block-size = <64>;
> 			i-cache-sets = <128>;
> 			i-cache-size = <32768>;
> 			mmu-type = "riscv,sv39";
> 			riscv,isa = "rv64imafdc";
> 			riscv,isa-base = "rv64i";
> 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> 					       "zifencei", "zihpm";
> 
> 			cpu0_intc: interrupt-controller {
> 				compatible = "riscv,cpu-intc";
> 				interrupt-controller;
> 				#interrupt-cells = <1>;
> 			};
> 		};
> 	};
> };
> 
> &soc {
> 	interrupt-parent = <&plic>;
> 	dma-noncoherent;
> 
> 	plic: interrupt-controller@70000000 {
> 		reg = <0x70000000 0x4000000>;
> 		interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> 		interrupt-controller;
> 		#address-cells = <0>;
> 		#interrupt-cells = <2>;
> 		riscv,ndev = <101>;
> 	};
> 
> 	clint: timer@74000000 {
> 		reg = <0x74000000 0x10000>;
> 		interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
> 	};
> };
> ---[ cut ]---
> 
> Inochi's proposal is to put it into separate cv18xx-cpu-intc.dtsi and
> include the latter in 3 other SoC-specific .dtsis. 

Yes, this is what I want to say. Since I can confirm all cv18xx
series have the same riscv core (IIRC they share the same hw
design). There is no reason to duplicate them.

> In v2 I've just
> duplicated the above snippet 3 times (refer to diffstat above).
> 
> What are your thoughts? In Renesas everything is duplicated, I believe.
> Sophgo outsources much smaller snippets into .dtsi (refer to cv181x.dtsi). 
> 
> > Inochi, please trim unnecessary context from replies.
> 
> -- 
> Alexander Sverdlin.
> 

