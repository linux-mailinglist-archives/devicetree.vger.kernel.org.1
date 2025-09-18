Return-Path: <devicetree+bounces-217544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E5CB58210
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:29:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D598C1B20B69
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 16:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54191285CB9;
	Mon, 15 Sep 2025 16:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="IVZj4wLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6EA27B4E1
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=13.77.154.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757953725; cv=none; b=dJlSEEnlWQmkB0R0kLPzKxNe6Gm1DO+M8iYbc/bw7YashZ40F5cWXTXDJ/jKiTul3ae3ZdD2S0LJI5Ek1wtTBe6dqBhNhxbTAt1yZI+FoolvtJEANtP2NQ/5uT1sFgV78gSQO7RGtG0zm+YFkoiOk5X2B/lUCXnBLnWIJnb3BYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757953725; c=relaxed/simple;
	bh=lEeLmHPQMX0Vg/TW9HvhlvhbmtZc1oUSVjNrDlBd/sE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B/9ON7a1zrWkbT9FCsiW1D/5nXAK+RSqaHirio1Eotpupr5udORqTpnIuje+vmlD5O2O8gGX1tSDeLIDkGj/XXiu/Xgs2rEWO+Re4iMu0MzB0DcDiEz6R1O8EscYisQDHzOCyI+lr3fNMyLdSTK7HrySKY8xLF4u5LnMyk9RK6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com; spf=pass smtp.mailfrom=linux.microsoft.com; dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b=IVZj4wLJ; arc=none smtp.client-ip=13.77.154.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.microsoft.com
Received: by linux.microsoft.com (Postfix, from userid 1152)
	id 837A22123290; Mon, 15 Sep 2025 09:28:42 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 837A22123290
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1757953722;
	bh=5NC7L9a3XYKmlncczMkoD2UOHbL3rwgNH4J70c/gSpk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IVZj4wLJ49yR23ntILIsxDjPKy+iZpuAnfCUFiPCW2lV/OYtJLZ8jUk5MlAkU2bx7
	 n8x5YuTZacW/1c8te5UHuDcTZXvO7RRtJO2pqFWFzUwWBJGX4OKPtAyN4R4v1NgmWr
	 uUKbJZAFI8FgbBeonswNod7ObpMLbv8x7Xof29fg=
Date: Mon, 15 Sep 2025 09:28:42 -0700
From: Shyam Saini <shyamsaini@linux.microsoft.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: thierry.reding@gmail.com, robin.murphy@arm.com, robh@kernel.org,
	joro@8bytes.org, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	jacob.pan@linux.microsoft.com, eric.auger@redhat.com,
	code@tyhicks.com, eahariha@linux.microsoft.com,
	vijayb@linux.microsoft.com, bboscaccy@linux.microsoft.com,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v4 4/4] drivers: iommu: refactor arm_smmu_get_resv_regions
Message-ID: <20250915162842.GA23954@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
References: <20250909154600.910110-1-shyamsaini@linux.microsoft.com>
 <20250909154600.910110-5-shyamsaini@linux.microsoft.com>
 <20250909155847.GB882933@ziepe.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250909155847.GB882933@ziepe.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)

Hi Jason,

On 09 Sep 2025 12:58, Jason Gunthorpe wrote:
> On Tue, Sep 09, 2025 at 08:46:00AM -0700, Shyam Saini wrote:
> > Both ARM SMMU v2/v3 drivers have common set operations for
> > arm_smmu_get_resv_regions(), except iommu_dma_get_resv_regions()
> > call all other operations can be clubed into common code block.
> > So to avoid code duplication put common operations in a new helper
> > function iommu_set_sw_msi() and call this helper function from
> > arm_smmu_get_resv_regions() instead.
> > 
> > Suggested-by: Jason Gunthorpe <jgg@ziepe.ca>
> > Signed-off-by: Shyam Saini <shyamsaini@linux.microsoft.com>
> > ---
> >  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c | 26 ++-------------
> >  drivers/iommu/arm/arm-smmu/arm-smmu.c       | 24 ++-----------
> >  drivers/iommu/iommu.c                       | 37 +++++++++++++++++++++
> >  include/linux/iommu.h                       |  6 ++++
> >  4 files changed, 47 insertions(+), 46 deletions(-)
> 
> I would do this first, not after you made all the changes to both
> drivers.
> 
> And then once you do it:
> 
> > -	static const u64 msi_bases[] = { MSI_IOVA_BASE, MSI_IOVA_BASE2 };
> 
> Can just be constants written here, nothing else in the kernel should
> refer to them any more because they are dynamic. The only way to learn
> the value is to read the IOMMU_RESV_SW_MSI. Thus don't write them out
> in public headers to prevent mis-use.

I wil address these in the next version.
 
> I'm comfortable with this side from the iommu perspective once you get
> agreement on the DT representation.

We haven’t heard back from the DT folks or Thierry. Do you think we
should wait a few more days for their feedback, or go ahead and send
v5 as an RFC instead?

Thanks,
Shyam

