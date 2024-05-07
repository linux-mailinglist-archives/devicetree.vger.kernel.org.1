Return-Path: <devicetree+bounces-65496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 053A98BE9BC
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 18:52:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 855021F2306B
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 16:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CFA351C59;
	Tue,  7 May 2024 16:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="drLnTmDy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785C02576E
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 16:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715100719; cv=none; b=Ix+PDvfcxb+K34xKQrKC2dr1sZkhbwQba0QEa7gPpZ3RzESlfMU3thC6ZQtHeiR4TeH2wv5KwAwsPLRWe11INqQP2kcmqXDan1/CT8hFfLmgzTxdJum8jGiRFGqj8jbU8cIYWYpHH4LUaN/XfjSon1yNrlIiuqidhhPCZkCIT6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715100719; c=relaxed/simple;
	bh=55Yb/oJ4XpZLMHNuuMmyBkE6Goq6IUIG5KPaM2uQvnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CX5x2LR8FVDewWcZUAoE/d0x7XNdJ2V/B09ll/Zc+xvLeAqOeBevKJlceSL1bVU6Qy/nFZKTJQ3UOMF4qlsxer3Oum+i71g1iyQlZETffNAGwXQa0KC5UjdlFZ2fjoiyeyztkgOQ0ikLuvYa+o5MncXtBKs5gXLTIAVPi3NhM1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=drLnTmDy; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6a0b68733f5so28374216d6.1
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 09:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1715100717; x=1715705517; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KuJq+qc0A6IDkIfE8aXHp0ryQZcN+HRrcr1ZP0IxgmQ=;
        b=drLnTmDyYN9SF/5XD4NG1A9FCoGipCH+fZytjav29Rhx8k5vietxnDpA2i/zCUhIDU
         9qnUm9FshbPSsr0k/74lgYVOgLvF5IFeNeK0jAqp7jSuIfwj8HyZkkCWDQ3ajmr4ABb6
         q7tSyZ9WAIZvUvoibBxaJ+tO3S9nmO59o3J08It59gcYwcjbVv8z57Eq/AeItkuhq/wp
         D+VUebXLwto6lHjEDTVtCyt94mJBpc+wAENMcSJjA1d5yUpGRbGGIudnTRwy01Cr3uvq
         toHZElon0qndSMmVVjLeGoAAoqUp34gSQYR8lRFiTuKCa7fa8R8S9S5IRMJZAX8216dC
         o4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715100717; x=1715705517;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KuJq+qc0A6IDkIfE8aXHp0ryQZcN+HRrcr1ZP0IxgmQ=;
        b=iesR7PlNV0HhDEZB5nad64LUvSE9RIEbkVKQ3E2WNceYmnEoGTL0mi/EIQ5DIjaBmR
         /qmylyVbMk6fGpSJWM8s1jGYtwdax30QuBvejXiauWV3WCsD7Tb3qf2dRlWGTA5DAKQ2
         yKOfHkxz2RBKTwIox+7L29jAWhwQ2tw6UEtz4Hb2b0UDwHxQ+wsphA/gGPGbLiY8jJ8+
         xjT1pm1B+s1s0H1zPMCUgy5GH9T9KbD42H5rrOoZsEkfKUxX3Q4bXAsWRV0U1R/MDXoA
         gjSW6iqv+JPRHIMaOldZwxnqbSxkwlqesRBqbH2mIzg6Ue3Ikg6I8qgKWWYiqleRovcP
         YdAg==
X-Forwarded-Encrypted: i=1; AJvYcCUa5l6INizKtx0rGUODRJM1m9GxdaeehNM9CtUSHxDnB4/CVrkBYnSEncPPMQr8teBBnM5hsym1u3uPLQ63ng2e6MUHmp/MKKMlqg==
X-Gm-Message-State: AOJu0YxsfAkGqWB/TAA6xhsxepBoDV2/2AkRq3x3MPR/g9xHCTwKId+D
	lGz/ARMKjFXJaShUg0uCTmkTKg3O0Zz6bwzXPt6M+AsYfubBIPquSkXBIZxsXl4=
