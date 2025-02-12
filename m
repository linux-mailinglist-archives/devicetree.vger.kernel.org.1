Return-Path: <devicetree+bounces-146064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E90E3A332B2
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:32:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB17B3A1C89
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E2E01FFC59;
	Wed, 12 Feb 2025 22:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MLyPFXsE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8A5204594
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739399535; cv=none; b=JoDexb07noxOaqIbeN8sWVtvhuJNu/YF1q/SBAOzntD2jm2g5DQtZscGfa9EkucTR+mAbH04ZuvvmoHJ7xf5iypKx5SDzVKfSL0mh5bUKRiSnLh4Hp7OCvNkIlBKkxBYWwg1sNfv7H7d3eq2fT+VjPV4qiPzbI5CF3oHtt8gtc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739399535; c=relaxed/simple;
	bh=j1eT+O85hlyOQSVBa9s7fs7XOTrBjtmt3E1zPb49wJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fguX5N1Lzp0GDBPx7eGnJ76aJAFB1KRIDpscSUuzvhLhhf21ZwuoyZdCGc7GU8k5Kju9SzIf+9KGTUZeZ3DoKyTLJhBT2cc7pBd6yGTk5YuBVrs1EF2COfwnsCVyCiUvpOH7VpHZfWFOCZBWwL47Y5w6qCrxoA1LddDA1/S/Ohc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MLyPFXsE; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-46c8474d8f6so1528571cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739399532; x=1740004332; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fUr0H+SXHQT1lUc7jxH0wWFj1nSXfhC6q3UwDoztgd4=;
        b=MLyPFXsEdIdrNTAtIZOFZ+CA2uxMScX2uEEPtOG6F7Iu661kYcpS6mjCoRJf11aSq2
         8cr+wzAdv+hWV14Xs+NXu7XdKKiLaCCH1Lrt1KNNbB1lTGQNj+muAtJDisulNnwwhCtt
         ZzQA9Ie9zSrMIwqaaK8jgWnFdkgFhCheDbi3/Eas1F9xyJb2yAN0B5YlB62OV4GMhmjK
         AzXRqjtahnMzXzhi3Byp1jyotScVhIcpBSJMAW0bsipL/03nFXdEn+8mjdkvlGJaB19J
         qKj3kGimc7NtScnBHi3ILW8FZcF7NeA8uytmTkL+k5SCzUobRpKUIN/rVLkoTjBMy7/Y
         kMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739399532; x=1740004332;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fUr0H+SXHQT1lUc7jxH0wWFj1nSXfhC6q3UwDoztgd4=;
        b=eVpOnIc+qjzNBA/4Bub6gHKCBFnejSjn/w2lRkhULmC5d2CPsg5nTTilUPtDeXoRxm
         W78pxGW+ImeBKRlufOSUXHLtErARme113nxQvVQiqgITNd0HrbTzfyeNIogC1vt0PKN6
         4t6OXbP2vGe27FMdZFEQ/I/WFIkYrU9xlkh7lFtBhdE23wu2xKvtrBuS4CRDLMS3RIs8
         Cn0QNioNr1jo1DzaLihd7ozn1SvSQK5qCNowu+uDENS6G+BMsnGspMvyGf9XBVdabIpc
         nmh+yYn2uIDqKXS44fAJg/uglIbFNS1xZXNGEZ0symfFvCpzeVUVyFabRnLmdIM8p0Bj
         LkWw==
X-Forwarded-Encrypted: i=1; AJvYcCU14lNN/urGO/PaQX7HRSzmyCPZAo+cMAEclQX3Tfki9okvHjSSqahUWkAT6h3we2UPip6SocbUmy9O@vger.kernel.org
X-Gm-Message-State: AOJu0YxxF50AQoa9oY8KiorzmmLIbMzh/LaUXXw8KlaN6brTIZcF6+pv
	pjxV3ppW5yikNHW8GEz39DqpeFrJuwhwIyAhwW3Tx9Dncfe2Zb6h
X-Gm-Gg: ASbGncvjGswUQj11GLPs0On9vvFxmiRT7YQU+ICNGDmJ1qggJbXWx6n/SeVrQDc8ToD
	SOZX2XN05za15u/yQkHYWdOTwBEdmeWFppOTYESoKyLgvZHXcq9z17UJskvLzYNglYnFtQYjwqm
	QYi40l3R8NsQwMqkQBXThApiN3OD4BedPolsii5g689XT7wsIRibgKNCN8uFYz5bgmGPT82+E2r
	z4armVovUWbHWR9YL7hu3bWT8XjfqnupJQaFSNy1i4bS2xzQYoGarfqD0KT/+2pA5o=
