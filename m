Return-Path: <devicetree+bounces-205738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A33B29E2C
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:41:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31C271885A33
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1E1730E0F4;
	Mon, 18 Aug 2025 09:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gad+YbPq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF48530DEAA
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755510059; cv=none; b=cX9CqIu6vgEhSVL3Ly3txXInS7YUsukNVRXbrG1JPoXhTdC7OplI5yaX+TUVWq1VoHfUV0RdZxdwZ7jWUTUnaifuH4MTB84HBktxoOmC0FE9SKuh9hiL5eaT8xT1/bRBF6qEngtFCAi0sheDbsfPpUgKnlZx45F7w/hEWQ4FRC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755510059; c=relaxed/simple;
	bh=hcd/LXE3tq0FmZwKYylrYTmoPz8yAtARoiR/DV8P020=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OQz/1fu4ysoZP1jBlg280tpbxAr084mhnadayKhJbeUUfk2GjdraUSLUvLWdQmXuNMhFktKcEVZYtqQ/aHzawLxxxLNktU28KZMFmq580qe/gGnRoDkh8ZtiFQIK85VBqk6oDW6B76UlC6jsriAPtUCugJuB8RvYBcbG7uKfhl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gad+YbPq; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-61868d83059so7997784a12.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 02:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755510056; x=1756114856; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOJjRWVOPzxNZaP1qKl5T6uQXMq+ZN2NpLXOIkGXeu8=;
        b=gad+YbPq4hBeINI0s5N9AKyCrDkEArMahyKt28SwbpDiIHCiD4lfdhlMFv3MfoWwF2
         08EkHyxl+QGVf5Zg5PsDaHsEYOHL8rnK2g8ld8aevG3R7bas0H3JXj5QpAednYDwhpso
         vRHlkOechWcdzCzs4kaXt/01kebGcJGTE6H16072r0MqW1Y3gZ4epx9wR1X6gsfwnEt2
         jU1Ps00nyWazToBDHSpTjhFU7OQ3p4C01do6TUmGIrYKEa3WEtgk5qKSRmOvQ6DljYwm
         k5M9r8nomQt72p1FdGyw6T0sC5TX+w7y5r5mKDF7No3xxoYWalVQY05/3coNcfIUIlwf
         +88A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755510056; x=1756114856;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOJjRWVOPzxNZaP1qKl5T6uQXMq+ZN2NpLXOIkGXeu8=;
        b=cAXUEBmwlt80KRYc0sHA9vfHMJ5lB7S9Wr3cC6sCgsZ0Hx3JCICOPvRBh+YrCggMEQ
         aroBA9ZaPa3ffNZA5KGS1OyTNf6AN1LCt2nfbtPUiw7sK7yE26kKgNyODVWoit1sbjR+
         ieZYmTS5a9JRwad+k4I3MvQ6v0vw2w9aBPYS0ZoJCb9wzHwt27OlN3gtJfRlGMIDoJpK
         ZNP585lVlUAogsneVA1P7TdKAE0fJdSZPh+JS+2DP9VBsEfzM1tG3g52bYqR/S7Tpwld
         tKWtJpUsNHeq/oxHFAPOBffiQuPxfI6QBZ9X0VqK/fgZ6GO8FlWRpvHFPqxndQTLq24U
         B1yw==
X-Forwarded-Encrypted: i=1; AJvYcCVnETM0IGfkgzIN429MwHeAxcjK2xyrSyyn/j3/z54ANf+9KYEpJLUvguFClsq2A7fS8Dc2d6TF+MB7@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw/b74IVzWvbDMghkb+nYiMARI0dIO6SEz+v3qqrA1GLyPu75I
	i5b0XN2eVw0Vr6Qd/mArJA0VFFzPCQmR/77GS3/+YoH/l+uEx+J6Vs7RhJxMLXO/003s7CTN4vx
	LsejftYZa2Yb8g10Zn2muJjRBH3zpaE0=
