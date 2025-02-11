Return-Path: <devicetree+bounces-145234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DF9A30BA8
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 13:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5FFD16311D
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 12:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB901FCD06;
	Tue, 11 Feb 2025 12:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQPvXg1K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB791FBEAB
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 12:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739276568; cv=none; b=QtALIWKcCjDOsVtXD3FgCgZENIDi08YJcxgtpKNInI1e7+2F9qP9Ti0yiNoq8Zjr+1JEdVhNoUOaZdG4mbI8muxqn04EIQjwj46UNOX9izTapJNDACPkJytSyPqOoY6a4UPxSY8KLCyRbr4wJD+azWW1x9KglbI7Q0qMa1oKKYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739276568; c=relaxed/simple;
	bh=4K8z8+aPyeTQjXPiAwW/jC9wdrJjdLUvKNE1gq5BkA8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hdC26JPPkmcs+XlBVMo294W8FyuwRBcAJgJ3O7G+S8oDhtGHnxIdvkhgfXFl/K5XAAnC/SXP6CkMjloUz0fgzqCO+VBU2SRGetHhXA3T5nOFoF8R9HzfBOcmLqGmPxDtIqDiyA9ceaEdjhbJSoiwKpst5dWGFOXY/mpSdJxUaew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQPvXg1K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EE2CC4CEDD;
	Tue, 11 Feb 2025 12:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739276567;
	bh=4K8z8+aPyeTQjXPiAwW/jC9wdrJjdLUvKNE1gq5BkA8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mQPvXg1KkJtQWn8OkwbQBFy4BC94aSKTUgHnrO12Ryg/0uJHHEzFeSZJq0ZIyYojX
	 vXmjhyNYsTC18XK+FTrxKfsCwD6k9nkDihstrcUbVec8YMM1PPyBQNI/fGTuDDq22m
	 554LY6+UBma+SrHeljagbISwqvOCy1xb3ZMSN4BmN2+y+tHiDiLdyXo66qFIBMzt3A
	 B+vlvUfGHlWfCtT8TGJ3VKLlvnDmRS4trFQRKv0pcNYZjoWR9Q1vXcnc2kbfwoiWhT
	 WERq9sapIx+PRz57TA7CMRRE7pk/jcijNb2SfikO8OtfqK+tIgsItctxlFzGcJq2JS
	 3efbYz6E7b5cQ==
Date: Tue, 11 Feb 2025 13:22:42 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Patrick Wildt <patrick@blueri.se>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, robin.murphy@arm.com
Subject: Re: [PATCH] arm64: dts: rockchip: adjust SMMU interrupt type
Message-ID: <Z6tBElUDaPNgkaIf@ryzen>
References: <Z6pxme2Chmf3d3uK@windev.fritz.box>
 <25203566.ouqheUzb2q@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <25203566.ouqheUzb2q@diego>

On Tue, Feb 11, 2025 at 08:40:25AM +0100, Heiko Stübner wrote:
> Am Montag, 10. Februar 2025, 22:37:29 MEZ schrieb Patrick Wildt:
> > The SMMU architecture requires wired interrupts to be edge triggered,
> > which does not align with the DT description for the RK3588.  This leads
> > to interrupt storms, as the SMMU continues to hold the pin high and only
> > pulls it down for a short amount when issuing an IRQ.  Update the DT
> > description to be in line with the spec and perceived reality.
> > 
> 
> Cc'ed Niklas
> 
> This should probably also get a
> 
> Fixes: cd81d3a0695c ("arm64: dts: rockchip: add rk3588 pcie and php IOMMUs")

Agreed.


> 
> > Signed-off-by: Patrick Wildt <patrick@blueri.se>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> > index 8cfa30837ce7..520d0814a4de 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> > @@ -549,10 +549,10 @@ usb_host2_xhci: usb@fcd00000 {
> >  	mmu600_pcie: iommu@fc900000 {
> >  		compatible = "arm,smmu-v3";
> >  		reg = <0x0 0xfc900000 0x0 0x200000>;
> > -		interrupts = <GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH 0>,
> > -			     <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH 0>,
> > -			     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH 0>,
> > -			     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		interrupts = <GIC_SPI 369 IRQ_TYPE_EDGE_RISING 0>,
> > +			     <GIC_SPI 371 IRQ_TYPE_EDGE_RISING 0>,
> > +			     <GIC_SPI 374 IRQ_TYPE_EDGE_RISING 0>,
> > +			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
> >  		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
> >  		#iommu-cells = <1>;
> >  	};
> > @@ -560,10 +560,10 @@ mmu600_pcie: iommu@fc900000 {
> >  	mmu600_php: iommu@fcb00000 {
> >  		compatible = "arm,smmu-v3";
> >  		reg = <0x0 0xfcb00000 0x0 0x200000>;
> > -		interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>,
> > -			     <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH 0>,
> > -			     <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH 0>,
> > -			     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		interrupts = <GIC_SPI 381 IRQ_TYPE_EDGE_RISING 0>,
> > +			     <GIC_SPI 383 IRQ_TYPE_EDGE_RISING 0>,
> > +			     <GIC_SPI 386 IRQ_TYPE_EDGE_RISING 0>,
> > +			     <GIC_SPI 379 IRQ_TYPE_EDGE_RISING 0>;
> >  		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
> >  		#iommu-cells = <1>;
> >  		status = "disabled";
> > 

Patrick, thank you for the patch!

FWIW, they have the same bug in downstream:
https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr4.1/arch/arm64/boot/dts/rockchip/rk3588s.dtsi#L2761-L2783

However, the Rockchip PCIe Virtualization Developer Guide correctly define
the IRQs as edge triggered:
https://dl.radxa.com/users/dev/Rockchip_PCIe_Virtualization_Developer_Guide_CN.pdf

Looking at the ARM SMMUv3 architecture specification:
"An implementation must support one of, or optionally both of, wired
interrupts and MSIs. Whether an implementation supports MSIs is discoverable
from SMMU_IDR0.MSI and SMMU_S_IDR0.MSI. An implementation might support wired
interrupt outputs that are edge-triggered. The discovery of support for wired
interrupts is IMPLEMENTATION DEFINED."

Thus:
Reviewed-by: Niklas Cassel <cassel@kernel.org>


Heiko, this patch should go to 6.14.

Side note: We also have another SMMU patch that should go to 6.14:
https://lore.kernel.org/linux-rockchip/20250207143900.2047949-2-cassel@kernel.org/


Kind regards,
Niklas

