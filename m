Return-Path: <devicetree+bounces-70429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 053838D34D9
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:45:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 835F81F24F30
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E20A17B51F;
	Wed, 29 May 2024 10:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD0/hxXt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E901804F;
	Wed, 29 May 2024 10:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716979503; cv=none; b=Latp6u6XSB5h/5+WlHdIjeWLiUyqq4Eq7UrqWMWkysQqbhXcrwEUY0QyHX/yRIjTQXd2jN7e7atw6SWPn5Us83lsN2qF+2mNdmwDJJUEbvvpHofm3XxIiS9wW+d5/b7wqgWroj5qomTE/6jKEV6+popsMJDoDBOqzmKguhW7XRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716979503; c=relaxed/simple;
	bh=DChLerdywJ2VIfY90QcVmGj9zaM+zQADMtga2RWsg0Q=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GMQsN9/j2gTZ59avEfdxNlWStP3tKhOhegVNwhRrV+F7vSmEScPUCm5iPFcIocSNR7UsnFW5uSNShK0fROcgOz72DJo2NlqkAPx2FaDWLUkHkvY/ZKd1MVc1HM8j5fogz5JlZwkzrgLU7SjBu+C1LdZRX1vM+A70cT/1Ex5L0kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD0/hxXt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4C70C2BD10;
	Wed, 29 May 2024 10:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716979502;
	bh=DChLerdywJ2VIfY90QcVmGj9zaM+zQADMtga2RWsg0Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=GD0/hxXtID9qZ90DSquWe/Fen/Gej2oChC8r3GtEMxqdKZvfQ6AJWzgvAKFGY1cmd
	 7Bgj5x5WYfBCvTnMDGX7CNpQUQy1WsyjprmxlOgUDyYjslR9pKLe10EFwMoqtXHK/a
	 8nvEwZw5VNk3Yxrcr7n6Gtn20NUSJYKiAEBs8HPF+2920QjKXmpAza4QonkVLMTFg3
	 LC268LGiZhqMzrKzwsfrvgrsKUGoE4bFjrCyOuSbu6m+nxeh1JASoZlDzNYjBT3V2e
	 9NdxbqNunYQ+0jJF3YQOIbTbGDZTBdNTFoeX4LunEbjdlhJn1SIawQx0rzvd4bfj52
	 elVro26NwU8NA==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1sCGnj-00GaQE-KB;
	Wed, 29 May 2024 11:45:00 +0100
