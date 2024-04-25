Return-Path: <devicetree+bounces-62516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 255B98B16B7
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 01:01:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A717AB21223
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 23:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CEA416EC05;
	Wed, 24 Apr 2024 23:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="R29ygqel"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D83A15A4BA
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 23:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713999677; cv=none; b=TykR8WybQMyppgUJq3wzYuc0K/y5rZ9rXXJwmqPt6FRN5Sf6v7duEp45nx4OzDmNL3Cc75gtKcg3avlg89Coo2u/aPf8n2IO4qscAHSqd9fAiLNIlUGgO5QWbTL2PthjlySXMaInW/ZP4+orVuH5942MDuWVmnM8fXXs+jpvaN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713999677; c=relaxed/simple;
	bh=yhLMzqp1hYPnPOJrBVjp3bIJ258YYrgLvoWNmxB+Rg0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TQ3zdOPQyxgTJ2e689VmXrBli0VquwevlpQ65ayCPokO8VUjxEog+L+ctEP3h/duHXnXYHM+ja5/g1KuRsif40VA4TO93Ua/FeEaF6qJnxGck0Acp9efGkLJ/+y/7zns/xaPDQ6wwHUakwmWgV36/1ZSDFIFHhYC7O1r1bdVwh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=R29ygqel; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-5ce2aada130so282774a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 16:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713999676; x=1714604476; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5eYQv4SEnPtJtu5rV+wjwKaumy6GBL26odmvclmovo=;
        b=R29ygqelxXYFuuMzG9YqGELsJIEHno4a6nT3ArLPJr6YrWg8JaJgwYF8Ly+sfXbWq6
         kcmy88Rj8zxQIcNgE/t/gxdAlnnJkgbUjHPOgt4qCqXrZVLMEXAEKYK4wN6RHbLKuv9n
         0g/Y6NNB/pq3q3+s+FMGVsYsQRN5waWRymadnzhxYWmUWOKaSVLxauKItDiiqncoz0Li
         4kKI+OOru2hK2zCh18baCyDNBUOpW4JFypL+Uvd+qtGyYbVZwr/lJLHBrP8QIvBarwoT
         b0GlUDPB5t2iKxrHwjtkCpDfiX8NTM3CFbGtDHgOOrEVzCEgNf6TjYD1MY2hgfvRtCXZ
         GLrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713999676; x=1714604476;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o5eYQv4SEnPtJtu5rV+wjwKaumy6GBL26odmvclmovo=;
        b=P9wQ3Q4skBORXpR7c07RqcpuIUyRrgA2bWwxzE3XKMPW4eeL1LMh2LS8pnDZAPA1r1
         iwVTmx6lKFNtQhDIKrUW0p8jrIv/HyPE3Ug1GaZ8sjZISFNfSY5C/isNNZYOhYVv+lhe
         6Jv410QfmxehTVrT+qo2AjaD6V6d+WHeauTDhQ+P3ya6/aDkbxSvM+NqkBDmDOQvmyJn
         qK5iiIE8T3F14ZEyxot72/AwOY4tGzu8LqHv1FDTqZjChC82BKOUOOuPYZHObKduoN5o
         EIQyWkmT1UsK322hIlXYbUDi/ObKBl2AIFlrsJduG2IlZGk/COYPO/WsMrIyfL1TsKuJ
         fmrg==
X-Forwarded-Encrypted: i=1; AJvYcCURndz5aC1RhqaKtkHCyOYckI3DZJQqL+2oaqeK/qJ/hJVJHBHP8tiqEQuwidz1GB7YKcbTc710+glXAl2RPmXc/3BgsmBPGvv56g==
X-Gm-Message-State: AOJu0Yxf0hx9a7X00mApJ9H3ZNuQ9mOMfbf6xj+HgoOjrIbEiHKh9saf
	QN/ZFryNXBZjiIx7xvF6mAvU4mGMsecmUGvkupbBR7eNz846Hndnz4Dz1HzZNiABcKHQdniqcuV
	fqppJi1MzD9OS46xUVyiUQxnAUcqiVuVRlf/Gmw==
