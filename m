Return-Path: <devicetree+bounces-60894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CDF8AAEB7
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 14:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A300EB21BEE
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 12:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D0C8565D;
	Fri, 19 Apr 2024 12:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="SAYpAa//"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ADFBE66
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 12:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713530423; cv=none; b=ncNIY47eJZnGQvtTcpI8A2LslyoPHmoKToi3WxbSlh6+2V3g7Ul09ONt8tsL9x4Y5vBOJUT0n+MXMZ+6tz5efoU4V5+rJQG1aZJCDZuHI3i3ei8L98ucvYemcfk+9K3TVK+cubkTabb7JYvDLC/N3HG3a7a57HxE75J0rHX8TUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713530423; c=relaxed/simple;
	bh=zsfKz0oVl064t+GWM8K+cKxNKngVPTsso6vdvrs0QRo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mX7G8ILO7pQKSTNdtY2m5DjCaZcVAV4zHZKR1KLh8GvWlMbsmwQVLtr466euIVHl5Bbr/ujOLFlKY1q+RtqlOeVCXc8e/st1xcD0Qah4rqnNGFdjoBiKnt/hPqUtHt/TKsP09z59XfGKMi/1zg2GNXGVmwr9Nj+/F4cJf5OprRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=SAYpAa//; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5ad0f58c74eso252662eaf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 05:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1713530419; x=1714135219; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wIf7xKZO+HvCUW+c/Z92TyDy7TRUuimqRZ6QyHtca+k=;
        b=SAYpAa//hEajqpXfAS5WyEbYUXgXB8OvURM67/PoG2BSN9CbYFJR5SpigdSzQLM7t3
         wX/a3WFkcodXGD2Nc4poKh4U+yw3iQpr8pY5MRDGa3sNmgZcaQClpSdYkFTYmAz3cZcf
         tZ0BgVRTnKyLONR6nALOi5L6KnOFhqLU6Zb5K6TRozQBNqcWoCpfsgyifh9tLc63hAfF
         FSAK1OS8tUEt1SyBhKZIbDuYB3go6dtXkgAP01ppm9+xUq3VJ+WXaXorwtjEc57cJvbR
         ad6o3sxlKtCGZIKT07QUgJCNOrLl+TvogOYAWdSBPfwJIkGSFGsmbTYjIbZdDTMNUE60
         XMSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713530419; x=1714135219;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIf7xKZO+HvCUW+c/Z92TyDy7TRUuimqRZ6QyHtca+k=;
        b=Z5UdnpA0ajH6Nptnju/7iQG0AQvzrAEiJiaujj5bWCiI/7TAzURDfvwx96coLYTkSQ
         ZaFZC0YeLRGpuErblR6uR9HPxxL8bmcWzxhcGVmI8EAItDz4juDh7cz6vJ/d9OHPI4p3
         pFVjwenXDA8uSTcLdBcGemo7uIvFX8Vexv6hm7CK0O0cM4W6LNTlBPcgwkHeqDI685iX
         b4jE1XwSLT9J/nbgbe7UhrEDyV+mdsyoCFspCJcC0f9EgIb172hGxR7Dqz2GVjOIAw/X
         trvwO0+P/VBoPo4SS8Oj4yLw1ubRNCiuhXxBfDOmH8XAoYXBbjumtmcUT3xXvGsIdotg
         GeMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYiGd07NPYNmh42vHuAiGsh/ZWUbZMKwvRRqFtATqTqpgDynOSNUmKfj8lGplHEq47Ey8n07mwM3i6MUs64tWcHT+0x2zrgmGGmA==
X-Gm-Message-State: AOJu0Yzhwyi7bZL66udXaH/6/5D8TIQY2c6L3Sy+bgdZa0gXhLIA0en8
	ZuQFJ96QkveGcuFfXwHxCU/xHcSs0EeLJlK+6o+0is+GD4XyqXm4h27m3Aw8ZEE=
X-Google-Smtp-Source: AGHT+IFCeyn2Wm1dfYOPLRzloku5CRQJoLFWoZvwANKqsHNrtsorMH4/LJaDzLyNVWV6QHo5EB1PIg==
X-Received: by 2002:a4a:942:0:b0:5ac:6891:ce56 with SMTP id 63-20020a4a0942000000b005ac6891ce56mr794470ooa.2.1713530419318;
        Fri, 19 Apr 2024 05:40:19 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id n5-20020a056820054500b005a4b6ad2d27sm813229ooj.27.2024.04.19.05.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 05:40:18 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1rxnXN-00FOhX-6o;
	Fri, 19 Apr 2024 09:40:17 -0300
Date: Fri, 19 Apr 2024 09:40:17 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Tomasz Jeznach <tjeznach@rivosinc.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Anup Patel <apatel@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Sebastien Boeuf <seb@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux@rivosinc.com
Subject: Re: [PATCH v2 5/7] iommu/riscv: Device directory management.
Message-ID: <20240419124017.GC223006@ziepe.ca>
References: <cover.1713456597.git.tjeznach@rivosinc.com>
 <232b2824d5dfd9b8dcb3553bfd506444273c3305.1713456598.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <232b2824d5dfd9b8dcb3553bfd506444273c3305.1713456598.git.tjeznach@rivosinc.com>