X-Gm-Gg: ASbGncvLDZlCDrvSwCUOI0W9RSKbtP6mDFeUV5wNOTn0C3Z2Ho13Q8cS1HoACJvDwqK
	P855ettcQawgFF5toCbX4iosFIXvVCdMMREpRyOU3/7Cf3n3i9vnn3DKR0PHlos0ffVTmy/MmfH
	P8zoJeKc/gjbImDQPGKkCz5KrajT21Hc8bloJbzfvIoDjtNaMQ0ZYhiM8hToE6UDwvhxHa+MpwE
	btM2hXosE4LCDAH4A==
X-Google-Smtp-Source: AGHT+IHp0UmWW2UaLhVJaYIR0yqe8Dam+rKGh2pWLy+njoco3WlqsBW5kQ+Ttg039INaMvj9jU9P+8OKwR3mwdhpHhs=
X-Received: by 2002:a17:907:72d2:b0:af9:3f53:ed1d with SMTP id
 a640c23a62f3a-afcdb273236mr1142406066b.16.1755510055999; Mon, 18 Aug 2025
 02:40:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <47545b7ed4943a088b27021a0fdbeaf56947e833.1754890670.git.zhoubinbin@loongson.cn>
 <CAAhV-H4h5qZ8gCjoKMKd8wBYG+secmTrHdo+AY1A60rmhKrCoQ@mail.gmail.com>
 <CAMpQs4JgvCCxgNhmQ7XPHZ9HHohFW69vO7D6mpbBb3Q16u78ag@mail.gmail.com> <CAJhJPsU+dVmnBnHgnNDL0Zro_KYN12c7+pw=720ju-w7veegMQ@mail.gmail.com>
In-Reply-To: <CAJhJPsU+dVmnBnHgnNDL0Zro_KYN12c7+pw=720ju-w7veegMQ@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 18 Aug 2025 17:40:43 +0800
X-Gm-Features: Ac12FXw16I7aogqr-1UaRJJv6IlheqoNzx6yaN68YbS9d6fLFkQRWBbtKitkvQ8
Message-ID: <CAMpQs4+smqstrmcReOYXtyJvgTdu=Yit8_Kq3kMdM=rM6ENKag@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] mtd: rawnand: loongson: Rename loongson1 to loongson
To: Keguang Zhang <keguang.zhang@gmail.com>
Cc: Huacai Chen <chenhuacai@kernel.org>, Binbin Zhou <zhoubinbin@loongson.cn>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Keguang:

Thanks for your reply.

On Mon, Aug 18, 2025 at 3:05=E2=80=AFPM Keguang Zhang <keguang.zhang@gmail.=
com> wrote:
>
> On Mon, Aug 11, 2025 at 5:42=E2=80=AFPM Binbin Zhou <zhoubb.aaron@gmail.c=
om> wrote:
> >
> > Hi Huacai:
> >
> > Thanks for your reply.
> >
> > On Mon, Aug 11, 2025 at 2:36=E2=80=AFPM Huacai Chen <chenhuacai@kernel.=
org> wrote:
> > >
> > > Hi, Binbin,
> > >
> > > On Mon, Aug 11, 2025 at 2:02=E2=80=AFPM Binbin Zhou <zhoubinbin@loong=
son.cn> wrote:
> > > >
> > > > The second step in preparing to add Loongson-2K support is to chang=
e the
> > > > names of the driver files and Kconfig options from Loongson1-specif=
ic to
> > > > Loongson-generic.
> > > Is it possible to merge the first two patches? If not, it is better t=
o
> > > use loongson1 rather than loongson in the subject line of this patch.
> >
> > At first, I thought that separating the renaming of file prefixes from
> > the renaming of file names would make the changes clearer. Another
> > point is whether renaming Kconfig items would be considered API
> > breaking, even though no one is currently referencing them?
> >
> > Of course, if anyone thinks that separating them is unnecessary, I
> > will merge them in the next version.
>
> It=E2=80=99s reasonable to merge the first two patches.
> I agree.

