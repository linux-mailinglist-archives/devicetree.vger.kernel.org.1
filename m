Return-Path: <devicetree+bounces-44001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C77CC85C1B8
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C72601C21D97
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79A9776416;
	Tue, 20 Feb 2024 16:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Yt3067D/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA184762EC
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708447936; cv=none; b=jziJJ0UDQooFA3ZdRffOKcmN0J7zz19IhYiECDbtICUvdp6pQHuhfkkm5fsmCUHVRoO3/FTGeNMwolVVjSN0gXdB+aMihHMGSz8VH6eBpc+Mb6iI8hZyoqjm0Y6sooJOOrs12fGwAzFGNW58mR/fYdEH19gGxIARue7eEVZEIDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708447936; c=relaxed/simple;
	bh=0KagfdTaaRpyay3q3vPcuNyMIFOX9ngGtmUbeT9dqJg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fvHjZ+SEaPOpZj75Yu931k5xd1cCMvCrZD79NXH5MNNRlhxCPLKa9OhD7jYkhBY7RS4GANOltDYGauLIhpMZt1nfJDV0ImsO+OaB8Xa5bZVfOIiWU8JxAdKHdsycpbKT6eLO0/h6qXVlSJkYsiBroaOuCi7VQEmRztfhQXJfbvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Yt3067D/; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d180d6bd32so63080831fa.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708447933; x=1709052733; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U2++bzZmBlDUJtBL2A+1xjZvezhGxUTSfoR1tudvrmw=;
        b=Yt3067D/nXD8MHrpp4hHbbJp+tixBLLo26V6EtpsEE+EK9AqwQ4UB1m0hvq7hvZaVT
         EzhKcChAmlExo8D3qNIIN3LWsqCNB2EANdy4xrAxX8iwRfj/r8B/aS8Lr3q2xTZXk0xM
         6TpMF29EJiZXPGEsWfGzDCuBaZDcfsnHiNPYYnfEb4mV0q8sFcBRptOEDrTkNGWHAB9i
         PvI+imc8L+CQNy57DjYE0BrFzgAMDB+aB0fZcefqmvtWP0h8zY/hQ37wU8N8fPLTqxQQ
         vrtkEUCc0LNGR1POId+j0ny7CyX1I1+BvYpksKQouVKDkURthY0YTzeHP/QBC78rWCBG
         2sxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708447933; x=1709052733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U2++bzZmBlDUJtBL2A+1xjZvezhGxUTSfoR1tudvrmw=;
        b=KBIDZN+p0PS528ZQ3kXYBIcQb2efUU5R/IzubjnQPfnxMtEMt+SbOSiskzGmwqxXwo
         n5GBqQEpcGSgEZQM7QCHh1aYO5Jd80p5Kaex89IK/bdDBglnL2UfsUxkUs/gObrjKjDY
         MhdgIuIZcfu7mita+9LDXmcS9bc9mS+Vob45Y1wltTRRMdYMWdLXY138b0V/Tgb2io26
         8h0Z9LiBNvmmsabXHHJuZGPAULtaaF48Vned3Awb6QFmO1kNPwVZSqUFDTe9XS2SmH2x
         DlTzDIlt2U0XnemHTyoJc5ItMUzPWGCK2LLj83ntYyJzBhMZ/Tsr4MtHF3HUfPknSml1
         8dmg==
X-Forwarded-Encrypted: i=1; AJvYcCWnPeqiEOkN0aswUB9KBSfk2odnOO889rq5/85YV2xt9Gd4RHmHmbSxz/mNzKMEps163EsvZnvSJ7Dc9t0ZhXoSlG56Vg7qEVwGDw==
X-Gm-Message-State: AOJu0Yw0AkoVtrJ8QEUEB1gZu8NOWDq7VIlJOTG3OWXsH2Y4wxR4iSJi
	RFr6Xjb56jGF+1lx2XQoWb45ohzX3ml9dlfYDN3NWR1SwGY4zc1zw4xZaRXLIFsk58Os9pS4PzF
	HwxVkyQVlPHEqyEFRu5b20LgrIsxzDqgkORdblA==
X-Google-Smtp-Source: AGHT+IFxn/XbcJ1LB10krZNF1aRmNeyYmzh22jCeeFItu7QL0ccN+D39sO7s3W7/K3hok3NiVql/DfBXEhGDD51v9UM=
X-Received: by 2002:a05:651c:1047:b0:2d2:3f05:d137 with SMTP id
 x7-20020a05651c104700b002d23f05d137mr3610001ljm.1.1708447932770; Tue, 20 Feb
 2024 08:52:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-8-apatel@ventanamicro.com> <875xyji7mc.ffs@tglx>
In-Reply-To: <875xyji7mc.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 20 Feb 2024 22:22:01 +0530
Message-ID: <CAK9=C2V3hQnpibHgHUpwRXWn4LSuGue0a7Sh9NFYPB6XOizjoA@mail.gmail.com>
Subject: Re: [PATCH v13 07/13] irqchip/riscv-imsic: Add device MSI domain
 support for platform devices
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 7:02=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Tue, Feb 20 2024 at 11:37, Anup Patel wrote:
> > +#ifdef CONFIG_SMP
> > +static void imsic_msi_update_msg(struct irq_data *d, struct imsic_vect=
or *vec)
> > +{
> > +     struct msi_msg msg[2] =3D { [1] =3D { }, };
>
> That's a weird initializer and why do you need an array here?
>
>        struct msi_msg msg =3D { };
>
> Should be sufficient, no?

I had taken reference from irq_msi_update_msg() in
arch/x86/kernel/apic/msi.c

I tried "struct msi_msg msg =3D { };" and it works fine so
I will update.

>
> > +
> > +     imsic_irq_compose_vector_msg(vec, msg);
> > +     irq_data_get_irq_chip(d)->irq_write_msi_msg(d, msg);
> > +}
>
> > +static int imsic_irq_domain_alloc(struct irq_domain *domain, unsigned =
int virq,
> > +                               unsigned int nr_irqs, void *args)
> > +{
> > +     struct imsic_vector *vec;
> > +
> > +     /* Legacy-MSI or multi-MSI not supported yet. */
>
> Coming back to my earlier question:
>
> >> What's legacy MSI in that context?
> >
> > The legacy-MSI is the MSI support in PCI v2.2 where
> > number of MSIs allocated by device were either 1, 2, 4,
> > 8, 16, or 32 and the data written is <data_word> + <irqnum>.
>
> You talk about PCI/MSI, where more than one vector is named
> multi-MSI. Contrary to the modern v3.0 variant which is PCI/MSI-X.
>
> So this should be "Multi-MSI is not supported yet", no?

Yes, I agree. We should just call it "Multi-MSI is not supported yet"
to avoid confusion. I will update.

>
> > +     if (nr_irqs > 1)
> > +             return -ENOTSUPP;
> > +
> > +     vec =3D imsic_vector_alloc(virq, cpu_online_mask);
> > +     if (!vec)
> > +             return -ENOSPC;
> > +
> > +     irq_domain_set_info(domain, virq, virq,
> > +                         &imsic_irq_base_chip, vec,
> > +                         handle_simple_irq, NULL, NULL);
>
> Please utilize the 100 characters.

Okay, I will update.

>
> > +     irq_set_noprobe(virq);
> > +     irq_set_affinity(virq, cpu_online_mask);
> > +
> > +     return 0;
> > +}
>
> Thanks,
>
>         tglx

Thanks,
Anup

