Return-Path: <devicetree+bounces-181634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C41C9AC823F
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 20:38:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F3A4A2732D
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 18:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ED181362;
	Thu, 29 May 2025 18:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="bSL4FDQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E9222F748
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 18:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748543900; cv=none; b=Kk1Oo3zKntqKhPqGuXRr14T8zDErPeiDux2yeQSFCprsvYOAoJIGiF+ouEllN+YxcLkWe6X34faNBKE9od85FKo4tlGTRJTCN/8gWbh0FMHQOoPN+NPGjqYtrDQu8fB2jMQjGjRGok/JuXmji/464QP+cIwGdz+1cppNVR/AWKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748543900; c=relaxed/simple;
	bh=8fNMh0erOUyhYdLwt8SaHfy27gRj1t07hi2Ygwy4++g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s6iWwCdcSdLCv3OkaLFEAsZGeptdJAkhL+c9EV2RKJzBUFkpItjxw+DbswpjrrwKihWOq5BUJOW6rBO3HMQ9mNQ1mfH05ZOuUTBHiAjl0R8yBSxfnJI9wu9btKyBlOdO/JWwk+uLI1TPv2zgMVd++zRz5R1O9ZLZbSj8rPM8aBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=bSL4FDQu; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-476ab588f32so15325451cf.2
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 11:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1748543897; x=1749148697; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j6U4iis3R5XjOi+aCw7RCiw2bmEOQJGCtpg1KsnzGR0=;
        b=bSL4FDQutORa8gSkrsPLZpU373H+iS0Jf9K2tDKWjkFDHs24GeMvUzOCWoHsXxvYjA
         Ge8UYPNOXOyKRX4LK7oOhacL0cJhSfEH8opdGapodoICvr/DGC9VGqRgJr6LT4/Awj9n
         HOsTzEkVqoeFYt4EPEV6UglU8BMWGI/LTzVkz6rvcwcUSmDS4cwYFO/7ohrv9QU8T9pE
         5oezX9ri1l19O3pPBLH3FjsnnQhi/x+nQmV7dXrvS1HYdUwz0Ty2jOMPBEY07T5XAx0U
         XcDpGav6ggHq9kJtKUFmlOgf2p+NBkVXZMnhUYjdUS9/ZCRqzDyfciWDZss6ylApvYw9
         sDOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748543897; x=1749148697;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j6U4iis3R5XjOi+aCw7RCiw2bmEOQJGCtpg1KsnzGR0=;
        b=RXVsep5nS525ZMcBnkK8qFvpGa9VwoAV5jIXkzTHEGj6Dr22hXEAtd249D4sdkvVFN
         2b2q3zJZcTZvbvjzFUomYi+k+9xfO4CCW/o3v+ltalhMJ19ZG8MAVaZWplda3kMXJDKC
         yYPXIgY5Ltw7X79HSWtT3nywyvM53qQL63NXHH2kP91kDDaSviyZN+VYs22HniV1HC55
         Pq6oLVfVoEqFNB12GMkVGDaGoYt8oaZVCxGKnDpVntAGWqM2G70YYEUWL4TCqweNG13C
         h4NsjEf1pUYcAMCMDJayB3AXrehzHq1tt/3yhw7d1GUXWTdUQmE6Hx11dvLnLNPpwKeI
         KABA==
X-Forwarded-Encrypted: i=1; AJvYcCVHL85t1ZmJ/nh900+z4yOw/N9Byhfd9VCo9S9VclcuPY54Q1FhM2jZAMNrru36vwp0U0AN/zDlqYJ9@vger.kernel.org
X-Gm-Message-State: AOJu0YxFu4b5PybhbXFDPCCwUsYUnsjP5xYN9DtqbHkkwFbBllLCWh7y
	eHH+qJASV42wc3eTBVZjFwcUBR46npnICthuOCQNC5FATygZU1rbzV7UDk40HAu+Mx28KSPAPPN
	kh05t
