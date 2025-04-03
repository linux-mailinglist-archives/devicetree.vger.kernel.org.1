Return-Path: <devicetree+bounces-162814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4B2A79DD0
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:17:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6294018947DE
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93DF32417D8;
	Thu,  3 Apr 2025 08:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WN6pG0Zz"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1994A933
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743668193; cv=none; b=K0HI+PmK9YaqMndczVTpGu/snpZQxxi9T4V7XziCkbtOAwikER89CAk5aToetVCRGr2/8NHG13wZ2sJG5teL9LqrzLHP5mt2LxS5vUVSP9C0PRZgDZmxFoN9DGVsjI2FQ6to32Gmet1OD+oRknXTCguaenp6jOayTWP1dJ2ioK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743668193; c=relaxed/simple;
	bh=GWwbMSZcEnPjv8a/YQDtHhLzZikLoFIojw/ld2qRZwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aV/UeczfsmpucBNOfDwO26lAOBoMHk0skJrCiFRqX/tkPyj/JR+Q3aQOH9ZojZIJu2C9DXEderQYdiLddQJS1P0EagbkOb0ON/V7Q/cbsg+JeOCQIdaPkhMxgfZQhKAz52inCuCK40RNvNIsW46OaFpLMmszdK9WQnEdmBQEmRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WN6pG0Zz; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743668190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AMjMT1SJKidKNaVJP0NOddv08RtyFnxBqT7a9qmfnH4=;
	b=WN6pG0ZzlTB73ZYS49/8nbdNbRd0ZZrR5tXpkFbtMDxJfRPY6sGPAw5WkgcTuqDGhzGR5z
	VoqzkM0tF7nD9ZY1TY084i/lC7MIiynMkcSWpwE7xaJIMlpzVVKR4AAc97WeX4C2YF1U1l
	/DVkcU8qGYaPRo3vPOAo/4AIW42CxL4=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-138-dWaPCL2rPM6wtjfjr89Rfg-1; Thu, 03 Apr 2025 04:16:29 -0400
X-MC-Unique: dWaPCL2rPM6wtjfjr89Rfg-1
X-Mimecast-MFC-AGG-ID: dWaPCL2rPM6wtjfjr89Rfg_1743668188
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-39134c762ebso295257f8f.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743668188; x=1744272988;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMjMT1SJKidKNaVJP0NOddv08RtyFnxBqT7a9qmfnH4=;
        b=cLZrsbLyzY0EXsea7HY8XWTFru53sNk/G4M284WkGFlB5nDQpSiiJwcRG2mai8uKGE
         9l1ITBsJXEFYbdAg5GcX/8zvLVL7V0SpqTjN2gOf44nInITV0VswFKTHDxxqH1k6OYKg
         nNI2HhwNwEVw0FMVG+rlvm2q7VvXA3jM2aMnq6TqxE+FJZWFH2ZmytFBSmrVINLDb3Ih
         iGMuAZfBsl3yK+B1/x7MQcjQiIrRxfkjVvkZtqa1buqZZCr8CIzSbh0BzVWfDOhF3XXw
         TB43UjvvGohiT0rfhqkKPgGDxrdWdzbDC35VLLBfNA5seeep+XWwOGCAEKO8vr8+z1K1
         VC4A==
X-Forwarded-Encrypted: i=1; AJvYcCVlfD7+eMqkSw6V8y6Se9RfDhYp7iT2S+D0gysJTsQS2vVMsQgdbrraR/ye822f5R/k83X7xrJhFy+R@vger.kernel.org
X-Gm-Message-State: AOJu0YwPhjc5FacP/V9EHZwaC8JRlcPuoJADNfIOOhkqIpCZkd0lRYfC
	70JiLZWTuAfnPteKQ8lRACRwXzrOvyxw42+2fwAJUW/t2SVqDLBn8lCI6c2rPBFFKDhrfoIjlEN
	zBa2+Q6w6a0Mc1xYwLyioyUwd1sK0yW66HK5KNhq1EYRPhOdcYJQbe4of4iE=
