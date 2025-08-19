Return-Path: <devicetree+bounces-206094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C39CDB2B878
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:02:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 726887B69C4
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051431F8722;
	Tue, 19 Aug 2025 05:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="xxNHPMLD"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8061A294
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755579769; cv=none; b=CbR1tyz3bFX3s2lX0b583s8w/Sp+Vpqa0Nz1ujTcuIMC2mJz9O/OA89MU3SKUZf328PhAjEOLZN/PEmfgc4eoaYEDODMIRGsozStE0MPUpxRc65BX4TjPF0tD7CM89KKNHoCzdqX0hZDqRNJTJjrtSaIrY29fpk00EzbSJYDgGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755579769; c=relaxed/simple;
	bh=6oA2P9UjCDJpleCBni+1CEns5qnOpJ+IytljpKMMdWY=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=WXpMQvTXdxxyissKGs7bTZ6gko+j0Utnco9h3i1ElfC5ZdXJVLREo7F8/xn0Aa/eWdYuGE4SJ8D7IfXaTC8vEyoPIlXiuxUVMEwrSxAqbsSjohuP3Xt1xiPoaCRXYeFGuVyHPjB6bRYgQNfQHw34IDtCdPI04MB0Cu4D9SA8L/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=xxNHPMLD; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57J52PBK3322171;
	Tue, 19 Aug 2025 00:02:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755579745;
	bh=4wN2pzI1ikS5r+rVDU7HKCplVqluQG6zRxAmzPk80T4=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=xxNHPMLD21aJEZMol/9Gl0h+e6ywGSD47K9wWWqWYiOg/p2NHZQI3tgr/kdDfX0fc
	 YYcpBDTh0znMgdfVIQeGwCE8tUwgBVwqMtIYluOh7LMjp2CrIddr3ImY3NlyOi0Dz2
	 uNVfSV2tDE3x+VmdBjbmf+gCCOUCXdPNMSTyR1AY=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57J52P1B337947
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 19 Aug 2025 00:02:25 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 19
 Aug 2025 00:02:24 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 19 Aug 2025 00:02:24 -0500
Received: from [172.24.20.139] (lt5cd2489kgj.dhcp.ti.com [172.24.20.139])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57J52I422442985;
	Tue, 19 Aug 2025 00:02:19 -0500
Message-ID: <2440e1e4-e594-4037-8856-1181acb47b6e@ti.com>
Date: Tue, 19 Aug 2025 10:32:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/3] arm64: dts: ti: k3-j721e-main: Add DSI and
 DPHY-TX
To: Harikrishna Shenoy <h-shenoy@ti.com>, <neil.armstrong@linaro.org>,
        <jessica.zhang@oss.qualcomm.com>, <airlied@gmail.com>,
        <simona@ffwll.ch>, <maarten.lankhorst@linux.intel.com>,
        <mripard@kernel.org>, <tzimmermann@suse.de>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nm@ti.com>,
        <vigneshr@ti.com>, <kristo@kernel.org>, <thierry.reding@gmail.com>,
        <sam@ravnborg.org>, <dri-devel@lists.freedesktop.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <s-jain1@ti.com>, <devarsht@ti.com>, <u-kumar1@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-3-h-shenoy@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20250818154746.1373656-3-h-shenoy@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea


On 8/18/2025 9:17 PM, Harikrishna Shenoy wrote:
> From: Rahul T R <r-ravikumar@ti.com>
>
> TI's J721E SoC supports a DPI to DSI video signal conversion bridge on
> it's platform bus. The IP is from Cadence, and it has a custom TI
> wrapper around it to facilitate integration.
>
> This IP takes the DPI video signals from DSS and alongwith the DPHY IP,
> it transmits DSI video signals out of the SoC.
>
> Add support for DSI bridge and the DPHY-TX.
>
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 31 +++++++++++++++++++++++
>   1 file changed, 31 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index 5bd0d36bf33e..ce34d68a70f2 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -1881,6 +1881,37 @@ port@4 {
>   		};
>   	};
>   
> +	dphy2: phy@4480000 {
> +		compatible = "ti,j721e-dphy";
> +		reg = <0x0 0x04480000 0x0 0x1000>;

Please check format change to <0x00 0x04480000 0x00 0x1000> >


> +		clocks = <&k3_clks 296 1>, <&k3_clks 296 3>;
> +		clock-names = "psm", "pll_ref";
> +		#phy-cells = <0>;
> +		power-domains = <&k3_pds 296 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 296 3>;
> +		assigned-clock-parents = <&k3_clks 296 4>;
> +		assigned-clock-rates = <19200000>;
> +		status = "disabled";
> +	};
> +
> +	dsi0: dsi@4800000 {
> +		compatible = "ti,j721e-dsi";
> +		reg = <0x0 0x04800000 0x0 0x100000>, <0x0 0x04710000 0x0 0x100>;
> +		clocks = <&k3_clks 150 1>, <&k3_clks 150 5>;
> +		clock-names = "dsi_p_clk", "dsi_sys_clk";
> +		power-domains = <&k3_pds 150 TI_SCI_PD_EXCLUSIVE>;
> +		interrupt-parent = <&gic500>;

I think default parent is gic, may be you can avoid above line


> +		interrupts = <GIC_SPI 600 IRQ_TYPE_LEVEL_HIGH>;
> +		phys = <&dphy2>;
> +		phy-names = "dphy";
> +		status = "disabled";
> +
> +		dsi0_ports: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +	};
> +
>   	dss: dss@4a00000 {
>   		compatible = "ti,j721e-dss";
>   		reg =