X-Google-Smtp-Source: AGHT+IEmZmY0a/pcbMjVZ7zbn5k9LdZezmxUS44Gf63fTy4Sf2HGSXWIH1nVc43qJR8VXcBqXhgqPnmKQIhIOfhQbP0=
X-Received: by 2002:a17:90b:1e0a:b0:2ae:e1e0:3d8f with SMTP id
 pg10-20020a17090b1e0a00b002aee1e03d8fmr3623341pjb.2.1713999675753; Wed, 24
 Apr 2024 16:01:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1713456597.git.tjeznach@rivosinc.com> <232b2824d5dfd9b8dcb3553bfd506444273c3305.1713456598.git.tjeznach@rivosinc.com>
 <20240419124017.GC223006@ziepe.ca>
In-Reply-To: <20240419124017.GC223006@ziepe.ca>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Wed, 24 Apr 2024 16:01:04 -0700
Message-ID: <CAH2o1u7_YBtS6m1-T56tmxud1mda2gb6tLGVpbBSs15FPcjaGQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] iommu/riscv: Device directory management.
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

On Fri, Apr 19, 2024 at 5:40=E2=80=AFAM Jason Gunthorpe <jgg@ziepe.ca> wrot=
e:
>
> On Thu, Apr 18, 2024 at 09:32:23AM -0700, Tomasz Jeznach wrote:
> > @@ -31,13 +32,350 @@ MODULE_LICENSE("GPL");
> >  /* Timeouts in [us] */
> >  #define RISCV_IOMMU_DDTP_TIMEOUT     50000
> >
> > -static int riscv_iommu_attach_identity_domain(struct iommu_domain *dom=
ain,
> > -                                           struct device *dev)
> > +/* RISC-V IOMMU PPN <> PHYS address conversions, PHYS <=3D> PPN[53:10]=
 */
