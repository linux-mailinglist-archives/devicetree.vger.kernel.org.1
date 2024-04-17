Return-Path: <devicetree+bounces-59965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB418A7C9B
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 08:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DFC01C20B7F
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 06:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF81869DF1;
	Wed, 17 Apr 2024 06:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="TVsER2kn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8EB657C3
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 06:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713336936; cv=none; b=qtW3nyXE0R3xSNtudNyS5hLj1nXkCy2ixbtbLSCEU095caMJ+TRdJvEc3g/6ANXs5CpCLzUFgYaTSLCwX9emSOhEeOzE6Tpyo9rbyhqCqGNl35y++0dPRNZclGeKrrw2ExrLI5ClUwz8tLdb8sXS9LRa+AueEVAb9IqFUXqQbp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713336936; c=relaxed/simple;
	bh=J/5WdNXiH+xHiAy5PvoJmYo9TGP4hl9SHOTN5CBH+b4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y6of5TOT6+01ZNq2k/PfuCj4LAXBocVe5wNiDevncVlzBPpewcbPtrpvJmaE8aM1+agDc3XbOZmjSmi6yHYyr4gARIea+S3QYLrMYGnDHDIWF19W4mgWhRG+41WZyK6xT3FsnqQVb0WrJChLZFuqyLcHxULl7aMA0L300zsmeUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=TVsER2kn; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d4a8bddc21so61462181fa.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 23:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713336933; x=1713941733; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZGbmlRk8OYQ6Kpz+Jg/xu+IlJYAq+3AXIsG/wFcBY0=;
        b=TVsER2knIM6Cl/nrl/4UK7g05JsFLstuf9zJ/0xVgrVuF2oE6mLDi65/XvSfS2hWMa
         4tsNP4UM93HikvF6qrqU6B/TcvCWFOPfstw74Lr+vRlNCyjXziRrpdzl/lc24saK8odj
         X6TMfTVZDsf/15pTt+yJkgeRW9/PSymOe1O2z7zD765tJcp9dSj2WZWW4IiEZpZp2YV3
         NpiuNQGk8ezjvXtOdiRFkM/45Zo1RP7ihElBryG0ib2plZVaqqSPG2hv1qdzHr8/K8OS
         G6YgngjJLrBNXIpCTBk/a7sYNiduEQ/kuijZeQqkFw1CKqfXv3bAvaZ5esjQXx/ASiXA
         GiLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713336933; x=1713941733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sZGbmlRk8OYQ6Kpz+Jg/xu+IlJYAq+3AXIsG/wFcBY0=;
        b=SUHVMxQ4zyJghlufNqIiGrm39RSjF3xlTK2pEB7h+vr/69TRFl6UAvuohFj46Jfb+n
         WsPbCriftTZ4HE/yg6FVUfoqP13g8egDWhl5IMSMLybWBW3xhGAb+Q2mqVL506Adi+Sh
         vphd8bXaqJ6rRlTCb4Pcf4T+asjXiqo1yMUxA4ClZ6usPBRXTmyTcGuMD/6zEqwh8jha
         fY/l0rjZgEwb/ocSRbmCIz4xpoUwYLTIwwvFxgnT5CZoGw5144icFMAubyXKTjjlJmRw
         eu5iScABezpI61q5wYY7ibJ43Pa2ljS2SC5sj+qCRpC7Ps1vBzRdm3Gim3XCRC7uVbAX
         4xDA==
X-Forwarded-Encrypted: i=1; AJvYcCWkl/ppSYFxS57W0/0OLSagqmq070oix+5f5E7QbbkSCFnBAs42L5rhBxp/9Hh8XA6L0nirKD9IftORABwt3wGZ/TbnyGEE6nCp0A==
X-Gm-Message-State: AOJu0YwA5o0uHANxF6HYv3N3FxheqLJiyh1yok1Qu2Ixyrp6zkY1Nivf
	5D4Kik/qfN9hqRSYW3JgRexvqSBXVSRkDmvX+ew/QQZkYdeGNVhG+csCXwDRY16RF4oLwQNDLYo
	8Y7qz/W9c8euR/yVRJ2i5zpDWt69G4VoisQNhjw==
X-Google-Smtp-Source: AGHT+IEioRgn3J/gIQgGJ6OV7a95PpbKKQjOpe3lYUOLcWBAqxQqpmiBxRuuipgOwmaEqZd2NFkYzR85tc5xMM0UkRc=
X-Received: by 2002:a2e:8049:0:b0:2d9:f7f8:3e88 with SMTP id
 p9-20020a2e8049000000b002d9f7f83e88mr7913210ljg.33.1713336933078; Tue, 16 Apr
 2024 23:55:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240413091942.316054-1-apatel@ventanamicro.com> <20240416141049.GA2148267-robh@kernel.org>
