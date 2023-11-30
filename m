Return-Path: <devicetree+bounces-20534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA047FFE66
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 23:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 913F0B20CDF
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 22:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D5861698;
	Thu, 30 Nov 2023 22:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="M9/OgnM9"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBF3B10F3;
	Thu, 30 Nov 2023 14:19:54 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AUMJhRv042016;
	Thu, 30 Nov 2023 16:19:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701382783;
	bh=R/qRqtIKA4EXGEtpCr54N5p1pvu+fDyDEO6B4AAfBpA=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=M9/OgnM9SX26rzYAUg2lKClsz35RtApdF1NQey7QTpJbENjMUDhwWlZf2R1qpeGYt
	 L1YmRGn5dG/skILY6aB3t+gC7MFA0EgZ4sIO8kP1kR0iCHzHuR5EYyPimLrqDnCaJv
	 sPxx+WlyqPOlqvXvDsODP+Pj3SlHYGfnnKWPD4r4=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AUMJh4i026835
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 16:19:43 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 16:19:43 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 16:19:43 -0600
Received: from [128.247.81.105] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AUMJhbU050129;
	Thu, 30 Nov 2023 16:19:43 -0600
Message-ID: <43cb48da-6ce5-4501-a3c8-071595810bb3@ti.com>
Date: Thu, 30 Nov 2023 16:19:43 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am62a: Enable UHS mode support for
 SD cards
To: Nitin Yadav <n-yadav@ti.com>, <nm@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <vigneshr@ti.com>,
        <robh+dt@kernel.org>, <kristo@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
References: <20231026070155.1134063-1-n-yadav@ti.com>
 <20231026070155.1134063-2-n-yadav@ti.com>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <20231026070155.1134063-2-n-yadav@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 10/26/23 2:01 AM, Nitin Yadav wrote:
> Hook up required IO voltage regulators to support UHS modes on
> SD cards.
> 
> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 20 ++++++++++++++++++++
>   1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> index 9f3dfbfbf369..3ae1ea1997a4 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> @@ -102,6 +102,19 @@ vdd_mmc1: regulator-3 {
>   		gpio = <&exp1 3 GPIO_ACTIVE_HIGH>;
>   	};
>   
> +	vddshv_sdio: regulator-4 {
> +		compatible = "regulator-gpio";
> +		regulator-name = "vddshv_sdio";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vddshv_sdio_default_pins>;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		gpios = <&main_gpio0 31 GPIO_ACTIVE_HIGH>;
> +		states = <1800000 0x0>,
> +			 <3300000 0x1>;
> +	};
> +
>   	leds {
>   		compatible = "gpio-leds";
>   		pinctrl-names = "default";
> @@ -189,6 +202,12 @@ AM62AX_IOPAD(0x1f8, PIN_INPUT_PULLUP, 0) /* (AC2) MMC0_DAT7 */
>   		>;
>   	};
>   
> +	vddshv_sdio_default_pins: vddshv-sdio-default-pins {
> +		pinctrl-single,pins = <
> +			AM62AX_IOPAD(0x07c, PIN_OUTPUT, 7) /* (M19) GPMC0_CLK.GPIO0_31 */

Isn't this ball name N22? I might be wrong, but I did check using 
SYSCONFIG tool and datasheet.

> +		>;
> +	};
> +
>   	main_mmc1_pins_default: main-mmc1-default-pins {
>   		pinctrl-single,pins = <
>   			AM62AX_IOPAD(0x23c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
> @@ -294,6 +313,7 @@ &sdhci1 {
>   	/* SD/MMC */
>   	status = "okay";
>   	vmmc-supply = <&vdd_mmc1>;
> +	vqmmc-supply = <&vddshv_sdio>;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_mmc1_pins_default>;
>   	ti,driver-strength-ohm = <50>;


