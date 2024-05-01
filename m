Return-Path: <devicetree+bounces-64283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 498F08B8C5D
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:58:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D9601C20D9C
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 14:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D28112F580;
	Wed,  1 May 2024 14:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="gFRLBPQC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C9F12F37C
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 14:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575385; cv=none; b=ecl4g/pgYqAPtPzlCNxa5nouDVww5ePjoARkVBotQbDu8fm7+25ARWIu6lX/ZqEE4LK7xTBS+OPUcd56f0+BPzGvmKJLi66OedNDB/C/mXFonjFPBd40n3JaBunj6ObJOXzluhJHZqKOYqLL58TiIbZ/YnnFilkhK/QV+BScwFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575385; c=relaxed/simple;
	bh=D8dDhjJUKcoc6hx+nWiNh4JOa3uMyj4QJvA0UZJL02M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BeZEkUvbx3eSNin6AstwBvXXxvhKmbCecHtNITI5fm6XNwMDdwz5cV9PkLItS0MefE0ryOJmYpRGoNDO7jaHcMmKjsHIzMp2rQeIfBUGwE8YddzmQU5N3cP8CvUDvOveo0GyMENsGwU+g14thu04jlQNuxfbqptfVvbSVszwbNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=gFRLBPQC; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-78f05341128so477673985a.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 07:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1714575383; x=1715180183; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eJGnH6JMeRVIDCgE3fOFl84u0C8yQJQw2QrSPFhIV3E=;
        b=gFRLBPQCC0ttXCiGnJYaeAx9StO6VCwLUQLmn60L+/vh3ChWUOQz0m3lXw4TlLySY3
         00nWsHVSwfY1+UfaO9yR2U0Pn0DHpvvDHs3KIzsEiRDqiQR5Y+DnIWgu5xnz6BG9rtLP
         v8TOs3rwvYq8UP09lX3j1PdVcE2VGxCk64LV8naOXPeiBOiMZ5+UPHma5emb24x2+r9b
         jtYN4YESLWci3Nn4dhV/DnBPo1maBr0pzYUUn4hBcKwB/kckU/6VzW4kSxQuDgaXeTvh
         6QpGsd82+WLCKC4TaEcjDnCe1+l0UFXN1dNdSLbDSKduevzV122cAgtkuK4a9xCRcA4p
         TCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714575383; x=1715180183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eJGnH6JMeRVIDCgE3fOFl84u0C8yQJQw2QrSPFhIV3E=;
        b=wLP2oMU+eL63OhA8MuckW8nVcQLX/7buMbE/9RTebpxFG7KAy5yGB/YS8jNaFJnXW5
         pLMuc35SeArk5pfc643N2RyP11TU8YHOO+X7iq4NWQ2uysG1Ir7J6hKTOwmCgSQAp6Fz
         XYgK6oMcrIFBb9sGgdGkDpFR99XDew+XEyyoXo00Yet+ysY2JJIIKmNBO4Wlr8mRpLIS
         UICUx19Q4mXxgx8tZ+21rWoibKk2oBB7XALLgjR8Ur1f8I9r7uAe2ERCD7l+C8aHz3jn
         iwfKJ9w3BWIaN/bLCa8YS2iEwkM5ZtMtLy46JEM+TD5I5dIr9nBegSo++y34qTbQHmCB
         /8Dw==
X-Forwarded-Encrypted: i=1; AJvYcCXVo3o8C3smpprkdKdOuVf+E+eWyXxkVG2ywIXZ2ctGHMrCnAGXSoP+BAWR5kpxjMYhFBuJjBz/VxDxm+nr12F2WzIm4A1SBve6qw==
X-Gm-Message-State: AOJu0YyLilH9/6B0Xb9EWWPKgp3quRcXIysmL+PSWjKN8gGpl4PgE4WS
	PKq6oflMwAlNoVgeMLSvVDxM70pe07vS5UECnbL8pfD+iUm9+FEucxFaDC6jO1I=
X-Google-Smtp-Source: AGHT+IG0qIFy2caBLvcDGBIvg4IVVCR5d+JtATohiEj0n9TMLtXKBV4S0Llv/scMqMPm8vuwzEv6aw==
X-Received: by 2002:a05:620a:1787:b0:78f:280:90f8 with SMTP id ay7-20020a05620a178700b0078f028090f8mr3155974qkb.78.1714575382931;
        Wed, 01 May 2024 07:56:22 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id p2-20020a05620a22e200b00790ef37673fsm2901144qki.7.2024.05.01.07.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 07:56:22 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1s2BNd-00Dc3Y-Hd;
	Wed, 01 May 2024 11:56:21 -0300
