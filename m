Return-Path: <devicetree+bounces-139292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5172A15007
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:04:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 922E73A9135
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61C2E1FF614;
	Fri, 17 Jan 2025 13:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKW1A+Nx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F2D1FECBA;
	Fri, 17 Jan 2025 13:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737119091; cv=none; b=W14zMAF4HfXm7Xw0iSVyZM0yJsS8ocyyGnH9MjX072bi1UCawZIrNfnhwPFJSRWBKHjnjfozWUkJUZanTz+kbaH+hjSlWTXaFcpXAUuqucypLlcY98wiAwepLiDpUwMHE5Kfliw609PNxODYnm2e/in0s0RYUswVVoOQaC6xToE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737119091; c=relaxed/simple;
	bh=pgczHYRbU/w/CTezmt/JjsV7Sd3SXBt7YeWw3V9QlJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bl5YZ2ijA4GlvIWQXbOceSTl4lPSl7bJJJVUnNrFT68H+id7apog3YbHdu8cNE/GiT3nBs4BQ0JKWCIZBKMqytCPWM3WhC4FPKi8rWh3ytMWKOt0A1GvR2iYeO+wea2nmKQF6Sko54SwbGreOHdmtnImIZLr+c0S2mJqjHoSC1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKW1A+Nx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28E16C4CEDD;
	Fri, 17 Jan 2025 13:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737119090;
	bh=pgczHYRbU/w/CTezmt/JjsV7Sd3SXBt7YeWw3V9QlJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GKW1A+Nx8NJgaicqTbgcFmzmHcu1nrVCgcsQXKDasEIT7dIsrIbnv/EjBWlPkcBZv
	 KlmtCKxQRaGGPKfVQc30qbzhHR06bugGFhzBnaYPUZP1krPNo88ZAC9MkAyYJdiDhj
	 EmgcLQio2czz4XirycF5IK0YPaOHs2HBXkkAtl40PDXFu6iBqpO6O2p0yHA977WiTF
	 GUD5S0L+mohEfNLArkNntp34lJToZv83TrjmdV2/bzivtWHU+73iDLG9SasogHGs6a
	 drI67jUwoxFkplv+pHr+/atF5qGHBgN7+kXDIEL8rEB0BBV46OI3UckIirHJNpHTVE
	 ITDKd5uz7KxeA==
Date: Fri, 17 Jan 2025 14:04:45 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: add overlay tests for Rock
 5B PCIe overlays
Message-ID: <Z4pVbVQKnVkZdysM@ryzen>
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <20250116-pre-ict-jaguar-v2-2-157d319004fc@cherry.de>
 <Z4o2_0yX-hq-DfCs@ryzen>
 <4985c21b-56b8-45b3-a96d-1427ca905c6c@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4985c21b-56b8-45b3-a96d-1427ca905c6c@cherry.de>

Hello Quentin,

On Fri, Jan 17, 2025 at 12:50:52PM +0100, Quentin Schulz wrote:
> Hi Niklas,
> 
> On 1/17/25 11:54 AM, Niklas Cassel wrote:
> > On Thu, Jan 16, 2025 at 03:47:11PM +0100, Quentin Schulz wrote:
> > > From: Quentin Schulz <quentin.schulz@cherry.de>
> > > 
> > > According to commit 40658534756f ("arm64: dts: rockchip: Add rock5b
> > > overlays for PCIe endpoint mode"), Rock 5B can operate in PCIe endpoint
> > > mode. For that to work, the rk3588-rock-5b-pcie-ep.dtbo overlay needs to
> > > be applied on Rock 5B base Device Tree. If that Rock 5B is connected to
> > > another Rock 5B, the latter needs to apply the
> > > rk3588-rock-5b-pcie-srns.dtbo overlay.
> > > 
> > > In order to make sure the overlays are still valid in the future, let's
> > > add a validation test by applying the overlays on top of the main base
> > > at build time.
> > > 
> > > Fixes: 40658534756f ("arm64: dts: rockchip: Add rock5b overlays for PCIe endpoint mode")
> > 
> > Not sure if I agree with the Fixes-tag.
> > I don't think there is anything broken with that commit, but I definitely
> > think that it is a good idea make sure that they don't break in the future.
> > 
> 
> That's fair. I actually think it'd be a good idea to backport this to stable
> releases. It could be possible for stable right now to somehow only backport
> changes to the base DT without modifying the DTO (or vice-versa) and then
> break the overlay unknowingly.
> 
> I added the Fixes to make it a bit simpler to know up to when to backport
> it, though I still haven't decided if I should have added Cc: stable there.

I know what Greg would have said:
https://lore.kernel.org/linux-pci/2025011651-stubborn-certified-b22f@gregkh/


> 
> So 1) what's your opinion on backporting this to stable
> 2) if backporting, shouldn't I still remove the Fixes?

My personal opinion is that a lot of companies are way too greedy, just
taking the work of upstream, but never giving anything back by actually
employing people working on upstream, all while sometimes having hundreds
of employees working on downstream.

I wish I could stop marking patches with CC: stable just to not make their
lives easier. If they want the good stuff, at least they should spend time
upgrading from their 4.14 kernel... Note that I do still (reluctantly) mark
my fixes with CC: stable.


> 
> > 
> > > @@ -145,8 +145,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
> > >   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
> > >   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
> > >   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
> > > -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
> > > -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
> > >   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
> > >   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
> > >   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
> > > @@ -165,5 +163,9 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
> > >   # Overlays
> > >   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
> > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtb
> > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtb
> > 
> > You moved these lines further down, but you changed the suffix from
> > .dtbo to .dtb, why? It seems a little confusing, is that really needed?
> > 
> 
> That was also confusing to me, but that's actually how it works.
> 
> rk3588-rock-5b-pcie-ep.dtb somehow points at rk3588-rock-5b-pcie-ep-dtbs
> which is the overlay application test of rk3588-rock-5b-pcie-ep.dtbo onto
> rk3588-rock-5b.dtb. For that to work, the .dtbo needs to be compiled. The
> target must be auto-generated somewhere because that still works. You can
> remove all *.dtb* from the tree, apply this patch and compile with make dtbs
> and you'll see that the DTBO is generated and the build time test of overlay
> application done as well (the log line starts with OVL).
> 
> Not sure exactly how to make this a bit less confusing in the commit log, as
> I myself do not really know why that is necessary or how it is working. But
> "it works" (tm).
> 
> This matches what was done for ti/ as well.

As long as the files still get generated with the .dtbo offset, I'm happy.


Kind regards,
Niklas

