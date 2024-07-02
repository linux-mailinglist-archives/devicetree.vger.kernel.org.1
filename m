Return-Path: <devicetree+bounces-82200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EB691ED99
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 06:04:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54EE1B21D85
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 04:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DC38125CC;
	Tue,  2 Jul 2024 04:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="gdYjL0u3"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295CB2770E
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 04:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719893074; cv=none; b=snP8/x+HsjO9zg6j2D6flIIX3X/545R8/hlYE05FqJ47MXPKDdH4BJf3DNEZ4C1XgEgPRqK5F5Q6uELHtmmcQpXYc9d6tNVsPivTJts/sH1bY5gIrW2BWqRInLAP57RxOiAJNEXhC8HQnBDXVy5MJ1LQjUEQtOV5uSWG2MSVz5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719893074; c=relaxed/simple;
	bh=ZSIETUmzp4yVZ72ggmPVegrufKFO06LgkA+xhy9TGrU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BcSb/t88TyoKv02IofQspTpoPiAJCaKoJUUVs4lDTGq2zpKGojgkc8xYM3SQ6N002x8iuDpJED0e20oiEaPlX+cNoEb4iOYAyuYAkWIXwK8VRoMk7bWpct2MwieVoZP3Nj2zRcFWFEeDpSRT+YVpOP4dpQInDpTKwUxy5f0mZ1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=gdYjL0u3; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 106C688709;
	Tue,  2 Jul 2024 06:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719893069;
	bh=5l+txb3Dnuz4QsOchPdwezW23KBAkdyYaoeSLye0aI8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gdYjL0u37lbWodeIcSL9Fgh43Tb+lsDHX4N4aoEplueyCP3MM1S8sMgW7I9E0RjM8
	 wvU84e5tdfgOobgXVdSWfVlltkzXePtL3MkqLpdpYL78nlhAMLPLv1Sr2OzR2pvV7g
	 JRPs+VOdfBwufRYjMPdPZZi6m5gSEdyMiVzhkmUrIr1iZYlRx+Z/Mw66tLWFwpn/PZ
	 tsPp+TzQN5v+usSIowW2QL21fQiBQsIGlmhb4zNEgEPCeRAOkN+IvMF5ZrgAFxgev3
	 bdz6/dSBSJaDqwmXe7MrdWPKlbEMyAfZODtu8unYw0tBlRvZQtpzX3M1PXq2q+MfBd
	 T4y/TBkVZ6pMQ==
Message-ID: <cc492f1a-c2f5-438e-a28a-7900cde6f073@denx.de>
Date: Tue, 2 Jul 2024 04:43:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add ethernet MAC nvmem cells to DH
 STM32MP13xx DHCOR DHSBC board
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: kernel@dh-electronics.com, Alexandre Torgue
 <alexandre.torgue@foss.st.com>,
 Christophe Roullier <christophe.roullier@foss.st.com>,
 devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20240629171100.20285-1-marex@denx.de>
 <171985715690.313627.4404278514791505125.robh@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <171985715690.313627.4404278514791505125.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 7/1/24 8:10 PM, Rob Herring (Arm) wrote:
> 
> On Sat, 29 Jun 2024 19:10:30 +0200, Marek Vasut wrote:
>> Describe ethernet MAC address nvmem cells in DH STM32MP13xx DHCOR DHSBC
>> board DT. The MAC address can be fused in BSEC OTP fuses and used to set
>> up MAC address for both ethernet MACs on this board.
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
>>   arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>    pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y st/stm32mp135f-dhcor-dhsbc.dtb' for 20240629171100.20285-1-marex@denx.de:
> 
> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet@5800a000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts-extended', 'mdio', 'nvmem-cell-names', 'nvmem-cells', 'phy-handle', 'phy-mode', 'snps,axi-config', 'snps,mixed-burst', 'snps,pbl', 'snps,tso', 'stmmac-axi-config' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/net/stm32-dwmac.yaml#
> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet@5800e000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts-extended', 'mdio', 'nvmem-cell-names', 'nvmem-cells', 'phy-handle', 'phy-mode', 'snps,axi-config', 'snps,mixed-burst', 'snps,pbl', 'snps,tso', 'stmmac-axi-config' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/net/stm32-dwmac.yaml#

I can't seem to be able to reproduce it locally , even with 
dtschema/master updated right now .

Looking at the bindings, net/stm32-dwmac.yaml does have allof-ref to 
snps,dwmac.yaml which has allof-ref to ethernet-controller.yaml , which 
does list the nvmem-cells/nvmem-cell-names properties .

What am I missing here ?

