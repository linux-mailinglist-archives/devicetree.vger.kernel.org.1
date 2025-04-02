Return-Path: <devicetree+bounces-162629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE0FA7917D
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 16:54:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C6631893DF9
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1048D23BFA6;
	Wed,  2 Apr 2025 14:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XjpITjro"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1201A23A9B7
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 14:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743605657; cv=none; b=mVbcRTBX2Sd1dtjVofn/cEok3h7A9GsrnqCEb1LvTceb9jAVLINq1N52w5gyszr/kIpspO/J5BocuTUqNikEJk1nLaSxD0tjw2I0GzSBWHbEnqOSk9WzeuCIc2OYG2FfKYSWKLTY7twXpmTZcwklAjU9HX8In/1fOdJZMnJUADo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743605657; c=relaxed/simple;
	bh=GQBUmlJtouPTHL2D0z387jKeA8ysEZB0JB27Rzluxvw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TGcM7CPhdLY4vfkkan+ULjCm8C54zuY1Bs7A5RyghgTVbglw7FDCEGmRwR0UBd2/VHSOR8qEWJ/W/Gw/C3vOaOQw/UsEZgxWuC5UPrHotgZP2PC4EXN2D3eVyNErxW1t4wtlDXFa9//eXyl0zJ16UztbZ4n1pzah3WqvgBd4ohQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=XjpITjro; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743605653;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=HT3T8r9bivYjQcCb2PJ3vqTiUiLOTviDPtnxa540ZNU=;
	b=XjpITjroEyDigijCaaqTYY05OyDP19aTUQQZlLLLfftTMAcr5V+DWQVn1e9LwS3m3v/INL
	/ld333TKLiGWfCSyKkPbkHEvZJmEY9J72kKPPH/A9lIF2gQal628qd1nRtp2NZBVw4TkNF
	1CvG082Ru4SC6xw9NuEFyWqaHprL4qw=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-64-vE1d4wPCNduI_v9jrf0ZNA-1; Wed, 02 Apr 2025 10:54:12 -0400
X-MC-Unique: vE1d4wPCNduI_v9jrf0ZNA-1
X-Mimecast-MFC-AGG-ID: vE1d4wPCNduI_v9jrf0ZNA_1743605650
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-39ac9b0cb6aso4494456f8f.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 07:54:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743605649; x=1744210449;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HT3T8r9bivYjQcCb2PJ3vqTiUiLOTviDPtnxa540ZNU=;
        b=HsS3LH657uhLEgvB0Zo27r+FhSPQy8pz5zB0NU5eDXL4HBTstlC/45hkgHmPsRmP7b
         4NkBDpGDpSTRjdGEBVRDTzduZ7WreI3fniF+zpSPoqA0NFPqlBoUWFhcd1LpeZr4RmRx
         MvdwvsaWseQ+9Ulml7f/3hAAiJaM3ihy4tKHuyoiYj2cE1JOYkMVRUSZ7s9tdhkVGEF+
         ody/osIH0c+3cm96ICmaXbdNDXwtinU9cN5eq/TlcnNiBbniB4tZvaXqEDEEomKaFLNu
         xcwslW4iwrSfaPxNTKSMeHUdNkKkuHHkTvYUGovMjo4Ni7uaZNtyEnozOJM1UsmZOx+v
         MfvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvqHvVOLSCwX37ELmt9OpUxPFvfHXc5dHp0vVoFsp0qXlfmhjKUyoU3maWwa7SSE8dCKDXkzUrtlml@vger.kernel.org
X-Gm-Message-State: AOJu0YxCcxVLAyjgQz2s7pjBurLpMcUA4sVhEE6wBTQ6NYaZ85ZdUdQJ
	rR3qRdDdfXPDgQCurbdTSgxoVFeWOPJUj4kci+KAFBEa7/XoJ+vx4XHv4WRn3tnHjK83irgkazv
	zcrnNoOYnOg7rc5q8Z263jNZgXtHEfTbOu5LMQwXfHDGFU9yTkt0J2fFt6/zHj4yXY4g=
X-Gm-Gg: ASbGncsvbAkildw7XkRB5bPnitMHbNkde/Uxi35pfyVYkrc4UGr6Iw4ZsrtIiVuxtmd
	AsRC097VjQDjToEwqPu5HM5Id/2Z8sogclqqYIWiZc2P6Inc0+4tOFq4RBRjptrKHI1vixn2ifM
	nU50lvOQuZyZQuW8Ycai6G/ekq/CpCu7I00wDz9UhpXvMxALIKe3HlME9c4CiWo1YsI0sgiNr8k
	a8JTjzaeGxNIyMOQnHf4AUCDgw3xuk1FiOvThIm/RVe9xscI5PdpcSUl7mmDMle2gamgY0ItTj+
	Slp8GQzICA==
X-Received: by 2002:a5d:5f90:0:b0:39c:11c0:eba1 with SMTP id ffacd0b85a97d-39c29737faamr2656203f8f.12.1743605649338;
        Wed, 02 Apr 2025 07:54:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3aSe1fBS4Qdu5ZBsQ2H6BJae2MKkwKU+4XOXjshIZExrVJISjZyrr4js2K+lUUR/iW6y00g==
