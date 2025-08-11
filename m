Return-Path: <devicetree+bounces-203179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E726CB203FA
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:42:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 998FE3A5156
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E4A223DE1;
	Mon, 11 Aug 2025 09:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NtBs/Mb/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4D21ABA8
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 09:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754905333; cv=none; b=JbaWv/FA49QfVsy3IbBUX9IAkO6E4vYAOkW1cM5FrimO2Ehbpq/8OQ1GPEC7k2dhnnGX5t7Wj4s8xkK6Gtym+DtRvi8RvECzyBKJsB+O62nZnrj1Ghdr2VUO0YzTM3zXW6JRe04+UgTJzX/4L9BJ7ZXb7ULmTcmKtC85nIZTJss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754905333; c=relaxed/simple;
	bh=bQn73VP994WsQmFzruDcJSQYM7JUUIKmdAJBd4hj2hw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eWmiWF7lcLjFl9tSjS04nhoWgUM7AdWYmTbjCabyernQ0ZqG7LrHopz0io5ns8UbqQUivuVobWA0VJqApxc8ch9vvPPT9PWaL1Ar+rHEgBveYJP+PRZ6xzCeBsOsZdRzf824tcePXnXKvA1z6cqhILwaNEkBRSSTApOxScDLaBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NtBs/Mb/; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-61571192ba5so6599797a12.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 02:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754905329; x=1755510129; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2eSWrL25UEO0oq4z8A0vCEFN2VBnBSD043hswjtDD+k=;
        b=NtBs/Mb/+ng9krCg7bZey14yE+ty1G+H5uTeN4mfC7YCsce3yVKRsb10htv7PH5pNq
         44OZZQzQtM+xSec5qjAkf8b9zd8FOOv1gX2KT9Wbowy2blEKRGIGTv2DqlBzjaeZ6zMk
         /1e4/iRqOuF+it6hs2I6q4AU0bcRB3eYj6xopc56WPBHEnAiZhZHp8OPefjG+W2SLv9s
         APF9h9N5SZqcDoU8/xYU66vk62jymhuA0o3OeRMHaiOMOL4+/DzvI00yZpkWg7p99QvX
         f3o2sAReJWEI9MIO2sOY94rCQXBY8/Z1gHSAzYVyQObhhipoFnQOzgoeMk0xiSeI7i9C
         ufsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754905329; x=1755510129;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2eSWrL25UEO0oq4z8A0vCEFN2VBnBSD043hswjtDD+k=;
        b=JbF6yKmdqIQuVaVa0n+erS0MNnUuJuJHvap21xmmNnx2P99Sv56uGRyGY+d0DxysHX
         S4g63T65JqYNf54mdRW4CmikEabmmWqlYVRKs7BmC0AtMbV+gg7tdtEe5LxhxB61dHgA
         ZvXZ2P3Ohk84LjL8AQVAiJf/2J4m55HfL6LmlxlRmLeEIqp1CKzEeRxeulSRlISOYmmX
         LJ5i+EQSY/zxHZ5JmKPoHFFpmL27P4LsOVDDOS6Q1eShli7rTbL6uFDZz9p5R2zEFgke
         nH6hGSjTPYC+3v4ihvCPGigLQLLaJwYYDvwEqReL4kf00Fzk/2SkX5kQe/2x3vJya+tO
         Y0iw==
X-Forwarded-Encrypted: i=1; AJvYcCVKm97E2JyGwZM8WgKIWfsYn7CpAfvxtVRVJTC5rp6cMHKsEFkVTmkq5b+OuSca5bxQDwCnS+NDSWHR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw87UmRHzhmsJfBdKVSbS7P/aoqu7quhZS/Op5zhRU+bNJwVgQA
	uwA5Mr2qtdGuD5xteKTrwI5qv4yQ579KfV/vgGMD0MyNQp2s1dgc9AzEoWHQjsfQVoggLw7l4Kj
	17GSmKry+st2wY2OHMH8+Vdp96/JsyaU=
X-Gm-Gg: ASbGncuIKPIQ1UQqSPaEbQvk4Ba28GVjMBLMLO60O89BIJ+G07/yggePNRaHJ17yeiY
	fNwihIrKK0lF2K9eLW+BkwbrOzj3wh42i5CrNLwtYTG5ki5h/CUcLNBs7e27ulxyulPKP1T3PYl
	Enaz1o3Ts9L36lLnEQGOdk9RfCryOmhbiq2Cdt9m1Fp30y97lX77CW8EytV2IH5mmOi4r9NuRvB
	S3OqJKg+6hvaWgBsA==
X-Google-Smtp-Source: AGHT+IHcls6RaaffbrNGAViVuQNJYIu7Sso9LCbPDH5dKNFIoT9oDwwGZyVJjZrGCF03Z7k2KxEzSXyzLzzSvKKpCcg=
X-Received: by 2002:a17:907:7e8c:b0:af9:611d:8ce5 with SMTP id
 a640c23a62f3a-af9c6453507mr984161266b.22.1754905329373; Mon, 11 Aug 2025
 02:42:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754890670.git.zhoubinbin@loongson.cn> <47545b7ed4943a088b27021a0fdbeaf56947e833.1754890670.git.zhoubinbin@loongson.cn>
 <CAAhV-H4h5qZ8gCjoKMKd8wBYG+secmTrHdo+AY1A60rmhKrCoQ@mail.gmail.com>
