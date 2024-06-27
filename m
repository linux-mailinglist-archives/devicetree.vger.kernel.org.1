Return-Path: <devicetree+bounces-80713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C68E291A3E9
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:34:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9DB51C20E66
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 931C413E042;
	Thu, 27 Jun 2024 10:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="tKJKdlzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7659613DBB6
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 10:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719484394; cv=none; b=sd1yQmpt70R/dBt+3C93KRoq2QFuBdxobjxNpXJejmX6TJUTPZspEu0YVbEdDqyxeYgx9xNF3pNl912CjSj+AtVyNCQtHwTUUFWSlUMMYKiUUocooNa9L7fs8YeAKgv7j5NKcbld7BN1wCTA6nfJqexYPYgtgTr8jIK4eFv0M8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719484394; c=relaxed/simple;
	bh=QmLE4P8iTdqcvkM2hJwA8XhYe3phjJnteCJ2bgsBtVk=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=DUWDetn9y6sCgm0STyvd0dqotfRW+1TexFY7MDb3ZGs0PM3aLTEg24ULOcKcSrFVlgifFm9LofuotX+dqgukskJ2urE9wRHJaIhCXdf+GA8ABbdM4MKK8IA8uJKCMW2QzzhiLNU6sjnnJ+G7yca6PxsVvTETx95yZoXHynBc34w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=tKJKdlzr; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45R8B1Qu023858;
	Thu, 27 Jun 2024 12:32:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	lbhirqQymdicyl7dxfSReYwF0TRfooQNjkPnJCgVEkY=; b=tKJKdlzrxuyXqrrT
	0hPwPywGQN8P7zqVq1V+9eqXK5x9FCskokglsbc8PtcuKLqR4bAbeXeJkKJevZ1J
	UFfSA33kYFBgtuM4SEN/V54BrAeSg6U9kb+YRMipHAd/uNYdxKr8NisMxH8fT+rM
	t/EvHytKCWW26FnwqoQOEOoDzZkaaCVsKspYiO1GN6fEEe/bZoQFiFdS1zy2dr5N
	lHztGc8HbHv0Au7kL/n0JQzEl81DhF9QZmT7zdtwthrg8x2u36XJ8iYKDpSzeMDB
	90GSs8L3Ciw6yP+duMEKIRa1iTobkWFOh0XRnmCNNrXt2XVvgnhrehEo3c68Jb95
	uDlIcg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ywm1gnfna-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jun 2024 12:32:30 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id C267640045;
	Thu, 27 Jun 2024 12:32:25 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F323F216857;
	Thu, 27 Jun 2024 12:31:50 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 27 Jun
 2024 12:31:50 +0200
Message-ID: <5ca1b43c-3f8d-43fa-bffd-a4cea5c39a6d@foss.st.com>
Date: Thu, 27 Jun 2024 12:31:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32mp135f-dk: Document output pins for PWMs
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
CC: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20240613080229.2292413-2-u.kleine-koenig@baylibre.com>
 <b2796be8-d372-44e6-959c-e212097e99e8@foss.st.com>
 <rrj2srkxpsomywut67sfmziuvi7w2vmbcrhtxxmr5tp376tdm7@6fce2i47xeus>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <rrj2srkxpsomywut67sfmziuvi7w2vmbcrhtxxmr5tp376tdm7@6fce2i47xeus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-27_06,2024-06-27_02,2024-05-17_01



On 6/27/24 11:31, Uwe Kleine-König wrote:
> Hello Alexandre,
> 
> On Thu, Jun 27, 2024 at 10:38:34AM +0200, Alexandre TORGUE wrote:
>> On 6/13/24 10:02, Uwe Kleine-König wrote:
>>> To simplify identifying the pins where the PWM output is routed to,
>>> add a comment to each PWM device about the respective pin on the
>>> expansion connector.
>>>
>>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
>>> ---
>>>    arch/arm/boot/dts/st/stm32mp135f-dk.dts | 4 ++++
>>>    1 file changed, 4 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/st/stm32mp135f-dk.dts b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
>>> index 567e53ad285f..f1b50e4c1059 100644
>>> --- a/arch/arm/boot/dts/st/stm32mp135f-dk.dts
>>> +++ b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
>>> @@ -273,6 +273,7 @@ &timers3 {
>>>    	/delete-property/dma-names;
>>>    	status = "disabled";
>>>    	pwm {
>>> +		/* PWM output on pin 7 of the expansion connector (CN8.7) using TIM3_CH4 function */
>>>    		pinctrl-0 = <&pwm3_pins_a>;
>>>    		pinctrl-1 = <&pwm3_sleep_pins_a>;
>>>    		pinctrl-names = "default", "sleep";
>>> @@ -288,6 +289,7 @@ &timers4 {
>>>    	/delete-property/dma-names;
>>>    	status = "disabled";
>>>    	pwm {
>>> +		/* PWM output on pin 31 of the expansion connector (CN8.31) using TIM4_CH2 function */
>>>    		pinctrl-0 = <&pwm4_pins_a>;
>>>    		pinctrl-1 = <&pwm4_sleep_pins_a>;
>>>    		pinctrl-names = "default", "sleep";
>>> @@ -303,6 +305,7 @@ &timers8 {
>>>    	/delete-property/dma-names;
>>>    	status = "disabled";
>>>    	pwm {
>>> +		/* PWM output on pin 32 of the expansion connector (CN8.32) using TIM8_CH3 function */
>>>    		pinctrl-0 = <&pwm8_pins_a>;
>>>    		pinctrl-1 = <&pwm8_sleep_pins_a>;
>>>    		pinctrl-names = "default", "sleep";
>>> @@ -316,6 +319,7 @@ timer@7 {
>>>    &timers14 {
>>>    	status = "disabled";
>>>    	pwm {
>>> +		/* PWM output on pin 33 of the expansion connector (CN8.33) using TIM14_CH1 function */
>>>    		pinctrl-0 = <&pwm14_pins_a>;
>>>    		pinctrl-1 = <&pwm14_sleep_pins_a>;
>>>    		pinctrl-names = "default", "sleep";
>>>
>>> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
>>
>> Good idea. Some lines exceed the 100 char. I could remove "function" or only
>> keep "func" instead. What do u think ?
> 
> I don't care much and would have expected that the line length isn't
> that critical. Anyhow, shorten it to func if you prefer.

Not critical for sure. Just checkpatch that complain about it.

>   
>> Note also that commit should be: "ARM: dts: stm32: ....". i can fix it by
>> myself.
> 
> Ack. I considered using
> 
> 	ARM: dts: stm32: stm32mp135f-dk: ...
> 
> but that felt like duplicating so I dropped the "stm32" part. Feel free
> to add it.

Ok thanks

alex

> 
> Best regards
> Uwe

