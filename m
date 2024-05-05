Return-Path: <devicetree+bounces-65021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFEB8BC1B0
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 17:46:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD4061F2157F
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 15:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B30A36AF5;
	Sun,  5 May 2024 15:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="cZDC+zYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF21A374CC
	for <devicetree@vger.kernel.org>; Sun,  5 May 2024 15:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714924004; cv=none; b=DUNAU35VncFYXj4IsFtk4bq8oG5L+I4XdieZrH2y58JGSnZdylHouOpF3ixgxsHbDYgDaW9XD4WKqcLyMk7vU6anDhZXIGSTw5kG2IVkQGGuZ37ky7mXfn/1TkoQ67X2P2lmY3uuOmDEPmqlusGRed7DNdQFD1QY1lCy1gr0Cn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714924004; c=relaxed/simple;
	bh=oWz45KAsZZuOgIMJRc1/NZXuBkXIfJ4cn2zOApfqg1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V931y/9x8o9zHyCnnlZVQiKGkBoV6XGN64FCrjfUN+ef4Ht5SEujdTMl/OQdhf3vU0AchYrE5upYS/9iY1PwGv4OupiRmlO/IyMb9kKLItjHvQfvjflRnZ5IhT5x96sJ7q1K3oruOj8faOGkekBb4R7tzOFGp46JiUKe1+89caA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=cZDC+zYd; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1ec4dc64c6cso7858645ad.0
        for <devicetree@vger.kernel.org>; Sun, 05 May 2024 08:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1714924002; x=1715528802; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kaQDafqzubUAw9+/semCOIrnrfAwnNkCHgeJ4BoA7Vg=;
        b=cZDC+zYdRlCNwGfVsiFYydWFkkpcY1XS7xpQOSxZogWcuQ3bSrSLiDkPXEPD2TjIs7
         oO4SSE6k4pgAYhRniV4QplJb+/e2QIHlWO8Gu5rMQ+BoP01OaVkIdptfEXW+0wCxZ9Q+
         ELAQ9MMz8AqngnFwTv8yYq+nAO5f70INe8wsNclefTcUEYu16St8e65KZaIShNeBhdpH
         hpCM/RQTKZEkCeT7YxNBFZBtQeDvfTGHQweG5+1aWNHhCGj3nc/jaT9l6WW0suQ7REZD
         KEAJ3P29thGxbUdJTmdbyGV8Dq+wWUq9MCL+nHpw9PHy4hXBUV3/9sgGVuTSP59i7g86
         KAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714924002; x=1715528802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kaQDafqzubUAw9+/semCOIrnrfAwnNkCHgeJ4BoA7Vg=;
        b=WxmeDHNikXF+vdPvSvpfSf080qAho3c+xLiYNsRcO7hcK0NNR2l2yPgJ9mZijUhL8h
         bibEK9rbZcjIR12sRaQrQQ2xEwxNgBzQmyQ3pAVdr5GMTCJuaihobm+77v+MYtB6DFlO
         AjTY5dlhgLAoGsLdsnDSyOX1C+94ZN28tmPXHCH8GA1CABhAH3v0fi+7sEN1EPBNAP/I
         zn29vNCb22/4vI0exclk3p+WcJ3wPfzR41xGnE/vAnnT/oYLK1b+OFCti/khv1V/2Nw2
         ceqTM3BL6UIch2VHtaN04Vu9MsRE+tLXHMrHVjoOQlZ2iCyxIGVXSrX83+BlGrv9LIfL
         RAVw==
X-Forwarded-Encrypted: i=1; AJvYcCUhs3JR3wLGyYZe+SsLjh0A/pDWUFJG5iALz8urJq9c4iaLXBhUhGqUiNu6IxihmqaD500G+KaZgJARSDD2WlLt6bmhWmrBkTk49Q==
X-Gm-Message-State: AOJu0Yzvo3ash8QHIDi5JKW72rSVh50Ec+iKvcvyOcilNfSS9WjKno5L
	azWOtc5njrP836VzdMD/jEm0hBt7rLlq4FG3/X8VhqTsnsl1koSvQQIHFSdzkHA=
