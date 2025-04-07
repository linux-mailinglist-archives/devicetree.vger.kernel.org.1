Return-Path: <devicetree+bounces-163722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AA9A7DD7C
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 14:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06F8D178036
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 12:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98C072459E0;
	Mon,  7 Apr 2025 12:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="c6D5FcEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E4A22F155
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 12:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744028089; cv=none; b=NCxa/BGJvgHOpT5Mwijp4uty0GhB0/1CvDYY8Q2sltylfWd4LIKZHp7Uw1Xt49BgMFWYTyfwEIkmQwDmZrhkcsK59Qjl/K8WeLYUwvPqlLCfNX6SCN9uj3uuW25b75naBHkez1ILd/f0WjfEumkXtCfomdMJgXTfmfNL62w5rzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744028089; c=relaxed/simple;
	bh=SJloMABJ9TFapxZzUuoSPn8M6mfm+kJt9tZS7KDLG1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uoAxwSXbDD+PAr9W6ZkLkIFITyFxOa2scOWuy16MVQsYTlGRMOqbE+Vgo/kc9BDArm53JtkLD++MbTJKf1ln39xYqcPmoieJ3l5KAfjCeq8BUY1fYSFEQc2y60QKcVcBTRlCbS9hP4gUIn3MHtZl7vTGetDQopu84ncvQEwNSiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=c6D5FcEJ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744028086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=hQ0sePM8qDTqbXQLkavIPlwoEXkE0hK7tfvWemHOezo=;
	b=c6D5FcEJNMC3NAEZ6R5jMZ2MZGZVBZTCVePnAr2Bi+uDdJLA2Q8SRDpbcqJ2PEg7403e3I
	WPspHaZkGYfQQEm5dI1NzOeelKftfkd0qtJpv9jG/OLgYR32pfdBq6GfEtBsmGmIrmBo4C
	Bb0G5dt+37qN4r+sIb3aMaaNqnXjdAg=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-43-ydEh9gCeMEa40QVI_pLzqQ-1; Mon, 07 Apr 2025 08:14:45 -0400
X-MC-Unique: ydEh9gCeMEa40QVI_pLzqQ-1
X-Mimecast-MFC-AGG-ID: ydEh9gCeMEa40QVI_pLzqQ_1744028084
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-3913aaf1e32so2594294f8f.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 05:14:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744028084; x=1744632884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hQ0sePM8qDTqbXQLkavIPlwoEXkE0hK7tfvWemHOezo=;
        b=LQSTdctRIl+OrZ3psPPS++P+bOVNoyFYb79CmGut519o+EyKoRNQ7BQje4qvzAVg0x
         W4/8+PJbzmXv0xRql+7TegBjsNmVHKH0xWGkt6A4kWbeinMlfVFEP1Lyg8Y1z77HGmk2
         Dlc3o8aB0uJ5y8E7/XPejghh3ObJNoxxUjx7ZT9D1wokC7+pRv+zx1tMQN/90hdn/swa
         xeitNEouI48jtNPpliXfCoKDs/kLAA2BFJQOyv9p20MHpAfhLaITJdzJkidfc9c7lY4H
         MeG8OGhHr8dtQ9iHHZMwWsLJBjiE5WhowUjEz6nCGilVGdZiIwQ9fSooP8v1vhkkaWZB
         yopw==
X-Forwarded-Encrypted: i=1; AJvYcCU1d9GmkiSB6sxhdklMODutYWxduBis1NyLbEylVQUBT+mIsnnwRBrgBoSSAXnpqX7tLuY3OlvVpCYJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0ogsICg6Xjbbfvto3dfWkNffzrnu59k/Ei/Nnn8y7COb28LL7
	IJW7LJXidbPB8zpKt6xyjc8oDgAVOId6K/knDsGYdqnmsoGqHg9m1k8PQFVW3GnQaZElXzVr6U2
	Afp9A3v5EJB+h7apODYxqjkkCBGAeuHrJtRpz10YeQHkha3FrShHdZmKTDX0=
