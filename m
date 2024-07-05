Return-Path: <devicetree+bounces-83360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 549DD9282BA
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 778271C24319
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 07:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0082A145A0A;
	Fri,  5 Jul 2024 07:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="hhR+F1lG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8668145335
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 07:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720164660; cv=none; b=AedVKd96bw9wOHshFCd+BWJAiwdMpzOVyn+tbbc8IloUDjRbtL/Bpsp6e0GN2ijtmv76LMHruH1+ScnGV1l4DONmc7MHIcZFBtcH9ew3d/aD3wZ9SU5IgCU52fzZldxipd1OGIYc/YIYzmPs5xRdlAdKjwS/DUpMJtgRgOg/3js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720164660; c=relaxed/simple;
	bh=rPPpFg0VEl6u4soQmHd3RqJI0xB4EWkH5ZHmWfhDt+U=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=tLCgunaGfOoBUNC/l1oQiKf+qsbcE/8qEOxJMwbpZFaMUDyqVw5m5Ark/94yQjW5hqAGGAaZLPjBBWtpGFSXRrmEhwmiX0glwh2ZXWK3Ra1LHQ61m/UkuzzkPTA/N/XMZxBfJwElsonLaDd3dXHcJ1SvhU7OW0k7ObPBF7eylgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=hhR+F1lG; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 464NbveC003054;
	Fri, 5 Jul 2024 09:30:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	zeymwLrfmjaX2m48cbogphOrAiuN6OzRyep6F7RdK8M=; b=hhR+F1lGWZqmqBNj
	HLBb5XJgcEBmZeUvaRWvUibH2dmDRMgia0rIKXj3aaSCswkewkxRmE3VxGl3g3Pm
	oOXToa1nI4XUcsNt4pXhwcLSNPV7aWph+ioNcyCnF7KDJCT3low+oZnGB2Su3BWJ
	WVkYC05q0B4X4O6pYjK/62zVPWZWoQIzb01r4F06SM7brEypMTTBcJZrpbvTvb7A
	meZjDK71MBkuEMP7nVfI0OC7yOoHwtWklRjOAHRz75LBSY93IXxFFSPjYMiwDozz
	nBTG/RhgiWAssCR70YDtRTO8yGVltZqUbSrMcLcgsHgsZDslnkx7OjIqfAlhBeQP
	ISwrtg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 405u9su358-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Jul 2024 09:30:34 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 895A440048;
	Fri,  5 Jul 2024 09:30:30 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 475C8215BEC;
	Fri,  5 Jul 2024 09:30:06 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Fri, 5 Jul
 2024 09:30:05 +0200
Message-ID: <9af42035-5cce-4c49-8814-87e517ec24c5@foss.st.com>
Date: Fri, 5 Jul 2024 09:30:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add ethernet MAC nvmem cells to DH
 STM32MP13xx DHCOR DHSBC board
To: Marek Vasut <marex@denx.de>, "Rob Herring (Arm)" <robh@kernel.org>
CC: <kernel@dh-electronics.com>,
        Christophe Roullier
	<christophe.roullier@foss.st.com>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>
References: <20240629171100.20285-1-marex@denx.de>
 <171985715690.313627.4404278514791505125.robh@kernel.org>
 <cc492f1a-c2f5-438e-a28a-7900cde6f073@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <cc492f1a-c2f5-438e-a28a-7900cde6f073@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-05_04,2024-07-03_01,2024-05-17_01

Hi Marek, Rob

On 7/2/24 04:43, Marek Vasut wrote:
> On 7/1/24 8:10 PM, Rob Herring (Arm) wrote:
>>
>> On Sat, 29 Jun 2024 19:10:30 +0200, Marek Vasut wrote:
>>> Describe ethernet MAC address nvmem cells in DH STM32MP13xx DHCOR DHSBC
>>> board DT. The MAC address can be fused in BSEC OTP fuses and used to set
>>> up MAC address for both ethernet MACs on this board.
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>> Cc: Christophe Roullier <christophe.roullier@foss.st.com>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>> Cc: Rob Herring <robh@kernel.org>
>>> Cc: devicetree@vger.kernel.org
>>> Cc: kernel@dh-electronics.com
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> Cc: linux-stm32@st-md-mailman.stormreply.com
>>> ---
>>>   arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts | 4 ++++
>>>   1 file changed, 4 insertions(+)
>>>
>>
>>
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
>> st/stm32mp135f-dhcor-dhsbc.dtb' for 20240629171100.20285-1-marex@denx.de:
>>
>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet@5800a000: 
>> Unevaluated properties are not allowed ('interrupt-names', 
>> 'interrupts-extended', 'mdio', 'nvmem-cell-names', 'nvmem-cells', 
>> 'phy-handle', 'phy-mode', 'snps,axi-config', 'snps,mixed-burst', 
>> 'snps,pbl', 'snps,tso', 'stmmac-axi-config' were unexpected)
>>     from schema $id: http://devicetree.org/schemas/net/stm32-dwmac.yaml#
>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet@5800e000: 
>> Unevaluated properties are not allowed ('interrupt-names', 
>> 'interrupts-extended', 'mdio', 'nvmem-cell-names', 'nvmem-cells', 
>> 'phy-handle', 'phy-mode', 'snps,axi-config', 'snps,mixed-burst', 
>> 'snps,pbl', 'snps,tso', 'stmmac-axi-config' were unexpected)
>>     from schema $id: http://devicetree.org/schemas/net/stm32-dwmac.yaml#
> 
> I can't seem to be able to reproduce it locally , even with 
> dtschema/master updated right now .
> 
> Looking at the bindings, net/stm32-dwmac.yaml does have allof-ref to 
> snps,dwmac.yaml which has allof-ref to ethernet-controller.yaml , which 
> does list the nvmem-cells/nvmem-cell-names properties .
> 
> What am I missing here ?

I'm also not able to reproduce this issue even after updated the schemas.
Rob, can you please double check on your side ?
Marek, I think I'll take this patch later for v6.12 cycle.

regards
Alex

