Return-Path: <devicetree+bounces-162634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ECEA7920C
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 17:20:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3732118942F1
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 15:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE6C236437;
	Wed,  2 Apr 2025 15:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fyI7k3BC"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93B4136988
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 15:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743607228; cv=none; b=rJwMWg19Aq09pcSi7luaNKSrj3HLhWGqamEmv/BmD3T7Y5A4vaQD2EJkSpkp/4DQ0G4CIqRXp2Eja3C6GH+0Nc8bSMXbFeIzVMm+NEU/3xSze05BfDsrPYsI3hrDJfRvK893K3WpkUfesSc7AVyhl6xexQfqaczJcpcAvaWolzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743607228; c=relaxed/simple;
	bh=+b92sWod3Pyyl1o4aU9Snn+KxIzAz3pTx5hqfoib3Zg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dVoWaNmaaDpMDA7MMdVaxS+2tPdko0srW2VMjDJD7Ov/HX1POE+8loALPzwd223NZbQ1fqI1jnv+B7Hr/HWGzJpR7XKqvkbdNAZ2F1ORpMllOX/CajN/v+FaFidPlaE/Lv9suoz9RuRxHW/JeC3bIy7Jr1vLPz2HkMajBIvjEas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fyI7k3BC; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743607225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dCjO/jg476aPhvJWTSZ2R5DfWu0jRUcVuT6vyzuQExs=;
	b=fyI7k3BCcYgqqBygXCGdr5fAk/yLyhsd8AUsWHJQiwcBQKQNPmwWYFHG5XvzQYc1LT7CZH
	iKoXZ9y9yQ4pP08QcTjlzrlmrItOJNKCjEyekdChVSSeYlCJXQz9GDFv2oLx389O6AWMrT
	JBdIyLPj1jYt2EBagowOzLL0ewmbChY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-138-ca7CtoRLOFOaeyQaJHrx1w-1; Wed, 02 Apr 2025 11:20:24 -0400
X-MC-Unique: ca7CtoRLOFOaeyQaJHrx1w-1
X-Mimecast-MFC-AGG-ID: ca7CtoRLOFOaeyQaJHrx1w_1743607223
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-39c1b1c0969so2977016f8f.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 08:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743607223; x=1744212023;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dCjO/jg476aPhvJWTSZ2R5DfWu0jRUcVuT6vyzuQExs=;
        b=TLQLZs4BrMiGiEFsbCXshB16F0L16Iyu+cGn6cETOkRSTpDo+m8dGCPitzLS6JVm/p
         71MyF8voNgUTubTQWc283jksR4JNnPbKP8LtEas+//G1XBS+KP/gffuNVbJ7wNWxmHJh
         60rcOFPlJaLPAuyaN5Pb933rSbG6JyaRNOJAovOz/9qWT5Wbh+TUp2+7U/NiFNaEXVx4
         kBiOH7LgUg5VGrjGFBYPTxlHAx/pn3dJHjksmxjtURw6bpSFtK3HPnhNqOBcDtTjmcN8
         vTv3juGCg9m+vdonrsGo2Z56eug3bE7coDVVZUXo2LG/q7VjhTVn7EacXbx4SupZuqCs
         szMQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7DAeEN1MmIgMwJuHJQP+Q3BTfb13STgsrD+SpewrIZiQr5SpQSc1+FH24G7YGbVvOs1D7tmrFr3TK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh1Bsp0ROa/3D1NXFgKjewmAjpvXexJsRhtbNaWLH4TQvTqd/A
	WKkrJ9SHzL+vje3webXw3829hHryfLjrzYH7PPdnnzNaKL3v59hV4YtDE9uYUa5o6BfMdHwvPuR
	sjPRMmJTzaNToMxYT09PyzElYpUiJ+kZNd5KLZrsZ0wCQGuIVyrCv8vhM45c=
X-Gm-Gg: ASbGncuc9VZAL9sum+CU4JpH06FBptfSvl4pcMNXw3MWsTbkQFxgHuTV/VriKiT0lq+
	HVPy/jeh4jJhq7/d4oFE53QRnmi1QAlcN58yHSNIpMdTkjDeuyBhSrwszjEO960/l+PBq/S3+eo
	OW6wn+htxG+ToDq/RfQSPcOhDqQQvxTyt9AJdMufCHFeOT9kGrcbHhMVRsYPHgf5vZSi+MukCCP
	8jrSb7h7qoNMjyfED70U7zohwGMCTixXOKy2sUkQI0wVRCpQG1Yfq/I+uayDhwuofJYNL4AAW9L
	15MpuvNrxQ==
X-Received: by 2002:a5d:64cc:0:b0:399:6dc0:f134 with SMTP id ffacd0b85a97d-39c1211de8dmr14470274f8f.51.1743607223242;
        Wed, 02 Apr 2025 08:20:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpHyim0L0aPyGRpaixi2bJsAX4/7cDZgTTVY5gXTNdfdDHVgDUqp1bdyCkhiqSpkJTWrL3WQ==
X-Received: by 2002:a5d:64cc:0:b0:399:6dc0:f134 with SMTP id ffacd0b85a97d-39c1211de8dmr14470256f8f.51.1743607222925;
        Wed, 02 Apr 2025 08:20:22 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b66a96dsm17010175f8f.44.2025.04.02.08.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 08:20:22 -0700 (PDT)
Date: Wed, 2 Apr 2025 11:20:19 -0400
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
Message-ID: <20250402111901-mutt-send-email-mst@kernel.org>
References: <20250402112410.2086892-1-dwmw2@infradead.org>
 <20250402112410.2086892-2-dwmw2@infradead.org>
 <20250402105137-mutt-send-email-mst@kernel.org>
 <19ba662feeb93157bc8a03fb0b11cb5f2eca5e40.camel@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <19ba662feeb93157bc8a03fb0b11cb5f2eca5e40.camel@infradead.org>

On Wed, Apr 02, 2025 at 04:12:39PM +0100, David Woodhouse wrote:
> On Wed, 2025-04-02 at 10:54 -0400, Michael S. Tsirkin wrote:
> > > +  If a the device transport provides a software IOTLB bounce buffer,
> > > +  addresses within its range are not subject to the requirements of
> > > +  VIRTIO_F_ACCESS_PLATFORM as they are considered to be ``on-device''.
> > 
> > I don't get this part. the system designers currently have a choice
> > whether to have these controlled by VIRTIO_F_ACCESS_PLATFORM or not.
> > with PCI, for example, BAR on the same device is naturally not
> > behind an iommu.
> 
> In the PCI case this *is* a BAR on the same device, and is naturally
> not behind an IOMMU as you say. This is just stating the obvious, for
> clarity.

Then the platform already does this right, and it's better not to
try and override it in the spec.

> For virtio-mmio it also isn't translated by an IOMMU; that was the
> *point* of the `restricted-dma-pool` support.
> 

Clear VIRTIO_F_ACCESS_PLATFORM then?

Generally, it is preferable to keep all features orthogonal if
at all possible.



