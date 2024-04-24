Return-Path: <devicetree+bounces-62517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D008B16D5
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 01:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E2691C24D2B
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 23:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06B816EC19;
	Wed, 24 Apr 2024 23:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="RGOpKw+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B30216EC10
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 23:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714000039; cv=none; b=pPL5sPbg2y9X/XHeqrj3tjJXPC+yZfI0EYi8d6K8MyClFXGZGLq4Gb47DquYZjejwEpn9ZAGOCeNnr09+ni1LDnSYjYxcH9niWR/M+CZi0BFj4rKmjKUa1T0AIAV8JrA4j+gLyOVYJmT45MzhKT3N0TOvy7TAGZ9SVvNjVvWtFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714000039; c=relaxed/simple;
	bh=YkqsC0nF/H/k4Oytm2ewDWntFmRtzUD1STC8KXiQ41g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DCK4wtSoThRup0Eh5RwxYgHg8bUSAImoZnVkDA/nnGctU6ch7BVZE5bB3X1nJkRyFYSaf+ugnr0sa0YlFajui4meRpG0GHPllFahwI3YXq929eKMzC7roxqOFJcU6o/Rg2o9XThmp7w23TaSmuALXYgt5OjmP79HhJMkXwexIzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=RGOpKw+s; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5ad2da2196bso208977eaf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 16:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1714000037; x=1714604837; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5EOPLUxSGdh2673E9UnVgdv/f9WeKREWyE41T1+ComY=;
        b=RGOpKw+sLSLcuvF8vdrD+kMElj4DLvMy8Jr8r7isGFxpW2e2r/ZdfJIhN1I80MOOve
         /pQVO+3L45Ffch4h3HqtnQXLJ3akJPWQbWPuOd/Oq6nsXwEtReAPomhWWIex9MRXTfp/
         bVR40bWS8gLIPLkE8eiOCRk94b4Pw3HBMg1Il8y/Gi+fwzcITKqwGBOgC3GcuohSW3Tc
         WLr3YlCQEo1IeNv/2d8yTzyyH/zv6rvIufADTJN+pum/WaI8oEvQKimCYC1JGZ3Ew3tS
         2avS8BFoY8IiZ+BaWk1Fb1k0EUG7M6CkJVRuY0FT1q1eNPieQSWfWLb+F2fbKruK2PNJ
         6GEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714000037; x=1714604837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5EOPLUxSGdh2673E9UnVgdv/f9WeKREWyE41T1+ComY=;
        b=qgZvEoj4XSpwOeP232FZo8bRa4PPunEmdmiIn4gFoQfnBt8qdls2NL9qKx2/NrUcAw
         KJbFP1Pfn+e64k2JWtLtqi13VUA9UR+hNPhAoYA5AolbkCEQHck8Sq7+iJpQnOc6CwsW
         ZyzhFMt9XodPLDiNhi7KMiBu4ZQDw/LuN6pVR/VGZKcA8rMEEF4y8SrO084nhiluzCms
         JE6J16y6LwG7IJN5ctmFltjG2wkvHbMDM8LAOLPZX3VQ9SJ9QCObd/gCiX4ijTw21N9p
         kYtMvJgLifFp3b/a+VLqpwX7AVmZpAmmTGwOem1As8OclrTQhqD3NRq2mWtYjBSbYHhL
         0u2w==
X-Forwarded-Encrypted: i=1; AJvYcCWymJvvLfB/KEo8kzpyDZ7kHo6PMzMGDyxHDBEEE77HeTwhkEFdjYCtftirym55VmBpBEAOghh77KpdYk4357bPL6fiTADhYRPpsg==
X-Gm-Message-State: AOJu0YzGS7Kl1Vkj6H7LS3ESKhQo4jIcVN/Lf28/mTyt1h1Hk3pTWJgh
	McJhq5gsJS54jCg7Mnj0MZhp71k3bvTcJ9fEZwLtAaqEYIcF3T3mRTLU97R/tzI=
