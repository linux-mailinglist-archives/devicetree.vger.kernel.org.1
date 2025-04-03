Return-Path: <devicetree+bounces-162927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BB0A7A387
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 15:19:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 052E7170015
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 13:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBEF324CEFD;
	Thu,  3 Apr 2025 13:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="UWKiZ8co"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6B9D529
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 13:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743686358; cv=none; b=C+XJQem1ZVd91NGDd/J7DwCH48MLGtAdiysJSQk8tEAxgWrlt+GTUSosIDPObItNb5RuKnC2WI+7rYfkRkryhocvfgR/QjbEeppENn0LcqOKMA6JI0HeWxCWmhbrR1nDNoL0HCFR0oXJ7lFfVhqMkNtwG2Kz0L4gMmxfbenrb+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743686358; c=relaxed/simple;
	bh=pBM+7JgyDGu4YR8uQCe5TEb+w7KOevzi9OMdtAtdnHc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VoOJ+qQ1uZivD39rFOr+pqqfLddLNIaa3DDHc4Tpwlr4CgHzkvI8p3e5RB4ncgBDNZMgJWYu4hCYS5QO8bpcuL3a7mF4GY4OzlnFsrGGlSX+P1Z0FFC519NS9b9xUmgkQYW+XuzU3O6rVTvVmKMUAH0LekZNZ4ajV93/vsgYoWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=UWKiZ8co; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743686355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BOrAtcAueaZ6B6FDQZAZjfu8K5muW00T7yncBSAZv20=;
	b=UWKiZ8co2Q4qYKGYEuy7T0iUJZIT2DYPe3crKWXhbq0KNu6ybGO6qWGOBqaV/BwmceA00k
	CNmZf9FVzhy/FuVS0ooNjPpcB9iYPfV/0CdmQrqKCWKYg8OFj1nttt18IXOM42+76CSQBD
	aG3ptvk4oVfCUCI5hvO3E0scx99x9pY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-492-ELF8bRKCNv2GX7Z3LHAT9g-1; Thu, 03 Apr 2025 09:19:14 -0400
X-MC-Unique: ELF8bRKCNv2GX7Z3LHAT9g-1
X-Mimecast-MFC-AGG-ID: ELF8bRKCNv2GX7Z3LHAT9g_1743686354
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-43cf446681cso5961525e9.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 06:19:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743686353; x=1744291153;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BOrAtcAueaZ6B6FDQZAZjfu8K5muW00T7yncBSAZv20=;
        b=XvKa0LPtCGMswGJoQquJ8U6CAyhL2almoyXRhFoC3VXQveaeveqOHqn0VhWeXvUzhJ
         HRExop6A1qQzc9SnG+oKT4UMiSfeiED1yfEFL8c/GT14MasLskxqBODwmKNI8MgDZqD8
         Yfv8KsJIbglYFS48KJAwpX9rXQHBVhUguwQOGj7XB1Jk0FA3djSUXNZA4SPXEQuwYfZb
         NghJEKJIgmtMfYKOCUohodJxg0DbfXm3RM3MJM0eXDbDoUtr5b15z8wope5c4mOzp7my
         vBRJ+L09eK/HUBHpJkMBaHLpEXov8Vs3yuSWzhlQwnvp7080xVYY8uW1z6N4MOehcITO
         rmKA==
X-Forwarded-Encrypted: i=1; AJvYcCVLsY9IZac8JggUtlrFyI6syN8Me68hy5eIrvKFVotgGL8M8nY1AW2AKQuHUPAaGjoKRXfqXjHd8S6z@vger.kernel.org
X-Gm-Message-State: AOJu0YwY3XauDp7LGVuvvR8IW4B6VkKYxci/Y2stuLjmfO32np+/2xaz
	iNia/40L531nuURK84NYdeBTH8eLQggDQQQf6cAv2adckun+Lmlg6E9EpYpGln/oYDnc827Kyo7
	iltmKtCA2DBrM2YFl6NqAvuAR8mINkmwdHHv8GkJ/dUsop5U4n/yv6XQFUC8=
X-Gm-Gg: ASbGnctaOzS4za3Zt/TvSi1zCHgTfWaDr3c3JfOumfoKYyvVEdWygkdNrNwDUNo62xL
	RvKypp2xBKY+YGU6sLemXX8pQ9Jr15BmwkaNkS1wkZs+Zln3Gnit3zIS5zJH/aHkFTyQGDeE4Xv
	vE99AIm0KzZF/baOgN3G6dSFbtKp3tT4vPlPZRxAFO5YJorSE3mY3qRK/WeCbzjkw56IwGIXJ9V
	yhGAw8ESQ4gHwGnjViS7kdFDtCctGn/d9fH8CRYg7w6oA1EccxuidcJnBgNvm0ARZdedJD/YmqU
	kWQ1gpxBBQ==
