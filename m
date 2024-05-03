Return-Path: <devicetree+bounces-64847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7198BB231
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 20:11:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 270AE2813FE
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 18:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1B1B158213;
	Fri,  3 May 2024 18:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="SK6ea7SW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C811586C1
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 18:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714759863; cv=none; b=OxYl0rG/iZ9QR6HkiSrNIpUTZnRf5LpfaoZc5jds5F89osbAogtFGzVwdDW5VPhlJlirMe0BjkEHNk2Q2btiZ33Cq8nXWYM7c+nN+2MhrO8O5Cphps9RdJbsfMN2WxE2AuW5LtJe4jA7ciljFv2jzjJL9UyTz4IvrOlQSr2JOXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714759863; c=relaxed/simple;
	bh=BDV4LFF0W3nkIbkwscNnSoy9CovnMcY/0BmN6MMpQpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KDsgqcl04xcK37gwkojcNSux2Aijve8nAUV8zfPLSVRbWY5Je5rdVk1g+tBvpiE043VIjuErq5m76W7/9rWeBn/DMpIANgosZDYi4sJRyr7cXxxWbILk2rCSRxF5+e1qwYhOzkiBYBhKrERXUL1sdFgpZHm+F0l8g1IeN2E9p+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=SK6ea7SW; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1ed012c1afbso16208815ad.1
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 11:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1714759861; x=1715364661; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HP0E+W4CNjdiqYdYJTTOaBAgmGAiW3lunGcWq/PWMeo=;
        b=SK6ea7SWcCTVLkMgA2TMLRZ7CwQrx7moN0OofIRPrJz9UYsqCr1J2OU3cL8RAaHyjg
         D6lT1GWwhdaux5D7r3mqU6+QK7OKfyWGh+dpkbshOQ4InYftVEXX2z8+xzxk+YdS0VHB
         zqt/sdvUmerb+W25yIkRiw7Oce68wgvoQ7Ne61qpGfT7wkXqW+BFs/c7FvjmYTRXb+hg
         W8PwqEatFikd+O+Qj66Hu7wvLuM8mhdk6j8gcZbYligQTOpNhFFVOOxcQICFxkvSCDOi
         z/+D/uVAlBZjxim2B4blveUE8rvf9nMtp33thO/pjqtPoCA71PAGMRoc3bJI+OJrYrxW
         xBOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714759861; x=1715364661;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HP0E+W4CNjdiqYdYJTTOaBAgmGAiW3lunGcWq/PWMeo=;
        b=DmXkf2uOX+10hENglZ895w51VJpdKnAY432RRhgC9/UN7qcocORHbgG1BuGpH07+ji
         BmHEXyQcG8Hc53XgQ3HfIwLSQqJx6TDLupNvItMnqov2/FEdur1LJz0XT9wDo73MVp18
         89NcGEU5tARG9fIZs7BGvA4UMoU8ZUMdeetE8HLZr92vHBHuXNE1rj6+xru+w4CtTnzl
         u1HSYzDNGmn4hr8jcjp2IUE963PU8S1TWxEvv+WrLDpufdQPCxFE3q+fdC0WMXY7CZ6M
         9OgONuNJRgtAw60VkcsYWAVQKw0SNavoZ2AR++BoM9+UowVAFqD6Y3YK1VC+033f2Tza
         pTiA==
X-Forwarded-Encrypted: i=1; AJvYcCW0++z0YDQW0kyAgdcrDV0dhBi3H3OuH6gExbXa9Kn+gjfRl4lgkxwSKWhbQKGwZ1aXEnrD+7NuCilwREIcO/sSGazhaPkWQHOQqQ==
X-Gm-Message-State: AOJu0Yx1gh2EmHfX6t9NxJI5P+qCE4EF3C8KNuYNDRcdHisUZVAiJFwV
	F7boXTyPT7rWgi0iFvpdBNib5NXwYWRmt3Ho2rKceGF0STEkuFCxNa9p8otFOj4=
X-Google-Smtp-Source: AGHT+IHo2vpIWpxJAU/WjqREvj8GpGY4pEVGXqwcLeuMUP5qY8hdLdogyncesU12hPqCxKNhJeFqIg==
X-Received: by 2002:a17:903:120f:b0:1e5:560d:8519 with SMTP id l15-20020a170903120f00b001e5560d8519mr5281572plh.0.1714759861404;
        Fri, 03 May 2024 11:11:01 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id p23-20020a1709027ed700b001ec379d8167sm3590693plb.115.2024.05.03.11.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 11:11:00 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1s2xN5-007WHT-5q;
	Fri, 03 May 2024 15:10:59 -0300