X-Gm-Gg: ASbGncs3RH9ORR1UOsYktNmRXFk7O82nIrqWMGHKzAS/hFbFwVksWm8s9dyffj3ZmHU
	prWo0hAYVboo+bywQhsVsUOOA/HeWRJQHdZvRDHnw7GrDdIIAS/rom79CwQwi9G8rVFHce89XgE
	cKaQhCioeTNjClKeFtU74r6vnQTruu7iYkolivvirNgKXw1FIqhft+WgwWpOrMh3/GFgizH6K5H
	rr6T0s2JqGBvctKS6igRuVkon+zoKLHABJgVBbsV4XX4jryZMThJcUbQV4eRTNTZ+7/vBJQqBrr
	up+YcJL7Mw==
X-Received: by 2002:a5d:64c9:0:b0:39c:1f10:ba54 with SMTP id ffacd0b85a97d-39c29769561mr4806605f8f.35.1743668187998;
        Thu, 03 Apr 2025 01:16:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfoZZSHHa6ypQcxrzlOMGNw4qiS4wPoWXMjv/Vi3mNeeAHklcIJVDTjhIMU8Wa13rlzMTysw==
X-Received: by 2002:a5d:64c9:0:b0:39c:1f10:ba54 with SMTP id ffacd0b85a97d-39c29769561mr4806574f8f.35.1743668187615;
        Thu, 03 Apr 2025 01:16:27 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c30096bb2sm1118566f8f.12.2025.04.03.01.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:16:26 -0700 (PDT)
Date: Thu, 3 Apr 2025 04:16:24 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Zhu Lingshan <lingshan.zhu@amd.com>
Cc: David Woodhouse <dwmw2@infradead.org>, virtio-comment@lists.linux.dev,
	hch@infradead.org, Claire Chang <tientzu@chromium.org>,
	linux-devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	=?iso-8859-1?Q?J=F6rg?= Roedel <joro@8bytes.org>,
	iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	graf@amazon.de
Subject: Re: [RFC PATCH 3/3] transport-pci: Add SWIOTLB bounce buffer
 capability
Message-ID: <20250403041519-mutt-send-email-mst@kernel.org>
References: <20250402112410.2086892-1-dwmw2@infradead.org>
 <20250402112410.2086892-4-dwmw2@infradead.org>
 <20250403032152-mutt-send-email-mst@kernel.org>
 <9635c502-3635-4875-ae1f-53b4b7aed855@amd.com>
 <20250403033718-mutt-send-email-mst@kernel.org>
 <d151e78f-aed2-49c7-8f59-abb23db4cbf4@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d151e78f-aed2-49c7-8f59-abb23db4cbf4@amd.com>

