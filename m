Return-Path: <devicetree+bounces-145397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A5991A31379
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 18:49:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8533B18883BB
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 17:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50DD71DF99F;
	Tue, 11 Feb 2025 17:49:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E40B317C91
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 17:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739296178; cv=none; b=by77ZihGtqgaZ4BBP3zjyfqersux7rTpS9DBigMjqDMGh0JpBtwvwMidcoiR+VrYiaje8YCTXdmsdgWrxPiZfj3x2zCiKSg1PhdDg2DEZ4oXPis+wC9qVb7U0AbLNCgKRbPvQlBo/63rpY3lQoOE88I5B9ajOyaHseRjHolASJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739296178; c=relaxed/simple;
	bh=auaPfITMHbl7f7anQ7dVurlrt07UeZhqXIrf0KioHv0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kxf69eAZgQmhijJH0C64DdG1hYPzh/eMC+3fyC7WFZkM9HyjfghlWNH/q7l8/WvuDywjHGVu0HtO1DTNhVHpYfX1v4GS6ROoEXUcY9K8P1Ew6/jmh+UBX2ELYxTo4YM6xBfTsTAf/pDthfvFWw3XhMa8H008KEj8pkQdAQLlh4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 393EC13D5;
	Tue, 11 Feb 2025 09:49:55 -0800 (PST)
Received: from [10.57.35.63] (unknown [10.57.35.63])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 085D83F5A1;
	Tue, 11 Feb 2025 09:49:31 -0800 (PST)
Message-ID: <7996d1ec-6ceb-4d8a-bf03-1911ac5f8f0c@arm.com>
Date: Tue, 11 Feb 2025 17:49:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: disable IOMMU when running rk3588
 in PCIe endpoint mode
To: Niklas Cassel <cassel@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250207143900.2047949-2-cassel@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20250207143900.2047949-2-cassel@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-02-07 2:39 pm, Niklas Cassel wrote:
> Commit da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU
> on the rk3588 SoC") enabled the mmu600_pcie IOMMU, both in the normal case
> (when all PCIe controllers are running in Root Complex mode) and in the
> case when running the pcie3x4 PCIe controller in Endpoint mode.
> 
> There have been no issues detected when running the PCIe controllers in
> Root Complex mode. During PCI probe time, we will add a SID to the IOMMU
> for each PCI device enumerated on the bus, including the root port itself.
> 
> However, when running the pcie3x4 PCIe controller in Endpoint mode, we
> will only add a single SID to the IOMMU (the SID specified in the iommus
> DT property).
> 
> The enablement of IOMMU in endpoint mode was verified on setup with two
> Rock 5b:s, where the BDF of the Root Complex has BDF (00:00.0).
> 
> A Root Complex sending a TLP to the Endpoint will have Requester ID set
> to the BDF of the initiator. On the EP side, the Requester ID will then
> be used as the SID. This works fine if the Root Complex has a BDF that
> matches the iommus DT property, however, if the Root Complex has any other
> BDF, we will see something like:
> arm-smmu-v3 fc900000.iommu: event: C_BAD_STREAMID client: (unassigned sid) sid: 0x1600 ssid: 0x0
> on the endpoint side.
> 
> For PCIe controllers running in endpoint mode that always uses the
> incoming Requester ID as the SID, the iommus DT property simply isn't
> a viable solution. (Neither is iommu-map a viable solution, as there is
> no enumeration done on the endpoint side.)

Well, strictly the controller should own all the StreamIDs it's capable 
of emitting - if that's just one per possible bus number (as the iATU 
FUNC_NUM/FUNC_BYPASS stuff appears to suggest?) then 256 "iommus" 
entries isn't *entirely* unmanageable. If it were to support being 
arbitrary (or multiple) devices/functions, though, then we probably 
would want to look for a different solution, because nobody wants a 
512KB DT property... :)

Thanks,
Robin.

> Thus, partly revert commit da92d3dfc871 ("arm64: dts: rockchip: enable the
> mmu600_pcie IOMMU on the rk3588 SoC") by disabling the PCI IOMMU when
> running the pcie3x4 PCIe controller in Endpoint mode.
> 
> Since the PCI IOMMU is working as expected in the normal case, keep it
> enabled when running all PCIe controllers in Root Complex mode.
> 
> Fixes: da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC")
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi           | 1 -
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso | 4 ++++
>   2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> index 42b57e27ee4c..b5feefda9d2d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> @@ -215,7 +215,6 @@ pcie3x4_ep: pcie-ep@fe150000 {
>   		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
>   				  "dma0", "dma1", "dma2", "dma3";
>   		max-link-speed = <3>;
> -		iommus = <&mmu600_pcie 0x0000>;
>   		num-lanes = <4>;
>   		phys = <&pcie30phy>;
>   		phy-names = "pcie-phy";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> index 672d748fcc67..f229cb49da68 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> @@ -23,3 +23,7 @@ &pcie3x4_ep {
>   	vpcie3v3-supply = <&vcc3v3_pcie30>;
>   	status = "okay";
>   };
> +
> +&mmu600_pcie {
> +	status = "disabled";
> +};


