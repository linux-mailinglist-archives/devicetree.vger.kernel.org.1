Return-Path: <devicetree+bounces-146074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F11E9A3335C
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 00:29:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACD9516419B
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64635211712;
	Wed, 12 Feb 2025 23:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fL8TMRmd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83EB21E3DED
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739402945; cv=none; b=cGadIBAXNieY6KfYNQa/YKiGfoFvdrTsOtVWDgevhPi7MVS3blcPYKJ56sjGKhIdfxHobM9jP4mmpukYxoczvPApfRXCeSm8gnRdSoK9qMus2SwO00WCO6EOkoLDxVDK605skhvY6aRZieR5RtXK3nGMAv992pG4hUKrS4ygbwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739402945; c=relaxed/simple;
	bh=SbvllPME6RIfIRZ0dZ9A0sCS42m7c2rpURnrOiCFEVo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aNrJ2E8VpkkzQgDszw5jhlRIp51b/Fg8Sq95oaZwdyFJ0dXA5SfX1vS5zRY6rc/g/jZ7Iw52ipELKFfuL92b0BNPL1cIEFLQPXwcz8l8cAPvLIA95CXpn/pqGTTBhrsyrXyyStk1yzGN2Q8Y8eVMfYCTS/xJVAR81Z+BAY9Y0kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fL8TMRmd; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-471be82b59aso2557731cf.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 15:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739402942; x=1740007742; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xf6FEOPlsQCKDeS8/VmOQ+ZlZJhwCDMgN7NaCKS7CYU=;
        b=fL8TMRmdD7DkbbRdV0Tk+MAq5BC4nBCu36+up0Y2vINcA4abeJBTzHfUj77DaW0k71
         X6rv0ZUrsiskAS+zqspUdnqV915b1cGxe5KRNdD9d2aI87zEKvNc4YpOwrVBaBcDmv2B
         EYxY1FWeaWRdey6HFr7u7sY+3l1l+VDWo9HY/aGTFNZh6ZRB7c0r6LrTq24rb2yoIl9R
         tsmqeYPUzdmbokTUk+gqek+MZ0+QY/6uaujr1j7lWa4+gHbrDXUVCFG9F2lgUW2l7T4r
         16vnY5A+RsQ2MgVqcGT7QDmsaah2vVfPSNk639YOQl1HP6cBbUhAqzAHWkYQGK8RxAcz
         BYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739402942; x=1740007742;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xf6FEOPlsQCKDeS8/VmOQ+ZlZJhwCDMgN7NaCKS7CYU=;
        b=WpCnG/gQ9K90hubgHsDxmcpCgLxbVWBTxUX1RM5k1pS0mB4nXRyQI0wsVShFGDdDg2
         T7BIm071Wn+SOaA7Y1MJvMrZAxj8x7Ie8e5yYcs1bk0FXggp+Q7idwLiSw3Te4dzXUqg
         BZBfI25uJjrmfNP7ZEaDuomrQwjd+qcBjUSQhqGCP/8NmZ9XAEP7LYrYzFB3OqnJ4KKC
         aRHiVD23ncYCdsA/PcNzc9iekv6pivRWzhuD2i4+9J/QkQbzKfPzGvo9FyyG6Eg7cDZV
         MCgq8MoKFIEBcebq5GUuaTGTbg0sWXEvq6dZgbq6ZyfYfW5IIo0MkAQX+uA76pvXn3Py
         EpuA==
X-Forwarded-Encrypted: i=1; AJvYcCVpABD+drEzAFK2rxAfhJUxfywNx7zU8XmReK4YbrtWphbmuJ+Gj4gIb5SSNjDgnmDA8KqSm3++wONI@vger.kernel.org
X-Gm-Message-State: AOJu0YxonFo3MLCpYFSPSFbj4yDOsqKS94lQW73wP4bI5b/x4EI6/hnV
	EZ3YpwUb7tTPxGJtwi4LhEKuBLBYV96kXxOEmenvccGCLL7HkUHTbbFQnw==
X-Gm-Gg: ASbGncvZw45Tq60ux+OcHoryKSRrDIX7mqM+8KhLX8aPdkVWeZt+1J8XTezXQRDToAo
	eEkOu+dPBiabOA1bOrh/s6Am7sNFEZyYqr3qBfYqpym568R/EvSScumTAB1L59izara8Grk/SdT
	hk0xjMM2G5hK2AnN2+fx5rD/jfPvuBVud6fJc9ubrc7X8M9SfaHQDhP+fWG1SuoCvZtmIQJYX4e
	zLBCrVicClER38FLLTwdrB7hFc/00SpqNMDe2CaGh77iQQvWheDbsdjbd8Du4wCT4Y=
