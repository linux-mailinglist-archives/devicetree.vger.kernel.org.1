Return-Path: <devicetree+bounces-145950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87287A32DC2
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 18:44:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 497ED7A152B
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 17:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7952586C6;
	Wed, 12 Feb 2025 17:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ndjcPln9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EEB725B671
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 17:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739382262; cv=none; b=IAGhRXJLLhbRVOItW+XhJ45ShHIsN11Fd3zzSFlXJSEkqjEwx95FpqMRdM+9yI5zPajbFy3hAuXG5dTmzZZBm3JaJ68hvopxis+yCC0W+0NvvsB07c8nUmIKxFIufxjGqjnBVdZDadgLB/M4nKZGojxLKRO2ARDoCGBJlWFDozo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739382262; c=relaxed/simple;
	bh=sQ8352+ncwIvqlIopOzx+k7DzW3sWlwBNLQeAy0mqHc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=jRuAHrQ4hH/7l3WHwWyJYNAToKAKnjnyZQIySSgK90SK77QF2i3QmJPHKQwt7+Whhtx9XOa0ankvLw2XTJ6vusnlmPXQoeLIrIU5kvO5FXlrw4cUMWUomyObbs3kAh+Rpf8LOglVYsLEv0NU7FTViDTvDUu6CQG3vuUONvP3iV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ndjcPln9; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ab7e80c4b55so11545466b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 09:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739382259; x=1739987059; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HrtreOGrFy6HHZfLsMe2zUZL1+PbB03myiiB0TLgJeY=;
        b=ndjcPln9PjnTx9LA9GxCOXmubY2flRI38mJJkN9+AebQLkgBsRyZp9uHahK/2EB5As
         q+hPo1YYQZY9e7RBfKBGxaC49rEx7jN75m/VjFByQHdsiV4fyvzf+idSOIdQitj4GsXt
         t5Djm0sNlhCqjejkvn334LHQcdL4EOLu9/WPGGkYDTW2BITWiFPLW0gcDqTA6u9iMRqV
         zeuO6Le2n0r02e1vs+acBPY5M+WaAupWd45uZCooX0YnvY3j4mqjRYLP1qBE8HQMwDBQ
         X6hlD/ZB8lc+iQ8YgCAfqaaaLIBR8QqbVghyBD0BI9tfYhfYsdK8L6vGaviBZXyu6MJU
         2xng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739382259; x=1739987059;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HrtreOGrFy6HHZfLsMe2zUZL1+PbB03myiiB0TLgJeY=;
        b=jjKzcU2kASRLjqvb4o6F0c0V3t028PCeWC5iUfvXgSDLxe2c2Ih2+xL2eHFoMNeds7
         B+OD7uUQBfGtNJXB3yAPa7u+qlly/b4PuthpB94M/S7Kpu7wvWzuMVf1N/fxA2pleE56
         L68w0r2yfE8wHps/riOOrHiFQLtOI8FPgRjYMU+zaaYjWXU7lS+LPToyRBpdC9q5I/5j
         Hx1rKx0DrVWNS5WnLfJ1DkbiKfi8t1EdUsJtZlQyR3dF0w4dd+o/uyxYFYUmBRQ0xEz0
         EnuyKMyeQYd3jl/6jeC57IJXGpT1bZeBtkyz7g8bw7NMUX2gPWgfzraEOx58yDVHJPd9
         Iflw==
X-Forwarded-Encrypted: i=1; AJvYcCWFdCpE9JQuzbZCac1a1FqE1BIXSn66qX1ZeYkaNCVtrciFn3bZRH72V3G8UgX3aqJM50ku0YX5ne2I@vger.kernel.org
X-Gm-Message-State: AOJu0YxfulFneQeCKhlwDwqHuSKyPRwoODRMMZVH3foinu974nZZQxvz
	m46GQLrInTVIO9BP8V3JWgoudGbCGqIlhb14N2rMhjWyJdAWEZJF
X-Gm-Gg: ASbGncsDdYnvBby4B8uvO7+khSPLIXG9qeiKLIFs/0qA5wpNr7JYbAC2sOFVbYO8Yxa
	5x+6l+o741GJeZasylElp1wpOpegbgE1kH2/hvVmho49mlEoTq0rI/tmukANZd881hgiSFwdkAA
	m90xtlXU4CV50bz6WlxpIuHJFEvfmcFG0Ixc7wXvGur0/4fuC85Esy6vECLJW257Mmp95PfC3V8
	Oo00NViN0ZYVwDfyZgi0d5ruXxxAkO3nkt/jzpOPSImNuvjf8Jsk3WhhdJj+epkhvTrOTvFOxOC
	pRKH8syGMFJxYfUdShM7TAFJgMHdBy+m
