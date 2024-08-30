Return-Path: <devicetree+bounces-98427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD2D966198
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 14:27:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E6831C2115C
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 12:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A641AD5E8;
	Fri, 30 Aug 2024 12:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="Hr4RhoAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3977C199951
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 12:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725020725; cv=none; b=DZYksNsRWxv21MAaVsKMa34l2IrkBZn51+mVnnMLcy56e0RC7JZkpJeKnyJ1HEzoV9hc00GtT/1dieT92t0CkJirj6Ei3dAj8Etpxr3Y9ECpeJ6YC5aNktOwVk7bN+5jYs97GEK1bUZdVEHXkugyMJ8Sh895lFtTqlf+sVokT38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725020725; c=relaxed/simple;
	bh=zD5xGrx7XfryEK140cBN5eFp9Z3SX4N15qyok8KVf0k=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=fz5OklUh74ktJnK/XrRzBIiAyR0vsicbagZeJEaHlqq/9Ag3XhIb2xnCzADeX40OqTApuTA1GxL7CF42Ssocj47LWr1Xjo8g9P+9NUhrkMvQWeL1dyv1bbrAxKrOs9iJGsNzmK6a+GPqDqaUrMOqGKwx40PrDUW/cwEFvmUegjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=Hr4RhoAZ; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47U9WunB031603;
	Fri, 30 Aug 2024 14:24:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	lG0YkwvjoRVkb29Wnnls7jNtFX6fUrXZjtamsJi0YHQ=; b=Hr4RhoAZ9uuhdJug
	98ZGdt8vP1Rff6U3r2lZMWvlLvcJcRG/dtBB032Zjb+BKax2p4z314SbBC8M7E0Z
	bIPddONAvRmatn9izyWt1Zex3QoEegZKferC3sbtBCmmTVarQLtD9GtR3VLQ4v6u
	5Y6WlDU3ZRSPg/fjbuPgcJGmdij9ROpJOWseN7zesTMYMqwy40xkN7ei1OnD/0VP
	w6Yf/og7r5aVqlcHgEslHatyHgF7mQJk4ITPY65qHYda4VcUSTDWucmvWSFks+Uc
	FPwbW+kihABQrzqUU4Q0wcSIIVXXJUK4k9c704ae5G7uaNMTSZhnFjJvsVVM/VNn
	w1wbfw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 419putmkn8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 14:24:56 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 9BB1D4002D;
	Fri, 30 Aug 2024 14:24:52 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D99A926334A;
	Fri, 30 Aug 2024 14:24:14 +0200 (CEST)
Received: from [10.252.31.165] (10.252.31.165) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Fri, 30 Aug
 2024 14:24:14 +0200
Message-ID: <c54a6ab4-a880-4d45-a20f-9cc2a0d74b97@foss.st.com>
Date: Fri, 30 Aug 2024 14:24:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Disable PHY clock output on DH
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
References: <20240705080118.75899-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240705080118.75899-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-30_07,2024-08-30_01,2024-05-17_01

Hi Marek

On 7/5/24 10:01, Marek Vasut wrote:
> The RTL8211F PHY clock output is not used on DH STM32MP13xx DHCOR DHSBC
> board, disable it to improve EMI characteristics.
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
>   arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> index 3cc9ad88d61bc..425deb5641c17 100644
> --- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> +++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> @@ -96,6 +96,7 @@ ethphy1: ethernet-phy@1 {
>   			interrupt-parent = <&gpiog>;
>   			interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
>   			reg = <1>;
> +			realtek,clkout-disable;
>   			reset-assert-us = <15000>;
>   			reset-deassert-us = <55000>;
>   			reset-gpios = <&gpioa 11 GPIO_ACTIVE_LOW>;
> @@ -125,6 +126,7 @@ ethphy2: ethernet-phy@1 {
>   			interrupt-parent = <&gpiog>;
>   			interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
>   			reg = <1>;
> +			realtek,clkout-disable;
>   			reset-assert-us = <15000>;
>   			reset-deassert-us = <55000>;
>   			reset-gpios = <&gpiog 8 GPIO_ACTIVE_LOW>;

Applied on stm32-next.

Regards
Alex

