Return-Path: <devicetree+bounces-15464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 722E37EA4A0
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01721B20AAF
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEDD3249F5;
	Mon, 13 Nov 2023 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZhrbQhRZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC3E24A03
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 20:14:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C2E5D79
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699906489;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
	b=ZhrbQhRZR1NNIm3C+HVzlzFTddOkFA1UG9qmPZhAMZeZSJKHBxrQIZIJKvq7l0nQvf96FW
	IIpTCRts0b3rpD9LvtBKuAEMlIxNc0NPR3jlLVb9os890hwmI0NZilJnpGNCSnhYMvalEL
	cHnrIWaKk1BvAjInZck82wc5atTglog=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-532-292zGoBYPDqHv78rlVeu8g-1; Mon, 13 Nov 2023 15:14:48 -0500
X-MC-Unique: 292zGoBYPDqHv78rlVeu8g-1
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-5a839b31a0dso100747397b3.0
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:14:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699906488; x=1700511288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sqWGwV812/CXYndzj2W50PA7KOMPm+tHC+e+xjD2/M0=;
        b=Y10orMXB6BxxNiFDuthjzm7epoCdWYJCVnXEqq+wt6WawMV5F0nP79emmzLNFw+QZE
         n6Qq7t+HAbpjj5etgodBBMZy5LKYYyJ08qzzWtnr0PyKpfgpy/M3mu5lqVsqxcn32URk
         jOR+YlvHQd1HdsgTGVFp5gfY+obhCWUiwLelVbPCXvTxo9MAkVUQLGSk7ErEjQ1OpngJ
         fgEteQS0/JXv7Db+8uLk+BTH94H0PlgfA1iwPB4D9EyU7iRp8XKwKfJ6AZmsVx1o324x
         4/5T9mwqFzuVDsBBlxLYSD8OtHyYMRG1QXP4+lrjyPLF+53mm/IeflDqs0P/RJ39S9kH
         /21Q==
X-Gm-Message-State: AOJu0Yzxxi4Ytw55vOM+OZubGm5w347zlnHqfpqUK0W8QlqHE/Mjhzud
	3AnQlghhWUXEevV59qWEdevO4cITFJPIJ6R4rKjHeTigZSDVbzkn26jkFwK1FmvzRwOnnVX3Qxr
	3mWXaPwPTD+0Ub/q1MO+tJg==
X-Received: by 2002:a25:5:0:b0:da0:3510:d46b with SMTP id 5-20020a250005000000b00da03510d46bmr6598064yba.52.1699906487808;
        Mon, 13 Nov 2023 12:14:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtyhAPtrfBL5j0rs4OChIjX0J0MQ7pAdoQ6mY8g3IfqhpmTKneVz9ovn0oCERZBj6Wc4LsPQ==
X-Received: by 2002:a25:5:0:b0:da0:3510:d46b with SMTP id 5-20020a250005000000b00da03510d46bmr6598052yba.52.1699906487554;
        Mon, 13 Nov 2023 12:14:47 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id mg3-20020a056214560300b0065afcf19e23sm2297469qvb.62.2023.11.13.12.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 12:14:47 -0800 (PST)
Date: Mon, 13 Nov 2023 13:14:45 -0700
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
Subject: Re: [PATCH RFC 11/17] iommu: Hold iommu_probe_device_lock while
 calling ops->of_xlate
Message-ID: <5qix66x7f4mgnnylgy4uv2g5oeqxkwvdkrbleyxxfw3hlrhsth@fsqukzhyal6r>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <11-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>


