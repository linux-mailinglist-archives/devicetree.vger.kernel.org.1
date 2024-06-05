Return-Path: <devicetree+bounces-72650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 745538FC739
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 11:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 250F91F2166B
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D3CA18F2E6;
	Wed,  5 Jun 2024 09:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="GW/9Mw/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7DD84FDA
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 09:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717578329; cv=none; b=PYOITJiCZIXX3CfDE9gEyRlZVxNyYQemCya3KcWtZzdupIT/SD/X6c2maeZxAHgXE0OKmyBG9s0TJeSsInF6L94Y0eZ4XIIZGyTP2fBPrmgt3SjYp03a7EBue04HD8MUbGew9SjLpHCMKfYqaQ6iVqziYHCQvfryzVB5++P8pxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717578329; c=relaxed/simple;
	bh=iDig9EN5wO6JjGf/tyQAjupvMVYUzkp9zZ81FofObLw=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=PK/UAjIYxMRUla3SDK8hMBXE5+PCvcKbD8uQDHTZ5SXSRhYWazGvzqX7fkLW0kUNRb7lftmm1bZtdYPX3ybTy+j+2qaPbd8e8f5vtYA60yWdpOo5bKOLEAAl+sGysTY+HBgF24KsLfkjcDMxCIT8M9WSFUnxiv8zG7zDIPzR+zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=GW/9Mw/x; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4558372O012864;
	Wed, 5 Jun 2024 11:04:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	cW9K5Aa208iQj73NNP37BJq6nJxBU5iesU1QJSwy4yo=; b=GW/9Mw/xfKfxyorz
	vRH99GmrThF9W8w64kj1weF0gDgk4W8Yu2SKrVJIfyPXeq1Dh4Qpwpp3OPWXjj5z
	lOcQIGZco7Qd9M25JEVkZU04QHWtUIdE8qwZuXFEjHZ2ZNsgWIT1ZdJRYukuaIOz
	NKG4q7BuRk2RbswbDGGm+S/tbJxTBtq1IeugFtkHnwQAFAkiB53uT6Yx0ZKjjINn
	OA/ddE+e4gL81QZgeuLZHyVhniNKucZtGfUW4RdVLq/VQNulOYNQxMV3Yj23WJbr
	H6xG3wvkPZ+iNly+qsvIcrYYtqrwyj66se3Zr2Ziwak2qpvvv9eBsBfSXUugby1k
	o2i9uA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3yfw3wqyve-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jun 2024 11:04:48 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 63DD740045;
	Wed,  5 Jun 2024 11:04:37 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7A12F2138E7;
	Wed,  5 Jun 2024 11:03:30 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 5 Jun
 2024 11:03:29 +0200
Message-ID: <92700993-aec6-4880-bbda-8f54debbe765@foss.st.com>
Date: Wed, 5 Jun 2024 11:03:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: stm32: Add compatible string for
 DH electronics STM32MP13xx DHCOR DHSBC board
To: Marek Vasut <marex@denx.de>, Rob Herring <robh@kernel.org>
CC: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Andre
 Przywara <andre.przywara@arm.com>, <kernel@dh-electronics.com>,
        Dario
 Binacchi <dario.binacchi@amarulasolutions.com>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Conor
 Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Sean Nyekjaer <sean@geanix.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240427221048.65392-1-marex@denx.de>
 <171440141047.1676474.1900576669579352447.robh@kernel.org>
 <ec449ed4-53a9-4fb3-b994-d2079402a26d@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <ec449ed4-53a9-4fb3-b994-d2079402a26d@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-04_11,2024-06-05_02,2024-05-17_01



On 4/29/24 17:12, Marek Vasut wrote:
> On 4/29/24 4:41 PM, Rob Herring wrote:
> 
>> My bot found new DTB warnings on the .dts files added or changed in this
>> series.
>>
>> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
>> are fixed by another series. Ultimately, it is up to the platform
>> maintainer whether these warnings are acceptable or not. No need to reply
>> unless the platform maintainer has comments.
>>
>> If you already ran DT checks and didn't see these error(s), then
>> make sure dt-schema is up to date:
>>
>>    pip3 install dtschema --upgrade
>>
>>
>> New warnings running 'make CHECK_DTBS=y 
>> st/stm32mp135f-dhcor-dhsbc.dtb' for 20240427221048.65392-1-marex@denx.de:
>>
>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: 
>> /soc/serial@40018000/bluetooth: failed to match any schema with 
>> compatible: ['infineon,cyw43439-bt', 'brcm,bcm4329-bt']
> 
> This should be addressed in
> 
> [PATCH v2] dt-bindings: net: broadcom-bluetooth: Add CYW43439 DT binding
> 
> It is already AB'd by Krzysztof, I just pinged that patch to figure out 
> what's blocking it.
> 
>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: 
>> /soc/sai@4400a000/audio-controller@4400a004: failed to match any 
>> schema with compatible: ['st,stm32-sai-sub-a']
>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: 
>> /soc/sai@4400a000/audio-controller@4400a024: failed to match any 
>> schema with compatible: ['st,stm32-sai-sub-b']
>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: 
>> /soc/sai@4400b000/audio-controller@4400b004: failed to match any 
>> schema with compatible: ['st,stm32-sai-sub-a']
>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: 
>> /soc/sai@4400b000/audio-controller@4400b024: failed to match any 
>> schema with compatible: ['st,stm32-sai-sub-b']
> 
> This comes from arch/arm/boot/dts/st/stm32mp131.dtsi , i.e. unrelated to 
> this patch. But there is a schema for this in 
> Documentation/devicetree/bindings/sound/st,stm32-sai.yaml in todays' next .

Just tested on stm32-next rebsed on v6.10-rc1) and no yaml issue reported.

