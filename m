Return-Path: <devicetree+bounces-41133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE26F852836
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 06:26:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E78428574B
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 05:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF3511C82;
	Tue, 13 Feb 2024 05:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="s5tipja8"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABAA11723
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 05:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707802001; cv=none; b=t4TLQWLf2GrpYrR6IsUY+ALblupxVJpnR9yb5urrOzr4CYAOGVLZVgUn1aTUrSf3bmpCoC0VchFl4XszYpbCmdCUQlels3meUenzjWEs4G2D8UZ8jm/8RO6dWyhi6uNmk9mCDl9ZdBAA/ekPI1RTlIvl1wUV94IIsXTItGtaUN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707802001; c=relaxed/simple;
	bh=hjxrR0ktCNdgYOoPL8dJtFgjMOd2joUxYA7LJ88EPC4=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=T9opMX6ya6A4pLLosYwa9jkfLoSzV2UVdM3Kwnpk+GCO2pHo+TTqQCIz1ywJzoyq5dEc5rGTtt/nn02vzW3u0C6CprqQVSeoCHtxX0K/jJk9Vh/1WTCVTGF/QF2zCyydC8hpz9xjUAWVyqiBo8tl1p2G+AqMtdfuh7I7eWtPJK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=s5tipja8; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1707801995; x=1710393995;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hjxrR0ktCNdgYOoPL8dJtFgjMOd2joUxYA7LJ88EPC4=;
	b=s5tipja8XUfTMS3j+0W9QmxWC7lVLfJQEDuQhTmq4gPxM2nHa2xON5lLU103eVk5
	LwR/ivKHnS06VTRlfERoN1Ozgohvyhr3GDPEmiTX5Y3YoI8/uKGxx8Az1z0aO3/j
	g2sSVkaYkUHGeJmvwtel3XpPEkOyzBxkE919dZpTXXw=;
X-AuditID: ac14000a-fbefe7000000290d-c9-65cafd8b5628
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id AA.5D.10509.B8DFAC56; Tue, 13 Feb 2024 06:26:35 +0100 (CET)
Received: from [172.20.10.5] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Tue, 13 Feb
 2024 06:26:56 +0100
Message-ID: <5f9fd69e-d3f6-4293-8746-06173f24e521@phytec.de>
Date: Tue, 13 Feb 2024 06:26:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/9] arm64: dts: ti: k3-am6*: Remove DLL properties for
 soft PHYs
Content-Language: en-US
To: Judith Mendez <jm@ti.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Francesco
 Dolcini <francesco.dolcini@toradex.com>
References: <20240213002416.1560357-1-jm@ti.com>
 <20240213002416.1560357-7-jm@ti.com>
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20240213002416.1560357-7-jm@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAIsWRmVeSWpSXmKPExsWyRpKBR7f776lUg/tPlC3W7D3HZDH/yDlW
	i7tLfzJafPqQabH882x2i74XD5ktNj2+xmpxedccNos3P84yWbTuPcJu8f/sB3YHbo9NqzrZ
	PO5c28PmsXlJvcfxG9uZPDa98vD4vEkugC2KyyYlNSezLLVI3y6BK+P+y0NMBUuDKvZ8mMTW
	wNjh3MXIySEhYCJx6tJvVhBbSGAxk8Ss6foQ9h1GiSmvHUBsXgEbifvreplBbBYBVYneByvZ
	IOKCEidnPmEBsUUF5CXu35rBDmILC0RJbHsxD2wms4C4xK0n85m6GLk4RAQWMEocOrwLzGEW
	aGWSeNDwEqiDA2hbuMSbp1kgDWwC6hJ3NnwDa+YUMJRY+eMVG8QgC4nFbw6yQ9jyEs1bZzND
	HCov8eLSchaIZ+Qlpp17zQxhh0ps/bKdaQKj8Cwkt85CctMsJGNnIRm7gJFlFaNQbmZydmpR
	ZrZeQUZlSWqyXkrqJkZQrIkwcO1g7JvjcYiRiYPxEKMEB7OSCO+lGSdShXhTEiurUovy44tK
	c1KLDzFKc7AoifOu7ghOFRJITyxJzU5NLUgtgskycXBKNTBO8fy2vKgkIJ1/53xh3wbP8MSd
	0fOdjq1jYdtcvM6S6YHJ3btb3pdzvgw59/OJ/TzRdIOqp/LhM38mrPNY9WHxjSKOVzNiNLZf
	bK3fObO82Dj88c1rFjmmLaJlE/cZlbUduSM1y9Pdt9hvmmfpkZRzH9W7q1/98GdQveDM7xF3
	tNrISlRM0luJpTgj0VCLuag4EQDwgNn2owIAAA==

