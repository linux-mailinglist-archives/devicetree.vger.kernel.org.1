Return-Path: <devicetree+bounces-87710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CDF93AB56
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 04:44:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91DC81F2368C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 02:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7527117C67;
	Wed, 24 Jul 2024 02:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="RKagaJNa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BAD17C6A
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 02:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721789046; cv=none; b=ePingy84qjxVROOSNbsL3NSa9cnu5cEcC0mq0YsPTX0cA8sSI6V2y0WMJbjCc4Zwwq3/UTf4xsn6vcUxTxDZTqgvdoZCExGsnUU7ouAD+YRaYEspkbYBG/I7sjDpOEyv+HPnbwQ7akeKYdiACRtzfm1BgyzNMYeSus7S7s7KvW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721789046; c=relaxed/simple;
	bh=0TuOtSVtzLJo2hjXcrPXse05wXGKvdu4hM9NLHa4IdY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eiTEHwx+BY2Uz3ybdSX2XGfbKB7ZavwKD1cvWOPRWK4Izs9CacAlbrDr2c0yVk5z4U1TdMtiQ7tnJakdlAby5URhuQ4KYLXSHHHaJlm7g/JOGlkEoFgTTeiB5PeSZCrcqJFbxpJoCThj1U01tIOxTl6NP+AX4B1cluQWp4er93A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=RKagaJNa; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-804ac219676so15699639f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 19:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1721789044; x=1722393844; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dJuRD61x6itbq5ZOyADK/jtrgm1hblg0GZj3yw8kMqc=;
        b=RKagaJNaW0a5BUQixXJd3d/Akd2OVDFY4yK7H8cnOC302AB5fhUHX2hiepAL5edXLn
         HZfeFtotiRqFp1CcTXfTv/6F5rRpNgDwVBLFaYrACwCWUKviN0W4SpZEHJql0At/DfKc
         E++uvtLWDZOwSIneP6b67aULpCmAuWKEdStnLhxXCWZCI6sCQirz+cxh3kraz9o8zo9c
         rkQmlCcQG4XAHCs0OK5sRIDSohMM0gCCmVDffsAUfWVU8Ht4NVyultfZzIEadSVXqFVD
         4CdnlmsKEKJXR+bKM2bNhHGLvR84g0J1g2iGeFUOAHNxwD7jXOxM0TUBj9BxKJpy86Lk
         DBFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721789044; x=1722393844;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dJuRD61x6itbq5ZOyADK/jtrgm1hblg0GZj3yw8kMqc=;
        b=lW5ESSReQkztn1JlR1h+5/4hwXpM4J+fWO2Rv/N+eIU3e8rQ0tEUnMj68ZNUFatJrU
         SW9QHjpEW3Rg0TANnlwBTeCrTt9ukGdwTi2Xg7EfSLeA2dfdGw+s6kck/ttITj6LL39G
         xYLO/15IYPTC+C/clpAjpT75uioa7PIbUQ1AZNav9aaN5x7V4yA25yaBYecI4XVrVoSJ
         YLYC7UpgrCRq8fYw9g8KMNzxbmRayJt9jqNQv/sD0YnurHLTYXWrxr9qi75qN21xfqge
         sySWxKDtdiaai+ya2ZVSyJKowFIlq5eOcfMa7BWTvz/CBRNB2jlfYRt7QKY2lSchMr99
         +5sQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSEfEmRq4Uxm4C7kae/U0qQZ5C8Y/k4rGMmHaw8xBE0RpI5DuEdznXBVQ/vYvAOToAWL4Ekz3Ds1/e57/c3uHhGFo6lgfEc0YYzQ==
X-Gm-Message-State: AOJu0YyBtJksmhqw33jr3Xu3nIRdPpMZsLNlz7PaCrKKMd77CrY/WLpa
	tuDS3s/rIOJUwGU6oDh+qYM0/CUE/kJenTAuHqWU2ljkQprLZe62CTdZO+7aUnY5cb+/ngNNnsH
	R8fMiNg5U4g4itBPG51TXmLjR5/tHsTMXFciP2g==