OK. I will do it in the next version.
>
> > >
> > > Huacai
> > >
> > > >
> > > > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > > > ---
> > > >  MAINTAINERS                                                 | 2 +-
> > > >  drivers/mtd/nand/raw/Kconfig                                | 6 ++=
+---
> > > >  drivers/mtd/nand/raw/Makefile                               | 2 +-
> > > >  ...ongson1-nand-controller.c =3D> loongson-nand-controller.c} | 0
> > > >  4 files changed, 5 insertions(+), 5 deletions(-)
> > > >  rename drivers/mtd/nand/raw/{loongson1-nand-controller.c =3D> loon=
gson-nand-controller.c} (100%)
> > > >
> > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > index 4bac4ea21b64..cc502582c9f1 100644
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -16722,7 +16722,7 @@ F:      Documentation/devicetree/bindings/*=
/loongson,ls1*.yaml
> > > >  F:     arch/mips/include/asm/mach-loongson32/
> > > >  F:     arch/mips/loongson32/
> > > >  F:     drivers/*/*loongson1*
> > > > -F:     drivers/mtd/nand/raw/loongson1-nand-controller.c
> > > > +F:     drivers/mtd/nand/raw/loongson-nand-controller.c
> > > >  F:     drivers/net/ethernet/stmicro/stmmac/dwmac-loongson1.c
> > > >  F:     sound/soc/loongson/loongson1_ac97.c
> > > >
> > > > diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kc=
onfig
> > > > index 4b99d9c422c3..d9e3f13666ac 100644
> > > > --- a/drivers/mtd/nand/raw/Kconfig
> > > > +++ b/drivers/mtd/nand/raw/Kconfig
> > > > @@ -462,12 +462,12 @@ config MTD_NAND_NUVOTON_MA35
> > > >           Enables support for the NAND controller found on
> > > >           the Nuvoton MA35 series SoCs.
> > > >
> > > > -config MTD_NAND_LOONGSON1
> > > > -       tristate "Loongson1 NAND controller"
> > > > +config MTD_NAND_LOONGSON
> > > > +       tristate "Loongson NAND controller"
> > > >         depends on LOONGSON1_APB_DMA || COMPILE_TEST
> > > >         select REGMAP_MMIO
> > > >         help
> > > > -         Enables support for NAND controller on Loongson1 SoCs.
> > > > +         Enables support for NAND controller on Loongson family ch=
ips.
> > > >
> > > >  comment "Misc"
> > > >
> > > > diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/M=
akefile
> > > > index 711d043ad4f8..c182b9703a9e 100644
> > > > --- a/drivers/mtd/nand/raw/Makefile
> > > > +++ b/drivers/mtd/nand/raw/Makefile
> > > > @@ -59,7 +59,7 @@ obj-$(CONFIG_MTD_NAND_ROCKCHIP)               +=
=3D rockchip-nand-controller.o
> > > >  obj-$(CONFIG_MTD_NAND_PL35X)           +=3D pl35x-nand-controller.=
o
> > > >  obj-$(CONFIG_MTD_NAND_RENESAS)         +=3D renesas-nand-controlle=
r.o
> > > >  obj-$(CONFIG_MTD_NAND_NUVOTON_MA35)    +=3D nuvoton-ma35d1-nand-co=
ntroller.o
> > > > -obj-$(CONFIG_MTD_NAND_LOONGSON1)       +=3D loongson1-nand-control=
ler.o
> > > > +obj-$(CONFIG_MTD_NAND_LOONGSON)                +=3D loongson-nand-=
controller.o
> > > >
> > > >  nand-objs :=3D nand_base.o nand_legacy.o nand_bbt.o nand_timings.o=
 nand_ids.o
> > > >  nand-objs +=3D nand_onfi.o
> > > > diff --git a/drivers/mtd/nand/raw/loongson1-nand-controller.c b/dri=
vers/mtd/nand/raw/loongson-nand-controller.c
> > > > similarity index 100%
> > > > rename from drivers/mtd/nand/raw/loongson1-nand-controller.c
> > > > rename to drivers/mtd/nand/raw/loongson-nand-controller.c
> > > > --
> > > > 2.47.3
> > > >
> > > >
> >
> > --
> > Thanks.
> > Binbin
>
>
>
> --
> Best regards,
>
> Keguang Zhang


--=20
Thanks.
Binbin

