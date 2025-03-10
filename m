Return-Path: <devicetree+bounces-156157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0947A59651
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B9B3188828D
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 13:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F6EB22A819;
	Mon, 10 Mar 2025 13:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="jvrqgR5d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245B021D5A9
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 13:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741613408; cv=none; b=Pua8E2vmMFaN5a++ibk/fSLrAuGFJJNVsyqRoYy1RU65sxI3tUtENRzICxUb1Yfg8UB9AmxIj20d5l2bLWvPBarehtNOIgmfX5FHRCkDPykqyI9e/wXIwYQikYk9oavgXBz3jv7OPgujmlaZXlhZGY1Iu2UlcBKnHP4z9QRBO/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741613408; c=relaxed/simple;
	bh=V6EfTB8UX9dt1EYFwTz8CvL5AdSBt2PcrBvnjZuTo74=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Gp8f5mf6rGJqgafXv+eLcsd43NQ9Xy5AsEt28o1R7UPzgKUxMGMiT6ZDwE48h3LUwoJLIwnbtUyk4x9GKSuFMApYWpoHY1i1YMnRHa8qrnm9LzZpOtHiPJds5VQBUd2FrDPXvMeBWHt3nf4HcXCdzvORRExg8QtNbc7VJ7FQcu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=jvrqgR5d; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52ABZfuq030529;
	Mon, 10 Mar 2025 14:29:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	dHKwU4dD4caBYMxPbtfYgf/Hwmnr7yW84qJlA1H5dsk=; b=jvrqgR5dPNW8tn0m
	UG7F2Fuqyne//saP+/Y4LS7wG0nI4r6Bo+ODHz/g/2/6f8N31UrckzLDqCAl+Dyy
	yQXUax7kosbkf6TrYlCtDU/1oHSbh2sVdE04iHSg5mWKwdviKQ/YyDmlEmEUzbQ2
	WiulXmUrQ4cLfUFx+/2EbMPhlPlUkNGY0tW2/c3FQTY2/5ncT3IjOfvEHzdkLIQS
	X54CFKJ004cUXOURM6f9r9OTc5g7m1fkLC52wqJAXQytz7QXTiAeFYYeZ+wqySMK
	oq/IoZznFDMx3Yevo7oCCfMZ/g77K5NqjTe8HLaA6Quu1kHqXolInzDHgmEwkwZe
	7uczfQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 458ev63x6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 14:29:45 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 5DE964005F;
	Mon, 10 Mar 2025 14:28:25 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E2BA54DF6BC;
	Mon, 10 Mar 2025 14:27:43 +0100 (CET)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Mon, 10 Mar
 2025 14:27:43 +0100
Message-ID: <6d42bdc8-825a-4fd9-80ab-cfe02fff6c86@foss.st.com>
Date: Mon, 10 Mar 2025 14:27:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add support for STM32MP13xx DHCOR SoM
 and DHSBC rev.200 board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20250302152605.54792-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20250302152605.54792-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_05,2025-03-07_03,2024-11-22_01

Hi Marek

On 3/2/25 16:25, Marek Vasut wrote:
> LDO2 is expansion connector supply on STM32MP13xx DHCOR DHSBC rev.200.
> LDO5 is carrier board supply on STM32MP13xx DHCOR DHSBC rev.200. Keep
> both regulators always enabled to make sure both the carrier board and
> the expansion connector is always powered on and supplied with correct
> voltage.
> 
> Describe ST33TPHF2XSPI TPM 2.0 chip interrupt and reset lines.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   .../boot/dts/st/stm32mp135f-dhcor-dhsbc.dts   | 30 +++++++++++++++++--
>   1 file changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> index 853dc21449d99..9902849ed0406 100644
> --- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> +++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts


Applied on stm32-next.

Thanks
Alex

> @@ -176,7 +176,7 @@ &gpioa {
>   	gpio-line-names = "", "", "", "",
>   			  "", "DHSBC_USB_PWR_CC1", "", "",
>   			  "", "", "", "DHSBC_nETH1_RST",
> -			  "", "DHCOR_HW-CODING_0", "", "";
> +			  "", "DHCOR_HW-CODING_0", "", "DHSBC_HW-CODE_2";
>   };
>   
>   &gpiob {
> @@ -197,7 +197,7 @@ &gpiod {
>   	gpio-line-names = "", "", "", "",
>   			  "", "DHCOR_RAM-CODING_0", "", "",
>   			  "", "DHCOR_RAM-CODING_1", "", "",
> -			  "", "", "", "";
> +			  "", "DHSBC_HW-CODE_1", "", "";
>   };
>   
>   &gpioe {
> @@ -221,6 +221,13 @@ &gpiog {
>   			  "DHSBC_ETH1_INTB", "", "", "DHSBC_ETH2_INTB";
>   };
>   
> +&gpioh {
> +	gpio-line-names = "", "", "", "DHSBC_HW-CODE_0",
> +			  "", "", "", "",
> +			  "", "", "", "",
> +			  "", "", "", "";
> +};
> +
>   &gpioi {
>   	gpio-line-names = "DHCOR_RTC_nINT", "DHCOR_HW-CODING_1",
>   			  "DHCOR_BT_REG_ON", "DHCOR_PMIC_nINT",
> @@ -296,6 +303,9 @@ &spi2 {
>   	st33htph: tpm@0 {
>   		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
>   		reg = <0>;
> +		interrupt-parent = <&gpioe>;
> +		interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
> +		reset-gpios = <&gpioe 12 GPIO_ACTIVE_LOW>;
>   		spi-max-frequency = <24000000>;
>   	};
>   };
> @@ -419,3 +429,19 @@ connector {
>   		type = "micro";
>   	};
>   };
> +
> +/* LDO2 is expansion connector 3V3 supply on STM32MP13xx DHCOR DHSBC rev.200 */
> +&vdd_ldo2 {
> +	regulator-always-on;
> +	regulator-boot-on;
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +};
> +
> +/* LDO5 is carrier board 3V3 supply on STM32MP13xx DHCOR DHSBC rev.200 */
> +&vdd_sd {
> +	regulator-always-on;
> +	regulator-boot-on;
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +};

