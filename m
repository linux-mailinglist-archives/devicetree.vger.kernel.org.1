Return-Path: <devicetree+bounces-146073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C04A33327
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 00:04:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94AE8188A44E
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98CE1205AC3;
	Wed, 12 Feb 2025 23:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gy2Yod+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5881FF7D8
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739401484; cv=none; b=BPxm609QKf0tUTT1lz8G7Yv97h6w4w1hM4zg2A8IFW71mYyop6EzQ8TVSsEZHU9BvyxBBvAUhZLXNvJum2d7Ke45iJweUb5rAe+A2QSS67Vg8kbR4eBJCglqqUXSv295hNEFZiFPTGT7Yl02xceBgecFs1VYSItrxO7FB+4N/3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739401484; c=relaxed/simple;
	bh=K5P3yIQJQi3vzhUr8edMNBHn0bPLpcmvOPeuISFlELE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=p2NIB7oE1QKzYn5xPWAb5/gy4WnSU4eoDYV5iA1WCKNxR/RdowUCNpa2ln6oOnGSXqxEHcCWyaHbKgiXaOKe3FWdJfPRX/Y0Uck8TxvxGzzABkE3HKS/8SOSjwC4iBvC/+Vpyq5lX6kr7x0D7/8UlcOLcLGDewW32/eS4e24ZGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gy2Yod+k; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ab7f838b92eso32371566b.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 15:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739401481; x=1740006281; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WnvvgxUa+KKbKiMSC06fC7YcvSohcjyPqj0goaa/usY=;
        b=gy2Yod+keRTALkSzPaIkdneYlkHgT1kZLMA7DHb79NjA6uiK52HzoNFw6/lvY1uPkP
         1OndElqQJ9fvnh9Vxu8DcbTM4gscIbi7VbwWiP5/vzTORKIavgX3gUEdCad+rLRyxFE7
         LFIa927ug+7ueuEda4yuq60B/OFF4CRgQRdTTfw85RUJYSbvjaRErXA/BT3okUiP9Of0
         uPQcUqTl1GgW7dkWubRIlThkkThG7259tF3ETkTswf8jq74a5NLOfOOUPr6DFzHgVqaX
         yTX6a5FnDeCHE/P0jJx9G29rbqLWQ2YWJJO0wN9MfawvV9BnvDNlQlH4rn6OrbemeI3d
         1nQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739401481; x=1740006281;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WnvvgxUa+KKbKiMSC06fC7YcvSohcjyPqj0goaa/usY=;
        b=DbEsXcU8UmcZqSFVM4cYfcEYfyRJMqobF+3V9dRM3juLD/er9opiI6JkBapQuZOmLx
         d5ISba3UZvSMnVYT+/7BKJ19u1rdCXimMdw6ANMkjqbgpdXhVi+BiOudkTs0Taw1Q5SS
         EGg9hjjFWQ7EMsaeFzGrO96TAl1TbzcpvskiAqTYuSW7pRsOlNZtecr0Db1oq+3U2c0U
         zcgrzvCcqQiteEjR1pmNDMeCbqfbC6Pzn6k8DWkYv7D37YJhSAlTIvSHMODUr1wL1YX0
         iLCSzRTwkI7feJSN/PRebpyuleFJ1yVE8lQTi4cEZVNIBIo/Qe5lCh1ZGLKohVZZXKNa
         xVaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmV5/hYw/iNRylwcW0FmsSWbazeaGF60HfHiaaU0yjAor/qeENcUj36cqHRU8I0+6Y/e1P6HNJ09Zy@vger.kernel.org
X-Gm-Message-State: AOJu0YyI0FrgOFqRlKkXGKc0zpuvmh33WSR7w0e8DHgMRRSYwEIeSTbO
	3abDWciaiGz51N1XLqIGZEBmYKp33i5k3epulVOjhedj+Uj/d6PA
X-Gm-Gg: ASbGnctLsAvl5+YPMwRWyMWVZCJ+0CK/3jp5nnIhXM9az8vy5xacD17KI/1us9wILwV
	37WrwGrdUz2J3egFyWLi1RH8ghJE9KigPixjN1Y1rfwoVrEFn7mw/CsZf0XdFXbBbgA5Xq9n9vN
	fl9E0UTQAwE3DumGAHXkRtJMjw3QYpV3jMKmE2zouSO1Wtjb3YNri920PZdMsFe5buA+SENAi0Y
	n7N4Jkb68LbGv1e37lOmm1vkc7qDz1losX9/hKlljcr9xZtKEIgS3M8tgSZCxcUSy1FIXS+Dqm/
	nWoZBOMd1ip6NgZWlSU0pXGv7rbM1RdC
X-Google-Smtp-Source: AGHT+IE13NRMWydnWFjBAbDzcuJOpocvAbpPyYkr9ja8EJrYZQxfsWwpOeQrG6UZLNr7eU9mjShGdg==
X-Received: by 2002:a17:907:3f1c:b0:ab7:1816:e8a with SMTP id a640c23a62f3a-aba5018d61dmr111884266b.36.1739401480710;
        Wed, 12 Feb 2025 15:04:40 -0800 (PST)
