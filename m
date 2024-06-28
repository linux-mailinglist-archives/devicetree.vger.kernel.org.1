Return-Path: <devicetree+bounces-81153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8107191B74D
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:45:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A36CB1C2321E
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 06:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEE7185285;
	Fri, 28 Jun 2024 06:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="Uu6IC2Yd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B645584FA5
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 06:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719557134; cv=none; b=fGQ9APR7DycwMWDefIVEDK9VNWexWePAk4rsVblZYCISwST8vHpzFpRZts24WL2e6U2pvKITxwd87GnLSm3SQ8KhmdtA00ffZOIQ7JoYwsa9+rhmhnDhCJxjiNF8uiq+/1TR6y2De/44ZLQHcl0aTVWw6jGOU6MB2lRgyoroJvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719557134; c=relaxed/simple;
	bh=kgbWXI6En/q770JcfVXndzrhV9LszrESsR4dlKYostk=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=AaDmW+q7jgLsCotaOp25fqgyOwSgXOoknWiqbtE26Bktx1ifxI6w1bXIkHvHsjJL8nj8a2Tr3bHB9Ax2n008teW1R3sk2xarF2mjn9J9vsZP2gjPDz/6Bm1J2LkfvacBVaFNKIFYTe93pB7EIVpsi2AIJO+IOK3trNzF9ghwdww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=Uu6IC2Yd; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45S11Cp3016257;
	Fri, 28 Jun 2024 08:45:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	Qoe9Xu1t30Dqrr2PhhZka4kAVSUvtiycXTOSKG2SUA4=; b=Uu6IC2YdSHJDNUEF
	/eOJUDzLWxcbRDuErGyYBUCU0WH9xrbCyVYC4GAvYUFFEhCD4nLgE21hwBjxzQVR
	VV3BwtL1WFT4pbJgjBlFK6O06Cv0F7RfLAubUIVLNoeCPA6aH0J7PkjrJQHwe8dc
	Rk6BiHyewZQ9XQ41cnHe3o/ap452oKH88jtei3ednSeD1w8xVkrgu/LfdpYzxgf8
	IqT5Ah05PTsvf29VIG6Vf46FHMGEX8BZoQl+pk+5XGBxY+zFvDx5axBmLzyVuN0B
	3J3S2PFw0413J/ssTXlPn2fmyImBXb40p8ZifDRRqr4n3k49L4U5LXTc055tuJyx
	ICYnaw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3yx860xc97-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Jun 2024 08:45:03 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 776184002D;
	Fri, 28 Jun 2024 08:44:46 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7A92F2165EB;
	Fri, 28 Jun 2024 08:44:08 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Fri, 28 Jun
 2024 08:44:07 +0200
Message-ID: <04d2ef05-4f47-445c-8f5c-1e550ef5aff2@foss.st.com>
Date: Fri, 28 Jun 2024 08:44:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: stm32: Add ethernet support for DH
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
References: <20240628005729.119871-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240628005729.119871-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-28_02,2024-06-28_01,2024-05-17_01

Hi Marek

On 6/28/24 02:57, Marek Vasut wrote:
> Add ethernet support for the DH STM32MP13xx DHCOR DHSBC carrier board.
> This carrier board is populated with two gigabit ethernet ports and two
> Realtek RTL8211F PHYs, both are described in this DT patch.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

I already applied series which add the ETH support in mp13 DH board. Can 
you please resend a patch which only add the nvmem efuse stuff please ?

Alex



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
> V2: Fold ARM: dts: stm32: Add phandle to nvmem efuse into STM32MP13xx ethernet
>      DT node into this patch and make the nvmem-cells/nvmem-cell-names specific
>      to this board
> ---
>   .../boot/dts/st/stm32mp135f-dhcor-dhsbc.dts   | 60 +++++++++++++++++++
>   1 file changed, 60 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> index 5f4f6b6e427a5..3cc9ad88d61bc 100644
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
> @@ -72,6 +74,64 @@ channel@12 {
>   	};
>   };
>   
> +&ethernet1 {
> +	nvmem-cell-names = "mac-address";
> +	nvmem-cells = <&ethernet_mac1_address>;
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
> +	nvmem-cell-names = "mac-address";
> +	nvmem-cells = <&ethernet_mac2_address>;
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

