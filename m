Return-Path: <devicetree+bounces-163032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B23BA7B265
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 01:26:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64CB97A7336
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 23:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB7A71D7E26;
	Thu,  3 Apr 2025 23:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="F/yTTTvG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0CB18DB29
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 23:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743722783; cv=none; b=e40Ok+Sa3Pl5G+tqostin/tcgjzk9XMAkGQH4TDudU+DZgKUAlxk4zTZZdbM6kYq9gAFwiGK6p8b78FXgkmhqM5VxIUfC7kjD1ZIK3Xaj6cmnZdeiGrVx7DcHm4smV5A1e2ikkmLNufRJPCHXS4v5EHock00MIe7utexjyjkF4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743722783; c=relaxed/simple;
	bh=4UzC/VLVd7ky4BarzKv5YEItSxNeADmRgcM+DEoOJYs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mmq6iYArynu/MeTi61UFkbLqNZN9OeV7QWliEYUtF8C358SacFAB8Vpf89UUXcuo8ctVNJjIlRWWLfVLfwbiNnu658danoe4VXyqhqfziNxx/9j+FJ8GItZif/CYOSTcqG8zgLYQMr2stwL5NBSrPQ9UCEcagxiNiGJtUTJ7ytE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=F/yTTTvG; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4774ce422easo15074591cf.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 16:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1743722780; x=1744327580; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0dnmrlpBGeFmqcu0Pq2phWVQb3k+1PXSaVmeXw2bjGQ=;
        b=F/yTTTvGa0BlCldlUDzy8LoqQWBxFuuf25yZZ5N9bQfOYTYLphgPabLVL376s7ya8T
         bImpVKU3J4j/63S6S7noz7hRr54lgh+wxjDuL91NouNsCA4fy/q057U2w8Tpg8lTTaby
         y0XN4nLCMdPAEZh3FyOrG5B8Zq7oXM0Kb5xBFqChQcHH3v3nUyxHzH0gxczbfnV/uBhF
         dtFLZhDl69ITatuGkeFDaJJa9ez40CmgVUUI2JuXm5NrT8z2dzgsMXgNneiznOyrXs9q
         S+ahXDGaeFkiBthRuYERTfsBB4aGY5vNcyu0UYYqDPBB5fN0Mdqloeb/OqXcXBiuueIs
         kD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743722780; x=1744327580;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0dnmrlpBGeFmqcu0Pq2phWVQb3k+1PXSaVmeXw2bjGQ=;
        b=KZufmqGi5KOVWWsnb23GCE5385BUbxa1aLlJ/GpbuYFZnuF2pktEKu7VIG456ocaCl
         s0S2noiqPcjpmA0hnhpToMxr+HI/cHyhHo4DipRwlU+PjjD5a/hEU5TkmdsHR0PQ69wj
         g9T7Xq0GWRBKSD2OTsJj5vD/03K2U/cnxRjQscrn/lnbIoKcug+2eqOkGHosvdIQ15UG
         Si1jmqWJ64BFSCz3/a6GsZyJTGmGCfxW7MWhqFR9vpeO/zuTwX3cRwMzpIWar2zN7va+
         lTWdc+XFH+UtXXkwx1KFZ9cexng4iCQQ1ti+SQkuGuXHnVfif/7tIWpmi+l5VXgqDvof
         rhUg==
X-Forwarded-Encrypted: i=1; AJvYcCV3LQ5oRU6obMJrfkIsFYSa9tIS9KrEQ/Ea+DfvTwHhQC8G7nDqx8BXAaRkvV+LV5Fb4UzWNLOcdBoU@vger.kernel.org
X-Gm-Message-State: AOJu0YwvZ/5W3jV9zpdq4ikUMmfaRJWteofM3kJ9clkwb2Hq5Vy/UkP1
	u+BOrmRmofYJUG/3rs44bBhnTFFjas0EafUxGxePHo4fmOBVvQ+b3yFpBLmqc2w=
