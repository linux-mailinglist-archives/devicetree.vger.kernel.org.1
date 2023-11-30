Return-Path: <devicetree+bounces-20189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA8B7FE509
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 01:40:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06228282383
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 00:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77310386;
	Thu, 30 Nov 2023 00:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="gJeX5uHA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70BF2D5C
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 16:39:53 -0800 (PST)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-58d52e0065fso186774eaf.0
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 16:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701304792; x=1701909592; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dqKTf6r/9DX5X0G9N0YPszfAss74aB4UlJwKc4ipXlY=;
        b=gJeX5uHA1xRqlJ/NiA8klcilclFAkpTYoxKBf2ye+8qryZEh2tC6Ns0dAY8FdjXziV
         ZUDnlI8kYjSxCj9nAOh37pJd+ErExStgh7MgF5jPSpwIg0JcOyZ/+wKLRKoWBSCMbT1F
         PxL0Jom0KbNcioSagO/WECnaxufHktzDqUznGVUXUlp7hXviyKPQPc7F9p7kwjQRN9zl
         XKd1RWv6bCXpJ+fHMPYZLSUnKVtgMsPyq5ypXQvxsU7o7Q/0gqU2Oex6U1sjV1jpOPFs
         AvdabnAch/SxZjfHaDOZXkcy4ooJrMuH/piV/3/s5PI3fB5FQnZc4oN/Uwuh/k/7GBQz
         EU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701304792; x=1701909592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dqKTf6r/9DX5X0G9N0YPszfAss74aB4UlJwKc4ipXlY=;
        b=RpR+WGR38YbXTJYA9shlr6sMsqOdP5I5P4ALd2BeIhvs4GqjBYrIkHfrVGKHRLJBqJ
         lFeHmhDJzayIlXS7p6g39/3gHoEAo9GDa6HBdjz9vZOlMIt2ln/THLKB2I4KbuRv/jum
         lzLTl0VVMXnt1/SQdq6gT4mFNVbP9QalwHhbEpglbWG9wS+K8nDiJ/o+xGoOCSDHXfKA
         QfrCWmuANCqHkwfgfLf+LGCWXIvEmatuoyu8WctO9rh9ld/ZawHWP3z84VhvToHTIkQU
         bFL3/uXMPpI9lX4JSHqdl+VnLU0SddE1d54eJvlf3TPKaXHHEE0uUzPhCey5V1xoigZb
         yHNw==
X-Gm-Message-State: AOJu0Yw3PF4rlz+kanAN0a17XeeIUTQ0s3NUx5+/TGdit6vgO++jPNeS
	PTLZpa1hjOpoS0TUfdNmUK/7Iw==
X-Google-Smtp-Source: AGHT+IG4kpqJkp5MuGe0QWOyJQ+HDuDWisfSFN2LiYZ3lNwDJg400B3FZHlbHx5WpKar2Jc43DZwNA==
X-Received: by 2002:a4a:a645:0:b0:58d:6bf6:4daf with SMTP id j5-20020a4aa645000000b0058d6bf64dafmr7941560oom.2.1701304792652;
        Wed, 29 Nov 2023 16:39:52 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id i14-20020a4aab0e000000b0057327cecdd8sm2410792oon.10.2023.11.29.16.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 16:39:52 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r8V5r-005qzk-3H;
	Wed, 29 Nov 2023 20:39:51 -0400
Date: Wed, 29 Nov 2023 20:39:51 -0400
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
Subject: Re: [PATCH 3/7] ACPI/IORT: Handle memory address size limits as
 limits
Message-ID: <20231130003951.GA1394392@ziepe.ca>
References: <cover.1701268753.git.robin.murphy@arm.com>
 <2ae6199a9cf035c1defd42e48675b827f41cdc95.1701268753.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ae6199a9cf035c1defd42e48675b827f41cdc95.1701268753.git.robin.murphy@arm.com>

On Wed, Nov 29, 2023 at 05:43:00PM +0000, Robin Murphy wrote:
> Return the Root Complex/Named Component memory address size limit as an
> inclusive limit value, rather than an exclusive size.  This saves us
> having to special-case 64-bit overflow, and simplifies our caller too.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/acpi/arm64/dma.c  |  9 +++------
>  drivers/acpi/arm64/iort.c | 18 ++++++++----------
>  include/linux/acpi_iort.h |  4 ++--
>  3 files changed, 13 insertions(+), 18 deletions(-)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

