Return-Path: <devicetree+bounces-163120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C6241A7B8F1
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 10:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E21151792E3
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 08:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26FCF19995D;
	Fri,  4 Apr 2025 08:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EoJdBzYi"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C131C68F
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 08:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743755568; cv=none; b=NCQuIo27uFTld+pkk1wiEq/nFCMOM4nIVKtz7N4EybRcjd68BAc/d4iIozpkveOfc3oMisR8RvJrY6UX6HZYLrbQamZVSslh6WDTjcAsEAGyPlNtCS383paSs0eZGkd5Ki/hWu2CSB2K1VoS346wvfQ2+p7qCX+J/AZZ910eVyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743755568; c=relaxed/simple;
	bh=8mgiLfeOJH6U7WSgzeIIiX8jgYIFd8sgDdNUQ1WgpFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h/J1oY51gDNFkBeLW3iusIJSovLz+fIc/xIRqI9SW6tgRk0ENfj/0fKPu0DpQBf4TjekmnLV08bRp10J0A8HsKCV0YPur0Dk9Vrk7pIZiEbZXlYlklF/Yr7Iu3ygQeriawugAXVqfTCPJn+tlcC7N+h9L0CDqcJe5WXN8ZUl4Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EoJdBzYi; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743755565;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1g2+hk0RrD47BYHCyQjMK8prZh3qSBoec7bPqHaAsFs=;
	b=EoJdBzYiYp9MYGehCfR9QjNcbro0K5MXskljZu4rMTZwlfLfyZ8MGu2RH1ysE/iVRE4fnN
	54b0G2d4jVoPhcBvOkRtt+lXIEsC4CcniLSQhZZHFbncGvUf61kTSRPQ+k0tiVbz/FtbwS
	rgfUnWOSc9ecFQJVBDoZKxRWY3HQZBE=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-312-je4kPQZGNPmIZ6d9qRnYdw-1; Fri, 04 Apr 2025 04:32:43 -0400
X-MC-Unique: je4kPQZGNPmIZ6d9qRnYdw-1
X-Mimecast-MFC-AGG-ID: je4kPQZGNPmIZ6d9qRnYdw_1743755563
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-43cf44b66f7so13546405e9.1
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 01:32:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743755562; x=1744360362;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1g2+hk0RrD47BYHCyQjMK8prZh3qSBoec7bPqHaAsFs=;
        b=DaSh4Lhkyur02wYr9aiUlSgeUURsbQ2Z269z2bwDCBzTsyxoGYpLnuMtQMOCUBEbWS
         RUHN6T9dF/InL0G8NIV9uHN7P9FpsAWbgcZN97IskSyMVKk58CT8znmWowTqzhUfN6Hb
         Z1imJCdjo7z0ES6IbkXGvOOa46SuBnt55I2NypP1094z5lm/fpXy4EVC7E0VNlMDwq9A
         3UjcFoYhxGATQsS7OEhuXpTxFG0B1iP7zEiuE7hEdtCNLIa4K9ZkPt0dnU/643jFnP6u
         ySoqLD/CDdbUyZctrAlXjK0oXtZ3697lNpgxMv9QSeN1mgWAqWErlHW4znesb3WwV3Zw
         U1Dg==
X-Forwarded-Encrypted: i=1; AJvYcCW2WosdK+tmfb5qsBQcLpjCxioe1iOASlhWeVP7a8iHGvqoO6vP2/w2XJiNCgjCNk+E1GbZSyStE7yv@vger.kernel.org
X-Gm-Message-State: AOJu0YyWbbYkiYRSHCoNreVW7O6rqho+6E9fBxMuwGmhgU5sLZWR5GQJ
	kRJv1UMfPQMqLmE3+HBF/J0vL8Mov5vd4gLAeeWnyWMra2Gq7V3m9Fl97j4mP6KBZ5/sDzvaIWZ
	/3qvg+mIMjKV6ZRmaYwn6J6TE2yfgyp9DtFTsuZImM/0n5lggwNdk66iMXgA=