X-Google-Smtp-Source: AGHT+IGYzAubSVFkMrhIoFfMHJkYJiaTIPTRSix5tqjfLli9V0CYVWf7rD0PEDyVMCJ7C/TQE8oE9A==
X-Received: by 2002:a05:622a:8f1b:b0:467:8630:584f with SMTP id d75a77b69052e-471bee131b3mr18469391cf.36.1739402942343;
        Wed, 12 Feb 2025 15:29:02 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id d75a77b69052e-471c2a11e77sm605131cf.29.2025.02.12.15.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 15:29:01 -0800 (PST)
Date: Thu, 13 Feb 2025 07:28:54 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Haylen Chu <heylenay@outlook.com>, linux-arm-kernel@lists.infradead.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Chao Wei <chao.wei@sophgo.com>
Subject: Re: [PATCH v3 1/7] riscv: dts: sophgo: cv18xx: Move RiscV-specific
 part into SoCs' .dtsi files
Message-ID: <e7veoogv7qlmjelxiu34a2yvbtb6umgqscwo44ti7k562n7ow5@7uadzl4oubzb>
References: <20250212224347.1767819-1-alexander.sverdlin@gmail.com>
 <20250212224347.1767819-2-alexander.sverdlin@gmail.com>
 <x4zncooa3lmyf2bikowjw7oabz66dhhbxl44cmujzzkwaslcl5@tj3l2u7e4akx>
 <de4d99bf89f78a0a6e0a81dc6062af5e85d762aa.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <de4d99bf89f78a0a6e0a81dc6062af5e85d762aa.camel@gmail.com>

