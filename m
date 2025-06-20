Return-Path: <devicetree+bounces-187893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA82CAE1A74
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 14:05:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 316A05A4F41
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 12:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B833428A40D;
	Fri, 20 Jun 2025 12:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="XnqnDs6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7453289E1F
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 12:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750421113; cv=none; b=BY4IJrDay6pwC216j4j01gLlmBa1wN6KumVCp16RFW1w7K2xwN4RvUv697+6qmQnDrMfyULXffOtyjD6U4emiD04bMCPS1YXpoYKKoTvDV67PqkXzmdxRZOuOdEhstkYWksCulUSXlLaP7/p/8dnThHhyIfLl0/QX/bemP6YpsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750421113; c=relaxed/simple;
	bh=jsmOaERJJJU+XCJVI4JWcgqpWpirMEBecRWGeNiANCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jWeGsAd8OdAlySsvdHenGD5sd4auMkzXJHip1YQ9MrU3Cj5VKJqBKYMqIpW8TJtYClMkpZXd+BuLC01PF5q9HgCOF1Inz0NfBhRqqCFDOk+GzJ4jiQj3nbtLJR4OhPGHJs4DPtcdAbrEbzeSwXF35Avo0TcrtB7+aqf/WeAhgtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=XnqnDs6p; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6faff792f9bso16124136d6.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 05:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750421111; x=1751025911; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iKSU6GlAD0b+reZYhRj4iOMFyn23zu+YAR94aAzdOEg=;
        b=XnqnDs6p093TCT0u8xqmUP9nS4uieNJqvVLhZDwkVGUw4MdQ47jN37NI2sTNIozzv0
         T0Kttc8FSmfLO60GssmTqxeO1WgXRf0ipNz4gIt2JVcizpYH3Z2bL4DqA8uI5zjxHsap
         ZF6tb0fudVZzRJZOsNz39i2lgKwwbi0g7CnK1xai9W7mRC2ZQZZpC1Yw8gRTtTyeuubv
         6OYrueD3o4IbR8kIoPptK9lnACCGtVDRuZReSGMF/pAfa+o8WsryNQd9gbND1tKEgOCS
         dTo7ApYZlouKnJxC6XYU5qFRwCmYcRGakwdmR1iKXF8NhcfA4UT0Wm9fOOTwNMdnGmr+
         aPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750421111; x=1751025911;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iKSU6GlAD0b+reZYhRj4iOMFyn23zu+YAR94aAzdOEg=;
        b=f1P6NcNxTzWSWA/reJ0dhJz0NRr0dIBoRSLSe+EcejF6nFcihchZIHqJ/50WNXjdEO
         jQfOBrW5rpKmu9U6q8+adcMz7zIHtAb1TBxw3W3qfa8Wo30Xbi7yp166yrYfhKDsJiKf
         1XMqX/vRs+FEiM5N0cMAJwfK4k9Yy57nrIPMvKjiR+mYTMMB+M2y5082e+fDQZ/eYEoL
         6N0bDblnW7kQRheLjxxK1vQowwUVad46iSN3bK6OclF1Vo9EXajB9HxWrvEvwA4ipWnz
         ufdHcwX7vGWM0BR58lZ+OQEXolxS358Z4B3gO6QD6pbV6ZoIjNFXElOEhRc4P8mUoZJ3
         0UIg==
X-Forwarded-Encrypted: i=1; AJvYcCVmtnNC8UDFGIHepNGyR3DNbTI28xWw+w1Mj7DzBbsK26ZRMQSZdaqKLRs+5phcLVridRMlW3dYoHkb@vger.kernel.org
X-Gm-Message-State: AOJu0Yzah7bVgG6PSyfie7zRvvUy+ySvpcO2fsJPzjOFRsgkKpUrSGvC
	BS8mhOd8KQ+cvtomGUF0SMErdJUnnrEH2NlpYjMw7iudDA2A4KuL2P7edc86d0UO+zc=
X-Gm-Gg: ASbGnct5v+TSOk6eos9Y+j/9PBKkaTFoqe8QV+c6REBOKOSme5oAF31gFaMK7CMiovo
	V+OAQwnPp5zT2jw+gdvvmHNrsqq1nOM4vmeJuXg66KBME2ypNu8uyaX7dfu9SRG31CyY91wM24q
	EZZRWujYvAo4qkyrCURKb4YjcAVW3hk3AB/Uxq+drBvzUk22DjAvRUO5wK3Pa1kiB4Qcnte/n5u
	mHDEuOzvz92QbNIr3qG0htgRk7GC/3Sypcx+tysy+KHyzJNTu+yzH/JS0eo36CPQo6gacL8+0Ft
	dFBNiLePSjvFZyr7GluHSnwvqLh1GCQ54ASlrGddawXcRM9FTQANmL71bFGl3XARhxrrFFO0s2d
	ybP++8qh2C3HUYMfBMBZE0fVabfnFAgf7dEjivA==
