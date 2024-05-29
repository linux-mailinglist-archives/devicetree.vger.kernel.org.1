Return-Path: <devicetree+bounces-70441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2104C8D358D
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 13:28:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40F6E1C226EC
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 11:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA0C17B42C;
	Wed, 29 May 2024 11:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="GHxlCekw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3477169397
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 11:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716982132; cv=none; b=II92fs5f65v2NEPbaYyy2lEs4x1RG8HRqHDZPdTZlO2IHV0sS05G8RjpDKBfCcFt2s8F8/uQsZAoSPNRC73JLgmGnbOM2h+YLtZRJFDOuF4GNaZyGUam3lwHksIZhx0e4LJoNfcKvWZk3OXZxu6Q8VkyV2AESMRlv0Aoh+vFjwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716982132; c=relaxed/simple;
	bh=L+HCQ0LzcZIRB2KgGPWG7c3mgRefyka2tZFvVxfHYFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tW21yxxIB4lItRh3jO/SiAwW8G7T51p4pRLKivrWIkJxuTlrCoW3AYusJG1iLZytPzzVrggPRQAKqx9aZj+aT8ctw33GwhUQyQeew04v3vzTWhEFBnC3PP9ClmuK3+wrzSmWGzCJHCarqdsckqTt2ds+KR9t5SE4bm6ZlqOsCRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=GHxlCekw; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e96f29884dso19594301fa.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 04:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1716982129; x=1717586929; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zLzGz8ZCVVO6lOpfLPlQp3f813FvHT+QtFRxJi4eyk4=;
        b=GHxlCekw/UZtSFsXBJaHhSzFFzkHlpE5/Au5mYxakLzdCSt+r12ZzcjQ/SpkTdn9Bv
         NcS8QMvh+Y+t6+wS9PnhYjxAB6wLChDzSwveD32RHZtr77H685ivjGaAuxamnqzHNM5d
         YmsZdFULHmGR28+rYPruEAVksVwIHsek0VuEfL28kmaK4tmc47bC0mTPYqZmV249rM9z
         cLgunvDwuetQEFBWAVbyy1cc2tqild3iclRRFfD+BetRt3yMtdoQoW+/Fd5dMt+LN/t5
         LsDV3Zc2ZM1zRBlcXUX5HpRdKNSVeLQsOs3i670dcJi4yNjkDVBZNh7gQNPTt1TsqwlM
         TIhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716982129; x=1717586929;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zLzGz8ZCVVO6lOpfLPlQp3f813FvHT+QtFRxJi4eyk4=;
        b=PdUsYwvULtf2F91LPiIC9qXOZA8QU+GyWN7oPcu61iHWHHcyuksUkuJ2t05qBmKH4M
         wsGKOE5Bjuch1Ifg8V3D9fpaR184iSYWEGdo6JlFW/8dV1t0OnQT85/l+Kb4+4T948So
         pqXODH++fQm8SAaY4G5t5bLOZZ8Hl+Pwxqo6sOpTp6arod2ibZqdMiTGe+RXdUxDZstv
         JsZQ78fSNdVStJPI3rXcI6yBJ39jmQMfSNaZKWjl1AjUZu1PX41adOs4R79YwIWmLTHs
         h0lGZedBBfETmTO7TDx9TDmcBtbVExWgzs+JsaOX0qqfhM4IucoFpbWtz1YZfnInEh+P
         5VwA==
X-Gm-Message-State: AOJu0YxYdmyhkBy9w0JbRgoV6Qg8Pbs9QawIJjcRoaKAALlpAQd3SZ/W
	m1hHeHoX5K5ARBxU1ugHrZQfydmpRGl/qZrV6uoJSd6jv1GWLmST0/lzXN2dra+bJuTWU2JTeEg
	8cjPjSr0H2OjaFdkrx+cFZFrwWOb0trXXwUa7rg==
X-Google-Smtp-Source: AGHT+IG2FRfDgIBYznp0vX/GdwMe+FB13qOPo8Ip2JkZkrlYHIyl0PzJ+pURnCwMJsb6hGhYxNOHOf3hmCyJbtpJHrU=
X-Received: by 2002:a2e:bc08:0:b0:2d6:f69d:c74c with SMTP id
 38308e7fff4ca-2e95b256308mr100224821fa.38.1716982128754; Wed, 29 May 2024
 04:28:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528164132.2451685-1-maz@kernel.org> <CAK9=C2XNPJP0X=pg5TSrQbsuouDD3jP-gy2Sm4BXNJp0ZiWp+A@mail.gmail.com>
 <86bk4pm8j1.wl-maz@kernel.org> <CAK9=C2XRx==OTPoGW_AHmjq4Th0bv4okwcq6-3L5JYwHwQp97A@mail.gmail.com>
 <86a5k8nbh1.wl-maz@kernel.org>
In-Reply-To: <86a5k8nbh1.wl-maz@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 29 May 2024 16:58:34 +0530
Message-ID: <CAK9=C2Ugq=0y8M86CD75mQccBo=TBLBomb4rqC4i1naKy2LyWQ@mail.gmail.com>
Subject: Re: [PATCH] of: property: Fix fw_devlink handling of interrupt-map
To: Marc Zyngier <maz@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org, 
	Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2024 at 4:15=E2=80=AFPM Marc Zyngier <maz@kernel.org> wrote=
