Return-Path: <devicetree+bounces-204359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A89A0B25325
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 20:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67B4B3BC777
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61EAF2E11CB;
	Wed, 13 Aug 2025 18:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJNytZyz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDCD281368
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 18:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755110526; cv=none; b=ihLM6Cmvhqfr+YBIzkI5IOe9Dh5n3vOlR/kLtEdkAnXr1InGwuzUhxE2TxcGXg8S+NmpfKYQJzmR92arZkHsH2Y8IGcPEICXeaAz0auL9smKsZARfK0x6Z376I6+VjkhQ+ABbwLxuSf8t1d1dAS9BjQKVopKzYH2kDvQ1zeiNYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755110526; c=relaxed/simple;
	bh=g5/K/aqiu/I8p/j7YFGZz9MNQ7e88JO/25IsHBbTzvo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M2Ct90CyNerJquV+fokIiMFGCFsUYAj482zWZhBr/Czp9LDaJ3c1sr3qG2J7a1cMR+YXYoyuVWDL4y6xG5WNOOJRl5x7YPwk1fLH6TsBEROjp5Qh65GxDzGhUloUmdTyvMoXkroVaFv4pWWeClprXhnWHzQ+ek4pyYxRnkFQOUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJNytZyz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0A69C4CEEB;
	Wed, 13 Aug 2025 18:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755110525;
	bh=g5/K/aqiu/I8p/j7YFGZz9MNQ7e88JO/25IsHBbTzvo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HJNytZyznr8ERJfZMMKZIczLLfi4d7ucuqH0OrDDssgneqIOIS++2WfC8oCIH4wK+
	 G/CKl8Tks4LzxJ6kWahekGrlq5jlo7OTejCzao1WIxgYUP/bjxWyHjJDf2/3tDRs2F
	 k/wFzBPAX/qcxBvzXtqd2LFhx1hp/3giTOabez4qqN52q1tXY+AAhcu8BzqMwA88OM
	 hDhq4H383ytCuRcPQTO//DEu2Y2jOgLA3mxK0loWPFIqkXzHXQxKumxpfke/zxcbEk
	 6CDZY0YTelUd1lyarfsetMz067qZnNnzGTWPOgm7NZLX6H9DgkCa8ZGD7UHeglq+62
	 ysIhYFXCJ4hDw==
Date: Wed, 13 Aug 2025 20:42:01 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on
 the rk3588 SoC
Message-ID: <aJzceQbjdilfJSyo@ryzen>
References: <20241107123732.1160063-2-cassel@kernel.org>
 <4400329.mogB4TqSGs@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4400329.mogB4TqSGs@diego>

Hello Heiko,

On Wed, Aug 06, 2025 at 09:36:10PM +0200, Heiko Stübner wrote:
> 
> I've run into a bit of a problem with this patch and v6.16 today :-( .

Is the problem there also on older kernels?
(There as been a bunch of patches to the arm-smmu-v3 driver lately.)


> 
> It seems the SMMU currently does not play well, if has no users. With
> this patch the pcie smmu is always probed, even if nothing is using it.
> (or in fact the PCIe controller driver defers probing for whatever reason).

Well, the good thing is that the PCIe driver will probe successfully even
when there is nothing attached to the PCIe slot:
https://github.com/torvalds/linux/blob/v6.17-rc1/drivers/pci/controller/dwc/pcie-designware-host.c#L560-L561

So the only case where the driver will still be deferred after a normal
boot is if e.g. the user forgot to select the Kconfig for the PHY driver.

It does of course sound very bad that the board takes 30 seconds to reboot
in this case, but at least it reboots eventually.


> 
> But in all cases the SMMU's shutdown callback will be called when needed.
> 
> So test-case:
> - probe pcie-smmu, but do not probe PCIe ... hit reboot
>   The smmu shutdown function will hang for a bit, and at least my two
>   test boards  did reboot after hanging about 30 seconds
>   (I did trace that down to the arm_smmu_shutdown function)
> - probe pcie-smmu and probe PCIe - creating a user for the smmu
>   Reboot happens without hang/delay
> 
> Likely the SMMU is missing either a clock or its power-domain.
> 
> Just adding the power-domain to the node, did keep the domain on, but
> did not solve the hang for me.

Which power-domain did you add?

When I look at the PCIe controllers, they seem to use:
power-domains = <&power RK3588_PD_PCIE>;

So I assume that this is the power domain that you tried?

If I look at the RK3588 TRM Part1, 7.3.1 Domain Description,
page 1096, it does seem like the MMU600_PCIE is in power domain
PD_PHP and not PD_PCIE.

Perhaps you could something like:
power-domains = <&power RK3588_PD_PCIE>, <&power RK3588_PD_PHP>;

just to see if that improves things? (Ideally I would assume that we
should just need RK3588_PD_PHP.)

I do notice that RK3588_PD_PHP is defined/used in:
drivers/pmdomain/rockchip/pm-domains.c and
include/dt-bindings/power/rk3588-power.h

However, the RK3588_PD_PHP power domain does not seem to be defined in
rk3588-base.dtsi, like e.g. the RK3588_PD_PCIE power domain is:
https://github.com/torvalds/linux/blob/v6.17-rc1/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi#L1115-L1121

I also cannot find the RK3588_PD_PHP power domain defined in the
downstream dtsi:
https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr5.1/arch/arm64/boot/dts/rockchip/rk3588s.dtsi#L3422-L3427



Side note: from the TRM is seems that
pcie2x1l0, pcie2x1l1, pcie2x1l2 is also in the RK3588_PD_PHP power domain.
(only pcie3x4 and pcie3x2 is in the RK3588_PD_PCIE power domain.)

Yet, looking at rk3588-base.dtsi and rk3588-extra.dtsi, all five
PCIe controllers has:
power-domains = <&power RK3588_PD_PCIE>;

Looking at downstream, pcie3x4 and pcie3x2 has:
power-domains = <&power RK3588_PD_PCIE>;
but pcie2x1l0, pcie2x1l1, pcie2x1l2 has no power-domains property at all.

Perhaps a bug when Sebastian added the PCIe device tree nodes to upstream?


> Strangely enough, additionally forcing all clocks to stay permanently on,
> also didn't help (or I messed up somewhere) .
> I'm not sure if the PCIe controller does cause the SMMU to do some more
> initialization, that would be missing otherwise.

That does sound like the most likely explanation.

arm_smmu_device_shutdown() calls arm_smmu_device_disable() which simply
does a arm_smmu_write_reg_sync(smmu, 0, ARM_SMMU_CR0, ARM_SMMU_CR0ACK);

The ARM_SMMU_POLL_TIMEOUT_US is however 1s, so if your board reboots after
30 seconds, that is probably because of a watchdog or similar.


Kind regards,
Niklas

