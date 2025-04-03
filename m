Return-Path: <devicetree+bounces-162793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C76A79D35
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 09:43:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A881417146F
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 07:43:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D12241667;
	Thu,  3 Apr 2025 07:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="AJwplS2V"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727CF22CBC9
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 07:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743666221; cv=none; b=cR86ZhsnGn73qREnA8nEYgX0JlW3054RzzlNpmlWGsizwa1ZqM0NfRF1ncFXeBbIajObyzhnwezvGehCjA2aZ7xX7RNcju4FT3o5vVsYKs0Nv0azK77KYKvrG0tyiKYxmqSoT9h/FFUbiIjyaAUL+bxuUbGx6FvbLhDuLCtuZ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743666221; c=relaxed/simple;
	bh=vib5eqL8Yk6nv7cYTs50OyikP7l3XdHYId6taSeO3OM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MSprIEAInufbLmn4U3fJQQXOgreOctqCKGBJ+8uMbGSfsAGtfJQ0Gbxr7UGsP3MOj+UjZgtrDlCEG730KbIXqYX1+ie+v/qrOIcBWsLqL0XkUUoDSkjvYiPbYz2krlCGiy3WKKaUlaoxT7Q7t+B0rvGHDtcMdxIpKyBNPGPZdto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=AJwplS2V; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743666218;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NuIGPILwX0KGwdKCW254FLXrK5Uw6+p9BSYPzhYokBA=;
	b=AJwplS2VcgKpYT0zc34MVr8tWO9edyornnfd6a2s7qo6VF45XLjCxgEURYsd8IliiaYfJ5
	mtWKYMl9iVCTZZirnLCb+7jiiyL5IfAAI2CM7laUNB2+Q+PlewI388ef6CN0CzRAn6BZvb
	ty5Y5796fYAJJdJehz9W9xKUQxchvaI=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-353-uvO9iqCAPw-t9hflJLPSpw-1; Thu, 03 Apr 2025 03:43:36 -0400
X-MC-Unique: uvO9iqCAPw-t9hflJLPSpw-1
X-Mimecast-MFC-AGG-ID: uvO9iqCAPw-t9hflJLPSpw_1743666216
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-43bc97e6360so3134215e9.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 00:43:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743666216; x=1744271016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NuIGPILwX0KGwdKCW254FLXrK5Uw6+p9BSYPzhYokBA=;
        b=sFCkJ+wfJaK0vwUw0AN9pmev1XQIWyXvV9/HtESsgDvUE4ggBUDX/UmzLNUfxHDSjg
         Ucmt4Qqa+04qKP7Qd18BQlK9B5UB/Ca+RrM7HF/3FH/MKFBBzvTNwXVukH0wFozp3Nl4
         0dcIIVZqqYX52p6kEj/rsAZRIK1U0pRGGy1PVq9sxsPRKhMANTYWakYVJgoH8kfQ/zT4
         qfzKtDackDnrbI5Jb9YIZnd3c5Bjhuj9BjRdFFO0xAMtEw3lLgYcLmmIlqWPPsekFzbn
         wg+jLNs/g6H49O0YWCKmYqBXzYFmD6EJg6ZG9APLmXuNS4Yzduq5jLff4K9RPMSAMJqa
         zwVg==
X-Forwarded-Encrypted: i=1; AJvYcCWgptmM9UzYcvoaIx4Dv6d9ZxGGQoJ3CHPuQCnIKoUDjfQLpQ/+30GTv97LXGaXgB1bBmIpOmlnsXfE@vger.kernel.org
X-Gm-Message-State: AOJu0YzRO3fh5z91nMO15BXwAHP/jDFiMimzG83D/oCslqRxJCfPqdL4
	cgJ9eKMfDZ2B0ViTGkjjirotq2iih7jTSHPMLZaP6IMv6rGycuFM0EVsQ3SJAia9O0OCvP3CaRP
	JWoFqXmjBUzWDGzemp5nN+HYyLWECA0JbLe19oGoF2jMLhnnmjLET0ey9Tgo=
