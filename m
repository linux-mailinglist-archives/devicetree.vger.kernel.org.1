Return-Path: <devicetree+bounces-162780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA4FA79CF0
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B0FF18902D4
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 07:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C6482405E4;
	Thu,  3 Apr 2025 07:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Lp3njvUm"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1CD2222D8
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 07:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743665232; cv=none; b=qDxY3mt+MHI1sF7pbD4pmAo21Wzh3gzUWruWOZXyS/bhVxTB1OGqSgy3/UveHwHBVYjxwPm8G8Ktq8AcVFw1WKoVBSkEIj7d2glFxBuakr52CpM07+lQTZllVhaj4LhQAxP2ZWGjyyOOrNY9ovEsX/XUV//GqQww9jCW0HPTaYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743665232; c=relaxed/simple;
	bh=YiQE/rbxd6T+0Sl12/HPKQOH2Wjbican48ns51RS/Gg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KxgsdWyGrYKjVpXAmWDo4OgEeWp9SbiLb8FZrTN5aBCxJ/qYdAnKLK70EFCVtVd/MXVCFZqNfaeyrxtRXi8aZTJ3ytfh1sJNFmwD92pBP04JCspqRVUHORvfbBv35kqFOnD5VGyNMB1IzwkSr9R6+ZPy4Pueg0uul9zQGAiZSC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Lp3njvUm; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743665229;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nC2q6NcPEOSq5O/QwSWUVvMEBJ0OfjzBc7t2dBxH+Kg=;
	b=Lp3njvUmbrbxL0+7DL/0/z86UK+/TT1w/MCT0oVKk//ENSyTpprpySURxIlR79PtsieW0U
	qE+8MYIVHSqe0pNzJXVcS9xG7lByaAcmRTQvoAT0B6PjfZvSkZ2GtpSzIkNmaREWcw8G6k
	ht+UHBX8PaSDT1HM5OYcTm0XJb1nSjI=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-113-FDl7xVP7Mqy9YUxsz-HM-A-1; Thu, 03 Apr 2025 03:27:08 -0400
X-MC-Unique: FDl7xVP7Mqy9YUxsz-HM-A-1
X-Mimecast-MFC-AGG-ID: FDl7xVP7Mqy9YUxsz-HM-A_1743665228
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-438e180821aso2101425e9.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 00:27:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743665227; x=1744270027;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nC2q6NcPEOSq5O/QwSWUVvMEBJ0OfjzBc7t2dBxH+Kg=;
        b=tWhCwzBpd7YpkC4so8HQDEsKoaodkx8cRoB0x4t4vn/p27ShNPmWx88E+WaDu0j3Vk
         0siwrCjgF2fU36/5CYnyumgWlVP392bzCtUz8q6GfsRoyGvD1mqfWi65ZfPYXQwsYD9M
         5abDoho/d0NOf5VpA4S4J3/HsZg/TEGLs7FP374Y5qsGHX734BBTQzj7oNmJzg3FYHXT
         ucG/opYMCD58X2l9CBuY7T2tW4I54IfXbBqkAz7dcIG9atDJB5guCQJOncuYruMkar/I
         H3d3RlODbfp/bqyAB/mFy6QupinWXw7ymHykubG+/bUHksBmDpeklir02KeG1arr1amY
         DCZg==
X-Forwarded-Encrypted: i=1; AJvYcCUWkLx61vx5RJZWS7uZPen+a66yrY6v6tWrZSi6BvFCvrZ54+K0UrYjhUXGlY2tvYi2bzugGgSWJGea@vger.kernel.org
X-Gm-Message-State: AOJu0YzQEf1e7k7IKeW9l4+4w+aBgqDAYErqVwbjo+oIF+lxDodAgv9r
	u0eVgrnfbaClVqfpJZLGMHrWTC9CPafhkaltf/k7z/fgHqULD41QyVF+0+WmwcalGEnWXD2Jhx/
	xm3wxXiMIg4K8NhVzkRNkDJ8RoXk0NCSMSkNnzYxPS9u/NdakV83T5e8uxxJ8qhvkYbI=
X-Gm-Gg: ASbGnctq+PEYU/vTh4dqepem6flsq3yoo6ku/RVqBbyUOgKlbjdm38+Y+BRdz2PHFUm
	AO5t0wecTSI443GA2t4oTNpqegrC7N5cJ3NdWRmSVecct6Gnq4JDqhcgJMXryFYc7kbACAsyDTb
	coQp7GdLg82778oTvGfaUudLV4WVOlX5LHtejLvYotsqwGtQTMSiFJ68fFpSPmjfyCj1FbmT2DQ
	9KXFlM9vjZ/aijd9jSrmzb+jBkI6rZHFA8l43zmbDfRQ74Z3WPrQqYu5z/wKp6aMPaI53xNbZ3L
	G72vAW0Y4w==
X-Received: by 2002:a05:600c:3ca4:b0:43c:f3e4:d6f6 with SMTP id 5b1f17b1804b1-43ec15363efmr13351725e9.31.1743665227184;
        Thu, 03 Apr 2025 00:27:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+6CSWPKPgeTjCe2MsfTh7Yn/OPPZT5EMebursV8pLb7slkNAelNKYRkjtjUZ6I5WEFJ9Hgw==
