Return-Path: <devicetree+bounces-61585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A64D8AD53F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 21:53:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9E822840C4
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 19:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1381156F4E;
	Mon, 22 Apr 2024 19:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="yYGJl5Tl"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB03C156F24
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 19:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713815442; cv=none; b=eqIz3MEe8RdYB831kyhupwNlTiaZ6j1AY45Uz4MKLR+VWSgLVmWEZvptrkAdS0xKSCnFCjQnWW/PNIf+hHisI64tIV5NXf7AXKtmr0kr6TfaMblLygQKaBzWtzDKUVAz/guV5myit1ezJrTtbpBTnXvC99LEOScbd54yHFaJAmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713815442; c=relaxed/simple;
	bh=pRJcG2atuHxplwBI1vfZ+72LPcWDxQ0uCeGuPYzuywU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lzX4ANCafIz4IDn5CKa1vuC8XEo1cGmffb5bqIlmvL3hK49sihWj+c/zmq3qkVpbo4ZK9Rbdihl0kGiyfaceSOWDWvyFmjwf1bC5EojoSCi1PgRQO/dZ5inrgq8kmapTq4uM8h+E8nptTQVMfILdig449EL1wEbkPgdnBXVfE6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=yYGJl5Tl; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0DFD6889DF;
	Mon, 22 Apr 2024 21:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1713815439;
	bh=Mkbou78UopXHfwxvO7P06qa7igS6O17yeToaAx2sLpQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=yYGJl5TlcITQzK2lYt5bkr4HY9Ucsi/bMCm27ciRIntVvwe9Aub0aQVZKrqU60vGG
	 ZNTCUlHZFJTqXGahApvafEtVWR64TbbEMBf2kYE87iR3ONusE8zHUbb8PDzA6DctB8
	 EPMeTsZn0WWenKZ8li0gEGK/1iXjdBkYBjNPivlnhb3VgH66WAK+XNXsxR3u8FJpbV
	 yCzfgm0LBYFqutujc8uNQnyf6IxskVAyoGqWXqU7kqhaC1Tcvfxh2ghbWwESQxc0yP
	 IR6+UL2D4tr+vmDLiunaKBM735N8+VqmNQ8iS33G/e+Q7VQKE+GldHkW4XwE76y6UO
	 F+e0MyeZzUhuA==
Message-ID: <f94baa87-b023-4905-b9d6-0237341ed4e8@denx.de>
Date: Mon, 22 Apr 2024 21:50:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/20] dt-bindings: arm: stm32: Add compatible string for
 DH electronics STM32MP13xx DHCOR DHSBC board
To: Rob Herring <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andre Przywara <andre.przywara@arm.com>, Conor Dooley <conor+dt@kernel.org>,
 Dario Binacchi <dario.binacchi@amarulasolutions.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Sean Nyekjaer
 <sean@geanix.com>, Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 devicetree@vger.kernel.org, kernel@dh-electronics.com,
 linux-stm32@st-md-mailman.stormreply.com
References: <20240422002006.243687-1-marex@denx.de>
 <20240422150809.GA1265252-robh@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240422150809.GA1265252-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 4/22/24 5:08 PM, Rob Herring wrote:
> On Mon, Apr 22, 2024 at 02:19:15AM +0200, Marek Vasut wrote:
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
> 
> Either this or your dts is wrong. Either way, please test your dts files
> against the schemas.

Yes, I know ... last minute change went wrong, sorry.

