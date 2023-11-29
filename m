Return-Path: <devicetree+bounces-20169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 164E77FE15B
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 21:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7459B20B5F
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 20:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851A260EF3;
	Wed, 29 Nov 2023 20:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="F1EcOt6i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E6E2D1
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 12:50:10 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6d81580d696so157243a34.2
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 12:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701291010; x=1701895810; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z14ncuPizPQTpz34E/qdK1zleu0e7/OH8lwfu0qFocg=;
        b=F1EcOt6iBj3aQN+agExfUCk/6FwHrRczkDc9gi5HGDtGGVBgJb4EnxfUHew+kXbVp3
         pMMxJYd9hjXsd4HXBksuJAAuBs82etU0bVSeCNi9pzptcOtzWiZrGdcqgh96MDiMqF5E
         oo3pcNWSAQmHD7aYzQeJExoHKAG+asGv6NmsYusKPuj8lxyOf25tg6nUGRz8/IPqfNF4
         kr4KEQP9O1hgZWdT87ce2gnhOxHs0eejEOyNcKUtbtD8y8Rz2MMZIx9pNx2rBxpvcSce
         n6UR427PMpcEnV6hDui5Q0wjY4TaJ18T0fnuh+oHD3EWKrSTRpLjIjkpjz+m9v977NZe
         DC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701291010; x=1701895810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z14ncuPizPQTpz34E/qdK1zleu0e7/OH8lwfu0qFocg=;
        b=Un37PxgBQ9yLSvx9WCg0K99iLtOUHiyQZmKk4+bw8jOI49jgLBO/s/mbU0q0GNFD35
         x9iy6mnofQedvpPvXRmzckP1HgXa/arurX41GCIkTWQ/v2tmVmKHFb7bo7cgdZ+iandG
         OEOM/hyj41sJ93wqGJjEgg60a7uBFPPEtj+QSdV+kYHok2wUXi0Q+ykTPB8LdZT2Xfgl
         FNZ+B9M+N81ghPetE+aMeAN2ZmHUnCYMJLO+xNmev9rsJ7HJlU0XIpX6HD2SXSNYixdg
         Fxlduw4dettuHv/57+9hlvZ4FD/eTwNJNnybHieDE/sl3ReoxY3jJNr7gopJ523Q1kvo
         p++A==
X-Gm-Message-State: AOJu0YyH7wBbuETwdvtDQt9uFFJ6lKo7m5Hkt4w71pZlwA76frniD8pK
	Cuscv6XWIh6FaEfOPE7bVggpRg==
X-Google-Smtp-Source: AGHT+IGgKdfE8YcFNMWNxw13U7YpCs8rnHcqlluxJCfOn0tU84fkZFp4MzoV02U2Np+AMlZvjw1IBA==
X-Received: by 2002:a05:6870:d622:b0:1fa:ca3:7069 with SMTP id a34-20020a056870d62200b001fa0ca37069mr20658402oaq.16.1701291009170;
        Wed, 29 Nov 2023 12:50:09 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id yu6-20020a05687c224600b001fa6ba84054sm1349572oab.55.2023.11.29.12.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 12:50:08 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r8RVX-005pjC-Mb;
	Wed, 29 Nov 2023 16:50:07 -0400
Date: Wed, 29 Nov 2023 16:50:07 -0400
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
Subject: Re: [PATCH 6/7] iommu/dma: Centralise iommu_setup_dma_ops()
Message-ID: <20231129205007.GR1312390@ziepe.ca>
References: <cover.1701268753.git.robin.murphy@arm.com>
 <7fe5a0d2bc855ac38dff326f3e64ba394bc262d4.1701268753.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7fe5a0d2bc855ac38dff326f3e64ba394bc262d4.1701268753.git.robin.murphy@arm.com>

On Wed, Nov 29, 2023 at 05:43:03PM +0000, Robin Murphy wrote:
> It's somewhat hard to see, but arm64's arch_setup_dma_ops() should only
> ever call iommu_setup_dma_ops() after a successful iommu_probe_device(),
> which means there should be no harm in instead running it off the back
> of iommu_probe_device() itself, as is currently done for x86 and s390
> with .probe_finalize bodges. Pull it all into the main flow properly.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/mm/dma-mapping.c  |  2 --
>  drivers/iommu/amd/iommu.c    |  8 --------
>  drivers/iommu/dma-iommu.c    | 17 ++++-------------
>  drivers/iommu/dma-iommu.h    |  6 ++++++
>  drivers/iommu/intel/iommu.c  |  7 -------
>  drivers/iommu/iommu.c        |  2 ++
>  drivers/iommu/s390-iommu.c   |  6 ------
>  drivers/iommu/virtio-iommu.c | 10 ----------
>  include/linux/iommu.h        |  7 -------
>  9 files changed, 12 insertions(+), 53 deletions(-)

Yes! That probe_finalize() stuff is not nice

> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 824989874dee..3a0901165b69 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -589,6 +589,8 @@ int iommu_probe_device(struct device *dev)
>  	if (ret)
>  		return ret;
>  
> +	iommu_setup_dma_ops(dev);
> +

I'm pretty sure this should be inside the group mutex lock.

The setting of dev->dma_ops should exactly follow the setting of
group->domain, and all transitions, including from the sysfs override
file should update it, right?

Thus to avoid races agsinst concurrent sysfs this should be locked.

I think you can just put this in iommu_setup_default_domain() and it
will take care of all the cases?

Once in iommu_setup_default_domain() it is easy to call it with the
domain argument and it can know the domain type without using
iommu_is_dma_domain() which is one of the very last few places
checking for the DMA domain type.

Jason

