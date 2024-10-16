Return-Path: <devicetree+bounces-111922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B78699A0504
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 11:07:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B940B256C8
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF0BC20513A;
	Wed, 16 Oct 2024 09:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="QGDrDi29"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B1B205126
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729069605; cv=none; b=Gn4QJWTGWGh7c/e/7w9oHavb5UX/FBhgYj2jpYdhC0/pQMnjzmcjPquApKSI9uyVFbI4x3aIJrLibN95pZoLM/Pnyz3CSytA/Fywo6dZYpwA60y+bC6ArvQmf7JdqjtFwsF61IujuoXdK1ZdgykZ/oHIGmUoOJwKSzcFmMZzqDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729069605; c=relaxed/simple;
	bh=Y+wJWLvCw3YxP5Oaa0L+HKbshqTH/Phzp7PS8Krr8VQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P36N6jAlDg4Q1FpM4+ebXNj5UybXmORWx4beRYaSVLLq6apIHfd5BgLpO1Dxjzq3CaTsVurLo+U/ackULXQtKlCNpg8vLynN5A76eujRlL+dZ9+xTbGCY1Myb/dzOJi1fJ9kd0vxrvo4nK7sOw1Ipfl85ZMvrYBsaS3/7fzvOKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=QGDrDi29; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20c87b0332cso55595ad.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 02:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729069604; x=1729674404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2DW2pWtcD1dtnx0otP+/c1vPlK6l83YrxUj6xMD8kgo=;
        b=QGDrDi29v+9+az620U0fBldf6Yq+zviL5ivp9ghdUXrlbxQbxdvndjXZItB3huIZx/
         vdHC/fd4Qrxjf6RAIAfCIioHObE+BVrJ7fCm69GBDPI02frwIuS0/LTrkNE645QN3Qws
         KWYUnssMKHabP8LPmfs5l+OCmWpIptVSPm+AVkQNugJ1JeM9Wt/ecZRr4AJRH7ZcadsV
         0cNxrCc6HYH0nqif4sOrIezU0oiPC1VLhNz1d5S0piBDkoItL+0qUPxxBLUcoPmM94hY
         U1Huc2TCbBX05RGLunE5/hrO4fbr+R42XrzQvHo3iXq8VLhToLSf69b3a3BQnE2Erkb+
         +ljA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729069604; x=1729674404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2DW2pWtcD1dtnx0otP+/c1vPlK6l83YrxUj6xMD8kgo=;
        b=Z+vy5ctZGlHRWoE6ZFRtO+o61w+adcM786wpDTdUvJanrun5hNUr8WDmQYa5vLHIoy
         IXjdbCtscJDUf+4elgubTVEGSePSt9I244pVpzW7BMF29XHcJL0v8RmtW1SzhOurvXBq
         J2F28h4DjdvnhlDSGj1I8Q4iU18hg+mlPzE95b3ZGgNkAZNNMFEGI1Ju+q39lj1ruh6f
         EAmvVY3uGRfw0qEq0rwwJ1OCzir4/83IwPITDcIWDbqxnUty6vmXpFSJVa+ya0aaAAeJ
         oEZXJgdk51fS4YZSaMhp3Qoy31dUcVqUBNeky3t4AwLv7647ASN2ntqGQJaiAaxWK0J2
         3Ihg==
X-Forwarded-Encrypted: i=1; AJvYcCX4iiAIBK//EyrSpnBXZccWLCNHpLqy84TYcjTubrCBLpYo96ZzHwg1xwy5SFc1/XkAi+QhdwVIHs/S@vger.kernel.org
X-Gm-Message-State: AOJu0YzaEbP+LgkZ1NKm8YLu2bsgck5KEfBFMXfhegfL51OxQCIEDLXg
	lz69ZVnePFzPjEI/4hesVFKLYnq05vFPk4olzMDhnAO4HbNOKq/7hvlFV2SUrw==
