Return-Path: <devicetree+bounces-163152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 158DBA7BB0F
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 12:38:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 443933AC816
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 10:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5EBE1C84DD;
	Fri,  4 Apr 2025 10:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZscOlaY9"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BC6198E75
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 10:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743763045; cv=none; b=sKK6/zaOob5Ji7cEo0cYViP9ukyr0M5ZQzu1JTCcayqET+kEi7yYUMkmcR8pX/fk8a0JP32A/BVqvSGwlUIEEFLz3TcqWm6T4S/fwqmtxQU5easS8s72Bt7DajUWSxvQpTE2/fQRsZlBXPw8EkgEdsBYH/Q9thy7Sryo1jjPSC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743763045; c=relaxed/simple;
	bh=pRPmkjfy0V1pA4q3T0gjiJCaQdIGsFfNZf2jrIAWVws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qmz6uyZ2LhTthSNpUOAuuMRqPvuUOLtQAtH7Mv2TO0lK5j/6qfgDTC7uGpyKTK3HaGnqcQvFwqWeL7UcqeeLCZsVTXMUhQaYaxw+kJVtsFnmnZhIFkOhQ7jaJpazbrHORQ0neoFUV99bH3EJl9tanqHPN4Wk7y9HeY0N+UozueA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZscOlaY9; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743763042;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vtS55UR2slCo3GWER/92W87Y1PzaJ0wRgzWgDO9B8uE=;
	b=ZscOlaY9T7xRqS84OteAv+nOnpCkVD6rWpktYPPdW3scIt1jr6Xo+GDc7lbIuc5YWGR7mA
	aKlH/78ia5AKq8AXn2NP6QTBcOExdTEbnUlOVakv/sRRGj6VMH33lQtmK23yw5R1YbczOJ
	9mBwHW/XHz4NjlETKOUniY8av8GlsaM=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-168-nHliyz37PGCwO8tlULX1bA-1; Fri, 04 Apr 2025 06:37:22 -0400
X-MC-Unique: nHliyz37PGCwO8tlULX1bA-1
X-Mimecast-MFC-AGG-ID: nHliyz37PGCwO8tlULX1bA_1743763041
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-39143311936so912488f8f.0
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 03:37:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743763041; x=1744367841;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vtS55UR2slCo3GWER/92W87Y1PzaJ0wRgzWgDO9B8uE=;
        b=O0AAXyoqDqCzDUe4Vdw7OxKx7+shsdYA4xsStyxbelNvRsmp/gC6DEppFMicfZnLXn
         9BGV+H1lwg2PSe4d5mDxC8jgoX19YwKotdoEWnXFDkyZkGCbvuZxPqNV7KSTWiy3ATOe
         gvi75YpbY+YhhOAGhz6xFx9oHQr0sE4xtoAjFTrhkFHdjLbu/45vbIT5momRWRNA+Sa+
         XpO2kDzzqkRMMeeFHmSakhDBrnmsCeQ3sixVYSVYEWaLaJaTbXNamPbMfHrs4CWsiPvP
         rEPmREZP1E7RRbXLepm6wyI4QFIApzWJusnPeBIwGMxsG1ikVL3RClgQPs59qVDlv9SF
         I3Qw==
X-Forwarded-Encrypted: i=1; AJvYcCXArFXwTBMguvaUTS79VndwCV1ylxudkiwgAeLzr76QmjCnRj5LU8EQXF/DjjgXyX6RvzVyvzxqBYu9@vger.kernel.org
X-Gm-Message-State: AOJu0YzIi5lZFNXkS7ShjO6Gg5fT3VX26SbePIkNAVCiK3vTIIDWuIzF
	VAoLI0ZitLbP3nQ2B3yJm+p+0ghPGsz+M3QAFCqwz+rTtyVzv9jgDV1wydJdbJ5ZQ/Uk3jR4Ozi
	mkzHh5ZcPDXf8dpcU5Y9N2E4gNX3j5Jy6w3BO8gM/AvXUQa5RceVQL+Kp8ZA=
