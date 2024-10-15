Return-Path: <devicetree+bounces-111497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD5199F0AC
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96F2F1C20CED
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BB01CB9F9;
	Tue, 15 Oct 2024 15:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="vzP8M5Jc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777A81CB9E1
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 15:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729004864; cv=none; b=vEyO8xQ9I9ML1JQl5HZ96AgeyBnVEXy8jOO+pTDxdyCx4e8Vf5tcwbbgxIQJ5WcBP0HdpISBDoqN+E4lseAlhDZcnswMLvPx9Cv9er5WDPk0y931w1B+R6mK4OHyD1cSxIIwUuUBcsd+U7JDoTi1LUnZHsxxk5P06WTQAE130Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729004864; c=relaxed/simple;
	bh=f4WuBg7WlMrKS0da9MDKLt/3P+sLy8hGoRgtuR/wpwA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pd2QbrfOuMRSH6lqPU1re8quahdgf9dhW8/xQZg1PZLKTs70I/1a7k0d6P7HAWcYqejRoEt89njTbD9ZtgQYzCdYP2fnbbJgmBjhy9bb8YWA3V5Ijc41Mjop1ZWZJ/c3fNeeGet2D+lRR6WS7WReCkJ/8IHEUcUKotYk7UrY0FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=vzP8M5Jc; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-20c8ac50b79so506865ad.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 08:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729004863; x=1729609663; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PlA/wii2bh+bHrcTk784szy5HvJLhrYuLgVdXpT1LYk=;
        b=vzP8M5JcqhbzuzunnR2SonGUJkvZUCWQZacWfn8/PrqV86plgTSDZC4Z6Zqv82ikag
         OW1Ikw7KORUohCDqm10+XiNkXRHz0BqJoij5sPxUnZd3C7AVDKaiwMsu1iT6EBp3Pbm4
         n39tQWDw+mtKtvavzsXkLJW0DgUwOL074N5IsbLjRDE+r62Odz+2gkYVIUgFJcMGVFWv
         LH1jyC0YRD1S8RdCKxphhYc6ucU5b9ruAdeyzJBjYepugChQYCiaxHifwFM944l0gdcW
         CuVlTvsTcVBUfJ1AgOrDw3kAa+Mw05+kN0nJSA3kME0sAS7ENBV4JKU7ECDU4oqYIonV
         NYuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729004863; x=1729609663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlA/wii2bh+bHrcTk784szy5HvJLhrYuLgVdXpT1LYk=;
        b=AAh6hZ913CtrgucPyZb2h722ck+5eL0mqiCuWcBzQ/68q/wpHulska6nCMchczt6g2
         ZV+QK/aTmcPhQZmpFBMNqXM4PMlYMIfYvoBVs7Eac+itG/8Iz2UDS5nNsLOQfJ/q81+Y
         EGu6JiZl5QwXQi24/3AuZKTEalcBNoHuLGTv6NJrjrPsogBU8Rp98KUypasRQffxHqjt
         YmHjCyRhNmYDoqXHL4e4Wspk3gwueo3JdZTqLXBF4Qu/L6baFYKQNA2xJ/g/muG7cBu4
         /PXn5oE96HnV4fDkLlX0ViURewh1wGRSVYgpcd6tXDFWMW7MqUFMhQAOqlfIh8eA6msQ
         +/jg==
X-Forwarded-Encrypted: i=1; AJvYcCXVxgRfmJXmkeOI1eyp6yfHfr8qnqcyMLIrZTs0HJcHTlrICuXyrR8SqWQXoHQ84uJA7VXzNmg9AaQh@vger.kernel.org
X-Gm-Message-State: AOJu0YztO9ZTWsjdvFyW+5bxQggx5ONYs4knkTLHj4ycxNqJ4ezEpG13
	WBsCKZYaE9NjlJ4FpFURHb84WEktguts3iy88wF5AB4jRz3VtbJpix24Yxlfrg==
X-Google-Smtp-Source: AGHT+IF1l7OR0X37A5QzB6dpGx5CADv36IvHuR768YDJl8fOGKf/Ye/4uOiLVbH4UsZhcLQQ270hKA==
X-Received: by 2002:a17:902:e890:b0:20c:805a:22b with SMTP id d9443c01a7336-20cbced5496mr6942145ad.24.1729004862458;
        Tue, 15 Oct 2024 08:07:42 -0700 (PDT)
Received: from google.com (62.166.143.34.bc.googleusercontent.com. [34.143.166.62])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea9c6ba33csm1451237a12.17.2024.10.15.08.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 08:07:41 -0700 (PDT)
Date: Tue, 15 Oct 2024 15:07:32 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joy Zou <joy.zou@nxp.com>,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH RFC 2/2] iommu/arm-smmu-v3: Bypass SID0 for NXP i.MX95
Message-ID: <Zw6FNCACa03nE5Cx@google.com>
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
> 
> In fact, *blast from the past*, I tried to do something similar sometime
> ago with [3]. Although, perhaps that wasn't the best way (and I was a
> kernel newbie :))
> 
> A little off-topic, but I think there has been some interest to bypass
> the default substream as well while still maintaining PASID isolation.[4]
> 

Agh, apologies, ignore the following part about rmr,
it won't solve the problem here.
> Although, as far as arm-smmu-v3 is concerned, IIRC, I think there was a
> way to tell that the region is reserved and don't map it.

> 
> > 
> > Jason
> 
> Thanks,
> Pranjal
> 
> [1]
> https://github.com/realme-kernel-opensource/realme5-kernel-source/blob/master/arch/arm64/boot/dts/qcom/sa8155-vm-qupv3.dtsi#L22
> 
> [2] 
> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/Documentation/devicetree/bindings/platform/msm/ipa.txt#28
> 
> [3]
> https://lore.kernel.org/all/20230707104857.348353-1-praan@google.com/
> 
> [4]
> https://lore.kernel.org/all/CAGfWUPziSWNMc_px4E-i+_V_Jxdb_WSwOLXHZ+PANz2Tv5pFPA@mail.gmail.com/

