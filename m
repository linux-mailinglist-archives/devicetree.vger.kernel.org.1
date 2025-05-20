Return-Path: <devicetree+bounces-179022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAC7ABE767
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 00:42:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D99728A382B
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 22:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D5025F995;
	Tue, 20 May 2025 22:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="bvUGCBR4"
X-Original-To: devicetree@vger.kernel.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1055F2609DA
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 22:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=13.77.154.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747780947; cv=none; b=Hi4p+LbqOoaX+sUS7oYKwjhYjBtVUhrlh8yVCcFl7j+o4TYnmJex/p0HJjeLBHlizduZENFsSKMX5OS79gvECR8pugLKcs3cWFGuOeXGxuYhWeAyHN3UeLe3pnVHvuVPaGUPW/S1K9SUkXOwgM8Kf2buzL7pBvAmHJ/U7tp5GSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747780947; c=relaxed/simple;
	bh=LEmHzMGZMeWbHV95axfvamFFe4GU6DbF7lodqwp38Jk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VLDHJ9WwizYlN66rD3n5ZcxI8DMNq8U09ISi9wp/xvlyuo0Po6Tek8AJwOcb+FOgx2hDDgCAWal4lotGUGPx2ag64GoliZlcUdeLzZ3YyEfNHxn3WTuLDG9fgBbRyxioC0CUtzbcroztEdFWmUJ4HyxtpbRzTnqIHO8Fb0sVygY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com; spf=pass smtp.mailfrom=linux.microsoft.com; dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b=bvUGCBR4; arc=none smtp.client-ip=13.77.154.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.microsoft.com
Received: by linux.microsoft.com (Postfix, from userid 1152)
	id 9616F2067864; Tue, 20 May 2025 15:42:24 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 9616F2067864
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1747780944;
	bh=DlpgK8+tZkkDHiRWgBwHzi2Y0cqlH2RIldw1jLBTIb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bvUGCBR4iqg/M7Vg3HP94282EcXsXC5noJNb1o/uDAj1lfvSmUtR3/enibqZKqGml
	 IvzwXSS/YTm9/i/m4JJRERdIp388+J5wxgwzStIpmjQ4uI+6mrY/MlL8XjdktFOfqI
	 o3HYFu1SfU5/WDFlksRh6wBlNWwZk7zhBZ5f0IOI=
Date: Tue, 20 May 2025 15:42:24 -0700
From: Shyam Saini <shyamsaini@linux.microsoft.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Jacob Pan <jacob.pan@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250520224224.GA16365@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
References: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>
 <20250410230008.GA6905@ziepe.ca>
 <67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>
 <20250416181759.GF493866@ziepe.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416181759.GF493866@ziepe.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)

Hi Jason,

apologies for the delayed response.

> On Wed, Apr 16, 2025 at 11:04:27AM -0700, Jacob Pan wrote:
> 
> > Per last discussion "SMMU driver have a list of potential addresses and
> > select the first one that does not intersect with the non-working IOVA
> > ranges.". If we don't know what the "non-working IOVA" is, how do we
> > know it does not intersect the "potential addresses"?
> 
> I had understood from previous discussions that this platform is
> properly creating IOMMU_RESV_RESERVED regions for the IOVA that
> doesn't work. Otherwise everything is broken..
> 
> Presumably that happens through iommu_dma_get_resv_regions() calling
> of_iommu_get_resv_regions() on a DT platform. There is a schema
> describing how to do this, so platform firmware should be able to do it..
> 
> So the fix seems trivial enough to me:
> 
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> index b4c21aaed1266a..ebba18579151bc 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> @@ -3562,17 +3562,29 @@ static int arm_smmu_of_xlate(struct device *dev,
>  static void arm_smmu_get_resv_regions(struct device *dev,
>  				      struct list_head *head)
>  {
> -	struct iommu_resv_region *region;
> -	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
> -
> -	region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
> -					 prot, IOMMU_RESV_SW_MSI, GFP_KERNEL);
> -	if (!region)
> -		return;
> -
> -	list_add_tail(&region->list, head);
> +	static const u64 msi_bases[] = { MSI_IOVA_BASE, 0x12340000 };
>  
>  	iommu_dma_get_resv_regions(dev, head);

my understand is, this hook is not called for all the devices, eg: pcie dts node
doesn't use [1] "iommus" property instead it uses "iommu-map" property
as a consequence, [1] while loop exits prematurely and iommu_dma_get_resv_regions()
is not called, so there is no IOVA reservation for the pcie device. 

Did i miss something? Please let me know.

[1] https://elixir.bootlin.com/linux/v6.15-rc7/source/drivers/of/device.c#L161

Thanks,
Shyam