X-Gm-Gg: ASbGncvhWKqc1mSJUSBQR90YGtQ4ggLboghs7sQImMei6ZJzwZlHwnaEgf7+1aJQvmU
	uvd3J0MEp+42E6YRaghS90fa8HCt4r5aJybSFswPjXZ3eE3mzH0ypelONDYYhL8rVWcU6NznQOL
	Cgu+xrbLV3pcErxScwHMoJlLoc7IDqhk1a3j8XJf3BMW/bjHpuOeRfDLrcCrarbksiE0En9bhaK
	m43vwyK8ml61563WGgBnrpjfgYrCxKVNFNhd7RquHyrWqvDT1Dop2zt1Kde1oaTmjvUwUxsyFJi
	ly5g3GrsXQ==
X-Received: by 2002:a5d:6dac:0:b0:38f:2b77:a9f3 with SMTP id ffacd0b85a97d-39cba975b4dmr2222787f8f.43.1743763040583;
        Fri, 04 Apr 2025 03:37:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHigdXSz3pzqGCZc3nnPbo3rleH3pJMjPfAwyi9dUWc+Sx3RziWNe7GCDc5oTpu3XAafNw0vw==
X-Received: by 2002:a5d:6dac:0:b0:38f:2b77:a9f3 with SMTP id ffacd0b85a97d-39cba975b4dmr2222765f8f.43.1743763040207;
        Fri, 04 Apr 2025 03:37:20 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c3020d64dsm4091097f8f.70.2025.04.04.03.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 03:37:19 -0700 (PDT)
Date: Fri, 4 Apr 2025 06:37:16 -0400
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
Message-ID: <20250404062409-mutt-send-email-mst@kernel.org>
References: <148a3c8ee53af585b42ec025c2c7821ad852c66c.camel@infradead.org>
 <Z-46TDmspmX0BJ2H@infradead.org>
 <05abb68286dd4bc17b243130d7982a334503095b.camel@infradead.org>
 <Z-99snVF5ESyJDDs@infradead.org>
 <fb7ea3ee5bf970fa36b012e16750f533b72903a0.camel@infradead.org>
 <20250404040838-mutt-send-email-mst@kernel.org>
 <67bd998bfe385088ef863342b9f8714754585476.camel@infradead.org>
 <20250404043016-mutt-send-email-mst@kernel.org>
 <F30D33D5-38CC-4397-8DC8-9EE1B0FEF40D@infradead.org>
 <5cc2f558b0f4d387349c3a2936ff00430804536d.camel@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5cc2f558b0f4d387349c3a2936ff00430804536d.camel@infradead.org>