X-Received: by 2002:a05:600c:1e23:b0:434:fa55:eb56 with SMTP id 5b1f17b1804b1-43db61cebecmr203918745e9.7.1743686353433;
        Thu, 03 Apr 2025 06:19:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOQLbOwbt2ShKubtPKsLg6pCCONvIrC6z6dAjAq2IICAmhZBxQVjYeR7rxMt8jt3FmipcKTQ==
X-Received: by 2002:a05:600c:1e23:b0:434:fa55:eb56 with SMTP id 5b1f17b1804b1-43db61cebecmr203918435e9.7.1743686353075;
        Thu, 03 Apr 2025 06:19:13 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec16f1a73sm21744465e9.24.2025.04.03.06.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 06:19:12 -0700 (PDT)
Date: Thu, 3 Apr 2025 09:19:09 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Woodhouse <dwmw2@infradead.org>
Cc: Zhu Lingshan <lingshan.zhu@amd.com>, virtio-comment@lists.linux.dev,
	hch@infradead.org, Claire Chang <tientzu@chromium.org>,
	linux-devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	=?iso-8859-1?Q?J=F6rg?= Roedel <joro@8bytes.org>,
	iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	graf@amazon.de
Subject: Re: [RFC PATCH 1/3] content: Add VIRTIO_F_SWIOTLB to negotiate use
 of SWIOTLB bounce buffers
Message-ID: <20250403091001-mutt-send-email-mst@kernel.org>
References: <20250402112410.2086892-1-dwmw2@infradead.org>
 <20250402112410.2086892-2-dwmw2@infradead.org>
 <1966cbf1-a430-480e-a78d-3d6bbcb4ada4@amd.com>
 <20250403033230-mutt-send-email-mst@kernel.org>
 <59be937432fe73b5781ecb04aad501ae5a11be23.camel@infradead.org>
 <20250403040643-mutt-send-email-mst@kernel.org>
 <0261dfd09a5c548c1a0f56c89c7302e9701b630d.camel@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0261dfd09a5c548c1a0f56c89c7302e9701b630d.camel@infradead.org>

On Thu, Apr 03, 2025 at 09:22:57AM +0100, David Woodhouse wrote:
> On Thu, 2025-04-03 at 04:13 -0400, Michael S. Tsirkin wrote:
> > On Thu, Apr 03, 2025 at 08:54:45AM +0100, David Woodhouse wrote:
> > > On Thu, 2025-04-03 at 03:34 -0400, Michael S. Tsirkin wrote:
> > > > 
> > > > Indeed I personally do not exactly get why implement a virtual system
> > > > without an IOMMU when virtio-iommu is available.
> > > > 
> > > > I have a feeling it's about lack of windows drivers for virtio-iommu
> > > > at this point.
> > > 
> > > And a pKVM (etc.) implementation of virtio-iommu which would allow the
> > > *trusted* part of the hypervisor to know which guest memory should be
> > > shared with the VMM implementing the virtio device models?
> > 
> > Is there a blocker here?
> 
> Only the amount of complexity in what should be a minimal Trusted
> Compute Base. (And ideally subject to formal methods of proving its
> correctness too.)

Shrug. Does not have to be complex. Could be a "simple mode" for
virtio-iommu where it just accepts one buffer. No?

> And frankly, if we were going to accept a virtio-iommu in the TCB why
> not just implement enough virtqueue knowledge to build something where
> the trusted part just snoops on the *actual* e.g. virtio-net device to
> know which buffers the VMM was *invited* to access, and facilitate
> that?

Because it's awful? Buffers are a datapath thing. Stay away from there.

> We looked at doing that. It's awful.

Indeed.

> > > You'd also end up in a situation where you have a virtio-iommu for some
> > > devices, and a real two-stage IOMMU (e.g. SMMU or AMD's vIOMMU) for
> > > other devices. Are guest operating systems going to cope well with
> > > that?
> > 
> > They should. In particular because systems with multiple IOMMUs already
> > exist.
> > 
> > > Do the available discovery mechanisms for all the relevant IOMMUs
> > > even *allow* for that to be expressed?
> > 
> > I think yes. But, it's been a while since I played with this, let me
> > check what works, what does not, and get back to you on this.
> 
> Even if it could work in theory, I'll be astonished if it actually
> works in practice across a wide set of operating systems, and if it
> *ever* works for Windows.

Well it used to work. I won't have time to play with it until sometime
next week, if it's relevant.  If I poke at my windows system, I see 

> Compared with the simple option of presenting a device which
> conceptually doesn't even *do* DMA, which is confined to its own
> modular device driver... 

I'm not (yet) nacking this hack, though I already heartily dislike the
fact that it is mostly a PV-only thing since it can not be offloaded to
a real device efficiently *and* requires copies to move data
between devices. But, let's see if more issues surface.


-- 
MST