X-Gm-Gg: ASbGnct8hQGgcUOIn4C6y+p8rLEglTZlLNojyLV0mFWpWjER4EXQvRE7Kmo/zNOJZSS
	Nw5Jr/dFT60FwFjMKLJ0jJhzv5OZMQgHv4C1QbmyydqZc9MKeRQHxSmVzMrun+c3hcTGUcBZ3ns
	S0FSExPC7wXxxEERA9b757NM5us9IbM3+i0KYJK/Wxzz9IqpKyYjhgcNweJirfTCfcW1RF2aUz/
	8uAL8Od4hGVj+eiQxpZxOfjrA5my45klqmwRQyhfmIPrevPhrlaWWE2wsAgA0A1bP9JGcMxxOKz
	AX73Y/aps5oKm5dUiMfhiZmG+57MCGMNwg5zGH2IzBH5u8d58q/SOu1jfh2WWx068NxcHC+vg1/
	5BRrBhMzES/dCBzTyiZpAB8TaoAU5E8ENDl4pMg==
X-Google-Smtp-Source: AGHT+IEg275FMxde1zTXTRnOX2l5C2eqH11zCR4cQAT539QqGLVvAFWBmzNkj2MQGivWQQr0ei8qBw==
X-Received: by 2002:a05:620a:4711:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7d0a2013056mr95749785a.40.1748543896682;
        Thu, 29 May 2025 11:38:16 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d09a0e3fdfsm122585685a.9.2025.05.29.11.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 11:38:16 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uKi8t-00000000zty-2gm0;
	Thu, 29 May 2025 15:38:15 -0300
Date: Thu, 29 May 2025 15:38:15 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: Jacob Pan <jacob.pan@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250529183815.GA236098@ziepe.ca>
References: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>
 <20250410230008.GA6905@ziepe.ca>
 <67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>
 <20250416181759.GF493866@ziepe.ca>
 <20250520224224.GA16365@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250525190703.GD12328@ziepe.ca>
 <20250527205428.GA14019@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250528000425.GC146260@ziepe.ca>
 <20250529182219.GA20289@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250529182219.GA20289@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Thu, May 29, 2025 at 11:22:19AM -0700, Shyam Saini wrote:
> > All IOVA that the platform cannot DMA from should be reported in the
> > reserved_regions file as "reserved". You must make your platform
> > achieve this.
> 
> so should it be for all the iommu groups?
> 
>                 no_dma_mem {
>                        reg = <0x0 0x8000000 0x0 0x100000>;
>                         no-map;
>                 };
>  
> i think that's how we reserve memory in general, eg: ramoops
> but this doesn't show up in:
>   /sys/kernel/iommu_groups/*/reserved_regions

I don't know anymore, I've forgotten these details about DT, you will
need to consult with DT experts..

> > But I still don't have a clear sense of what your actual problem is as
> > you are show DT that seems reasonable and saying that
> > /sys/../reserved_regions is working..
> 
> /sys/../reserved_regions is working for certain devices like dma controller
> but it doesn't work for pcie devices and its vfio-pcie driver calling
> iommu_get_resv_regions() but we don't have dts node for vfio.
> I have confirmed this about pcie on two different platforms, it seems to be
> OF DMA-API gap that you hinted above, happy to work on that :), it would be
> great if you can share any other reference discussions to that problem

Some of it was around the dma_mask and the ranges, but I'm not sure
exactly what is your issue here..

It is very important the the dma-iommu.c code also knows not to use
the non-working IOVA or your system will be buggy and eventually fail.
If that isn't happening you have a critical bug beyond the SW_MSI
issue.

The easiest way to fix it is to have reserved_regions report the right
stuff.

> When i specify this for dma controller:
> 
> 		faulty_iova: resv_faulty {
> 			iommu-addresses = <&dmaX 0x8000000 0x100000>;
> 		};
> &dmaX {
> 	memory-region = <&faulty_iova>;
> };
> 
> I see following:
> $ cat /sys/kernel/iommu_groups/y/reserved_regions 
> 0x0000000008000000 0x00000000080fffff reserved
> 0x00000000a0000000 0x00000000a00fffff msi

See, that looks better. You need to make that happen for all the
effected devices.

> Upon investigation, our hardware team confirmed that the memory region
> containing 0x08000000 is already mapped for other peripherals, making it
> unavailable for MSI usage.

See, that's just wrong HW design. The path from PCI to the SMMU should
not have any other decodes on it, isn't that SBSA?

How does your platform work at all? Isn't 0x08000000 physical memory in
your address map?

Jason