Date: Fri, 3 May 2024 15:10:59 -0300
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
Message-ID: <20240503181059.GC901876@ziepe.ca>
References: <cover.1714494653.git.tjeznach@rivosinc.com>
 <b83f81c04d1f3885d860b1eec03761fe63a33183.1714494653.git.tjeznach@rivosinc.com>
 <20240501145621.GD1723318@ziepe.ca>
 <CAH2o1u63GjMnYrfa8W-c1hdp+TAA0R-FyxXM4dEiFF+KEGWwbA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2o1u63GjMnYrfa8W-c1hdp+TAA0R-FyxXM4dEiFF+KEGWwbA@mail.gmail.com>

On Fri, May 03, 2024 at 10:44:14AM -0700, Tomasz Jeznach wrote:
> > > +     list_for_each_entry_rcu(bond, &domain->bonds, list) {
> > > +             if (bond->dev == dev) {
> > > +                     list_del_rcu(&bond->list);
> > > +                     found = bond;
> > > +             }
> > > +     }
> > > +     spin_unlock_irqrestore(&domain->lock, flags);
> > > +
> > > +     /* Release and wait for all read-rcu critical sections have completed. */
> > > +     kfree_rcu(found, rcu);
> > > +     synchronize_rcu();
> >
> > Please no, synchronize_rcu() on a path like this is not so
> > reasonable.. Also you don't need kfree_rcu() if you write it like this.
> >
> > This still looks better to do what I said before, put the iommu not
> > the dev in the bond struct.
> >
> >
> 
> I was trying not to duplicate data in bond struct and use whatever is
> available to be referenced from dev pointer (eg iommu / ids / private
> iommu dev data).

I'm not sure that is a valuable goal considering the RCU
complexity.. But I suppose it would be a bit of a hassle to replicate
the ids list into bond structurs. Maybe something to do when you get
to ATS since you'll probably want to replicate the ATS RIDs. (see what
Intel did, which I think is pretty good)

> If I'm reading core iommu code correctly, device pointer and iommu
> pointers should be valid between _probe_device and _release_device
> calls. I've moved synchronize_rcu out of the domain attach path to
> _release_device, LMK if that would be ok for now.  I'll have a
> second another to rework other patches to avoid storing dev pointers
> at all.

Yes, that seems better.. I'm happier to see device hot-unplug be slow
than un attach

There is another issue with the RCU that I haven't wrapped my head
around..

Technically we can have concurrent map/unmap/invalidation along side
device attach/detach. Does the invalidation under RCU work correctly?

For detach I think yes:

   Inv CPU                                   Detach CPU

  write io_pte                               Update device descriptor
  rcu_read_lock
    list_for_each
      <make invalidation command>            <make description inv cmd>
      dma_wmb()                              dma_wmb()
      <doorbell>                             <cmd doorbell>
  rcu_read_unlock
                                             list_del_rcu()
                                             <wipe ASID>

In this case I think we never miss an invalidation, the list_del is
always after the HW has been fully fenced, so I don't think we can
have any issue. Maybe a suprious invalidation if the ASID gets
re-used, but who cares.

Attach is different..

   Inv CPU                                   Attach CPU

  write io_pte
  rcu_read_lock
    list_for_each // empty
                                             list_add_rcu()
                                             Update device descriptor
                                             <make description inv cmd>
                                             dma_wmb()
                                             <cmd doorbell>
  rcu_read_unlock

As above shows we can "miss" an invalidation. The issue is narrow, the
io_pte could still be sitting in write buffers in "Inv CPU" and not
yet globally visiable. "Attach CPU" could get the device descriptor
installed in the IOMMU and the IOMMU could walk an io_pte that is in
the old state. Effectively this is because there is no release/acquire
barrier passing the io_pte store from the Inv CPU to the Attach CPU to the
IOMMU.

It seems like it should be solvable somehow:
 1) Inv CPU releases all the io ptes
 2) Attach CPU acquires the io ptes before updating the DDT
 3) Inv CPU acquires the RCU list in such a way that either attach
    CPU will acquire the io_pte or inv CPU will acquire the RCU list.
 4) Either invalidation works or we release the new iopte to the SMMU
    and don't need it.

But #3 is a really weird statement. smb_mb() on both sides may do the
job??

> > The number of radix levels is a tunable alot of iommus have that we
> > haven't really exposed to anything else yet.
> 
> Makes sense. I've left an option to pick mode from MMU for cases where
> dev/iommu is not known at allocation time (with iommu_domain_alloc()).
> I'd guess it's reasonable to assume IOMMU supported page modes will
> match MMU.

Reasonable, but for this case you'd be best to have a global static
that unifies the capability of all the iommu instances. Then you can
pick the right thing from the installed iommus, and arguably, that is
the right thing to do in all cases as we'd slightly prefer domains
that work everywhere in that edge case.

Jason

