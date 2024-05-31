Return-Path: <devicetree+bounces-71152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 428868D5E53
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 11:32:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1EAF288153
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 09:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A1485285;
	Fri, 31 May 2024 09:32:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B537A81721
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 09:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717147938; cv=none; b=o5vmn/IVOIUPgo9YWaeZU7FqqOSf7NTSmtzY1N9cv9eiJXNLKZ2gItQBaCHioK0mvgKqd+FLdlzklSeOHdaIcrby5xkVs1uHQ3Ts7uMcKYSTaAMf4IWcmk5Nj1ZdYa8yzwAiPsylUUOpgllu6F3QyTiISbtmPY/a1S0gJjA3Vc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717147938; c=relaxed/simple;
	bh=BNlEZVWKmmSynJ3s+ToRZwZGUYwR1GZgOKkG1m+2oIE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=m+JYwpDT5gnKL4pVRBVlPpLrZMRcG98cw7bVijqtp6T5XZX7FYsqcP2xkydWTGfMi27qjrbodariZlqhwLVskSK1eFH26MrUlT+cX5vFea4R3tLFAVVP2mjOXjZd9osCa6OQeg2agg/Q0NVPXWibp9VmPiRPV7YgVBNPH8J0yK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CEAC1424;
	Fri, 31 May 2024 02:32:39 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2CBF3F641;
	Fri, 31 May 2024 02:32:12 -0700 (PDT)
Date: Fri, 31 May 2024 10:32:09 +0100
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
Message-ID: <20240531103209.7db573c8@donnerap.manchester.arm.com>
In-Reply-To: <bc550e12-7ad6-4592-994d-dca5a95e88ca@arm.com>
References: <20240530233800.27705-1-andre.przywara@arm.com>
	<20240530233800.27705-6-andre.przywara@arm.com>
	<bc550e12-7ad6-4592-994d-dca5a95e88ca@arm.com>
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

On Fri, 31 May 2024 09:42:36 +0100
Robin Murphy <robin.murphy@arm.com> wrote:

Hi Robin,

> On 2024-05-31 12:38 am, Andre Przywara wrote:
> > The Allwinner H616 contains a scatter-gather IOMMU connected to some
> > video related devices. It's almost compatible to the one used in the H6,
> > though with minor incompatibilities.
> > 
> > Add the DT node describing its resources, so that devices like the video
> > or display engine can connect to it.  
> 
> Without also describing those connections, though, having this node 
> enabled in the DT means the driver will just bind, block DMA, and 
> prevent those devices from working. That's probably not what you want.

The IOMMU manages the Display Engine (DE), the Deinterlacer (DI), the
video engine (VE) and the 2D acceleration engine (G2D).
None of those devices are supported for the H616 in mainline yet, but there
are patches out there for the DE and VE, at least. Especially the video
codecs benefit from scatter-gather, so with this patch they can make use
of it from day one.

I agree that the series on its own is not very useful, but there are quite
some H616 patches in flight out there, so this is an attempt to clean those
up, picking the low hanging fruits first ;-)

Cheers,
Andre

> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >   arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 9 +++++++++
> >   1 file changed, 9 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > index 9c1980e24cb21..44f04619a43ac 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > @@ -320,6 +320,15 @@ x32clk_fanout_pin: x32clk-fanout-pin {
> >   			};
> >   		};
> >   
> > +		iommu: iommu@30f0000 {
> > +			compatible = "allwinner,sun50i-h616-iommu";
> > +			reg = <0x030f0000 0x10000>;
> > +			interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks = <&ccu CLK_BUS_IOMMU>;
> > +			resets = <&ccu RST_BUS_IOMMU>;
> > +			#iommu-cells = <1>;
> > +		};
> > +
> >   		gic: interrupt-controller@3021000 {
> >   			compatible = "arm,gic-400";
> >   			reg = <0x03021000 0x1000>,  
> 