In-Reply-To: <CAAhV-H4h5qZ8gCjoKMKd8wBYG+secmTrHdo+AY1A60rmhKrCoQ@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 11 Aug 2025 17:41:57 +0800
X-Gm-Features: Ac12FXxSxL_Lbj0YwFkPpje-NBjXsW-_dk1EgJ-IA4j8KD4zAgb88m_iR6tF7Vo
Message-ID: <CAMpQs4JgvCCxgNhmQ7XPHZ9HHohFW69vO7D6mpbBb3Q16u78ag@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] mtd: rawnand: loongson: Rename loongson1 to loongson
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Huacai:

Thanks for your reply.

On Mon, Aug 11, 2025 at 2:36=E2=80=AFPM Huacai Chen <chenhuacai@kernel.org>=
 wrote:
>
> Hi, Binbin,
>
> On Mon, Aug 11, 2025 at 2:02=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.=
cn> wrote:
> >
> > The second step in preparing to add Loongson-2K support is to change th=
e
> > names of the driver files and Kconfig options from Loongson1-specific t=
o
> > Loongson-generic.
> Is it possible to merge the first two patches? If not, it is better to
> use loongson1 rather than loongson in the subject line of this patch.

At first, I thought that separating the renaming of file prefixes from
the renaming of file names would make the changes clearer. Another
point is whether renaming Kconfig items would be considered API
breaking, even though no one is currently referencing them?

Of course, if anyone thinks that separating them is unnecessary, I
will merge them in the next version.
>
> Huacai
>
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  MAINTAINERS                                                 | 2 +-
> >  drivers/mtd/nand/raw/Kconfig                                | 6 +++---
> >  drivers/mtd/nand/raw/Makefile                               | 2 +-
> >  ...ongson1-nand-controller.c =3D> loongson-nand-controller.c} | 0
> >  4 files changed, 5 insertions(+), 5 deletions(-)
> >  rename drivers/mtd/nand/raw/{loongson1-nand-controller.c =3D> loongson=
-nand-controller.c} (100%)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 4bac4ea21b64..cc502582c9f1 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -16722,7 +16722,7 @@ F:      Documentation/devicetree/bindings/*/loo=
ngson,ls1*.yaml
> >  F:     arch/mips/include/asm/mach-loongson32/
> >  F:     arch/mips/loongson32/
> >  F:     drivers/*/*loongson1*
> > -F:     drivers/mtd/nand/raw/loongson1-nand-controller.c
> > +F:     drivers/mtd/nand/raw/loongson-nand-controller.c
> >  F:     drivers/net/ethernet/stmicro/stmmac/dwmac-loongson1.c
> >  F:     sound/soc/loongson/loongson1_ac97.c
> >
> > diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfi=
g
> > index 4b99d9c422c3..d9e3f13666ac 100644
> > --- a/drivers/mtd/nand/raw/Kconfig
> > +++ b/drivers/mtd/nand/raw/Kconfig
> > @@ -462,12 +462,12 @@ config MTD_NAND_NUVOTON_MA35
> >           Enables support for the NAND controller found on
> >           the Nuvoton MA35 series SoCs.
> >
> > -config MTD_NAND_LOONGSON1
> > -       tristate "Loongson1 NAND controller"
> > +config MTD_NAND_LOONGSON
> > +       tristate "Loongson NAND controller"
> >         depends on LOONGSON1_APB_DMA || COMPILE_TEST
> >         select REGMAP_MMIO
> >         help
> > -         Enables support for NAND controller on Loongson1 SoCs.
> > +         Enables support for NAND controller on Loongson family chips.
> >
> >  comment "Misc"
> >
> > diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makef=
ile
> > index 711d043ad4f8..c182b9703a9e 100644
> > --- a/drivers/mtd/nand/raw/Makefile
> > +++ b/drivers/mtd/nand/raw/Makefile
> > @@ -59,7 +59,7 @@ obj-$(CONFIG_MTD_NAND_ROCKCHIP)               +=3D ro=
ckchip-nand-controller.o
> >  obj-$(CONFIG_MTD_NAND_PL35X)           +=3D pl35x-nand-controller.o
> >  obj-$(CONFIG_MTD_NAND_RENESAS)         +=3D renesas-nand-controller.o
> >  obj-$(CONFIG_MTD_NAND_NUVOTON_MA35)    +=3D nuvoton-ma35d1-nand-contro=
ller.o
> > -obj-$(CONFIG_MTD_NAND_LOONGSON1)       +=3D loongson1-nand-controller.=
o
> > +obj-$(CONFIG_MTD_NAND_LOONGSON)                +=3D loongson-nand-cont=
roller.o
> >
> >  nand-objs :=3D nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nan=
d_ids.o
> >  nand-objs +=3D nand_onfi.o
> > diff --git a/drivers/mtd/nand/raw/loongson1-nand-controller.c b/drivers=
/mtd/nand/raw/loongson-nand-controller.c
> > similarity index 100%
> > rename from drivers/mtd/nand/raw/loongson1-nand-controller.c
> > rename to drivers/mtd/nand/raw/loongson-nand-controller.c
> > --
> > 2.47.3
> >
> >

--
Thanks.
Binbin

