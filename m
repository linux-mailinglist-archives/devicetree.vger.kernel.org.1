Return-Path: <devicetree+bounces-161892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE253A75CC3
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 23:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D0013A7FB9
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 21:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C511D7E57;
	Sun, 30 Mar 2025 21:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WeSlSjxc"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BB315A868
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743371335; cv=none; b=glZ/u7Xr1P3vRPXDoLNmaDtst4ze6r7L3uDOESGLDrqMV62SqYSvW3Xvou0AQ6PmC3XXs9nYYQZeD8nMauzUZZn3owS5x3i1RLCBkonZqdufvd7UfCjYs2qxDiByCVZw2dDl0SapS7Iw5yxGhatJeE+vUmBnvfsgCs4nh+6qukM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743371335; c=relaxed/simple;
	bh=KZH/gVFLFKR8E7Hs8KBGnWzJSYu4wOpcLXfxzdOJuWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IuoPfIi4vjdqOR4mbJgh5nnAAcxwk/SZrJ995djia3hv4n1F5YML3CikpMHvshg9V2EpIkJbubdivHt3VDXp8nFRqwM05iI6uNBu1enyNIjYpORss26mbFVyiTM+uSVUQXwFZ+PTVniP3r5TTZOAlvbcyTvW1Vg5/RdShfyJtW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WeSlSjxc; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743371333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MRkqFL3NXkPCwg+oa2kxw02pthB6mXCTdemECWhwX84=;
	b=WeSlSjxchfJWofv4M/MyeZNmoHcBef57iP1o6nydHKxp1sGcVJdSExvlsgpTJByNBeAm37
	tQj6qO+yhudRUmsfKvv1WYvG+/6Bv/dBhXGl8R7S+m8qM0Grhm8AqtRE0na2RHfWk7XZPx
	G5I7W5ipiJV4uD2+XnL2qzk9bm94FkI=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-125-aG88hZhCMgusZs6LLmswvA-1; Sun, 30 Mar 2025 17:48:51 -0400
X-MC-Unique: aG88hZhCMgusZs6LLmswvA-1
X-Mimecast-MFC-AGG-ID: aG88hZhCMgusZs6LLmswvA_1743371330
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-43cf3168b87so19826235e9.2
        for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 14:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743371330; x=1743976130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MRkqFL3NXkPCwg+oa2kxw02pthB6mXCTdemECWhwX84=;
        b=GX4Z4KhsvVl3DFXZMgbgbWgJ83yUtwz9McwqQO8oY39fRitHPJ7gy+diPRKe/4FwAx
         KrQGrhFG1+SrI7+QM1LGsmPE0vtIE/pbqymXLx9Kj48vz8TRsAtfOIaVZvjeZ8BYK9pb
         3kMhoi67XexK+p4PxHOjJF8jARNZ6HRNkEvj69APK+ZRPteWJ350dzrTGW7cwdM7g0Cq
         STCEwcK0jWvbzX9qOjq/eISdMeKl+kR0FMnkIVyHYwsQS/HiK9AtRcMYwMOXXiD8GX0U
         IEBAh4NeTJoHK8+sgZlhUn3T1Gwwo4HdiGmlYq0KzA+o9/6Vdj08gUz9mYaRhoMLD1Yn
         /dGA==
X-Forwarded-Encrypted: i=1; AJvYcCXOhdRTanKd/qij76pXAkxf52ly5xmc+73YbrvcmAgcqPlUu80ukclixf805RmYQtrAteZNBbc5NB67@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9IHGMJjqFOpsedFhzuTFYNrjPaPqiueaDQ9OXFgVuRuxfIlHM
	wdD9DmqSB6KaNmC796LKmQGvmAGwRo6l7CKJmneV1albS/R2w4Qdg4mmK7rEVaLTynKzZK9BmOo
	8u1lK1/LEfatKKdUsFiOxbnWGCILjCZNbB+n/YoVrN1Xns94ek7HhppfQMz8=
X-Gm-Gg: ASbGncvEDirTFkaz/ncW92gayNZnR+fRlyFumCoeMVJy0KBXORKKE3+1EkUbb6i/6Ms
	Aphmc1oq+VQ0C1zxOfjQT2MFQtb7Ir/vAlPdZo1HHWvwSBlIPEPB8x1LF7ranuT19OpLzbk3B7G
	wXHvXfXPtYDasNys1IFfswFfk4A7k/51fHtgs4/OlU3Pd1+7/2nOb+VQJYV2tI22dYBm8P+LzgY
	9Fqv3M4Z1GLpcKcyI0yWztOR6c4D2ibqM+ET6pALjmwV1qBboNgmrciarQjbS+Cho67oZ4br5WC
	W9UIswD+Cw==
