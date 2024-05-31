Return-Path: <devicetree+bounces-71172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B02CF8D5F2C
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:02:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B1B5285663
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC2671422CA;
	Fri, 31 May 2024 10:02:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F413D150981
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 10:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717149775; cv=none; b=oXrrxu7dHYx8RzvBPcdltDlMGmOQ6oA0cEhJNU3cIoxvq1eUcgyGhFHlQNWzvWOiDMSoT11WkS0bBL1BZNLeCErred0GKUTqyHb+T8vgzrRMJYYoyW1E8MEW4ylwAwNw+FNYWvWo+ccwnG/wZC+bwWZA1LUYRVQ+0+3VQ8EozEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717149775; c=relaxed/simple;
	bh=K2VEOV61avaa+7AqSLryWQDEREWsMWzKx0JOpCH77D8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=I0S2MrRfb//oFOuFx2CfF2OYoY+npgj1aAYuSvG16/enpYIWr3+F1s6MYBf9dO1PiYCjXfQQnaOV3vqOZcQeN0DCZ9/u6YRjeHBdvyJQ+VDYYzcKw/gE3qthSvIsrgDahqnLg2eJiunuXIyPKrEcL/R6rKa8hLR0SyDHPwKrXtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 690831424;
	Fri, 31 May 2024 03:03:10 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F5203F641;
	Fri, 31 May 2024 03:02:43 -0700 (PDT)
Date: Fri, 31 May 2024 11:02:41 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Chen-Yu
 Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, Chris
 Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/5] iommu: sun50i: allocate page tables from below 4
 GiB
Message-ID: <20240531110241.6b26d072@donnerap.manchester.arm.com>
In-Reply-To: <ecdc4d9f-a7b4-45e1-a870-e97cf4922539@arm.com>
References: <20240530233800.27705-1-andre.przywara@arm.com>
	<20240530233800.27705-3-andre.przywara@arm.com>
	<ecdc4d9f-a7b4-45e1-a870-e97cf4922539@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 31 May 2024 09:37:02 +0100
Robin Murphy <robin.murphy@arm.com> wrote:

Hi Robin,

> On 2024-05-31 12:37 am, Andre Przywara wrote:
> > The Allwinner IOMMU is a strict 32-bit device, with the page table root
> > pointer as well as both level's page tables and also the target addresses
> > all required to be below 4GB.
> > The Allwinner H6 SoC only supports 32-bit worth of physical addresses
> > anyway, so this isn't a problem so far, but the H616 and later SoCs extend
> > the PA space beyond 32 bit to accommodate more DRAM.
> > To make sure we stay within the 32-bit PA range required by the IOMMU,
> > force the memory for the page tables to come from below 4GB. by using
> > allocations with the DMA32 flag.  
> 
> Uh-oh... what about the output addresses in sun50i_mk_pte()? Limiting 
> its own accesses is OK, but if the IOMMU isn't capable of *mapping* any 
> valid PA for its clients, we can't easily support that.

Right, that's indeed a problem. I was hoping that the DMA32 address limit
would somehow be enforced by the IOMMU master devices, so they would never
issue addresses above 4GB to the IOMMU in the first place.
Would this work if all those devices use a 32-bit DMA mask? Some of those
devices might have that limit anyways, but those video devices are not
my expertise, so I don't know much details.

IIUC, atm the incoming PA would be masked down to 32-bit, I guess we should have a
WARN_ONCE() there when this happens?
The 32-bit limit would only affect boards with exactly 4GB of DRAM (the
DRAM controller limit), and it only affects the last GB then, so using
DMA32 wouldn't be a terrible limitation, I think.

TBH, I picked this up from Jernej, so have to refer to him for further
details.

Cheers,
Andre

P.S. I agree that a 32-bit only IOMMU sounds somewhat stup^Wweird, but
that's what we have. Maybe we would use it just for the VE only then, where
it's really helpful to provide the illusion of large physically contiguous
buffers.

> Thanks,
> Robin.
> 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >   drivers/iommu/sun50i-iommu.c | 5 +++--
> >   1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
> > index dd3f07384624c..c3244db5ac02f 100644
> > --- a/drivers/iommu/sun50i-iommu.c
> > +++ b/drivers/iommu/sun50i-iommu.c
> > @@ -682,7 +682,8 @@ sun50i_iommu_domain_alloc_paging(struct device *dev)
> >   	if (!sun50i_domain)
> >   		return NULL;
> >   
> > -	sun50i_domain->dt = iommu_alloc_pages(GFP_KERNEL, get_order(DT_SIZE));
> > +	sun50i_domain->dt = iommu_alloc_pages(GFP_KERNEL | GFP_DMA32,
> > +					      get_order(DT_SIZE));
> >   	if (!sun50i_domain->dt)
> >   		goto err_free_domain;
> >   
> > @@ -997,7 +998,7 @@ static int sun50i_iommu_probe(struct platform_device *pdev)
> >   
> >   	iommu->pt_pool = kmem_cache_create(dev_name(&pdev->dev),
> >   					   PT_SIZE, PT_SIZE,
> > -					   SLAB_HWCACHE_ALIGN,
> > +					   SLAB_HWCACHE_ALIGN | SLAB_CACHE_DMA32,
> >   					   NULL);
> >   	if (!iommu->pt_pool)
> >   		return -ENOMEM;  