X-Google-Smtp-Source: AGHT+IHnlYZIrzETi2EIUQnIUgGB/dlXo2kNVp670NMBce33T+SBs7BmQBJFtm2TtzjBJawWTYMXFy4GA+BqRUY63Bg=
X-Received: by 2002:a05:6e02:1d1a:b0:375:e731:b65a with SMTP id
 e9e14a558f8ab-39a1a7cdca4mr4394765ab.11.1721789043890; Tue, 23 Jul 2024
 19:44:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1718388908.git.tjeznach@rivosinc.com> <bdd1e0547e01d012bf40c5e33b752e77c6663c90.1718388909.git.tjeznach@rivosinc.com>
 <CANXhq0rpX=+YZLfzLcBmHPUxBpo+xWPY9XaNkV0eQAX72KCFKw@mail.gmail.com> <20240723130839.GL14050@ziepe.ca>
In-Reply-To: <20240723130839.GL14050@ziepe.ca>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 24 Jul 2024 10:43:53 +0800
Message-ID: <CANXhq0ptWEk7xQmepRVih8JQvKuZWvxBtwzyUtPhoy6HqP0vGA@mail.gmail.com>
Subject: Re: [PATCH v8 7/7] iommu/riscv: Paging domain support
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <apatel@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Nick Kossifidis <mick@ics.forth.gr>, 
	Sebastien Boeuf <seb@rivosinc.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux@rivosinc.com, 
	Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2024 at 9:08=E2=80=AFPM Jason Gunthorpe <jgg@ziepe.ca> wrot=
e:
>
> On Fri, Jul 19, 2024 at 02:33:13PM +0800, Zong Li wrote:
>
> > > +static void riscv_iommu_free_paging_domain(struct iommu_domain *iomm=
u_domain)
> > > +{
> > > +       struct riscv_iommu_domain *domain =3D iommu_domain_to_riscv(i=
ommu_domain);
> > > +       const unsigned long pfn =3D virt_to_pfn(domain->pgd_root);
> > > +
> > > +       WARN_ON(!list_empty(&domain->bonds));
> >
> > Hi Tomasz,
> > I recently hit the issue here when I removed a device. I think we need
> > to unlink the device's bond in domain before releasing domain.
> > Do you mind pick the following modification in this patch? Thanks.
> >
> > diff --git a/drivers/iommu/riscv/iommu.c b/drivers/iommu/riscv/iommu.c
> > index 859cdd455576..f0707147e706 100644
> > --- a/drivers/iommu/riscv/iommu.c
> > +++ b/drivers/iommu/riscv/iommu.c
> > @@ -1541,6 +1541,8 @@ static void riscv_iommu_release_device(struct dev=
ice *dev)
> >  {
> >         struct riscv_iommu_info *info =3D dev_iommu_priv_get(dev);
> >
> > +       riscv_iommu_bond_unlink(info->domain, dev);
> > +
> >         synchronize_rcu();
> >         kfree(info);
> >  }
>
> That does not seem the right place to put that, or something else has
> gone wrong becuase:
>
> > >  static const struct iommu_ops riscv_iommu_ops =3D {
> > > +       .pgsize_bitmap =3D SZ_4K,
> > >         .of_xlate =3D riscv_iommu_of_xlate,
> > >         .identity_domain =3D &riscv_iommu_identity_domain,
> > >         .blocked_domain =3D &riscv_iommu_blocking_domain,
> > >         .release_domain =3D &riscv_iommu_blocking_domain,
>
> The above use of release_domain will attach to the blocking domain
> prior to calling release_device and when doing so everything about any
> previous domain should have been fully cleaned up.
>
> So info->domain should be the blocking domain during release_device
> (if not that is another bug)
>
> And attaching the blocking domain should have cleared the
> domain->bonds of any prior paging domain.

Yes, you are right, there is no issue. I mixed up my codebase, which
doesn't support release_domain yet. Please ignore this, and thanks for
pointing it out.

>
> Jason

