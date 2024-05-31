Return-Path: <devicetree+bounces-71194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D73D8D5FA8
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:24:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADEE0B2593D
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE52614F9EE;
	Fri, 31 May 2024 10:24:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D8F214263B
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 10:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717151089; cv=none; b=Uwa2WoIqtlYry952TlTMDlZhBYqSFT/p41XSqWt1er00rzLCf4G/a7+lYRudKcTHo9p9QMNuzevwr73HUW8SaaMAoPvx++UDrwdfDNGVQ5mEAWmys1/SOKuJOYXGApN7OejMypYG/fmjJpaWTx+AwQH4+CD08Ito0y8mBgQCpl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717151089; c=relaxed/simple;
	bh=3iFjX4wt0DJ4oC3/Izl/t6MXl/D5UVlqWwCet2BhxPo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YOkOcHPXIaJH+WtR+2JtwDPtktwlSgbcdYlg/nVRqdxLQDDpdcKwDVLLIkPR3Kas33gtpYNEwA2c//eX/1dM3YoB7iCVsNaKa/p/XBwt/L2Dce9vaQRvMtOUi93O5PVk8/yXPlrEqJ5Kk++/+Js5Vx30xcK5Rn4eEz+xSGGY/kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DFA61424;
	Fri, 31 May 2024 03:25:12 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBC8C3F641;
	Fri, 31 May 2024 03:24:45 -0700 (PDT)
Date: Fri, 31 May 2024 11:24:43 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Chen-Yu
 Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, Chris
 Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 5/5] arm64: dts: allwinner: h616: add IOMMU node
Message-ID: <20240531112443.319863a3@donnerap.manchester.arm.com>
In-Reply-To: <adb96c77-fc8b-4be1-b2f7-0a321b7ad593@arm.com>
References: <20240530233800.27705-1-andre.przywara@arm.com>
	<20240530233800.27705-6-andre.przywara@arm.com>
	<bc550e12-7ad6-4592-994d-dca5a95e88ca@arm.com>
	<20240531103209.7db573c8@donnerap.manchester.arm.com>
	<adb96c77-fc8b-4be1-b2f7-0a321b7ad593@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 31 May 2024 10:45:41 +0100
Robin Murphy <robin.murphy@arm.com> wrote:

> On 2024-05-31 10:32 am, Andre Przywara wrote:
> > On Fri, 31 May 2024 09:42:36 +0100
> > Robin Murphy <robin.murphy@arm.com> wrote:
> > 
> > Hi Robin,
> >   
> >> On 2024-05-31 12:38 am, Andre Przywara wrote:  
> >>> The Allwinner H616 contains a scatter-gather IOMMU connected to some
> >>> video related devices. It's almost compatible to the one used in the H6,
> >>> though with minor incompatibilities.
> >>>
> >>> Add the DT node describing its resources, so that devices like the video
> >>> or display engine can connect to it.  
> >>
> >> Without also describing those connections, though, having this node
> >> enabled in the DT means the driver will just bind, block DMA, and
> >> prevent those devices from working. That's probably not what you want.  
> > 
> > The IOMMU manages the Display Engine (DE), the Deinterlacer (DI), the
> > video engine (VE) and the 2D acceleration engine (G2D).
> > None of those devices are supported for the H616 in mainline yet, but there
> > are patches out there for the DE and VE, at least. Especially the video
> > codecs benefit from scatter-gather, so with this patch they can make use
> > of it from day one.  
> 
> Oh, I see - I assumed that stuff like display was more exciting and

Yeah, it arguably is, and Jernej had early patches already two years ago,
I think. However there are some changes in the IP that require some rework
in the DE driver for proper support, IIUC, so the upstreaming is somewhat
on hold.
Of course this didn't prevent Armbian from taking those early patches
anyway, so a lot of people are not even aware of the problem :-(

Cheers,
Andre

> likely to be supported already, so read "can connect to it" in the 
> present tense. If it's a future "can use it as soon as they are also 
> supported", then there's no concern, and indeed this is arguably the 
> ideal order of doing things.
> 
> Cheers,
> Robin.


