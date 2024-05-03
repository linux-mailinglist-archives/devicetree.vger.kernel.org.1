Return-Path: <devicetree+bounces-64846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 736948BB1E7
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 19:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C735B232C0
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 17:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815391581E5;
	Fri,  3 May 2024 17:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RKQcRYuU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED30157E91
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 17:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714758267; cv=none; b=jkDHwJFDcBRxKwau76VlY6zMo5wDXE8t5kkNJ2Zthuo3KhltPlfTOhKmYz8AAeOrge5dVxJcGRYf/bEJWaprf8phzdcn6/UJixnp1mnoO05KgGUKDJ5lYfJHNSLoORchOISnGYMyXreph6P6xJR6NEaGDFZK34EERCIGuKeX8fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714758267; c=relaxed/simple;
	bh=qMNwPjdBaXlNjoWii9h04MCjTd5aGZAQ7spLYhf2Mt4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aLBjBpNQYcMehZglk4Q5zrXoXRAUpDoyGdF6E46e/ZRHOC1h1SreC8oASLvP3Dmm0luH4Rl3lpuTGtliW5LYZ75PHq418j0SUSg0K0J7Dm7S7spTbE8HmbrKBTQSti9P2GzhJDFsMerSaL/RMlyxxn1ZjjY5qBXWN+IZgoS8QcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RKQcRYuU; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-5ce2aada130so6585762a12.1
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 10:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714758265; x=1715363065; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ijedQqU8HOiNBFwPGu1UEZ4q1kIgznvtvPEAW7FPwsA=;
        b=RKQcRYuUxzH6QgUqqaUJN72P2n/gz3ZTYSWykDSNkeEo2G6ZXM+r5VuM+IvxwkQy5m
         02VH0o7r3ZnVvNOAjv4XlIpeA2HAWOIU4OtWLXFved3XuGSDQmU6yGJWklMQa+3XUsue
         kH6K8tnHW6GZwDrXSE1K8gjdS15xCveJuArbfZMgTm5FfJXoJ7FQpGfPQT+8f3BFAZZI
         VN5LsmkVJjmtAiI2P8jfw7h0ZtzXXTxlrNtPDpVSSZX/RbjJ7cCYVOrnqxwSUTtKx1Ap
         kLQqP2lYxQtstHLBV8XdY7+ZqDWJw/HZWVeaUyQoGfkdI6yVcQ3JqNN8Gd7YX4we6w4A
         uP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714758265; x=1715363065;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ijedQqU8HOiNBFwPGu1UEZ4q1kIgznvtvPEAW7FPwsA=;
        b=CBa5Wv4chg5uf+lWMNtc/AtKHXd+DiUGU2S9P5cQ7MXfyBrQItfjqGLBubp9Wp45x4
         hlICzmCMEdx2xdE8cHNsDHVDT7Nin7DgJtdhYYHwOQRxd07CaLgcwPQFUceWtr/BNEiK
         1RvKqyPUpAIPHBZPYsW8DZTrsKXBY9eVdGTJVmVtzRT7Of0U/388+amQa+6UJWlf8o2h
         UBWFbJhQMUqqlY7P0+mmNhNX7rYo++Ny+mMTSyUnIdOOefhxHnbP6LGJx3VfQKp0vbSO
         MSthnB7Mjp14sU2BNMH7Vs2eHiq+7y94rgvnhx4LBfvEv7eyeblXaA5Xd8jwshEhlOwm
         OaWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGoPP4iQpQlGgHWMjsYVS1xRSU4AOFypFacKibchmmFLlN9kKagfKP+EJ8e57gNFzxetfCRktnlcksyqsQbL1YvB+0287UOWDtww==
X-Gm-Message-State: AOJu0Yxseer0CC27M2mEK4rdZ+7qyLEQv7sAWT+PTaRzOFLrzCqIxB0K
	QsqvzKOSgSZysmMakVTUiadW0T2jlF1eR1UG6MskNAf9VD6mwDduwuyo+h7l34rcOU66jf0KsVa
	IZ6ca4A2X/OpMgFGkbwD4SIAY5DxAJL5dawrsYg==
X-Google-Smtp-Source: AGHT+IHTYzFBNiLcDTWR/yPQGct/8FSPXfvsO3Z5gfOeTjH+nyp1VzR9kvnu8HckIgSmiSa2bAgk2UJV2RC4c9vY8ZI=
X-Received: by 2002:a05:6a20:6d87:b0:1af:73b1:d199 with SMTP id
 gl7-20020a056a206d8700b001af73b1d199mr3202703pzb.38.1714758265178; Fri, 03
 May 2024 10:44:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1714494653.git.tjeznach@rivosinc.com> <b83f81c04d1f3885d860b1eec03761fe63a33183.1714494653.git.tjeznach@rivosinc.com>
 <20240501145621.GD1723318@ziepe.ca>
In-Reply-To: <20240501145621.GD1723318@ziepe.ca>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Fri, 3 May 2024 10:44:14 -0700
Message-ID: <CAH2o1u63GjMnYrfa8W-c1hdp+TAA0R-FyxXM4dEiFF+KEGWwbA@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] iommu/riscv: Paging domain support
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Anup Patel <apatel@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Nick Kossifidis <mick@ics.forth.gr>, Sebastien Boeuf <seb@rivosinc.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux@rivosinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 1, 2024 at 7:56=E2=80=AFAM Jason Gunthorpe <jgg@ziepe.ca> wrote=
:
>
> On Tue, Apr 30, 2024 at 01:01:57PM -0700, Tomasz Jeznach wrote:
>
> > +#define iommu_domain_to_riscv(iommu_domain) \
> > +     container_of(iommu_domain, struct riscv_iommu_domain, domain)
> > +
> > +#define dev_to_domain(dev) \
> > +     iommu_domain_to_riscv(dev_iommu_priv_get(dev))
>
> Please use the priv properly and put a struct around it, you'll
> certainly need this eventually to do the rest of the advanced
> features.
>

