Return-Path: <devicetree+bounces-98424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8B0966140
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 14:02:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DC4F1F2972D
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 12:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B93C51917C8;
	Fri, 30 Aug 2024 12:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="wg7QFA47"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0E919994F
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 12:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725019339; cv=none; b=uSG2fRACBjnbLfame9sInJbTzIIDHjiWzg1KpBJJsnHAYHGW/zZ90+AEOlbRPXXxgIDnofr0AXqsJ3POJRRMt4YmIYMRm+LE9kzIoQdRoO8BLWMnN3TRjFcI9SAV1tdmCsXlisPzscPweC10QjkOJiGggGPSeAcLCAHKw5ceC8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725019339; c=relaxed/simple;
	bh=V2WZaIi3PkflfC/de5kRhIbdhIEJfp1PJZeOc9i5kO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=OAALasI22NCplElHw7txLDE64eDmiMD9MFEkN0b+sRj4S3RLCdgrUt/hoF9+KtRJXPAD2EtOkVsQA8UoD38QHny6UarcTtXmReJhjTdHm7sCZPLPOhUGNIpSOhbBxwQKlc6RlTMxxg1o19YZ6q7H/N1C7OCCRAJLY18+OjSZgYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=wg7QFA47; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47U7C7dT029757;
	Fri, 30 Aug 2024 14:01:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	JxLqwOI2y8G6VvTSqDDxmPj3GGBoVay6s4WFCUCC6xk=; b=wg7QFA47jBgt7nQw
	moCsVUmfl8DGset4TFLOfjPDYRps5iabLLrrdhtmxh5j/WwjVu5kI6SXQPUYRmnp
	VNom+FhD0ejBMkJ/w8qmJ0R3Mud3pgDzVmLL5TYHvOl9oMvWIJSmZcwm8rXFpGFv
	VcwM+ZQ+hXocw/Ts/qag+Y3cH8Sy90cijdEL0n5uMCVAbQa5ISoFjHlTOYMwhojv
	vWKtE5Adc0s8w7OVZkhHOHke+IPa4m/Jp8KABvNMMnU8ZJyl/ZMYfZnISSFb3dyt
	6HqHjhj/W4aWAa3QvxC4ZOSuMJ/rqkjxc4dGUes2Ab9jIGtQMUFXdSntQ6wjHA1I
	FgkPlA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41a4y693w3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 14:01:48 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1C67A40045;
	Fri, 30 Aug 2024 14:01:42 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1A325261C00;
	Fri, 30 Aug 2024 14:01:06 +0200 (CEST)
Received: from [10.252.31.165] (10.252.31.165) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Fri, 30 Aug
 2024 14:01:05 +0200
Message-ID: <0d338c86-5a34-4a3b-a5b8-7b87d1c32431@foss.st.com>
Date: Fri, 30 Aug 2024 14:01:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: stm32: Keep MDIO bus in AF across suspend DH
 STM32MP13xx DHCOR DHSBC board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: <kernel@dh-electronics.com>,
        Christophe Roullier
	<christophe.roullier@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240705075918.41213-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240705075918.41213-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-30_06,2024-08-30_01,2024-05-17_01

Hi Marek

On 7/5/24 09:59, Marek Vasut wrote:
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
> V2: Fixup the eth2_rgmii_sleep_pins_a into AF as well
> ---
>   arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 20 ++++++++++++++++----
>   1 file changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> index ca19c8c6b6771..62c64e9c2b9f0 100644
> --- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> @@ -94,14 +94,20 @@ pins2 {
>   	/omit-if-no-ref/
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
> @@ -178,14 +184,20 @@ pins2 {
>   	/omit-if-no-ref/
>   	eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
>   		pins1 {
> +			pinmux = <STM32_PINMUX('B', 6, AF11)>, /* ETH_MDIO */
> +				 <STM32_PINMUX('G', 5, AF10)>; /* ETH_MDC */
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

Applied on stm32-next.

Thanks
Alex

