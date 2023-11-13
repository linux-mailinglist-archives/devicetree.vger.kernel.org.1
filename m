Return-Path: <devicetree+bounces-15460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD88E7EA47C
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:12:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79391280F24
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9538249F1;
	Mon, 13 Nov 2023 20:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Xg7duv6l"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EA024213
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 20:12:02 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0F5ED75
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699906320;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
	b=Xg7duv6lPJlORQ/b7cIdTFxaF53Wdn6hQyuiVSIGOQvMpjUM69+07MB4afhyFNq0YdBPwp
	9up0UqctJcWoCbILnK2r3RBrNwRLLcskl9f6awYA1VI6+LIcEcZktI0ZDETzq0AbdkCc9V
	oWOs5kFi82V3EFBJ0FAexhDKDQoBXnA=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-287-KMQkvzH9MK6IxkbwhV86jw-1; Mon, 13 Nov 2023 15:11:58 -0500
X-MC-Unique: KMQkvzH9MK6IxkbwhV86jw-1
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41eaf5d20d8so58098711cf.3
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:11:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699906318; x=1700511118;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
        b=eePS3qGQNxeDuzG+0Cdv2KJyWFqLAs4aPMuOojrhot3pQ0rXrKpQOL/omA3rdoOD/C
         Jmk3iulebMWWGUPSGiSbOjWQKYWxmqrb2FZkvhM/8esKr3jlbD5xSz3EQOjDonlBgX/6
         lmklNPExliA+M94EdeP0ieVkLlmIUThtrzyL3vSClYNsi5Snsd8cEj4ZGxRTKskKdDIu
         Rjsdj7OiMc0BuCt/Gf//rb7QASM805VBzCJP4qnnMYb0n/2tSJuQDG5NplIuLn7CKBZ2
         vLpLrSWdq+GJj5dOC2SmpnAFtxPCy09HKcr+JqCOdxPipp5nGGlmgfFvwRg1D5Rg9lHa
         DF0g==
X-Gm-Message-State: AOJu0YzzmqsoO/iDdFBfBMuwg3A0rSZZ2obtaCDGQ4E4//xosQ/tsd2x
	Cuzg8dXUxoGRz58TqACKovDlTF3mrmWRQWglBslibtlxExxOtI0vvtMXRmUDUm4blxYrI6tV8hg
	9wgsFjpDH4ddgMyVrN7DL6Q==
X-Received: by 2002:ac8:5f0c:0:b0:41c:e02c:858 with SMTP id x12-20020ac85f0c000000b0041ce02c0858mr147748qta.49.1699906318345;
        Mon, 13 Nov 2023 12:11:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFswPYZrUE+iHPpixm0usY52QHAZzAKPKkAbEgaDvDovqU3DEFNzLkKbZFJyBFwEre9EilUMA==
X-Received: by 2002:ac8:5f0c:0:b0:41c:e02c:858 with SMTP id x12-20020ac85f0c000000b0041ce02c0858mr147719qta.49.1699906318082;
        Mon, 13 Nov 2023 12:11:58 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id f19-20020ac840d3000000b0041cb8732d57sm2169319qtm.38.2023.11.13.12.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 12:11:57 -0800 (PST)
Date: Mon, 13 Nov 2023 13:11:56 -0700
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
Subject: Re: [PATCH RFC 08/17] of: Do not use dev->iommu within
 of_iommu_configure()
Message-ID: <ciuy76347ki3xb5jzyji5fbzpsm2ssvcyvfgm6q7fqbneaoj7y@v5fpadftudhm>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <8-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


