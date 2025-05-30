Return-Path: <devicetree+bounces-181782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97268AC8FF3
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 15:23:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D90E1C23E35
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 13:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E2D22AE5D;
	Fri, 30 May 2025 13:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="K9QRE8al"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0058BFF
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 13:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748610813; cv=none; b=gsND8pvOfTqCVOx42/n1dUSRIlXZsMmTj5musu+cdSQUJafl2lohRB7ppXDoqhK2Yrt3gkCsjvPfJwm/Kqb+VRKHNyKMHV6Kw0aK2PY7XKRPkW0FuGrfQKPbW+PA3mECPG+gTzcN8k4GdY4BNQl+Mbx2xmXalgcp0QJH+0zC1Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748610813; c=relaxed/simple;
	bh=YzzfOkZonnNobw/MSDDNi6dFqgxd+FfGu+ZCT1wVXIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XkdExgpLSe6478dx607ws0BIhQSc5M6UPfZvDsSkmKupClR4kc/bcLWO1grzvc/sF/kFXyCyn/W7ZuRitSa499QUS+cqcTTLpe4yzNS9CHq1gkRzC7OIVqrh8RgUBLZUy4RlQyphIExR9QHJ039L1xTOCKmioE8BIziMDU2RRaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=K9QRE8al; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6f8a87f0c0fso22656336d6.0
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 06:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1748610810; x=1749215610; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XXA7FAwWEoQjWV4rxG699tTwIZ0uS94bp969KPskIC8=;
        b=K9QRE8alA5IhftA7+v4m11HazAxEbj823GpA454ZuCmrPwz4cTxFrSaEcWe7GscEED
         4YXk2ycckLl2D2exVrDrFnONyPgbK6udih7Mi17OoZ74ZxlemaEuo8KohoTgq445AV7U
         f3N/rnQpgzzK5jmUYPw8HI1Yy1apPdEXCf03RPhAdA9lKZ092Wx90qgnaOZR0RGx017c
         71Cgs9FwRcj2kdpeeUxKwk+WWbRgoLiEG3S6dJdZYuGrL3qTApzeuMj5IEqfbJoUn4d1
         7C3LyYukW+hH6wF6geHsp1qMBTNp88awoE5SWzDXJHaigQ3BN9VJJFs0AWLHC4nWjeKg
         6gJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748610810; x=1749215610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XXA7FAwWEoQjWV4rxG699tTwIZ0uS94bp969KPskIC8=;
        b=jSPDxCuWu2dzPsgmVTMxKzd1m1IGX/VyO8IPhge04QE3MmuVkRF0YJDG03IdDeGeXg
         fNkNp5/hekSAgj+L42+N2cS/nA90DebEdjT3poyB6WlTIrMJ204iCyTIlROt4EilRfBa
         RsqdsNkL2Pfl59pzSoMWpmlXJnOoApG4tyzNLTNZTrZKNO+n95QdoG+XY7IXEwRLjUWi
         q/QRG41zh/7QloTUkPsdScnUrjFp3OONCj+Hu/v3QCQBoWPTGpexHnFQZ7eQiWCxosDz
         WQqxgfqCCea39Syr2QZtvCUpPyVPJPbZZjcNSaZF8RaPD0FG7KoTAlpon8xlhhCgTZMC
         7WHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUDL1ikmmqdPjpWimbZujhIDeaCZvjBDYRC70fqc2+YI/o+YC2235sQOrZhADwjEL8ILgpVSJCbd+S@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2cdr/TRm57c9FhEuPGWfTP7JTStXx9RRW5I7tpESl/8C8XRIv
	P6Y4/OrjqM1T4cc3XRJinjgyFuf7jpYFldR4xyIGyfuys5NyKr5c7H5sDGrnD9El6W8=
X-Gm-Gg: ASbGncvaV6e7FJwQI0q2qgyOsxSPbK6Dpy1XA6hpvESnub6Pt0ILdDscpgM00FTc+5v
	XYCD2OhFBnoIam7BhDmzA6sAZXKMSg7ARmBk+IKLVhJc5WPNfzQJZUaj/wekR1jaTti8HG5G02Q
	/1cLthtsXSfToi2GMnhsma9564d31jNLNO8lU1dQkJdksY5b1JPfzdoI3eK6+/GXrQBVughjCDg
	xdf7uGAw77tmlLM5VaZXvYS9EJqPTdonOih8nCWg66SBgkp3YgHrYw7XRvTEDnyhQgJtz9Uc4yj
	ewHi3rcYeUUd6va9KcP/12AX0vT7ZqEPuQ5dVUjM+VVkd94RmIHUPAj2Af7qoY8HR49rMf/w3n3
	a8K/in24GgnL8kXaA9vAvPjvtP5A=
X-Google-Smtp-Source: AGHT+IGtkifcyZecjpf7VInCkUgq6fH3Aod006JAllttC9Fo9yWIYJYoM2lXdlBl79Y0FfzZWiBAvg==
X-Received: by 2002:a05:6214:27ef:b0:6fa:a0ac:8d5b with SMTP id 6a1803df08f44-6faceb4f359mr56609796d6.3.1748610809691;
        Fri, 30 May 2025 06:13:29 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fac6c03c58sm22554386d6.0.2025.05.30.06.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 06:13:28 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uKzY8-00000001DzD-0cum;
	Fri, 30 May 2025 10:13:28 -0300
Date: Fri, 30 May 2025 10:13:28 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, Jacob Pan <jacob.pan@linux.microsoft.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	will@kernel.org, eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com
Subject: Re: [PATCH v2 0/3] arm-smmu: select suitable IOVA
Message-ID: <20250530131328.GB236098@ziepe.ca>
References: <20250410230008.GA6905@ziepe.ca>
 <67fff12d.650a0220.208c7c.d69dSMTPIN_ADDED_BROKEN@mx.google.com>
 <20250416181759.GF493866@ziepe.ca>
 <20250520224224.GA16365@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250525190703.GD12328@ziepe.ca>
 <20250527205428.GA14019@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250528000425.GC146260@ziepe.ca>
 <20250529182219.GA20289@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250529183815.GA236098@ziepe.ca>
 <20250529220839.GA9911@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250529220839.GA9911@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Thu, May 29, 2025 at 03:08:39PM -0700, Shyam Saini wrote:
> > How does your platform work at all? Isn't 0x08000000 physical memory in
> > your address map? 
> 
> unfornately, this 0x08000000 physical address is not in our address map

Is your issue PCI related, do you have a PCI switch without ACS mapped
here?

Jason

