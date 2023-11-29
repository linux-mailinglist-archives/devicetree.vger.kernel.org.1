Return-Path: <devicetree+bounces-20168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B237FE141
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 21:43:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C8451C20B88
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 20:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363645EE9D;
	Wed, 29 Nov 2023 20:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="ltifotaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB5D5D7F
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 12:43:18 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3b863ec1732so612783b6e.0
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 12:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701290598; x=1701895398; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VQkQZtrQbpqMHU38TIDcUDo5JEq87aQQf1MaJK/f8fE=;
        b=ltifotaqj3/qFSSn/66l9ZkFHFqhkX08GSxbRrcI48S2PHdWUJbMfSf0gP/VArX6Of
         7uOwFjZPGVkdbMgzmqWdvNEFl2u94GDlaphr6YropQ+uAU3bu5h5Y4qrlWbwi6gAAyE1
         Ct2P3T87QM76nx+3djrsF0nrht0kKQCN6vmUzjosiGaWfjrPm5o3hcwGhdH3Penmb1wo
         JyY/sLWAgn5pxuuLL4nimT8jl7vqN7J7gSVGiuMSjocusTrWiYuAiCuw1ytfhrBqX/ZI
         4LkBv5yhoAXQlHOpZfGkDo2XkbxW+bIBwNCOwoSuKFGbd7DLM/zgXDvP0ZulnDTGo6Ox
         CYyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701290598; x=1701895398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VQkQZtrQbpqMHU38TIDcUDo5JEq87aQQf1MaJK/f8fE=;
        b=T55ZFyMNCxNQY+uuQylB5ecabKSUDC6xS2y7NUbaMsiVgR3DYE5Btag6V75nXCWL6O
         Fpe4dXx/U1YeopsNw+AtC9BdOLJVGJZgXkI1sD+t9mMBSFEUKw8TQQOaCTSe/W1uso07
         PwjEgjMmMn2eO9MBMTcaNoq+0r93pp6NIRnwwiMXXetFr4p52TpS/ApK4mCUfb1839hM
         IQz2u3zfewyjVDwTAPLI3yzbuz9hRtUySE9M5EpynzaIwnZnxllZrlE4FCpsFcvxmUhr
         ZMSChHOUHm4tM4TtJJtz8P7qR98NqFLNCZ01As7MFozo9r8o6pJAklYSBKarv+RsNRiq
         kAVQ==
X-Gm-Message-State: AOJu0YxGj2cHwVCJST6GhYPp39pslVhtKPgm90z/Y1wgw80a0TN5sW1v
	hPhI26cRKnL6Zud4RpHE0XpsGg==
X-Google-Smtp-Source: AGHT+IGLoniM+wElYPIWxSKpX9Eo477s4X8dPUqDwUM2qIN0+StQVm9ol890wMZQ9Fmvg1ybJUuFzw==
X-Received: by 2002:a05:6808:152b:b0:3b8:3399:84bf with SMTP id u43-20020a056808152b00b003b8339984bfmr11564700oiw.15.1701290598186;
        Wed, 29 Nov 2023 12:43:18 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id bd33-20020a056808222100b003af644e6e81sm1782211oib.45.2023.11.29.12.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 12:43:17 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r8ROv-005pgb-4k;
	Wed, 29 Nov 2023 16:43:17 -0400
Date: Wed, 29 Nov 2023 16:43:17 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>, Christoph Hellwig <hch@lst.de>,
	Vineet Gupta <vgupta@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Hanjun Guo <guohanjun@huawei.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>,
	Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
	David Woodhouse <dwmw2@infradead.org>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	Matthew Rosato <mjrosato@linux.ibm.com>,
	Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-acpi@vger.kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 5/7] iommu/dma: Make limit checks self-contained
Message-ID: <20231129204317.GQ1312390@ziepe.ca>
References: <cover.1701268753.git.robin.murphy@arm.com>
 <951f52b59b401418a7ccc00beed15632d1aabd7a.1701268753.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <951f52b59b401418a7ccc00beed15632d1aabd7a.1701268753.git.robin.murphy@arm.com>

On Wed, Nov 29, 2023 at 05:43:02PM +0000, Robin Murphy wrote:
> It's now easy to retrieve the device's DMA limits if we want to check
> them against the domain aperture, so do that ourselves instead of
> relying on them being passed through the callchain.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/dma-iommu.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)

When I spent some time noodling on this a few weeks ago I was looking
at putting the dma_range_map_min() effectively as a new reserved
region in the common reserved region code so it naturally flows out to
all the right places.

But this is no worse in that regard than what we have right now:

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

>  	/* Check the domain allows at least some access to the device... */
> -	if (domain->geometry.force_aperture) {
> +	if (map) {

Oh, I've been sitting on a patch to delete force_aperture now too..

Jason

