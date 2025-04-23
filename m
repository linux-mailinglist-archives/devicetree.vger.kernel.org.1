Return-Path: <devicetree+bounces-170039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0926AA997B3
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 20:18:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C8611B83175
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 18:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEBEB28E5E0;
	Wed, 23 Apr 2025 18:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="mw0BLyt3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E5C265CC0
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 18:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745432298; cv=none; b=u8aKCPzUjqta4I2hSmZTzQ2AfE3rEuoUr1rgd67RM7SI7R/0RtNMhMvAkHFQf+GGY95OJPEwUNeK3OjqyBJKiQGnN0hfm5gBeu9ymg1iLWpPvTdg/ywPIKQ0fU8FD1KEEbNche9KuY88ZIY2Om6H4EmqwPmtWeyEA1zCTQifsU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745432298; c=relaxed/simple;
	bh=4Lb81w2s/iHKlg0tr1kLg33vsHa3w3DDNgPzLbNjD+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PbH0/Oo6M1S2rEoScZeTMdLA1+Lc90O9prYNKF5MQ/Sy8ux44N5VPUqPCiMXW0uDU06eJLtJPpVeEt1W1DMQbUssNw0fD6uDhAhNDVAaJlvOSYO5G5FHzAqwoorEhhlNepMOmNDahKUsCrKx4mmRLoS+bY6ckPGpoXxKCwBGKLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=mw0BLyt3; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6e8f254b875so1912326d6.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1745432295; x=1746037095; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S2K4Lg9UXWodayqGkEaP9bm9sDSNteHJq58dHhFg6dY=;
        b=mw0BLyt31cJrngz/aBlEqUNCOkBB1gSFAicpqFxsnuU55usihLqj9CppOCLuDQTA44
         QGx2p6pdozkZhZRlIGlFVwDs2dtgpe6fKnSF94krJoWMELaEUPODqoGDeQkQzFCw7fMV
         18e8lwSuBtKVpxOxM6QBw77NM9mD/y5Y2FmSeg4RArtyuojpdQcARSL6ApYsWQ+PskiA
         VYLc9AXF9mmC8s11Eb3OYyph7ohBk6xnHFnCP4/3jXhK/bh74E+StCO4Lj+LW7u56WRs
         9XeG6U9hTlaw3CySXpgHG9sCEMP7zHmh4QNZbhH5sLPkW3k0S9B3Insiwp1+IWlISncI
         SbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745432295; x=1746037095;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S2K4Lg9UXWodayqGkEaP9bm9sDSNteHJq58dHhFg6dY=;
        b=UTF+Mu53jT77383Ca6Xpt/8Tzndx0W1GAYakYOrsRKa24/Sf/cZdLd6WkkUajn8MwT
         /KnxA/untQfFcn5qGn2SXMTT6f7VPWUeEbwG7T6PjGmjeF03/mfSWmLN5baVu6GczKxE
         unKsUXcXeDhBJhGvQS+7fi2YReN8mOZHa3bmhk9xIEZvXIYP+NbQsFCBoaQ7neZzjczu
         MfosIz+mwhiHrkalGWEbso0NAlZVh7loRdePUjR7JUEkinhOrrN9z/iZY2C5iLXPJgBl
         sjoYRsetWmnWBZzzmLKKs12jVTttl9DI58G1jZ791pZJo2rWpDvnSB9E2WTH6VuJfxtk
         pw/g==
X-Forwarded-Encrypted: i=1; AJvYcCWq4yZtjPQBw5W+ADKXyaFnqW94ZWopKjYzN6uYPP7jQkPgHIf68MpV3fV0nPLmx/ZiKM3TKs8paU3t@vger.kernel.org
X-Gm-Message-State: AOJu0Yx88/3jvU63dAcKqLmRWjv7aMKgLoFmDYMQRg/brAU9vQPQqXIO
	2MQN0zfUOZNcG4gDbdAxZeq4p77tZzg+VVTziKTojlBcUjxnQpIXWuVFXyv/YAs=
