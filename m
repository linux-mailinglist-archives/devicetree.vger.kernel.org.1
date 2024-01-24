Return-Path: <devicetree+bounces-34640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B261383A664
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CCD6B23299
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E952018637;
	Wed, 24 Jan 2024 10:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="g8Gl8cdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB081862B
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706090973; cv=none; b=Ji8lduifA/1iFt7TolIhMV0Jo5zm86wrUQefBNcebPFyYKpOSfJ63vFgg5aPjWMwL3OSvBADI336TzHD0DqOilrkhebS3czC7S2XhEDzBnUaWR0zXEGalZwz3DmnY4d+pWPcwqV1B8IohOgV21/AQfQFa8205xBhNHt550EtlvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706090973; c=relaxed/simple;
	bh=sSZl4b1b2h+L15f0m1J/Xvc55Ne7ShINDatMmQJD63M=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=rdAfGgbcxclw3WnzZIdMCgoLq4AfSANL1Bq+BqUfC+PconTKtmG7KdhmJK0oLLZqpwhWsnGk9equBQqzxPqenVGGqygJ44i2UIH6cbsG6AaXw7Ofg8sZ3hPYwqgvnklFhmeJh8hlZj1CnkcnZDfsmIm0yMt+nGDR0dlQIgq6y+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=g8Gl8cdb; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40O9u0v7031076;
	Wed, 24 Jan 2024 11:09:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=E+ptdx/c28RZ6bn3ntnGPa3sENefNfXpM5d4ZjGqf3c=; b=g8
	Gl8cdbYXZIySCXhBkCloZFCIiSOcYG8qciw8zDyskwd8NA3vEVmfE+s857XW8k8O
	eEiNUSyvah5E3ZegC35FFpuzbNzciWUZRpBrhFsvCHj0Hj89+cdAFA/STTJiGPmp
	9Rr/jwnCtREAonoY2C37ORIQ5m/hbBcckDqMRYY8a5kAflByFadH/dmEQqoyE0kj
	Pfns20LJ8fqqebKPk2HcY4PlqorKmY84/uO0mT6CemqimZ7lq5AojLan311Ahsss
	x45c/tPyYGOE/f2vr6owe0WLjOUnbknz8KIZ5niWjOTF8GetP92TAAP7VRV21pnJ
	/8tVomnaKYslqNXtEY8w==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3vtmf7jkbk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 11:09:08 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 152FD10005D;
	Wed, 24 Jan 2024 11:09:05 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0969929BBC4;
	Wed, 24 Jan 2024 11:09:05 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 24 Jan
 2024 11:09:04 +0100
Message-ID: <bbf1c946-abf9-4a79-a58f-b170b35b904f@foss.st.com>
Date: Wed, 24 Jan 2024 11:09:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: lxa-tac: drive powerboard lines as
 open-drain
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
        Rob
 Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <kernel@pengutronix.de>, <devicetree@vger.kernel.org>,
        =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20231018203154.1681457-2-u.kleine-koenig@pengutronix.de>
 <j3i24md6kz2t7tw2teqbhhab2iywj6xkeg4qxw7do6jawm7jxw@ew64jmeef5zl>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <j3i24md6kz2t7tw2teqbhhab2iywj6xkeg4qxw7do6jawm7jxw@ew64jmeef5zl>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_04,2024-01-24_01,2023-05-22_02



On 1/24/24 11:01, Uwe Kleine-König wrote:
> Hello,
> 
> On Wed, Oct 18, 2023 at 10:31:55PM +0200, Uwe Kleine-König wrote:
>> From: Leonard Göhrs <l.goehrs@pengutronix.de>
>>
>> This results in a slight improvement in EMI performance due to the lines
>> no longer being driven by the somewhat noisy VDD_IO supply of the SoM.
>>
>> Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
>> ---
>>   arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts | 2 +-
>>   arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi     | 2 +-
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts b/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
>> index 8a34d15e9005..4cc177031661 100644
>> --- a/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
>> +++ b/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
>> @@ -148,7 +148,7 @@ adc@0 {
>>   		compatible = "ti,lmp92064";
>>   		reg = <0>;
>>   
>> -		reset-gpios = <&gpioa 4 GPIO_ACTIVE_HIGH>;
>> +		reset-gpios = <&gpioa 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>>   		shunt-resistor-micro-ohms = <15000>;
>>   		spi-max-frequency = <5000000>;
>>   		vdd-supply = <&reg_pb_3v3>;
>> diff --git a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
>> index f09b7c384bd9..188c9cfc7102 100644
>> --- a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
>> +++ b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
>> @@ -409,7 +409,7 @@ &sdmmc2 {
>>   &spi2 {
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&spi2_pins_c>;
>> -	cs-gpios = <&gpiof 12 GPIO_ACTIVE_LOW>;
>> +	cs-gpios = <&gpiof 12 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
>>   	status = "okay";
>>   };
>>   
>>
>> base-commit: 4d5ab2376ec576af173e5eac3887ed0b51bd8566
> 
> Gentle ping. Given this patch is two months old now I assume it fell
> through the cracks?
> 

Yes, apologize for that.

Applied on stm32-next.

Cheers
Alex

> Best regards
> UWe
> 

