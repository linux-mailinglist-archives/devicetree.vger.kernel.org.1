Return-Path: <devicetree+bounces-181003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA90AC5DF3
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 02:04:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B3324A40FA
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 00:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7237428E8;
	Wed, 28 May 2025 00:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="cg+TgAsz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8FB1367
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 00:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748390669; cv=none; b=UajraJOQ5kOpfOanbGi1NtJt0epmuolBpt1iDZzh4cOs/tg5ViPwPeAThU26d1lQjHXNr/+zrCtwSoKg5HaTJVxR5r7OUvU2u0GO6n4a3abVG8sseTZncjdfT+M6/uIOFHNZ71smrZOtrl1OC3rrRl1IozN9P03wDaGkjfENXgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748390669; c=relaxed/simple;
	bh=U504ZGWiMUGIevk6ic8kx386W5qtbTlb40apuZeZfFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=boRVqxfH1eOXXC7E9i1iPS60maVBLE/ApY+YOuFtUewWIHN7mXeSXLXd6gqQM6XY9lFmYNttMq5mBL2bAo9xtHZRqiN6hjrdsThfESnBa1oVkJJkP8ZmgnApsm7V0MmF2ZrvOfgsTNitbnbC/yf23Iprn6GRW1ynU4MSmtPtl1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=cg+TgAsz; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6fab5a9a892so12525286d6.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 17:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1748390666; x=1748995466; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fr8j2ABRcVMveLyV9vmAho6qlH2nVGxwxz0sFNAeQYk=;
        b=cg+TgAsz7lUg3GwmmwY70nk89wCh8+hsf+nfzUJQe4rQ3ldSJlPbNapLsWAUe1E0uu
         mhO0Vop1/mEmnOSlKuoUY7E7VGGelNrr8gId5v/6ppV0MFcYcCi0Z3EEzX8lwRuFiPcY
         t4HV65F+ER4UeEdanlBOj5p4JnQvMA/ODLN2JCO9Jl4TGu6+wJuiW+KVakmNGbWrJVjS
         30dLTtmQQFrq25LzhMttTwl3smsTyLNdhttttDqoM3OhK4U0zbFyFwLK0U2VHGKUBgnr
         fR93U6/EyMTsKrCdrxOf378n1l4C8aIlplBfmWHIicON+ZWLQ0PMXUikFnlTlPSXiNvS
         ChfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748390666; x=1748995466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fr8j2ABRcVMveLyV9vmAho6qlH2nVGxwxz0sFNAeQYk=;
        b=m8A5s9AmkfBJeQ6mO+xk85jOR3ewLNBL83R0eTMkEL1tNb13CNwvSusJhNPNUAUmOh
         amPNg/RbRzslrd0LdM3BzPhV8qGCb/U1ZQMMoEOEyAO5u58PqOCWUSd+NOoYJQLFfYoL
         ykb8iL1g9TqkQsiuhygWuQjXZW9wZIjHEzBT5/2cUkkPF/WwoBkZmz1wLai6RU8koW26
         1swkK67I7CUa7aQGFxI04KL2jyiNyFekcXH2eJdSUL1q+jP1skBjEhyhUbIoxfNu0UD8
         7ExNzYDVQWZg5N5m4QVExIa4Mk9LnE6nVDiI3hOe8W1CpoLm7iv10lcVGmuytg0zPk5D
         jNkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVWwyj7SBWZ1rab+8hqRqKz7CD+4awQt7BgaF4MDZtMvrzB8jDA84lebtIhqbVDAVrxIbhMJbKKT//@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4kYEeTJqEVxvsGpifdfqnrbxfRkiqSEyXWctm0E4La3ddKxCZ
	PEF+g7/1fzg/lwXPAmQ1oYAQ8lRPR7omDxjUiSIAfDQU2Khfr0AS/kEgMtYJGpLLmtk=
