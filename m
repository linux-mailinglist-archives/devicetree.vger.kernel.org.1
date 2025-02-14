Return-Path: <devicetree+bounces-146836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 104ABA36660
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 20:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88ADF3B2A36
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 19:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A491B6CE3;
	Fri, 14 Feb 2025 19:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="CBiZTzg5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159131C84CA
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 19:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739562227; cv=none; b=Ylkk36pmXzYw4cXeRCUZl4OyV3fkPKRNNCumQsaFzK34iTVlwDQ/vlQ50SOMNGyYfyAinow/sHezf6gG5zyX/eKN+l+ZGaWswtXa4IE/4jM/oJGeukwAQ3cSy5tPQGCknB9sWRWkz9QMPiJVOlias29freyHA2+90pJ/dqgVDf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739562227; c=relaxed/simple;
	bh=mhtKeLm5igpgwc6h4fPK4Ajh2FAgScw0xgMCQuun79I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QAZvBKPYvccgyKm3TWuRJkkishisnlmperpfniTikP9wmulzKU0v1i5Z5p7SGLZS5Yzw1++zS4uwvHvADkL5m3jzkpPNNidy8Q6NJ6n+kPzDIg1gY6WWYTgOXN9Ij6Zs9FyWx+iVQB/UG8uQ1qV52gg5lbBhPDS4fOdWYanhyWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=CBiZTzg5; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6dd43aa1558so22438656d6.0
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 11:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1739562225; x=1740167025; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=buGqXK8/ktUg8RW6l4BfFP62BuolnXWk213EnIe2HCM=;
        b=CBiZTzg5GKUOw30Ap+23iwklRbL66ng3YJfyVAdbawwpmTWgdMIVLSVudrkXbT2t9V
         AUNxZ6oaa6IzKAB5vUxlxm/7vEqHJWCy2Z0VrXyHmFjjVBkWpBzV+zWhACj1MpwPkXA3
         82Iyu6YO6cYWOVlRR+wOTg2ANTejluywnZ6c6ly2SIxoC1iPmrOG33RXHNyC/5d4grN5
         IZfJyLOLwWmbYIx3a+sbuUHeap0fvSkNFiobslWF3O4UqkWFEnu0h7WNB6bK73kwulxg
         wVvuSIuoC/KoiQP2KbroP5G7Wn5huqOwGqIwc6BqTsKG/T7qDrB5+BIP04WmameauOUM
         Lirw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739562225; x=1740167025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=buGqXK8/ktUg8RW6l4BfFP62BuolnXWk213EnIe2HCM=;
        b=DcBLMhjrPKr5ePmU2zQnsM2xhIISckPJWXyssVnhssmkNHGgUuW3PIyFiUp/1DkbeC
         6zQUCF70EirqOpcdWksZiofeN+Wd46R7vDVR8vATyfi8wWReB+KKYFg8IUs8mF6e7q6w
         G813wCGXgt6d587uOrimpauYanqkCAE8hDUrJdawKTW0Kdz7B4Oyu3EvnRJdofnOIion
         S3SCN1zwrhLPLXsrIX46Oxi4brj6grjpr54JVjCcfSpS+yE1w9aHsK4yYi2RkWgExwER
         RAU8JBo9QfdY8s5Je4/pLXsyT0/tSTarlRpxejiR4HtLBGRaloQSvJIttS0ud1ehCWA2
         OoUA==
X-Forwarded-Encrypted: i=1; AJvYcCW6HN/Ab7ufJLe1fRTJeoz+2QICKvC2wLEMM05hgYgcyNdYxg4nqLYDrx0Ae1lwsZcfkvfnEamCTPjf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/P9b8VLIKzlDRGYZHw2e5gBUr7zP72kRM8sbKeWbUyLW+KdZm
	VszU6HLkbJ/lNvi/vNiccZfqPOSe07jNM1r8XPJNdUkv4cG7+hLCJbFsOGo4QGc=
X-Gm-Gg: ASbGncspxdpeYpn7Hmmq6+9KDDr0gQzYGaMOHaZBdF/J8TZ6Ny4KMz38SZi6YtCAGln
	R2U6bpjwk/Lb4HlGpuTlHeZyk9i5DYiwvLb6H8M35xOKG6rFWHKqPLEu6eytW5mEUtwY+sOwkIE
	Tmo087dB5CcLC07c0fdKVPeWCjgA4rebQA+I78k/JsvIzNVww04monF5gP2YWv0st8Isu5Eo2S/
	bM/F7F/muJvHb4MnwrgHi/q97xN30cfcEuKSFBhH0Gtk20uM1+DyfRA/FbkGLWJunuj0y1ZvV9n
	63bdsrfzhnq5EasiQF9BzayxZuzBP95VxGPjX0tPNcdD3JVdf/Wn0icLGEGwrYQT
X-Google-Smtp-Source: AGHT+IFaSyYcyF+Ryh1E4s3MGomseXTapLkA1HeMxX8nrM5eJsPF5uZrRKBhBqh/ftWJjIpaJugHyQ==
X-Received: by 2002:ad4:5d6f:0:b0:6e4:4331:aae6 with SMTP id 6a1803df08f44-6e66cf38b4bmr7577546d6.39.1739562224840;
        Fri, 14 Feb 2025 11:43:44 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.128.5])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e65d7a439esm24231236d6.67.2025.02.14.11.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 11:43:44 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1tj1bD-0000000GmVK-3Ena;
	Fri, 14 Feb 2025 15:43:43 -0400
Date: Fri, 14 Feb 2025 15:43:43 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Hanjun Guo <guohanjun@huawei.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <lenb@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Stuart Yoder <stuyoder@gmail.com>,
	Laurentiu Tudor <laurentiu.tudor@nxp.com>,
	Nipun Gupta <nipun.gupta@amd.com>,
	Nikhil Agarwal <nikhil.agarwal@amd.com>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-acpi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	iommu@lists.linux.dev, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Charan Teja Kalla <quic_charante@quicinc.com>
Subject: Re: [PATCH 1/2] iommu: Handle race with default domain setup
Message-ID: <20250214194343.GE3696814@ziepe.ca>
References: <cover.1739486121.git.robin.murphy@arm.com>
 <87bd187fa98a025c9665747fbfe757a8bf249c18.1739486121.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bd187fa98a025c9665747fbfe757a8bf249c18.1739486121.git.robin.murphy@arm.com>

On Thu, Feb 13, 2025 at 11:48:59PM +0000, Robin Murphy wrote:
> It turns out that deferred default domain creation leaves a subtle
> race window during iommu_device_register() wherein a client driver may
> asynchronously probe in parallel and get as far as performing DMA API
> operations with dma-direct, only to be switched to iommu-dma underfoot
> once the default domain attachment finally happens, with obviously
> disastrous consequences. Even the wonky of_iommu_configure() path is at
> risk, since iommu_fwspec_init() will no longer defer client probe as the
> instance ops are (necessarily) already registered, and the "replay"
> iommu_probe_device() call can see dev->iommu_group already set and so
> think there's nothing to do either.
> 
> Fortunately we already have the right tool in the right place in the
> form of iommu_device_use_default_domain(), which just needs to ensure
> that said default domain is actually ready to *be* used. Deferring the
> client probe shouldn't have too much impact, given that this only
> happens while the IOMMU driver is probing, and thus due to kick the
> deferred probe list again once it finishes.
> 
> Reported-by: Charan Teja Kalla <quic_charante@quicinc.com>
> Fixes: 98ac73f99bc4 ("iommu: Require a default_domain for all iommu drivers")
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/iommu.c | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

