Return-Path: <devicetree+bounces-140145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3621CA188D2
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 01:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D81F11885B26
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 00:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04594683;
	Wed, 22 Jan 2025 00:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="N2RsaScM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023B4175BF
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 00:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737505168; cv=none; b=EBIC/JMQ0pewsVXO73jz8T0eK348uekoWm6puALuoSrf+2t9mSwwyIxvqBMrji0Pj9zMTURbWL9fKpjv+LO3lP0r+KhSa/z/vPU6pFTvb7r3cSMQVmxs+UAOI5y7hybK3dI45dlkWkyC7TN2AYxutRS/UavIBMJNYmvWy6EJe5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737505168; c=relaxed/simple;
	bh=ruX+n2T+6DZMna4jhh1LLuxJ/3MDS9cVn5e1zJuBUzs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TAVI+q8bGL6QrFwrbgA6J6F0GLbYF36qMpGSEu7CjmPqP6q//sxTqWeIkdchMbrGMevkoyM99gZiG0tzSTvEI+WROLvi59yqICJxz13t1xBcdOw6T+lDBeRTD/HglGJwn8YNKsk0Qu2S6sqMprkI/pJHn79F6rgZjLoOdPIxESA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=N2RsaScM; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7be49f6b331so581454185a.1
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 16:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1737505166; x=1738109966; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LXghlfhRrFCx/sGoC3oMAY0O6HNgyaJ/L03L6lreXxo=;
        b=N2RsaScMqeoBL9Zrd6ZGgHGFJXegHjotqVYZsQjEQiNvCwqBxiozs3pmimW2FINxs0
         cjrkzM5fDXE41Ms48Z9f6PYKvgOp2nOotKPt+ZufN+NuBZEoNUeqeoJ9OrvWFUuedNtP
         rkNpbgd41h3jdt3Te9C0KU5p18z9/j/P3VgfVXO7Zx4l2M8iTMZvSRShwY2mSY+k4YEd
         ihVNrnafc25Rrg2xSsEosdRVMR8KP6djD6S8AuKtMXSaEjpn9z5YrGrlkwLUzYUhJffk
         U5jNmjj8qACRwppYTP+H9vMcGOgVcB6gkW/YiP8hMb3ZpVq6txTw+5ul3tAN8mLakZ4o
         3qmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737505166; x=1738109966;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LXghlfhRrFCx/sGoC3oMAY0O6HNgyaJ/L03L6lreXxo=;
        b=w2P9v+ebKxH1MfwlPT8ilcznNEjryqpNrztIa6Ne5kwKhYUcFpGxe9f/aYJvecMdTM
         8FoC5NRAUtr88cge4BDfBZ0kbZw3AFVqlAqUkBFi9NFaBK/3v23YxYk97vYsh0E91Bql
         a5xtQ/3NnMvpQ/FkTgSP8HdZxdyREKN+nxyaUwFaW+om/nhXrg25g72YHR6ErFTD6cxH
         o+wvGub1x4Lpb97v/GPpRcA0P6etPKkAimq2U6kczCnlTMs1p2a7PQyW9hJrcl0mZmvc
         nt0e2qSIPeAziBjdJ3dFJBXPTkKktblnSJJ8rkt7+wAeouL7RACCJ2iphl4Rtbo7/oaj
         FUXw==
X-Forwarded-Encrypted: i=1; AJvYcCWN3b2D7HmGfAOqHnHcOOc/Xb2NHxE5gnrySN4FGFDJ8JXCXFwNgL7rxMuuavj2bGycAxcQ2lghQLLL@vger.kernel.org
X-Gm-Message-State: AOJu0YwaUkNeD4wElEbuCHRpC+LQHLY0RVXDbW3CJidZtV7PyNB8dbXB
	EwSL9lZiehzQkYUpTuaJiGFx8ljqqAQ0iC/BbFW3pEjBdTNY3mP09Go/oyMgdBe4R+oqiTnQGwG
	x
