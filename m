Return-Path: <devicetree+bounces-132865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB629F85BF
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:21:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A698E1898A04
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95A11C0DCB;
	Thu, 19 Dec 2024 20:14:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2CD1B86DC
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734639278; cv=none; b=aaDCKTpCG/JGV1ySAwIKKv0+QFDZNX+terBBsyOni/hjIYe2C6joArKWmEMMhxOHsz9vQ5v7kS4EcGFQwCnhkF4V20gJRUxXLL/MXr5urDO+0cb3LmJMHlpWpLIN4N/clJLm/R+iMEjQF0U/RuWWsk1N17tRFL001IUsgBgoXFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734639278; c=relaxed/simple;
	bh=blkl4YVe4sfsiHha7qtMfOqZn0u/DBDQR38uDhwntwY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OHTDIiTufMtRkcBmu28BaTzMjPeVxPc7awavLECtzhBWiIfjH/6CcO5ygQuqyHyHozL/4MyTGe3c7SHfuxFGULx0/h8gLkBuZYNKs46nTPqL1hwaGQ+xnn4Hlf8NCWNIj1zd6k52tj5rrgP5UUzhzDsMRCkWFRZSQEJgrb+A3os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOMuR-0004TF-Sj; Thu, 19 Dec 2024 21:14:11 +0100
Message-ID: <4e2250b3-5170-4e88-aa0a-dd796b81e78b@pengutronix.de>
Date: Thu, 19 Dec 2024 21:14:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: clock: imx8m: document nominal/overdrive
 properties
To: Conor Dooley <conor@kernel.org>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Abel Vesa <abel.vesa@linaro.org>,
 Marek Vasut <marex@denx.de>, linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241219-imx8m-clk-v1-0-cfaffa087da6@pengutronix.de>
 <20241219-imx8m-clk-v1-1-cfaffa087da6@pengutronix.de>
 <20241219-lash-lather-31443ced0e0c@spud>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241219-lash-lather-31443ced0e0c@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Conor,

On 19.12.24 20:49, Conor Dooley wrote:
> On Thu, Dec 19, 2024 at 08:27:32AM +0100, Ahmad Fatoum wrote:
>> The imx8m-clock.yaml binding covers the clock controller inside all
>> of the i.MX8M Q/M/N/P SoCs. All of them have in common that they
>> support two operating modes: nominal and overdrive mode.
> 
> This implies that only the two modes you mention are possible, but you
> leave the option open to a dts author to use either. How come?
> 
> Makes it seem like we only need one of these, for whatever the
> non-default option is?

There is no real default. The mode is configured implicitly by the
bootloader setting VDD_SOC and then kernel needs to adhere to the
limits that imposes.

For i.MX8M Mini and Nano, the kernel SoC DTSIs has assigned-clock-rates
that are all achievable in nominal mode. For i.MX8MP, there are some
rates only validated for overdrive mode.

But even for the i.MX8M Mini/Nano boards, we don't know what rates they
may configure at runtime, so it's not possible to infer from just the
device tree what the mode is, which is why I need to allow for absence
of either property. I can make it a single property with two possible
values though if that's preferable.

Theoretically, we could infer mode at runtime from VDD_SOC voltage,
but we need to set up clocks to read out the PMIC and I want to
apply the constraints as early as possible as I don't want the SoC
to run outside of spec even for a short while.

Thanks,
Ahmad

> 
>>
>> While the overdrive mode allows for higher frequencies for many IPs,
>> the nominal mode needs a lower SoC voltage, thereby reducing
>> heat generation and power usage.
>>
>> In any case, software should respect the maximum clock rate limits
>> described in the datasheet for each of the two operating modes.
>>
>> To allow device tree consumers to enforce these limits, document two new
>> optional properties that can be used to sanity check the clock tree.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  Documentation/devicetree/bindings/clock/imx8m-clock.yaml | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
>> index c643d4a81478..a6ae5257ef53 100644
>> --- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
>> +++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
>> @@ -43,6 +43,14 @@ properties:
>>        ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8m-clock.h
>>        for the full list of i.MX8M clock IDs.
>>  
>> +  fsl,nominal-mode:
>> +    description: Set if SoC is operated in nominal mode
>> +    $ref: /schemas/types.yaml#/definitions/flag
>> +
>> +  fsl,overdrive-mode:
>> +    description: Set if SoC is operated in overdrive mode
>> +    $ref: /schemas/types.yaml#/definitions/flag
>> +
>>  required:
>>    - compatible
>>    - reg
>> @@ -95,6 +103,12 @@ allOf:
>>              - const: clk_ext2
>>              - const: clk_ext3
>>              - const: clk_ext4
>> +  - if:
>> +      required:
>> +        - fsl,overdrive-mode
>> +    then:
>> +      properties:
>> +        fsl,nominal-mode: false
>>  
>>  additionalProperties: false
>>  
>>
>> -- 
>> 2.39.5
>>


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

