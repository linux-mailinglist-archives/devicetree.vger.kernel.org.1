Return-Path: <devicetree+bounces-70415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4452B8D3451
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C5EE1C2390B
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1FF16EC04;
	Wed, 29 May 2024 10:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="HGCOPdKi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE70E169ADB
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 10:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716977808; cv=none; b=RZr7THQqn/491NI2XobVtLiVv3n5DuzD/Lx7vydvaH5Gr+Hhts07lu3oiQeRR+EK+kmdrZRaqE12uFEWFETL6IBRZIe6d/7+ANMw4Dw0d7LE3GYV4E3t4XgeaplpswzrovNjtXJ9otyhl9drYqGp5Zb7nyEV21UDPA6fuOjVP7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716977808; c=relaxed/simple;
	bh=Un9KNK5u5FZjSBVujiSdk6VsC13UknTllPZuVQefjyI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sTQbeAApbsMqdaREBzmnz8UqMr2bvPLPpI6Ujd0O5kQivp/Ng9qp5NnjL40WO/qXjZ7aFVWOmGuLtsNxivzF01NL3HWE1BbMlwCndAkAK8uuu29sm6OOXbj9l245kG/eL/y3PVf0W5f3u//dJQg4tUuTu6miAwRXppRHhYnVCwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=HGCOPdKi; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2e968e77515so23094001fa.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 03:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1716977805; x=1717582605; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yaPEJ9XT+XQdecfVTDIRiBCYJgWPcXhInCwaGbIaH5Q=;
        b=HGCOPdKiZKChi5IVVlWkrG/xbbEw/j/2uSliZDafkaVjUjznoyha31U5Di7dJjliwS
         4CWveeAwI8z/hM+1Vif2rS4GW/9BXbHxUYd21SHiUZUEtn3/PWpBD84NjP2uWkitsSjT
         pmEgI6robzRh2FsNBzMRkEZkkB9hODprhB7lIkNP+DRvW059qkNyHsuxserzsZRTyta2
         JuWLul9EbkZLIs4PQlObzJGqbN+01ArRPIrw+IoRlKpYgqy2pinkvSc56+2ERDVOsnN8
         xDj/cH+fTz1cmeFUk4Qpq//9kBjJgQOifAU80L/dcaitJ1oJUVncWfS+a13K9ArvrXD7
         jlIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716977805; x=1717582605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yaPEJ9XT+XQdecfVTDIRiBCYJgWPcXhInCwaGbIaH5Q=;
        b=KyOwBxS4R1T60N4WPrFyrNu5k5rKMMIbxLxborGYyzMx1yEuEVoki+/h+hcPb84Hmo
         yX/ajzy8LP5JEFOd9rk5QAPBI2qPSCwjs+xPs6+//oMItQQ84zS2++u2wlI0UashTXzn
         z8/801nNIsT5EtdBYjtV5++HjK+qYmO620b0LJ5uCy02GZwtd4EGoraqGnye6ABzH2cY
         QuYE13LkbHDwU5oHS7OXPdJ9tm2+8KZpH2yGZXYiie9rIQPcuS99Ra0IV2M1u837zzoT
         i9M0L22OpQH1+tvAyz9AOLoaDBBWFNOt70GUmWxrsasn3quacX/0Mtw8qaoqsal5V0Ze
         RQ6g==
X-Gm-Message-State: AOJu0Yx3KWgNDDKyRWl0r+GfKUHnCyJkMn9UybsUPeWiFXAa5xt+lFaf
	aGI7KYX4Js6Vc7mFvdUxNkNsnKNZzh03TWNhh1/NqhbuJAvoJy5Lw6S8LaUcV7XbQlOnNO/3hSz
	IJfwLitvbfbvTAtrEUn6CMfJflZB185Z9LZr3VA==
X-Google-Smtp-Source: AGHT+IFjlF4scChU5GhsGTCGWx0HUlFf8bcUPTz9KUoDmhB1jEA3ctAItCfx3gyXfIj95PO9n6qyZGe0pIzFYBeUEgQ=
X-Received: by 2002:a2e:7c08:0:b0:2e3:7f19:7072 with SMTP id
 38308e7fff4ca-2e95b1dc4damr91784301fa.28.1716977804566; Wed, 29 May 2024
 03:16:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528164132.2451685-1-maz@kernel.org> <CAK9=C2XNPJP0X=pg5TSrQbsuouDD3jP-gy2Sm4BXNJp0ZiWp+A@mail.gmail.com>
 <86bk4pm8j1.wl-maz@kernel.org>
In-Reply-To: <86bk4pm8j1.wl-maz@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 29 May 2024 15:46:30 +0530
Message-ID: <CAK9=C2XRx==OTPoGW_AHmjq4Th0bv4okwcq6-3L5JYwHwQp97A@mail.gmail.com>
Subject: Re: [PATCH] of: property: Fix fw_devlink handling of interrupt-map
To: Marc Zyngier <maz@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org, 
	Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2024 at 12:03=E2=80=AFPM Marc Zyngier <maz@kernel.org> wrot=
