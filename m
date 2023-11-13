Return-Path: <devicetree+bounces-15467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6287EA4B8
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C19621F22641
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1DD8250F0;
	Mon, 13 Nov 2023 20:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KMW78OH/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55B624A0E
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 20:23:38 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0460110E5
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699907017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
	b=KMW78OH/Aa28+WoBjV3u6FiFNi1qzOL04Vs1XY4Be7Nh4k47Awnf7YKNx5vmCWawBhK25H
	NXnxlcAMeUgarb4sO3y6qXI6EmR+5Z1KuE9Fp7lSa+URkfxWf+XamAo3Bj4P7qyuFnZOgG
	KXEHXkC6DhfvBy+vwk7vpdOcXQLNdH4=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-371-QePHAk-8P2Kw1qqad5MOUg-1; Mon, 13 Nov 2023 15:23:33 -0500
X-MC-Unique: QePHAk-8P2Kw1qqad5MOUg-1
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41eaf5d20d8so58217661cf.3
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:23:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699907013; x=1700511813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
        b=Pp+7UwrdnxdHTO1LlvnxyRVuBNBYICcdLbzyampQv/Tg92WXyFaQ+4i/miPBlReor1
         RG7CSOsIkmwJbGuCNAJU0pwpXXDH33O70kevIA6132g+Z4GxEK4eorwqQFq8Q1I8RHtU
         mhRurdf5WYr2Cw0KrE1Gp8sMs4t4OBHrEytvRNbab3DXGDFbPhSuGH1Vh0GcQoAKIB6i
         irSGHeyGIiUBVW7XHZ4mQH2Mp3j7up5nxK0q4JmYMP1lUl1FJjpULxzHrIweHDp7S2Fl
         y82ZGJyDhUoVZlXzwDR9IpvjrxCKCt7fhWBZSROtwMds2qaBwNKAlSobbDu+4AXYKf7+
         zKIQ==
X-Gm-Message-State: AOJu0YxXRiQz5EBhAqL6km4jnhxS+yW87k7qNWxt2UD4jILp5zXitPPs
	N0EhbkhaJnoOvBu5wnT3JPlo8eIRj5yNtL1AYLSIZH+ktvxqYWPwOa5uhD60p0yYeYvAi6ya5RC
	Bc6fy9YwJ3YZ/d6piEmwbuA==
X-Received: by 2002:ac8:7dcb:0:b0:41c:c489:5737 with SMTP id c11-20020ac87dcb000000b0041cc4895737mr181003qte.52.1699907013264;
        Mon, 13 Nov 2023 12:23:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETLe6ua2NZBk5C5HvQsSQRhq7xoJL++WLnwlLCZjQoU3YIRy9czQKgZx9fuBDkEqY7LDc6Jg==
X-Received: by 2002:ac8:7dcb:0:b0:41c:c489:5737 with SMTP id c11-20020ac87dcb000000b0041cc4895737mr180976qte.52.1699907013032;
        Mon, 13 Nov 2023 12:23:33 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id z10-20020ac8710a000000b004196a813639sm2177639qto.17.2023.11.13.12.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 12:23:32 -0800 (PST)
Date: Mon, 13 Nov 2023 13:23:31 -0700
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
Subject: Re: [PATCH RFC 15/17] iommu: Add ops->of_xlate_fwspec()
Message-ID: <j56kfjb5dt3drcxh56lyc4om3qjnwddot2i5f62f6u6gwefj7i@rxmgclwaevf4>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <15-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