Received: from giga-mm.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba53231f4dsm10687266b.23.2025.02.12.15.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 15:04:40 -0800 (PST)
Message-ID: <de4d99bf89f78a0a6e0a81dc6062af5e85d762aa.camel@gmail.com>
Subject: Re: [PATCH v3 1/7] riscv: dts: sophgo: cv18xx: Move RiscV-specific
 part into SoCs' .dtsi files
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto
 <inochiama@outlook.com>, 	linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Haylen Chu	 <heylenay@outlook.com>,
 linux-arm-kernel@lists.infradead.org, Paul Walmsley	
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou	
 <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, Chao Wei	
 <chao.wei@sophgo.com>
Date: Thu, 13 Feb 2025 00:04:39 +0100
In-Reply-To: <x4zncooa3lmyf2bikowjw7oabz66dhhbxl44cmujzzkwaslcl5@tj3l2u7e4akx>
References: <20250212224347.1767819-1-alexander.sverdlin@gmail.com>
	 <20250212224347.1767819-2-alexander.sverdlin@gmail.com>
	 <x4zncooa3lmyf2bikowjw7oabz66dhhbxl44cmujzzkwaslcl5@tj3l2u7e4akx>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Inochi!

On Thu, 2025-02-13 at 06:54 +0800, Inochi Amaoto wrote:
> On Wed, Feb 12, 2025 at 11:43:33PM +0100, Alexander Sverdlin wrote:
> > Make the peripheral device tree re-usable on ARM64 platform by moving C=
PU
> > core and interrupt controllers' parts into new cv18xx-cpu.dtsi and
> > cv18xx-intc.dtsi.
> >=20
> > Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nuberin=
g
> > into "plic" interrupt-controller numbering.
> >=20
> > On RiscV side this patch has been dtc-compile-tested only. IRQ numbers
> > substitution with SOC_PERIPHERAL_IRQ() has been scripted in vim.
> >=20
> > Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> > ---
> > Changelog:
> > v3:
> > - &cpus node has been moved into cv18xx-cpu.dtsi, &plic and &clint node=
s
> > were moved into cv18xx-intc.dtsi to reduce code duplication;
> > v2:
> > - instead of carving out peripherals' part, carve out ARCH-specifics (C=
PU
> > core, interrupt controllers) and spread them among 3 SoC .dtsi files wh=
ich
> > included cv18xx.dtsi;
> > - define a label for the "soc" node and use it in the newly introduced =
DTs;
> >=20
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv1800b.dtsi=C2=A0=C2=A0=C2=A0=C2=A0 =
| 28 ++++---
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv1812h.dtsi=C2=A0=C2=A0=C2=A0=C2=A0 =
| 28 ++++---
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv181x.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 2 +-
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi=C2=A0 | 36 ++++++++
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi | 23 ++++++
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv18xx.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 91 ++++++---------------
> > =C2=A0 arch/riscv/boot/dts/sophgo/sg2002.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 34 ++++----
> > =C2=A0 7 files changed, 137 insertions(+), 105 deletions(-)
> > =C2=A0 create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-cpu.dtsi
> > =C2=A0 create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi
> >=20
> > diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/=
dts/sophgo/cv1800b.dtsi
> > index aa1f5df100f0..9fb7dd2dab18 100644
> > --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > @@ -3,8 +3,12 @@
> > =C2=A0=C2=A0 * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > =C2=A0=C2=A0 */
> > =C2=A0=20
> > +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> > +
> > =C2=A0 #include <dt-bindings/pinctrl/pinctrl-cv1800b.h>
> > +#include "cv18xx-cpu.dtsi"
> > =C2=A0 #include "cv18xx.dtsi"
> > +#include "cv18xx-intc.dtsi"
> > =C2=A0=20
> > =C2=A0 / {
> > =C2=A0=C2=A0	compatible =3D "sophgo,cv1800b";
> > @@ -13,17 +17,23 @@ memory@80000000 {
> > =C2=A0=C2=A0		device_type =3D "memory";
> > =C2=A0=C2=A0		reg =3D <0x80000000 0x4000000>;
> > =C2=A0=C2=A0	};
> > +};
> > +
>=20
> > +&soc {
> > +	dma-noncoherent;
> > =C2=A0=20
> > -	soc {
> > -		pinctrl: pinctrl@3001000 {
> > -			compatible =3D "sophgo,cv1800b-pinctrl";
> > -			reg =3D <0x03001000 0x1000>,
> > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x05027000 0x1000>;
> > -			reg-names =3D "sys", "rtc";
> > -		};
> > +	pinctrl: pinctrl@3001000 {
> > +		compatible =3D "sophgo,cv1800b-pinctrl";
> > +		reg =3D <0x03001000 0x1000>,
> > +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x05027000 0x1000>;
> > +		reg-names =3D "sys", "rtc";
> > =C2=A0=C2=A0	};
> > =C2=A0 };
> > =C2=A0=20
>=20
> The origianl /soc path can be used to override things,=20
> why change it to the reference archor? I see no change
> for it.

https://lore.kernel.org/soc/d3ba0ea5-0491-42d5-a18e-64cf21df696c@kernel.org=
/
The corresponding label is being introduced in cv18xx.dtsi.

> > +&clk {
> > +	compatible =3D "sophgo,cv1800-clk";
> > +};
> > +
> > =C2=A0 &plic {
> > =C2=A0=C2=A0	compatible =3D "sophgo,cv1800b-plic", "thead,c900-plic";
> > =C2=A0 };
> > @@ -31,7 +41,3 @@ &plic {
> > =C2=A0 &clint {
> > =C2=A0=C2=A0	compatible =3D "sophgo,cv1800b-clint", "thead,c900-clint";
> > =C2=A0 };
> > -
> > -&clk {
> > -	compatible =3D "sophgo,cv1800-clk";
> > -};
> > diff --git a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi b/arch/riscv/boot/=
dts/sophgo/cv1812h.dtsi
> > index 8a1b95c5116b..f23c4dd6687d 100644
> > --- a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> > +++ b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> > @@ -3,10 +3,14 @@
> > =C2=A0=C2=A0 * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> > =C2=A0=C2=A0 */
> > =C2=A0=20
> > +#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
> > +
> > =C2=A0 #include <dt-bindings/interrupt-controller/irq.h>
> > =C2=A0 #include <dt-bindings/pinctrl/pinctrl-cv1812h.h>
> > +#include "cv18xx-cpu.dtsi"
> > =C2=A0 #include "cv18xx.dtsi"
> > =C2=A0 #include "cv181x.dtsi"
> > +#include "cv18xx-intc.dtsi"
> > =C2=A0=20
> > =C2=A0 / {
> > =C2=A0=C2=A0	compatible =3D "sophgo,cv1812h";
> > @@ -15,17 +19,23 @@ memory@80000000 {
> > =C2=A0=C2=A0		device_type =3D "memory";
> > =C2=A0=C2=A0		reg =3D <0x80000000 0x10000000>;
> > =C2=A0=C2=A0	};
> > +};
> > +
> > +&soc {
>=20
> > +	dma-noncoherent;
>=20
> I think this can be moved into cv18xx-cpu.dtsi file, and let
> all SoCs share it.

https://lore.kernel.org/soc/d3ba0ea5-0491-42d5-a18e-64cf21df696c@kernel.org=
/

If SOC_PERIPHERAL_IRQ() doesn't belong to -cpu.dtsi, then "dma-noncoherent;=
"
probably neither...

> > -	soc {
> > -		pinctrl: pinctrl@3001000 {
> > -			compatible =3D "sophgo,cv1812h-pinctrl";
> > -			reg =3D <0x03001000 0x1000>,
> > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x05027000 0x1000>;
> > -			reg-names =3D "sys", "rtc";
> > -		};
> > +	pinctrl: pinctrl@3001000 {
> > +		compatible =3D "sophgo,cv1812h-pinctrl";
> > +		reg =3D <0x03001000 0x1000>,
> > +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x05027000 0x1000>;
> > +		reg-names =3D "sys", "rtc";
> > =C2=A0=C2=A0	};
> > =C2=A0 };
> > =C2=A0=20
> > +&clk {
> > +	compatible =3D "sophgo,cv1810-clk";
> > +};
> > +
> > =C2=A0 &plic {
> > =C2=A0=C2=A0	compatible =3D "sophgo,cv1812h-plic", "thead,c900-plic";
> > =C2=A0 };
> > @@ -33,7 +43,3 @@ &plic {
> > =C2=A0 &clint {
> > =C2=A0=C2=A0	compatible =3D "sophgo,cv1812h-clint", "thead,c900-clint";
> > =C2=A0 };
> > -
> > -&clk {
> > -	compatible =3D "sophgo,cv1810-clk";
> > -};
> >=20
> > [...]
> >=20
>=20
> > diff --git a/arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi b/arch/riscv/b=
oot/dts/sophgo/cv18xx-intc.dtsi
> > new file mode 100644
> > index 000000000000..90817993a326
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/sophgo/cv18xx-intc.dtsi
> > @@ -0,0 +1,23 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > + * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> > + */
> > +
> > +&soc {
> > +	interrupt-parent =3D <&plic>;
> > +
> > +	plic: interrupt-controller@70000000 {
> > +		reg =3D <0x70000000 0x4000000>;
> > +		interrupts-extended =3D <&cpu0_intc 11>, <&cpu0_intc 9>;
> > +		interrupt-controller;
> > +		#address-cells =3D <0>;
> > +		#interrupt-cells =3D <2>;
> > +		riscv,ndev =3D <101>;
> > +	};
> > +
> > +	clint: timer@74000000 {
> > +		reg =3D <0x74000000 0x10000>;
> > +		interrupts-extended =3D <&cpu0_intc 3>, <&cpu0_intc 7>;
> > +	};
> > +};
>=20
>=20
> I think this file can be merged in to cv18xx-cpu.dtsi.
> clint and plic is more like a core specific device.

Yes, this can be done now, as long as SOC_PERIPHERAL_IRQ() remains
outside of the -cpu-intc.dtsi...

--=20
Alexander Sverdlin.


