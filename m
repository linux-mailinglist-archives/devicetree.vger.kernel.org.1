Return-Path: <devicetree+bounces-162813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 967C3A79DC1
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:14:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74164171B5D
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1D2241691;
	Thu,  3 Apr 2025 08:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Istdqy2a"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261AF24167E
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743668048; cv=none; b=o8YGBOztQLob72fZxkzKhUCAbdXJBEnTb4pJi9Z+G010/UcXP88OgFUf7zb5Dv8XQdJvXKMCfhj9nleJnaoV63Xen82tO5pHX4bfKP4u4t8FnRTAF2dg5jz115Ul6bspDaTLlhWpqTXl29rLJIOF+mrxtX5GKriuWXzqNRFoAu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743668048; c=relaxed/simple;
	bh=8ljqiGcCt0GZtC0zTI0Y+omskizGFKR2m3xQkFkwDCY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I1HsCxZc6WH9u2NKQM0HTzeylhoukvzbw1gF9HiyqL2g/yxJBaWlf7ox+yzkrNDZOVxLqLhehRIt8KqOvXEDwk/9Dv+MHSeyx136thfHiydc86VnjvZF3op0LByQcV1l8BiU9VKg3bb946ArdIE+BJM1eGkOry8EWGwz6U3lD9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Istdqy2a; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743668046;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rzWYYjEiaRBeSb8Vj5o/F0qgZqnmjAeBb2PcLQ2qM0A=;
	b=Istdqy2aql8pku8BsvYLPuALoApc4nA0hBIruC9aLcKMQHCy1AD6vbKoT2O0EdMEt0ZZfC
	43/eNxS+/+3DbkAgN60GF/BqqiY7Gij7hw2u2mbeiUFtiuZ9IJHNDDkLQcRWc0jpOkIQy5
	HcbTR9C62TL+dzKYLuDELpwEV/RJEpA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-625-QnmTETXWOK2EdnNSzSVGFQ-1; Thu, 03 Apr 2025 04:14:04 -0400
X-MC-Unique: QnmTETXWOK2EdnNSzSVGFQ-1
X-Mimecast-MFC-AGG-ID: QnmTETXWOK2EdnNSzSVGFQ_1743668043
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-39979ad285bso388528f8f.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:14:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743668043; x=1744272843;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rzWYYjEiaRBeSb8Vj5o/F0qgZqnmjAeBb2PcLQ2qM0A=;
        b=pjED6qovnFOD0EA9fMrW+tIrMS3IdHCIzT4Tw6Xr1cfzSotiu+EQkd2GOVlTjhMjzx
         AUeCN1Kb2BmerVeajlz8vvGGYwrokMqc1HiDptnkWvtNpSAud4mQVDkkcv25nBDC2lTl
         V5KYr8eevkp9yG9YLMQBDgZyLW9CxG2h5/iB+gcKP0dR6qXBaqvEoUKJPXlTdaYucTrd
         0iLRJCLP7EWQx+31PgsLacPNLdvxjmJIdII2oToap+VV6SkTVQu6Qy9/w0aNmShHMppf
         uribhwY7n2ztg2SKYzsFvuvwXh/1gprIFYUxOqZBlb81RUWPgPrVavLyPsDtnIjqd61W
         4j/A==
X-Forwarded-Encrypted: i=1; AJvYcCX8HTVd98FGgSGlgVN9t92fAyNQdVHzmbonLaj5MbeRZA6I58BkwjHoH5W2oCfYXUwWMYBmTeZMa5Us@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyo6fC7kZY5uxGvAyLZEHeOoUq+3RzcboNiMTqFGqnp0tiO9UR
	SGBE5RxwqD4ecoLVTAgFdd4mmvqYx19qjESyvTMb83Wo36cppN53HX/B/jH9OWgqHBthjxjAtSM
	ZcK7ojM2a06yky0Qy182HRNUeACV5P/qlF9dzjYYPSAeEHwJKmCwhOlaZEW0=
X-Gm-Gg: ASbGncsVqVaEeo+x8tmSwYJ5Xyd104tqEolzP39SCjE3wKCWRzWVqKCPnNp8NrMrQW8
	Xkgadjupakn61qbbTj1DAayA7FKEkJtjhuZuWZKsENldr8lnwXN3n3CxlkBmjq2PTabnx8brJEV
	zFNRPeKzcHKkdlecn1XIKhiw2gYPxCkNCjIYe46QyMMt8L3BTmfE62f/fhvtucnhTEY4/2KhVN1
	TqDjRc7tnh/LjmHMaAPXIzg74yQZFOvPDUT1+7JZdnZY/fFXlHtMzO9e9k3mpj545tmyAoDYWL9
	JUaL1IE4Tw==
X-Received: by 2002:a05:6000:1788:b0:399:7f43:b3a4 with SMTP id ffacd0b85a97d-39c120e088cmr16478329f8f.24.1743668043525;
        Thu, 03 Apr 2025 01:14:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCqc+UbMw4reOC94Om0ACCo9roOZqNjIluH63XAEl0e6Z4bIUmGEN7/qCnuIYAa0IiNtTjgg==
X-Received: by 2002:a05:6000:1788:b0:399:7f43:b3a4 with SMTP id ffacd0b85a97d-39c120e088cmr16478308f8f.24.1743668043180;
        Thu, 03 Apr 2025 01:14:03 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301b9d55sm1070866f8f.42.2025.04.03.01.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:14:02 -0700 (PDT)
Date: Thu, 3 Apr 2025 04:13:59 -0400
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
Message-ID: <20250403040643-mutt-send-email-mst@kernel.org>
References: <20250402112410.2086892-1-dwmw2@infradead.org>
 <20250402112410.2086892-2-dwmw2@infradead.org>
 <1966cbf1-a430-480e-a78d-3d6bbcb4ada4@amd.com>
 <20250403033230-mutt-send-email-mst@kernel.org>
 <59be937432fe73b5781ecb04aad501ae5a11be23.camel@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <59be937432fe73b5781ecb04aad501ae5a11be23.camel@infradead.org>

On Thu, Apr 03, 2025 at 08:54:45AM +0100, David Woodhouse wrote:
> On Thu, 2025-04-03 at 03:34 -0400, Michael S. Tsirkin wrote:
> > 
> > Indeed I personally do not exactly get why implement a virtual system
> > without an IOMMU when virtio-iommu is available.
> > 
> > I have a feeling it's about lack of windows drivers for virtio-iommu
> > at this point.
> 
> And a pKVM (etc.) implementation of virtio-iommu which would allow the
> *trusted* part of the hypervisor to know which guest memory should be
> shared with the VMM implementing the virtio device models?

Is there a blocker here?

> You'd also end up in a situation where you have a virtio-iommu for some
> devices, and a real two-stage IOMMU (e.g. SMMU or AMD's vIOMMU) for
> other devices. Are guest operating systems going to cope well with
> that?

They should. In particular because systems with multiple IOMMUs already
exist.

> Do the available discovery mechanisms for all the relevant IOMMUs
> even *allow* for that to be expressed?

I think yes. But, it's been a while since I played with this, let me
check what works, what does not, and get back to you on this.

-- 
MST



