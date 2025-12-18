Return-Path: <devicetree+bounces-248018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD905CCDDA4
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 23:44:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CACC13019E24
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 22:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88CD5309DC0;
	Thu, 18 Dec 2025 22:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WfJUYKX4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC90C2D9EF3
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 22:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766097847; cv=none; b=MSZDWq7RckLRc36bhlL5iymPJv3kBNwS2YqwA3w+c0g3tfA+Mp0sEM0RhWwVVxZtW+Nb2ExudDrANkCjOt8tV4VLMhr/xzMF5AmAXt+159UQfwVD4ON27d+NH8tnorPSQDFCH77ZJjv4lW3PeHzg4Tveo1i1xfAJh5lcXJdzbQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766097847; c=relaxed/simple;
	bh=GuDHRV7Wtw4/EUs3qYgLvnTsv99V+ei7MivBMLJNjv8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bHDceXvHTdR59f/WGPDBPTdwW3y6wUKV/vzRttt4UvQkAYovbERHfloPprZ7aqbRkRelsqL6BIdmmjWnwndXSjTndretk5P9zTE/67RPBz+DJNiwXY+Y75dLMDNkPJm/Cw3l78mM2T3fyJ3pr66V0wxOmU0LLZsP/y1ckPFk3fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WfJUYKX4; arc=none smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-6446fcddf2fso1082300d50.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 14:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766097844; x=1766702644; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tNtkMphr11RONSM4Q0l7F/V0bPE7UA2WWJNfv0nmNOE=;
        b=WfJUYKX4IUJkg7tV74SE3I3o28z/WbR1DPku7aFJSGEqAt/3Bs4oWXl1cphFwHonah
         RUVxuTmXQwX7B74a2LfSPebEUNxd1rqrN/jtQsJQynKFK73os9thEZAPVulxN2Qd/ETb
         PULk7P7yr4jpDc2bNg7y2vtFU4xS+siagAcRVtcIOvjkBcKPGNfb3umYk2j5fdT0M7Dw
         6GK5MEel/fQSL8hYPjM53ofeCX8iLrv3RRXZWTZiXiZAQilOuETGizPg/Wo4isA9IhJU
         N7lNHAn9gHG6AOXypuDGIhuoM2FKMKX+r2kxS2mQFWE1ZDTep/ZDLcjC3+S9X0iaRGx4
         YGMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766097844; x=1766702644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tNtkMphr11RONSM4Q0l7F/V0bPE7UA2WWJNfv0nmNOE=;
        b=o2maKmQzMqP55BRUt0ScJllO9aUT+b5HWL7dzDnwDCMOJxST88cU/4r0SejA9BBJDl
         KYudCMcTGXJKOTBqol/lrHucMFzGEeQKE5kk6wPG8XYzQpMnEmoDRwvjM9zaLrAVAbcX
         prqcLeGEmombxEFO6HLWtq1czdKsF+Hcf/OyCWYzm/EWAmGVJ+gn7xOy3i+GkUMM6xbL
         lYiaoIasM0qYo+hBNEQlUM0aovf8OHc4y9mYGBjTGpT8+HM+lzXg4WDpbc2Wtp50BYEy
         65QEx5zeuet1U9YpcSIQpmRiRXRjIJSO58EUKaSnOmwk82g896JfwkubNcwGLeuraWSz
         biVg==
X-Forwarded-Encrypted: i=1; AJvYcCWNR32m/huE7dwdWwedgL4CeyoB72MF9wU1tHdVJ/W0SGaySGu81s4VMLsMBkaZiBGro7Sp72MPsrnv@vger.kernel.org
X-Gm-Message-State: AOJu0Yww6Z1JsmOgUD8HV2IDEM0Wj9j9YNA2nQrOb1oFHPY4iHfZXtFw
	dXKGpHMPxXaEom1PgytcwzZjAbsvSDOObzxydeEBd5TEl5/VvdKiiC0quvzLC/ZIagXPYmFKiY9
	ABc68xORbqfb8aWsoe1yYOlF7pX2KdaVrNr5PaUjjsw==
X-Gm-Gg: AY/fxX7nHFrloiBTCw62yMU3YQlkPncOX0lOLrBq/yxa+FlxvXwj58UcTc5O0aychfL
	4VNzIv2iKyCJW4kujWONFkAcruBUepBExpz/byP8ElX/bdPvykitO3eowmetb+/5PTLxrat7kHs
	VDY7r6JhPo+7jPPEEhh82XWnx21yy8v+RjbbX7dFLt9zRD+u9TO1i1kaODizIf3b+ffDZFQrZgg
	ggfX5s0zI4Lydtr5kAtf40FkZTDhaK3sr9Xb6NhYvXI5GKZNVk3pOwPC/70Bta9+i21g/0GBu30
	OwKPeje9OrJi9QsQZPbZJDsUTZzgPycIuCzZmHkQqgLx
X-Google-Smtp-Source: AGHT+IHr9hpj9uqrYP2d59hszb1BUZgIk82NvUf6gFEhieUb4Vo2pOoa14pKSV9rG9cinvTKc1D+k5JkFPZo7lCJHqE=
X-Received: by 2002:a05:690e:1a07:b0:63f:a103:5d57 with SMTP id
 956f58d0204a3-6466a8398e7mr669772d50.5.1766097843665; Thu, 18 Dec 2025
 14:44:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-8-a0d256c9dc92@riscstar.com> <3c38ce9c-4259-4149-bf2c-a54e74c00a34@canonical.com>
 <CAH1PCMbzv_uggyZ3JLPyWXSwbe2dJAh7jVT64xpM6SLG77VZqQ@mail.gmail.com> <e5d92ecd-6bc1-438d-87ec-96f60d1b8a24@gmail.com>