X-Gm-Gg: ASbGnctGGlr/LYenSi9oZ394mESN+CdIUqHGm5LD+wKVKTleZQs8vQioVXrMDMwjzV+
	FOrY8t18+0C1+y2xoZlO60BWFtmaLJmGS3PqwJ1drw3zZgdeQz8jGOKGM6PqqNwYgH+tfMl1At/
	2kgbFglWuvjxvLWC4eGAVLWngAWMwlk56sgyr/Hj/pKptRhqYC7Vvukk7thDDUs8J8buuqjnIad
	B0OZJWgylrs0Bpu3bLXAHjEh6Gm4gau1b+wQ90224ZvZdoO4x92SFdgeOs1cfmiHjs7N7dLMaed
	pEcMGIO/5A==
X-Received: by 2002:a05:600c:4713:b0:43c:e2dd:98ea with SMTP id 5b1f17b1804b1-43ecf9c7731mr16261055e9.22.1743755562664;
        Fri, 04 Apr 2025 01:32:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJ0IdRaSckdVORex2b1FgzPZdidXCh6submJTDHordJMQojyupjfXYrJLLNpoFtr3Ssc7f6Q==
X-Received: by 2002:a05:600c:4713:b0:43c:e2dd:98ea with SMTP id 5b1f17b1804b1-43ecf9c7731mr16260785e9.22.1743755562294;
        Fri, 04 Apr 2025 01:32:42 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec364d071sm39036635e9.32.2025.04.04.01.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 01:32:41 -0700 (PDT)
Date: Fri, 4 Apr 2025 04:32:39 -0400
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
Message-ID: <20250404043016-mutt-send-email-mst@kernel.org>
References: <20250402112410.2086892-1-dwmw2@infradead.org>
 <20250402112410.2086892-2-dwmw2@infradead.org>
 <Z-43svGzwoUQaYvg@infradead.org>
 <148a3c8ee53af585b42ec025c2c7821ad852c66c.camel@infradead.org>
 <Z-46TDmspmX0BJ2H@infradead.org>
 <05abb68286dd4bc17b243130d7982a334503095b.camel@infradead.org>
 <Z-99snVF5ESyJDDs@infradead.org>
 <fb7ea3ee5bf970fa36b012e16750f533b72903a0.camel@infradead.org>
 <20250404040838-mutt-send-email-mst@kernel.org>
 <67bd998bfe385088ef863342b9f8714754585476.camel@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <67bd998bfe385088ef863342b9f8714754585476.camel@infradead.org>

On Fri, Apr 04, 2025 at 09:16:44AM +0100, David Woodhouse wrote:
> On Fri, 2025-04-04 at 04:09 -0400, Michael S. Tsirkin wrote:
> > On Fri, Apr 04, 2025 at 08:50:47AM +0100, David Woodhouse wrote:
> > > What's annoying is that this should work out of the box *already* with
> > > virtio-mmio and a `restricted-dma-pool` — for systems which aren't
> > > afflicted by UEFI/ACPI/PCI as their discovery mechanisms.
> > 
> > 
> > That specifically would be just a driver bugfix then?
> 
> I actually think it works out of the box and there isn't even a bug to
> fix. Haven't tested yet.
> 
> The sad part is that the system does it all automatically *if* it has
> CONFIG_DMA_RESTRICTED_POOL (e.g. Linux) and the driver never even
> notices that the dma_ops it's using are the swiotlb ops using the
> provided buffer.
> 
> Which is *kind* of nice... except that when on a guest OS which *isn't*
> Linux with CONFIG_DMA_RESTRICTED_POOL, the guest will just ignore the
> `restricted-dma-pool` node and try DMA to system memory anyway, which
> will fail.

I mean, it's easy to misconfigure Linux, this is why we love it ;) Why
is this such a concern?

> That's why my proposal adds the negotiated VIRTIO_F_SWIOTLB feature, so
> that the device side can refuse, if the guest *isn't* agreeing to use
> the bounce buffer in the situations where it must do so.


OTOH then setting this feature and if you make the device force it,
you are breaking guests restricted-dma-pool which worked previously, no?

-- 
MST