Hi Judith,

Am 13.02.24 um 01:24 schrieb Judith Mendez:
> Remove DLL properties which are not applicable for soft PHYs
> since these PHYs do not have a DLL to enable.
>
> Signed-off-by: Judith Mendez <jm@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am62-main.dtsi              | 3 ---
>   arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi       | 1 -
>   arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi     | 1 -
>   arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi        | 1 -
>   arch/arm64/boot/dts/ti/k3-am62-verdin-wifi.dtsi       | 1 -
>   arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi            | 2 --
>   arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts        | 3 ---
>   arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts | 1 -
>   arch/arm64/boot/dts/ti/k3-am62a-main.dtsi             | 1 -
>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts               | 1 -
>   arch/arm64/boot/dts/ti/k3-am62p5-sk.dts               | 1 -
>   arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi        | 2 --
>   arch/arm64/boot/dts/ti/k3-am64-main.dtsi              | 1 -
>   arch/arm64/boot/dts/ti/k3-am642-evm.dts               | 1 -
>   arch/arm64/boot/dts/ti/k3-am642-sk.dts                | 1 -

what about sdhci1 node updates on
   - k3-am642-phyboard-electra-rdk.dts
   - k3-am642-tqma64xxl-mbax4xxl.dts

Also does this apply only for am64 and sdhci1 (and not sdhci0)?
In your v1 you are describing that only AM64x and AM62p devices have a 
DLL to update the drive strength.
Trying to understand why only one of the interfaces gets updated.

Regards,
Wadim

