Return-Path: <devicetree+bounces-212111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C66B41D30
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CA963B79B5
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D272FABE2;
	Wed,  3 Sep 2025 11:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="JAfQV2hp"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5582D978D
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756899562; cv=none; b=erfmFnMndv7GH2uyoa7TJ65E5qirdzMPShvTf7Y8T06jSbKuHXEkNfBOadN/XJMd1K4x05mgcTjxb+sCvbQ3TKsPEVStQK0yZpE65WF5r81Dhebs/STeYGkjTN6EzU/UgMGS5CXyMEuSLywKmZMl8NPcleUWuuQc6Co02iZHNDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756899562; c=relaxed/simple;
	bh=98Hx3HfQiC0khecw0J8Jgqy0QJbIjnzJCVX0L42gisI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=CKfObcefECKbnGE3i28YWnJfXFjMtLYPtVugiHvFtMweuvMaNuKIUpLezZGf56j1ziV/zYy4j3vxnnJhVlaoC8LhMiLzohJucmMTAE7lI50nrAADEd3qfwbtl5mk8DUZsi3lKauBqivW+G4TaJOEGlOArjGXBQFygQPilcBiq0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=JAfQV2hp; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 583BdD2T3252926;
	Wed, 3 Sep 2025 06:39:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1756899553;
	bh=vPbWqm2e8Pleqh1YH+aI+ivP4R4vMJt3pSY+QJLucY8=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=JAfQV2hpQR5m/PvoWDxcipHesmIlLvsceH769vET85mrq+vlx50Dbbxjf4zfsQIgI
	 bbBS1jEshTbckVtwlirVXdRtmUXJMT/Qlu19ju/dvPqcmPRL4KuKgs+ycuCGCor6R4
	 J5uR8KIBKmuTbMK3UcP11dEj9Eu37s+vwPIlKAFU=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 583BdD5r3489464
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Wed, 3 Sep 2025 06:39:13 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Wed, 3
 Sep 2025 06:39:12 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Wed, 3 Sep 2025 06:39:12 -0500
Received: from [172.24.233.62] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.233.62])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 583Bd9Is1215759;
	Wed, 3 Sep 2025 06:39:10 -0500
Message-ID: <1adea165-ae87-463f-a03e-2fe27f4b8695@ti.com>
Date: Wed, 3 Sep 2025 17:09:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-main: Add DSI and DPHY-TX
To: Harikrishna Shenoy <h-shenoy@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20250822124622.1424473-1-h-shenoy@ti.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <20250822124622.1424473-1-h-shenoy@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Hari,

On 22/08/25 18:16, Harikrishna Shenoy wrote:
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
> index ab3666ff4297..d65b6fcae338 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -1887,6 +1887,37 @@ port@4 {
>   		};
>   	};
>   
> +	dphy2: phy@4480000 {

I would suggest to have a better label naming:
s/dphy2/dphy_tx
s/dphy1/dphy_rx

> +		compatible = "ti,j721e-dphy";
> +		reg = <0x00 0x04480000 0x00 0x1000>;
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
> +		reg = <0x00 0x04800000 0x00 0x100000>, <0x00 0x04710000 0x00 0x100>;
> +		clocks = <&k3_clks 150 1>, <&k3_clks 150 5>;
> +		clock-names = "dsi_p_clk", "dsi_sys_clk";
> +		power-domains = <&k3_pds 150 TI_SCI_PD_EXCLUSIVE>;
> +		interrupt-parent = <&gic500>;
> +		interrupts = <GIC_SPI 600 IRQ_TYPE_LEVEL_HIGH>;
> +		phys = <&dphy2>;

phys = <&dphy_tx>

and likewise for dphy_rx.

Regards
Devarsh