X-Google-Smtp-Source: AGHT+IEPcrCiGeOkqafPaVURwJp7Qb4Yt0GHFujetg+DodT2FOsPmQ0dYyGcpQXhkKAJADav8FffYQ==
X-Received: by 2002:ac8:5f0a:0:b0:46e:59a3:6db7 with SMTP id d75a77b69052e-471b06361f4mr79988591cf.23.1739399532151;
        Wed, 12 Feb 2025 14:32:12 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id d75a77b69052e-47153beb4c1sm80549901cf.70.2025.02.12.14.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 14:32:11 -0800 (PST)
Date: Thu, 13 Feb 2025 06:32:03 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Inochi Amaoto <inochiama@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Haylen Chu <heylenay@outlook.com>, linux-arm-kernel@lists.infradead.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Chao Wei <chao.wei@sophgo.com>
Subject: Re: [PATCH v2 1/7] riscv: dts: sophgo: cv18xx: Move RiscV-specific
 part into SoCs' .dtsi files
Message-ID: <dupbhhptamznuxhak5rysoa77vhejzkiqhbvxj6lh2ryqsnyls@gpax4lgxlhl7>
References: <20250210220951.1248533-1-alexander.sverdlin@gmail.com>
 <20250210220951.1248533-2-alexander.sverdlin@gmail.com>
 <uvy62iqzul6kajzsmiaovdzogftcsc5b53cswkv4cbxh4w6som@32libbd7kffq>
 <708cdc497b8474609989395dbf8a0898037a22de.camel@gmail.com>
 <33654180-5488-4601-9103-8e4218c4a198@kernel.org>
 <26ddcdaadd777f170dbab51ab840c899f0edde24.camel@gmail.com>
 <a01de9d5-726c-4064-9617-86e01aa7e75c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a01de9d5-726c-4064-9617-86e01aa7e75c@kernel.org>

