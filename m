Return-Path: <devicetree+bounces-83257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD2A927B4C
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 18:40:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F4891F219B9
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 16:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CE0E1B374B;
	Thu,  4 Jul 2024 16:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="wlfywOpP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B121B374F
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 16:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720111186; cv=none; b=L7B3glCZ7ahSjJyjZaeVM0D7mMxLQCpoOhu6QEh6hsiOntRaq3FHbDezIiTsMZ6EFO5s2wFHo1SOB/R9hDdD2F2y9y6t0OJRUY3mKk8JT9TikS2QtmFtjrfYH0vYeI/yARYCJtHlDcTLaXYp3AkE9vkANQ+LyFsQ4odJmDnFnI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720111186; c=relaxed/simple;
	bh=P4tFQTtbScLZuOuAYrjqSvw8sa8cw4RdjLjWs4NAU74=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=WjwrDPuZ6U7h1uJRvFskSHD1X9Yyn0TRU+X/893HyV0UarzAPCSf+iSePjBkMIuEJ18BSzeDt6G26hfu00QsRXKIKrVjt/oVG7R2Q6izxx69t7sS1afufGuk8WyxJ9LB/fM1MFNzROyezI9EidcyAMdBaozUJ8leXxRW7cLZUNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=wlfywOpP; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 464ChNxv024579;
	Thu, 4 Jul 2024 18:39:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	06rchv0CE49MXS+hxEoFZGZF+QUXysD3SdFe6kqdNe0=; b=wlfywOpPHivU12nC
	KThtgKR5y2XilZi13cJd3u5L3Asj0SeRDB3LrcGtuzPN8qOtSOqDZj75l1QaZF9s
	e4bvDSuzEtK3JDUpTEYhgjDxaMqBsUPApoxY+x4qG2OfWNmjnxsQzL+HLP6/x/Kv
	+cTgmW3SYsj9p22q69ja1DmgCFGqPnhQY2jc8qdqUqiXFOb2P2KEknQcq2Crz6Fe
	xCAcO8gpYoD9Vgme/FKQqOJGte9KJ92cjSNW8RRrPVbCOz0Rdq3r5IP7lEsKUsVp
	yYYOw9aBo9qD+h1GYg9+nT6ByNBGNhHkvbF4FLCEvqv+MrW9H0DHil+J/Z/EIR/y
	3jzZ9w==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 4029kx6030-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Jul 2024 18:39:09 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 22E1640048;
	Thu,  4 Jul 2024 18:39:02 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 898BF22AFEF;
	Thu,  4 Jul 2024 18:38:24 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 4 Jul
 2024 18:38:23 +0200
Message-ID: <501e109a-478a-4f94-a673-27048b44e5d5@foss.st.com>
Date: Thu, 4 Jul 2024 18:38:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Keep MDIO bus in AF across suspend DH
 STM32MP13xx DHCOR DHSBC board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Christophe Roullier <christophe.roullier@foss.st.com>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240629202847.90693-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240629202847.90693-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-04_13,2024-07-03_01,2024-05-17_01

Hi Marek

On 6/29/24 22:28, Marek Vasut wrote:
> The RTL8211F PHY gets confused when the MDIO bus lines get switched
> to ANALOG during suspend/resume cycle. Keep the MDIO and MDC lines
> in AF during suspend/resume to avoid confusing the PHY. The PHY can
> be brought out of the confused state by restarting auto-negotiation
> too, but that seems like an odd workaround and shouldn't be in the
> PHY driver.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Christophe Roullier <christophe.roullier@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 20 ++++++++++++++++----
>   1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> index d3deec602ae7a..e6c0dceee9866 100644
> --- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> @@ -88,14 +88,20 @@ pins2 {
>   
>   	eth1_rgmii_sleep_pins_a: eth1-rgmii-sleep-0 {
>   		pins1 {
> +			pinmux = <STM32_PINMUX('A', 2, AF11)>, /* ETH_MDIO */
> +				 <STM32_PINMUX('G', 2, AF11)>; /* ETH_MDC */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <2>;
> +		};
> +
> +		pins2 {
>   			pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /* ETH_RGMII_TXD0 */
>   				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
>   				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
>   				 <STM32_PINMUX('E', 5, ANALOG)>, /* ETH_RGMII_TXD3 */
>   				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
>   				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_RGMII_GTX_CLK */
> -				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
> -				 <STM32_PINMUX('G', 2, ANALOG)>, /* ETH_MDC */
>   				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
>   				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
>   				 <STM32_PINMUX('B', 0, ANALOG)>, /* ETH_RGMII_RXD1 */
> @@ -169,14 +175,20 @@ pins2 {
>   
>   	eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
>   		pins1 {
> +			pinmux = <STM32_PINMUX('B', 6, ANALOG)>, /* ETH_MDIO */
> +				 <STM32_PINMUX('G', 5, ANALOG)>; /* ETH_MDC */

Why don't you put PB6 and PG5 in AF for the sleep config as for ETH1 ?

> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <2>;
> +		};
> +
> +		pins2 {
>   			pinmux = <STM32_PINMUX('F', 7, ANALOG)>, /* ETH_RGMII_TXD0 */
>   				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD1 */
>   				 <STM32_PINMUX('G', 1, ANALOG)>, /* ETH_RGMII_TXD2 */
>   				 <STM32_PINMUX('E', 6, ANALOG)>, /* ETH_RGMII_TXD3 */
>   				 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_TX_CTL */
>   				 <STM32_PINMUX('G', 3, ANALOG)>, /* ETH_RGMII_GTX_CLK */
> -				 <STM32_PINMUX('B', 6, ANALOG)>, /* ETH_MDIO */
> -				 <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_MDC */
>   				 <STM32_PINMUX('F', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
>   				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD1 */
>   				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */

