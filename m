Return-Path: <devicetree+bounces-80931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1DE91AC3A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 18:05:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFBCE1C22E66
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC2B1993A9;
	Thu, 27 Jun 2024 16:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="bPrs8y83"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2535E199254
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 16:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719504312; cv=none; b=lJWxoNe5uF3Ha8tITvQyIdhlfDhTAWJ2/HfKKe+4OPyyWP2IS9h/jX7A58dT+sryaKxLPXjquxzoQVxUOOKRVjV/Ifdi4tDdc3N3tVtmC36l/J5ABsfADaEWjiY2lSNWab17+1xqNVI0/LYF2FNzk4cGyHNg4rBFQKRqB+k4kbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719504312; c=relaxed/simple;
	bh=q89rHNhBpTtlg5qwtA3kptzdcFxKP4/8d2/QNY99H8s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iUmgubmGEPjHA2nO8tT7CUX6tOV7bKb3RevGM50IYkg7r8zM1LeIn9jrMoYapNP0iNz7v/StlLrOZaOraDT3Amb2yXH5h62hetX54zoRA9bkxyXQcM92N3P8cVdAfUDckNuDt0iNEtSaA4/Wq63+/Zfu9fHXEN4nONQz/W2m8aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=bPrs8y83; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id DAADB87FCD;
	Thu, 27 Jun 2024 18:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719504308;
	bh=Vod1TFd4od8BsqH2BebeU7FQfNDJP3jGPHi8gOTt2e8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bPrs8y83eGSS6pSiK1WOnZseVAQPk6dRLpOuinXO58qAm4YvXxLJpAedhz5D5jCDc
	 h2sdJIHvB+S37Lkutl+lJdvWesVKoOpaTjoMjL99ymALNksmyx7eiIYks1KKFyn/ZM
	 IwpcNiSjjfxoXC3WEtYolKXjk6/mxVrtzwOOsucxoCdWte8BPa0p1GT2OmFpwTiPDI
	 ZzJDaLGOVFgzVNPC1tvi7HhD3qVk2wGo+3WkP8nXyEccBMw50PVjQ/asq3Gjc4JtbR
	 FvNY+m342pPpt66wU/cpEH0APJR7yQu6oiD5Br1D5KoEJp0w83itC/NOAiaeK62Dmn
	 zBSpSwyf0iUmQ==
Message-ID: <86ef3141-8c37-42b6-ae78-a47dfad90614@denx.de>
Date: Thu, 27 Jun 2024 17:48:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Fix STM32MP13xx pinmux node
 eth2-rgmii-sleep-0 copy-paste error
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Christophe Roullier <christophe.roullier@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20240626030736.512113-1-marex@denx.de>
 <5d9da37e-b120-42a3-8436-98a74c20596b@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <5d9da37e-b120-42a3-8436-98a74c20596b@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/27/24 10:22 AM, Alexandre TORGUE wrote:
> Hi Marek
> 
> On 6/26/24 05:07, Marek Vasut wrote:
>> Fix pin copy-paste error in STM32MP13xx eth2-rgmii-sleep-0 pinmux
>> node. Clearly the pins like PG11 are not supposed to be duplicated
>> in the node pinmux property, fix them up to match the hardware pin
>> assignment.
>>
>> Fixes: d1193e65647e ("ARM: dts: stm32: Add pinmux nodes for DH 
>> electronics STM32MP13xx DHCOR SoM and DHSBC board")
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
>>   arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi | 14 +++++++-------
>>   1 file changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi 
>> b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
>> index 42995a8f5034c..9c7cf8f3c3e8b 100644
>> --- a/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
>> +++ b/arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi
>> @@ -157,16 +157,16 @@ eth2_rgmii_sleep_pins_a: eth2-rgmii-sleep-0 {
>>           pins1 {
>>               pinmux = <STM32_PINMUX('F', 7, ANALOG)>, /* 
>> ETH_RGMII_TXD0 */
>>                    <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD1 */
>> -                 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD2 */
>> -                 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TXD3 */
>> -                 <STM32_PINMUX('G', 8, ANALOG)>, /* ETH_RGMII_TX_CTL */
>> -                 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_GTX_CLK */
>> -                 <STM32_PINMUX('B', 2, ANALOG)>, /* ETH_MDIO */
>> +                 <STM32_PINMUX('G', 1, ANALOG)>, /* ETH_RGMII_TXD2 */
>> +                 <STM32_PINMUX('E', 6, ANALOG)>, /* ETH_RGMII_TXD3 */
>> +                 <STM32_PINMUX('F', 6, ANALOG)>, /* ETH_RGMII_TX_CTL */
>> +                 <STM32_PINMUX('G', 3, ANALOG)>, /* ETH_RGMII_GTX_CLK */
>> +                 <STM32_PINMUX('B', 6, ANALOG)>, /* ETH_MDIO */
>>                    <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_MDC */
>>                    <STM32_PINMUX('F', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
>>                    <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD1 */
>> -                 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD2 */
>> -                 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_RXD3 */
>> +                 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
>> +                 <STM32_PINMUX('A', 8, ANALOG)>, /* ETH_RGMII_RXD3 */
>>                    <STM32_PINMUX('A', 12, ANALOG)>, /* 
>> ETH_RGMII_RX_CTL */
>>                    <STM32_PINMUX('H', 11, ANALOG)>; /* 
>> ETH_RGMII_RX_CLK */
>>           };
> 
> Applied on stm32-next. I think I'll squash the two fixes (this patch and 
> the other one for the makefile) onto the initial patch when I create my 
> PR vor v6.11.

Fine by me, thanks !

