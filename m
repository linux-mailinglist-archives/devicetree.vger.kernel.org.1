Return-Path: <devicetree+bounces-60682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D4B8A9FE7
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 18:19:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 904AB2851C6
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4365D16F8F2;
	Thu, 18 Apr 2024 16:19:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3587216191A
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 16:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713457154; cv=none; b=qlqdNxpqkHDXc/ywM0pF3bkwlo9Gpybv6g7/jJxCt78ZEAMCQlDekLYeTMH9SV6n7j7GtuYDcb5C9FIvwA5Z6eByJV/Zi/6FoF/nyV5qhhR62kPUkxhxmxXcPHpdD9R1lwcBioV8heNJHDh0h5qI+D4Wtqi+Mek149+eAad2MAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713457154; c=relaxed/simple;
	bh=2K3hZcPlNgSiCsBF1htjIKpNIMlB2q5W+3OZ7ws8VWI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LPji54vUYnWpVrloZ7NmR1mwIXPKGOI6IZBjQ1cryNs00VhktkHLRahSvMht1oMUEX5nksKZMd6LV58KewulCZZ5tYY6x99ll2see+nffEvqcE/gi/1KvuLNtV4z5aq1TwVeohtJ4jrO73Fih4YXX7/QqPCdzzcDgP1esy4TmjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BAD72F;
	Thu, 18 Apr 2024 09:19:39 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EEE43F64C;
	Thu, 18 Apr 2024 09:19:09 -0700 (PDT)
Date: Thu, 18 Apr 2024 17:19:07 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, mripard@kernel.org, samuel@sholland.org,
 jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org, ryan@testtoast.com
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h616: Add NMI device node
Message-ID: <20240418171907.27c0ef84@donnerap.manchester.arm.com>
In-Reply-To: <DM4PR05MB922973D047EB3BE774EEB943A50E2@DM4PR05MB9229.namprd05.prod.outlook.com>
References: <20240414170424.614921-1-macroalpha82@gmail.com>
	<20240414170424.614921-3-macroalpha82@gmail.com>
	<20240415003740.666759d0@minigeek.lan>
	<DM4PR05MB922973D047EB3BE774EEB943A50E2@DM4PR05MB9229.namprd05.prod.outlook.com>
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

On Thu, 18 Apr 2024 10:59:13 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

Hi,

> On Mon, Apr 15, 2024 at 12:37:40AM +0100, Andre Przywara wrote:
> > On Sun, 14 Apr 2024 12:04:24 -0500
> > Chris Morgan <macroalpha82@gmail.com> wrote:
> > 
> > Hi Chris,
> >   
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add device node for the H616 Non Maskable Interrupt (NMI) controller.  
> > 
> > You might want to mention that the NMI pad is not exposed on the H616 variants, but on
> > the T507 and H700 packages.
> >   
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 9 +++++++++
> > >  1 file changed, 9 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > > index b2e85e52d1a1..1e066f3057be 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> > > @@ -775,6 +775,15 @@ r_ccu: clock@7010000 {
> > >  			#reset-cells = <1>;
> > >  		};
> > >  
> > > +		nmi_intc: interrupt-controller@7010320 {
> > > +			compatible = "allwinner,sun50i-h616-nmi",
> > > +				     "allwinner,sun9i-a80-nmi";
> > > +			reg = <0x07010320 0xc>;
> > > +			interrupt-controller;
> > > +			#interrupt-cells = <2>;
> > > +			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
> > > +		};
> > > +  
> > 
> > I can confirm that this matches the manual, and the registers behave as
> > described in the A80 manual. I don't have access to a chip with the NMI
> > pad exposed or used, so I cannot test this fully, but Chris'
> > experiments with the AXP717 PMIC connected to that pin on on H700
> > board seem to confirm that it indeed works.
> > 
> > So with that small amendment to the commit message please take my:
> > 
> > Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> > 
> > Cheers,
> > Andre
> >   
> > >  		r_pio: pinctrl@7022000 {
> > >  			compatible = "allwinner,sun50i-h616-r-pinctrl";
> > >  			reg = <0x07022000 0x400>;  
> >   
> 
> Since the H616 doesn't have this functionality but the T507 and H700
> does, should I change the compatible string? It's all the same
> silicon die with just a different part number printed on it, but
> still...

I would stick to h616, since we use that for all the other devices. Also
the H616 *has* that NMI controller: I can confirm that the registers exist,
and I can trigger and acknowledge interrupts. So in the interest of
consistency: keep using "allwinner,sun50i-h616-nmi".

Cheers,
Andre

