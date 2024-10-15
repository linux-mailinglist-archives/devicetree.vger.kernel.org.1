Return-Path: <devicetree+bounces-111508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F2D99F113
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4870D1C22DC0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5AD1DD0FB;
	Tue, 15 Oct 2024 15:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="BynaS5VH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D881DD0E7
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 15:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729005884; cv=none; b=SwRdj6p4sjXWXLDNPqcqCLHFLv0wusZbWG7WvCHk4KdnIihAMdUxMjp5UfhTZ1+2HHTdVLtJecHxNMcoKLMfuqIQPzVXH0251UuHtj3k/MvjO46qrLZcfECOcLUEV8VDU5+YULmd8wdQ2mqH5UYe67H8DYEGinFunh8D1LnmbNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729005884; c=relaxed/simple;
	bh=dekQ5M50rkzpyA50rbMQKaD20ZR7Va+LheYLlyjJci4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ruz2VFHrN4Rmd6JstCOo2lny0uM8CmaiALno7gKSNivfear7MEbYb13RxYVTt+V4nElgQeJt5+Xagh+rlFGn5H/s71GE1xU4QHikdkxxzh8AhUuzQZjkxYd3TKerzjP/HDl3x6I9pRXunl5hzSsEjbjUUlV7mjyFTYLJLIpQxvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=BynaS5VH; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2887326be3dso1642304fac.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 08:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1729005882; x=1729610682; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OvPEt4I0YTUGhQ6aZ66iILcHwAzgyb+zDXYDZmkVXhQ=;
        b=BynaS5VHAuW+Q+6EQjCsnE1F71EzRCpf5ynz47FQdKDZWO/Jqnf8gjqcisLd5P/dsC
         HiQsXfVZQ5tDRdhMZDTn+9kxFsm5kLeM3wZrpQFTkBNugzVc4Ls1UL/EYtXmXwZTRqwB
         lSgihnqgj3PJnMqXyIrn/Fnj7rRTf9Kfkz77p6lDNfsLvlsUgY2KHGBimqT1T1Fck0zk
         cv1tjF7PpjD0IHrRabB1aOr+5gZPYNGgFOWZkvtfKhWQhMXTa2M2+LFs+SYavd1Z7+vf
         AWZNos++QMrti7JC2OLFkgxmqDBwILrj79/lHh4sNjmvpKzOTez4A9OQ55eTvOzfpCdQ
         VvUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729005882; x=1729610682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OvPEt4I0YTUGhQ6aZ66iILcHwAzgyb+zDXYDZmkVXhQ=;
        b=iKaPXnbAms5PDVirMRMQ+Ziftga+qrtY932sZ1GNO1zfwAcoP/2F6hr3XuKY16Hrv5
         zj1NA7lNVkCXocYnzotM51rPPCc2YatWCnlBK71ZpH3+P2wOeW2bt2gpSq2zNqUVFwbD
         A2ncml7Ke08g3KxOGGGLDMA9wTwds4DShDtSs18TTf63jh/L3RjRmce/o8zZ8EgY71G+
         axBM2qMDT8GnmzMdeXEYohgI3wSPgrsFJV4ZHZ1TEvezNaC1zaDsDZKpFXCMXrvUGa2B
         tJFsHZaCP6f9hELHYa4OXtbKI7wCaBc6mZh3TYmfeip7o2ilfMXHgXXXx0F2zHyiQNXG
         VT4A==
X-Forwarded-Encrypted: i=1; AJvYcCUFjAB7l1yUSk0w3asRbpKKD/03H+w7uK9mof7X58tsf97jF9RZstx38G+A5UsxKuW4BeaFlvPASD4T@vger.kernel.org
X-Gm-Message-State: AOJu0YzQSkzYtSLtgvhrZRsAY81hbttUCCenXwWKPS8I+ccwiInvF5LQ
	4Cp8NlAd9VwkcUAjOC7+sQ4SoEa2S/aac3tUvYHF5LsGP5qHK2sW26y9mWQK1Kw=
X-Google-Smtp-Source: AGHT+IE7VfWTyUCMBkSdCW2iPsfGnlKPydwEAJac1+ocTRcXhRqwYAVakkBPJRuY9lVQHbkuo7NwKg==
X-Received: by 2002:a05:6870:f71e:b0:288:a00e:92dc with SMTP id 586e51a60fabf-288a00e994bmr5115804fac.2.1729005882365;
        Tue, 15 Oct 2024 08:24:42 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.128.5])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b13b5fd88esm63953785a.62.2024.10.15.08.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 08:24:41 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1t0jPd-00Dhn9-Ak;
	Tue, 15 Oct 2024 12:24:41 -0300
Date: Tue, 15 Oct 2024 12:24:41 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pranjal Shrivastava <praan@google.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joy Zou <joy.zou@nxp.com>,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH RFC 2/2] iommu/arm-smmu-v3: Bypass SID0 for NXP i.MX95
Message-ID: <20241015152441.GL1825128@ziepe.ca>
References: <20241015-smmuv3-v1-0-e4b9ed1b5501@nxp.com>
 <20241015-smmuv3-v1-2-e4b9ed1b5501@nxp.com>
 <Zw4kKDFOcXEC78mb@google.com>
 <20241015124723.GI1825128@ziepe.ca>
 <Zw6DekI9X7lL4f1G@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zw6DekI9X7lL4f1G@google.com>

On Tue, Oct 15, 2024 at 03:00:10PM +0000, Pranjal Shrivastava wrote:
> On Tue, Oct 15, 2024 at 09:47:23AM -0300, Jason Gunthorpe wrote:
> > On Tue, Oct 15, 2024 at 08:13:28AM +0000, Pranjal Shrivastava wrote:
> > 
> > > Umm.. this was specific for rmr not a generic thing. I'd suggest to
> > > avoid meddling with the STEs directly for acheiving bypass. Playing
> > > with the iommu domain type could be neater. Perhaps, modify the
> > > ops->def_domain_type to return an appropriate domain?
> > 
> > Yeah, that is the expected way, to force the def_domain_type to
> > IDENTITY and refuse to attach a PAGING/BLOCKED domain.
> > 
> > If this is a common thing we could have the core code take on more of
> > the job.
> 
> Yes! I've seen the IOMMU being bypassed at multiple places, primarily
> for performance, people like bypassing the iommu for "trusted" devices.
> A few examples that are publically accessible: Qcomm SoCs [1], [2].
> Seems like Qualcomm have a DT property `qcomm-s1-bypass` to achieve
> something similar.

It is not good to encode policy in the kernel in this way. If the
device works then it should be permitted to be non-identity, even if
it is slow.

I suppose things are done this way because the policy can't be changed
once the drivers are bound, so this has to be decided early boot and
so it is easiest path...

But it does suggest to me that the DT encoding is more an indication
"device is really slow with translation".

Once I was looking at the idea of pulling all the identity stuff out
of the drivers since alot of it is mostly device specific
quirks/etc. It could then be marked as mandatory/performance and that
could help understanding alot.

Jason