On Fri, Apr 04, 2025 at 11:15:33AM +0100, David Woodhouse wrote:
> On Fri, 2025-04-04 at 10:27 +0100, David Woodhouse wrote:
> > On 4 April 2025 09:32:39 BST, "Michael S. Tsirkin" <mst@redhat.com>
> > wrote:
> > > On Fri, Apr 04, 2025 at 09:16:44AM +0100, David Woodhouse wrote:
> > > > On Fri, 2025-04-04 at 04:09 -0400, Michael S. Tsirkin wrote:
> > > > > On Fri, Apr 04, 2025 at 08:50:47AM +0100, David Woodhouse
> > > > > wrote:
> > > > > > What's annoying is that this should work out of the box
> > > > > > *already* with
> > > > > > virtio-mmio and a `restricted-dma-pool` — for systems which
> > > > > > aren't
> > > > > > afflicted by UEFI/ACPI/PCI as their discovery mechanisms.
> > > > > 
> > > > > 
> > > > > That specifically would be just a driver bugfix then?
> > > > 
> > > > I actually think it works out of the box and there isn't even a
> > > > bug to
> > > > fix. Haven't tested yet.
> > > > 
> > > > The sad part is that the system does it all automatically *if* it
> > > > has
> > > > CONFIG_DMA_RESTRICTED_POOL (e.g. Linux) and the driver never even
> > > > notices that the dma_ops it's using are the swiotlb ops using the
> > > > provided buffer.
> > > > 
> > > > Which is *kind* of nice... except that when on a guest OS which
> > > > *isn't*
> > > > Linux with CONFIG_DMA_RESTRICTED_POOL, the guest will just ignore
> > > > the
> > > > `restricted-dma-pool` node and try DMA to system memory anyway,
> > > > which
> > > > will fail.
> > > 
> > > I mean, it's easy to misconfigure Linux, this is why we love it ;)
> > > Why
> > > is this such a concern?
> > 
> > Because it's incompatible. In the DT world, perhaps this new *non-
> > optional* feature/restriction should have come with a new
> > "compatible" string such as "virtio-mmio-restricted-dma".
> > 
> > Adding it without backwards compatibility wasn't ideal.
> > 
> > > > That's why my proposal adds the negotiated VIRTIO_F_SWIOTLB
> > > > feature, so
> > > > that the device side can refuse, if the guest *isn't* agreeing to
> > > > use
> > > > the bounce buffer in the situations where it must do so.
> > > 
> > > 
> > > OTOH then setting this feature and if you make the device force it,
> > > you are breaking guests restricted-dma-pool which worked
> > > previously, no?
> > 
> > Yes. So a platform offering virtio-mmio with restricted DMA, if the
> > driver doesn't accept the offered VIRTIO_F_SWIOTLB, may want to
> > accept that negotiation anyway, and *hope* that the driver/OS are
> > going to use the buffer anyway.
> > 
> > I just didn't want to make that same mistake again when formalising
> > and documenting this, and especially when attempting to extend it to
> > PCI.
> 
> Of course, the beauty of the restricted-dma-pool as supported by DT is
> that it's a *system* memory buffer, which is actually OK as long as
> it's reserved address space and not just part of normal system memory
> that an unsuspecting guest might use for general purposes. So the
> trusted part of the hypervisor (e.g. pKVM) can *allow* the VMM access
> to that space.
> 
> It doesn't *have* to be on-device. That just seemed like the more
> natural way to do it for PCI.
> 
> I suppose we *could* allow for the virtio-pci transport to do it the
> same way as virtio-mmio though. The VIRTIO_PCI_CAP_SWIOTLB capability¹
> could reference a range of system memory space, just like the
> `restricted-dma-pool` property does.
> 
> It's a weird abstraction especially for a physical PCI device to do
> that because the system memory space is outside its ownership. But in a
> physical device it could be writable, and you could consider it the
> responsibility of the system firmware to configure it appropriately, in
> accordance with the IOMMU and other DMA restrictions of the platform.
> 
> That does solve it for the CoCo case without addressing the P2P staging
> case that Christoph mentions, though.
> 
> 
> ¹ I will rename it, Christoph, if it survives at all. Probably
> VIRTIO_F_RESTRICTED_DMA and VIRTIO_PCI_CAP_RESTRICTED_DMA but of course
> it depends on the semantics we conclude it should have.

OK. So basically, all this does, is a promise by driver to only
DMA into a range of memory?
This part, I get. I wouldn't put it in a capability, just in config
space then.

What I don't get, is what does the *device* want, exactly?

Here's a vague idea to explain the question:

some embedded devices can have addressing restrictions, such
as the number of bits of an address.
In another example, the legacy balloon device only supports addresses
up to 48 bit.
These can still be useful if driver does not use the inaccessible
addresses.



So far so good? Does this look like a generalization of your idea?


Now, a question: DMA API under linux at least, can actually work
around device limitations using a bounce buffer. It does, however,
need to know what to work around.
So, maybe the device needs to expose a range?
But what is the range in your case?
 

Maybe the new registers list the range of addresses device can access,
and driver promises to be within that range by negotiating the
feature bit?


-- 
MST


