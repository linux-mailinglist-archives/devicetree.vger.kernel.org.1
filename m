Return-Path: <devicetree+bounces-49513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 18942876BEF
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 21:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67DEFB21BD2
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 20:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A95A25E08E;
	Fri,  8 Mar 2024 20:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="SzrPtdCt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA2E2BD0F
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 20:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709930261; cv=none; b=HTZm+SfUblImb9l/J2+X1B1Abqs8Dhj3UV5dLAXWmVWRRF4u+7eNmUwaUmr3dt7E+7d+8DNNPK5CzGQdYrFq8uD7A2xMcVdCfVOwY6NZMws4Ai/p/LIEJCZ6Jmv8uiilmZ5XRyDHymaIv0pNe1RUNn5ynOEpO4ppS5RedLVw2D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709930261; c=relaxed/simple;
	bh=QVuJYBg7eAXpV6Ijtmm49xelHY48E81cS9xdFZ2y8ww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NwUCFvxNf98rgb+CxfDC7XOD9JaAwmzvgRRPtyyqc9nfT5MnYIet/wMxch99vON5uasbwsNlYP1T8EJQo/0EmBgcPQ9yEipT5zhaBiNqAS5/GPfa43+vlIgNdlH7JKIjy2UW59j0QA6ilvLd2b0G7Os8qMEeqxJHXdu7UxaLchA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=SzrPtdCt; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-221830f6643so1006083fac.2
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 12:37:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1709930258; x=1710535058; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8AtBhhUJsX7iCjuz60QlnI9oeTh8ox4hiuWAL+2qFxI=;
        b=SzrPtdCtETYaH+fXoFNcVZ674Y60rUoV24SHjrWWDyPuffz3hHq4no4/0zSaV3YAOd
         3pITU2krQ+XDZV8KTm8DbbDUxfHgTrcSBp72H+2XuUj2wSERwR6Oq5tIbH84/e8violY
         XBkz2lEi58aCBxCQXU+EnRkfJyyex8DnTmOfPlrkwUAUEBulOTXwb4wB6svmuAjMCBrv
         vNqwD49cXpsvWh6R50V+4fN8EusTzt9GcGUyuuTKPnJDEHlTeqpvynw0A/KxKFND/6gd
         PScL6wYo2bwUE7ZOCdsUUCPHc/JvD2GTo+8RU/G8n2zK0OU/XMH7/nnXo0bRNxpOXj3g
         mn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709930258; x=1710535058;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AtBhhUJsX7iCjuz60QlnI9oeTh8ox4hiuWAL+2qFxI=;
        b=OKPPpLdBBmzba4QWM+GP6N1sHtqFONTNb90xsEnqdL1Tpjuws7SWPDKsMnqjqPgYel
         GVXD6HElMx/ZIsr+hvP4GN8b3hsPrOQQ+yKdK+qS2s9Y2K2vqrhs5AL4ssL4oEDHKMyL
         ip8kSPAHBQU2wIiypP9LzGauCj/mdrNgcyWWRmICAAvrqDZwr6rUpkxFigj1lRC5Qnc9
         DzDR0fec/N63RksE0HKbudb4J/SkLogQ86zkO8ak0zZOIHK872U3pGc8N4kdi3dWPfgV
         PZoFuxodlzUZtFo6nfXPQl6hS+Ib3dJafgxz/j8yxaT9ochkAOHNgsg/RbaiGn7c/cQy
         eHig==
X-Forwarded-Encrypted: i=1; AJvYcCVRJsHd75khvSJS5NLamq9xS9jC27K8hWAYrsTXZUCMxzcSbaHgLxS2blb8ebaHgCHCM+WdfQKuMV5C7EesIo2Xr/pw1anoLTjazg==
X-Gm-Message-State: AOJu0YwZ8fAP17lcsSIfYIM7u8p3z3O62z/fSgzQ5NtDiARmc2At9AAl
	3RYMpjoVXsVT50nhZVcSEYosLzD74er6zuX6P9kAz4C67/CpwyiITy13tNnjjaM=
X-Google-Smtp-Source: AGHT+IFbgpl0pB6g2XaoyrWZZStUAXJBL7gQEaHjPXP/ruZgANeVKSb/3hxLcl0YhzvyQSM42+vm+A==
X-Received: by 2002:a05:6870:7a0d:b0:21f:ab17:44c3 with SMTP id hf13-20020a0568707a0d00b0021fab1744c3mr272908oab.24.1709930258434;
        Fri, 08 Mar 2024 12:37:38 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id gu19-20020a056870ab1300b0022154dd4eb0sm47251oab.4.2024.03.08.12.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Mar 2024 12:37:38 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1rigyH-007y3a-Aw;
	Fri, 08 Mar 2024 16:37:37 -0400
Date: Fri, 8 Mar 2024 16:37:37 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Vineet Gupta <vgupta@kernel.org>, Russell King <linux@armlinux.org.uk>,
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
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v3 7/7] dma-mapping: Simplify arch_setup_dma_ops()
Message-ID: <20240308203737.GB9225@ziepe.ca>
References: <cover.1707493264.git.robin.murphy@arm.com>
 <f0ea76846c89a65dfe42933d78d770004bb3de01.1707493264.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f0ea76846c89a65dfe42933d78d770004bb3de01.1707493264.git.robin.murphy@arm.com>

On Fri, Feb 09, 2024 at 04:50:04PM +0000, Robin Murphy wrote:
> The dma_base, size and iommu arguments are only used by ARM, and can
> now easily be deduced from the device itself, so there's no need to pass
> them through the callchain as well.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> v2: Make sure the ARM changes actually build (oops...)
> ---
>  arch/arc/mm/dma.c               |  3 +--
>  arch/arm/mm/dma-mapping-nommu.c |  3 +--
>  arch/arm/mm/dma-mapping.c       | 16 +++++++++-------
>  arch/arm64/mm/dma-mapping.c     |  3 +--
>  arch/mips/mm/dma-noncoherent.c  |  3 +--
>  arch/riscv/mm/dma-noncoherent.c |  3 +--
>  drivers/acpi/scan.c             |  7 +------
>  drivers/hv/hv_common.c          |  6 +-----
>  drivers/of/device.c             |  4 +---
>  include/linux/dma-map-ops.h     |  6 ++----
>  10 files changed, 19 insertions(+), 35 deletions(-)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

