Return-Path: <devicetree+bounces-61476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF098ACDAC
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 15:02:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C337E1F22CCD
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 13:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8AB414F135;
	Mon, 22 Apr 2024 13:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="HLs6xNmF"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB5C14F13A
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 13:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713790886; cv=none; b=eRSrzA/bA5fKmBapOvWoybv5c1F0FaJFF8stTSQUcPe70NiNTlBmd5vDhcPhWJf387er1PJWUlCwE+xLz5yRMtK/CEXzgXnua7oqSxKSS19/cB64eCBMYjCEFVi/89dAgkfI4Xr9YLenHtqCAwnJhI78AoJ8pX7Tym1FK8cNO8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713790886; c=relaxed/simple;
	bh=7dCCBSb70BSKtBQyjtr5xEIfOADNRzGEG1iaLKDhVJU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=foPLwiziiIh1tMTl7Poxzp8/vK+v99ma4Hs+//bCBcFE7hJtjEoFvyPrkpkF29SOAxSF2JftIcSTXGxSiNrE+3fXsZJqL78ZQRl2PQpl0xuihGnD/wUFPk+t8X2jObu/yeCfLwdAdDDd+L/iyPM7Ql/HbuI+sK2rmeAVzZEqe1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=HLs6xNmF; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9F352883F5;
	Mon, 22 Apr 2024 15:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713790873;
	bh=T2LhG+d5gfzpt+6frmELCYtldXw+0HdWnIbONHY1Lhw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HLs6xNmF2cHmt3/CSA7MsZxkirPPCo88FDPluDlTKu1MrjkbFM/fUI5WXck/of2D0
	 jevpHqvu/HxIAEqMWxhP6zAF01CZe1Rhf82bIwJfoIJGze4ixDkV34XccpkRpkHbXk
	 hbAFsnN6dI8QrRTYj600AQeVuau5YApne9YaNoCWq8YoH5/dZaKYZZbFv3Is65wp5r
	 63ka9+nIuaP6CQJ4Mjrxr/gDbIpkFkTzbOqEDGrL0tJBZDH1bT4XHSCeOgbdRmOVia
	 K95WNNF8UqIp9iGRQDqRrdsQTroRoef8fLQGbuUYNwvHs7g5NO8rx8gVP7HNPeZA2J
	 ed7Tb4vmmKf1g==
Message-ID: <fc42c239-1dff-4848-a0cf-4b21e3e59d8e@denx.de>
Date: Mon, 22 Apr 2024 14:52:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/20] dt-bindings: arm: stm32: Add compatible string for
 DH electronics STM32MP13xx DHCOR DHSBC board
To: Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andre Przywara <andre.przywara@arm.com>, Conor Dooley <conor+dt@kernel.org>,
 Dario Binacchi <dario.binacchi@amarulasolutions.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring <robh@kernel.org>,
 Sean Nyekjaer <sean@geanix.com>, Steffen Trumtrar
 <s.trumtrar@pengutronix.de>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20240422002006.243687-1-marex@denx.de>
 <f02c63b3-d6e1-495d-a73a-493e39e40b2e@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <f02c63b3-d6e1-495d-a73a-493e39e40b2e@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 4/22/24 6:21 AM, Krzysztof Kozlowski wrote:
> On 22/04/2024 02:19, Marek Vasut wrote:
>> Add DT compatible string for DH electronics STM32MP13xx DHCOR SoM and
>> DHSBC carrier board. This stm32mp135f-dhcor-dhsbc board is a stack of
>> DHCOR SoM based on STM32MP135F SoC (900MHz / crypto capabilities)
>> populated on DHSBC carrier board.
>>
>> The SoM contains the following peripherals:
>> - STPMIC (power delivery)
>> - 512MB DDR3L memory
>> - eMMC and SDIO WiFi module
>>
>> The DHSBC carrier board contains the following peripherals:
>> - Two RGMII Ethernet ports
>> - USB-A Host port, USB-C peripheral port, USB-C power supply plug
>> - Expansion connector
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: "Leonard Göhrs" <l.goehrs@pengutronix.de>
>> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>> Cc: Andre Przywara <andre.przywara@arm.com>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>
>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>> Cc: Linus Walleij <linus.walleij@linaro.org>
>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Sean Nyekjaer <sean@geanix.com>
>> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> Cc: devicetree@vger.kernel.org
>> Cc: kernel@dh-electronics.com
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-stm32@st-md-mailman.stormreply.com
>> ---
>>   Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
>> index bc2f43330ae42..7f61223b8ef24 100644
>> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
>> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
>> @@ -59,6 +59,12 @@ properties:
>>                 - prt,prtt1s   # Protonic PRTT1S
>>             - const: st,stm32mp151
>>   
>> +      - description: DH STM32MP135 DHCOR SoM based Boards
>> +        items:
>> +          - const: dh,stm32mp135f-dhcor-dhsbc
>> +          - const: dh,stm32mp131a-dhcor-som
>> +          - const: st,stm32mp135
> 
> The entries look ordered by last compatible, so this breaks the order.

And uh ... I will not do last minute changes before sending out large 
series next time, sorry.

I'll wait for Alex to see if 02..19 better be squashed or separate, and 
then fix this up and send V2.

Thanks

