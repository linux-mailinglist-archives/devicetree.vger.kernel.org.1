Return-Path: <devicetree+bounces-68757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5976C8CD708
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 17:28:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AAD71C20969
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 15:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA2310A0A;
	Thu, 23 May 2024 15:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="gSDqsHyG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E011170F
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 15:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716478097; cv=none; b=S8moDkVhu6GDssBggPFUrYuaDr81blioo5Xp2xpoMUnUBJJ4Ei2p7OB8siqsQoY3qrllfTX7ZJ3HPfXyWDcu0b2BDdlJ5A9cFfMkyB8HowrBMGPKvFBn9XoG+RVsbMha+nqFqtP2uEWP4UB1MOKxylpD7hDDGEzcFA/2XCoeCnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716478097; c=relaxed/simple;
	bh=lHxOGmWdlihXCTgHVfb+T5jI7AtAtZWCWZ88p7h5se0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tns0YyyedSbQ7eBhPpPtSGhxcUSqMn/m6CbbHuiCUcwGpkgoCqxmSXqsg6KZwE97FUZgJd4D1qybHg8YBj+MvkixeoGL8VasqUECpYIasIb9FZn7mT6h84YUQ7QNCYjzsFL91Ebuu9HPZB8iFMitQ6Qw1UkMNY1Ny6P6KJMc6RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=gSDqsHyG; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-792ba098eccso469483885a.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 08:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1716478094; x=1717082894; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hmfyLYVCfyswQ3c7xb61Hr7O417fd5EFVF7yNKTH3w8=;
        b=gSDqsHyGsOcsBt5SvjKR7sU1nSqFoxJueeACqx5yt/MllU2s416ZjOM9lrDCh53QDI
         FFxmxXP0+D8KjGUd2EDlsNXBV7nqWQnBifaM39U6IBqXy20yAffFZ3I1qGPJP30xSacx
         xe7C/3mEB2SkSRTUqbX84uQe015fxVKlT1NdobcTwbM+JD7tQgXJ7ZqCgfOiGyFPcJwD
         iiYpFMjGd7WxGt/fzZZnn+aIdv2enMWPjI/Z8RlBL4/kRrC2L1ngQDoSNXwLGAG91sRK
         svoZamPEk2fwm54unYH9UWDYWsk+RcJrTAJVLGk/BikofGjzWdVuwh2QcAXXH0nGMEWO
         HicQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716478094; x=1717082894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hmfyLYVCfyswQ3c7xb61Hr7O417fd5EFVF7yNKTH3w8=;
        b=pncYnIPt1LqoiPB3Sp6O9Vze4nQpLMFiSG0WqJA8hHeE6y+L8mU1H3Aro5kKQi5gvC
         s9xtgw77LjKriCUFcosOl4J9mxwsGVru781Yyts7O6iymKJzOenBiE7VTfn/kxMksEtB
         cJiy0meL9D9F+5VnoeaM/swluRtsxCWiC+/ZnGMFDjgUD03GrjfrfOdqyhmvMaMZnsyb
         VvZe8hGqUTDvbOGGWh2k9FBQ2EZaHGyKg8vFvOMjfWGm8HOjDjGIzteg07/rET4gJMCG
         mdAyIrT4hO4TuHMKc1ssdUCHWF8nH4xdKmb7SUkltCTcK7XxuB+/boSY4LAFxabZMqa7
         1SOA==
X-Forwarded-Encrypted: i=1; AJvYcCVy0B2n00rQLh2UJ/UKQupG3+mwIZwpWEKn3G/Urk4693P0aOZIJKDp1cxDIE4pidaMPB9XsMkhw92Fa/oYRvO0xU9ymXODwKGE4A==
X-Gm-Message-State: AOJu0Yyharigeytt4ZCRpKRbgRM9mzCSZwufUjzwSYFYdefGWvSzlvkg
	ob3tIMnNthsrQaM3+UQxyM+A030v20B+gSBwaJ7pF3kiBJg+wHlzpZmBc6n4Hmg=
X-Google-Smtp-Source: AGHT+IHTBzzwi4PjhcyoMTsLG+C6xPlPNq6v4XQ9szwtINNcWYZzWlV7kEZtWT8wPy12nifAJzgm5Q==
X-Received: by 2002:a0c:f593:0:b0:6ab:8cbb:79f4 with SMTP id 6a1803df08f44-6ab8cbb7b85mr30572656d6.56.1716478094519;
        Thu, 23 May 2024 08:28:14 -0700 (PDT)
Received: from ziepe.ca ([128.77.69.89])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ab84cd6d93sm15777036d6.127.2024.05.23.08.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 08:28:12 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1sAAMU-00Frqn-OL;
	Thu, 23 May 2024 12:28:10 -0300
Date: Thu, 23 May 2024 12:28:10 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Anup Patel <apatel@ventanamicro.com>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Albert Ou <aou@eecs.berkeley.edu>, linux@rivosinc.com,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Sebastien Boeuf <seb@rivosinc.com>, iommu@lists.linux.dev,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v5 7/7] iommu/riscv: Paging domain support
Message-ID: <20240523152810.GL69273@ziepe.ca>
References: <cover.1715708679.git.tjeznach@rivosinc.com>
 <1ddb50a47c86d384157a979a7475b45f807ba81e.1715708679.git.tjeznach@rivosinc.com>
 <20240522-b25680db03b547123f1cd59a@orel>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240522-b25680db03b547123f1cd59a@orel>

On Wed, May 22, 2024 at 10:07:14AM +0200, Andrew Jones wrote:
> On Tue, May 14, 2024 at 11:16:19AM GMT, Tomasz Jeznach wrote:
> ...
> > +static int riscv_iommu_bond_link(struct riscv_iommu_domain *domain,
> > +				 struct device *dev)
> > +{
> > +	struct riscv_iommu_device *iommu = dev_to_iommu(dev);
> > +	struct riscv_iommu_bond *bond;
> > +	struct list_head *bonds;
> > +
> > +	bond = kzalloc(sizeof(*bond), GFP_KERNEL);
> > +	if (!bond)
> > +		return -ENOMEM;
> > +	bond->dev = dev;
> > +
> > +	/*
> > +	 * List of devices attached to the domain is arranged based on
> > +	 * managed IOMMU device.
> > +	 */
> > +
> > +	spin_lock(&domain->lock);
> > +	list_for_each_rcu(bonds, &domain->bonds)
> > +		if (dev_to_iommu(list_entry(bonds, struct riscv_iommu_bond, list)->dev) == iommu)
> > +			break;
> 
> We should wrap this list_for_each_rcu() in rcu_read_lock() and
> rcu_read_unlock().

Not quite this is the write side, it is holding the spinlock so it
doesn't need RCU. It should just call the normal list_for_each_entry()

Jason