X-Google-Smtp-Source: AGHT+IGUuxPPlPoMaw4Pvcfo1NJlzi2vAu/Z8gBAiaUWl2Sa7wmWBFq2vG5CHblSQfs5BDPYoxJvxw==
X-Received: by 2002:ad4:5fcf:0:b0:6a0:cd1b:9f9f with SMTP id 6a1803df08f44-6a15147db7amr4218536d6.38.1715100717431;
        Tue, 07 May 2024 09:51:57 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id cx8-20020a056214188800b006a0fb776a77sm4824798qvb.137.2024.05.07.09.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 09:51:56 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1s4O2m-0001cp-EM;
	Tue, 07 May 2024 13:51:56 -0300
Date: Tue, 7 May 2024 13:51:56 -0300
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
Message-ID: <20240507165156.GH4718@ziepe.ca>
References: <cover.1714494653.git.tjeznach@rivosinc.com>
 <b83f81c04d1f3885d860b1eec03761fe63a33183.1714494653.git.tjeznach@rivosinc.com>
 <20240501145621.GD1723318@ziepe.ca>
 <CAH2o1u63GjMnYrfa8W-c1hdp+TAA0R-FyxXM4dEiFF+KEGWwbA@mail.gmail.com>
 <20240503181059.GC901876@ziepe.ca>
 <CAH2o1u7av8zMucB2sKxBOZtd1eqEC4Qmgin=8VQ03pWbQdZUUg@mail.gmail.com>
 <20240505154639.GD901876@ziepe.ca>
 <CAH2o1u6g87nt=S7id-O43PubR=GaOLj-vmk7+OdTiY=Kw1BU5A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH2o1u6g87nt=S7id-O43PubR=GaOLj-vmk7+OdTiY=Kw1BU5A@mail.gmail.com>

