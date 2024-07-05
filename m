Return-Path: <devicetree+bounces-83379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E5E9283ED
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 10:42:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C21FF289D37
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 08:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC7E145B0F;
	Fri,  5 Jul 2024 08:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="iPBvR9AH"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49341422DD
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 08:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720168961; cv=none; b=mLM/8cMcbgUcXvmYJ4SURPIe5fcymp6yXp2uyQx28I/k7GsvUClw/03yzAuLyMQgZV1ldHRGWAelwlPHW4FdPOsyUKn4aXnHMgVjU81lM+aDNq2b3HCMQ9Zm9II/ZLQzV6MK4jVYhtCB2mHgTV3ue6HfohIfS4MQJNWJ68ZUq9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720168961; c=relaxed/simple;
	bh=/K7mQ0WGPzItyPJF9PInogG1nSmtF+pckPQdui582v8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OmtMRButn6qnIRU/YCepHaOsQjldID95OSfdf+gcXhHBYH4U0kboN88mJrkUwbpKxQ/kT3ON5zoni3KA5e7Dmm6H1x65D2G82PGREfNJ4euxeHsyU4gqitTP4XLw0L117Jti/U+SQek66Od3hZt3tgRBdWoT2GWDt+yu49nFAdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=iPBvR9AH; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 40CD988607;
	Fri,  5 Jul 2024 10:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720168957;
	bh=AhgpARrslt2x0WGsbi6JihJjV20w/M2+vGLOgJCyuwk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iPBvR9AHlft7X07Qp3ZNQib9hp5M37CutIdub9BTL/PVz1Tbw3IuAwu3m2s9FqUDs
	 t9W9x/ob+BucxO9VU47HQBA9fviyGJCF1QsY1hFDRO+RsDuUHs+OZGjQdDVw+pKS0X
	 f5FoJkMCQvL8lDHDTG1dq68rh3JoZKDhZTczKqQgWknKkgXpOkLa1WqmCHAqI9tg48
	 XuCQkRmGgtke1U+F9AYtf/tHs4xRs1YC3G2SUn+goBI0CQyDxkFb6AQEhC2AWDLHbI
	 /sSVbSJpSz98t29P/u8K6X2wZ/jV44VH5ct8YSKvPFOIqQ43c06nJAz/f4h4SR2jzr
	 9x4FqqdOLFfdw==
Message-ID: <06766b59-9a0a-4355-8270-210583cd9135@denx.de>
Date: Fri, 5 Jul 2024 10:25:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Keep MDIO bus in AF across suspend DH
 STM32MP13xx DHCOR DHSBC board
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Christophe Roullier <christophe.roullier@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20240629202847.90693-1-marex@denx.de>
 <501e109a-478a-4f94-a673-27048b44e5d5@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <501e109a-478a-4f94-a673-27048b44e5d5@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 7/4/24 6:38 PM, Alexandre TORGUE wrote:
> Hi Marek
> 
> On 6/29/24 22:28, Marek Vasut wrote:
>> The RTL8211F PHY gets confused when the MDIO bus lines get switched
>> to ANALOG during suspend/resume cycle. Keep the MDIO and MDC lines
>> in AF during suspend/resume to avoid confusing the PHY. The PHY can
>> be brought out of the confused state by restarting auto-negotiation
>> too, but that seems like an odd workaround and shouldn't be in the
>> PHY driver.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>> Cc: Christophe Roullier <christophe.roullier@foss.st.com>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: kernel@dh-electronics.com
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-stm32@st-md-mailman.stormreply.com
>> ---
>>   arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 20 ++++++++++++++++----
>>   1 file changed, 16 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi 
>> b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
>> index d3deec602ae7a..e6c0dceee9866 100644
>> --- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
>> +++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
>> @@ -88,14 +88,20 @@ pins2 {
>>       eth1_rgmii_sleep_pins_a: eth1-rgmii-sleep-0 {
>>           pins1 {
>> +            pinmux = <STM32_PINMUX('A', 2, AF11)>, /* ETH_MDIO */
>> +                 <STM32_PINMUX('G', 2, AF11)>; /* ETH_MDC */
>> +            bias-disable;
>> +            drive-push-pull;
>> +            slew-rate = <2>;
>> +        };
>> +
>> +        pins2 {
>>               pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /* 
>> ETH_RGMII_TXD0 */
>>                    <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
>>                    <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
>>                    <STM32_PINMUX('E', 5, ANALOG)>, /* ETH_RGMII_TXD3 */
>>                    <STM32_PINMUX('B', 11, ANALOG)>, /* 
>> ETH_RGMII_TX_CTL */
>>                    <STM32_PINMUX('C', 1, ANALOG)>, /* 
>> ETH_RGMII_GTX_CLK */
>> -                 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
>> -                 <STM32_PINMUX('G', 2, ANALOG)>, /* ETH_MDC */
>>                    <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
>>                    <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
>>                    <STM32_PINMUX('B', 0, ANALOG)>, /* ETH_RGMII_RXD1 */
>> @@ -169,14 +175,20 @@ pins2 {
>>       eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
>>           pins1 {
>> +            pinmux = <STM32_PINMUX('B', 6, ANALOG)>, /* ETH_MDIO */
>> +                 <STM32_PINMUX('G', 5, ANALOG)>; /* ETH_MDC */
> 
> Why don't you put PB6 and PG5 in AF for the sleep config as for ETH1 ?

Fixed in V2, thanks for spotting this.