X-Received: by 2002:a05:600c:1d8c:b0:43c:f050:fee8 with SMTP id 5b1f17b1804b1-43db628992cmr52509505e9.20.1743371329781;
        Sun, 30 Mar 2025 14:48:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1kdHHR/M4aOUOFDnZpG/iLLAoqQlqVBS2836/4CKe19RX2SyJrF+xilFjC/1QxsrymXzr6Q==
X-Received: by 2002:a05:600c:1d8c:b0:43c:f050:fee8 with SMTP id 5b1f17b1804b1-43db628992cmr52509055e9.20.1743371329422;
        Sun, 30 Mar 2025 14:48:49 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82e83477sm147882045e9.16.2025.03.30.14.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 14:48:48 -0700 (PDT)
Date: Sun, 30 Mar 2025 17:48:42 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Woodhouse <dwmw2@infradead.org>
Cc: linuxppc-dev@lists.ozlabs.org, Claire Chang <tientzu@chromium.org>,
	Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	boris.ostrovsky@oracle.com, jgross@suse.com,
	Christoph Hellwig <hch@lst.de>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	heikki.krogerus@linux.intel.com, peterz@infradead.org,
	benh@kernel.crashing.org, grant.likely@arm.com, paulus@samba.org,
	mingo@kernel.org, sstabellini@kernel.org,
	Saravana Kannan <saravanak@google.com>, xypron.glpk@gmx.de,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	xen-devel@lists.xenproject.org, Thierry Reding <treding@nvidia.com>,
	linux-devicetree <devicetree@vger.kernel.org>,
	Nicolas Boichat <drinkcat@chromium.org>,
	Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	lkml <linux-kernel@vger.kernel.org>,
	"list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
	Jim Quinlan <james.quinlan@broadcom.com>,
	Robin Murphy <robin.murphy@arm.com>, hch@infradead.org,
	Jason Wang <jasowang@redhat.com>,
	Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
	Eugenio =?iso-8859-1?Q?P=E9rez?= <eperezma@redhat.com>,
	virtualization@lists.linux.dev, graf@amazon.de
Subject: Re: Using Restricted DMA for virtio-pci
Message-ID: <20250330173951-mutt-send-email-mst@kernel.org>
References: <20210209062131.2300005-1-tientzu@chromium.org>
 <979b6a34ca5724ced1d4871b58bf227065d7da57.camel@infradead.org>
 <20250321142947-mutt-send-email-mst@kernel.org>
 <d1382a6ee959f22dc5f6628d8648af77f4702418.camel@infradead.org>
 <20250330125929-mutt-send-email-mst@kernel.org>
 <E3EE485D-AD74-457C-BDEC-F8C62DFE4909@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E3EE485D-AD74-457C-BDEC-F8C62DFE4909@infradead.org>

On Sun, Mar 30, 2025 at 10:27:58PM +0100, David Woodhouse wrote:
> On 30 March 2025 18:06:47 BST, "Michael S. Tsirkin" <mst@redhat.com> wrote:
> >> It's basically just allowing us to expose through PCI, what I believe
> >> we can already do for virtio in DT.
> >
> >I am not saying I am against this extension.
> >The idea to restrict DMA has a lot of merit outside pkvm.
> >For example, with a physical devices, limiting its DMA
> >to a fixed range can be good for security at a cost of
> >an extra data copy.
> >
> >So I am not saying we have to block this specific hack.
> >
> >what worries me fundamentally is I am not sure it works well
> >e.g. for physical virtio cards.
> 
> Not sure why it doesn't work for physical cards. They don't need to be bus-mastering; they just take data from a buffer in their own RAM.

I mean, it kind of does, it is just that CPU pulling data over the PCI bus
stalls it so is very expensive. It is not by chance people switched to
DMA almost exclusively.


> >Attempts to pass data between devices will now also require
> >extra data copies.
> 
> Yes. I think that's acceptable, but if we really cared we could perhaps extend the capability to refer to a range inside a given BAR on a specific *device*? Or maybe just *function*, and allow sharing of SWIOTLB buffer within a multi-function device?

Fundamentally, this is what dmabuf does.

> I think it's overkill though.
> 
> >Did you think about adding an swiotlb mode to virtio-iommu at all?
> >Much easier than parsing page tables.
> 
> Often the guests which need this will have a real IOMMU for the true
> pass-through devices.

Not sure I understand. You mean with things like stage 2 passthrough?

> Adding a virtio-iommu into the mix (or any other
> system-wide way of doing something different for certain devices) is
> problematic.

OK... but the issue isn't specific to no DMA devices, is it?


> The on-device buffer keeps it nice and simple,

I am not saying it is not.
It's just a little boutique.

> and even allows us to
> do device support for operating systems like Windows where it's a lot
> harder to do anything generic in the core OS.

Well we do need virtio iommu windows support sooner or later, anyway.

-- 
MST