On Thu, Apr 03, 2025 at 04:12:20PM +0800, Zhu Lingshan wrote:
> On 4/3/2025 3:37 PM, Michael S. Tsirkin wrote:
> > On Thu, Apr 03, 2025 at 03:36:04PM +0800, Zhu Lingshan wrote:
> >> On 4/3/2025 3:27 PM, Michael S. Tsirkin wrote:
> >>> On Wed, Apr 02, 2025 at 12:04:47PM +0100, David Woodhouse wrote:
> >>>> From: David Woodhouse <dwmw@amazon.co.uk>
> >>>>
> >>>> Add a VIRTIO_PCI_CAP_SWIOTLB capability which advertises a SWIOTLB bounce
> >>>> buffer similar to the existing `restricted-dma-pool` device-tree feature.
> >>>>
> >>>> The difference is that this is per-device; each device needs to have its
> >>>> own. Perhaps we should add a UUID to the capability, and have a way for
> >>>> a device to not *provide* its own buffer, but just to reference the UUID
> >>>> of a buffer elsewhere?
> >>>>
> >>>> Signed-off-by: David Woodhouse <dwmw@amazon.co.uk>
> >>>> ---
> >>>>  transport-pci.tex | 33 +++++++++++++++++++++++++++++++++
> >>>>  1 file changed, 33 insertions(+)
> >>>>
> >>>> diff --git a/transport-pci.tex b/transport-pci.tex
> >>>> index a5c6719..23e0d57 100644
> >>>> --- a/transport-pci.tex
> >>>> +++ b/transport-pci.tex
> >>>> @@ -129,6 +129,7 @@ \subsection{Virtio Structure PCI Capabilities}\label{sec:Virtio Transport Option
> >>>>  \item ISR Status
> >>>>  \item Device-specific configuration (optional)
> >>>>  \item PCI configuration access
> >>>> +\item SWIOTLB bounce buffer
> >>>>  \end{itemize}
> >>>>  
> >>>>  Each structure can be mapped by a Base Address register (BAR) belonging to
> >>>> @@ -188,6 +189,8 @@ \subsection{Virtio Structure PCI Capabilities}\label{sec:Virtio Transport Option
> >>>>  #define VIRTIO_PCI_CAP_SHARED_MEMORY_CFG 8
> >>>>  /* Vendor-specific data */
> >>>>  #define VIRTIO_PCI_CAP_VENDOR_CFG        9
> >>>> +/* Software IOTLB bounce buffer */
> >>>> +#define VIRTIO_PCI_CAP_SWIOTLB           10
> >>>>  \end{lstlisting}
> >>>>  
> >>>>          Any other value is reserved for future use.
> >>>> @@ -744,6 +747,36 @@ \subsubsection{Vendor data capability}\label{sec:Virtio
> >>>>  The driver MUST qualify the \field{vendor_id} before
> >>>>  interpreting or writing into the Vendor data capability.
> >>>>  
> >>>> +\subsubsection{Software IOTLB bounce buffer capability}\label{sec:Virtio
> >>>> +Transport Options / Virtio Over PCI Bus / PCI Device Layout /
> >>>> +Software IOTLB bounce buffer capability}
> >>>> +
> >>>> +The optional Software IOTLB bounce buffer capability allows the
> >>>> +device to provide a memory region which can be used by the driver
> >>>> +driver for bounce buffering. This allows a device on the PCI
> >>>> +transport to operate without DMA access to system memory addresses.
> >>>> +
> >>>> +The Software IOTLB region is referenced by the
> >>>> +VIRTIO_PCI_CAP_SWIOTLB capability. Bus addresses within the referenced
> >>>> +range are not subject to the requirements of the VIRTIO_F_ORDER_PLATFORM
> >>>> +capability, if negotiated.
> >>>> +
> >>>> +\devicenormative{\paragraph}{Software IOTLB bounce buffer capability}{Virtio
> >>>> +Transport Options / Virtio Over PCI Bus / PCI Device Layout /
> >>>> +Software IOTLB bounce buffer capability}
> >>>> +
> >>>> +Devices which present the Software IOTLB bounce buffer capability
> >>>> +SHOULD also offer the VIRTIO_F_SWIOTLB feature.
> >>>> +
> >>>> +\drivernormative{\paragraph}{Software IOTLB bounce buffer capability}{Virtio
> >>>> +Transport Options / Virtio Over PCI Bus / PCI Device Layout /
> >>>> +Software IOTLB bounce buffer capability}
> >>>> +
> >>>> +The driver SHOULD use the offered buffer in preference to passing system
> >>>> +memory addresses to the device. If the driver accepts the VIRTIO_F_SWIOTLB
> >>>> +feature, then the driver MUST use the offered buffer and never pass system
> >>>> +memory addresses to the device.
> >>>> +
> >>>>  \subsubsection{PCI configuration access capability}\label{sec:Virtio Transport Options / Virtio Over PCI Bus / PCI Device Layout / PCI configuration access capability}
> >>>>  
> >>>>  The VIRTIO_PCI_CAP_PCI_CFG capability
> >>>> -- 
> >>>> 2.49.0
> >>>>
> >>>
> >>> So on the PCI option. The normal mapping (ioremap) for BAR is uncached. If done
> >>> like this, performance will suffer. But if you do normal WB, since device
> >> and this even possibly can cause TLB thrashing.... which is a worse case.
> >>
> >> Thanks
> >> Zhu Lingshan
> >
> > Hmm which TLB? I don't get it.
> CPU TLB, because a device side bounce buffer design requires mapping
> device memory to CPU address space, so that CPU to help copy data,
> and causing a more frequent TLB switch.

Lost me here. It's mapped, why switch?

> TLB thrashing will occur when many devices doing DMA through
> the device side bounce buffer, or scattered DMA.

Yea I don't think this idea even works. Each device can only use
its own swiotlb.

> If the bounce buffer resides in the hypervisor, for example QEMU,
> then TLB switch while QEMU process context switch which already occur all the time.
> 
> Thanks
> Zhu Lingshan
> >
> >>> accesses do not go on the bus, they do not get synchronized with driver
> >>> writes and there's really no way to synchronize them.
> >>>
> >>> First, this needs to be addressed.
> >>>
> >>> In this age of accelerators for everything, building pci based
> >>> interfaces that can't be efficiently accelerated seems shortsighted ...
> >>>