On Thu, Feb 13, 2025 at 12:04:39AM +0100, Alexander Sverdlin wrote:
> Hi Inochi!
> 
> On Thu, 2025-02-13 at 06:54 +0800, Inochi Amaoto wrote:
> > On Wed, Feb 12, 2025 at 11:43:33PM +0100, Alexander Sverdlin wrote:
> > > Make the peripheral device tree re-usable on ARM64 platform by moving CPU
> > > core and interrupt controllers' parts into new cv18xx-cpu.dtsi and
> > > cv18xx-intc.dtsi.
> > > 
> > > Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nubering
> > > into "plic" interrupt-controller numbering.
> > > 
> > > On RiscV side this patch has been dtc-compile-tested only. IRQ numbers
> > > substitution with SOC_PERIPHERAL_IRQ() has been scripted in vim.
> > > 
> > > Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> > > ---
> > > Changelog:
> > > v3:
> > > - &cpus node has been moved into cv18xx-cpu.dtsi, &plic and &clint nodes
> > > were moved into cv18xx-intc.dtsi to reduce code duplication;
> > > v2:
> > > - instead of carving out peripherals' part, carve out ARCH-specifics (CPU
> > > core, interrupt controllers) and spread them among 3 SoC .dtsi files which
> > > included cv18xx.dtsi;
> > > - define a label for the "soc" node and use it in the newly introduced DTs;
> > > 
> > >   arch/riscv/boot/dts/sophgo/cv1800b.dtsi     | 28 ++++---
> > >   arch/riscv/boot/dts/sophgo/cv1812h.dtsi     | 28 ++++---
> > >   arch/riscv/boot/dts/sophgo/cv181x.dtsi      |  2 +-
> > >   arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi  | 36 ++++++++
> > >   arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi | 23 ++++++
> > >   arch/riscv/boot/dts/sophgo/cv18xx.dtsi      | 91 ++++++---------------
> > >   arch/riscv/boot/dts/sophgo/sg2002.dtsi      | 34 ++++----
> > >   7 files changed, 137 insertions(+), 105 deletions(-)
> > >   create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
> > >   create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi
> > > 
> > > diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > > index aa1f5df100f0..9fb7dd2dab18 100644
> > > --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > > +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > > @@ -3,8 +3,12 @@
> > >    * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > >    */
> > >   
> > > +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> > > +
> > >   #include <dt-bindings/pinctrl/pinctrl-cv1800b.h>
> > > +#include "cv18xx-cpu.dtsi"
> > >   #include "cv18xx.dtsi"
> > > +#include "cv18xx-intc.dtsi"
> > >   
> > >   / {
> > >   	compatible = "sophgo,cv1800b";
> > > @@ -13,17 +17,23 @@ memory@80000000 {
> > >   		device_type = "memory";
> > >   		reg = <0x80000000 0x4000000>;
> > >   	};
> > > +};
> > > +
> > 
> > > +&soc {
> > > +	dma-noncoherent;
> > >   
> > > -	soc {
> > > -		pinctrl: pinctrl@3001000 {
> > > -			compatible = "sophgo,cv1800b-pinctrl";
> > > -			reg = <0x03001000 0x1000>,
> > > -			      <0x05027000 0x1000>;
> > > -			reg-names = "sys", "rtc";
> > > -		};
> > > +	pinctrl: pinctrl@3001000 {
> > > +		compatible = "sophgo,cv1800b-pinctrl";
> > > +		reg = <0x03001000 0x1000>,
> > > +		      <0x05027000 0x1000>;
> > > +		reg-names = "sys", "rtc";
> > >   	};
> > >   };
> > >   
> > 
> > The origianl /soc path can be used to override things, 
> > why change it to the reference archor? I see no change
> > for it.
> 
> https://lore.kernel.org/soc/d3ba0ea5-0491-42d5-a18e-64cf21df696c@kernel.org/
> The corresponding label is being introduced in cv18xx.dtsi.
> 

Yes I know, but I wonder why you change it here, the url you provide
told nothing about change existing structure.

The origianl struct:

/ {
	soc {
		...
	};
};

it can also be used to add things in /soc, renesa uses this in that
form is not the reason for this change. I prefer to keep original
structure so less change is introducted.

> > > +&clk {
> > > +	compatible = "sophgo,cv1800-clk";
> > > +};
> > > +
> > >   &plic {
> > >   	compatible = "sophgo,cv1800b-plic", "thead,c900-plic";
> > >   };
> > > @@ -31,7 +41,3 @@ &plic {
> > >   &clint {
> > >   	compatible = "sophgo,cv1800b-clint", "thead,c900-clint";
> > >   };
> > > -
> > > -&clk {
> > > -	compatible = "sophgo,cv1800-clk";
> > > -};
> > > diff --git a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> > > index 8a1b95c5116b..f23c4dd6687d 100644
> > > --- a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> > > +++ b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> > > @@ -3,10 +3,14 @@
> > >    * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> > >    */
> > >   
> > > +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> > > +
> > >   #include <dt-bindings/interrupt-controller/irq.h>
> > >   #include <dt-bindings/pinctrl/pinctrl-cv1812h.h>
> > > +#include "cv18xx-cpu.dtsi"
> > >   #include "cv18xx.dtsi"
> > >   #include "cv181x.dtsi"
> > > +#include "cv18xx-intc.dtsi"
> > >   
> > >   / {
> > >   	compatible = "sophgo,cv1812h";
> > > @@ -15,17 +19,23 @@ memory@80000000 {
> > >   		device_type = "memory";
> > >   		reg = <0x80000000 0x10000000>;
> > >   	};
> > > +};
> > > +
> > > +&soc {
> > 
> > > +	dma-noncoherent;
> > 
> > I think this can be moved into cv18xx-cpu.dtsi file, and let
> > all SoCs share it.
> 
> https://lore.kernel.org/soc/d3ba0ea5-0491-42d5-a18e-64cf21df696c@kernel.org/
> 
> If SOC_PERIPHERAL_IRQ() doesn't belong to -cpu.dtsi, then "dma-noncoherent;"
> probably neither...
> 

This is OK for me.

> > > -	soc {
> > > -		pinctrl: pinctrl@3001000 {
> > > -			compatible = "sophgo,cv1812h-pinctrl";
> > > -			reg = <0x03001000 0x1000>,
> > > -			      <0x05027000 0x1000>;
> > > -			reg-names = "sys", "rtc";
> > > -		};
> > > +	pinctrl: pinctrl@3001000 {
> > > +		compatible = "sophgo,cv1812h-pinctrl";
> > > +		reg = <0x03001000 0x1000>,
> > > +		      <0x05027000 0x1000>;
> > > +		reg-names = "sys", "rtc";
> > >   	};
> > >   };
> > >   
> > > +&clk {
> > > +	compatible = "sophgo,cv1810-clk";
> > > +};
> > > +
> > >   &plic {
> > >   	compatible = "sophgo,cv1812h-plic", "thead,c900-plic";
> > >   };
> > > @@ -33,7 +43,3 @@ &plic {
> > >   &clint {
> > >   	compatible = "sophgo,cv1812h-clint", "thead,c900-clint";
> > >   };
> > > -
> > > -&clk {
> > > -	compatible = "sophgo,cv1810-clk";
> > > -};
> > > 
> > > [...]
> > > 
> > 
> > > diff --git a/arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi b/arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi
> > > new file mode 100644
> > > index 000000000000..90817993a326
> > > --- /dev/null
> > > +++ b/arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi
> > > @@ -0,0 +1,23 @@
> > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > +/*
> > > + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > > + * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> > > + */
> > > +
> > > +&soc {
> > > +	interrupt-parent = <&plic>;
> > > +
> > > +	plic: interrupt-controller@70000000 {
> > > +		reg = <0x70000000 0x4000000>;
> > > +		interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> > > +		interrupt-controller;
> > > +		#address-cells = <0>;
> > > +		#interrupt-cells = <2>;
> > > +		riscv,ndev = <101>;
> > > +	};
> > > +
> > > +	clint: timer@74000000 {
> > > +		reg = <0x74000000 0x10000>;
> > > +		interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
> > > +	};
> > > +};
> > 
> > 
> > I think this file can be merged in to cv18xx-cpu.dtsi.
> > clint and plic is more like a core specific device.
> 
> Yes, this can be done now, as long as SOC_PERIPHERAL_IRQ() remains
> outside of the -cpu-intc.dtsi...
> 
> -- 
> Alexander Sverdlin.
> 

