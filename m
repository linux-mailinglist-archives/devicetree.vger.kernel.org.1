Return-Path: <devicetree+bounces-187643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E58AAE0B96
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 18:59:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05E8A4A0F57
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0BF528C5DC;
	Thu, 19 Jun 2025 16:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="WuRCjc8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FCF28C5BF
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 16:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750352373; cv=none; b=f0OXQ8b1erkcO/NLwr909yHC7uKQSYnJODJO+gufVbLAy8YGpSdj6m50ZVa2qiUl01auF+arQarUyaZvsUq1gQHJQ1BXEuHBLn6QONpmJK8EFgo1dmJDYLneGbiZCmsEgqe8RFRxR/Hgyu0QlnzBsZDbBPqDCpe8rzzcmpBM6bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750352373; c=relaxed/simple;
	bh=uHeSXjDfXn7lYF+oBRLTKymZl/nezk6X31UcWI8RzH4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MvzF4AK6I21C9piPkU/ut2t1CVCWgJ3AeTwGawCrGc0Dq3sk+3BBOESaePWce7lC3pH8OAN/EB6hmNzZ4ZVsOg3xriC4fYdN9Q4exNx1bv0IXw5BB4iaK4gbWE2Y1rsb23fjAD8Ls921W1z+kPynk692YTZS4/eR2bsQkKl6FUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=WuRCjc8p; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-73a64e126d9so943076a34.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 09:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750352371; x=1750957171; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WU789LESDPx6spX9Gu45wOPXnZU17iFeIzBAgdevUwE=;
        b=WuRCjc8pMdEYngpNswpPQqhsuS6kM8FMq3ebpEwDHa237HEvvi1NS+7h5j0MZvQOHu
         S2fpciIGvFZOvvE/P7Sn8A35DMJZs2mKeVP39v9tirM+tD4mbxmLdMp0eFZbLZtyPbwi
         30jYYuQvTm4yxWBG6aQYPCbJtaxl031ZpzcqO+XxW8nx0dp4ZN83viBS9YRoi3wz9F5A
         7f7w3HFMvCUYrnbklIE81o33gjCQL2XYEqFbv6dAAViBwewVIKcyPnE684fjPfxIrQ/s
         gu2s1Dx6iHUtTEWfm8xkuK7BwVauw1HCsODApo40ZNPXZAf7RdUpHDkObSS+z1ncKT40
         xBsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750352371; x=1750957171;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WU789LESDPx6spX9Gu45wOPXnZU17iFeIzBAgdevUwE=;
        b=Qz0D83+ZYdr16+aj7JAE4UbmlMAr0UiVihnPQW/y3ZZdkfq0UVEqrqP7506CL34JuK
         unStiYqScU4Nw6ToDS1d1wZIOH4frqw3703fLYPxcngaR7tqn4CwrkaBbSAwYPVw3eUm
         L+ivK6uoeQrC3OEamJYJQVINNYTWfAvxXF+RP5SU7DfuArIbMaQwwnZaqYuYVgP+W4r6
         1NMPFhQql857nQhZb/XYtXc1IWskGTbdLOtZnXnSrs1tWQ60SYWiIWheC4Nz7M+knONu
         M+99E+4Gwh0e00ZC2Ohqzu0yeN/4+fg5VuZCFwllD2X/S8AtIs9OkIfcbAC3Xuf2jbsj
         Fo2g==
X-Forwarded-Encrypted: i=1; AJvYcCVGBoNbezNegIG5c2GPa4CqNp8kitzBE1YL7UyYymElUPYZTN/BzsUgqKJRJX1GMQsvYBw3y0Vfbu2+@vger.kernel.org
X-Gm-Message-State: AOJu0YwhqBnb7NoI+8+dt+IdHdLwh8umuV66o0eFHlSr0jFxVKxnVxRd
	GM+qra03Q54JtERUfjX+J98AAA5kvXSnhpXmgzFiCP8mT/hWoftKjZ+Os/WCrn26j00=
