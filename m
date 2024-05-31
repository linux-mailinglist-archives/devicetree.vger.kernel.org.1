Return-Path: <devicetree+bounces-71112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D97588D5CE2
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:38:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 167151C24454
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 08:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CEBD1514DD;
	Fri, 31 May 2024 08:37:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 903C514F9EF
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 08:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717144634; cv=none; b=Cdd3bvTWFOn5WTACEphCYgLKcQbdiuc26cZNvhpgj3xQo0bUvRrvX14dr4lT/S7oKMnInplcu5A3ANZWg0wjiid9kx62JSHUPtUZbQGwi2GvMkyM0VYRXi0eZksVdVhp29nmUfhPIzNCCMBROn8N4hVaumnPDk4HyjnCHTVp4xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717144634; c=relaxed/simple;
	bh=krRVD3UkRnE4YDx4vNs3xr7/v74++jw0AqyhDKkqFB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I/6WrpdQTIKKaWxzTUU19k3YkyJJfre+ZQZbAmwIrboF1ISTiLAJqa3rj52KoYx3Xh/zcfRjpZqPKfDFRIXhep9zk7VjbPav2w26Y9Viw/xrSonpE3dz9Qs51gP7QJ7mGd132MV/3itHbkbGkBgyPU8OdD4/we5BBN4bGKlfQEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9D6F113E;
	Fri, 31 May 2024 01:37:34 -0700 (PDT)
Received: from [10.57.67.251] (unknown [10.57.67.251])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 481AB3F792;
	Fri, 31 May 2024 01:37:08 -0700 (PDT)
Message-ID: <ecdc4d9f-a7b4-45e1-a870-e97cf4922539@arm.com>
Date: Fri, 31 May 2024 09:37:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] iommu: sun50i: allocate page tables from below 4 GiB
To: Andre Przywara <andre.przywara@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin
 <ryan@testtoast.com>, iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
References: <20240530233800.27705-1-andre.przywara@arm.com>
 <20240530233800.27705-3-andre.przywara@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20240530233800.27705-3-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-05-31 12:37 am, Andre Przywara wrote:
> The Allwinner IOMMU is a strict 32-bit device, with the page table root
> pointer as well as both level's page tables and also the target addresses
> all required to be below 4GB.
> The Allwinner H6 SoC only supports 32-bit worth of physical addresses
> anyway, so this isn't a problem so far, but the H616 and later SoCs extend
> the PA space beyond 32 bit to accommodate more DRAM.
> To make sure we stay within the 32-bit PA range required by the IOMMU,
> force the memory for the page tables to come from below 4GB. by using
> allocations with the DMA32 flag.

Uh-oh... what about the output addresses in sun50i_mk_pte()? Limiting 
its own accesses is OK, but if the IOMMU isn't capable of *mapping* any 
valid PA for its clients, we can't easily support that.

Thanks,
Robin.

> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>   drivers/iommu/sun50i-iommu.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
> index dd3f07384624c..c3244db5ac02f 100644
> --- a/drivers/iommu/sun50i-iommu.c
> +++ b/drivers/iommu/sun50i-iommu.c
> @@ -682,7 +682,8 @@ sun50i_iommu_domain_alloc_paging(struct device *dev)
>   	if (!sun50i_domain)
>   		return NULL;
>   
> -	sun50i_domain->dt = iommu_alloc_pages(GFP_KERNEL, get_order(DT_SIZE));
> +	sun50i_domain->dt = iommu_alloc_pages(GFP_KERNEL | GFP_DMA32,
> +					      get_order(DT_SIZE));
>   	if (!sun50i_domain->dt)
>   		goto err_free_domain;
>   
> @@ -997,7 +998,7 @@ static int sun50i_iommu_probe(struct platform_device *pdev)
>   
>   	iommu->pt_pool = kmem_cache_create(dev_name(&pdev->dev),
>   					   PT_SIZE, PT_SIZE,
> -					   SLAB_HWCACHE_ALIGN,
> +					   SLAB_HWCACHE_ALIGN | SLAB_CACHE_DMA32,
>   					   NULL);
>   	if (!iommu->pt_pool)
>   		return -ENOMEM;

