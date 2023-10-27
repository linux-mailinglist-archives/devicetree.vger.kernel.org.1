Return-Path: <devicetree+bounces-12422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A99C7D9674
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:22:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF973B20F1D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:22:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C5F18637;
	Fri, 27 Oct 2023 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gYRODK/D"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC856182CB
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:22:21 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 830349C;
	Fri, 27 Oct 2023 04:22:19 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39RBM4l5114884;
	Fri, 27 Oct 2023 06:22:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698405724;
	bh=xGwd4KsESQmxFHYv9r6OarCWMJIIIUBV9EueATH+2jI=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=gYRODK/DXIEHVOttGrWUaFntGccu7H9tgQvM4QfHEOnnq7FAmjqyolH0h8/CV5geO
	 WfYOqt61HBwjZQjpE/0XKlUeFW0FpTsGVsS04dgFvvvmrlVQEqv9kTKwLL+TCmye9M
	 ItjWHYBOXFwlSfEdOBVgzLLNLfhn7tXSZqj39NLM=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39RBM4WS107679
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 27 Oct 2023 06:22:04 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 27
 Oct 2023 06:22:03 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 27 Oct 2023 06:22:03 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39RBM3T0052202;
	Fri, 27 Oct 2023 06:22:03 -0500
Date: Fri, 27 Oct 2023 06:22:03 -0500
From: Nishanth Menon <nm@ti.com>
To: Nitin Yadav <n-yadav@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am62a-main: Add sdhci0 instance
Message-ID: <20231027112203.wynnevanyqe7xxw7@lapel>
References: <20231027093950.1202549-1-n-yadav@ti.com>
 <20231027093950.1202549-2-n-yadav@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231027093950.1202549-2-n-yadav@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 15:09-20231027, Nitin Yadav wrote:
> Add sdhci0 DT node in k3-am62a-main for eMMC support. Droping
> ITAP values as they are NA in datasheet[0] for lower speed modes.
> Add mmc0 alias for sdhci0 in k3-am62a7-sk.dts.
> 
> [0]https://www.ti.com/lit/gpn/am62a3 Table: 7-79 (Page No. 179)
> 
> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62a-main.dtsi | 19 +++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am62a7-sk.dts   |  1 +
>  2 files changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> index de36abb243f1..89b8b7d302cd 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> @@ -488,6 +488,25 @@ main_gpio1: gpio@601000 {
>  		status = "disabled";
>  	};
>  
> +	sdhci0: mmc@fa10000 {
> +		compatible = "ti,am62-sdhci";
> +		reg = <0x00 0xfa10000 0x00 0x260>, <0x00 0xfa18000 0x00 0x134>;
> +		interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> +		power-domains = <&k3_pds 57 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&k3_clks 57 5>, <&k3_clks 57 6>;
> +		clock-names = "clk_ahb", "clk_xin";
> +		assigned-clocks = <&k3_clks 57 6>;
> +		assigned-clock-parents = <&k3_clks 57 8>;
> +		mmc-hs200-1_8v;
> +		ti,trm-icp = <0x2>;
> +		ti,otap-del-sel-legacy = <0x0>;
> +		ti,otap-del-sel-mmc-hs = <0x0>;
> +		ti,otap-del-sel-hs200 = <0x6>;
> +		bus-width = <8>;
> +		ti,clkbuf-sel = <0x7>;
> +		status = "disabled";
> +	};
> +
>  	sdhci1: mmc@fa00000 {
>  		compatible = "ti,am62-sdhci";
>  		reg = <0x00 0xfa00000 0x00 0x260>, <0x00 0xfa08000 0x00 0x134>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> index cff283c75f8e..5d28c390b28e 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> @@ -20,6 +20,7 @@ aliases {
>  		serial0 = &wkup_uart0;
>  		serial2 = &main_uart0;
>  		serial3 = &main_uart1;
> +		mmc0 = &sdhci0;

Bring this in on your second patch in the series.

>  		mmc1 = &sdhci1;
>  	};
>  
> -- 
> 2.25.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

