Return-Path: <devicetree+bounces-74326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A202902B7B
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 00:21:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEE88B22CD8
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 22:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB7E314F9EF;
	Mon, 10 Jun 2024 22:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="DKN6L52Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063FE745F4
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 22:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718058057; cv=none; b=ANuAL138zHck5gX3UH4Wv+2jDrE+Xc2XbI8ek3HfAukDrXWQDrtmWI6iFN1t8FudJg4+Tozx9N48lwqZ2mugErjm5WSKAWU3iAgYrjPeme725sHwcXys5IeC/OYKdznc1sSe7L5m58i0zwXj6uq8Yz7FbAiIqQSdYhcF/EKG7Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718058057; c=relaxed/simple;
	bh=g/PhggfIv0EWCrJhXnxNBPYjMM0MmpbQ2pNY+JxsEzs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IJrY6EfdupGmTFLr3chE33/Vg1pUxfiVVRbOq1+hqYES5ZmG9I+Rmyht/7gumsiM0EBuULmVRoy8ZskJUvhGKuxdxLiQl75USxB452ASrJfY0y13z5mSZYZrNRDhaUmFOnmUxcaeySuGMJ9m+ZaXSjJQ9LkiuUDjxpyYO293NQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=DKN6L52Q; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7958133cca2so143938485a.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 15:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1718058055; x=1718662855; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IK36WmyP6FxP12hNW+mAYXAuqO1K5/Xu82XpbAGcEYI=;
        b=DKN6L52Q3QUjtumuUcOj3NNFs75fO7XGRdyjbTyU7y8cvvn9M6McPIYlhJ1X6d/w/K
         dhLYveG7Q9YZQxNHjmfOq7WE2T6+jJbYaj4vql9yo3q1zWNtaHVg0OxGgYWbWlsqFJCM
         UrV2NZVOinACUuNuDUNZkp79e9sYynja64qIH0wjhBhqtQln5w7EUvkkZSpt/K7G+RUY
         qN6DYN2ezCKkuQERpAtp4Qn/T+0zZmziL8c7D7PaLe30cKBfgS0YjqDJ/PnR90u7pNae
         wRYDVHX9kbgtTme7pGEmXGVx+XxkNeBfE9MN3zZkP6r0WgA5NoJkr/QPv588wPeX5rEk
         yDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718058055; x=1718662855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IK36WmyP6FxP12hNW+mAYXAuqO1K5/Xu82XpbAGcEYI=;
        b=nrM+U6qjMpfcN6ciA5EvodUhIVyXTabtCq1W6qM1E7L/d+0cuIV4TwwV1AUFLArtto
         GtTDg9+41Ow9e7SflYPkgSHgV5+IyPLMU8/W5/Ka8Uu/Cb9ctQuQXy8g2h4Xyu3G6VAw
         VrV7x88D1PbymlmdQVVGuReZxdid2m7PfPmUD/1qkttd+yau+hO63mGFnN2DgsCZ7CPP
         o8hR+H+XDsaNBH6qhcdF5m+X6halGA1OGX2Gn5PYOIQlA6gLImspv7v2+V5l7iuZTbeC
         tfo9pr461OFVFMTG68/EK//7b3ihDiaIL+aGUjUwQQo5r5BRg3nMuHAby1gO5oEY1srV
         JaOA==
X-Forwarded-Encrypted: i=1; AJvYcCUGh/Qwet8WrS32Rf7HEoMrZVluPOH4c5CY4sEV+lrvIuo4jOPBN3EvWHfxjo0UXYvH0VIG+dg/KDcjwC/vtwBofxfO5cRoi41OQw==
X-Gm-Message-State: AOJu0YzJb6JRxWXhIF/jDuUfvo52i8fnuQuFxbZ8ctWQL64l87XD7BTA
	VlQmmEgpvRo4RDrEQokTcnS8ZqwoBTf1/TH9ev3TBIg2Gz6WWEFPVWMy08SiOGc=
