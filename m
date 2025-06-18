Return-Path: <devicetree+bounces-187143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DCFADEDC9
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 15:28:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA0737A3291
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 13:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 158A42E8DF5;
	Wed, 18 Jun 2025 13:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="URxlxd4I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577452DE214
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750253283; cv=none; b=ZC+pXbckXMvcB1KFEe/RQM9fHDq8cxOeAau4vOSmx2FuAmwVYBF5UT6YncVQZ2NlSsa6DQIMkzUcYNhKmC8qeEKUDyl9P0bcAcGTsQIgQqrifksgGNu9pPv+CUD1/1U/3sNbN6XLhYzCM4m4rTtySJcvy76E+inFTqbHDTaVvPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750253283; c=relaxed/simple;
	bh=spJmW3GP09NgivKGhFqMEC1dTy/Kkyfb4nxmgBOucEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c3OCInPmpSvmnAA87zih67vLv4vjjY5BwYdraR8JhqwnXUK8w7tAFwkvesKRBgiWd+2BogJrAm0MaVv6y3prrcu9oRc4i3UUxsTaXv6tJDQcT/E3baXiCKyzcypis7ISyxOuVDWB8TPyu6aruKdtUovtB3+aL2E1bfdbCmy18j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=URxlxd4I; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4a44b0ed780so99120341cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 06:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750253280; x=1750858080; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dAOqSpqCOL5vjgDSfWa7ZrwFL1vtEzIytDfSsqz8LEg=;
        b=URxlxd4I5FK7fujk2vRslK91IlZPSobQJd0S/crMZklzfEFs2D2te2kIF9RX5c+8V7
         Gy2zoIRrJRc3IQ/BIDXroVLGhfGG8pgc17zuVKY7QUjtLfYFvCHD3EksM03gDGqukgNQ
         pI1RGmB3pDx2WKWSCX0OE5iSBYIIcjT2jb+sRMumjXAWvmAkb2XTJHiAw1ELy8e6YfCJ
         K3AIzPbWzEZ+y9H3dad9EbZyE2V3mLzrRWfMRUDVMMU3VDVYUTOMmjSZ4oWiTyzH23lI
         rCQTaZ0jWoLn+xp5O4WnRj8mfAOYk4S05lsxaTejc2gXGiCADir6i4Lp5OhGEFN1yEaT
         ErHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750253280; x=1750858080;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dAOqSpqCOL5vjgDSfWa7ZrwFL1vtEzIytDfSsqz8LEg=;
        b=tvdp7Hz/g+tc0WNe6VoKfg7tAmsRjbqIwGnHilIBrrMLSVGbt5UO9b2cV4oPEy8WOW
         +gu8XpqkVujIT8xsNqJgG3FIdi/AZmaRmJf5vZ6SGgn/0jM7zTOpWd/JrSnbfRtyeW4C
         mAxBeGvEYwcMo4EbHAtx90cOWxp1SypYDcSZ+p8sPN/5qjXcI5UWJ0xWQAtMX3MU2PK+
         FraSrCrhAEF5G4Rou1dKAOpu5ETWK2rl3axfE1tGwT/eVSorsDeBiJxxfJEPr2pffrCD
         fbmeZDFespZubVa7quVfxDAFh0ag1fmAD8SsXwICm9ngnikBjiTo9lupHkOhb6ZWEEBA
         z6gw==
X-Forwarded-Encrypted: i=1; AJvYcCXVJJHRWly+1klqcptmRR/zZuT7IKT8AOOxxkBDHGKA0Mfe8ErAv1xLauDKDj/6w7vwkhdDal9UXine@vger.kernel.org
X-Gm-Message-State: AOJu0YxB5SQvyDo2lovL1up5gtFNmKmcruK6tz3S5Fqxosx7YtkOKzmK
	RdOSRFfQwxMd65vZSVliYYilEMBs2zJWdSq+3F4o0tbWMy+vFUnIShfpEsSNCnSyloSDrl9Q2W9
	Ysl5J
X-Gm-Gg: ASbGncscDljSt+CnZg/B4K+JP0vplXqnibyFhO5xpy1OkHOU1vmBIDRtZVgVsgLos+B
	d+EnU1z/l8FqGA3TcmUPqywyCuohA6igKyfJbULNHiHeXgJtCtqMS44TTgAI2307zh06o/jKpK9
	DBrr7cYm8//p0bQoTPJ0gdjpzutxKVLQ0CISd1f5BltyYkqETc8NzAqGu3Z/seZlbains+l8O31
	2CpYaVFedixKswdYdNNDjmhghrU/ZJUIq7iSOAebOcOthxcM+EuUj86UsxilMv1YG3947mY/JvY
	HjH+k198q/fOL4AH93uHGpsV3mN8TYl2c6prNV3i+POv4GfR5kjTbMKRoXLk/aMzP2X9B++Blz5
	NZ9DLf3BYzf0h1sVFi9xlwdoAulVR28H1fbkNuw==
X-Google-Smtp-Source: AGHT+IG2fHMkumSLh5a7kRlQvfCzWqyNaNQCt2F7JGbyl37Cd1Kzlhrtl/JlBPjRFd8BrqzAM7ABWw==
X-Received: by 2002:a05:622a:1886:b0:4a7:2328:27dc with SMTP id d75a77b69052e-4a73c4fd24emr201270391cf.9.1750253280248;
        Wed, 18 Jun 2025 06:28:00 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a72a50f29dsm71636961cf.75.2025.06.18.06.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 06:27:59 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uRspb-00000006mz5-0lhB;
	Wed, 18 Jun 2025 10:27:59 -0300
