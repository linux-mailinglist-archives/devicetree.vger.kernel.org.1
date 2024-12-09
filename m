Return-Path: <devicetree+bounces-128913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 024F09E9D37
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 18:42:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 933601887B35
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B1131547E2;
	Mon,  9 Dec 2024 17:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="aH61OSCz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59938233151
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 17:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733766150; cv=none; b=Svs0doZXRX+f27QFEyS7v2Q8HFQrFY9at8zGGcA7N8kzI7bp9LFivQv5myYT9HX7H3p6n5cV958sQPWZKFMfUmWl+jWc5II1yqbkLuLGQxiV7r0ZdnpQpsFie3BkpkwY021XjsnVXPTsDXBWT+GB+4QHn1F95ew0+3ofzT9Y0TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733766150; c=relaxed/simple;
	bh=Pbzq8pEkCvrJTMjZExkaWV+v5ukFNTQ/J3UTkTClNhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=oxdzOYsRrcpjnbQgJelyGDKSExWTuGshJxJpe88ykMl7ZVTTCSkpFWSR8L4zmYsrmqhTJPkPnEXs3W3y7JN18hdtPESEnQs7Y+JrDUJBB4JMmYGOuT5W9Rsfdmkkrqv4LBnRnhUNGUveUgzFrrHB1+W51V4HxC9HKrl7nrR07Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=aH61OSCz; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B9F6MYk011882;
	Mon, 9 Dec 2024 18:42:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	xZjFl9rcyGOLqHb8y82twubUUb+uASW6djdfphkNt8U=; b=aH61OSCzXdA06GTq
	h3akdMopXpK2VO64BUhD39kzFl3YbtiI8X1EMm2lIUIWywxFmLJeEoZHlB5MCF2I
	9z/PqNfmloyqBkJJhU00dcx1Ehmxxy+mTWQC43teI0LCGsZ1J9v5QqR7zfJl/4yD
	dQ09GhJaUr0YTPix0ckzQighTJu8bcIT3NBTNrBS/yihAUfQfQKopnP+TBJK1d6D
	xM5IG7KXnrcT4yWg6FBiDZ53QIvyOfN8Oh9UfsHZc9JLt+0cKHgUzu5ohLmIARiR
	nT7oMew0UoUFykPNwXVrzU9fKYII/EipYam5UM6pOJ3yKb7jUrl12msl0vJOd3XM
	w/DqQw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 43e2w9ghmy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 18:42:02 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 04BA84004D;
	Mon,  9 Dec 2024 18:41:03 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1B005287934;
	Mon,  9 Dec 2024 18:40:24 +0100 (CET)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 9 Dec
 2024 18:40:23 +0100
Message-ID: <b7152e15-105a-4a49-860f-b408cd5c3349@foss.st.com>
Date: Mon, 9 Dec 2024 18:40:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Sort M24256E write-lockable page in DH
 STM32MP13xx DHCOR SoM DT
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob
 Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20241105234106.162610-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20241105234106.162610-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01



On 11/6/24 00:40, Marek Vasut wrote:
> Move the M24256E write-lockable page subnode after RTC subnode in
> DH STM32MP13xx DHCOR SoM DT to keep the list of nodes sorted by I2C
> address. No functional change.
> 
> Fixes: 3f2e7d167307 ("ARM: dts: stm32: Describe M24256E write-lockable page in DH STM32MP13xx DHCOR SoM DT")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> index 5edbc790d1d27..a181d5a816f69 100644
> --- a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> @@ -201,17 +201,17 @@ eeprom0: eeprom@50 {
>   		pagesize = <64>;
>   	};
>   
> -	eeprom0wl: eeprom@58 {
> -		compatible = "st,24256e-wl";	/* ST M24256E WL page of 0x50 */
> -		pagesize = <64>;
> -		reg = <0x58>;
> -	};
> -
>   	rv3032: rtc@51 {
>   		compatible = "microcrystal,rv3032";
>   		reg = <0x51>;
>   		interrupts-extended = <&gpioi 0 IRQ_TYPE_EDGE_FALLING>;
>   	};
> +
> +	eeprom0wl: eeprom@58 {
> +		compatible = "st,24256e-wl";	/* ST M24256E WL page of 0x50 */
> +		pagesize = <64>;
> +		reg = <0x58>;
> +	};
>   };
>   
>   &iwdg2 {


Applied on stm32-next.

Cheers
Alex