In-Reply-To: <e5d92ecd-6bc1-438d-87ec-96f60d1b8a24@gmail.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 19 Dec 2025 06:43:52 +0800
X-Gm-Features: AQt7F2oVki_LCRnJdnjikkWlgQNyCWYw-P2aQmvWCPvKClL0oukF3aD3rXDC9xw
Message-ID: <CAH1PCMaRrw1zu41oKpBO+5DpDU2Ri69TQEQa+4tXkZJtEuQDHw@mail.gmail.com>
Subject: Re: [PATCH 8/8] riscv: dts: spacemit: add SpacemiT K3 Pico-ITX board
 device tree
To: Bo Gan <ganboing@gmail.com>
Cc: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-serial@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Bo

On Wed, Dec 17, 2025 at 5:06=E2=80=AFPM Bo Gan <ganboing@gmail.com> wrote:
>
> Hi Guodong,
>
> On 12/16/25 23:13, Guodong Xu wrote:
> > On Tue, Dec 16, 2025 at 10:33=E2=80=AFPM Heinrich Schuchardt
> > <heinrich.schuchardt@canonical.com> wrote:
> >>
> >> On 12/16/25 14:32, Guodong Xu wrote:
> >>> K3 Pico-ITX is a 2.5-inch single-board computer equipted with a Space=
miT
> >>> K3 SoC.
> >>>
> >>> This minimal device tree enables booting into a serial console with U=
ART
> >>> output.
> >>>
> >>> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> >>> ---
> >>>    arch/riscv/boot/dts/spacemit/Makefile        |  1 +
> >>>    arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 25 ++++++++++++++++=
+++++++++
> >>>    2 files changed, 26 insertions(+)
> >>>
> >>> diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/=
dts/spacemit/Makefile
> >>> index 95889e7269d1bae679b28cd053e1b0a23ae6de68..7e2b877025718113a0e31=
917eadf7562f488d825 100644
> >>> --- a/arch/riscv/boot/dts/spacemit/Makefile
> >>> +++ b/arch/riscv/boot/dts/spacemit/Makefile
> >>> @@ -4,3 +4,4 @@ dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-milkv-jupiter.dtb
> >>>    dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-musepi-pro.dtb
> >>>    dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-orangepi-r2s.dtb
> >>>    dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k1-orangepi-rv2.dtb
> >>> +dtb-$(CONFIG_ARCH_SPACEMIT) +=3D k3-pico-itx.dtb
> >>> diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/risc=
v/boot/dts/spacemit/k3-pico-itx.dts
> >>> new file mode 100644
> >>> index 0000000000000000000000000000000000000000..0f9d04dd352f5331e8259=
9285113b86af5b09ebe
> >>> --- /dev/null
> >>> +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> >>> @@ -0,0 +1,25 @@
> >>> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >>> +/*
> >>> + * Copyright (c) 2025 SpacemiT (Hangzhou) Technology Co. Ltd
> >>> + * Copyright (c) 2025 Guodong Xu <guodong@riscstar.com>
> >>> + */
> >>> +
> >>> +#include "k3.dtsi"
> >>> +
> >>> +/ {
> >>> +     model =3D "SpacemiT K3 Pico-ITX";
> >>> +     compatible =3D "spacemit,k3-pico-itx", "spacemit,k3";
> >>> +
> >>> +     chosen {
> >>> +             stdout-path =3D "serial0";
> >>> +     };
> >>> +
> >>> +     memory@100200000 {
> >>> +             device_type =3D "memory";
> >>> +             reg =3D <0x1 0x00200000 0x3 0xffe00000>;
> >>
> >> Shouldn't the reserved memory be described as no-map /reserved-memory
> >> nodes instead?
> >
> > Hi Heinrich,
> >
> > Yes, you are right. Using a reserved-memory node with the no-map proper=
ty is
> > the correct approach. I will update this in the next version to explici=
tly
> > reserve the first 2MB.
> >
> >>
> >> I would assume that 0x1,0000,0000 is the location of OpenSBI.
> >> What is at 0x3,ffe0,0000?
> >
> > Yes, confirmed, 0x100000000 is the start of OpenSBI. The size 0x3ffe000=
00 in
> > my original patch was the result of manually subtracting the 2MB OpenSB=
I
> > offset from the total 16GB memory.
> >
> > I will correct this in v2 to show the actual memory and put the first 2=
MB in
> > reserved-memory {} for opensbi.
>
> I don't think this is the right approach. The Linux kernel shouldn't care
> about the size of the underlying SBI implementation. The size of OpenSBI
> also depends on the version and features enabled. Thus, you should just

Thanks for the review. You are correct and I confirmed with the U-Boot
which we are currently using on the K3 Pico board can handle this memory
reservation situation. And it should, as you said. U-Boot
has first-hand information about where and what it wants to reserve.

> let the OpenSBI or whatever SBI fix up the device-tree for you. OpenSBI
> already does that today. It inserts one or more reserved-memory node and
> carves out the memory region of its own. If there's some bootloader in
> between SBI <-> Linux, such as U-boot, then it's responsible for copying
> over those reserved regions from OpenSBI into the device-tree Linux uses
> (U-boot already does). Thus, there's no need to manually specify it.

Agree. Back to the K3 Pico DTS, next version, I will describe memory layout
as what it is on the board.
memory@100000000 # starts from 4G

BR,
Guodong Xu

>
> Bo
>
> >
> > Thanks for the review.
> >
> > BR,
> > Guodong Xu
> >
> >
> >>
> >> Best regards
> >>
> >> Heinrich
> >>
> >>> +     };
> >>> +};
> >>> +
> >>> +&uart0 {
> >>> +     status =3D "okay";
> >>> +};
> >>>
> >>
> >

