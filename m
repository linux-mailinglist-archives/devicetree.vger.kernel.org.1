Return-Path: <devicetree+bounces-80625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 236EB91A156
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 543DA1C21A4A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 08:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0346777F13;
	Thu, 27 Jun 2024 08:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="y6RFNyFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD7550285
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 08:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719476667; cv=none; b=Cf04GzLqBZEF0PElduU7lX6TDrdKB5R/KYhCtcIC4o2/wg+rbH5F+L0Cyk+a7ay7B/QOI/C1zbEf5ui2CYKMfLjD3wcFJrVQbwzpbOssegQo7gTnTDzhLJzxqRVq4Q57m5P/aAL7cIi9h+lFvZEofsq07PYqUrsBpklapboFPbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719476667; c=relaxed/simple;
	bh=GLr5Rp+jqL3rBtUO44pMEvIN0uIQ21HgG6oe0OyP2P8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ifVcNSXc83VAQTHKHyKT4imFTldFp/nL1zBw2ISYyNIWRvYgPQiDnSAo+8a9h8IEA+ybFwwiw8+wwlwlWURpvYZND5EMUTDF89VL0fcI3k+4T26XIMhh4DgZBF6CiVD4/VXtWXpHgvCigPLlV9klk7l3+dws5sdJvRCpjt75Xg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=y6RFNyFZ; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45R7moPB014997;
	Thu, 27 Jun 2024 10:23:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	RfQjGox/hBiZBmFnj//4487z01utcZ3PZ9+Yhl19x2E=; b=y6RFNyFZsciHU7Mx
	QZgBmECCyboUs7Yr1PvHC8IpgDBq4kuOkKuiGa5s8HhLi3R5vUaXiHynON4dYVBr
	iS3PV/Wz1ug5qcpgwYIm+ktXkUcetIne6+qDFzcXgP2OlWXTYPo0rlacI/bl5+NV
	1gZeX0Bbrwymzf8BXGyStDU7KmgKffn4WJC41rH1EsFa+jW2UjetNiOwYyZSMbWf
	ikoExpsfgvo7yT529vG8jmKMac9qPT1IVJkXRrhGdpU3nDz0Qc4zoTL0lpDJ1TxQ
	5MhNpuxY0lRHoMrXV5m7rHctrO1ukqFLcOXChZHk/3T3BgrWWyiMdGPdY5MgWcOM
	BmNinw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ywm1gmrs1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jun 2024 10:23:42 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id DD84040052;
	Thu, 27 Jun 2024 10:22:52 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E3368212FA4;
	Thu, 27 Jun 2024 10:22:14 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 27 Jun
 2024 10:22:14 +0200
Message-ID: <5d9da37e-b120-42a3-8436-98a74c20596b@foss.st.com>
Date: Thu, 27 Jun 2024 10:22:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Fix STM32MP13xx pinmux node
 eth2-rgmii-sleep-0 copy-paste error
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
References: <20240626030736.512113-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240626030736.512113-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-27_04,2024-06-25_01,2024-05-17_01

Hi Marek

On 6/26/24 05:07, Marek Vasut wrote:
> Fix pin copy-paste error in STM32MP13xx eth2-rgmii-sleep-0 pinmux
> node. Clearly the pins like PG11 are not supposed to be duplicated
> in the node pinmux property, fix them up to match the hardware pin
> assignment.
> 
> Fixes: d1193e65647e ("ARM: dts: stm32: Add pinmux nodes for DH electronics STM32MP13xx DHCOR SoM and DHSBC board")
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
>   arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> index 42995a8f5034c..9c7cf8f3c3e8b 100644
> --- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
> @@ -157,16 +157,16 @@ eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
>   		pins1 {
>   			pinmux = <STM32_PINMUX('F', 7, ANALOG)>, /* ETH_RGMII_TXD0 */
>   				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD1 */
> -				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD2 */
> -				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD3 */
> -				 <STM32_PINMUX('G', 8, ANALOG)>, /* ETH_RGMII_TX_CTL */
> -				 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_GTX_CLK */
> -				 <STM32_PINMUX('B', 2, ANALOG)>, /* ETH_MDIO */
> +				 <STM32_PINMUX('G', 1, ANALOG)>, /* ETH_RGMII_TXD2 */
> +				 <STM32_PINMUX('E', 6, ANALOG)>, /* ETH_RGMII_TXD3 */
> +				 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_TX_CTL */
> +				 <STM32_PINMUX('G', 3, ANALOG)>, /* ETH_RGMII_GTX_CLK */
> +				 <STM32_PINMUX('B', 6, ANALOG)>, /* ETH_MDIO */
>   				 <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_MDC */
>   				 <STM32_PINMUX('F', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
>   				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD1 */
> -				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD2 */
> -				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD3 */
> +				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
> +				 <STM32_PINMUX('A', 8, ANALOG)>, /* ETH_RGMII_RXD3 */
>   				 <STM32_PINMUX('A', 12, ANALOG)>, /* ETH_RGMII_RX_CTL */
>   				 <STM32_PINMUX('H', 11, ANALOG)>; /* ETH_RGMII_RX_CLK */
>   		};

Applied on stm32-next. I think I'll squash the two fixes (this patch and 
the other one for the makefile) onto the initial patch when I create my 
PR vor v6.11.

Regards
Alex

