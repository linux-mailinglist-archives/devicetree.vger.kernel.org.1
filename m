Return-Path: <devicetree+bounces-19401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E167FACB0
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 22:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 679E3B21322
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 21:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3C445BE2;
	Mon, 27 Nov 2023 21:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="EcVTTNJg"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCF401A1;
	Mon, 27 Nov 2023 13:42:06 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3ARLfv2O083467;
	Mon, 27 Nov 2023 15:41:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701121317;
	bh=446ESLgZYmmg8jBKicvqQhbXXl4nU4Lj3K6FhApWxkE=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=EcVTTNJglJ0Re/Rgnl8Y9QF0RX3jygrDdr/zaYuvBKUqgoro69KCKOp2+LtrDSX1p
	 tGTgE1UhDgSwsnsKTyX1B6oLk9U9nB9f8DycNnCfxv5VPX4DYbwUKLGjN61x4a1fHP
	 eT0YHHbSms/tsYR8ebJddmfGoJzMzDx4mgh2+WY8=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3ARLfvYq012050
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 27 Nov 2023 15:41:57 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 27
 Nov 2023 15:41:56 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 27 Nov 2023 15:41:56 -0600
Received: from [128.247.81.105] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3ARLfuNR045357;
	Mon, 27 Nov 2023 15:41:56 -0600
Message-ID: <4953b4e5-0f9c-4a3a-ae69-40716750cb40@ti.com>
Date: Mon, 27 Nov 2023 15:41:56 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: ti: k3-am62a-main: Add sdhci0 instance
To: Nitin Yadav <n-yadav@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20231030063108.1242981-1-n-yadav@ti.com>
 <20231030063108.1242981-2-n-yadav@ti.com>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <20231030063108.1242981-2-n-yadav@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 10/30/23 1:31 AM, Nitin Yadav wrote:
> Add sdhci0 DT node in k3-am62a-main for eMMC support. Droping
> ITAP values as they are NA in datasheet[0] for lower speed modes.
> 
> [0]https://www.ti.com/lit/gpn/am62a3 Table: 7-79 (Page No. 179)
> 

Minor comment below. All else looks good to me.

Reviewed by: Judith Mendez <jm@ti.com>

> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am62a-main.dtsi | 19 +++++++++++++++++++
>   1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> index de36abb243f1..89b8b7d302cd 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> @@ -488,6 +488,25 @@ main_gpio1: gpio@601000 {
>   		status = "disabled";
>   	};
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

I am wondering why DDR52 speed mode was not added?

> +		bus-width = <8>;
> +		ti,clkbuf-sel = <0x7>;
> +		status = "disabled";
> +	};
> +
>   	sdhci1: mmc@fa00000 {
>   		compatible = "ti,am62-sdhci";
>   		reg = <0x00 0xfa00000 0x00 0x260>, <0x00 0xfa08000 0x00 0x134>;

~ Judith