X-Google-Smtp-Source: AGHT+IGXiN90fqBBtXBKAJxfVWN6FjbS5WH82cFrumS6AyosF6uuHB+mpyekgQzZiYjWjwTT1PPBcw==
X-Received: by 2002:a17:907:da3:b0:ab7:cc43:c52a with SMTP id a640c23a62f3a-aba501ab6aemr1428966b.52.1739382258565;
        Wed, 12 Feb 2025 09:44:18 -0800 (PST)
Received: from giga-mm.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7ba97704dsm719671166b.107.2025.02.12.09.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 09:44:18 -0800 (PST)
Message-ID: <26ddcdaadd777f170dbab51ab840c899f0edde24.camel@gmail.com>
Subject: Re: [PATCH v2 1/7] riscv: dts: sophgo: cv18xx: Move RiscV-specific
 part into SoCs' .dtsi files
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Inochi Amaoto
 <inochiama@gmail.com>, 	soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto
 <inochiama@outlook.com>, 	linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Haylen Chu	 <heylenay@outlook.com>,
 linux-arm-kernel@lists.infradead.org, Paul Walmsley	
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou	
 <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, Chao Wei	
 <chao.wei@sophgo.com>
Date: Wed, 12 Feb 2025 18:44:15 +0100
In-Reply-To: <33654180-5488-4601-9103-8e4218c4a198@kernel.org>
References: <20250210220951.1248533-1-alexander.sverdlin@gmail.com>
	 <20250210220951.1248533-2-alexander.sverdlin@gmail.com>
	 <uvy62iqzul6kajzsmiaovdzogftcsc5b53cswkv4cbxh4w6som@32libbd7kffq>
	 <708cdc497b8474609989395dbf8a0898037a22de.camel@gmail.com>
	 <33654180-5488-4601-9103-8e4218c4a198@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi=20