e:
>
> On Wed, 29 May 2024 06:15:52 +0100,
> Anup Patel <apatel@ventanamicro.com> wrote:
> >
> > On Tue, May 28, 2024 at 10:11=E2=80=AFPM Marc Zyngier <maz@kernel.org> =
wrote:
> > >
> > > Commit d976c6f4b32c ("of: property: Add fw_devlink support for
> > > interrupt-map property") tried to do what it says on the tin,
> > > but failed on a couple of points:
> > >
> > > - it confuses bytes and cells. Not a huge deal, except when it
> > >   comes to pointer arithmetic
> > >
> > > - it doesn't really handle anything but interrupt-maps that have
> > >   their parent #address-cells set to 0
> > >
> > > The combinations of the two leads to some serious fun on my M1
> > > box, with plenty of WARN-ON() firing all over the shop, and
> > > amusing values being generated for interrupt specifiers.
> > >
> > > Address both issues so that I can boot my machines again.
> > >
> > > Fixes: d976c6f4b32c ("of: property: Add fw_devlink support for interr=
upt-map property")
> > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > > Cc: Anup Patel <apatel@ventanamicro.com>
> > > Cc: Saravana Kannan <saravanak@google.com>
> > > Cc: Rob Herring (Arm) <robh@kernel.org>
> >
> > Thanks for the fix patch but unfortunately it breaks for RISC-V.
> >
> > > ---
> > >  drivers/of/property.c | 16 ++++++++++++++--
> > >  1 file changed, 14 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > > index 1c83e68f805b..9adebc63bea9 100644
> > > --- a/drivers/of/property.c
> > > +++ b/drivers/of/property.c
> > > @@ -1322,7 +1322,13 @@ static struct device_node *parse_interrupt_map=
(struct device_node *np,
> > >         addrcells =3D of_bus_n_addr_cells(np);
> > >
> > >         imap =3D of_get_property(np, "interrupt-map", &imaplen);
> > > -       if (!imap || imaplen <=3D (addrcells + intcells))
> > > +       imaplen /=3D sizeof(*imap);
> > > +
> > > +       /*
> > > +        * Check that we have enough runway for the child unit interr=
upt
> > > +        * specifier and a phandle. That's the bare minimum we can ex=
pect.
> > > +        */
> > > +       if (!imap || imaplen <=3D (addrcells + intcells + 1))
> > >                 return NULL;
> > >         imap_end =3D imap + imaplen;
> > >
> > > @@ -1346,8 +1352,14 @@ static struct device_node *parse_interrupt_map=
(struct device_node *np,
> > >                 if (!index)
> > >                         return sup_args.np;
> > >
> > > -               of_node_put(sup_args.np);
> > > +               /*
> > > +                * Account for the full parent unit interrupt specifi=
er
> > > +                * (address cells, interrupt cells, and phandle).
> > > +                */
> > > +               imap +=3D of_bus_n_addr_cells(sup_args.np);
> >
> > This breaks for RISC-V because we don't have "#address-cells"
> > property in interrupt controller DT node and of_bus_n_addr_cells()
> > retrieves "#address-cells" from the parent of interrupt controller.
>
> That's a feature, not a bug. #address-cells, AFAICT, applies to all
> child nodes until you set it otherwise.
>
> >
> > The of_irq_parse_raw() looks for "#address-cells" property
> > in the interrupt controller DT node only so we should do a
> > similar thing here as well.
>
> This looks more like a of_irq_parse_raw() bug than anything else.

If we change of_irq_parse_raw() to use of_bus_n_addr_cells()
then it would still break for RISC-V.

Using of_bus_n_addr_cells() over here forces interrupt controller
DT nodes to have a "#address-cells" DT property. There are many
interrupt controller (e.g. RISC-V PLIC or RISC-V APLIC) where the
DT bindings don't require "#address-cells" DT property and existing
DTS files with such interrupt controllers don't have it either.

In the RISC-V world, there have been quite a few QEMU releases
where the generated DT node of the interrupt controller does not
have the "#address-cells" property. This patch breaks the kernel
for all such QEMU releases.

I think we should align the implementation in parse_interrupt_map()
with of_irq_parse_raw() and use of_property_read_u32() instead of
of_bus_n_addr_cells().

Regards,
Anup

>
> >
> > The below change on top of this patch worked for me.
> >
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index 9adebc63bea9..f54da2989ea9 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1308,7 +1308,7 @@ static struct device_node
> > *parse_interrupt_map(struct device_node *np,
> >  {
> >      const __be32 *imap, *imap_end, *addr;
> >      struct of_phandle_args sup_args;
> > -    u32 addrcells, intcells;
> > +    u32 addrcells, intcells, paddrcells;
> >      int i, imaplen;
> >
> >      if (!IS_ENABLED(CONFIG_OF_IRQ))
> > @@ -1356,7 +1356,8 @@ static struct device_node
> > *parse_interrupt_map(struct device_node *np,
> >           * Account for the full parent unit interrupt specifier
> >           * (address cells, interrupt cells, and phandle).
> >           */
> > -        imap +=3D of_bus_n_addr_cells(sup_args.np);
> > +        if (!of_property_read_u32(sup_args.np, "#address-cells", &padd=
rcells))
> > +            imap +=3D paddrcells;
>
> This looks wrong to me for the reason I outlined above: you need to
> look for a valid #address-cells all along the parent chain, not just
> in the interrupt-controller node.
>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.

