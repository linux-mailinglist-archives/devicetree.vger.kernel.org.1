Return-Path: <devicetree+bounces-80794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A620E91A6AB
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 14:38:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D87C81C2039B
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0A6156F27;
	Thu, 27 Jun 2024 12:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="ExgHoHNw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B481F15ECC2
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 12:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719491881; cv=none; b=s8908CKjb2FI1ktJBULr2kvlMVtdpL1Wv8jGiYEtmdyz2U/Gofhxwk9T1FC/Znp/U9ClVBulxDATGH/45GtJ5z7k0uSIGOD/nHiDqHXXI7+ukdCxMKo/H5liDsniM/3ors5hMdgI4SmZiLJ2tS29zdNQTeEUVbKGfttDc1J5SAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719491881; c=relaxed/simple;
	bh=DmZfpVmgwwxE8eu6we2qwQbtiu2HkOvcwk1Q9VC+tOg=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Bwj94yH4kuqKBIs+lRyEYUNokTsf9rcOtPDwkf9QEZO9CNI1a+RNRGz7QOhUvghSwxdU7Y2z0UEWlp9nUqtAQ3rLUv8Idnx3bTqte7PMUooVgwJpKUdnuPqPShxIxfLibnLQkz0nPYNtWU8NzMOfPw0mOJt0QVgV7GD/bYGUEAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=ExgHoHNw; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45RAAHsf000355;
	Thu, 27 Jun 2024 14:37:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	vRRJzG9lj7qRTt/Te+8nxpqFK2MQhPEtndbFf7AS3Nk=; b=ExgHoHNwDPh9PgaU
	hnKJ7bNSLiF0gIKaW0CpJ9dou/BP2tHZOJ83h4tjGOUxlziI0Ge+hN4Jsf3/6jfn
	VrIHXQtTpD5pYqvgl+A4Px6wSoDbFhGsyt+LZK2qwEsQN0ec1gxQiNK3sFT4uYby
	gGz5LgHygK/nqf+EVwkHxOdpDFVAzDSVJW6/VStLwP2Dlcn9MWumc0j0IehLGSsW
	NRU1A/5Jqqv3vzwZEON1zO7k0x3pN6GL6wTCQUwGrNwizMIDjlyM2S3LFvq+TJ2F
	/Z+oaFDWAt1tppVFnd91zTZ8+Qp1bcPazAOe1ZJv2GDN8dRVRMJ7446W1VQHELzT
	G0xuXg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ywm1gp0h8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jun 2024 14:37:30 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 104064002D;
	Thu, 27 Jun 2024 14:37:25 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3B7BA2171FF;
	Thu, 27 Jun 2024 14:36:47 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 27 Jun
 2024 14:36:46 +0200
Message-ID: <c5399907-e4b5-427b-bace-caf1b2492257@foss.st.com>
Date: Thu, 27 Jun 2024 14:36:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add ethernet support for DH STM32MP13xx
 DHCOR DHSBC board
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
References: <20240623195233.81550-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240623195233.81550-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-27_08,2024-06-27_03,2024-05-17_01

Hi Marek

On 6/23/24 21:51, Marek Vasut wrote:
> Add ethernet support for the DH STM32MP13xx DHCOR DHSBC carrier board.
> This carrier board is populated with two gigabit ethernet ports and two
> Realtek RTL8211F PHYs, both are described in this DT patch.
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
>   .../boot/dts/st/stm32mp135f-dhcor-dhsbc.dts   | 56 +++++++++++++++++++
>   1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> index 5f4f6b6e427a5..bacb70b4256bc 100644
> --- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> +++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> @@ -22,6 +22,8 @@ / {
>   		     "st,stm32mp135";
>   
>   	aliases {
> +		ethernet0 = &ethernet1;
> +		ethernet1 = &ethernet2;
>   		serial2 = &usart1;
>   		serial3 = &usart2;
>   	};
> @@ -72,6 +74,60 @@ channel@12 {
>   	};
>   };
>   


Kernel bot issue was linked to a dependency with Christophe Roullier 
patches which introduced ethernet1/2 on stm32mp131.dtsi. Those patches 
have been merged on stm32-next, so no more issues with yours.

So:
Applied on stm32-next.

Cheers
Alex


> +&ethernet1 {
> +	phy-handle = <&ethphy1>;
> +	phy-mode = "rgmii-id";
> +	pinctrl-0 = <&eth1_rgmii_pins_a>;
> +	pinctrl-1 = <&eth1_rgmii_sleep_pins_a>;
> +	pinctrl-names = "default", "sleep";
> +	st,ext-phyclk;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";
> +
> +		ethphy1: ethernet-phy@1 {
> +			/* RTL8211F */
> +			compatible = "ethernet-phy-id001c.c916";
> +			interrupt-parent = <&gpiog>;
> +			interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
> +			reg = <1>;
> +			reset-assert-us = <15000>;
> +			reset-deassert-us = <55000>;
> +			reset-gpios = <&gpioa 11 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&ethernet2 {
> +	phy-handle = <&ethphy2>;
> +	phy-mode = "rgmii-id";
> +	pinctrl-0 = <&eth2_rgmii_pins_a>;
> +	pinctrl-1 = <&eth2_rgmii_sleep_pins_a>;
> +	pinctrl-names = "default", "sleep";
> +	st,ext-phyclk;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";
> +
> +		ethphy2: ethernet-phy@1 {
> +			/* RTL8211F */
> +			compatible = "ethernet-phy-id001c.c916";
> +			interrupt-parent = <&gpiog>;
> +			interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
> +			reg = <1>;
> +			reset-assert-us = <15000>;
> +			reset-deassert-us = <55000>;
> +			reset-gpios = <&gpiog 8 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
>   &gpioa {
>   	gpio-line-names = "", "", "", "",
>   			  "", "DHSBC_USB_PWR_CC1", "", "",

