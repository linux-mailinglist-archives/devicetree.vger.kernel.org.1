Return-Path: <devicetree+bounces-62541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F1B8B182A
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 02:48:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB2F11F25A55
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 00:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6197E17FE;
	Thu, 25 Apr 2024 00:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="kI1TqP1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FBF816
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 00:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714006089; cv=none; b=sgMxZBM9/+xEbmxUomm65zpK3DKxM+usHO57IDRNH5cprINlQ0grhSUFz9ItGDLbGdE9yA0WiLuP3vs0PCJHsSFLZp9oJamJhnr+jfoc/KWOkb+s48t9Z9qWOXyF+Obat9pyJdlTQDTGCBdj/IClTeC/5f1OqrWaEyozf9s09lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714006089; c=relaxed/simple;
	bh=1FwFfqE9i616o1VTvMvnmB0Vi4XGdpO5ENmkg5Y9C+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PdQ7DPOLj4TJsJ+UxSHKMzJfzs4T+iggx8mKD+swnGdqbfmTT4SYkhOz0Ry8lQcBXUQ/HeeTgADUMzH7VWe1nQ621FImu2B2YCCNaDzhSgOuf9O/jICjeyywIzvKjeCciGfLpVgdgyoB4bznh6zmEILsPSUqlyQuAlULRYfxhFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=kI1TqP1B; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5aa400b917dso315998eaf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 17:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1714006086; x=1714610886; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vuFHLVEWRvr8nT3POIEE+NeoEX4x7+oc0ycZrONvMnY=;
        b=kI1TqP1BGfOUW+3TMPE2uwIyxhjc6xbmnjQ/Bml9DCoM58rWHuW38/NzytIPAEw+VD
         AuFw06pEqUad5GJh8iWDM5PFc3PlqJAhvuUAu1SoFtneOqQR2DoCDJvLhywErXTl/tCS
         kbY3mImmilGRW+yv9zmSuXbvpClVYJGCJHC5et054lL/FrXqTEgjrIB4kRBj3hRWvm2t
         9aL04cWPSwEl0Wu/ibi0yL8zA8jRSnBSiCcJlHDuKA/cw0HPyqzfRMzzWSaFD5T+Wf3f
         ZWadrqFY0YCYKLfKOf+uK4uX6xsI1QXntw2jUhtbFINQ7Q0QzfURvxlNxB16nt5kzb7A
         sTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714006086; x=1714610886;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vuFHLVEWRvr8nT3POIEE+NeoEX4x7+oc0ycZrONvMnY=;
        b=v4V1zBWbji7GmCfoVvjusqxmbhjKOicMKt1guoTh/XpW/1j1cRVKEzBAKzIOvLc+3I
         CGoFknUzG/3rQJQqRouVna2kkns2bUcLCRNZ7f35D0MOlZ5D8YNj3lvH1mc9Qq6aOvMG
         oT3xGTEb/yCW/IDZfNF2fhc4hqJa61srvkk34F8kjs1NIDiDaoda+GraSAq4iThD6Cyg
         wRJ2oi2iK8+3Vf698DIhDYlxEf3GQl2PjF7skczJ5JM1quI4kVU2SfTdf8f45xCp8Dow
         HmQyBKiOr5ogZ9pwBV0WLDHxtk+EzqznGUUIhOAoECI5QDB47kn/StxdMR+4TnapbnGf
         glIA==
X-Forwarded-Encrypted: i=1; AJvYcCXZk8IBaRhpdonIh94BNjOQUZCabpt8y/0Ycqk29K+OveaK3IXTPeq0nlGzzp+fVgLp3MGPETjDyFG4l1pq5z5H3GWltnCc2FFWhQ==
X-Gm-Message-State: AOJu0YxzR0FdCSVX6f+0asd/14+SVEga97IHM7UkhdFWGltM6nHnDOGq
	Q54Zkh2Va3/aZiAVkIDRBdf/cnFws0AyjhFVTv/764NPK6Zu04AyduzLskVb56o=