X-Google-Smtp-Source: AGHT+IH0H8dZdGu+TvIOpKAHVD6ySQbv5/RH0VMbwVm/01A9XXkmNQlhA9wFpt81QJKrF+oh6OwHZw==
X-Received: by 2002:a17:902:d486:b0:20c:f3cf:50e9 with SMTP id d9443c01a7336-20d2ceaa788mr2031995ad.4.1729069603422;
        Wed, 16 Oct 2024 02:06:43 -0700 (PDT)
Received: from google.com (62.166.143.34.bc.googleusercontent.com. [34.143.166.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d1804c28dsm24701145ad.231.2024.10.16.02.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 02:06:42 -0700 (PDT)
Date: Wed, 16 Oct 2024 09:06:33 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Peng Fan <peng.fan@nxp.com>
Cc: Nicolin Chen <nicolinc@nvidia.com>, Robin Murphy <robin.murphy@arm.com>,
	"Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joy Zou <joy.zou@nxp.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"iommu@lists.linux.dev" <iommu@lists.linux.dev>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH RFC 0/2] iommu/arm-smmu-v3: bypass streamid zero on i.MX95
Message-ID: <Zw-CGb_BaLBaefIR@google.com>
References: <20241015-smmuv3-v1-0-e4b9ed1b5501@nxp.com>
 <a8c42a6c-bac3-4ebc-8a29-e6c0ed4567c3@arm.com>
 <PAXPR04MB8459AB654150BED2FB5FFDE188462@PAXPR04MB8459.eurprd04.prod.outlook.com>
 <Zw8Tp4RuVgCdGcc8@Asurada-Nvidia>
 <PAXPR04MB8459394682B0B3342FA0383388462@PAXPR04MB8459.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB8459394682B0B3342FA0383388462@PAXPR04MB8459.eurprd04.prod.outlook.com>

On Wed, Oct 16, 2024 at 08:53:20AM +0000, Peng Fan wrote:
> > Subject: Re: [PATCH RFC 0/2] iommu/arm-smmu-v3: bypass streamid
> > zero on i.MX95
> > 
> > On Wed, Oct 16, 2024 at 12:56:54AM +0000, Peng Fan wrote:
> > > > Subject: Re: [PATCH RFC 0/2] iommu/arm-smmu-v3: bypass
> > streamid zero
> > > > on i.MX95
> > > >
> > > > On 2024-10-15 4:14 am, Peng Fan (OSS) wrote:
> > > > > i.MX95 eDMA3 connects to DSU ACP, supporting dma coherent
> > > > memory to
> > > > > memory operations. However TBU is in the path between eDMA3
> > > > and ACP,
> > > > > need to bypass the default SID 0 to make eDMA3 work properly.
> > > >
> > > > I'm confused, why not just describe that the device owns this
> > > > StreamID in the DT the normal way, i.e, "iommus = <&smmu 0>;"?
> > >
> > > Current SMMU-v3 driver not support streamID sharing, but we have
> > > limited streamIDs(i.MX95 max supports 64 SIDs). However the eDMA
> > > supports 64 channels, each channel may have a SID, but not
> > supported
> > > by current smmuv3 driver.
> > >
> > > We see smmu would degrade the performance in somecases, so we
> > wanna to
> > > give user an option to bypass SMMU for eDMA.
> > 
> > If it's a system-wise global need, adding "iommu.passthrough=y"
> > to the bootargs string should work for all trusted devices. And
> 
> No. not system wide.
> 
> > particular group can be changed to the IDENTITY domain too upon
> > cmdline setting, e.g.
> > echo identity | sudo tee
> > /sys/class/pci_bus/0009\:01/device/iommu_group/type
> 
> This means I still need to put iommus = <&smmu 0> under
> the device tree node.
> 

Yes, otherwise the bypassing an unassigned SID isn't something that the
community wouldn't prefer as it smashes a hole in security for everyone.

Does your hardware have a way all the devices can configure/program
SIDs or does the hardware have multiple devices that generate SID 0?
If it's programmable, I'd suggest reserving streamID 0 for bypass and
let the system work with the other 63.

Apart from that, if you can guarantee that the `eDMA3` would always
access a fixed region of memory, then maybe use RMRs to install bypass.

> Thanks,
> Peng.
> 
> > 
> > Thanks
> > Nicolin
> 

Thanks,
Pranjal