X-Google-Smtp-Source: AGHT+IHVjlKMfA9VJCEHaoVM/zmJJzh0SiPbzZERcL72L1VgK0N7xsovbpdRc0foi5BzwXCYoYpsjA==
X-Received: by 2002:a05:620a:4094:b0:796:5fd7:5219 with SMTP id af79cd13be357-797c2d9fffcmr157451985a.20.1718058054627;
        Mon, 10 Jun 2024 15:20:54 -0700 (PDT)
Received: from ziepe.ca ([128.77.69.89])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7954f6f337dsm302830785a.42.2024.06.10.15.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 15:20:52 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1sGnNj-00Ftbc-6y;
	Mon, 10 Jun 2024 19:20:51 -0300
Date: Mon, 10 Jun 2024 19:20:51 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Tomasz Jeznach <tjeznach@rivosinc.com>
Cc: Zong Li <zong.li@sifive.com>, Joerg Roedel <joro@8bytes.org>,
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
	linux-kernel@vger.kernel.org, linux@rivosinc.com,
	Lu Baolu <baolu.lu@linux.intel.com>, Jim Shu <jim.shu@sifive.com>,
	Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH v6 5/7] iommu/riscv: Device directory management.
Message-ID: <20240610222051.GO791043@ziepe.ca>
References: <cover.1716578450.git.tjeznach@rivosinc.com>
 <e18ec8ac169ae7f76e9044c26d0768e6469bad19.1716578450.git.tjeznach@rivosinc.com>
 <CANXhq0p4gERQeROSCSKqxnRZq9-fGfmROGV8JZyqFaenNpnsLA@mail.gmail.com>
 <20240610174934.GM791043@ziepe.ca>
 <CAH2o1u4c6ttUWTb1zrc8DScDMuDJJYR-tTHCPYW_3FV4uuQDtA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2o1u4c6ttUWTb1zrc8DScDMuDJJYR-tTHCPYW_3FV4uuQDtA@mail.gmail.com>

On Mon, Jun 10, 2024 at 11:48:23AM -0700, Tomasz Jeznach wrote:
> > Right, this is why I asked about negative caching.
> >
> > The VMMs are a prime example of negative caching, in something like
> > the SMMU implementation the VMM will cache the V=0 STE until they see
> > an invalidation.
> >
> > Driving the VMM shadowing/caching entirely off of the standard
> > invalidation mechanism is so much better than any other option.
> >
> > IMHO you should have the RISCV spec revised to allow negative caching
> > in any invalidated data structure to permit the typical VMM design
> > driven off of shadowing triggered by invalidation commands.
> >
> > Once the spec permits negative caching then the software would have to
> > invalidate after going V=0 -> V=1.
> >
> > Jason
> 
> Allowing negative cacheing by the spec (e.g. for VMM use cases) and
> documenting required invalidation sequences would definitely help
> here. 

Yes, you probably should really do that.

> I'm hesitating adding IODIR.INVAL that is not required by the
> spec [1],

If you expect to rapidly revise the spec then you should add it right
now so that all SW implementations that exist are
conforming. Otherwise you'll have compatability problems when you come
to implement nesting.

Obviously the VMM can't rely on a negative caching technique unless
the spec says it can.

> but this is something that can be controlled by a
> capabilities/feature bit once added to the specification or based on
> VID:DID of the emulated Risc-V IOMMU.

I'm not sure it really can. Once you start shipping SW people will run
it in a VM and the VMM will have to forever work without negative
caching.

My strong advice is to not expect the VMM trap random pages in guest
memory, that is a huge mess to implement and will delay your VMM side.

> Another option to consider for VMM is to utilize the WARL property of
> DDTP, and provide fixed location of the single level DDTP, pointing to
> MMIO region, where DDTE updates will result in vmm exit / fault
> handler. This will likely not be as efficient as IODIR.INVAL issued
> for any DDTE updates.

I don't know what all those things mean, but if you mean to have the
VMM supply faulting MMIO space that the VM is forced to put the DDTE
table into, then that would be better. It is still quite abnormal from
the VMM side..

My strong advice is to fix this. It is trivial to add the negative
caching language to the spec and will cause insignificant extra work
in this driver.

The gains on at least the ease of VMM implementation and architectural
similarity to other arches are well worth the effort. Otherwise I fear
it will be a struggle to get nesting support completed :(

Jason