>   15 files changed, 21 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> index fe0cc4a9a501..79ed5cbbbda1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -561,7 +561,6 @@ sdhci0: mmc@fa10000 {
>   		assigned-clock-parents = <&k3_clks 57 8>;
>   		mmc-ddr-1_8v;
>   		mmc-hs200-1_8v;
> -		ti,trm-icp = <0x2>;
>   		bus-width = <8>;
>   		ti,clkbuf-sel = <0x7>;
>   		ti,otap-del-sel-legacy = <0x0>;
> @@ -580,7 +579,6 @@ sdhci1: mmc@fa00000 {
>   		power-domains = <&k3_pds 58 TI_SCI_PD_EXCLUSIVE>;
>   		clocks = <&k3_clks 58 5>, <&k3_clks 58 6>;
>   		clock-names = "clk_ahb", "clk_xin";
> -		ti,trm-icp = <0x2>;
>   		ti,otap-del-sel-legacy = <0x8>;
>   		ti,otap-del-sel-sd-hs = <0x0>;
>   		ti,otap-del-sel-sdr12 = <0x0>;
> @@ -604,7 +602,6 @@ sdhci2: mmc@fa20000 {
>   		power-domains = <&k3_pds 184 TI_SCI_PD_EXCLUSIVE>;
>   		clocks = <&k3_clks 184 5>, <&k3_clks 184 6>;
>   		clock-names = "clk_ahb", "clk_xin";
> -		ti,trm-icp = <0x2>;
>   		ti,otap-del-sel-legacy = <0x8>;
>   		ti,otap-del-sel-sd-hs = <0x0>;
>   		ti,otap-del-sel-sdr12 = <0x0>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> index 3372a256c90f..43488cc8bcb1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> @@ -317,7 +317,6 @@ serial_flash: flash@0 {
>   &sdhci0 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mmc0_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   	non-removable;
>   	status = "okay";
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> index bf6d27e70bc4..6c4cec8728e4 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> @@ -185,7 +185,6 @@ &ospi0 {
>   
>   /* Verdin SD_1 */
>   &sdhci1 {
> -	ti,driver-strength-ohm = <33>;
>   	status = "okay";
>   };
>   
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi
> index 680071688dcb..be62648e7818 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi
> @@ -206,7 +206,6 @@ &ospi0 {
>   
>   /* Verdin SD_1 */
>   &sdhci1 {
> -	ti,driver-strength-ohm = <33>;
>   	status = "okay";
>   };
>   
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-wifi.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin-wifi.dtsi
> index a6808b10c7b2..4768ef42c4fc 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-wifi.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-wifi.dtsi
> @@ -26,7 +26,6 @@ &sdhci2 {
>   	mmc-pwrseq = <&wifi_pwrseq>;
>   	non-removable;
>   	ti,fails-without-test-cd;
> -	ti,driver-strength-ohm = <50>;
>   	vmmc-supply = <&reg_3v3>;
>   	status = "okay";
>   };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
> index 6a06724b6d16..d68310444bcb 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi
> @@ -1407,7 +1407,6 @@ &sdhci0 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pinctrl_sdhci0>;
>   	non-removable;
> -	ti,driver-strength-ohm = <50>;
>   	status = "okay";
>   };
>   
> @@ -1416,7 +1415,6 @@ &sdhci1 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pinctrl_sdhci1>;
>   	disable-wp;
> -	ti,driver-strength-ohm = <50>;
>   	vmmc-supply = <&reg_sdhc1_vmmc>;
>   	vqmmc-supply = <&reg_sdhc1_vqmmc>;
>   	status = "disabled";
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
> index 3b4246ce49de..bb6a5837bcb3 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
> @@ -819,7 +819,6 @@ &sdhci0 {
>   	bootph-all;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&emmc_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   	status = "okay";
>   };
> @@ -832,7 +831,6 @@ &sdhci1 {
>   
>   	vmmc-supply = <&vdd_3v3_sd>;
>   	vqmmc-supply = <&vdd_sd_dv>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   	cd-gpios = <&main_gpio1 48 GPIO_ACTIVE_LOW>;
>   	cd-debounce-delay-ms = <100>;
> @@ -849,7 +847,6 @@ &sdhci2 {
>   	ti,fails-without-test-cd;
>   	cap-power-off-card;
>   	keep-power-in-suspend;
> -	ti,driver-strength-ohm = <50>;
>   	assigned-clocks = <&k3_clks 157 158>;
>   	assigned-clock-parents = <&k3_clks 157 160>;
>   	#address-cells = <1>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> index 5c31f0453def..a83a90497857 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> @@ -334,7 +334,6 @@ &sdhci1 {
>   	vqmmc-supply = <&vddshv5_sdio>;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mmc1_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   	no-1-8-v;
>   	status = "okay";
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> index 6806288ec227..f283777d54b4 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> @@ -561,7 +561,6 @@ sdhci1: mmc@fa00000 {
>   		power-domains = <&k3_pds 58 TI_SCI_PD_EXCLUSIVE>;
>   		clocks = <&k3_clks 58 5>, <&k3_clks 58 6>;
>   		clock-names = "clk_ahb", "clk_xin";
> -		ti,trm-icp = <0x2>;
>   		ti,otap-del-sel-legacy = <0x0>;
>   		ti,otap-del-sel-sd-hs = <0x0>;
>   		ti,otap-del-sel-sdr12 = <0xf>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> index c99b2e90f76d..f241637a5642 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> @@ -582,7 +582,6 @@ &sdhci1 {
>   	vmmc-supply = <&vdd_mmc1>;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mmc1_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   };
>   
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> index 8c73587b0b62..5c9b73726ebd 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> @@ -422,7 +422,6 @@ &sdhci1 {
>   	vqmmc-supply = <&vddshv_sdio>;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mmc1_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   	bootph-all;
>   };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> index 6dd496cd459a..3c45782ab2b7 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> @@ -411,7 +411,6 @@ &sdhci0 {
>   	status = "okay";
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mmc0_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   };
>   
> @@ -421,7 +420,6 @@ &sdhci1 {
>   	status = "okay";
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mmc1_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   };
>   
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> index 9bfa0a969bfc..a29847735c6e 100644
> --- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> @@ -646,7 +646,6 @@ sdhci1: mmc@fa00000 {
>   		power-domains = <&k3_pds 58 TI_SCI_PD_EXCLUSIVE>;
>   		clocks = <&k3_clks 58 3>, <&k3_clks 58 4>;
>   		clock-names = "clk_ahb", "clk_xin";
> -		ti,trm-icp = <0x2>;
>   		ti,otap-del-sel-legacy = <0x0>;
>   		ti,otap-del-sel-sd-hs = <0x0>;
>   		ti,otap-del-sel-sdr12 = <0xf>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> index 5c546ae76d3e..f308076d608a 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
> @@ -508,7 +508,6 @@ &sdhci1 {
>   	pinctrl-names = "default";
>   	bus-width = <4>;
>   	pinctrl-0 = <&main_mmc1_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   };
>   
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
> index cce04e188ff6..b286eaa02ada 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
> @@ -471,7 +471,6 @@ &sdhci1 {
>   	pinctrl-names = "default";
>   	bus-width = <4>;
>   	pinctrl-0 = <&main_mmc1_pins_default>;
> -	ti,driver-strength-ohm = <50>;
>   	disable-wp;
>   };
>   