Date: Wed, 1 May 2024 11:56:21 -0300
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
Subject: Re: [PATCH v3 7/7] iommu/riscv: Paging domain support
Message-ID: <20240501145621.GD1723318@ziepe.ca>
References: <cover.1714494653.git.tjeznach@rivosinc.com>
 <b83f81c04d1f3885d860b1eec03761fe63a33183.1714494653.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b83f81c04d1f3885d860b1eec03761fe63a33183.1714494653.git.tjeznach@rivosinc.com>

On Tue, Apr 30, 2024 at 01:01:57PM -0700, Tomasz Jeznach wrote:

> +#define iommu_domain_to_riscv(iommu_domain) \
> +	container_of(iommu_domain, struct riscv_iommu_domain, domain)
> +
> +#define dev_to_domain(dev) \
> +	iommu_domain_to_riscv(dev_iommu_priv_get(dev))

Please use the priv properly and put a struct around it, you'll
certainly need this eventually to do the rest of the advanced
features.

> +static void riscv_iommu_bond_unlink(struct riscv_iommu_domain *domain, struct device *dev)
> +{
> +	struct riscv_iommu_bond *bond, *found = NULL;
> +	unsigned long flags;
> +
> +	if (!domain)
> +		return;
> +
> +	spin_lock_irqsave(&domain->lock, flags);

This is never locked from an irq, you don't need to use the irqsave
variations.

> +	list_for_each_entry_rcu(bond, &domain->bonds, list) {
> +		if (bond->dev == dev) {
> +			list_del_rcu(&bond->list);
> +			found = bond;
> +		}
> +	}
> +	spin_unlock_irqrestore(&domain->lock, flags);
> +
> +	/* Release and wait for all read-rcu critical sections have completed. */
> +	kfree_rcu(found, rcu);
> +	synchronize_rcu();

Please no, synchronize_rcu() on a path like this is not so
reasonable.. Also you don't need kfree_rcu() if you write it like this.

This still looks better to do what I said before, put the iommu not
the dev in the bond struct.


> +static struct iommu_domain *riscv_iommu_alloc_paging_domain(struct device *dev)
> +{
> +	struct riscv_iommu_domain *domain;
> +	struct riscv_iommu_device *iommu;
> +
> +	iommu = dev ? dev_to_iommu(dev) : NULL;
> +	domain = kzalloc(sizeof(*domain), GFP_KERNEL);
> +	if (!domain)
> +		return ERR_PTR(-ENOMEM);
> +
> +	INIT_LIST_HEAD_RCU(&domain->bonds);
> +	spin_lock_init(&domain->lock);
> +	domain->numa_node = NUMA_NO_NODE;
> +
> +	/*
> +	 * Follow system address translation mode.
> +	 * RISC-V IOMMU ATP mode values match RISC-V CPU SATP mode values.
> +	 */
> +	domain->pgd_mode = satp_mode >> SATP_MODE_SHIFT;

This seems really strange, the iommu paging domains should be
unrelated to what the CPU is doing. There is no connection between
these two concepts.

Just pick a size that the iommu supports.

The number of radix levels is a tunable alot of iommus have that we
haven't really exposed to anything else yet.

> +	/*
> +	 * Note: RISC-V Privilege spec mandates that virtual addresses
> +	 * need to be sign-extended, so if (VA_BITS - 1) is set, all
> +	 * bits >= VA_BITS need to also be set or else we'll get a
> +	 * page fault. However the code that creates the mappings
> +	 * above us (e.g. iommu_dma_alloc_iova()) won't do that for us
> +	 * for now, so we'll end up with invalid virtual addresses
> +	 * to map. As a workaround until we get this sorted out
> +	 * limit the available virtual addresses to VA_BITS - 1.
> +	 */
> +	domain->domain.geometry.aperture_start = 0;
> +	domain->domain.geometry.aperture_end = DMA_BIT_MASK(VA_BITS - 1);
> +	domain->domain.geometry.force_aperture = true;

Yikes.. This is probably the best solution long term anyhow, unless
you need to use the last page in VFIO for some reason.
  
>  static int riscv_iommu_device_domain_type(struct device *dev)
>  {
> -	return IOMMU_DOMAIN_IDENTITY;
> +	struct riscv_iommu_device *iommu = dev_to_iommu(dev);
> +
> +	if (iommu->ddt_mode == RISCV_IOMMU_DDTP_MODE_BARE)
> +		return IOMMU_DOMAIN_IDENTITY;
> +

Is there even a point of binding an iommu driver if the HW can't
support a DDT table? Just return -ENODEV from probe_device?

Logically a iommu block that can't decode the RID has no association
at all with a Linux struct device :)

Jason

