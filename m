Return-Path: <devicetree+bounces-162641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EABA79277
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 17:52:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC35F16F4AB
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 15:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76301165F1F;
	Wed,  2 Apr 2025 15:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iciyBzaG"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7B934545
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 15:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743609116; cv=none; b=IW43E77foD7dIM4OLr/12EwV4T81n/Ls7l31sbkR+o8U8FTtHTFdsCMlVUv3mVW0xGGuYEzLqa6xJVfOnpaYnBTPzyvTDZUypYtoOjYP9iNeVNae4vIP0xXar9L8cbFLJlpn9oaIH8dMSs6gIoQxNV0EA08tfd+XVTLJ8pMJMUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743609116; c=relaxed/simple;
	bh=S6XMQ2AU39hYH5ah1HWGtNLnyoFQLpd8n80nkv6ZI4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jNqCNZr3bHvBTooCC1hhOlLC++TSaxiHB9TLFqNr7LFaVzjOsqg7AC1VSM25/76Evd90OFsZ7cDmjradn1yE+fdJypwip0buPPTXE9HNonqrPMijaLrW9XQ3xs8i/fRZ46QPWgbZO85OcT5kE6Tar1AwWvFm/yJJp5Lktc7mABM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=iciyBzaG; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743609113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gjP/k3uVElhyu6yWy2GkiN2O11Nh5PnXFm8Rjgvf9F0=;
	b=iciyBzaG3bhQxxpgFZacCmrIU7E6zwLqFgp6+uexKrbILZGdqHu4F2LXrtY1fTs7rd4MAr
	QYquvPZmnzYP2UTW+e3RzWeIWWZrOFsLleBDny62gZ6sQ03HmoN/wN67l3fQW/WTNxKEEn
	HyN2YShDldD1nkYhrdxgd6PkSW9oofA=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-620-aVeq9v8qPJa11Bye8Kn6HA-1; Wed, 02 Apr 2025 11:51:52 -0400
X-MC-Unique: aVeq9v8qPJa11Bye8Kn6HA-1
X-Mimecast-MFC-AGG-ID: aVeq9v8qPJa11Bye8Kn6HA_1743609111
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-43cf446681cso42991675e9.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 08:51:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743609111; x=1744213911;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gjP/k3uVElhyu6yWy2GkiN2O11Nh5PnXFm8Rjgvf9F0=;
        b=eF2Tgw17Af9JiuYhRS3vszR3FwO9bZxuT3M/FoHRziXd/UT75g0//epR6uOsXogAUV
         uHzycCaxBtiEWfdn32j/SJFj6c0oBnWSuT9Fym/vqJ2vc9TkbVNjh1ZM60x0NNub8fvI
         IbDKT04I4gPXS4JclPP37FqQYmktgOrj1fc/K3DSiqe+eWsahN7q6EJ9S0EPn/KU6TFq
         ctSZBJW86mDYIFD9tA5ioKC/Xi2aHxRcTEZgK5qZmWiy2FY2P9TbQqKWQOeX5671Jb8K
         YeQE4Lu+QIkTShgO97lC9TKz/iEg60TClThcnzsbAI9fYq28X8yG9hEDcu9tA63gaGLy
         qBew==
X-Forwarded-Encrypted: i=1; AJvYcCXZ98bgIZg6UGfSWzTol2XPNte65inhqsw1aOAVFYkCSVOTS2ZpHBzEm0+88SUKoYyCvvoGG+EMmKqA@vger.kernel.org
X-Gm-Message-State: AOJu0YxUXd9q1UC2yn7XC/diz33dANv3dWeV/cPhtN2PvgaNk+BmdR7G
	dP+SnSc6yUW0sbs71PbI/jwH1XErnuu7tiCYDuCLFHG6IZ3BmH/rUjgMkU3Dad3rD7Y+42GCniR
	b605DB/ir9rateiHlLUhjNyZS+LhW/t3BWyFiZRiOyLy/ICQAhbze17D6DzM=
X-Gm-Gg: ASbGnctJlmN8sX7N6dTsuMk+iBkVgaGgIf8avdVywQnh2N8egmmTjWmGhHefBIBYphi
	6L9ZCF3mZCqIM+s6yePYN1z0jAMjzxLZF2Or6D90tUC1hMZfp0Df2QeAUFIrJEguIOwx3LlmCQ5
	0r3xAGEMrWZIUhzq4enfBxbxbsg/8zQW5Tm9CubxzPNs8HBXfdL45K7LHiTtGDCklQ5bzdW4yEN
	BZy3B+ZTFt4nt6lUnfSJWw1OI4vCZyMu3dIbV4zBn29sWDLmZeUnw3B0+JtXyNE1X3GYRFbQRoX
	ubb2yYYBQg==
