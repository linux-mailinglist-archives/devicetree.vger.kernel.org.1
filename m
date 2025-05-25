Return-Path: <devicetree+bounces-180378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB56AC364D
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 21:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB83F1723CE
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 19:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B803521A458;
	Sun, 25 May 2025 19:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="jyBjtvKD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C121F542E
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 19:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748200028; cv=none; b=eWcoOS1UwMZX6HN33DCdidp1n9czPn3Xvl1v3+Kc5sjtUmMyIjCn09APqjZ/OI+8jUucJV8Bz4Eh/VVTLL9NrPxiDXpOOydXTwKox+hmtwhjbEni0SHPujCryudkd2CFMBjeQ0i7nJnE54spshpOybfux7vN0ENj0fMmkEYzPy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748200028; c=relaxed/simple;
	bh=uXkJcfGzBIMUXOzmp9Pum4qEKxXyA66d7FwQCanN8o0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M/oi/lgzPi04ya4x5jWncV6wxPCQNyJMutUj2S2Y1sraLiGDkI5RXeNP8e/BvDcXk9JpnhpvJ9SlGAz5bCaL0hXAghdwdvIuffr1e17e2efLa8wa2HvIM/GO1D2m62fArw8AxbJYheHKatRVl9Ip4E8Wz7jvAeTDYfI/s00n2H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=jyBjtvKD; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-47ae894e9b7so28532571cf.3
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 12:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1748200024; x=1748804824; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SlfPbl9U0b/o5N9rX3Vqr5rZsZeMWo7A8d3jNHieFXg=;
        b=jyBjtvKDzEKecMvV5ACUHZ7Ggp9RNCZqFvmCo0z2rRn7v74ae2HRQq9pYElwnoUdwk
         F78Y9qM/Z0O9aH7bkhFi0/7a72dHrhTSlhIB6d0wQpLsAL28l+kpfs+5QhechGqAOADa
         SwzgrwnPzRd1Qb+LgJfgqdsXvJB+V1zQ/GMoa79KkD12qYcr/NweQCl06/1tJ7OizN3C
         RU6M9W/+4LSq3Zs2F9lYFkUUg3LpfS4OOkoKuTceVc8lBmLwCMeO/D4FR7+4Sqo6f/w1
         UR+G+c+EaoYIRfjrpC++93b2MEbVdspunClnspZgBmqZJysV60B9kHqFbrqx4Uj3DdRl
         RFCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748200024; x=1748804824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SlfPbl9U0b/o5N9rX3Vqr5rZsZeMWo7A8d3jNHieFXg=;
        b=KvnPYHBSfFGn5PSNEtxnNgB1u27xLE3ogmzgqNEfXTfohQo56MZzCqq0+skNvc3sUB
         KJl4ft41Y/Z2c5ziun1F3zuJgB+5hqM4dx5Jlz6Bt4nzqiJK5FW6EYprxzJVh84AyI1T
         DEJyM3MfYHcfjqqadnZwBgyLZ6MoqKH/g9MAsVAGcRDCl1wBs+kSO9dxC25zFtwYIcMT
         c2AhIaI6Zh18NNgTuJ25zMseTcPar1+Jl9uXtWV/PAn0vT3UcMufPetCCcGk++U3upo3
         1CaaztMkOSEHU4GL2oHRCcuHuHz9yewp7h/PaKQ2FPxFGEZOYZpyGO2Zb5Fc081M4wjU
         Bx5Q==
X-Forwarded-Encrypted: i=1; AJvYcCW1cIx1rzujzXECGuzQZfP21gkPyd60YsSar4SLoo2YOgcCAfcib00e42TyDhkVTB/71y7k+8/mPL87@vger.kernel.org
X-Gm-Message-State: AOJu0YzCk+JCX06twVoeVzfHuL+7ieMO1do+zHrifpT/S+SNNHmQEKKK
	Bd2RMk8GVvBaTv5Wy+6IKu1yq2cHqy38HHPCvCCJ559KYKQPfcvYS35jT1gSOdd25zY=
