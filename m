Return-Path: <devicetree+bounces-15472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E93757EA4E9
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:35:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2631D1C20A02
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB5BE22EE9;
	Mon, 13 Nov 2023 20:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hu1Agh8g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B79722336
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 20:35:43 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23FBC1AD
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699907741;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
	b=hu1Agh8g6+1yUEwZ2/+ba7XbcHBhpAE3pVolPKyy/pMuqCzYrruK25qWT8ypCYozDP8oBE
	ZszB/3CxEAY5hvz9bJKNctsR7421IlJkudTpmsk0uUToiZ9erNrHR519u/Rf900A2eXfOx
	SMw7yO618XmPjAcOfHyVW0hcTToR5JI=
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com
 [209.85.222.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-694-uDRcFOc6MqS14D-u2PbCQg-1; Mon, 13 Nov 2023 15:35:40 -0500
X-MC-Unique: uDRcFOc6MqS14D-u2PbCQg-1
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-7ba45ffb1e0so1429364241.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:35:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699907740; x=1700512540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
        b=rnyffPEMSAjIe0KB2sdzKaLETimkNErhzwpmIqW0opzz8DIf+Jn0z6DeKLFjlUkxIj
         IJtJkkhWsdUzLSqV2YCQnWRxqw0AIY+c5054xDRzPdQrbfFIEaXffdtxYwyMemLYvDi0
         gpgO4j9WxhbAS59nrxN3gxHEei237nXrT5r2r2vpKEewQrIeFynNtPBwEeThiIp/3SIl
         qFGoZc7w2Zz4Q1YWAn1fW3HqftJ8Hwuxj0VrWFyqQknBDhst1sxcbZzS2maunIV0q08+
         NQ5RhBST2a8Hti5qJm2OBPNU8vYJCc5bzPlKh+n8upPLBrnt0bE2N5EylK8M2iOVqAt7
         rLOg==
X-Gm-Message-State: AOJu0Yw9DLPbDthu0FoWxkcr54Lebr4QBb/nCVFmyjRtRYwAsJ8GvRPJ
	snQ2AA1vslIPktfXbwrJ/PEQOeZg/2kBIv1ieyrMtZIgRNOLFyPAe09fb/5RBjVC5ZDfxoUrSOF
	7RceOJZCKA/8NdcWxb/Bvyg==
X-Received: by 2002:a67:c999:0:b0:45f:1d2:30d7 with SMTP id y25-20020a67c999000000b0045f01d230d7mr6099907vsk.8.1699907739763;
        Mon, 13 Nov 2023 12:35:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHxuNWEMeMyEEwh/zP9ymoIFo7xdEdta/98xN6QQh3vfUdvtg1LEuvGc/ZAJ7YHFiZylBuHw==
X-Received: by 2002:a67:c999:0:b0:45f:1d2:30d7 with SMTP id y25-20020a67c999000000b0045f01d230d7mr6099883vsk.8.1699907739491;
        Mon, 13 Nov 2023 12:35:39 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id dx9-20020a05620a608900b007789072e445sm2145267qkb.31.2023.11.13.12.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 12:35:39 -0800 (PST)
Date: Mon, 13 Nov 2023 13:35:37 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: acpica-devel@lists.linuxfoundation.org, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Albert Ou <aou@eecs.berkeley.edu>, asahi@lists.linux.dev, 
	Lu Baolu <baolu.lu@linux.intel.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Dexuan Cui <decui@microsoft.com>, devicetree@vger.kernel.org, 
	David Woodhouse <dwmw2@infradead.org>, Frank Rowand <frowand.list@gmail.com>, 
	Hanjun Guo <guohanjun@huawei.com>, Haiyang Zhang <haiyangz@microsoft.com>, 
	Christoph Hellwig <hch@lst.de>, iommu@lists.linux.dev, 
	Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Joerg Roedel <joro@8bytes.org>, "K. Y. Srinivasan" <kys@microsoft.com>, 
	Len Brown <lenb@kernel.org>, linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-hyperv@vger.kernel.org, linux-mips@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-snps-arc@lists.infradead.org, linux-tegra@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Hector Martin <marcan@marcan.st>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Robert Moore <robert.moore@intel.com>, 
	Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>, 
	Sven Peter <sven@svenpeter.dev>, Thierry Reding <thierry.reding@gmail.com>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Krishna Reddy <vdumpa@nvidia.com>, 
	Vineet Gupta <vgupta@kernel.org>, virtualization@lists.linux-foundation.org, 
	Wei Liu <wei.liu@kernel.org>, Will Deacon <will@kernel.org>, 
	Zhenhua Huang <quic_zhenhuah@quicinc.com>
Subject: Re: [PATCH RFC 17/17] iommu: Mark dev_iommu_priv_set() with a lockdep
Message-ID: <ytwi5fmrlwmbl5trepczcy6on2sknr43yrym53c4ychhagrlr5@vdvgw5zpgjds>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <17-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


