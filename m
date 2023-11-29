Return-Path: <devicetree+bounces-20167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA4A7FE13D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 21:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BBEE2820C8
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 20:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E6357304;
	Wed, 29 Nov 2023 20:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="FPRXhtOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D04DBD67
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 12:40:44 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6d816bb0a61so154995a34.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 12:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701290444; x=1701895244; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i4is+UaFXgNmfUwcjSjgaiG0RVAiB9ug48COJL1kEfc=;
        b=FPRXhtOrAV5xg2ep6+npC90ZSnpQalIGR2w53QMKa3XLO/hG0KmMCeIAEJYG9nBJWa
         /XyyUlxnf8qxAxQaWmKVhby4s5m9Ta/R4x8QhtH8YfdNzl+p6aeapMOLXIPz8RLo/pjh
         IOpI2VD/QnYVyMPPrxjtdK9wv8Otlic/ctIvKNQMpTzekcCTjVogfQF4jR5thhHXsjCs
         XONtlIfvzyaZj/K/WAsdq3tTQWkbny+MdS0Xc+CJBzPOQ/LHxjv7V0aeigbx0nYcDG9u
         Gawbifm5xn+KRSCUaJc1fnk6/rBRvV8nKVVLyaEi4QZnJFHIJEs+ftWuSwbPhkVly6xB
         Ux/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701290444; x=1701895244;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4is+UaFXgNmfUwcjSjgaiG0RVAiB9ug48COJL1kEfc=;
        b=qD41Q7o6SOGgopdSufl3MDsjhzMlDovnzgqfTi1anuUopfMDS4bpsgqUvpPS0R/ImA
         kwFwV4DXEglVCbJjF70GTPW93g0dSg7U6hCOzV4IZXdHOegh/KprXEhhQ9ivhthXHQiJ
         emwuNcDy2/zL0b8bekaqzpRb8BsPX3UPvKodRXuIT1XEQ/VgDQfKLGpjzVV4DTNBTu5a
         koJTFvQyYdDqeb4JyB2K8kK3zWzURFYpngF8pEBVEL7MjQlPN37NmiYL+0yVRm8Kq9Xq
         NPFeMlI4ha90XtcqvKFqrvTTVFJXS9j1O4bmF3iDhn0qL/Y4r+ABTrbo0RvTPYbQg49p
         XQNg==
X-Gm-Message-State: AOJu0YyNQj5KsFZ+qSVMTXyz8PaIfHpNa24GvShnz8Hr1WMfcJph7CNs
	lERvB/BVTLff8/460/9/UfojSQ==
X-Google-Smtp-Source: AGHT+IEnrq+40pWqc9tikvXUqS6Y6R2hs7giuPFXyADBt3dDnfao9L3w+T91fxfG4h2rkEvYDjFXYw==
X-Received: by 2002:a05:6830:1d41:b0:6d6:3ff8:aab7 with SMTP id p1-20020a0568301d4100b006d63ff8aab7mr19895331oth.1.1701290444152;
        Wed, 29 Nov 2023 12:40:44 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id e11-20020a9d560b000000b006d3161e612dsm2113398oti.30.2023.11.29.12.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 12:40:43 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r8RMQ-005pfu-R5;
	Wed, 29 Nov 2023 16:40:42 -0400
Date: Wed, 29 Nov 2023 16:40:42 -0400
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
Subject: Re: [PATCH 4/7] dma-mapping: Add helpers for dma_range_map bounds
Message-ID: <20231129204042.GP1312390@ziepe.ca>
References: <cover.1701268753.git.robin.murphy@arm.com>
 <b6626985d97ddc33a23b4b9fafa881b35001547e.1701268753.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b6626985d97ddc33a23b4b9fafa881b35001547e.1701268753.git.robin.murphy@arm.com>

On Wed, Nov 29, 2023 at 05:43:01PM +0000, Robin Murphy wrote:
> Several places want to compute the lower and/or upper bounds of a
> dma_range_map, so let's factor that out into reusable helpers.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/loongarch/kernel/dma.c |  9 ++-------
>  drivers/acpi/arm64/dma.c    |  8 +-------
>  drivers/of/device.c         | 11 ++---------
>  include/linux/dma-direct.h  | 18 ++++++++++++++++++
>  4 files changed, 23 insertions(+), 23 deletions(-)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