> > +#define phys_to_ppn(va)  (((va) >> 2) & (((1ULL << 44) - 1) << 10))
> > +#define ppn_to_phys(pn)       (((pn) << 2) & (((1ULL << 44) - 1) << 12=
))
> > +
> > +#define dev_to_iommu(dev) \
> > +     container_of((dev)->iommu->iommu_dev, struct riscv_iommu_device, =
iommu)
>
> We have iommu_get_iommu_dev() now
>
> > +static unsigned long riscv_iommu_get_pages(struct riscv_iommu_device *=
iommu, unsigned int order)
> > +{
> > +     struct riscv_iommu_devres *devres;
> > +     struct page *pages;
> > +
> > +     pages =3D alloc_pages_node(dev_to_node(iommu->dev),
> > +                              GFP_KERNEL_ACCOUNT | __GFP_ZERO, order);
> > +     if (unlikely(!pages)) {
> > +             dev_err(iommu->dev, "Page allocation failed, order %u\n",=
 order);
> > +             return 0;
> > +     }
>
> This needs adjusting for the recently merged allocation accounting
>
> > +static int riscv_iommu_attach_domain(struct riscv_iommu_device *iommu,
> > +                                  struct device *dev,
> > +                                  struct iommu_domain *iommu_domain)
> > +{
> > +     struct iommu_fwspec *fwspec =3D dev_iommu_fwspec_get(dev);
> > +     struct riscv_iommu_dc *dc;
> > +     u64 fsc, ta, tc;
> > +     int i;
> > +
> > +     if (!iommu_domain) {
> > +             ta =3D 0;
> > +             tc =3D 0;
> > +             fsc =3D 0;
> > +     } else if (iommu_domain->type =3D=3D IOMMU_DOMAIN_IDENTITY) {
> > +             ta =3D 0;
> > +             tc =3D RISCV_IOMMU_DC_TC_V;
> > +             fsc =3D FIELD_PREP(RISCV_IOMMU_DC_FSC_MODE, RISCV_IOMMU_D=
C_FSC_MODE_BARE);
> > +     } else {
> > +             /* This should never happen. */
> > +             return -ENODEV;
> > +     }
>
> Please don't write it like this. This function is already being called
> by functions that are already under specific ops, don't check
> domain->type here.
>
> Instead have the caller compute and pass in the ta/tc/fsc
> values. Maybe in a tidy struct..
>
> > +     /* Update existing or allocate new entries in device directory */
> > +     for (i =3D 0; i < fwspec->num_ids; i++) {
> > +             dc =3D riscv_iommu_get_dc(iommu, fwspec->ids[i], !iommu_d=
omain);
> > +             if (!dc && !iommu_domain)
> > +                     continue;
> > +             if (!dc)
> > +                     return -ENODEV;
>
> But if this fails some of the fwspecs were left in a weird state ?
>
> Drivers should try hard to have attach functions that fail and make no
> change at all or fully succeed.
>
> Meaning ideally preallocate any required memory before doing any
> change to the HW visable structures.
>

Good point. Done.
Looking at the fwspec->ids[] I'm assuming nobody will add/modify the
IDs after iommu_probe_device() completes.

> > +
> > +             /* Swap device context, update TC valid bit as the last o=
peration */
> > +             xchg64(&dc->fsc, fsc);
> > +             xchg64(&dc->ta, ta);
> > +             xchg64(&dc->tc, tc);
>
> This doesn't loook right? When you get to adding PAGING suport fsc has
> the page table pfn and ta has the cache tag, so this will end up
> tearing the data for sure, eg when asked to replace a PAGING domain
> with another PAGING domain? That will create a functional/security
> problem, right?
>
> I would encourage you to re-use the ARM sequencing code, ideally moved
> to some generic helper library. Every iommu driver dealing with
> multi-quanta descriptors seems to have this same fundamental
> sequencing problem.
>

Good point. Reworked.

> > +static void riscv_iommu_release_device(struct device *dev)
> > +{
> > +     struct riscv_iommu_device *iommu =3D dev_to_iommu(dev);
> > +
> > +     riscv_iommu_attach_domain(iommu, dev, NULL);
> > +}
>
> The release_domain has landed too now. Please don't invent weird NULL
> domain types that have special meaning. I assume clearing the V bit is
> a blocking behavior? So please implement a proper blocking domain and
> set release_domain =3D &riscv_iommu_blocking and just omit this release
> function.
>

Updated to use release_domain, should be cleaner now.
Clearing TC.V is a blocking (but noisy) behavior, should be fine for
release domain where devices should be quiesced already.

> > @@ -133,12 +480,14 @@ int riscv_iommu_init(struct riscv_iommu_device *i=
ommu)
> >       rc =3D riscv_iommu_init_check(iommu);
> >       if (rc)
> >               return dev_err_probe(iommu->dev, rc, "unexpected device s=
tate\n");
> > -     /*
> > -      * Placeholder for a complete IOMMU device initialization.
> > -      * For now, only bare minimum: enable global identity mapping mod=
e and register sysfs.
> > -      */
> > -     riscv_iommu_writeq(iommu, RISCV_IOMMU_REG_DDTP,
> > -                        FIELD_PREP(RISCV_IOMMU_DDTP_MODE, RISCV_IOMMU_=
DDTP_MODE_BARE));
> > +
> > +     rc =3D riscv_iommu_ddt_alloc(iommu);
> > +     if (WARN(rc, "cannot allocate device directory\n"))
> > +             goto err_init;
>
> memory allocation failure already makes noisy prints, more prints are
> not needed..
>
> > +     rc =3D riscv_iommu_set_ddtp_mode(iommu, RISCV_IOMMU_DDTP_MODE_MAX=
);
> > +     if (WARN(rc, "cannot enable iommu device\n"))
> > +             goto err_init;
>
> This is not a proper use of WARN, it should only be used for things
> that cannot happen not undesired error paths.
>
> Jason

Thanks, ack to all. Will push updated v3 shortly.
- Tomasz