Date: Wed, 18 Jun 2025 10:27:59 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250618132759.GO1376515@ziepe.ca>
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-4-benjamin.gaignard@collabora.com>
 <20250617163219.GF1376515@ziepe.ca>
 <ff32d7c1-d811-46b8-8d3d-458dfebd14f8@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ff32d7c1-d811-46b8-8d3d-458dfebd14f8@collabora.com>

On Wed, Jun 18, 2025 at 02:04:19PM +0200, Benjamin Gaignard wrote:
> 
> Le 17/06/2025 à 18:32, Jason Gunthorpe a écrit :
> > > +	vsi_domain->dt_dma = dma_map_single(dma_dev, vsi_domain->dt,
> > > +					    SPAGE_SIZE, DMA_TO_DEVICE);
> > > +	if (dma_mapping_error(dma_dev, vsi_domain->dt_dma)) {
> > > +		dev_err(dma_dev, "DMA map error for DT\n");
> > > +		goto err_free_dt;
> > > +	}
> > > +
> > > +	vsi_domain->pta = iommu_alloc_pages_sz(GFP_KERNEL | GFP_DMA32,
> > > +					       SPAGE_SIZE);
> > > +	if (!vsi_domain->pta)
> > > +		goto err_unmap_dt;
> > > +
> > > +	vsi_domain->pta_dma = dma_map_single(dma_dev, vsi_domain->pta,
> > > +					     SPAGE_SIZE, DMA_TO_DEVICE);
> > > +	if (dma_mapping_error(dma_dev, vsi_domain->pta_dma)) {
> > > +		dev_err(dma_dev, "DMA map error for PTA\n");
> > > +		goto err_free_pta;
> > > +	}
> > > +	vsi_domain->pta[0] = vsi_mk_pta(vsi_domain->dt_dma);
> > > +
> > > +	vsi_table_flush(vsi_domain, vsi_domain->pta_dma, 1024);
> > > +	vsi_table_flush(vsi_domain, vsi_domain->dt_dma, NUM_DT_ENTRIES);
> > dma_map_single already flushes, put things in the write order and no
> > need to double flush.
> 
> I don't get your point here, for me it flush two different pieces of memory.

dma_map_single() already flushes the cache, you don't need to do it
again.

Do your memory writes then call dma_map_signle().

> > > +	dte_index = vsi_iova_dte_index(iova);
> > > +	dte_addr = &vsi_domain->dt[dte_index];
> > > +	dte = *dte_addr;
> > > +	if (vsi_dte_is_pt_valid(dte))
> > > +		goto done;
> > > +
> > > +	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | GFP_DMA32);
> > > +	if (!page_table)
> > > +		return ERR_PTR(-ENOMEM);
> > Don't use get_zeroed_page for page table memory.
> 
> I will use kmem_cache in v2

I mean you are supposed to iommu-pages.h for page table memory.

> > > +	pt_dma = dma_map_single(dma_dev, page_table, SPAGE_SIZE, DMA_TO_DEVICE);
> > > +	if (dma_mapping_error(dma_dev, pt_dma)) {
> > > +		dev_err(dma_dev, "DMA mapping error while allocating page table\n");
> > > +		free_page((unsigned long)page_table);
> > > +		return ERR_PTR(-ENOMEM);
> > > +	}
> > > +
> > > +	dte = vsi_mk_dte(pt_dma);
> > > +	*dte_addr = dte;
> > > +
> > > +	vsi_table_flush(vsi_domain, pt_dma, NUM_PT_ENTRIES);
> > > +	vsi_table_flush(vsi_domain,
> > > +			vsi_domain->dt_dma + dte_index * sizeof(u32), 1);
> > Double flushing again.
>
> Same here, for me I flushing two different memory area.

write to the page-table, then call dma_map_single(), don't flush it again.

> > > +static int vsi_iommu_map_iova(struct vsi_iommu_domain *vsi_domain, u32 *pte_addr,
> > > +			      dma_addr_t pte_dma, dma_addr_t iova,
> > > +			      phys_addr_t paddr, size_t size, int prot)
> > > +{
> > > +	unsigned int pte_count;
> > > +	unsigned int pte_total = size / SPAGE_SIZE;
> > > +	phys_addr_t page_phys;
> > > +
> > > +	assert_spin_locked(&vsi_domain->dt_lock);
> > > +
> > > +	for (pte_count = 0; pte_count < pte_total; pte_count++) {
> > > +		u32 pte = pte_addr[pte_count];
> > > +
> > > +		if (vsi_pte_is_page_valid(pte))
> > > +			goto unwind;
> > > +
> > > +		pte_addr[pte_count] = vsi_mk_pte(paddr, prot);
> > So why is this:
> > 
> > #define VSI_IOMMU_PGSIZE_BITMAP 0x007ff000
> > 
> > If the sizes don't become encoded in the PTE? The bits beyond 4k
> > should reflect actual ability to store those sizes in PTEs, eg using
> > contiguous bits or something.
> 
> The iommu use arrays to store up to 1024 4k pages indexes so the size
> isn't coded in the PTE bits but the numbers of used indexes for each arrays.

That isn't how it works, if the PTE bits don't code the size then you
don't set the VSI_IOMMU_PGSIZE_BITMAP. You just want SZ_4K for the way
this driver is written.

Jason

