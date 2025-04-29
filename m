Return-Path: <devicetree+bounces-172003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E994AA0F22
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:38:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CF943B227E
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C54217F29;
	Tue, 29 Apr 2025 14:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HTqLcWH0"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF9D217F31
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745937463; cv=none; b=N9i1CnG2Rq9tsDePibGX4eqbI44kwJylVOHwHeiGTsn/LsjnPF4KEsc76oVe1a8pozXUNRG6ch2nu3icI899+BO0zVPLTNVE4JAqu0ZhHsHcLua6JYd3pC2xkYMJtab++DR15kOallKt3SUZInC52RCqE4UitUzPgiZbayHYM+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745937463; c=relaxed/simple;
	bh=FXQAF0rqrHl6fFn2eyikTt+U4C5cvwwm+yblJhj5fxA=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hGvW/dht3LzrkdgSGuL/FMedcubLRPOzkicwqmlzp6VGR/NEGfpme579WeHgYBcgW6gRrhBZ7cOJ5LikPFq4bVloYyWvaWxvAQQw72cHMitQlPyTVlk24kOHefT9Qv8LUVdPVm97ayx4v4Hjr/QWnMm7selSnnPZyMHTc7wHnMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=HTqLcWH0; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53TESQ0f3117359
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 29 Apr 2025 09:28:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1745936906;
	bh=MrVE1N/wFbZaBJ1oXIeEDUfqYfCD3wLAKBNXgULHQNA=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=HTqLcWH0ZHpq90H9L8BrEm40CAD45Ff3AIVEH4us4okodm/3As9bzQelCLhF/n+qX
	 1D/6VBqWNvNnIC8jps+zz8q5v/tI2mf4S7sxdWaJYQCUaNuoGLFXVAipysltHbYGhD
	 WkQDTBN3JujXsk+8h8ac7Sbaa6ZOjF6tG3oT1aHM=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53TESQFh066594
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 29 Apr 2025 09:28:26 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 29
 Apr 2025 09:28:25 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 29 Apr 2025 09:28:25 -0500
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53TESPfs073545;
	Tue, 29 Apr 2025 09:28:25 -0500
Date: Tue, 29 Apr 2025 09:28:25 -0500
From: Nishanth Menon <nm@ti.com>
To: Judith Mendez <jm@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am6*: Set eMMC clock parents to
 default
Message-ID: <20250429142825.bvrbpoc5iz32wh35@garment>
References: <20250429142333.4140010-1-jm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250429142333.4140010-1-jm@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 09:23-20250429, Judith Mendez wrote:
> Set eMMC clock parents to the defaults which is MAIN_PLL0_HSDIV5_CLKOUT
> for eMMC. This change is necessary since DM is not implementing the
> correct procedure to switch PLL clock source for eMMC and we have a
> non-glich-free mux. To remove any potential issues, lets switch back to
> the defaults.
> 
> Fixes: c37c58fdeb8a ("arm64: dts: ti: k3-am62: Add more peripheral nodes")
> Fixes: d3ae4e8d8b6a ("arm64: dts: ti: k3-am62a-main: Add sdhci0 instance")
> Fixes: b5080c7c1f7e ("arm64: dts: ti: k3-am62p: Add nodes for more IPs")

I thought I had given this comment previously as well, please DONOT put
multiple fixes in a single patch -> All three are solving the similar
problems, but on three different baseline - please think through how
this patch needs to be automatically backported to previous stable
kernels.

> Cc: stable@vger.kernel.org
> Signed-off-by: Judith Mendez <jm@ti.com>
> Acked-by: Udit Kumar <u-kumar1@ti.com>
> ---
> This patch was split from "Misc MMC udates" patch series [0] to help
> with backporting.
> [0] https://lore.kernel.org/linux-devicetree/20250417233040.3658761-1-jm@ti.com/
> ---
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi               | 2 --
>  arch/arm64/boot/dts/ti/k3-am62a-main.dtsi              | 2 --
>  arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 2 --
>  3 files changed, 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> index 7d355aa73ea2..0c286f600296 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -552,8 +552,6 @@ sdhci0: mmc@fa10000 {
>  		power-domains = <&k3_pds 57 TI_SCI_PD_EXCLUSIVE>;
>  		clocks = <&k3_clks 57 5>, <&k3_clks 57 6>;
>  		clock-names = "clk_ahb", "clk_xin";
> -		assigned-clocks = <&k3_clks 57 6>;
> -		assigned-clock-parents = <&k3_clks 57 8>;
>  		bus-width = <8>;
>  		mmc-ddr-1_8v;
>  		mmc-hs200-1_8v;
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> index a1daba7b1fad..455ccc770f16 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> @@ -575,8 +575,6 @@ sdhci0: mmc@fa10000 {
>  		power-domains = <&k3_pds 57 TI_SCI_PD_EXCLUSIVE>;
>  		clocks = <&k3_clks 57 5>, <&k3_clks 57 6>;
>  		clock-names = "clk_ahb", "clk_xin";
> -		assigned-clocks = <&k3_clks 57 6>;
> -		assigned-clock-parents = <&k3_clks 57 8>;
>  		bus-width = <8>;
>  		mmc-hs200-1_8v;
>  		ti,clkbuf-sel = <0x7>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> index 7b65538110e8..fa55c43ca28d 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> @@ -573,8 +573,6 @@ sdhci0: mmc@fa10000 {
>  		power-domains = <&k3_pds 57 TI_SCI_PD_EXCLUSIVE>;
>  		clocks = <&k3_clks 57 1>, <&k3_clks 57 2>;
>  		clock-names = "clk_ahb", "clk_xin";
> -		assigned-clocks = <&k3_clks 57 2>;
> -		assigned-clock-parents = <&k3_clks 57 4>;
>  		bus-width = <8>;
>  		mmc-ddr-1_8v;
>  		mmc-hs200-1_8v;
> 
> base-commit: d864bb528a6725e775d564fd4430762acbb9dd0d
> -- 
> 2.49.0
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