Done. Yes, indeed, I was going to introduce proper struct in follow up
patches anyway. Pulled this change sooner.

> > +static void riscv_iommu_bond_unlink(struct riscv_iommu_domain *domain,=
 struct device *dev)
> > +{
> > +     struct riscv_iommu_bond *bond, *found =3D NULL;
> > +     unsigned long flags;
> > +
> > +     if (!domain)
> > +             return;
> > +
> > +     spin_lock_irqsave(&domain->lock, flags);
>
> This is never locked from an irq, you don't need to use the irqsave
> variations.
>

Good point. done in v4.

> > +     list_for_each_entry_rcu(bond, &domain->bonds, list) {
> > +             if (bond->dev =3D=3D dev) {
> > +                     list_del_rcu(&bond->list);
> > +                     found =3D bond;
> > +             }
> > +     }
> > +     spin_unlock_irqrestore(&domain->lock, flags);
> > +
> > +     /* Release and wait for all read-rcu critical sections have compl=
eted. */
> > +     kfree_rcu(found, rcu);
> > +     synchronize_rcu();
>
> Please no, synchronize_rcu() on a path like this is not so
> reasonable.. Also you don't need kfree_rcu() if you write it like this.
>
> This still looks better to do what I said before, put the iommu not
> the dev in the bond struct.
>
>

I was trying not to duplicate data in bond struct and use whatever is
available to be referenced from dev pointer (eg iommu / ids / private
iommu dev data). If I'm reading core iommu code correctly, device
pointer and iommu pointers should be valid between _probe_device and
_release_device calls. I've moved synchronize_rcu out of the domain
attach path to _release_device, LMK if that would be ok for now.
I'll have a second another to rework other patches to avoid storing
dev pointers at all.


> > +static struct iommu_domain *riscv_iommu_alloc_paging_domain(struct dev=
ice *dev)
> > +{
> > +     struct riscv_iommu_domain *domain;
> > +     struct riscv_iommu_device *iommu;
> > +
> > +     iommu =3D dev ? dev_to_iommu(dev) : NULL;
> > +     domain =3D kzalloc(sizeof(*domain), GFP_KERNEL);
> > +     if (!domain)
> > +             return ERR_PTR(-ENOMEM);
> > +
> > +     INIT_LIST_HEAD_RCU(&domain->bonds);
> > +     spin_lock_init(&domain->lock);
> > +     domain->numa_node =3D NUMA_NO_NODE;
> > +
> > +     /*
> > +      * Follow system address translation mode.
> > +      * RISC-V IOMMU ATP mode values match RISC-V CPU SATP mode values=
.
> > +      */
> > +     domain->pgd_mode =3D satp_mode >> SATP_MODE_SHIFT;
>
> This seems really strange, the iommu paging domains should be
> unrelated to what the CPU is doing. There is no connection between
> these two concepts.
>
> Just pick a size that the iommu supports.
>
> The number of radix levels is a tunable alot of iommus have that we
> haven't really exposed to anything else yet.
>

Makes sense. I've left an option to pick mode from MMU for cases where
dev/iommu is not known at allocation time (with iommu_domain_alloc()).
I'd guess it's reasonable to assume IOMMU supported page modes will
match MMU.

> > +     /*
> > +      * Note: RISC-V Privilege spec mandates that virtual addresses
> > +      * need to be sign-extended, so if (VA_BITS - 1) is set, all
> > +      * bits >=3D VA_BITS need to also be set or else we'll get a
> > +      * page fault. However the code that creates the mappings
> > +      * above us (e.g. iommu_dma_alloc_iova()) won't do that for us
> > +      * for now, so we'll end up with invalid virtual addresses
> > +      * to map. As a workaround until we get this sorted out
> > +      * limit the available virtual addresses to VA_BITS - 1.
> > +      */
> > +     domain->domain.geometry.aperture_start =3D 0;
> > +     domain->domain.geometry.aperture_end =3D DMA_BIT_MASK(VA_BITS - 1=
);
> > +     domain->domain.geometry.force_aperture =3D true;
>
> Yikes.. This is probably the best solution long term anyhow, unless
> you need to use the last page in VFIO for some reason.
>
> >  static int riscv_iommu_device_domain_type(struct device *dev)
> >  {
> > -     return IOMMU_DOMAIN_IDENTITY;
> > +     struct riscv_iommu_device *iommu =3D dev_to_iommu(dev);
> > +
> > +     if (iommu->ddt_mode =3D=3D RISCV_IOMMU_DDTP_MODE_BARE)
> > +             return IOMMU_DOMAIN_IDENTITY;
> > +
>
> Is there even a point of binding an iommu driver if the HW can't
> support a DDT table? Just return -ENODEV from probe_device?
>
> Logically a iommu block that can't decode the RID has no association
> at all with a Linux struct device :)
>

Done. Good point ;)

Thanks for review,
- Tomasz


> Jason