In-Reply-To: <20240416141049.GA2148267-robh@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 17 Apr 2024 12:25:20 +0530
Message-ID: <CAK9=C2WXrgr21mLxynQZ51gfP+PUzFkNmz3VJ9ODVS+b-ecLwQ@mail.gmail.com>
Subject: Re: [PATCH v2] of: property: Add fw_devlink support for interrupt-map property
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 7:41=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Sat, Apr 13, 2024 at 02:49:42PM +0530, Anup Patel wrote:
> > Some of the PCI controllers (such as generic PCI host controller)
> > use "interrupt-map" DT property to describe the mapping between
> > PCI endpoints and PCI interrupt pins. This the only case where
> > the interrupts are not described in DT.
> >
> > Currently, there is no fw_devlink created based on "interrupt-map"
> > DT property so interrupt controller is not guaranteed to be probed
> > before PCI host controller. This affects every platform where both
> > PCI host controller and interrupt controllers are probed as regular
> > platform devices.
> >
> > This creates fw_devlink between consumers (PCI host controller) and
> > supplier (interrupt controller) based on "interrupt-map" DT property.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> > Changes since v1:
> > - Updated commit description based on Rob's suggestion
> > - Use of_irq_parse_raw() for parsing interrupt-map DT property
> > ---
> >  drivers/of/property.c | 58 +++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 58 insertions(+)
> >
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index a6358ee99b74..67be66384dac 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1311,6 +1311,63 @@ static struct device_node *parse_interrupts(stru=
ct device_node *np,
> >       return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args.n=
p;
> >  }
> >
> > +static struct device_node *parse_interrupt_map(struct device_node *np,
> > +                                            const char *prop_name, int=
 index)
> > +{
> > +     const __be32 *imap, *imap_end, *addr;
> > +     struct of_phandle_args sup_args;
> > +     struct device_node *tn, *ipar;
> > +     u32 addrcells, intcells;
> > +     int i, j, imaplen;
> > +
> > +     if (!IS_ENABLED(CONFIG_OF_IRQ))
> > +             return NULL;
> > +
> > +     if (strcmp(prop_name, "interrupt-map"))
> > +             return NULL;
> > +
> > +     ipar =3D of_node_get(np);
> > +     do {
> > +             if (!of_property_read_u32(ipar, "#interrupt-cells", &intc=
ells))
> > +                     break;
> > +             tn =3D ipar;
> > +             ipar =3D of_irq_find_parent(ipar);
> > +             of_node_put(tn);
> > +     } while (ipar);
>
> No need for this loop. We've only gotten here if 'interrupt-map' is
> present in the node and '#interrupt-cells' is required if
> 'interrupt-map' is present.

Ahh, okay. I will update.

>
> > +     if (!ipar)
> > +             return NULL;
> > +     addrcells =3D of_bus_n_addr_cells(ipar);
> > +     of_node_put(ipar);
> > +
> > +     imap =3D of_get_property(np, "interrupt-map", &imaplen);
> > +     if (!imap || imaplen <=3D (addrcells + intcells))
> > +             return NULL;
> > +     imap_end =3D imap + imaplen;
> > +
> > +     sup_args.np =3D NULL;
> > +     for (i =3D 0; i <=3D index && imap < imap_end; i++) {
> > +             if (sup_args.np) {
> > +                     of_node_put(sup_args.np);
> > +                     sup_args.np =3D NULL;
> > +             }
> > +
> > +             addr =3D imap;
> > +             imap +=3D addrcells;
> > +
> > +             sup_args.np =3D np;
> > +             sup_args.args_count =3D intcells;
> > +             for (j =3D 0; j < intcells; j++)
> > +                     sup_args.args[j] =3D be32_to_cpu(imap[j]);
> > +             imap +=3D intcells;
> > +
> > +             if (of_irq_parse_raw(addr, &sup_args))
> > +                     return NULL;
> > +             imap +=3D sup_args.args_count + 1;
> > +     }
>
> Doesn't this leak a ref on the last time the function is invoked? For
> example, if we have 2 entries and index is 2. We'll get index=3D1, but
> then exit because imap=3D=3Dimap_end. We need a put on index=3D=3D1 node.

Okay, I will update.

>
> Look at my next branch where I've converted things to use __free()
> cleanups. I don't see it helping here as-is, but maybe when it is
> correct.
>

Okay, I will check your next branch.

Thanks,
Anup