On Mon, May 06, 2024 at 07:22:07PM -0700, Tomasz Jeznach wrote:
> On Sun, May 5, 2024 at 8:46 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Fri, May 03, 2024 at 12:44:09PM -0700, Tomasz Jeznach wrote:
> > > > For detach I think yes:
> > > >
> > > >    Inv CPU                                   Detach CPU
> > > >
> > > >   write io_pte                               Update device descriptor
> > > >   rcu_read_lock
> > > >     list_for_each
> > > >       <make invalidation command>            <make description inv cmd>
> > > >       dma_wmb()                              dma_wmb()
> > > >       <doorbell>                             <cmd doorbell>
> > > >   rcu_read_unlock
> > > >                                              list_del_rcu()
> > > >                                              <wipe ASID>
> > > >
> > > > In this case I think we never miss an invalidation, the list_del is
> > > > always after the HW has been fully fenced, so I don't think we can
> > > > have any issue. Maybe a suprious invalidation if the ASID gets
> > > > re-used, but who cares.
> > > >
> > > > Attach is different..
> > > >
> > > >    Inv CPU                                   Attach CPU
> > > >
> > > >   write io_pte
> > > >   rcu_read_lock
> > > >     list_for_each // empty
> > > >                                              list_add_rcu()
> > > >                                              Update device descriptor
> > > >                                              <make description inv cmd>
> > > >                                              dma_wmb()
> > > >                                              <cmd doorbell>
> > > >   rcu_read_unlock
> > > >
> > > > As above shows we can "miss" an invalidation. The issue is narrow, the
> > > > io_pte could still be sitting in write buffers in "Inv CPU" and not
> > > > yet globally visiable. "Attach CPU" could get the device descriptor
> > > > installed in the IOMMU and the IOMMU could walk an io_pte that is in
> > > > the old state. Effectively this is because there is no release/acquire
> > > > barrier passing the io_pte store from the Inv CPU to the Attach CPU to the
> > > > IOMMU.
> > > >
> > > > It seems like it should be solvable somehow:
> > > >  1) Inv CPU releases all the io ptes
> > > >  2) Attach CPU acquires the io ptes before updating the DDT
> > > >  3) Inv CPU acquires the RCU list in such a way that either attach
> > > >     CPU will acquire the io_pte or inv CPU will acquire the RCU list.
> > > >  4) Either invalidation works or we release the new iopte to the SMMU
> > > >     and don't need it.
> > > >
> > > > But #3 is a really weird statement. smb_mb() on both sides may do the
> > > > job??
> > > >
> > >
> > > Actual attach sequence is slightly different.
> > >
> > >  Inv CPU                            Attach CPU
> > >
> > >  write io_pte
> > >   rcu_read_lock
> > >     list_for_each // empty
> > >                                     list_add_rcu()
> > >                                     IOTLB.INVAL(PSCID)
> > >                                     <make description inv cmd>
> > >                                     dma_wmb()
> > >                                     <cmd doorbell>
> > >  rcu_read_unlock
> > >
> > > I've tried to cover this case with riscv_iommu_iotlb_inval() called
> > > before the attached domain is visible to the device.
> >
> > That invalidation shouldn't do anything. If this is the first attach
> > of a PSCID then the PSCID had better already be empty, it won't become
> > non-empty until the DDT entry is installed.
> >
> > And if it is the second attach then the Inv CPU is already taking care
> > of things, no need to invalidate at all.
> >
> > Regardless, there is still a theortical race that the IOPTEs haven't
> > been made visible yet because there is still no synchronization with
> > the CPU writing them.
> >
> > So, I don't think this solves any problem. I belive you need the
> > appropriate kind of CPU barrier here instead of an invalidation.
> >
> 
> Yes. There was a small, but still plausible race w/ IOPTEs visibility
> to the IOMMU.
> For v5 I'm adding two barriers to the inval/detach flow, I believe
> should cover it.
> 
> 1) In riscv_iommu_iotlb_inval() unconditional dma_wmb() to make any
> pending writes to PTEs visible to the IOMMU device. This should cover
> the case when list_add_rcu() update is not yet visible in the
> _iotlb_inval() sequence, for the first time the domain is attached to
> the IOMMU.
> 
>   Inv CPU                                    Attach CPU
>   write io_pte
>   dma_wmb (1)
>   rcu_read_lock
>     list_for_each // empty                   list_add_rcu()
>                                              smp_wmb (2)
>                                              Update device descriptor
>                                              <make description inv cmd>
>                                              // PTEs are visible to the HW (*1)
>                                              dma_wmb()
>                                              <cmd doorbell>
>   rcu_read_unlock
> 
> 2) In riscv_iommu_bond_link() write memory barrier to ensure list
> update is visible before IOMMU descriptor update. If stale data has
> been fetched by the HW, inval CPU will run iotlb-invalidation
> sequence. There is a possibility that IOMMU will fetch correct PTEs
> and will receive unnecessary IOTLB inval, but I don't think anyone
> would care.
> 
>   Inv CPU                                    Attach CPU
>   write io_pte                               list_add_rcu()
>                                              smp_wmb (2)
>                                              Update device descriptor
>                                              <make description inv cmd>
>                                              // HW might fetch stale PTEs
>                                              dma_wmb()
>                                              <cmd doorbell>
>   dma_wmb (1)
>   rcu_read_lock
>     list_for_each // non-empty (*2)
>       <make iotlb inval cmd>
>       dma_wmb()
>       <cmd doorbell>
>   rcu_read_unlock
> 
> 3) I've also updated riscv_iommu_bond_unlink() to wipe the PSCID cache
> on the last domain unlink from the IOMMU.
> 
> Thank you for pointing this out. Let me know if that makes sense.

I'm not an expert in barriers, but I think you need the more expensive
"mb" in both cases.

The inv side is both releasing the write and acquiring the list
read. IIRC READ_ONCE is not a full acquire?

The Attach side is both releasing the list_add_rcu() and acquiring the
iopte.

rcu is still a benefit, there is no cache line sharing and there is
only one full barrier, not two, like a spinlock.

And a big fat comment in both sides explaining this :)

Jason