X-Gm-Gg: ASbGncuUuX1WqNF59U7CqbSNtnz5vSQ6B487xMmTHRp5SWUMZVC9XBKpv3ixEekR4Kk
	E3kSXLzgInb7jme+Q6lpm1VGnZufe7Onkn6mpqu1rdhJf5F4U6PXuT6Xhcwo/LysdWJJzSBgcJU
	8fwKSnlXdjfYRogEnSuzfaHXRhjA2L8WhOegHM/+9UueZ1zzRZprlFxxt82n4k4/s4H0GePnZYi
	LBke/eg/yXks2kgeVJzrE1WwzjJ2Vo1baMtnJ/3+d/+4KZlIakKX720aCOLdbEFxrJi1g3hLbcJ
	AbEDik/YJaOukbConJOFo1Qzbz7UTEahvw0+53f2VjSJ5EuzxZEw+6uwmdPNfwCrDbhGaQqSIl3
	oZQWYdlPS4LrWZYj3Io66AahukZE=
X-Google-Smtp-Source: AGHT+IErBe5nbyKYqWU9JIckHMVhK4xaI7/PP/tH903bB+DJeuC8MK2VCogNXSDRYdW98d3MojQWPw==
X-Received: by 2002:a05:6214:2b0d:b0:6f8:8fdf:f460 with SMTP id 6a1803df08f44-6fa9cfea4fbmr223186366d6.9.1748390666533;
        Tue, 27 May 2025 17:04:26 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fac0bb9799sm12096d6.83.2025.05.27.17.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 17:04:25 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uK4HR-00000000fET-1oRi;
	Tue, 27 May 2025 21:04:25 -0300
Date: Tue, 27 May 2025 21:04:25 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: Jacob Pan <jacob.pan@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250528000425.GC146260@ziepe.ca>
References: <20250410225030.2528385-1-shyamsaini@linux.microsoft.com>
 <20250410230008.GA6905@ziepe.ca>
 <67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>
 <20250416181759.GF493866@ziepe.ca>
 <20250520224224.GA16365@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250525190703.GD12328@ziepe.ca>
 <20250527205428.GA14019@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527205428.GA14019@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Tue, May 27, 2025 at 01:54:28PM -0700, Shyam Saini wrote:
> > The above is the only place that creates a IOMMU_RESV_SW_MSI so it is
> > definately called and used, right? If not where does your
> > IOMMU_RESV_SW_MSI come from?
> 
> code tracing and printks in that code path suggests iommu_dma_get_resv_regions()
> called by vfio-pci driver, 

Yes, I know it is, that is how it setups the SW_MSI.

> > As above, I've asked a few times now if your resv_regions() is
> > correct, meaning there is a reserved range covering the address space
> > that doesn't have working translation. That means
> > iommu_get_resv_regions() returns such a range.
> 
> sorry about missing that, i see msi iova being reserved:
> 
> cat /sys/kernel/iommu_groups/*/reserved_regions
> 0x0000000008000000 0x00000000080fffff msi
> 0x0000000008000000 0x00000000080fffff msi
> 0x0000000008000000 0x00000000080fffff msi
> 0x0000000008000000 0x00000000080fffff msi
> [output trimmed]

But this does not seem correct, you should have a "reserved" region
covering 0x8000000 as well because you say your platform cannot do DMA
to 0x8000000 and this is why you are doing all this.

All IOVA that the platform cannot DMA from should be reported in the
reserved_regions file as "reserved". You must make your platform
achieve this.

> Yes, i tried that,
> 
> This is how my dts node looked like
> reserved-memory {
>                faulty_iova: resv_faulty {
>                        iommu-addresses = <&pcieX 0x8000000 0x100000>;
>                };
>                ..
>                ..
> }
> 
> &pcieX {
>     memory-region = <&faulty_iova>;
> };
> 
> I see it working for the devices which are calling
> iommu_get_resv_regions(), eg if I specify faulty_iova for dma
> controller dts node then i see an additional entry in the related
> group

Exactly, it has to flow from the DT into the reserved_regions, that is
essential.

So what is the problem if you have figured out how to fix up
/sys/kernel/iommu_groups/Y/reserved_regions?

If you found some cases where you can't get /sys/../reserved_regions
to report the right things from the DT then that needs to be addressed
first before you think about fixing SW_MSI.

I very vaguely recall we have some gaps on OF where the DMA-API code
is understanding parts of the DT that don't get mapped into
reserved_regions and nobody has cared to fix it because it only
effects VFIO. You may have landed in the seat that has to fix it :)

But I still don't have a clear sense of what your actual problem is as
you are show DT that seems reasonable and saying that
/sys/../reserved_regions is working..

Jason


