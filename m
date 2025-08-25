Return-Path: <devicetree+bounces-208875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F2FB337C0
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 09:26:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36AAB17BCC0
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 07:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2AD9289368;
	Mon, 25 Aug 2025 07:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NBLKiYs0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FC52116E9
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 07:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756106799; cv=none; b=LNnZZDGlRjx7st3jvMm0iI8JvQG0UL6TFz6qfu0emT3FYhQ1SpwEljtn2JrruwWzb5Mc4avKuocUxc42gfWgYe/wz2DfPgp+4/I2HaP3PS3wdDu7+fD5h0RSbhFXc7qloE5bWnTiFwOlCcBu5Ka8OXyH4dYAPEbMR7dbd6UT8lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756106799; c=relaxed/simple;
	bh=M6evD2Qxwqk81MjhmcOZIPv/5+wGW7wA97ZxmnU9KPA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sAFDDqyfU8da44by8LvmjAY0Lb/CwKbvsCqpsH73RmWSpc5H6BOX4zS4BH3Cnlpd5RAr5YMgK91lHsxlRSM0aBfgPefUzA0p5pLnf2aFeUupx7vH2dCbeJedB7fH6GauVZGHLxrv+NKCS6C9lnWLBibESWA6q5etVBROpPSmWTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NBLKiYs0; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-61c22dceb25so4060873a12.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 00:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756106796; x=1756711596; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p0rXI81DHDPeimgUQGGujUCeB3VepV9XFgBCotb060w=;
        b=NBLKiYs0FexQz4acbBU2mIrhkKJVXGGkQly7GTWNS5qd+euGo1A9glqm58CJ9VIp9O
         3y/ChrbnFhVTVgxuTbGlpkr/Ob7PIVkF/D9wPnxtOQ8E2Ei+1t4U77C8lCzEyZ/l7pwn
         dvQS3DKRv2VLxYoetMMQxQw25S075XsrALHnWSeiFM9qLJidVq9NmIwy3pbuCRFLKje/
         Y8UA+E0QyEE1UAEEql83O8LvX7+XujjVMCMdyrmynORZZzK+QXOPLyL0LbtQ1ncfRpMt
         YqsQIqSVNfUoS6miDfnhlUPgUI+DsI4SPB2O/R3xCl8uCKLP/IXbjQnUw41xTvsFWVrU
         ziow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756106796; x=1756711596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p0rXI81DHDPeimgUQGGujUCeB3VepV9XFgBCotb060w=;
        b=QnQ3nunezCJennnsewkB+TVTKgydRrmFs47+bQpafL2zuYuVU0hrg+P30akDj0VRpi
         3njBkPfYDS/m9dwtdNRxBGBp5+AlAeKjPELx3cO075OMTgP35FKTCIxuUh7OCEWULySy
         4FmO3bvVi2CclzIu4DmSXKOD5gD0ZHq+4CRb+lSrvp2uNixSnAAxfvGVgW5Piq6tgw6T
         r19HIF09QdvXg93Cg+XUbQtttnxUZ0DRSk8hg//xOdOhL5M2hIgxKg5fmt1XMIrZnLdr
         7S/dz8t92C7vflhBqZWur0IHq/NHx6f5U/t5yAlEraYYQYGzcKx15BbQSN6DNmmoqllz
         2bNg==
X-Forwarded-Encrypted: i=1; AJvYcCXQcT4VzSgvdobllU02dK2nja5mVmzcggXrlyJRaiVM3EZ8ZlqvYIULy0G7Lc3K45c7jRygjxK4MelK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv0c3ICK7TFkrz6sIL6A6btRtMTO+njxg73eWNKjre9LXwwYBu
	yzDistty9A6sC/iy44fzC3yIBTpjaHybgsWYZM6S1ajhlH1i3H9Cg0xasEZ9i5NGx1MwhGGz36h
	HYVlcgbxV4WlwZZyYEz7mDQm9uHL2E2E=