On Thu, Apr 18, 2024 at 09:32:23AM -0700, Tomasz Jeznach wrote:
> @@ -31,13 +32,350 @@ MODULE_LICENSE("GPL");
>  /* Timeouts in [us] */
>  #define RISCV_IOMMU_DDTP_TIMEOUT	50000
>  
> -static int riscv_iommu_attach_identity_domain(struct iommu_domain *domain,
> -					      struct device *dev)
> +/* RISC-V IOMMU PPN <> PHYS address conversions, PHYS <=> PPN[53:10] */
> +#define phys_to_ppn(va)  (((va) >> 2) & (((1ULL << 44) - 1) << 10))
> +#define ppn_to_phys(pn)	 (((pn) << 2) & (((1ULL << 44) - 1) << 12))
> +
> +#define dev_to_iommu(dev) \
> +	container_of((dev)->iommu->iommu_dev, struct riscv_iommu_device, iommu)

We have iommu_get_iommu_dev() now

> +static unsigned long riscv_iommu_get_pages(struct riscv_iommu_device *iommu, unsigned int order)
> +{
> +	struct riscv_iommu_devres *devres;
> +	struct page *pages;
> +
> +	pages = alloc_pages_node(dev_to_node(iommu->dev),
> +				 GFP_KERNEL_ACCOUNT | __GFP_ZERO, order);
> +	if (unlikely(!pages)) {
> +		dev_err(iommu->dev, "Page allocation failed, order %u\n", order);
> +		return 0;
> +	}

This needs adjusting for the recently merged allocation accounting

> +static int riscv_iommu_attach_domain(struct riscv_iommu_device *iommu,
> +				     struct device *dev,
> +				     struct iommu_domain *iommu_domain)
> +{
> +	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> +	struct riscv_iommu_dc *dc;
> +	u64 fsc, ta, tc;
> +	int i;
> +
> +	if (!iommu_domain) {
> +		ta = 0;
> +		tc = 0;
> +		fsc = 0;
> +	} else if (iommu_domain->type == IOMMU_DOMAIN_IDENTITY) {
> +		ta = 0;
> +		tc = RISCV_IOMMU_DC_TC_V;
> +		fsc = FIELD_PREP(RISCV_IOMMU_DC_FSC_MODE, RISCV_IOMMU_DC_FSC_MODE_BARE);
> +	} else {
> +		/* This should never happen. */
> +		return -ENODEV;
> +	}

Please don't write it like this. This function is already being called
by functions that are already under specific ops, don't check
domain->type here.

Instead have the caller compute and pass in the ta/tc/fsc
values. Maybe in a tidy struct..

> +	/* Update existing or allocate new entries in device directory */
> +	for (i = 0; i < fwspec->num_ids; i++) {
> +		dc = riscv_iommu_get_dc(iommu, fwspec->ids[i], !iommu_domain);
> +		if (!dc && !iommu_domain)
> +			continue;
> +		if (!dc)
> +			return -ENODEV;

But if this fails some of the fwspecs were left in a weird state ?

Drivers should try hard to have attach functions that fail and make no
change at all or fully succeed.

Meaning ideally preallocate any required memory before doing any
change to the HW visable structures.

> +
> +		/* Swap device context, update TC valid bit as the last operation */
> +		xchg64(&dc->fsc, fsc);
> +		xchg64(&dc->ta, ta);
> +		xchg64(&dc->tc, tc);

This doesn't loook right? When you get to adding PAGING suport fsc has
the page table pfn and ta has the cache tag, so this will end up
tearing the data for sure, eg when asked to replace a PAGING domain
with another PAGING domain? That will create a functional/security
problem, right?

I would encourage you to re-use the ARM sequencing code, ideally moved
to some generic helper library. Every iommu driver dealing with
multi-quanta descriptors seems to have this same fundamental
sequencing problem.

> +static void riscv_iommu_release_device(struct device *dev)
> +{
> +	struct riscv_iommu_device *iommu = dev_to_iommu(dev);
> +
> +	riscv_iommu_attach_domain(iommu, dev, NULL);
> +}

The release_domain has landed too now. Please don't invent weird NULL
domain types that have special meaning. I assume clearing the V bit is
a blocking behavior? So please implement a proper blocking domain and
set release_domain = &riscv_iommu_blocking and just omit this release
function.

> @@ -133,12 +480,14 @@ int riscv_iommu_init(struct riscv_iommu_device *iommu)
>  	rc = riscv_iommu_init_check(iommu);
>  	if (rc)
>  		return dev_err_probe(iommu->dev, rc, "unexpected device state\n");
> -	/*
> -	 * Placeholder for a complete IOMMU device initialization.
> -	 * For now, only bare minimum: enable global identity mapping mode and register sysfs.
> -	 */
> -	riscv_iommu_writeq(iommu, RISCV_IOMMU_REG_DDTP,
> -			   FIELD_PREP(RISCV_IOMMU_DDTP_MODE, RISCV_IOMMU_DDTP_MODE_BARE));
> +
> +	rc = riscv_iommu_ddt_alloc(iommu);
> +	if (WARN(rc, "cannot allocate device directory\n"))
> +		goto err_init;

memory allocation failure already makes noisy prints, more prints are
not needed..

> +	rc = riscv_iommu_set_ddtp_mode(iommu, RISCV_IOMMU_DDTP_MODE_MAX);
> +	if (WARN(rc, "cannot enable iommu device\n"))
> +		goto err_init;

This is not a proper use of WARN, it should only be used for things
that cannot happen not undesired error paths.

Jason