On Wed, Feb 12, 2025 at 08:24:55PM +0100, Krzysztof Kozlowski wrote:
> On 12/02/2025 18:44, Alexander Sverdlin wrote:
> > Hi 
> > 
> > On Wed, 2025-02-12 at 17:46 +0100, Krzysztof Kozlowski wrote:
> >>>>> Make the peripheral device tree re-usable on ARM64 platform by moving CPU
> >>>>> core and interrupt controllers' parts into the respective per-SoC .dtsi
> >>>>> files.
> >>>>>
> >>>>> Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nubering
> >>>>> into "plic" interrupt-controller numbering.
> >>>>>
> >>>>> Have a nice refactoring side-effect that "plic" and "clint" "compatible"
> >>>>> property is not specified outside of the corresponding device itself.
> >>>>>
> >>>>> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> >>>>> ---
> >>>>> Changelog:
> >>>>> v2:
> >>>>> - instead of carving out peripherals' part, carve out ARCH-specifics (CPU
> >>>>> core, interrupt controllers) and spread them among 3 SoC .dtsi files which
> >>>>> included cv18xx.dtsi;
> >>>>> - define a label for the "soc" node and use it in the newly introduced DTs;
> >>>>>
> >>>>>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi    | 64 ++++++++++++---
> >>>>>  arch/riscv/boot/dts/sophgo/cv1812h.dtsi    | 64 ++++++++++++---
> >>>>>  arch/riscv/boot/dts/sophgo/cv181x.dtsi     |  2 +-
> >>>>>  arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi | 57 ++++++++++++++
> >>>>>  arch/riscv/boot/dts/sophgo/cv18xx.dtsi     | 91 ++++++----------------
> >>>>>  arch/riscv/boot/dts/sophgo/sg2002.dtsi     | 64 ++++++++++++---
> >>>>>  6 files changed, 240 insertions(+), 102 deletions(-)
> >>>>>  create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
> >>>>>
> >>>>> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >>>>> index aa1f5df100f0..eef2884b36f9 100644
> >>>>> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >>>>> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >>>>> @@ -3,6 +3,8 @@
> >>>>>   * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> >>>>>   */
> >>>>>  
> >>>>> +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> >>>>> +
> >>>>>  #include <dt-bindings/pinctrl/pinctrl-cv1800b.h>
> >>>>>  #include "cv18xx.dtsi"
> >>>>>  
> >>>>> @@ -14,22 +16,62 @@ memory@80000000 {
> >>>>>  		reg = <0x80000000 0x4000000>;
> >>>>>  	};
> >>>>>  
> >>>>
> >>>>> -	soc {
> >>>>> -		pinctrl: pinctrl@3001000 {
> >>>>> -			compatible = "sophgo,cv1800b-pinctrl";
> >>>>> -			reg = <0x03001000 0x1000>,
> >>>>> -			      <0x05027000 0x1000>;
> >>>>> -			reg-names = "sys", "rtc";
> >>>>
> >>>>
> >>>>> +	cpus: cpus {
> >>>>> +		#address-cells = <1>;
> >>>>> +		#size-cells = <0>;
> >>>>> +		timebase-frequency = <25000000>;
> >>>>> +
> >>>>> +		cpu0: cpu@0 {
> >>>>> +			compatible = "thead,c906", "riscv";
> >>>>> +			device_type = "cpu";
> >>>>> +			reg = <0>;
> >>>>> +			d-cache-block-size = <64>;
> >>>>> +			d-cache-sets = <512>;
> >>>>> +			d-cache-size = <65536>;
> >>>>> +			i-cache-block-size = <64>;
> >>>>> +			i-cache-sets = <128>;
> >>>>> +			i-cache-size = <32768>;
> >>>>> +			mmu-type = "riscv,sv39";
> >>>>> +			riscv,isa = "rv64imafdc";
> >>>>> +			riscv,isa-base = "rv64i";
> >>>>> +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> >>>>> +					       "zifencei", "zihpm";
> >>>>> +
> >>>>> +			cpu0_intc: interrupt-controller {
> >>>>> +				compatible = "riscv,cpu-intc";
> >>>>> +				interrupt-controller;
> >>>>> +				#interrupt-cells = <1>;
> >>>>> +			};
> >>>>>  		};
> >>>>>  	};
> >>>>>  };
> >>>>
> >>>> Make all soc definition include the common cpu file. 
> >>>> Not just copy it.
> >>>
> >>> I was acting according to Krzysztof's suggestion:
> >>> https://lore.kernel.org/soc/d3ba0ea5-0491-42d5-a18e-64cf21df696c@kernel.org/
> >>>
> >>> Krzysztof, I can name the file cv18xx-cpu-intc.dtsi and pack CPU core + interrupt
> >>> controllers into it. Would it make sense?
> >>
> >>
> >> I don't understand the original suggestion.
> > 
> > This is the snippet in question:
> > 
> > ---[ cut ]---
> > #define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> > 
> > / {
> > 	cpus: cpus {
> > 		#address-cells = <1>;
> > 		#size-cells = <0>;
> > 		timebase-frequency = <25000000>;
> > 
> > 		cpu0: cpu@0 {
> > 			compatible = "thead,c906", "riscv";
> > 			device_type = "cpu";
> > 			reg = <0>;
> > 			d-cache-block-size = <64>;
> > 			d-cache-sets = <512>;
> > 			d-cache-size = <65536>;
> > 			i-cache-block-size = <64>;
> > 			i-cache-sets = <128>;
> > 			i-cache-size = <32768>;
> > 			mmu-type = "riscv,sv39";
> > 			riscv,isa = "rv64imafdc";
> > 			riscv,isa-base = "rv64i";
> > 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> > 					       "zifencei", "zihpm";
> > 
> > 			cpu0_intc: interrupt-controller {
> > 				compatible = "riscv,cpu-intc";
> > 				interrupt-controller;
> > 				#interrupt-cells = <1>;
> > 			};
> > 		};
> > 	};
> > };
> > 
> > &soc {
> > 	interrupt-parent = <&plic>;
> > 	dma-noncoherent;
> > 
> > 	plic: interrupt-controller@70000000 {
> > 		reg = <0x70000000 0x4000000>;
> > 		interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> > 		interrupt-controller;
> > 		#address-cells = <0>;
> > 		#interrupt-cells = <2>;
> > 		riscv,ndev = <101>;
> > 	};
> > 
> > 	clint: timer@74000000 {
> > 		reg = <0x74000000 0x10000>;
> > 		interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
> > 	};
> > };
> > ---[ cut ]---
> > 
> > Inochi's proposal is to put it into separate cv18xx-cpu-intc.dtsi and
> > include the latter in 3 other SoC-specific .dtsis. In v2 I've just
> > duplicated the above snippet 3 times (refer to diffstat above).
> > 
> > What are your thoughts? In Renesas everything is duplicated, I believe.
> > Sophgo outsources much smaller snippets into .dtsi (refer to cv181x.dtsi). 
> 
> If it represents some shared design/part, then it feels good.
> Best regards,
> Krzysztof

Yes, it does share the same design.

Regards,
Inochi

