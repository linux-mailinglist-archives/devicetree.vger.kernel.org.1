Return-Path: <devicetree+bounces-15463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDF27EA492
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:13:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE9C31C209AA
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD5024A0A;
	Mon, 13 Nov 2023 20:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BTAMur/c"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81FB24A02
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 20:13:30 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5829D72
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699906408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
	b=BTAMur/cBw2cWs7noaCA7jACSGU6/fvCxXI4GJgjtzQYKK2uSIjJubLxewIvr1eKap3KxK
	okVLNJjrjh79wGXuQUJU3CJDv2c8C3wHRnDIMnjE7dvjZ80shYOXX5AV8C16fIIsH0ZUWh
	jVvWHxvR5bZzXFBHvR2B3c+tOforPGk=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-298--eBO_UxdOVimjTNBh-f8kw-1; Mon, 13 Nov 2023 15:13:26 -0500
X-MC-Unique: -eBO_UxdOVimjTNBh-f8kw-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-66d08175882so54858906d6.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:13:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699906406; x=1700511206;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
        b=py1gxhJSxmp44P/evoBr39G28hc7CEn3FWRtP4LkJW165OoUVLNwcd3NKoMfRrEBjc
         EaG31lregewYRMeR85y0+izp44DjZrLNAj4p87PXzZAIGRDrUT3AEDXluwxhKXtsujwY
         3Hvc7Vht3WfsqfYdqLJ0VGYm6a2DoqRouTY5rG/VKmTN/NZN/JVAlfYYkogbZ/3mfwQR
         x7huUKbj6EVyxiq+VU4JYDTkVNwukScl4uhFTaU2MiZLCrWx+4pMp6/05SjJLxnSXa4R
         4Kqa/aEhkFcsaf63aBXpE0QgLigfsVK8z/wruaDj4aP62n6SE2GHqjIoT1s3awuZHpIH
         XBgA==
X-Gm-Message-State: AOJu0YyRxkHHLW/DPbAXW/EROilCeCesiYttqPn7QK8sCDBhjxdnbKr6
	ItwrLxDztxqWBzDGBMYPYQp/QJWLGJqBstHtcNa6W7rKNnHe1CX/SGbBGKtjwyxMUzM4mfE2z7Q
	ZCNWo+DUkViYHa5sGy22TKg==
X-Received: by 2002:ad4:4bad:0:b0:65b:2660:f577 with SMTP id i13-20020ad44bad000000b0065b2660f577mr248774qvw.3.1699906406573;
        Mon, 13 Nov 2023 12:13:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFsDIxiixJLIxKwkxODRjUhycdO5JesTQ8JOYTeYOzxmk+ReEPp+gf8876uIJbrOmvoudG57Q==
X-Received: by 2002:ad4:4bad:0:b0:65b:2660:f577 with SMTP id i13-20020ad44bad000000b0065b2660f577mr248760qvw.3.1699906406355;
        Mon, 13 Nov 2023 12:13:26 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id c4-20020a05621401c400b006754772bfd4sm2302000qvt.21.2023.11.13.12.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 12:13:25 -0800 (PST)
Date: Mon, 13 Nov 2023 13:13:24 -0700
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
Subject: Re: [PATCH RFC 10/17] acpi: Do not use dev->iommu within
 acpi_iommu_configure()
Message-ID: <aqbuvpgu577fdpf4ndhoghfgewki7lg4hf2yewljonxf6y6oxv@xisq2p5bi3kb>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <10-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