X-Gm-Gg: ASbGnctgcGKQQwVt8hLwgkCEe8kcY5UBZzxQePIK6MaeyR6VretA0p5v4qWG7B1+oOL
	+j5DmEdweErSP0qUHvTUhIZ+XWonLV0dG5xRdXguA6jV+RrxMiUzY12rm+JNPXI307jSG8yDRBT
	FCIeUrdfI7rV7wJ8nsJdbP2Bq3zPWtPzdE+/CpEtIZXWhL8t2svfryIRcqeKZyo827wMhCKEDXW
	Xjv5djG9sQYni6cpBYw+Y7pKioqkri4M1DUHDqb6EYAelhSAnmR4f3Rrpf2jlv+bxiGtmldnr0f
	iTfHbcqSK+AI2BRiDoGBBCI0YVKAzl+ryHjTcOADSLnGGUSIrNncFcosKVEBROoD3xsDJfkFszz
	0E4ieiDtQctHvSJ+eCkg=
X-Google-Smtp-Source: AGHT+IG4/MsY26Rj4xYm6pWmvlAPuVFdcPLdJFOh3iEBlJVLpm+B1c5dpvU4P4SztDpvWCyGwRESRw==
X-Received: by 2002:a05:6214:21c4:b0:6e6:5f28:9874 with SMTP id 6a1803df08f44-6f4bed4600emr4321856d6.2.1745432294768;
        Wed, 23 Apr 2025 11:18:14 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-219-86.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.219.86])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f2c2af1433sm73395536d6.19.2025.04.23.11.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 11:18:14 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1u7efl-00000007M0V-3VVh;
	Wed, 23 Apr 2025 15:18:13 -0300
Date: Wed, 23 Apr 2025 15:18:13 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: William McVicker <willmcvicker@google.com>
Cc: Robin Murphy <robin.murphy@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
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
Subject: Re: [PATCH v2 4/4] iommu: Get DT/ACPI parsing into the proper probe
 path
Message-ID: <20250423181813.GU1213339@ziepe.ca>
References: <cover.1740753261.git.robin.murphy@arm.com>
 <e3b191e6fd6ca9a1e84c5e5e40044faf97abb874.1740753261.git.robin.murphy@arm.com>
 <aAa2Zx86yUfayPSG@google.com>
 <20250422190036.GA1213339@ziepe.ca>
 <aAgQUMbsf0ADRRNc@google.com>
 <20250422234153.GD1213339@ziepe.ca>
 <aAkj5P1I-e9lylIU@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aAkj5P1I-e9lylIU@google.com>

On Wed, Apr 23, 2025 at 10:31:16AM -0700, William McVicker wrote:
> On 04/22/2025, Jason Gunthorpe wrote:
> > On Tue, Apr 22, 2025 at 02:55:28PM -0700, William McVicker wrote:
> > 
> > > On this note, I was looking through `of_dma_configure_id()` and am also
> > > wondering if we may hit other race conditions if the device is still being
> > > probed and the dma properties (like the coherent dma mask) haven't been fully
> > > populated? Just checking if the driver is bound, doesn't seem like enough to
> > > start configuring the DMA when async probing can happen.
> > 
> > I think the reasoning at work here is that the plugin path for a
> > struct device should synchronously setup the iommu.
> > 
> > There is enough locking there that the iommu code won't allow the
> > device plugin to continue until the iommu is fully setup under the
> > global lock.
> > 
> > The trick of using dev->driver is only a way to tell if this function
> > is being called from the driver plugin path just before starting the
> > driver, or from the iommu code just before configuring the iommu.
> > 
> > Given that explanation can you see issues with of_dma_configure_id() ?
> > 
> > Jason
> 
> I think the only concern is when a driver calls dma_set_mask_and_coherent() in
> it's probe function. If we can handle that case in an asynchrounous manner,
> then I think we are good.

You should never get to a driver probe function while iommu setup is
still concurrently running. That would be a major bug and break alot
of stuff.

Jason

