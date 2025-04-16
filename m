Return-Path: <devicetree+bounces-167948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2E9A90DD9
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 23:34:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDCCC3BC19B
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 21:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A68C20FAA4;
	Wed, 16 Apr 2025 21:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="AL8wUoxp"
X-Original-To: devicetree@vger.kernel.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 286C44B5AE
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 21:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=13.77.154.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744839249; cv=none; b=ebtsoPQ6ohPVk2f7SrSjzu4yess38vel1pyNfqZBDNm74ogpWAAf5fbIl0maCc1Voql3Q33vI85+Lw/4esID1Nd0qdfbjBBleWbceEhB0d46rofxnPd4cpFgMJETF6pcOoVUm09tE/u+705qdDxNK1jdRDXQvKVRGkDgmLp1WgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744839249; c=relaxed/simple;
	bh=LMx67qyjqOkSRXudgM4ifmov6dER+mwMsdPVhFLIUDA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KeX5OjaPx1qfYPwTqGYsTInX9ayPk6PkA4LmYFL9J5UFa+B9kkgrSbxy0CJJ1lZIZ0x5CQTuBRvJwlEzKA4a7YQ6NydzhdqsS6NXHVA1ovIIi/CoddV+8vXV8EvseG+7cDK3Z4q2mCgDM0MpAPI7UOHeTvPp6u4e7X8AV4rL4gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com; spf=pass smtp.mailfrom=linux.microsoft.com; dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b=AL8wUoxp; arc=none smtp.client-ip=13.77.154.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.microsoft.com
Received: from DESKTOP-0403QTC. (unknown [20.236.11.42])
	by linux.microsoft.com (Postfix) with ESMTPSA id 0F1F72052509;
	Wed, 16 Apr 2025 14:34:04 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 0F1F72052509
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1744839245;
	bh=9HNqumPtmvmJAGW9wiQMrJO9t2eP9GkkKEQe9OhQp38=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Reply-To:From;
	b=AL8wUoxp7F3VeHAsffQ3unWgZt3wlUbcSBmIwRkJrm9Du3X25ksLOq3F6A0TpFVTw
	 1gGLyIw5+ZGeZ5Wf1Ie/K9phuvvU2nQM2nE2AzjFQUNCHD2lJque2p3Lw64pHFV6i5
	 1MqgT74N8l7A1eQeBrKhACC88ucVYEpZbzBB9C5U=
Date: Wed, 16 Apr 2025 14:34:03 -0700
From: Jacob Pan <jacob.pan@linux.microsoft.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Shyam Saini <shyamsaini@linux.microsoft.com>, iommu@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 virtualization@lists.linux.dev, will@kernel.org, eric.auger@redhat.com,
 code@tyhicks.com, eahariha@linux.microsoft.com, vijayb@linux.microsoft.com,
 jacob.pan@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250416143403.790f45d4@DESKTOP-0403QTC.>
In-Reply-To: <20250416181759.GF493866@ziepe.ca>
References: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>
	<20250410230008.GA6905@ziepe.ca>
	<67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>
	<20250416181759.GF493866@ziepe.ca>
Reply-To: jacob.pan@linux.microsoft.com
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Jason,

On Wed, 16 Apr 2025 15:17:59 -0300
Jason Gunthorpe <jgg@ziepe.ca> wrote:

> On Wed, Apr 16, 2025 at 11:04:27AM -0700, Jacob Pan wrote:
> 
> > Per last discussion "SMMU driver have a list of potential addresses
> > and select the first one that does not intersect with the
> > non-working IOVA ranges.". If we don't know what the "non-working
> > IOVA" is, how do we know it does not intersect the "potential
> > addresses"?  
> 
> I had understood from previous discussions that this platform is
> properly creating IOMMU_RESV_RESERVED regions for the IOVA that
> doesn't work. Otherwise everything is broken..
> 
Agree, but I thought the previous attempt was to make
iommu_ops.get_resv_regions() report properly instead of at the platform
level (DT or IORT). Maybe Shayam can show the current reserved regions
in sysfs.

> Presumably that happens through iommu_dma_get_resv_regions() calling
> of_iommu_get_resv_regions() on a DT platform. There is a schema
> describing how to do this, so platform firmware should be able to do
> it..
> 
> So the fix seems trivial enough to me:
> 
Make sense below, probably good to have this regardless of the
current issue. IMHO, FW reserved region should take precedence.

> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c index
> b4c21aaed1266a..ebba18579151bc 100644 ---
> a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c +++
> b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c @@ -3562,17 +3562,29 @@
> static int arm_smmu_of_xlate(struct device *dev, static void
> arm_smmu_get_resv_regions(struct device *dev, struct list_head *head)
>  {
> -	struct iommu_resv_region *region;
> -	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
> -
> -	region = iommu_alloc_resv_region(MSI_IOVA_BASE,
> MSI_IOVA_LENGTH,
> -					 prot, IOMMU_RESV_SW_MSI,
> GFP_KERNEL);
> -	if (!region)
> -		return;
> -
> -	list_add_tail(&region->list, head);
> +	static const u64 msi_bases[] = { MSI_IOVA_BASE, 0x12340000 };
>  
>  	iommu_dma_get_resv_regions(dev, head);
> +
> +	/*
> +	 * Use the first msi_base that does not intersect with a
> platform
> +	 * reserved region. The SW MSI base selection is entirely
> arbitary.
> +	 */
> +	for (i = 0; i != ARRAY_SIZE(msi_bases); i++) {
> +		struct iommu_resv_region *region;
> +
> +		if (resv_intersects(msi_bases[i], MSI_IOVA_LENGTH))
> +			continue;
> +
> +		region = iommu_alloc_resv_region(msi_bases[i],
> MSI_IOVA_LENGTH,
> +						 IOMMU_WRITE |
> IOMMU_NOEXEC |
> +							 IOMMU_MMIO,
> +						 IOMMU_RESV_SW_MSI,
> GFP_KERNEL);
> +		if (!region)
> +			return;
> +		list_add_tail(&region->list, head);
> +		return;
> +	}
>  }
>  
>  static int arm_smmu_dev_enable_feature(struct device *dev,
> 
> Jason