X-Gm-Gg: ASbGncuikUbLuhrmP9OSBMDh7f38rrsfEI8C3wvM53slF0BRxygM+vq7kveAtU2T/oo
	6nsE1CYrUFl0ZGuvaOH/+SKuMs2Bgf41O/9DC7nb9KPyrnpgAIU+TKo4LtaBZjRCU+IkuoU59c0
	yOMJEKbV5juMOXkZ9jCnmTy7TIpmQRElxd1/WPQuhAk/FcZVwJcmFrPrRTYfxff/i7HgLNr1uz2
	D3pDHfo8Yv3KxfTXzhigzr4Hf/hSwviWJVph4xEp5fwQTH2C40zkUS0gWcyxvR68IqwrGE4U1Ad
	qjDtSENK/pNKHeHFOSorVDK6gODSz98aynHjNpgX/oF+aIZN7LAI/3lMCi1pawKzExp0l/JpGj1
	aSXPdBqK1dU+lxWLIu6e0n6ebj78=
X-Google-Smtp-Source: AGHT+IEsK8RsIZHAhqzNbJPFGKthMn51tZwQ52JiopY7fu+XaQ8UU+nS+s5NnIXGcLb0DNTM1neWbA==
X-Received: by 2002:a05:622a:550f:b0:494:95b5:ce38 with SMTP id d75a77b69052e-49f4781f4damr107883391cf.42.1748200024664;
        Sun, 25 May 2025 12:07:04 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd468b7400sm1472991785a.66.2025.05.25.12.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 12:07:04 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uJGgZ-000000003eK-2F45;
	Sun, 25 May 2025 16:07:03 -0300
Date: Sun, 25 May 2025 16:07:03 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: Jacob Pan <jacob.pan@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250525190703.GD12328@ziepe.ca>
References: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>
 <20250410230008.GA6905@ziepe.ca>
 <67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>
 <20250416181759.GF493866@ziepe.ca>
 <20250520224224.GA16365@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520224224.GA16365@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Tue, May 20, 2025 at 03:42:24PM -0700, Shyam Saini wrote:
> Hi Jason,
> 
> apologies for the delayed response.
> 
> > On Wed, Apr 16, 2025 at 11:04:27AM -0700, Jacob Pan wrote:
> > 
> > > Per last discussion "SMMU driver have a list of potential addresses and
> > > select the first one that does not intersect with the non-working IOVA
> > > ranges.". If we don't know what the "non-working IOVA" is, how do we
> > > know it does not intersect the "potential addresses"?
> > 
> > I had understood from previous discussions that this platform is
> > properly creating IOMMU_RESV_RESERVED regions for the IOVA that
> > doesn't work. Otherwise everything is broken..
> > 
> > Presumably that happens through iommu_dma_get_resv_regions() calling
> > of_iommu_get_resv_regions() on a DT platform. There is a schema
> > describing how to do this, so platform firmware should be able to do it..
> > 
> > So the fix seems trivial enough to me:
> > 
> > diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> > index b4c21aaed1266a..ebba18579151bc 100644
> > --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> > @@ -3562,17 +3562,29 @@ static int arm_smmu_of_xlate(struct device *dev,
> >  static void arm_smmu_get_resv_regions(struct device *dev,
> >  				      struct list_head *head)
> >  {
> > -	struct iommu_resv_region *region;
> > -	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
> > -
> > -	region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
> > -					 prot, IOMMU_RESV_SW_MSI, GFP_KERNEL);
> > -	if (!region)
> > -		return;
> > -
> > -	list_add_tail(&region->list, head);
> > +	static const u64 msi_bases[] = { MSI_IOVA_BASE, 0x12340000 };
> >  
> >  	iommu_dma_get_resv_regions(dev, head);
> 
> my understand is, this hook is not called for all the devices, eg: pcie dts node
> doesn't use [1] "iommus" property instead it uses "iommu-map" property
> as a consequence, [1] while loop exits prematurely and iommu_dma_get_resv_regions()
> is not called, so there is no IOVA reservation for the pcie device. 

I can't really understand this sentance.

The above is the only place that creates a IOMMU_RESV_SW_MSI so it is
definately called and used, right? If not where does your
IOMMU_RESV_SW_MSI come from?

This function is also the only thing that computes the reserved ranges
that iommu_get_resv_regions() returns.

As above, I've asked a few times now if your resv_regions() is
correct, meaning there is a reserved range covering the address space
that doesn't have working translation. That means
iommu_get_resv_regions() returns such a range.

If you don't have that then you have a bigger platform problem, IMHO,
as vfio/iommufd only respect reserved ranges.

Otherwise, what is the issue you see, exactly? Did you even try it?

Jason