X-Google-Smtp-Source: AGHT+IHfu4I3beDwgjtHUIfD6yuQvdS/JqKOrGvhTdy+iUwvWk3om69mhib1iCashING8Al0Lp0xvw==
X-Received: by 2002:a05:6214:1d24:b0:6fa:c81a:6202 with SMTP id 6a1803df08f44-6fd0a58f236mr37698336d6.29.1750421110649;
        Fri, 20 Jun 2025 05:05:10 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd09576766sm11104646d6.81.2025.06.20.05.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 05:05:10 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uSaUX-00000000Dmo-1ZEQ;
	Fri, 20 Jun 2025 09:05:09 -0300
Date: Fri, 20 Jun 2025 09:05:09 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250620120509.GA39770@ziepe.ca>
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
 <20250619165928.GA10257@ziepe.ca>
 <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>

On Fri, Jun 20, 2025 at 10:57:49AM +0200, Benjamin Gaignard wrote:
> 
> Le 19/06/2025 à 18:59, Jason Gunthorpe a écrit :
> > On Thu, Jun 19, 2025 at 06:27:52PM +0200, Benjamin Gaignard wrote:
> > > Le 19/06/2025 à 15:47, Jason Gunthorpe a écrit :
> > > > Ugh. This ignores the gfp flags that are passed into map because you
> > > > have to force atomic due to the spinlock that shouldn't be there :(
> > > > This means it does not set GFP_KERNEL_ACCOUNT when required. It would
> > > > be better to continue to use the passed in GFP flags but override them
> > > > to atomic mode.
> > > I will add a gfp_t parameter and use it like that:
> > > page_table = iommu_alloc_pages_sz(gfp | GFP_ATOMIC | GFP_DMA32, SPAGE_SIZE);
> > This will or together GFP_ATOMIC and GFP_KERNEL, I don't think that
> > works..
> 
> I have test it, I don't see conflicts or errors. What worries you ?

Just looking at the bitmaps I'm not sure? Did you run with lockdep?

> > > > > +static int vsi_iommu_attach_device(struct iommu_domain *domain,
> > > > > +				   struct device *dev)
> > > > > +{
> > > > > +	struct vsi_iommu *iommu = dev_iommu_priv_get(dev);
> > > > > +	struct vsi_iommu_domain *vsi_domain = to_vsi_domain(domain);
> > > > > +	unsigned long flags;
> > > > > +	int ret;
> > > > > +
> > > > > +	if (WARN_ON(!iommu))
> > > > > +		return -ENODEV;
> > > > > +
> > > > > +	/* iommu already attached */
> > > > > +	if (iommu->domain == domain)
> > > > > +		return 0;
> > > > > +
> > > > > +	ret = vsi_iommu_identity_attach(&vsi_identity_domain, dev);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > Hurm, this is actually quite bad, now that it is clear the HW is in an
> > > > identity mode it is actually a security problem for VFIO to switch the
> > > > translation to identity during attach_device. I'd really prefer new
> > > > drivers don't make this mistake.
> > > > 
> > > > It seems the main thing motivating this is the fact a linked list has
> > > > only a single iommu->node so you can't attach the iommu to both the
> > > > new/old domain and atomically update the page table base.
> > > > 
> > > > Is it possible for the HW to do a blocking behavior? That would be an
> > > > easy fix.. You should always be able to force this by allocating a
> > > > shared top page table level during probe time and making it entirely
> > > > empty while staying always in the paging mode. Maybe there is a less
> > > > expensive way.
> > > > 
> > > > Otherwise you probably have work more like the other drivers and
> > > > allocate a struct for each attachment so you can have the iommu
> > > > attached two domains during the switch over and never drop to an
> > > > identity mode.
> > > I will remove the switch to identity domain and it will works fine.
> > You'll loose invalidations..
> > 
> > Maybe the easiest thing is to squish vsi_iommu_enable() and reorganize
> > it so that the spinlock is held across the register programming and
> > then you can atomically under the lock change the registers and change
> > the linked list. The register write cannot fail so this is fine.
> > 
> > This should probably also flush the iotlb inside the lock.
> 
> I will try to summarize:
> in vsi_iommu_attach_device() I should:
> - take the lock
> - do nothing if the domain is the same.
> - if iommu is used (ie powered up):
>   - update the registers to enable the iommu
>   - flush
>   - update the link list
> - update iommu->domain
> - release the lock

That sounds believable, yes.. Though can you do the "powered up" checks
inside the spinlock - are they sleeping? Can they be done before the
spinlock?

> in vsi_iommu_identity_attach() I should:
> - take the lock
> - do nothing if the domain is the same.
> - if iommu is used (ie powered up):
>   - disable the iommu
>   - remove the node from the list
> - update iommu->domain
> - release the lock

And maybe flush too? How does the caching hw work at this point? You
can't have stale entries in the cache when you switch back to an
enabled/translating configuration. So either the HW flushes implicitly
or you need to add a flush somewhere..
 
> vsi_iommu_suspend() and vsi_iommu_resume() will also have to take the lock
> before calling vsi_iommu_disable() and vsi_iommu_enable().

Yes, if they use iommu->domain that seems good

If the above locking is a problem then I'd use the group mutex instead
during resume/suspend. The attach functions are already called with
the group mutex held.

> Do I have to switch to identity domain in vsi_iommu_attach_device()
> before applying the requested domain ?

No, that is what creates the security problem. What you want is to
update the HW registers in a way that the HW just changes hitlessly
from one translation to another, then flush the cache.

Jason

