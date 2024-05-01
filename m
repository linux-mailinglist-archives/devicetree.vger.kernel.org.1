Return-Path: <devicetree+bounces-64268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A9E8B8BC8
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B31192835CA
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 14:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC59912F364;
	Wed,  1 May 2024 14:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="GVB8PObg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814D312EBEE
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 14:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714573240; cv=none; b=EPX7RpCYiCWMmS5TitNQUXTrT3pnqcpQHWeoq/8Qs4FUwD6494VS4NwdEjL7CKwUOaIoMeyplJDWC5xI2hiyqccCLbsUdTt9d1a2Vwyb7q+Z4o6vC0K/X/WWVYZUnZ+BaNdCA8sTro7SsZrb4wYMQXtJ27Txl7TXAIRNM1sfo18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714573240; c=relaxed/simple;
	bh=3R83bnsQbN94HbZn0B0mPqNXN6cnqVI3A+Obu8DuNRc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fek1xwWIIzhzzW4ypS+YUVDRvgD829bMTd9872pj3gWoljw5YY45Eu3fBT5tXwOnEPaD9xpFw1jbgexMOUPi/D+Xt3124YSmdg91i6nYXdAN5UcTzs4aqcS5QbGFiIz3SbadsitEmJp6S8Vt5jrBdXzlpvD87K0yOoyEjb7gji8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=GVB8PObg; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-790f91b834cso271831285a.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 07:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1714573238; x=1715178038; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3OZdviol793TFl9mjb+jCdq8bdDZ0SVd44kIwXS0lLc=;
        b=GVB8PObgidtjZ+YkOwi40AMyNYvL/YtE0bZE+092PGRjdHTDVqMeU1E2jq7n/5vZCa
         iQj8tQAHB0XVI+8fm+TPeppFsT7xMB1XQ1b73pXec37CFKzr6SKTdSzmo3cCQSGPIsDt
         +8bK9izDY1WnAh6N1zzWTux6D0s8zJ+h37k7hs0a0lyN02jfTE2C8CIULYJOh88RlUYD
         zkINc8ZO/2P1JqrngQwz+loQ1af99unYmdN7Gb4ncdsRwLantpec8+vkw/yJ1tRdRtI8
         FQspB4+f150j3BQn/i8vcB4haHwCbDDY/ZN777A9sPhNNXv7cXKUyO8UqTtRoyHL2mVK
         ghzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714573238; x=1715178038;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3OZdviol793TFl9mjb+jCdq8bdDZ0SVd44kIwXS0lLc=;
        b=bl3EF4xswhD9KrzJzhclL8Ex5FGtqplwddpgIx+hRCr+7YxhNJHTnC/+8ExIDA727F
         IBnUuMR1qxYu1jAGU5vtRDhMJoj1RjqZnDBZGiAGdP8sZPuJS/LA4OSsymHswmpgXuVp
         Apkv+YtJzKqXDS9AnBetGrpG6Ba91tYR+91M0Kr1U6bR1TfodlKL122iHXV0agqomk8U
         YaTwxE2mGvJh5DxDkm5bLFI1hWis1enAo1wggnxTSTovW7dsAVHj+OuaB/3L/eVsrpM4
         2vFR8J6VCjYgFt2RIXSo74jTo6k/WBCTs1f2yeLRgITvxqOZAAlGP6/h+KEFpvkK50rY
         aSDQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5MDKY5cMSDfGxkdSPnA+BJcaxaHaCkP4UfgC8lmbwEzhvfYZDO9RNv7NS8kDYt+QdEW+JXZF+PRKWY2sXjb2/mbzI+RuczH/shw==
X-Gm-Message-State: AOJu0YzAaBxIyH5ov5CirIzE/SqAVOaIRqQQDyKIabY/S30Fe71gUPpK
	ejNnnPfvaPCtUWBWiZSQy9YlrhiiOFZ/sfKWv3VXyZR/JcsN4G9I/lfnHE3+XdI=
X-Google-Smtp-Source: AGHT+IFiJIn1eBd9gVbe/49MW98HCOu6t3+umtKOrKsFADYGs/1ovi0cAzILGroi/jB4gcqE/mL69A==
X-Received: by 2002:a05:620a:2719:b0:78d:67de:50a0 with SMTP id b25-20020a05620a271900b0078d67de50a0mr3265589qkp.44.1714573238426;
        Wed, 01 May 2024 07:20:38 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id q24-20020a05620a0c9800b0078d677e72f3sm12388656qki.118.2024.05.01.07.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 07:20:37 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1s2Ap3-00DSge-F2;
	Wed, 01 May 2024 11:20:37 -0300
Date: Wed, 1 May 2024 11:20:37 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Baolu Lu <baolu.lu@linux.intel.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
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
Subject: Re: [PATCH v3 2/7] iommu/riscv: Add RISC-V IOMMU platform device
 driver
Message-ID: <20240501142037.GC1723318@ziepe.ca>
References: <cover.1714494653.git.tjeznach@rivosinc.com>
 <aa5592da66fe72acd4d4730f544882042e7b5293.1714494653.git.tjeznach@rivosinc.com>
 <6b4a4dc0-ac9e-43cd-bd84-447df2370dde@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6b4a4dc0-ac9e-43cd-bd84-447df2370dde@linux.intel.com>

On Wed, May 01, 2024 at 06:26:20PM +0800, Baolu Lu wrote:
> On 2024/5/1 4:01, Tomasz Jeznach wrote:
> > +static int riscv_iommu_init_check(struct riscv_iommu_device *iommu)
> > +{
> > +	u64 ddtp;
> > +
> > +	/*
> > +	 * Make sure the IOMMU is switched off or in pass-through mode during regular
> > +	 * boot flow and disable translation when we boot into a kexec kernel and the
> > +	 * previous kernel left them enabled.
> > +	 */
> > +	ddtp = riscv_iommu_readq(iommu, RISCV_IOMMU_REG_DDTP);
> > +	if (ddtp & RISCV_IOMMU_DDTP_BUSY)
> > +		return -EBUSY;
> > +
> > +	if (FIELD_GET(RISCV_IOMMU_DDTP_MODE, ddtp) > RISCV_IOMMU_DDTP_MODE_BARE) {
> > +		if (!is_kdump_kernel())
> 
> Is kdump supported for RISC-V architectures?  If so, the documentation
> in Documentation/admin-guide/kdump/kdump.rst might need an update.
> 
> There is a possibility of ongoing DMAs during the boot process of the
> kdump capture kernel because there's a small chance of legacy DMA setups
> targeting any memory location. Kdump typically allows these ongoing DMA
> transfers to complete, assuming they were intended for valid memory
> regions.
> 
> The IOMMU subsystem implements a default domain deferred attachment
> mechanism for this. In the kdump capture kernel, the whole device
> context tables are copied from the original kernel and will be
> overridden once the device driver calls the kernel DMA interface for the
> first time. This assumes that all old DMA transfers are completed after
> the driver's takeover.
> 
> Will you consider this for RISC-V architecture as well?

It seems we decided not to do that mess in ARM..

New architectures doing kdump should put the iommu in a full blocking
state before handing over the next kernel, and this implies that
devices drivers need to cleanly suspend their DMAs before going into
the next kernel.

Jason

