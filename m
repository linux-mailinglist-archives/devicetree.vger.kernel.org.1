Return-Path: <devicetree+bounces-58778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E368A2FDF
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD1FF1F23056
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B09285959;
	Fri, 12 Apr 2024 13:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JbvBF3Bj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FE983CDB
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 13:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712929867; cv=none; b=a35kR/ZeAzlMm8DOX6BkxtRqkDZT+XbxABXQLHE3a3XKqiEUkmHlCdK9bCrfPDDGCUBXAQlY24ELDZZxKYp8HWV9zgZVExLsbR5VC/90eJuu7azohrVgBEzpYRDxen3NWDc12BXR3/0wEw5ccndo/TEJD/vuZjt1YWrKaty7FLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712929867; c=relaxed/simple;
	bh=m1z4lnBjEM8XYSqF+Cb45YhG/mvQJnOYj/iIHznJC5Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=exZRwJwp54RoIPbqGNR7Coklb4Orwy+n7ntEc+N/d55IjiY4HGq7B3K2JYR/FQ44u+Kj1s+oGCkCCD5f6c3DZr04p0KxC26Y4USLnil5fXfRgSy+QVqIgEu5bPGjIGVI3I1J4OjqiSEugApTqFMAzcPBG/HGEOep0hPquk88meQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JbvBF3Bj; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2da08b06e0dso7703981fa.2
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 06:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1712929862; x=1713534662; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g6ftp8YirSnx3Hs03pwZ0/loDPXIVialAS8QDpJUQK4=;
        b=JbvBF3BjfJ9PHhtedgW5ImNNgmNTOLFGM+NkhdhiAFDxbHGQACUW4OpaFE9z+rfzfR
         mZRrPVBj5zFPnztBehac4uMCjq8AmlnsBmQ679LAqs4qDUb35i7AAMXQTvEoTe6eoLKz
         USOuouYtvGjOGbjtvLba6i0ERJpw67A77TFTuDg4t/jCPPP2TDRIMWDlVG8Mbw4TMUJn
         Dgk/r1aOCrcjSXS30eJAJbD1QkePn1ZZvic+0h7vSqq3AZLkALSX5sEigoa+lClp8916
         GG77PzxRumsOSCTe0/MwsFoDQBqqM2GC+g0A/iDnXq7NqcYvOxRsrN8Hyi+hw1dTym2C
         iBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712929862; x=1713534662;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6ftp8YirSnx3Hs03pwZ0/loDPXIVialAS8QDpJUQK4=;
        b=vaJNyp4Lz5MhrCnezk3ed55GeoDWYw88k9mRhkT9cqX6dDnz/JfFx55EsPt8BJV6Rz
         ZDHs+0wpn3Fa1z94VMCqhzXwA3Qg9VH6gYfwUqsmP1UBgKoAkcE8kQFkkZDOTj6pBq/R
         gjmvfBMunWhlF2QxGRYiiXpM97Id8xLnJxd6eGZXzPMCV+1nCPZhFzHl9oHFvDPGCTpl
         ub1PpDU3IoikWQSrEkgChrJ4kNaEtdvufPEVJ4CzDy9VREx1LLpHmU6H1eHArgUXMfz0
         Q6PVz2pEqWcFKoSsMPWbCxVe0kpH13ODusmoQFd3rbRbIqo1OArTyU0jQZBHR7VovVty
         ThVA==
X-Forwarded-Encrypted: i=1; AJvYcCXi/GPyS8HHp5ftKbpIyM531Wm1mh1bZdhnvg8rW/slTHSsObzY8ejvJvu0oy4JlC0kCTRSSnE+ynyUvYlLiseU+ElwtEjF9hkrMg==
X-Gm-Message-State: AOJu0YzLGTLAgROwMfJsmBGEViGNXsaIOZZ2770J/oWN2AJ293Iw9ijF
	1LqurPBhiajrUTAXEKpx1JxXNT7Oe8HDLUeFCvKk9/QbjJXF5TJewJeHCOTtl0XoHYTBoYOLjcY
	rv9LcvXREY65oJ3fDUwUQE7QE66dtsCO+fEBSaA==
X-Google-Smtp-Source: AGHT+IELmLzLoKV3AEX3BhZ0JXDV3totmY1DGPSToJQHF3khM/6jn4A/6uLdV7l7OmdjjJbUTX107xSW5Eh+Bfovt4c=
X-Received: by 2002:a05:651c:620:b0:2d9:f68a:d82c with SMTP id
 k32-20020a05651c062000b002d9f68ad82cmr1547619lje.41.1712929861426; Fri, 12
 Apr 2024 06:51:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240412112931.285507-1-apatel@ventanamicro.com> <CAL_JsqJBpN2qNgiKs_nL+JxM7qaaQkd4Gk06UNefp3gB1HQ7_w@mail.gmail.com>