X-Received: by 2002:a5d:5f90:0:b0:39c:11c0:eba1 with SMTP id ffacd0b85a97d-39c29737faamr2656183f8f.12.1743605648968;
        Wed, 02 Apr 2025 07:54:08 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43eb5fd1626sm23036825e9.16.2025.04.02.07.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 07:54:08 -0700 (PDT)
Date: Wed, 2 Apr 2025 10:54:05 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Woodhouse <dwmw2@infradead.org>
Cc: virtio-comment@lists.linux.dev, hch@infradead.org,
	Claire Chang <tientzu@chromium.org>,
	linux-devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	=?iso-8859-1?Q?J=F6rg?= Roedel <joro@8bytes.org>,
	iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	graf@amazon.de
Subject: Re: [RFC PATCH 1/3] content: Add VIRTIO_F_SWIOTLB to negotiate use
 of SWIOTLB bounce buffers
Message-ID: <20250402105137-mutt-send-email-mst@kernel.org>
References: <20250402112410.2086892-1-dwmw2@infradead.org>
 <20250402112410.2086892-2-dwmw2@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402112410.2086892-2-dwmw2@infradead.org>

On Wed, Apr 02, 2025 at 12:04:45PM +0100, David Woodhouse wrote:
> From: David Woodhouse <dwmw@amazon.co.uk>
> 
> Device-tree bindings for `restricted-dma-pool` were defined in 2021, which
> allow devices to be restricted to a given SWIOTLB pool instead of allowing
> DMA to arbitrary system memory:
> https://lore.kernel.org/all/20210624155526.2775863-1-tientzu@chromium.org/
> 
> This facility was not specific to virtio-mmio, but does apply to it. No
> attempt was made to ensure backward-compatibility for virtio-mmio devices.
> 
> Define a VIRTIO_F_SWIOTLB feature which allows the device and driver to
> agree on the use of the SWIOTLB, if present. This enables the device to
> refuse to operate further if the driver does not support the SWIOTLB
> requirement expressed in the device-tree.
> 
> Signed-off-by: David Woodhouse <dwmw@amazon.co.uk>
> ---
>  content.tex | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/content.tex b/content.tex
> index c17ffa6..63d075f 100644
> --- a/content.tex
> +++ b/content.tex
> @@ -773,6 +773,9 @@ \chapter{Reserved Feature Bits}\label{sec:Reserved Feature Bits}
>  Currently these device-independent feature bits are defined:
>  
>  \begin{description}
> +  \item[VIRTIO_F_SWIOTLB (27)] This feature indicates that the device
> +  transport provides a memory region which is to be used for bounce
> +  buffering, rather than permitting direct memory access to system memory.
>    \item[VIRTIO_F_INDIRECT_DESC (28)] Negotiating this feature indicates
>    that the driver can use descriptors with the VIRTQ_DESC_F_INDIRECT
>    flag set, as described in \ref{sec:Basic Facilities of a Virtio
> @@ -807,6 +810,9 @@ \chapter{Reserved Feature Bits}\label{sec:Reserved Feature Bits}
>    the driver. When clear, this overrides any platform-specific description of
>    whether device access is limited or translated in any way, e.g.
>    whether an IOMMU may be present.
> +  If a the device transport provides a software IOTLB bounce buffer,
> +  addresses within its range are not subject to the requirements of
> +  VIRTIO_F_ACCESS_PLATFORM as they are considered to be ``on-device''.

I don't get this part. the system designers currently have a choice
whether to have these controlled by VIRTIO_F_ACCESS_PLATFORM or not.
with PCI, for example, BAR on the same device is naturally not
behind an iommu.


>    \item[VIRTIO_F_RING_PACKED(34)] This feature indicates
>    support for the packed virtqueue layout as described in
>    \ref{sec:Basic Facilities of a Virtio Device / Packed Virtqueues}~\nameref{sec:Basic Facilities of a Virtio Device / Packed Virtqueues}.
> @@ -885,6 +891,10 @@ \chapter{Reserved Feature Bits}\label{sec:Reserved Feature Bits}
>  VIRTIO_F_ACCESS_PLATFORM is not offered, then a driver MUST pass only physical
>  addresses to the device.
>  
> +A driver SHOULD accept VIRTIO_F_SWIOTLB if it is offered, and it MUST
> +then pass only addresses within the Software IOTLB bounce buffer to the
> +device.
> +
>  A driver SHOULD accept VIRTIO_F_RING_PACKED if it is offered.
>  
>  A driver SHOULD accept VIRTIO_F_ORDER_PLATFORM if it is offered.
> @@ -921,6 +931,8 @@ \chapter{Reserved Feature Bits}\label{sec:Reserved Feature Bits}
>  A device MAY fail to operate further if VIRTIO_F_ACCESS_PLATFORM is not
>  accepted.
>  
> +A device MAY fail to operate further if VIRTIO_F_SWIOTLB is not accepted.
> +
>  If VIRTIO_F_IN_ORDER has been negotiated, a device MUST use
>  buffers in the same order in which they have been available.
>  
> -- 
> 2.49.0
> 