X-Received: by 2002:a7b:c85a:0:b0:43d:fa59:cc8f with SMTP id 5b1f17b1804b1-43dfa59cd30mr114319025e9.33.1743609111410;
        Wed, 02 Apr 2025 08:51:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiu3ULj5S8kJbnqptVY3lwz6RG0tP91QvRSP7AmDKE1d8QjUwoVzBhXnKVVuSJMPHv4krlcQ==
X-Received: by 2002:a7b:c85a:0:b0:43d:fa59:cc8f with SMTP id 5b1f17b1804b1-43dfa59cd30mr114318845e9.33.1743609111065;
        Wed, 02 Apr 2025 08:51:51 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43eb61116ffsm25120395e9.32.2025.04.02.08.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 08:51:50 -0700 (PDT)
Date: Wed, 2 Apr 2025 11:51:47 -0400
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
Message-ID: <20250402114757-mutt-send-email-mst@kernel.org>
References: <20250402112410.2086892-1-dwmw2@infradead.org>
 <20250402112410.2086892-2-dwmw2@infradead.org>
 <20250402105137-mutt-send-email-mst@kernel.org>
 <19ba662feeb93157bc8a03fb0b11cb5f2eca5e40.camel@infradead.org>
 <20250402111901-mutt-send-email-mst@kernel.org>
 <6b3b047f1650d91abe5e523dd7f862c6f7ee6611.camel@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6b3b047f1650d91abe5e523dd7f862c6f7ee6611.camel@infradead.org>

On Wed, Apr 02, 2025 at 04:47:18PM +0100, David Woodhouse wrote:
> On Wed, 2025-04-02 at 11:20 -0400, Michael S. Tsirkin wrote:
> > On Wed, Apr 02, 2025 at 04:12:39PM +0100, David Woodhouse wrote:
> > > On Wed, 2025-04-02 at 10:54 -0400, Michael S. Tsirkin wrote:
> > > > > +  If a the device transport provides a software IOTLB bounce buffer,
> > > > > +  addresses within its range are not subject to the requirements of
> > > > > +  VIRTIO_F_ACCESS_PLATFORM as they are considered to be ``on-device''.
> > > > 
> > > > I don't get this part. the system designers currently have a choice
> > > > whether to have these controlled by VIRTIO_F_ACCESS_PLATFORM or not.
> > > > with PCI, for example, BAR on the same device is naturally not
> > > > behind an iommu.
> > > 
> > > In the PCI case this *is* a BAR on the same device, and is naturally
> > > not behind an IOMMU as you say. This is just stating the obvious, for
> > > clarity.
> > 
> > Then the platform already does this right, and it's better not to
> > try and override it in the spec.
> 
> It isn't intended as an "override". This *is* what will happen if the
> platform does it right. By mandating it in the spec, the intent is to
> reduce the chances of platforms doing it *wrong*? (Or of drivers making
> wrong assumptions).

The text you wrote makes it seem that even if the platform says use
an IOMMU, it should be bypassed.

> > > For virtio-mmio it also isn't translated by an IOMMU; that was the
> > > *point* of the `restricted-dma-pool` support.
> > > 
> > 
> > Clear VIRTIO_F_ACCESS_PLATFORM then?
> 
> > I don't want to say that VIRTIO_F_ACCESS_PLATFORM and VIRTIO_F_SWIOTLB
> 
> > are mutually exclusive...
> 
> 
> > Generally, it is preferable to keep all features orthogonal if
> > at all possible.
> 
> ...precisely because they *should* be orthogonal.
> 
> VIRTIO_F_ACCESS_PLATFORM defines how system memory is accessed;
> basically whether DMA goes through an IOMMU or not. And as you point
> out, the "on-device" buffer used with VIRTIO_F_SWIOTLB should never
> pass through the IOMMU anyway, so it *is* naturally orthogonal.
> 
> 
> And I think it does make sense for both to be set in some cases, for
> both physical and virtual devices.
> 
> 
> For physical devices that would mean "Got an IOMMU? Sure, go ahead and
> use it. If not, if you don't trust me, you can just disable my bus
> mastering and just use the SWIOTLB".
> 
> It's basically the same for a virtual device. In a confidential compute
> model, the device model (in the VMM) might not be *able* to access the
> guest memory unless the core guest OS explicitly permits that, through
> some kind of pKVM enlightenment to allow pages to be shared, or a
> vIOMMU, or marking hardware pages unencrypted. So having both bits set
> would mean "Know how to drive that enlightenment? Sure, go ahead and
> use it. Otherwise, use the SWIOTLB".
> 
> In fact that's exactly what that Linux code for `restricted-dma-pool`
> already does — when setting up the dma_ops for the device, if it finds
> an actual set of IOMMU operations, it'll use those. And if not, that's
> when it falls back to using the provided SWIOTLB.
> 

I just feel your text for VIRTIO_F_ACCESS_PLATFORM make it
seem like that is not the case.

VIRTIO_F_ACCESS_PLATFORM says a lot of things, e.g.  it has implications
for encrypted VMs, and so on.

I would drop this text, and maybe add some clarification in the mmio transport,
as needed.


-- 
MST