X-Google-Smtp-Source: AGHT+IGrseAAt2y4uabYtqTQP/jWY6so2eoXUE8to+FlmXTVhjcIh8I045DqPXerpxzSkWzODtLLfw==
X-Received: by 2002:a17:902:bb17:b0:1eb:f263:d2fc with SMTP id im23-20020a170902bb1700b001ebf263d2fcmr8161144plb.54.1714924001967;
        Sun, 05 May 2024 08:46:41 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id i10-20020a170902c94a00b001eb4a71cb58sm6639923pla.114.2024.05.05.08.46.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 May 2024 08:46:41 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1s3e4V-00G2MH-FF;
	Sun, 05 May 2024 12:46:39 -0300
Date: Sun, 5 May 2024 12:46:39 -0300
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
Message-ID: <20240505154639.GD901876@ziepe.ca>
References: <cover.1714494653.git.tjeznach@rivosinc.com>
 <b83f81c04d1f3885d860b1eec03761fe63a33183.1714494653.git.tjeznach@rivosinc.com>
 <20240501145621.GD1723318@ziepe.ca>
 <CAH2o1u63GjMnYrfa8W-c1hdp+TAA0R-FyxXM4dEiFF+KEGWwbA@mail.gmail.com>
 <20240503181059.GC901876@ziepe.ca>
 <CAH2o1u7av8zMucB2sKxBOZtd1eqEC4Qmgin=8VQ03pWbQdZUUg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2o1u7av8zMucB2sKxBOZtd1eqEC4Qmgin=8VQ03pWbQdZUUg@mail.gmail.com>

On Fri, May 03, 2024 at 12:44:09PM -0700, Tomasz Jeznach wrote:
> > For detach I think yes:
> >
> >    Inv CPU                                   Detach CPU
> >
> >   write io_pte                               Update device descriptor
> >   rcu_read_lock
> >     list_for_each
> >       <make invalidation command>            <make description inv cmd>
> >       dma_wmb()                              dma_wmb()
> >       <doorbell>                             <cmd doorbell>
> >   rcu_read_unlock
> >                                              list_del_rcu()
> >                                              <wipe ASID>
> >
> > In this case I think we never miss an invalidation, the list_del is
> > always after the HW has been fully fenced, so I don't think we can
> > have any issue. Maybe a suprious invalidation if the ASID gets
> > re-used, but who cares.
> >
> > Attach is different..
> >
> >    Inv CPU                                   Attach CPU
> >
> >   write io_pte
> >   rcu_read_lock
> >     list_for_each // empty
> >                                              list_add_rcu()
> >                                              Update device descriptor
> >                                              <make description inv cmd>
> >                                              dma_wmb()
> >                                              <cmd doorbell>
> >   rcu_read_unlock
> >
> > As above shows we can "miss" an invalidation. The issue is narrow, the
> > io_pte could still be sitting in write buffers in "Inv CPU" and not
> > yet globally visiable. "Attach CPU" could get the device descriptor
> > installed in the IOMMU and the IOMMU could walk an io_pte that is in
> > the old state. Effectively this is because there is no release/acquire
> > barrier passing the io_pte store from the Inv CPU to the Attach CPU to the
> > IOMMU.
> >
> > It seems like it should be solvable somehow:
> >  1) Inv CPU releases all the io ptes
> >  2) Attach CPU acquires the io ptes before updating the DDT
> >  3) Inv CPU acquires the RCU list in such a way that either attach
> >     CPU will acquire the io_pte or inv CPU will acquire the RCU list.
> >  4) Either invalidation works or we release the new iopte to the SMMU
> >     and don't need it.
> >
> > But #3 is a really weird statement. smb_mb() on both sides may do the
> > job??
> >
> 
> Actual attach sequence is slightly different.
> 
>  Inv CPU                            Attach CPU
> 
>  write io_pte
>   rcu_read_lock
>     list_for_each // empty
>                                     list_add_rcu()
>                                     IOTLB.INVAL(PSCID)
>                                     <make description inv cmd>
>                                     dma_wmb()
>                                     <cmd doorbell>
>  rcu_read_unlock
> 
> I've tried to cover this case with riscv_iommu_iotlb_inval() called
> before the attached domain is visible to the device.

That invalidation shouldn't do anything. If this is the first attach
of a PSCID then the PSCID had better already be empty, it won't become
non-empty until the DDT entry is installed.

And if it is the second attach then the Inv CPU is already taking care
of things, no need to invalidate at all.

Regardless, there is still a theortical race that the IOPTEs haven't
been made visible yet because there is still no synchronization with
the CPU writing them.

So, I don't think this solves any problem. I belive you need the
appropriate kind of CPU barrier here instead of an invalidation.

Jason