In-Reply-To: <CAL_JsqJBpN2qNgiKs_nL+JxM7qaaQkd4Gk06UNefp3gB1HQ7_w@mail.gmail.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 12 Apr 2024 19:20:49 +0530
Message-ID: <CAK9=C2UMP3hAmn4-QruO90E1ZKY_nMP-yt5T6hife-9hC5H92A@mail.gmail.com>
Subject: Re: [PATCH] of: property: Add fw_devlink support for interrupt-map property
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 12, 2024 at 6:07=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Fri, Apr 12, 2024 at 6:29=E2=80=AFAM Anup Patel <apatel@ventanamicro.c=
om> wrote:
> >
> > Some of the PCI controllers (such as generic PCI host controller)
> > use "interrupt-map" DT property to describe the mapping between
> > PCI endpoints and PCI interrupt pins.
>
> I would go as far as saying that's the only case as that's the only
> case where the interrupts are not described in DT.

Sure, I will update the text.

>
> > Currently, there is no fw_devlink created based on "interrupt-map"
> > DT property so interrupt controller is not guaranteed to be probed
> > before PCI host controller. This mainly affects RISC-V platforms
> > where both PCI host controller and interrupt controllers are probed
> > as regular platform devices.
>
> That's *every* system with PCI really.

Okay, I will re-word.

>
> > This creates fw_devlink between consumers (PCI host controller) and
> > supplier (interrupt controller) based on "interrupt-map" DT property.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/of/property.c | 53 +++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> >
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index a6358ee99b74..ccbbb651a89a 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1311,6 +1311,58 @@ static struct device_node *parse_interrupts(stru=
ct device_node *np,
> >         return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args=
.np;
> >  }
> >
> > +static struct device_node *parse_interrupt_map(struct device_node *np,
> > +                                              const char *prop_name, i=
nt index)
> > +{
> > +       struct device_node *tn, *ipar, *supnp =3D NULL;
> > +       u32 addrcells, intcells, cells;
> > +       const __be32 *imap, *imap_end;
> > +       int i, imaplen;
> > +
> > +       if (!IS_ENABLED(CONFIG_OF_IRQ))
> > +               return NULL;
> > +
> > +       if (strcmp(prop_name, "interrupt-map"))
> > +               return NULL;
> > +
> > +       ipar =3D of_node_get(np);
> > +       do {
> > +               if (!of_property_read_u32(ipar, "#interrupt-cells", &in=
tcells))
> > +                       break;
> > +               tn =3D ipar;
> > +               ipar =3D of_irq_find_parent(ipar);
> > +               of_node_put(tn);
> > +       } while (ipar);
> > +       if (!ipar)
> > +               return NULL;
> > +       addrcells =3D of_bus_n_addr_cells(ipar);
> > +       of_node_put(ipar);
> > +
> > +       imap =3D of_get_property(np, "interrupt-map", &imaplen);
> > +       if (!imap || imaplen <=3D (addrcells + intcells))
> > +               return NULL;
> > +       imap_end =3D imap + imaplen;
> > +
> > +       for (i =3D 0; i <=3D index && imap < imap_end; i++) {
> > +               if (supnp)
> > +                       of_node_put(supnp);
> > +
> > +               imap +=3D addrcells;
> > +               imap +=3D intcells;
> > +
> > +               supnp =3D of_find_node_by_phandle(be32_to_cpu(imap[0]))=
;
> > +               if (!supnp)
> > +                       return NULL;
> > +               imap +=3D 1;
> > +
> > +               if (of_property_read_u32(supnp, "#interrupt-cells", &ce=
lls))
> > +                       return NULL;
> > +               imap +=3D cells;
>
> This is wrong. Technically, you can have #address-cells too.
>
> The bigger problem I have is this creates 2 sets of 'interrupt-map'
> parsing code. Your version skips a lot of things like whether the
> interrupt controller is available and there's the list of
> 'interrupt-map' abusers to think about.
>

In my first attempt, I was trying to keep it simple but I guess I
over-simplified it.

I have an alternate approach to use of_irq_parse_raw() over
here (similar to of_irq_parse_pci() in drivers/pci/of.c). Are you
okay with this approach ?

Regards,
Anup

