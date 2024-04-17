Return-Path: <devicetree+bounces-59909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B1D8A79FE
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 03:04:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05EF9284AA4
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 01:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A6001877;
	Wed, 17 Apr 2024 01:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="O0XGnpC5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD4717CD
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 01:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713315845; cv=none; b=udXdWRMv/tRqN3olCiV5K15hiX/uqfoqIDyGkQ3nq53d6QQ1SiFhekkqZ9ybIRPsytDIqAimMEK89OKviab0LdGVbTCwOJ6jFNdCEN+RXDA9a4yizHEUh4KqI+keLEZvr4e09hPCwmfoIxyM26+sNXzdI2QWl1D1H1Ekb8CTNu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713315845; c=relaxed/simple;
	bh=ApJLZ2EuaU+5tyeB65wbduCgQyBQGakeHaRYXMUkuU0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Aya8SNq4uFiB5l3TRSA4CZrLVSap64rnI+9i47OAJNp8uLID8xShENpCuGVNwv7UqE1uNa4MUd2kak45IXbY7frOwiPG2Gl34xA0WaYPeMmrrdhHKz8bcMM61Oyy+caXYggR/iKB33VxTvw7u+rjx20mCwMDMH8jMg3Uint2UxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=O0XGnpC5; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-434b5abbb0dso109761cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 18:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713315843; x=1713920643; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DkfTVjPD3XwT0FdLWkEiWLmQxyUXEV4QDw4WnoToh/k=;
        b=O0XGnpC5xHpB/ELquYIE7CoxT64vcA2wP8AFshYA2WmUiP6dQlidHbUGdjPXuJ70gb
         3oDiZVBD6pBFBoALm1Jv52DuBxPrO7dl9uieQYea9hthODtJpURhHzmgJa1lb2+cxCv4
         sM3FVbhBfDohpX3Iyze7zt2ZYLBMqIf0+BC46hA4BYZ9VdU4DxV11rHpLPmt3sr9wdH2
         feJNgxffQZTio+rVGEXg2vYT/4HCGR/v8uv1kbdRQsNIbGrOG6URmZW048ZQIamEt/RZ
         Rg2tqeX+Rf81vmwYt+MBjjqpPXo8HwF+mdCtj0J5ZJOyplAFtVasmFnCjTy65XWhtgSd
         qrCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713315843; x=1713920643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DkfTVjPD3XwT0FdLWkEiWLmQxyUXEV4QDw4WnoToh/k=;
        b=uSDKGniuwnVLnT8aWxr4WOQZ96d1OG1BOJdhwRxdNBIxUGbHOiMLXQy08dhro8xkus
         O/gyBxb/rTLaYNY5vTnMcJJPZ99HIsWVIYY6GOteAV+XwdUe9esF8qh3GYpe1Hcuygw+
         szr/zaMAJWiDcvHUbwTufXnLP1pgPEhwYc8fdmSvS5hSQF3wW109TloUu7FP8/rrhnb8
         4N/s+8T5G8ByAOBLx9vJDDk3m9bXB28KDeYPfdWh8N0FpuKUuPTCSEkrWxyhuG6dk6FJ
         DxpBJSXprb+760piXu40q7kbk7gfE9KXLAnEx0ysosV4pQ0hJeLbXbFBwb0+sp296cP2
         XvZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcnWXxrLXmnKTyZJVnyyzFZz/DqRdn4km4An/HdlcxRR044MCjjK+hPOPOA1+UsuRk1BjA3OSG+E0bNFWf6uFDwArRQqWVoQzQZg==
X-Gm-Message-State: AOJu0YxDNqY0nQs33yMeU0NaeEroAf9KutkCFQTQluc6YePQ7+vppe8M
	S7QL7YsYny/yor7fcJO+znyem5uIgqgyLO15NFfiGuQL4f6/iHZp4mL10KiPwPfwKFUFAkXihPO
	h68Nx6xViI624ifabqCIubWtrvAJ34KM89CKB
X-Google-Smtp-Source: AGHT+IFf/DbEiUMrNE3+3h0tNx17EZOn9EV/2/1uYIxpd1cVsA33zTZAoAPdkuvZ4k9AuW9caLh6SDxCdS61jKH0I7c=
X-Received: by 2002:ac8:580c:0:b0:436:9f37:f5e4 with SMTP id
 g12-20020ac8580c000000b004369f37f5e4mr144572qtg.8.1713315837611; Tue, 16 Apr
 2024 18:03:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240413091942.316054-1-apatel@ventanamicro.com> <20240416141049.GA2148267-robh@kernel.org>
In-Reply-To: <20240416141049.GA2148267-robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 16 Apr 2024 18:03:17 -0700
Message-ID: <CAGETcx_Ni3MjwVHDOdre1nSqQP07=gaUtCDj31ndKcMFtm+xjg@mail.gmail.com>
Subject: Re: [PATCH v2] of: property: Add fw_devlink support for interrupt-map property
To: Rob Herring <robh@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 7:11=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Sat, Apr 13, 2024 at 02:49:42PM +0530, Anup Patel wrote:
> > Some of the PCI controllers (such as generic PCI host controller)
> > use "interrupt-map" DT property to describe the mapping between
> > PCI endpoints and PCI interrupt pins. This the only case where
> > the interrupts are not described in DT.
> >
> > Currently, there is no fw_devlink created based on "interrupt-map"
> > DT property

parse_interrupts() calls of_irq_parse_one() that in turn calls
of_irq_parse_one() that does the "interrupts-map" handling. In fact
of_irq_parse_pci() also calls of_irq_parse_one() if the PCI device has
a DT node. So I don't think any new functionality needs to be added.
If I'm not mistaken we just need parse_interrupts to not ignore
interrupts-map? A one line change?

Why do we need all of this code you wrote below?

-Saravana

> >  so interrupt controller is not guaranteed to be probed
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
>
> Look at my next branch where I've converted things to use __free()
> cleanups. I don't see it helping here as-is, but maybe when it is
> correct.
>
> Rob