X-Received: by 2002:a05:600c:3ca4:b0:43c:f3e4:d6f6 with SMTP id 5b1f17b1804b1-43ec15363efmr13351455e9.31.1743665226782;
        Thu, 03 Apr 2025 00:27:06 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec1663060sm13393335e9.14.2025.04.03.00.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 00:27:06 -0700 (PDT)
Date: Thu, 3 Apr 2025 03:27:02 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: David Woodhouse <dwmw2@infradead.org>
Cc: virtio-comment@lists.linux.dev, hch@infradead.org,
	Claire Chang <tientzu@chromium.org>,
	linux-devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	=?iso-8859-1?Q?J=F6rg?= Roedel <joro@8bytes.org>,
	iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	graf@amazon.de, Zhu Lingshan <lingshan.zhu@amd.com>
Subject: Re: [RFC PATCH 3/3] transport-pci: Add SWIOTLB bounce buffer
 capability
Message-ID: <20250403032152-mutt-send-email-mst@kernel.org>
References: <20250402112410.2086892-1-dwmw2@infradead.org>
 <20250402112410.2086892-4-dwmw2@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402112410.2086892-4-dwmw2@infradead.org>

On Wed, Apr 02, 2025 at 12:04:47PM +0100, David Woodhouse wrote:
> From: David Woodhouse <dwmw@amazon.co.uk>
> 
> Add a VIRTIO_PCI_CAP_SWIOTLB capability which advertises a SWIOTLB bounce
> buffer similar to the existing `restricted-dma-pool` device-tree feature.
> 
> The difference is that this is per-device; each device needs to have its
> own. Perhaps we should add a UUID to the capability, and have a way for
> a device to not *provide* its own buffer, but just to reference the UUID
> of a buffer elsewhere?
> 
> Signed-off-by: David Woodhouse <dwmw@amazon.co.uk>
> ---
>  transport-pci.tex | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/transport-pci.tex b/transport-pci.tex
> index a5c6719..23e0d57 100644
> --- a/transport-pci.tex
> +++ b/transport-pci.tex
> @@ -129,6 +129,7 @@ \subsection{Virtio Structure PCI Capabilities}\label{sec:Virtio Transport Option
>  \item ISR Status
>  \item Device-specific configuration (optional)
>  \item PCI configuration access
> +\item SWIOTLB bounce buffer
>  \end{itemize}
>  
>  Each structure can be mapped by a Base Address register (BAR) belonging to
> @@ -188,6 +189,8 @@ \subsection{Virtio Structure PCI Capabilities}\label{sec:Virtio Transport Option
>  #define VIRTIO_PCI_CAP_SHARED_MEMORY_CFG 8
>  /* Vendor-specific data */
>  #define VIRTIO_PCI_CAP_VENDOR_CFG        9
> +/* Software IOTLB bounce buffer */
> +#define VIRTIO_PCI_CAP_SWIOTLB           10
>  \end{lstlisting}
>  
>          Any other value is reserved for future use.
> @@ -744,6 +747,36 @@ \subsubsection{Vendor data capability}\label{sec:Virtio
>  The driver MUST qualify the \field{vendor_id} before
>  interpreting or writing into the Vendor data capability.
>  
> +\subsubsection{Software IOTLB bounce buffer capability}\label{sec:Virtio
> +Transport Options / Virtio Over PCI Bus / PCI Device Layout /
> +Software IOTLB bounce buffer capability}
> +
> +The optional Software IOTLB bounce buffer capability allows the
> +device to provide a memory region which can be used by the driver
> +driver for bounce buffering. This allows a device on the PCI
> +transport to operate without DMA access to system memory addresses.
> +
> +The Software IOTLB region is referenced by the
> +VIRTIO_PCI_CAP_SWIOTLB capability. Bus addresses within the referenced
> +range are not subject to the requirements of the VIRTIO_F_ORDER_PLATFORM
> +capability, if negotiated.
> +
> +\devicenormative{\paragraph}{Software IOTLB bounce buffer capability}{Virtio
> +Transport Options / Virtio Over PCI Bus / PCI Device Layout /
> +Software IOTLB bounce buffer capability}
> +
> +Devices which present the Software IOTLB bounce buffer capability
> +SHOULD also offer the VIRTIO_F_SWIOTLB feature.
> +
> +\drivernormative{\paragraph}{Software IOTLB bounce buffer capability}{Virtio
> +Transport Options / Virtio Over PCI Bus / PCI Device Layout /
> +Software IOTLB bounce buffer capability}
> +
> +The driver SHOULD use the offered buffer in preference to passing system
> +memory addresses to the device. If the driver accepts the VIRTIO_F_SWIOTLB
> +feature, then the driver MUST use the offered buffer and never pass system
> +memory addresses to the device.
> +
>  \subsubsection{PCI configuration access capability}\label{sec:Virtio Transport Options / Virtio Over PCI Bus / PCI Device Layout / PCI configuration access capability}
>  
>  The VIRTIO_PCI_CAP_PCI_CFG capability
> -- 
> 2.49.0
> 



So on the PCI option. The normal mapping (ioremap) for BAR is uncached. If done
like this, performance will suffer. But if you do normal WB, since device
accesses do not go on the bus, they do not get synchronized with driver
writes and there's really no way to synchronize them.

First, this needs to be addressed.

In this age of accelerators for everything, building pci based
interfaces that can't be efficiently accelerated seems shortsighted ...

-- 
MST


