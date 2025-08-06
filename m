Return-Path: <devicetree+bounces-202328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6B8B1CF91
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 01:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9925418C3E47
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 23:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B13278146;
	Wed,  6 Aug 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="pAPzJSPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DE3277814
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 23:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754524732; cv=none; b=tEjzmeDRo9VYp2NKfe90aogYfBekXJ3M4bsdmGmHKuuYsroV6CkVNw+P2nIfLE0zb5csi/Jq//mFELs+nFDmPNZL85EUeIbGDPBdJVbFX9kds1v12wAVg/nI/rusCOx0Ajf26uZar+HFc7Er/weIz8hx0BtPq6z75QR8j4UbumE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754524732; c=relaxed/simple;
	bh=Ch3Lu3JNorrE3DqTb4s0lvqvQJV5+k082o5zzm77yE0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kXALvslyrZ2xtk5lvG6mGyh36yGbqaRF47hmBHmBK00/5xDioHhjteOwK79HUGrzqzzUSKUsqHGztCWS81kOa1vyex+BFhTt9ZgDiOWfu6VC7UuF94TDZNqrFQ3CMKa+gISZ64zy9XT0yPfKLbpzNav3ju3KmYpOOTthCYgfPPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=pAPzJSPH; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7e809baeef7so54125185a.0
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 16:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1754524730; x=1755129530; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I4DgF6Vw8xGQncqmkZy1+xUkx+suIzKaCcwcVTdjpkA=;
        b=pAPzJSPHfy1Z5JM3E06VVRh2//C8vlFaA82zgglyttv5mSJ2aOIGPh2KEorwICV6t2
         sdgNhuhTp4VAseHpBW/nQFt0zZMsM4CHlf7uWyNahTb641HECLfNzSDafxgRVGQsNpJ8
         cu9U7KqOvfUBpZZstm91M5Evp7ZTOSHkSdAPFkQ5+VDSVrypfTKrKK1hAlJ1ELYI5XbP
         7tCxzeUjTXUMVoyLOEvvjsKGFJTGJEJv9YP17iTJVo/QRHNxHdz0XzpdoKNfIllHgf5r
         9DSlhXZ+pE3yOWq652aPD13GqzNPMsns/mKnBz8lUKgsGL98MSxUoFHtDb+0CopzQi0O
         OnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754524730; x=1755129530;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I4DgF6Vw8xGQncqmkZy1+xUkx+suIzKaCcwcVTdjpkA=;
        b=HgNnG9MjxI2F9avLBCo1QFOcruShNatISH+U71mF0j8HrvQKar72JR4TmjGDx6FPdC
         SAtX5bnh/sN7i4oix3dP2GsVFaVXk++24FltA4ldNTjL94gm1/uNE+fnyAoWjH+Fgwo1
         36+gwlB08F3llykH/AiSPmsUIitaQbw0hDk3dTDxDvaeOnUYouzZit/V1tEokfhMy2cP
         BwemGAprEXzdSaOJosY7Yle1tUY3UGhMYk7vGfp7DO9b2R8LxuRgBTq7Lm7Nq4qu34wR
         feDdcwGefy208a8F2+oO4BqBZYXGCibFwj7DHiamVoKYMraI5nDC2edXstrwEyHAs5mc
         d1Cw==
X-Forwarded-Encrypted: i=1; AJvYcCVuMMLzkvSOBelEAl63S0oZq1ozNkyNT7sekvGEpBcM8gAsKboAK2uZTxMO7nJO+lsns0X9h1AjdykW@vger.kernel.org
X-Gm-Message-State: AOJu0YzqMMFG1+WwvpgZ2UJDcTtc89PoxIuh/FgnKez97hOIfIwEN8nF
	RKgnR+YQEGcwpoLhJUiYMQrVTZ7RGkzR6H58OoOOlgft8o/SRplEYPYcbyWjgRrEmpA=
