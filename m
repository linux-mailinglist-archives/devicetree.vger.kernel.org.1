Return-Path: <devicetree+bounces-15996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B177EC6C4
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33A801C2099B
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04280381AB;
	Wed, 15 Nov 2023 15:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RCBhfDDf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B6C35F1D
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 15:09:41 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A331418A
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 07:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1700060979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
	b=RCBhfDDfYO/TKKaWW8Im6C39h4d4WZGaGXY/9CMEvFdaLn60W9dhTRUrUC/1lsvkCqW8Oq
	b6wgl/tZpSSrT3Z8/KwxdvVoiPpKElzPu/eQOy9SL+EW4DgGIB/Bjd/tYqDRuXGkOkxeBx
	Miuhkufw/+7QKliScp+LSHlhS79mxuc=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-195-gaSvHIgTOfGPAnMtxWVV1g-1; Wed, 15 Nov 2023 10:09:38 -0500
X-MC-Unique: gaSvHIgTOfGPAnMtxWVV1g-1
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41bef8f8d94so68533351cf.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 07:09:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700060978; x=1700665778;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
        b=OdxIdrkkDfWNvjK1/+PGRphLAXBpS/z6xKxodSOvnh1EgnKn/R+uYuYSCW8At/dwFS
         lW5IrU73jKt0scMZMKpzAsyUEbpGYOra8tDHwL9tcm+d4PvraJMfoFcVntYHdJXJJsNh
         guhTdw0thKD6/7ZqdhYR+5c1reuZF8Ur5NJBeA6RwUaFvjRmDNgoyJArQ7SJRI85SFu+
         P5yIr7GXuxmJRrzphdL94qTPQZqDyKbM2I7ot/TdiebUDxxSnKGzxsKyzvd/IpFWPnOi
         aQ4P/Ud7Of4wqm/mhImj8eL/ZUBKUAXQR04O/9vco7ZpjvCGc6mW+rlsemYtbINuZciL
         vQ2g==
X-Gm-Message-State: AOJu0YyWaH34pe3U18zHoLveW09vYj8fztOYnfjbjLau3ZzcTPM2ULw7
	jvNrZtek3qrm30RGSWjTDle3qGxLkVlDX1w+Kdu60d7JsVZqGEgn9KoRE5of1fdUcoa/WMY1B2U
	66+3iEOv5lvHpyk4a1qWuuQ==
X-Received: by 2002:ac8:570f:0:b0:418:a58:1cd2 with SMTP id 15-20020ac8570f000000b004180a581cd2mr6938248qtw.51.1700060978272;
        Wed, 15 Nov 2023 07:09:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJQ4sai83VgKMNcVk7LBkPO+lmGyR543b/SO2885Ys+XYhGZt/IKDco0l9338e20RsJ7UBFA==
X-Received: by 2002:ac8:570f:0:b0:418:a58:1cd2 with SMTP id 15-20020ac8570f000000b004180a581cd2mr6938210qtw.51.1700060977944;
        Wed, 15 Nov 2023 07:09:37 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id b3-20020ac85403000000b0041ea59e639bsm3597148qtq.70.2023.11.15.07.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 07:09:37 -0800 (PST)
Date: Wed, 15 Nov 2023 08:09:36 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: acpica-devel@lists.linux.dev, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Albert Ou <aou@eecs.berkeley.edu>, asahi@lists.linux.dev, Catalin Marinas <catalin.marinas@arm.com>, 
	Dexuan Cui <decui@microsoft.com>, devicetree@vger.kernel.org, 
	David Woodhouse <dwmw2@infradead.org>, Frank Rowand <frowand.list@gmail.com>, 
	Hanjun Guo <guohanjun@huawei.com>, Haiyang Zhang <haiyangz@microsoft.com>, iommu@lists.linux.dev, 
	Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Joerg Roedel <joro@8bytes.org>, "K. Y. Srinivasan" <kys@microsoft.com>, 
	Len Brown <lenb@kernel.org>, linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-hyperv@vger.kernel.org, linux-mips@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-snps-arc@lists.infradead.org, linux-tegra@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Hector Martin <marcan@marcan.st>, 
	Palmer Dabbelt <palmer@dabbelt.com>, patches@lists.linux.dev, 
	Paul Walmsley <paul.walmsley@sifive.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Robert Moore <robert.moore@intel.com>, Rob Herring <robh+dt@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>, Sven Peter <sven@svenpeter.dev>, 
	Thierry Reding <thierry.reding@gmail.com>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Krishna Reddy <vdumpa@nvidia.com>, Vineet Gupta <vgupta@kernel.org>, virtualization@lists.linux.dev, 
	Wei Liu <wei.liu@kernel.org>, Will Deacon <will@kernel.org>, 
	=?utf-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>, Lu Baolu <baolu.lu@linux.intel.com>, 
	Christoph Hellwig <hch@lst.de>, Moritz Fischer <mdf@kernel.org>, 
	Zhenhua Huang <quic_zhenhuah@quicinc.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, 
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 12/17] iommu: Make iommu_ops_from_fwnode() static
Message-ID: <fc3a6krgqyi7awvm6dcjg5edbem5lead66b4tyi5ttetkcfdpp@iaya3ijkywwv>
References: <0-v2-36a0088ecaa7+22c6e-iommu_fwspec_jgg@nvidia.com>
 <12-v2-36a0088ecaa7+22c6e-iommu_fwspec_jgg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <12-v2-36a0088ecaa7+22c6e-iommu_fwspec_jgg@nvidia.com>

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