X-Gm-Gg: ASbGncvP3onSNDtALLOO+CrCsO8LKowZi7PvkTuIv4CJL0zJzV5TsCuNpzt7JaU3vOg
	S6IKaBu2UZ33ty3n0RrFn3PCUswkuzt7nfTdO88PPHsk2jMfmtPH4Ef7W0vNmqQA6zN3Ts4tQyW
	1ZRbfWabLgUqpUDNF4EI43IpqDA2iScq/M9kCOe+2btGEllEML+8qUK9WWnGU855/H6sMd8fJcg
	YUYEdenU7FY2N2TticmGVBx0eFbtTaVGZV/Wgl/E0FmDKoqzXAeoA4IqxIB2li09LCONhhQ9mpF
	kuOZdSNQXw==
X-Received: by 2002:a5d:6d8a:0:b0:38f:3224:65ff with SMTP id ffacd0b85a97d-39c2f8c6303mr1147206f8f.5.1743666215772;
        Thu, 03 Apr 2025 00:43:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKHA+wdnxQEWeLGPaea4xtTaMDclvnSmU451MGtx5swswXpr4ijH+EFOoCDWUx1yGDtMAEng==
X-Received: by 2002:a5d:6d8a:0:b0:38f:3224:65ff with SMTP id ffacd0b85a97d-39c2f8c6303mr1147183f8f.5.1743666215393;
        Thu, 03 Apr 2025 00:43:35 -0700 (PDT)
Received: from redhat.com ([2a0d:6fc0:1517:1000:ea83:8e5f:3302:3575])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301b6321sm1001079f8f.44.2025.04.03.00.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 00:43:34 -0700 (PDT)
Date: Thu, 3 Apr 2025 03:43:31 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Christoph Hellwig <hch@infradead.org>
Cc: David Woodhouse <dwmw2@infradead.org>, virtio-comment@lists.linux.dev,
	Claire Chang <tientzu@chromium.org>,
	linux-devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	=?iso-8859-1?Q?J=F6rg?= Roedel <joro@8bytes.org>,
	iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
	graf@amazon.de
Subject: Re: [RFC PATCH 1/3] content: Add VIRTIO_F_SWIOTLB to negotiate use
 of SWIOTLB bounce buffers
Message-ID: <20250403034143-mutt-send-email-mst@kernel.org>
References: <19ba662feeb93157bc8a03fb0b11cb5f2eca5e40.camel@infradead.org>
 <20250402111901-mutt-send-email-mst@kernel.org>
 <6b3b047f1650d91abe5e523dd7f862c6f7ee6611.camel@infradead.org>
 <20250402114757-mutt-send-email-mst@kernel.org>
 <965ccf2f972c5d5f1f4edacb227f03171f20e887.camel@infradead.org>
 <20250402124131-mutt-send-email-mst@kernel.org>
 <eaef09ab218900a53347987a62fee1787283d9ed.camel@infradead.org>
 <Z-44wXdyia4RC6Cr@infradead.org>
 <06465bcf4422d088df2a0ce9cdb09767dac83118.camel@infradead.org>
 <Z-47O3vkyIf0mzdw@infradead.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z-47O3vkyIf0mzdw@infradead.org>

On Thu, Apr 03, 2025 at 12:39:39AM -0700, Christoph Hellwig wrote:
> On Thu, Apr 03, 2025 at 08:37:20AM +0100, David Woodhouse wrote:
> > Hm. I was just trying to point out what seemed obvious, that when a PCI
> > device does 'DMA' to an address region which is actually within one of
> > its *own* BARs,
> 
> PCIe devices can't do DMA to their own BARs by definition, see the route
> to self rule.
> 
> Pretending that they do it by parsing the addresses is bound to fail
> because the addresses seen by the driver and the device can be
> different.
> 
> NVMe got this wrong not just once but twice and is still suffering from
> this misunderstanding.  If you want to enhance a protocol to support
> addressing a local indirection buffer do not treat it as fake DMA
> but rather use explicit addressing for it, or you will be in a world of
> trouble.

Hm. This is what this proposal does, indeed. Can be changed though -
since all accesses are now within the SWIOTLB, they can be treated
as offsets instead.

-- 
MST