Date: Wed, 29 May 2024 11:44:58 +0100
Message-ID: <86a5k8nbh1.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	Saravana Kannan <saravanak@google.com>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] of: property: Fix fw_devlink handling of interrupt-map
In-Reply-To: <CAK9=C2XRx==OTPoGW_AHmjq4Th0bv4okwcq6-3L5JYwHwQp97A@mail.gmail.com>
References: <20240528164132.2451685-1-maz@kernel.org>
	<CAK9=C2XNPJP0X=pg5TSrQbsuouDD3jP-gy2Sm4BXNJp0ZiWp+A@mail.gmail.com>
	<86bk4pm8j1.wl-maz@kernel.org>
	<CAK9=C2XRx==OTPoGW_AHmjq4Th0bv4okwcq6-3L5JYwHwQp97A@mail.gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/29.2
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: apatel@ventanamicro.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org, saravanak@google.com, robh@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Wed, 29 May 2024 11:16:30 +0100,
Anup Patel <apatel@ventanamicro.com> wrote:
>=20
> On Wed, May 29, 2024 at 12:03=E2=80=AFPM Marc Zyngier <maz@kernel.org> wr=
ote:
> >
> > On Wed, 29 May 2024 06:15:52 +0100,
> > Anup Patel <apatel@ventanamicro.com> wrote:
> > >
> > > On Tue, May 28, 2024 at 10:11=E2=80=AFPM Marc Zyngier <maz@kernel.org=
> wrote:
> > > >
> > > > Commit d976c6f4b32c ("of: property: Add fw_devlink support for
> > > > interrupt-map property") tried to do what it says on the tin,
> > > > but failed on a couple of points:
> > > >
> > > > - it confuses bytes and cells. Not a huge deal, except when it
> > > >   comes to pointer arithmetic
> > > >
> > > > - it doesn't really handle anything but interrupt-maps that have
> > > >   their parent #address-cells set to 0
> > > >
> > > > The combinations of the two leads to some serious fun on my M1
> > > > box, with plenty of WARN-ON() firing all over the shop, and
> > > > amusing values being generated for interrupt specifiers.
> > > >
> > > > Address both issues so that I can boot my machines again.
> > > >
> > > > Fixes: d976c6f4b32c ("of: property: Add fw_devlink support for inte=
rrupt-map property")
> > > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > > > Cc: Anup Patel <apatel@ventanamicro.com>
> > > > Cc: Saravana Kannan <saravanak@google.com>
> > > > Cc: Rob Herring (Arm) <robh@kernel.org>
> > >
> > > Thanks for the fix patch but unfortunately it breaks for RISC-V.
> > >
> > > > ---
> > > >  drivers/of/property.c | 16 ++++++++++++++--
> > > >  1 file changed, 14 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > > > index 1c83e68f805b..9adebc63bea9 100644
> > > > --- a/drivers/of/property.c
> > > > +++ b/drivers/of/property.c
> > > > @@ -1322,7 +1322,13 @@ static struct device_node *parse_interrupt_m=
ap(struct device_node *np,
> > > >         addrcells =3D of_bus_n_addr_cells(np);
> > > >
> > > >         imap =3D of_get_property(np, "interrupt-map", &imaplen);
> > > > -       if (!imap || imaplen <=3D (addrcells + intcells))
> > > > +       imaplen /=3D sizeof(*imap);
> > > > +
> > > > +       /*
> > > > +        * Check that we have enough runway for the child unit inte=
rrupt
> > > > +        * specifier and a phandle. That's the bare minimum we can =
expect.
> > > > +        */
> > > > +       if (!imap || imaplen <=3D (addrcells + intcells + 1))
> > > >                 return NULL;
> > > >         imap_end =3D imap + imaplen;
> > > >
> > > > @@ -1346,8 +1352,14 @@ static struct device_node *parse_interrupt_m=
ap(struct device_node *np,
> > > >                 if (!index)
> > > >                         return sup_args.np;
> > > >
> > > > -               of_node_put(sup_args.np);
> > > > +               /*
> > > > +                * Account for the full parent unit interrupt speci=
fier
> > > > +                * (address cells, interrupt cells, and phandle).
> > > > +                */
> > > > +               imap +=3D of_bus_n_addr_cells(sup_args.np);
> > >
> > > This breaks for RISC-V because we don't have "#address-cells"
> > > property in interrupt controller DT node and of_bus_n_addr_cells()
> > > retrieves "#address-cells" from the parent of interrupt controller.
> >
> > That's a feature, not a bug. #address-cells, AFAICT, applies to all
> > child nodes until you set it otherwise.
> >
> > >
> > > The of_irq_parse_raw() looks for "#address-cells" property
> > > in the interrupt controller DT node only so we should do a
> > > similar thing here as well.
> >
> > This looks more like a of_irq_parse_raw() bug than anything else.
>=20
> If we change of_irq_parse_raw() to use of_bus_n_addr_cells()
> then it would still break for RISC-V.

I'm not trying to "fix" riscv. I'm merely outlining that you are
relying on both broken DTs and a buggy OS.

>=20
> Using of_bus_n_addr_cells() over here forces interrupt controller
> DT nodes to have a "#address-cells" DT property. There are many
> interrupt controller (e.g. RISC-V PLIC or RISC-V APLIC) where the
> DT bindings don't require "#address-cells" DT property and existing
> DTS files with such interrupt controllers don't have it either.

It forces you to set #address-cells *if you rely on a different
value in a child node*. It's not like the semantics are new.

>=20
> In the RISC-V world, there have been quite a few QEMU releases
> where the generated DT node of the interrupt controller does not
> have the "#address-cells" property. This patch breaks the kernel
> for all such QEMU releases.

Congratulations, you've forked DT. News at 11.

>=20
> I think we should align the implementation in parse_interrupt_map()
> with of_irq_parse_raw() and use of_property_read_u32() instead of
> of_bus_n_addr_cells().

I think we should fix the kernel and quirk riscv as broken, just like
PPC or sparc.

	M.

--=20
Without deviation from the norm, progress is not possible.

