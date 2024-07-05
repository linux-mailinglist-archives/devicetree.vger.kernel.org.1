Return-Path: <devicetree+bounces-83378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D02DA9283EC
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 10:42:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 881CF1F22D66
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 08:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F44F14533A;
	Fri,  5 Jul 2024 08:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="QtrI7/rX"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B981A48
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 08:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720168959; cv=none; b=R6P8MuU+h3mced+skNvGfHjPLNjsBBxxcSmkaOEMs4fg1MFacLXeynkj/ocMiUVwJauEq0Hq7GUgR10PYAeDRWmWT6mxQcpwmAfDmPduzlrG0k3KCp44u3AwTUyto4KCF+m2ie7MAukfLfRwkbhhBY0QsNT9FmhidyAIp7pY0XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720168959; c=relaxed/simple;
	bh=J5wdH0ZBbEA4eP76rz1fA8KJwBugGsQeyMiXQS0vxbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qVFxTygXsAvxe4oFP61PYN/335hRVXLN6QhRx42R/4msf7/Qndp7lKzj5NeylG4abFg9ZpfQk5QET7DriKMy9rhzd3VGCAzMS2EXEMEbOeEbvqx0nOwSLDrQeNxbzgurb9hT+7Y1KPmVb0fUqKZhPLVjIDkVAQZoLRbkpzBmmqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=QtrI7/rX; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9ED0D8839D;
	Fri,  5 Jul 2024 10:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720168956;
	bh=w/iWxCTX5yKL5u5YEhcsM6oZacG0/msdiWVC06pA5D4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QtrI7/rXcrsxW0Leiz2Dh6JS1uRReU1bhWD0tHDngktvzm+/pabCk1REDUUvLbe4r
	 F3ty+OY4P1TT5lWjoeN8pgHSCOpNttM9hNHp/q2zGmd/zLYqV1xOv6FgcFD6o/IHpC
	 bOK7vniQmy1rBFQZ5zHpSLrg5qpBr1gVTC4Svc7qpL2pnhJI6S53Rkijs170rz1JLJ
	 kRzPrhzLMkaIlzBa66Uwr5C3uzgwf/i6TjQXzFB+x/BKwvLcy3sAEc/YbY+2R1PKKA
	 HLLcO4GmuZGz04sXIyKfV618TbvkknJaZrwLFXhD/gbKHDLL5Qc0i032t+Z5Jka2vI
	 i+BNG8nQs/CCw==
Message-ID: <5b5a196f-58ca-4168-969b-f9efdf8ef57a@denx.de>
Date: Fri, 5 Jul 2024 10:04:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add ethernet MAC nvmem cells to DH
 STM32MP13xx DHCOR DHSBC board
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: kernel@dh-electronics.com,
 Christophe Roullier <christophe.roullier@foss.st.com>,
 devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20240629171100.20285-1-marex@denx.de>
 <171985715690.313627.4404278514791505125.robh@kernel.org>
 <cc492f1a-c2f5-438e-a28a-7900cde6f073@denx.de>
 <9af42035-5cce-4c49-8814-87e517ec24c5@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <9af42035-5cce-4c49-8814-87e517ec24c5@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 7/5/24 9:30 AM, Alexandre TORGUE wrote:

Hi,

>>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet@5800a000: 
>>> Unevaluated properties are not allowed ('interrupt-names', 
>>> 'interrupts-extended', 'mdio', 'nvmem-cell-names', 'nvmem-cells', 
>>> 'phy-handle', 'phy-mode', 'snps,axi-config', 'snps,mixed-burst', 
>>> 'snps,pbl', 'snps,tso', 'stmmac-axi-config' were unexpected)
>>>     from schema $id: http://devicetree.org/schemas/net/stm32-dwmac.yaml#
>>> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet@5800e000: 
>>> Unevaluated properties are not allowed ('interrupt-names', 
>>> 'interrupts-extended', 'mdio', 'nvmem-cell-names', 'nvmem-cells', 
>>> 'phy-handle', 'phy-mode', 'snps,axi-config', 'snps,mixed-burst', 
>>> 'snps,pbl', 'snps,tso', 'stmmac-axi-config' were unexpected)
>>>     from schema $id: http://devicetree.org/schemas/net/stm32-dwmac.yaml#
>>
>> I can't seem to be able to reproduce it locally , even with 
>> dtschema/master updated right now .
>>
>> Looking at the bindings, net/stm32-dwmac.yaml does have allof-ref to 
>> snps,dwmac.yaml which has allof-ref to ethernet-controller.yaml , 
>> which does list the nvmem-cells/nvmem-cell-names properties .
>>
>> What am I missing here ?
> 
> I'm also not able to reproduce this issue even after updated the schemas.
> Rob, can you please double check on your side ?
> Marek, I think I'll take this patch later for v6.12 cycle.

That's just fine, no worries.

