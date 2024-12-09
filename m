Return-Path: <devicetree+bounces-128915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 544D19E9D3A
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 18:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E319D1887552
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE6E14D439;
	Mon,  9 Dec 2024 17:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="pLL2eUEc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC82233151
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 17:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733766182; cv=none; b=AnBGLHz66wkl27DG/voJ1FQHenGpxulCioqeYHLYDxfbuHint2zZ7csOz5UNWUNuqdpIAE9UECWwv/QmicNOwMZa9XJZnzMC6B1St9Jua2S7vvPNFKy71oHL5ysBY7EEEDaIa5xps78NE5B8E23zvSvYuN5xc1L6LWWW7D8js0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733766182; c=relaxed/simple;
	bh=DbznBMZAvjn78/7TbpZIK1GZ7b8OBHxgNefgq6MXpWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Gi7Bomn2YtD54KlqVZlO3QFVjFHP11E+YePEkZ6FlM4jTbWWUWRi1pfvcDRPkKl67ttLYhSMEsZ6YgZ23aABDdB4tNYs8sTXcw34ltivqTZp226QSLA97XG3YGfVTrEj3tFwrvDINyJb0mzx4MHcUJ0MO7lxNhylxdomoYMTaXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=pLL2eUEc; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B9DaPDf014876;
	Mon, 9 Dec 2024 18:42:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	Y2BGA9jU8VfghUQrUN6Yf64Ypr7lE8Oudb0vhFn8vD4=; b=pLL2eUEcNSIPxR+Y
	DYvWd4VIezOUREwXUmEvNLjuClUvdPgemUUajj84xw7U3VuY3+K3fiXGojGRZrDB
	+cCihAc4j19/fVMYmxGkDoPbqh+8fTY0ZvyOivmQd6PaJfF/RJrN8ZE6I8NOlHDQ
	L6cAx941WpCGlg5pPgEBONjjJSIV5lwUyHo8chwyNtu0tdpo4YMaJqof9lpfcSaj
	1D20lDpg4388e2Ur0aMtUns9w1BVmu9n6277V2IFD8h+WFmghkkNQUMp0dx1rUaD
	2maF9H/CKcMSuHV/2i2g5KKxqnn0SCbSBVupzm1yz80MtKHlIkJU1I9jn5PUnQoE
	unLFeg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 43ccnm1922-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 18:42:44 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 874D740044;
	Mon,  9 Dec 2024 18:41:39 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 348E72898EE;
	Mon,  9 Dec 2024 18:41:03 +0100 (CET)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 9 Dec
 2024 18:41:02 +0100
Message-ID: <7b0b43c8-0396-4a61-b8fc-6bb277f3a63b@foss.st.com>
Date: Mon, 9 Dec 2024 18:41:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Increase CPU core voltage on STM32MP13xx
 DHCOR SoM
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob
 Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20241105224728.147384-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20241105224728.147384-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01

Hi Marek

On 11/5/24 23:46, Marek Vasut wrote:
> The STM32MP13xx DHCOR DHSBC is populated with STM32MP13xx part capable
> of 1 GHz operation, increase the CPU core voltage to 1.35 V to make
> sure the SoC is stable even if the blobs unconditionally force the CPU
> to 1 GHz operation.
> 
> It is not possible to make use of CPUfreq on the STM32MP13xx because
> the SCMI protocol 0x13 is not implemented by upstream OpTee-OS which
> is the SCMI provider.
> 
> Fixes: 6331bddce649 ("ARM: dts: stm32: Add support for STM32MP13xx DHCOR SoM and DHSBC board")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> index 07133bd82efa6..8630de147a52b 100644
> --- a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> @@ -85,8 +85,8 @@ regulators {
>   
>   			vddcpu: buck1 { /* VDD_CPU_1V2 */
>   				regulator-name = "vddcpu";
> -				regulator-min-microvolt = <1250000>;
> -				regulator-max-microvolt = <1250000>;
> +				regulator-min-microvolt = <1350000>;
> +				regulator-max-microvolt = <1350000>;
>   				regulator-always-on;
>   				regulator-initial-mode = <0>;
>   				regulator-over-current-protection;


Applied on stm32-next.

Thanks!!
Alex