:
>
> On Wed, 29 May 2024 11:16:30 +0100,
> Anup Patel <apatel@ventanamicro.com> wrote:
> >
> > On Wed, May 29, 2024 at 12:03=E2=80=AFPM Marc Zyngier <maz@kernel.org> =
wrote:
> > >
> > > On Wed, 29 May 2024 06:15:52 +0100,
> > > Anup Patel <apatel@ventanamicro.com> wrote:
> > > >
> > > > On Tue, May 28, 2024 at 10:11=E2=80=AFPM Marc Zyngier <maz@kernel.o=
rg> wrote:
> > > > >
> > > > > Commit d976c6f4b32c ("of: property: Add fw_devlink support for
> > > > > interrupt-map property") tried to do what it says on the tin,
> > > > > but failed on a couple of points:
> > > > >
> > > > > - it confuses bytes and cells. Not a huge deal, except when it
> > > > >   comes to pointer arithmetic
> > > > >
> > > > > - it doesn't really handle anything but interrupt-maps that have
> > > > >   their parent #address-cells set to 0
> > > > >
> > > > > The combinations of the two leads to some serious fun on my M1
> > > > > box, with plenty of WARN-ON() firing all over the shop, and
> > > > > amusing values being generated for interrupt specifiers.
> > > > >
> > > > > Address both issues so that I can boot my machines again.
> > > > >
> > > > > Fixes: d976c6f4b32c ("of: property: Add fw_devlink support for in=
terrupt-map property")
> > > > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > > > > Cc: Anup Patel <apatel@ventanamicro.com>
> > > > > Cc: Saravana Kannan <saravanak@google.com>
> > > > > Cc: Rob Herring (Arm) <robh@kernel.org>
> > > >
> > > > Thanks for the fix patch but unfortunately it breaks for RISC-V.
> > > >
> > > > > ---
> > > > >  drivers/of/property.c | 16 ++++++++++++++--
> > > > >  1 file changed, 14 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > > > > index 1c83e68f805b..9adebc63bea9 100644
> > > > > --- a/drivers/of/property.c
> > > > > +++ b/drivers/of/property.c
> > > > > @@ -1322,7 +1322,13 @@ static struct device_node *parse_interrupt=
_map(struct device_node *np,
> > > > >         addrcells =3D of_bus_n_addr_cells(np);
> > > > >
> > > > >         imap =3D of_get_property(np, "interrupt-map", &imaplen);
> > > > > -       if (!imap || imaplen <=3D (addrcells + intcells))
> > > > > +       imaplen /=3D sizeof(*imap);
> > > > > +
> > > > > +       /*
> > > > > +        * Check that we have enough runway for the child unit in=
terrupt
> > > > > +        * specifier and a phandle. That's the bare minimum we ca=
n expect.
> > > > > +        */
> > > > > +       if (!imap || imaplen <=3D (addrcells + intcells + 1))
> > > > >                 return NULL;
> > > > >         imap_end =3D imap + imaplen;
> > > > >
> > > > > @@ -1346,8 +1352,14 @@ static struct device_node *parse_interrupt=
_map(struct device_node *np,
> > > > >                 if (!index)
> > > > >                         return sup_args.np;
> > > > >
> > > > > -               of_node_put(sup_args.np);
> > > > > +               /*
> > > > > +                * Account for the full parent unit interrupt spe=
cifier
> > > > > +                * (address cells, interrupt cells, and phandle).
> > > > > +                */
> > > > > +               imap +=3D of_bus_n_addr_cells(sup_args.np);
> > > >
> > > > This breaks for RISC-V because we don't have "#address-cells"
> > > > property in interrupt controller DT node and of_bus_n_addr_cells()
> > > > retrieves "#address-cells" from the parent of interrupt controller.
> > >
> > > That's a feature, not a bug. #address-cells, AFAICT, applies to all
> > > child nodes until you set it otherwise.
> > >
> > > >
> > > > The of_irq_parse_raw() looks for "#address-cells" property
> > > > in the interrupt controller DT node only so we should do a
> > > > similar thing here as well.
> > >
> > > This looks more like a of_irq_parse_raw() bug than anything else.
> >
> > If we change of_irq_parse_raw() to use of_bus_n_addr_cells()
> > then it would still break for RISC-V.
>
> I'm not trying to "fix" riscv. I'm merely outlining that you are
> relying on both broken DTs and a buggy OS.
>
> >
> > Using of_bus_n_addr_cells() over here forces interrupt controller
> > DT nodes to have a "#address-cells" DT property. There are many
> > interrupt controller (e.g. RISC-V PLIC or RISC-V APLIC) where the
> > DT bindings don't require "#address-cells" DT property and existing
> > DTS files with such interrupt controllers don't have it either.
>
> It forces you to set #address-cells *if you rely on a different
> value in a child node*. It's not like the semantics are new.

We don't have child nodes under the interrupt controller DT node
(for both RISC-V PLIC and APLIC) so we certainly don't require the
"#address-cells" property in the interrupt controller DT node.

>
> >
> > In the RISC-V world, there have been quite a few QEMU releases
> > where the generated DT node of the interrupt controller does not
> > have the "#address-cells" property. This patch breaks the kernel
> > for all such QEMU releases.
>
> Congratulations, you've forked DT. News at 11.

Can you elaborate how ?

>
> >
> > I think we should align the implementation in parse_interrupt_map()
> > with of_irq_parse_raw() and use of_property_read_u32() instead of
> > of_bus_n_addr_cells().
>
> I think we should fix the kernel and quirk riscv as broken, just like
> PPC or sparc.
>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.

Regards,
Anup