X-Gm-Gg: ASbGncsFW6jPMzmGmR0zrudTORMuEhj2O7cs+eMMPjim7JA5gwI0NNPAjejJMZQ0gU3
	km0FGHpxJfpTYReXcEkRy4gq0CoKsbSXWcqTGdV6ZitY5AJpBSTFAGyOsP5hQwN4TO93KO9oXUK
	TaALMBJwxE9l+DUHmGdDv06dzCopO4A8MjCPZGOC8ED8hhe3yJvIfvFtbLiRF41ZpJa+HsL1y3Y
	lUQUS+jyba7s7X5W8ZYHToQovAmZRlX7s2hPu4dNFgmsgfoiq8jqt0EMMgw8i9EXI+3UW362/CR
	no1+KBvNMSCBKcFdLahgS9PClOPaHJaLvv3lPiUU30Il257UOLlh6oUPh6Wc0kk7VeKbtvS4+Nj
	JTiOEG/M1JLcjouwndg/gIVnwhG0vHWZbYNY+ZOn3SOpfJm6R9sxChCiHRILB6WR3L5RY
X-Google-Smtp-Source: AGHT+IGnS032BQYfbSfwSqYTvKso8Ea62PyX+fE1vpQVHfXPFL26cVNK4i9ZyLJUzr/PgtuVEArJEg==
X-Received: by 2002:a05:620a:4045:b0:7e6:97a2:ea7d with SMTP id af79cd13be357-7e81677da93mr625181985a.62.1754524729857;
        Wed, 06 Aug 2025 16:58:49 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e80b869d4bsm310283985a.24.2025.08.06.16.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 16:58:49 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1ujo1w-00000001sk1-2RDU;
	Wed, 06 Aug 2025 20:58:48 -0300
Date: Wed, 6 Aug 2025 20:58:48 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	will@kernel.org, jacob.pan@linux.microsoft.com,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com,
	bboscaccy@linux.microsoft.com
Subject: Re: [PATCH v3 3/3] arm-smmu: select suitable MSI IOVA
Message-ID: <20250806235848.GD377696@ziepe.ca>
References: <20250806215539.1240561-1-shyamsaini@linux.microsoft.com>
 <20250806215539.1240561-4-shyamsaini@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806215539.1240561-4-shyamsaini@linux.microsoft.com>

On Wed, Aug 06, 2025 at 02:55:39PM -0700, Shyam Saini wrote:
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> @@ -3642,17 +3642,30 @@ static int arm_smmu_of_xlate(struct device *dev,
>  static void arm_smmu_get_resv_regions(struct device *dev,
>  				      struct list_head *head)
>  {
> -	struct iommu_resv_region *region;
>  	int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
>  
> -	region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
> -					 prot, IOMMU_RESV_SW_MSI, GFP_KERNEL);
> -	if (!region)
> -		return;
> -
> -	list_add_tail(&region->list, head);
> +	static const u64 msi_bases[] = { MSI_IOVA_BASE, MSI_IOVA_BASE2 };
>  
>  	iommu_dma_get_resv_regions(dev, head);
> +
> +	/*
> +	 * Use the first msi_base that does not intersect with a platform
> +	 * reserved region. The SW MSI base selection is entirely arbitrary.
> +	 */
> +	for (int i = 0; i != ARRAY_SIZE(msi_bases); i++) {
> +		struct iommu_resv_region *region;
> +
> +		if (resv_region_intersects(msi_bases[i], MSI_IOVA_LENGTH, head))
> +			continue;
> +
> +		region = iommu_alloc_resv_region(msi_bases[i], MSI_IOVA_LENGTH, prot,
> +						 IOMMU_RESV_SW_MSI, GFP_KERNEL);
> +		if (!region)
> +			return;
> +
> +		list_add_tail(&region->list, head);
> +		return;
> +	}
>  }

I think this whole series looks pretty good, but I would suggest to
put this in a helper..

'iommu_set_sw_msi()' perhaps, must be called after iommu_dma_get_resv_regions()

Then maybe the constants can just be placed in the .c file inside the
helper function.

Jsaon

