Return-Path: <devicetree+bounces-15453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 702BF7EA42C
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27B87280E56
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC1A241E5;
	Mon, 13 Nov 2023 20:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FC7cvOMY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBF8241E3
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 20:02:46 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 552FED6E
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699905764;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=x5sbsbZrhM7njh7UJ8Gfj3jbjPzQiV5xODIk6atjKoU=;
	b=FC7cvOMY36DbgQF+XdGUaq5cSkrqnGGK8IZ5rJQqIIfaIxYX+Mn86Wz7CycVKWpBCKUfuz
	bcYI/a7egw3rPRjnbMrvjM4Su5TfBp0kxvoVe27CFAJ4Z3/jA18aUyGsKozAbK9ssl+Yso
	27Xgx5Y3DlLNQDeGasEJTIBsGoXsR9g=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-662-QWioqHHFOy2HvzvlTSDFig-1; Mon, 13 Nov 2023 15:02:43 -0500
X-MC-Unique: QWioqHHFOy2HvzvlTSDFig-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-670b675b2c5so63477226d6.0
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:02:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699905763; x=1700510563;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x5sbsbZrhM7njh7UJ8Gfj3jbjPzQiV5xODIk6atjKoU=;
        b=vzuV/jUmrE2knJzM0dSw/Zlj799FbpbUlTyYBQxK3XrVd9ejybCMnRk0YkAO4rmX/Y
         ztfPvPDfhr9jpF0GK8Ec+LsVLx3dVFyySF+H7hgwCmt0X11Yh4Y4vdES5GpXNqrmZrdY
         poc0NKbWmNPGKSAbB1Bd/wyuXgIQGXvFXOnddYtnFyFpRcfmQ3t6cynFXfa+yYc6WODS
         Kr+8fgbyGvaXCuBoK0K7gJJRaGwADAs7aAKPGmiIEobvz1wr2tujxruCZCrnkhi5UsGe
         7maZO84pGCG5Q85Qagpkbz/q86+mXySUJH8E1IO4sReTKU6dCrqCBMbwBXIhSQ7Tv/re
         FtAg==
X-Gm-Message-State: AOJu0YyepojZ/O57dffBKYqpiSc8Vn1kAn2h655m/2Qhi5Z/bw753E+I
	Q4ar4yqo2bCN5cQQrl2YpK3YMipRmjYmq8w2jcHCBzXafftElQQieZgLiqN+5PCZQOomffy1gQh
	ibyHdloLwstmNwA8owvsKEw==
X-Received: by 2002:a0c:f9d2:0:b0:66d:9970:6464 with SMTP id j18-20020a0cf9d2000000b0066d99706464mr233542qvo.13.1699905762795;
        Mon, 13 Nov 2023 12:02:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVvfJ/8QycB4sitSkyNc9BJr+XhgbESVoJGYkT8lKAjf1cMgXzof7Oqc5lCEmlPE1oL2APNQ==
X-Received: by 2002:a0c:f9d2:0:b0:66d:9970:6464 with SMTP id j18-20020a0cf9d2000000b0066d99706464mr233490qvo.13.1699905762358;
        Mon, 13 Nov 2023 12:02:42 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id vr2-20020a05620a55a200b007757fefea79sm2097337qkn.130.2023.11.13.12.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 12:02:41 -0800 (PST)
Date: Mon, 13 Nov 2023 13:02:40 -0700
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
Subject: Re: [PATCH RFC 12/17] iommu: Make iommu_ops_from_fwnode() static
Message-ID: <gg6ecoukkia32t33vjfunny4y54pulz6k6zfkfpp6nahav4otj@z6e62pbavceb>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <12-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <12-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>

On Fri, Nov 03, 2023 at 01:44:57PM -0300, Jason Gunthorpe wrote:
...
> @@ -1044,11 +1043,6 @@ static inline int iommu_fwspec_add_ids(struct device *dev, u32 *ids,
>  }
>  
>  static inline

   ^ was missed in the deletion below

> -const struct iommu_ops *iommu_ops_from_fwnode(struct fwnode_handle *fwnode)
> -{
> -	return NULL;
> -}
> -
>  static inline int
>  iommu_dev_enable_feature(struct device *dev, enum iommu_dev_features feat)
>  {
> -- 
> 2.42.0
> 