X-Gm-Gg: ASbGnctkpPWeQhR5eJ4hAiLa4ZIT0xGUAeayZDIfwBP/PtWU1BjOOklUOR8TSGJEIZJ
	6r0SvIaCye3H8fAgy5/ZoRMdFw5xgGrJmXGpb8GOLDN5QpTJFfIyqhz6X1gK2CfXwvg92WSI/Q/
	1zEUTFAJAvQ63uJAJ0ki3AbSenDssgnxAfIquYS+ASVxAKhDq7Z6yfs/OVJlpeDvc93wbOi8xdP
	f7GFKSKUcuO4ojXFsHrHW62q0UAqVFLpxYfWpgmHTPLjtVA4M4mt7UJLr5WUzUpD0u77Xs+9aFU
	1jK5woUCgd+rhBDTJSOqtSFRRegEVsb/VmCGsFQn2H9jzsG4XtXowc/97PQi5Gx4JIjWfT+XM9Z
	4Iv0scJKURfyawdp7B4oEagA=
X-Google-Smtp-Source: AGHT+IFibU2LV4UUp0WQxSSCxFeutQYAvG/Wra81FTOp1ufuIAX96AWEwxKC9ZZdCWczg5MiXC+AeA==
X-Received: by 2002:ad4:5e87:0:b0:6e4:2872:45f5 with SMTP id 6a1803df08f44-6f01e76f04fmr21453616d6.25.1743722780451;
        Thu, 03 Apr 2025 16:26:20 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-219-86.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.219.86])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ef0f1652a3sm13173396d6.119.2025.04.03.16.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 16:26:19 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1u0Twx-00000005TkW-0sfD;
	Thu, 03 Apr 2025 20:26:19 -0300
Date: Thu, 3 Apr 2025 20:26:19 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: code@tyhicks.com, devicetree@vger.kernel.org,
	eahariha@linux.microsoft.com, eric.auger@redhat.com,
	iommu@lists.linux.dev, jacob.pan@linux.microsoft.com,
	linux-arm-kernel@lists.infradead.org, vijayb@linux.microsoft.com,
	virtualization@lists.linux.dev, will@kernel.org
Subject: Re: [PATCH 0/3] make MSI IOVA base address and its length
 configurable
Message-ID: <20250403232619.GA681099@ziepe.ca>
References: <20250131003618.GB2296753@ziepe.ca>
 <20250403193458.158085-1-shyamsaini@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250403193458.158085-1-shyamsaini@linux.microsoft.com>

On Thu, Apr 03, 2025 at 12:34:58PM -0700, Shyam Saini wrote:
> Hi Jason,
> 
> > On Thu, Jan 30, 2025 at 03:21:37PM -0800, Shyam Saini wrote:
> > 
> > > Unfortunately, it is an HW issue.
> > 
> > Well, that's pretty bad to have built HW that can't DMA to low
> > addresses at all.. But OK.
> >  
> > > Are you okay with this passing custom MSI_IOVA via DTS approach ?
> > 
> > It isn't up to me, but I've understood the DT maintainers would reject
> > this as it isn't is describing HW but just a random Linux software
> > knob.
> > 
> 
> If i understood correctly MSI window IOVA is hw property, if yes
> then it should be accepted by DTS folks, did i misundertstand that?

It is not a HW property. The MSI window in the SMMU is entirely up to
software.

Yuor HW proprerty is the regions of IOVA that do not function in the
SMMU.

> > I think you should make selecting the sw_msi dynamic in Linux.
> 
> My understanding is that if we have to make it dynamic, we have to
> use iova allocator that would need iova_domain as a member of struct
> arm_smmu_domain, and allocate iova for MSI window dynamically using
> alloc_iova() in arm_smmu_get_resv_regions() is that what you meant
> when you mentioned selecting the sw_msi dynamically?

I would not structure it like that..

The simplest thing would be to have the SMMU driver have a list of
potential addresses and select the first one that does not intersect
with the non-working IOVA ranges.

Jason