X-Gm-Gg: ASbGnctOn93T03/bty0GTB/n4dJLEmWAC9kKheLoLhUbXK0qoo4wb4YHvuqFK3xy6Uw
	MSIL1PF26YvjPZCEvDNUqy6PKXw4zqtUkrlbM5ycvSm9KMtg14+9AO3oXhQjmuWsSEFzGPtJlVJ
	qXmjKqMbdxy2OSnPule8ulrn+t2EsYg3+GK1AEXUmHmNhtyWoxODd+kO332kJwOWstzSoVrcQ1l
	u2Ovdpd3Ta/0iJ5bM6cjGGapGW3IDSohHC/IemOBKG+7QMxsBylKk0lkjZNhqo4vb/zKP2kK6yo
	EOkUknQAxA==
X-Received: by 2002:a05:6000:2407:b0:39c:1efb:ee8a with SMTP id ffacd0b85a97d-39d0de67a97mr9877462f8f.38.1744028084298;
        Mon, 07 Apr 2025 05:14:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSEq8KBA9rhmZRWPej572rfLMWFkXKUPOcxbVa6ScLXY4TTA4hiqQZurNAgf4uQ4V5gUn8iQ==
X-Received: by 2002:a05:6000:2407:b0:39c:1efb:ee8a with SMTP id ffacd0b85a97d-39d0de67a97mr9877441f8f.38.1744028083951;
        Mon, 07 Apr 2025 05:14:43 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c30226a07sm11678907f8f.84.2025.04.07.05.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 05:14:43 -0700 (PDT)
Date: Mon, 7 Apr 2025 08:14:40 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Woodhouse <dwmw2@infradead.org>
Cc: Christoph Hellwig <hch@infradead.org>, virtio-comment@lists.linux.dev,
	Claire Chang <tientzu@chromium.org>,
	linux-devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	=?iso-8859-1?Q?J=F6rg?= Roedel <joro@8bytes.org>,
	iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	graf@amazon.de
Subject: Re: [RFC PATCH 1/3] content: Add VIRTIO_F_SWIOTLB to negotiate use
 of SWIOTLB bounce buffers
Message-ID: <20250407081110-mutt-send-email-mst@kernel.org>
References: <05abb68286dd4bc17b243130d7982a334503095b.camel@infradead.org>
 <Z-99snVF5ESyJDDs@infradead.org>
 <fb7ea3ee5bf970fa36b012e16750f533b72903a0.camel@infradead.org>
 <20250404040838-mutt-send-email-mst@kernel.org>
 <67bd998bfe385088ef863342b9f8714754585476.camel@infradead.org>
 <20250404043016-mutt-send-email-mst@kernel.org>
 <F30D33D5-38CC-4397-8DC8-9EE1B0FEF40D@infradead.org>
 <5cc2f558b0f4d387349c3a2936ff00430804536d.camel@infradead.org>
 <20250404062409-mutt-send-email-mst@kernel.org>
 <7fd789b61a586417add2115f6752ebec5e7b81bf.camel@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7fd789b61a586417add2115f6752ebec5e7b81bf.camel@infradead.org>

On Fri, Apr 04, 2025 at 12:15:52PM +0100, David Woodhouse wrote:
> > What I don't get, is what does the *device* want, exactly?
> 
> The device wants to know that a driver won't try to use it without
> understanding the restriction. Because otherwise the driver will just
> give it system addresses for DMA and be sad, without any coherent
> error/failure report about why.
> 
> (You could ask the same question about what the *device* wants with
> VIRTIO_F_ACCESS_PLATFORM, and the answer is much the same).
> 
> Or maybe not the *device* per se, but the *system integrator* wants to
> know that only operating systems which understand the restriction
> described above, will attempt to drive the device in question.
> 
> We could achieve that by presenting the device with a completely new
> PCI device/vendor ID so that old drivers don't match, or in the DT
> model you could make a new "compatible" string for it. I chose to use a
> VIRTIO_F_ bit for it instead, which seemed natural and allows the
> device model (under the influence of the system integrator) to *choose*
> whether a failure to negotiate such bit is fatal or not.

Let's focus on the mmio part, for simplicity.
So IIUC there's a devicetree attribute restricted dma, that
guests currently simply ignore.
You want to fix it in the guest, but you also want to find a clean way
to detect that it's fixed. Right?

And if so, my question is, why this specific bug especially?
There likely are a ton of bugs, some more catastrophic than just
crashing the guest, like data corruption.
Is it because we were supposed to add it to the virtio spec but
did not?

-- 
MST


