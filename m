Return-Path: <devicetree+bounces-13912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B66E77E15AD
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 18:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EACF281360
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 17:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A86E168BF;
	Sun,  5 Nov 2023 17:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IqXVHE7t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B2D16406
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 17:55:41 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CAEDDB
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 09:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699206939;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fd/39Q+ldoVf5VWKnHQ/ghXrqcDy2syROa9KrYZuz/I=;
	b=IqXVHE7tfpxVOeimPXn4vyvH7OY2t3kQqxvtrcPGQru73zPBo30S+fpExZk81iANyfk6tv
	boEQWrMeaDpMj0U1KyE0BeObcS+QyzrEbIfSfyZeZh4N1wpGH4GP+kg0Dqdu8fPz5NfynA
	LRW05RH0mhNQrWV3FT5v268dz1WrbPI=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-480-s7G8BuiUP5GVqFVXGUyl7w-1; Sun, 05 Nov 2023 12:55:37 -0500
X-MC-Unique: s7G8BuiUP5GVqFVXGUyl7w-1
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-6c334d2fd40so3305201b3a.2
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 09:55:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699206936; x=1699811736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fd/39Q+ldoVf5VWKnHQ/ghXrqcDy2syROa9KrYZuz/I=;
        b=qDi59/U11LWgOqh9eETY0WNLHaZe6oqTCi30scKa2C3iDkSskBFBg6ey7cRCDreivv
         Mz+el6D/RcGCEu17+H2OAlq9fpnHB9hMZHglgaCrg+Z41QE3AGWPclitu0143UTtSUyJ
         qx3S1gnmAis2NZ6wfDVtqeESeTtSDcX8rjPBm1wRqI5UIFRRgmE8kdhgVW/0IakXvALb
         yDKhLTAKeMsZoUWqF2TjbS1RidtH+L7kFdchogNtLo3yg4Ejrsqapg89QgZ3+DsuClRt
         ZbmNvzdisvvRgILP3ru0d48ve1wgBXJLqVZL7qV76GUIdz9AdWf5Op4c1gvTHOaLfC9X
         k+sg==
X-Gm-Message-State: AOJu0Yw87aaXYFoFJZg69EMqbSFLzh0cwDOtXmNtb/g543IGSIkAOsl/
	RDGh5eRMszSR+G1Mik6SLZo0TvePNbzJ/iJgQQNSgC6zvwUa1O9P2EPYEBpJXJqR66vkoc83hqw
	9WKkvUYvhUGEThi//a917Og==
X-Received: by 2002:a05:6a00:14d6:b0:6be:4e6e:2a85 with SMTP id w22-20020a056a0014d600b006be4e6e2a85mr36240600pfu.30.1699206936709;
        Sun, 05 Nov 2023 09:55:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFk2pBjd4CJ2rMONJoZ1WOco/rxQ9zWrHoyH1EeQbHLv9sJvLzIuEzeP3ARVcsr8N00dE/hMg==
X-Received: by 2002:a05:6a00:14d6:b0:6be:4e6e:2a85 with SMTP id w22-20020a056a0014d600b006be4e6e2a85mr36240554pfu.30.1699206936324;
        Sun, 05 Nov 2023 09:55:36 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
        by smtp.gmail.com with ESMTPSA id ff7-20020a056a002f4700b0068620bee456sm4312142pfb.209.2023.11.05.09.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 09:55:35 -0800 (PST)
Date: Sun, 5 Nov 2023 10:55:34 -0700
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
Subject: Re: [PATCH RFC 04/17] acpi: Do not return struct iommu_ops from
 acpi_iommu_configure_id()
Message-ID: <oe2b62jjtcki7ti4qw6ktzvat7eszrpm7vphgsdvfp5uwdoj3r@wc62cpauchw6>
References: <0-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <4-v1-5f734af130a3+34f-iommu_fwspec_jgg@nvidia.com>
 <xvgdxrlcpvafst6qypgwehtleaihsedgoiat6akv6au2j4xrjw@rk4dl4xbnq6o>
 <20231105132409.GA258408@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231105132409.GA258408@nvidia.com>

On Sun, Nov 05, 2023 at 09:24:09AM -0400, Jason Gunthorpe wrote:
> On Fri, Nov 03, 2023 at 05:48:01PM -0700, Jerry Snitselaar wrote:
> > > @@ -1632,10 +1633,15 @@ int acpi_dma_configure_id(struct device *dev, enum dev_dma_attr attr,
> > >  
> > >  	acpi_arch_dma_setup(dev);
> > >  
> > > -	iommu = acpi_iommu_configure_id(dev, input_id);
> > > -	if (PTR_ERR(iommu) == -EPROBE_DEFER)
> > > +	ret = acpi_iommu_configure_id(dev, input_id);
> > > +	if (ret == -EPROBE_DEFER)
> > >  		return -EPROBE_DEFER;
> > >  
> >                 return ret; ?
> 
> Maybe? Like this seemed to be a pattern in this code so I left it

Yeah, it is fine. I think it just caught my eye, because of this earlier
bit in the patch:

        if (err == -EPROBE_DEFER) {
-               return ERR_PTR(err);
+               return err;

which needed to get rid of the ERR_PTR.

Regards,
Jerry

> 
> > > +	/*
> > > +	 * Historically this routine doesn't fail driver probing due to errors
> > > +	 * in acpi_iommu_configure()
> > 
> >               acpi_iommu_configure_id()
> 
> Thanks
> 
> Jason