X-Gm-Gg: ASbGnctSD9x9esRURMV5y2PLbGm6a9z9XuZpbWhQf86fe14KB13BRXvFLshqcOcRZoz
	oC76+jB5Chsn1EOArnlBaSvtcDQZuZrgyfiyUoX137C9Ft9+zhn4GCip6vE/JWXdfhyztQG5LO7
	Sf1KM++rx0xHYqpmOauLM0MVPJy/bkerwnNkOJUZBTrDFQbm7DkUUj4QIJX1ZGmmZhWSHRUhALm
	c4tP3NBERsgTqkgYP6rK4H57jiFF63wKo6a9P/OCxW7Zyo7xovG/0C6VhgZ94W61lk56AALFdrp
	xT4WS4rCNrX++BnvNzB/f7gVVKvsH4rnmvIa
X-Google-Smtp-Source: AGHT+IFIVSAeEPqWaR7ouc36Dp5BIP5quliMTNtM08oDDkQu9GEu/sRTek8upP25DBEtFCz1lvvpVw==
X-Received: by 2002:a05:6830:6c8a:b0:73a:8a8a:5151 with SMTP id 46e09a7af769-73a8a8a5334mr1331051a34.17.1750352370711;
        Thu, 19 Jun 2025 09:59:30 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a284ff5f4sm2339324a34.43.2025.06.19.09.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 09:59:30 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uSIbo-000000003GJ-3nRB;
	Thu, 19 Jun 2025 13:59:28 -0300
Date: Thu, 19 Jun 2025 13:59:28 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250619165928.GA10257@ziepe.ca>
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>

On Thu, Jun 19, 2025 at 06:27:52PM +0200, Benjamin Gaignard wrote:
> 
> Le 19/06/2025 à 15:47, Jason Gunthorpe a écrit :

> > Ugh. This ignores the gfp flags that are passed into map because you
> > have to force atomic due to the spinlock that shouldn't be there :(
> > This means it does not set GFP_KERNEL_ACCOUNT when required. It would
> > be better to continue to use the passed in GFP flags but override them
> > to atomic mode.
> 
> I will add a gfp_t parameter and use it like that:
> page_table = iommu_alloc_pages_sz(gfp | GFP_ATOMIC | GFP_DMA32, SPAGE_SIZE);

This will or together GFP_ATOMIC and GFP_KERNEL, I don't think that
works..

> > > +static int vsi_iommu_attach_device(struct iommu_domain *domain,
> > > +				   struct device *dev)
> > > +{
> > > +	struct vsi_iommu *iommu = dev_iommu_priv_get(dev);
> > > +	struct vsi_iommu_domain *vsi_domain = to_vsi_domain(domain);
> > > +	unsigned long flags;
> > > +	int ret;
> > > +
> > > +	if (WARN_ON(!iommu))
> > > +		return -ENODEV;
> > > +
> > > +	/* iommu already attached */
> > > +	if (iommu->domain == domain)
> > > +		return 0;
> > > +
> > > +	ret = vsi_iommu_identity_attach(&vsi_identity_domain, dev);
> > > +	if (ret)
> > > +		return ret;
> > Hurm, this is actually quite bad, now that it is clear the HW is in an
> > identity mode it is actually a security problem for VFIO to switch the
> > translation to identity during attach_device. I'd really prefer new
> > drivers don't make this mistake.
> > 
> > It seems the main thing motivating this is the fact a linked list has
> > only a single iommu->node so you can't attach the iommu to both the
> > new/old domain and atomically update the page table base.
> > 
> > Is it possible for the HW to do a blocking behavior? That would be an
> > easy fix.. You should always be able to force this by allocating a
> > shared top page table level during probe time and making it entirely
> > empty while staying always in the paging mode. Maybe there is a less
> > expensive way.
> > 
> > Otherwise you probably have work more like the other drivers and
> > allocate a struct for each attachment so you can have the iommu
> > attached two domains during the switch over and never drop to an
> > identity mode.
> 
> I will remove the switch to identity domain and it will works fine.

You'll loose invalidations..

Maybe the easiest thing is to squish vsi_iommu_enable() and reorganize
it so that the spinlock is held across the register programming and
then you can atomically under the lock change the registers and change
the linked list. The register write cannot fail so this is fine.

This should probably also flush the iotlb inside the lock.

> > Which will cause the core code to automatically run through to
> > vsi_iommu_disable() prior to calling vsi_iommu_release_device(), which
> > will avoid UAF problems.
> > 
> > Also, should the probe functions be doing some kind of validation that
> > there is only one struct device attached?
> 
> which kind of validation ?

That only one device probed to the iommu?

Jason

