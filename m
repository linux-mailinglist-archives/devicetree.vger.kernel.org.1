Return-Path: <devicetree+bounces-62626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D19B38B1CF5
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 10:40:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3D711C2276B
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 08:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B5C7F7F6;
	Thu, 25 Apr 2024 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="8Yw2iR3x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A197489
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 08:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714034434; cv=none; b=boNxuKZab7V6TpqBQheMKuJNZwnKURsS/KOXb3WSFmqxSeG9zxcaE57ChGKxzvWfvaY7UWQCzNuetsuGh2Gl+EfsqmciZXAY38u2S+MZJ6wRzUDEsyg3hcjy+nFjhAriJ7ikUyinsQPSoq+VLFoi8GwujTNeXM9HLVVoXDiBXuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714034434; c=relaxed/simple;
	bh=4NteD7nGwUMUhmnDJhITpJxiW+pzilEu/aCKc7iykGA=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=IVCNfGb6JGFne4own/bs9nPQlxbBmw9yhTUkSNgAKnF0XZhwc2fdYL133QBP8G+ewhj5gVyFmCHz3CEaF4HrN/ItREztXWbq2CCnXUx0GM2tmoph6A8CxY082s4IJAsFkyczcOuxRh8YD4KxQ8Ms1vWbyzWbEkVPQFjc2NUG1dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=8Yw2iR3x; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43P6qDLG021448;
	Thu, 25 Apr 2024 10:39:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=LRhWlaI0E/bPuzJE9gA99asyOQ64g4iYmBkgLuI8Mhk=; b=8Y
	w2iR3x+4ZE+cuaIZ6o4AV0FjVL3brTpCgwYQuGbhf9qO/ZQHIOYkoCPV9UmHQEPu
	ZOzeQV7AncbhVTkY7TKSl4WWTGZDOLX78vmtZgpfbb/UufW5Rbj+OtWV0zQq30p5
	vIiqHWDdjXfkLo4L2+8pB3hQRNxVHP8GbB0lFrYNp5dXayPpnqRcjke9XU/3f10/
	ldbcp0kbkQBwHPAFy2pJWrbMUYaE4KqyisDhH2TDHcPs0XEmaXSs5eNfyxDyaP0a
	HBofEGeRpviBi62llC9rsge5nJ17NfLMx7KaMGJhNzF4zMf7rqKIbpoacRYf1dmb
	z0Em6yXFbshMko1crwNQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3xm51wcypa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Apr 2024 10:39:48 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id B9C8840048;
	Thu, 25 Apr 2024 10:38:48 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CB00D214D1C;
	Thu, 25 Apr 2024 10:37:39 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 25 Apr
 2024 10:37:38 +0200
Message-ID: <562f0e8f-4730-4142-936b-25fb0f3024eb@foss.st.com>
Date: Thu, 25 Apr 2024 10:37:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/20] dt-bindings: arm: stm32: Add compatible string for
 DH electronics STM32MP13xx DHCOR DHSBC board
To: Marek Vasut <marex@denx.de>, Krzysztof Kozlowski <krzk@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
        Ahmad Fatoum
	<a.fatoum@pengutronix.de>,
        Andre Przywara <andre.przywara@arm.com>,
        Conor
 Dooley <conor+dt@kernel.org>,
        Dario Binacchi
	<dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, Sean
 Nyekjaer <sean@geanix.com>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        <devicetree@vger.kernel.org>, <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240422002006.243687-1-marex@denx.de>
 <f02c63b3-d6e1-495d-a73a-493e39e40b2e@kernel.org>
 <fc42c239-1dff-4848-a0cf-4b21e3e59d8e@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <fc42c239-1dff-4848-a0cf-4b21e3e59d8e@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-25_07,2024-04-25_01,2023-05-22_02

Hi Marek

On 4/22/24 14:52, Marek Vasut wrote:
> On 4/22/24 6:21 AM, Krzysztof Kozlowski wrote:
>> On 22/04/2024 02:19, Marek Vasut wrote:
>>> Add DT compatible string for DH electronics STM32MP13xx DHCOR SoM and
>>> DHSBC carrier board. This stm32mp135f-dhcor-dhsbc board is a stack of
>>> DHCOR SoM based on STM32MP135F SoC (900MHz / crypto capabilities)
>>> populated on DHSBC carrier board.
>>>
>>> The SoM contains the following peripherals:
>>> - STPMIC (power delivery)
>>> - 512MB DDR3L memory
>>> - eMMC and SDIO WiFi module
>>>
>>> The DHSBC carrier board contains the following peripherals:
>>> - Two RGMII Ethernet ports
>>> - USB-A Host port, USB-C peripheral port, USB-C power supply plug
>>> - Expansion connector
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: "Leonard Göhrs" <l.goehrs@pengutronix.de>
>>> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>> Cc: Andre Przywara <andre.przywara@arm.com>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>
>>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>> Cc: Linus Walleij <linus.walleij@linaro.org>
>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>> Cc: Rob Herring <robh@kernel.org>
>>> Cc: Sean Nyekjaer <sean@geanix.com>
>>> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>> Cc: devicetree@vger.kernel.org
>>> Cc: kernel@dh-electronics.com
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> Cc: linux-stm32@st-md-mailman.stormreply.com
>>> ---
>>>   Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
>>>   1 file changed, 6 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml 
>>> b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
>>> index bc2f43330ae42..7f61223b8ef24 100644
>>> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
>>> @@ -59,6 +59,12 @@ properties:
>>>                 - prt,prtt1s   # Protonic PRTT1S
>>>             - const: st,stm32mp151
>>> +      - description: DH STM32MP135 DHCOR SoM based Boards
>>> +        items:
>>> +          - const: dh,stm32mp135f-dhcor-dhsbc
>>> +          - const: dh,stm32mp131a-dhcor-som
>>> +          - const: st,stm32mp135
>>
>> The entries look ordered by last compatible, so this breaks the order.
> 
> And uh ... I will not do last minute changes before sending out large 
> series next time, sorry.
> 
> I'll wait for Alex to see if 02..19 better be squashed or separate, and 
> then fix this up and send V2.

Yes I would prefer that you squash pins definition patches.

Thanks
Alex

> 
> Thanks