On Wed, 2025-02-12 at 17:46 +0100, Krzysztof Kozlowski wrote:
> > > > Make the peripheral device tree re-usable on ARM64 platform by movi=
ng CPU
> > > > core and interrupt controllers' parts into the respective per-SoC .=
dtsi
> > > > files.
> > > >=20
> > > > Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nub=
ering
> > > > into "plic" interrupt-controller numbering.
> > > >=20
> > > > Have a nice refactoring side-effect that "plic" and "clint" "compat=
ible"
> > > > property is not specified outside of the corresponding device itsel=
f.
> > > >=20
> > > > Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> > > > ---
> > > > Changelog:
> > > > v2:
> > > > - instead of carving out peripherals' part, carve out ARCH-specific=
s (CPU
> > > > core, interrupt controllers) and spread them among 3 SoC .dtsi file=
s which
> > > > included cv18xx.dtsi;
> > > > - define a label for the "soc" node and use it in the newly introdu=
ced DTs;
> > > >=20
> > > > =C2=A0arch/riscv/boot/dts/sophgo/cv1800b.dtsi=C2=A0=C2=A0=C2=A0 | 6=
4 ++++++++++++---
> > > > =C2=A0arch/riscv/boot/dts/sophgo/cv1812h.dtsi=C2=A0=C2=A0=C2=A0 | 6=
4 ++++++++++++---
> > > > =C2=A0arch/riscv/boot/dts/sophgo/cv181x.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 2 +-
> > > > =C2=A0arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi | 57 +++++++++++++=
+
> > > > =C2=A0arch/riscv/boot/dts/sophgo/cv18xx.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 | 91 ++++++----------------
> > > > =C2=A0arch/riscv/boot/dts/sophgo/sg2002.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 | 64 ++++++++++++---
> > > > =C2=A06 files changed, 240 insertions(+), 102 deletions(-)
> > > > =C2=A0create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
> > > >=20
> > > > diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/b=
oot/dts/sophgo/cv1800b.dtsi
> > > > index aa1f5df100f0..eef2884b36f9 100644
> > > > --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > > > +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > > > @@ -3,6 +3,8 @@
> > > > =C2=A0 * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > > > =C2=A0 */
> > > > =C2=A0
> > > > +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> > > > +
> > > > =C2=A0#include <dt-bindings/pinctrl/pinctrl-cv1800b.h>
> > > > =C2=A0#include "cv18xx.dtsi"
> > > > =C2=A0
> > > > @@ -14,22 +16,62 @@ memory@80000000 {
> > > > =C2=A0		reg =3D <0x80000000 0x4000000>;
> > > > =C2=A0	};
> > > > =C2=A0
> > >=20
> > > > -	soc {
> > > > -		pinctrl: pinctrl@3001000 {
> > > > -			compatible =3D "sophgo,cv1800b-pinctrl";
> > > > -			reg =3D <0x03001000 0x1000>,
> > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x05027000 0x1000>;
> > > > -			reg-names =3D "sys", "rtc";
> > >=20
> > >=20
> > > > +	cpus: cpus {
> > > > +		#address-cells =3D <1>;
> > > > +		#size-cells =3D <0>;
> > > > +		timebase-frequency =3D <25000000>;
> > > > +
> > > > +		cpu0: cpu@0 {
> > > > +			compatible =3D "thead,c906", "riscv";
> > > > +			device_type =3D "cpu";
> > > > +			reg =3D <0>;
> > > > +			d-cache-block-size =3D <64>;
> > > > +			d-cache-sets =3D <512>;
> > > > +			d-cache-size =3D <65536>;
> > > > +			i-cache-block-size =3D <64>;
> > > > +			i-cache-sets =3D <128>;
> > > > +			i-cache-size =3D <32768>;
> > > > +			mmu-type =3D "riscv,sv39";
> > > > +			riscv,isa =3D "rv64imafdc";
> > > > +			riscv,isa-base =3D "rv64i";
> > > > +			riscv,isa-extensions =3D "i", "m", "a", "f", "d", "c", "zicntr"=
, "zicsr",
> > > > +					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "zifencei", "zihpm";
> > > > +
> > > > +			cpu0_intc: interrupt-controller {
> > > > +				compatible =3D "riscv,cpu-intc";
> > > > +				interrupt-controller;
> > > > +				#interrupt-cells =3D <1>;
> > > > +			};
> > > > =C2=A0		};
> > > > =C2=A0	};
> > > > =C2=A0};
> > >=20
> > > Make all soc definition include the common cpu file.=20
> > > Not just copy it.
> >=20
> > I was acting according to Krzysztof's suggestion:
> > https://lore.kernel.org/soc/d3ba0ea5-0491-42d5-a18e-64cf21df696c@kernel=
.org/
> >=20
> > Krzysztof, I can name the file cv18xx-cpu-intc.dtsi and pack CPU core +=
 interrupt
> > controllers into it. Would it make sense?
>=20
>=20
> I don't understand the original suggestion.

This is the snippet in question:

---[ cut ]---
#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)

/ {
	cpus: cpus {
		#address-cells =3D <1>;
		#size-cells =3D <0>;
		timebase-frequency =3D <25000000>;

		cpu0: cpu@0 {
			compatible =3D "thead,c906", "riscv";
			device_type =3D "cpu";
			reg =3D <0>;
			d-cache-block-size =3D <64>;
			d-cache-sets =3D <512>;
			d-cache-size =3D <65536>;
			i-cache-block-size =3D <64>;
			i-cache-sets =3D <128>;
			i-cache-size =3D <32768>;
			mmu-type =3D "riscv,sv39";
			riscv,isa =3D "rv64imafdc";
			riscv,isa-base =3D "rv64i";
			riscv,isa-extensions =3D "i", "m", "a", "f", "d", "c", "zicntr", "zicsr"=
,
					       "zifencei", "zihpm";

			cpu0_intc: interrupt-controller {
				compatible =3D "riscv,cpu-intc";
				interrupt-controller;
				#interrupt-cells =3D <1>;
			};
		};
	};
};

&soc {
	interrupt-parent =3D <&plic>;
	dma-noncoherent;

	plic: interrupt-controller@70000000 {
		reg =3D <0x70000000 0x4000000>;
		interrupts-extended =3D <&cpu0_intc 11>, <&cpu0_intc 9>;
		interrupt-controller;
		#address-cells =3D <0>;
		#interrupt-cells =3D <2>;
		riscv,ndev =3D <101>;
	};

	clint: timer@74000000 {
		reg =3D <0x74000000 0x10000>;
		interrupts-extended =3D <&cpu0_intc 3>, <&cpu0_intc 7>;
	};
};
---[ cut ]---

Inochi's proposal is to put it into separate cv18xx-cpu-intc.dtsi and
include the latter in 3 other SoC-specific .dtsis. In v2 I've just
duplicated the above snippet 3 times (refer to diffstat above).

What are your thoughts? In Renesas everything is duplicated, I believe.
Sophgo outsources much smaller snippets into .dtsi (refer to cv181x.dtsi).=
=20

> Inochi, please trim unnecessary context from replies.

--=20
Alexander Sverdlin.