X-Google-Smtp-Source: AGHT+IEPuZwS/Tkiq24z8ESvoiDOcfXfHtKEsJScRX3bkfnzRD6SNCxN7/xPfUqfYppgfpYVzUwNDQ==
X-Received: by 2002:a05:6870:b527:b0:22e:9792:97ed with SMTP id v39-20020a056870b52700b0022e979297edmr5451364oap.38.1714006085784;
        Wed, 24 Apr 2024 17:48:05 -0700 (PDT)
Received: from ziepe.ca ([12.97.180.36])
        by smtp.gmail.com with ESMTPSA id xi9-20020a0568704f0900b002392041da7dsm2726725oab.48.2024.04.24.17.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 17:48:05 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1rznHP-00AEjV-Rj;
	Wed, 24 Apr 2024 21:48:03 -0300
Date: Wed, 24 Apr 2024 21:48:03 -0300
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
Subject: Re: [PATCH v2 7/7] iommu/riscv: Paging domain support
Message-ID: <20240425004803.GK231144@ziepe.ca>
References: <cover.1713456597.git.tjeznach@rivosinc.com>
 <301244bc3ff5da484b46d3fecc931cdad7d2806f.1713456598.git.tjeznach@rivosinc.com>
 <20240419125627.GD223006@ziepe.ca>
 <CAH2o1u5+XD9YN=gdMVtfkyhKoKha0UpwKgOVbCAwOQa+saPfRw@mail.gmail.com>
 <20240424233950.GJ231144@ziepe.ca>
 <CAH2o1u4eZ-mRO7hiJzA-pwYDOo0+3vObpBZT3_MXW=zC9mXRbA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH2o1u4eZ-mRO7hiJzA-pwYDOo0+3vObpBZT3_MXW=zC9mXRbA@mail.gmail.com>

On Wed, Apr 24, 2024 at 04:54:01PM -0700, Tomasz Jeznach wrote:
> On Wed, Apr 24, 2024 at 4:39 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Wed, Apr 24, 2024 at 04:30:45PM -0700, Tomasz Jeznach wrote:
> > > > > @@ -46,6 +46,10 @@ MODULE_LICENSE("GPL");
> > > > >  #define dev_to_iommu(dev) \
> > > > >       container_of((dev)->iommu->iommu_dev, struct riscv_iommu_device, iommu)
> > > > >
> > > > > +/* IOMMU PSCID allocation namespace. */
> > > > > +static DEFINE_IDA(riscv_iommu_pscids);
> > > > > +#define RISCV_IOMMU_MAX_PSCID                BIT(20)
> > > > > +
> > > >
> > > > You may consider putting this IDA in the riscv_iommu_device() and move
> > > > the pscid from the domain to the bond?
> > > >
> > >
> > > I've been considering containing IDA inside riscv_iommu_device at some
> > > point,  but it made PCSID management more complicated.  In the follow
> > > up patches it is desired for PSCID to be unique across all IOMMUs in
> > > the system (within guest's GSCID), as the protection domains might
> > > (and will) be shared between more than single IOMMU device.
> >
> > The PCSID isn't scoped under the GSCID? That doesn't sound very good,
> > it means VM's can't direct issue invalidation with their local view of
> > the PCSID space?
> >
> 
> To clarify: PSCID namespace is per GSCID.
> However there might be more than one IOMMU in a single system sharing
> the same GSCID

I assume this is because GSCID ends up shared with kvm?

> and with e.g. SVA domains attached to more than one
> IOMMU. It was simpler to manage PCSID globally.

If the PSCID is moved into the invalidation list like Intel structured
it then it doesn't matter for SVA, or really anything.

AFAIK the only reason to do otherwise is if you have a reason to share
the ID with the CPU/MM and the IOMMU probably to coordinate
invalidations. But if you do this then you really just always want to
use the MM's global ID space in the first place...

So I'm not sure :)

Jason

