Return-Path: <devicetree+bounces-13819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B07B7E09D1
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 21:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42905281B0F
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 20:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C4D2374C;
	Fri,  3 Nov 2023 20:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iqSCszqP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3960A23746
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 20:04:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22994D5C
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 13:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699041892;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=1OzQ+mysgekhlmn5TVv8N1n5lIKYQ3IFVh9mWG/eO8g=;
	b=iqSCszqPoQB0juf19DT8cMe50/4XaPn3jDamgAENtgc0X1QlkX+I5DQ/nke+xF8bI8gs6d
	UME7FZESw7sBUw14CDzuS3M7JyRBIIQ0XZsiOfBW4fEHhQu0tCIOzkZyDstPO7rnfVj3an
	7IACxuo4ROShgZVEiR9YFYPrAcBC8Zk=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-20-H01Jo0CzPJKyG-1YkcbtBQ-1; Fri, 03 Nov 2023 16:04:50 -0400
X-MC-Unique: H01Jo0CzPJKyG-1YkcbtBQ-1
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6d329f136f0so2401157a34.1
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 13:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699041890; x=1699646690;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1OzQ+mysgekhlmn5TVv8N1n5lIKYQ3IFVh9mWG/eO8g=;
        b=qvP/JPxPBP5aXz/NC33vWZCloeafSyc4piJm+DxyxvTkfdPsN4fkyoPgwxCX5U6ItU
         NUUBaJuilW4yinQu6qfizupBF5fB4ELbtvXZ/xOxM5yRdF+aHlyoCmeEwETH0oa1D711
         sxrFg9PLbMU0VikrjDdOUzWQxNAwmcVqsJVes0plpr3gUfgw4s9MpfXFN2OeqOfVN7j3
         ToMM+vCbK7kYSbtRn32iyw60UC+JCxJqujTR3FHwOOYsrLDnMogfM7TgtyWjP2LtlqLJ
         VLBDNrMMaGvy+mSyQpABaWGekarSjuSzhPeswPXGZaVsJDCqZEvVZdolOhqBWP4bPc/c
         CYVQ==
X-Gm-Message-State: AOJu0YymzQh5zGZy0gT27xDy8i6f83zydYenPPVo04EIV0o3yXm39GMG
	nmu24zLN2T3uK5ngeT57Mu12TCSRKCkxFKhIiA4UxR1HnYCfAV0rTDMZXIu2XdDdFXSmMaVFnZv
	nB98LozGHSvcCS+nllpZS3A==
X-Received: by 2002:a05:6870:1183:b0:1e9:f220:ac3b with SMTP id 3-20020a056870118300b001e9f220ac3bmr22237328oau.32.1699041889968;
        Fri, 03 Nov 2023 13:04:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLi5AqLxsbuEYljInRn+NA31jis0Cd1kvF705FHYMuK6MitH6grMLWp9GtAPMIyyR4rFG8jA==
X-Received: by 2002:a05:6870:1183:b0:1e9:f220:ac3b with SMTP id 3-20020a056870118300b001e9f220ac3bmr22237291oau.32.1699041889682;
        Fri, 03 Nov 2023 13:04:49 -0700 (PDT)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id q14-20020a632a0e000000b005bd3f34b10dsm1704766pgq.24.2023.11.03.13.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 13:04:49 -0700 (PDT)
Date: Fri, 3 Nov 2023 13:04:47 -0700
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
Subject: Re: [PATCH RFC 01/17] iommu: Remove struct iommu_ops *iommu from
 arch_setup_dma_ops()
Message-ID: <zrelyki44xy2jfqse2op5jjddnejbg4zpysvdkfx6ty2ylcjzw@ynuastkbx4kp>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <1-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>



Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