X-Gm-Gg: ASbGncsAUu0ejeQ/kKFDhXndP6wzR3UmUi48aNsA9/G9AoRiCrzNzk2r069Z/mmxclL
	MMXa8xhEmlj7nC53tjzlh/2MVvlcKke+wuNbL/9b7q8pNxet6U3htf515ORQ6dqshmgfwkJjdlf
	ZuBs63j0PJ8h9wszFO1ZIv8uiZqpQou98sARSiBlkWflWAt9z8+b6n29efrHAQ3EYftseyfGHXy
	jmej4n0XNOS62vRcAsyHGC06IuU+IOaU1lyk+ffjBsN
X-Google-Smtp-Source: AGHT+IHoWfQLXBi4VVc2RH/uW0uLrxtbCGBc+6ctACTGWHOSsmF0DObwhxass5GjF3fYnabLc9/BJg==
X-Received: by 2002:a05:620a:440b:b0:7b6:cf60:3973 with SMTP id af79cd13be357-7be6321c80fmr3167063785a.23.1737505165882;
        Tue, 21 Jan 2025 16:19:25 -0800 (PST)
Received: from ziepe.ca ([130.41.10.206])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7be61473bc5sm605450085a.20.2025.01.21.16.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 16:19:24 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1taOSq-00000003lzE-0J9M;
	Tue, 21 Jan 2025 20:19:24 -0400
Date: Tue, 21 Jan 2025 20:19:24 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jacob Pan <jacob.pan@linux.microsoft.com>
Cc: Shyam Saini <shyamsaini@linux.microsoft.com>, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH 0/3] make MSI IOVA base address and its length
 configurable
Message-ID: <20250122001924.GT674319@ziepe.ca>
References: <20250116232307.1436693-1-shyamsaini@linux.microsoft.com>
 <20250120142643.GM674319@ziepe.ca>
 <67901659.170a0220.20b206.f1f5SMTPIN_ADDED_BROKEN@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <67901659.170a0220.20b206.f1f5SMTPIN_ADDED_BROKEN@mx.google.com>

On Tue, Jan 21, 2025 at 01:49:10PM -0800, Jacob Pan wrote:

> > On Thu, Jan 16, 2025 at 03:23:04PM -0800, Shyam Saini wrote:
> > > Hi,
> > > 
> > > Currently, the MSI_IOVA_BASE address is hard-coded to 0x80000000,
> > > assuming that all platforms have this address available for MSI IOVA
> > > reservation. However, this is not always the case, as some platforms
> > > reserve this address for other purposes.  
> > 
> > Can you explain this some more? This address is in the kernel
> > controlled IOVA space, there are few ways a platform can impact this.
> > 
> > How is the platform impacting it? Is the non-functional IOVA always
> > reflected in the iommu_get_resv_regions()?
> 
> I don't know the platform impact but just to clarify, are you asking
> whether this non-functional IOVA is also under IORT RMR or other FW
> tables? I don't think it is.

No, I'm asking how can you possibly have a HW platform where
MSI_IOVA_BASE is unable to be used for DMA?

MSI_IOVA_BASE is 128M, and most ARM platforms put DRAM starting at
0. Most ARM VMMs put DRAM starting at 0 too.

So a platform saying that DMA to 128M doesn't work is pretty broken,
to the point it is hard to believe there is a HW issue at work here?

> But this special IOVA is reflected in iommu_get_resv_regions() the same
> way as the hardcoded MSI_IOVA_BASE. So each iommu group's
> reserved_regions should show.

That's great

> > Why not avoid this conflict in your platform software?
> I had the same question but it seems there is not enough difference
> (than the standard smmu) to justify a platform code. i.e. platform
> specific iommu_get_resv_regions(), is that what you are suggesting?

And here I mean, why not stop marking it reserved in the ACPI/DT
inside your firwmare or hypervisor?

This smells like some SW component using the same address Linux uses
for some odd purpose. Just change it and let Linux keep using the
address it wants?

Jason