X-Gm-Gg: ASbGncvnhkn3zddrPuPrAApj+Sz5t124d2TUVhlO5zBVBkMVQTBbJ0++BJOGHMXyEZy
	HneXFDinodq+FbmYGzLhliY7WxKKS5H8ueSVGdz4ukziC8bXpxAuW9rfbL/bWSUdZB2xGcKBdng
	vNI3dYP5whQABaIDmYUP2/ArYS5eZg8E9UhfTw0V3ZjRllqPW3K3uI8fX3ZvPdgCFo9azu2meGC
	r9SKvIJvT3FeZOw4CLm
X-Google-Smtp-Source: AGHT+IEMMavT5lPcHDOmWN6D73yFcbhZ6LlVvdyIDZoFcQ0UkTHvd0fdnieclEyOSRj7wdZZ1vHKCxOSg4bVNUh2lp8=
X-Received: by 2002:a05:6402:40c9:b0:61c:73f2:4b3a with SMTP id
 4fb4d7f45d1cf-61c73f24d9amr999037a12.30.1756106796261; Mon, 25 Aug 2025
 00:26:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1755757841.git.zhoubinbin@loongson.cn> <f01986dcb9f16450bd7f38c8fd663df686e6d145.1755757841.git.zhoubinbin@loongson.cn>
 <875xeclodp.fsf@bootlin.com>
In-Reply-To: <875xeclodp.fsf@bootlin.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 25 Aug 2025 15:26:24 +0800
X-Gm-Features: Ac12FXyNgFXyJt4UvVNk5DenquiAD_QBeEewphZzs_VIgu82Xp2pbDEb2NAVMxo
Message-ID: <CAMpQs4JcuCVk6BxB66DrneUv6iw8rzYyLnZX6vrQYp41n+=-vw@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] mtd: rawnand: loongson: Add Loongson-2K1000 NAND
 controller support
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Miquel:

Thanks for your reply.

On Sun, Aug 24, 2025 at 11:40=E2=80=AFPM Miquel Raynal
<miquel.raynal@bootlin.com> wrote:
>
> On 21/08/2025 at 14:39:21 +08, Binbin Zhou <zhoubinbin@loongson.cn> wrote=
:
>
> > The Loongson-2K1000 NAND controller is also similar to the Loongson-1C.
> >
> > It supports a maximum capacity of 16GB FLASH per chip with a maximum
> > page size of 8KB, and it supports up to 4 chip selects and 4 RDY
> > signals.
> >
> > The key difference from the Loongson-2K0500 is that it requires explici=
t
> > configuration of the DMA control route. Typically, it is configured as
> > APBDMA0.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../mtd/nand/raw/loongson-nand-controller.c   | 48 +++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> >
> > diff --git a/drivers/mtd/nand/raw/loongson-nand-controller.c b/drivers/=
mtd/nand/raw/loongson-nand-controller.c
> > index 7b331d0ca2f0..6610c239f721 100644
> > --- a/drivers/mtd/nand/raw/loongson-nand-controller.c
> > +++ b/drivers/mtd/nand/raw/loongson-nand-controller.c
> > @@ -73,9 +73,18 @@
> >  #define LOONGSON_NAND_READ_ID_TIMEOUT_US     5000
> >
> >  #define LOONGSON_NAND_64BIT_DMA              BIT(0)
> > +#define LOONGSON_NAND_DMA_CONFIG     BIT(1)
>
> You're reusing this flags member, so it's fine, please ignore the
> previous comment (except the style issue).
>
> ...
>
> > +     regs =3D devm_platform_ioremap_resource(pdev, 2);
>
> Would it be clearer to get the resource by name? (not a strong request)

It will be replaced by

devm_platform_ioremap_resource_byname(pdev, "dma-config");

>
> Thanks
> Miqu=C3=A8l


--=20
Thanks.
Binbin