X-Google-Smtp-Source: AGHT+IEK1yF/pF3Jt1MaMAE7gbVSzzN/c9vmeIlr7aFyXy4aHkiw6cz3OYQ6jtkyalR6CHilLOVggw==
X-Received: by 2002:a05:6870:c0c7:b0:235:3d0:3096 with SMTP id e7-20020a056870c0c700b0023503d03096mr4168277oad.24.1714000037198;
        Wed, 24 Apr 2024 16:07:17 -0700 (PDT)
Received: from ziepe.ca ([12.97.180.36])
        by smtp.gmail.com with ESMTPSA id oh23-20020a0568702c9700b00239379f06cdsm2596004oab.9.2024.04.24.16.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 16:07:16 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1rzlhr-009uvX-JB;
	Wed, 24 Apr 2024 20:07:15 -0300
Date: Wed, 24 Apr 2024 20:07:15 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Tomasz Jeznach <tjeznach@rivosinc.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Anup Patel <apatel@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Sebastien Boeuf <seb@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux@rivosinc.com
Subject: Re: [PATCH v2 5/7] iommu/riscv: Device directory management.
Message-ID: <20240424230715.GI231144@ziepe.ca>
References: <cover.1713456597.git.tjeznach@rivosinc.com>
 <232b2824d5dfd9b8dcb3553bfd506444273c3305.1713456598.git.tjeznach@rivosinc.com>
 <20240419124017.GC223006@ziepe.ca>
 <CAH2o1u7_YBtS6m1-T56tmxud1mda2gb6tLGVpbBSs15FPcjaGQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2o1u7_YBtS6m1-T56tmxud1mda2gb6tLGVpbBSs15FPcjaGQ@mail.gmail.com>

On Wed, Apr 24, 2024 at 04:01:04PM -0700, Tomasz Jeznach wrote:
> > > +     /* Update existing or allocate new entries in device directory */
> > > +     for (i = 0; i < fwspec->num_ids; i++) {
> > > +             dc = riscv_iommu_get_dc(iommu, fwspec->ids[i], !iommu_domain);
> > > +             if (!dc && !iommu_domain)
> > > +                     continue;
> > > +             if (!dc)
> > > +                     return -ENODEV;
> >
> > But if this fails some of the fwspecs were left in a weird state ?
> >
> > Drivers should try hard to have attach functions that fail and make no
> > change at all or fully succeed.
> >
> > Meaning ideally preallocate any required memory before doing any
> > change to the HW visable structures.
> 
> Good point. Done.
> Looking at the fwspec->ids[] I'm assuming nobody will add/modify the
> IDs after iommu_probe_device() completes.

Yes

> > > +             /* Swap device context, update TC valid bit as the last operation */
> > > +             xchg64(&dc->fsc, fsc);
> > > +             xchg64(&dc->ta, ta);
> > > +             xchg64(&dc->tc, tc);
> >
> > This doesn't loook right? When you get to adding PAGING suport fsc has
> > the page table pfn and ta has the cache tag, so this will end up
> > tearing the data for sure, eg when asked to replace a PAGING domain
> > with another PAGING domain? That will create a functional/security
> > problem, right?
> >
> > I would encourage you to re-use the ARM sequencing code, ideally moved
> > to some generic helper library. Every iommu driver dealing with
> > multi-quanta descriptors seems to have this same fundamental
> > sequencing problem.
> >
> 
> Good point. Reworked.

I suppose by force clearing the v bit before starting the sequence?

That is OK but won't support some non-embedded focused features in the
long run. It is a good approach to get the driver landed though.
 
> > The release_domain has landed too now. Please don't invent weird NULL
> > domain types that have special meaning. I assume clearing the V bit is
> > a blocking behavior? So please implement a proper blocking domain and
> > set release_domain = &riscv_iommu_blocking and just omit this release
> > function.
> >
> 
> Updated to use release_domain, should be cleaner now.
> Clearing TC.V is a blocking (but noisy) behavior, should be fine for
> release domain where devices should be quiesced already.

blocking is fine to be noisy.

Jason

