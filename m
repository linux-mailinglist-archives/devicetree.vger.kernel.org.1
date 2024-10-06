Return-Path: <devicetree+bounces-108165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3F1991E8C
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 15:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83EA1282357
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 13:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CEFE13635B;
	Sun,  6 Oct 2024 13:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3EmiM/C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612F36026A;
	Sun,  6 Oct 2024 13:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728221456; cv=none; b=gxLXOJ9QZuqVEExZayT4AjMefzlprn5pGl1oAm/VyNMBoyZPMXxPugYfUo2hSuZYjUVtgwcln/LV3L+337ho0jArnpDnYE3ywqYX2Zsyjk4tniKo/yxEDpcZHWUbIYlkprLk2mwKPh+PoujzICnJqfx9+jAEp+lcGYW053f1SrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728221456; c=relaxed/simple;
	bh=Vj/GYRpv/5KupB5oNORmD7Q2QKaFc9xDLyKjAxdr1Ds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZEfT4X4li/GBMRnV9BJns1m2ILYBYjpc6p5IsASprjhjH6LhNRvafofFJrvxONLOjsy63uChHoXaj/dpTWArOtV5AI0OSkZD6ktVaRjO07Jo5dMNSRCD9h3M9GBqVqS/6E+6Hq5HFWldOBR+Aw8jCjOdI6wbUguynV0BqLkzdYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3EmiM/C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ED4AC4CEC5;
	Sun,  6 Oct 2024 13:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728221456;
	bh=Vj/GYRpv/5KupB5oNORmD7Q2QKaFc9xDLyKjAxdr1Ds=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n3EmiM/CIKL218ovod/PjRvKJcOG487xHlOVhl+IMgBBAA0oaFZif9pkc/AGst36s
	 vraPvR6B2OdASSLDyHKM7UkP9z+pZVY9Ofo7OUj5UwwJBqAk2KR2OIavnpOjHJ09U8
	 e+TPHqQ37Mk0AKxjfQDLBETAdfzrrMY0Qfg86/9UvND3FA2R+cB9dVDmakAXv5vWH5
	 V7cvBfy4GaMl7CwxWu7HFtvft/R3xML2uEU+hksfRIPsh0IL7Bei7awqmKWHFdyOB6
	 TU/luvyfUC/avDTLczt5EiqsSbLIZ2MHYp/0+bbfUgtNy3QTbZUEBGuoVDgQLqio9I
	 W4gCj4tFLw8yQ==
Message-ID: <97efe08f-ec17-4754-8ff7-afb4db4b04e8@kernel.org>
Date: Sun, 6 Oct 2024 15:30:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] dt-bindings: interrupt-controller: fsl,ls-extirq:
 workaround wrong interrupt-map number
To: Frank Li <Frank.li@nxp.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "open list:IRQCHIP DRIVERS" <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, imx@lists.linux.dev
References: <20241003214315.638668-1-Frank.Li@nxp.com>
 <gre52gkd325yfnjwoqyfot4yrb3rim4pi2ye3hjcp4bd7yimba@tq2drzuwlc6f>
 <ZwALfcJYTOuXqPuP@lizhi-Precision-Tower-5810>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <ZwALfcJYTOuXqPuP@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/10/2024 17:36, Frank Li wrote:
> On Fri, Oct 04, 2024 at 08:43:23AM +0200, Krzysztof Kozlowski wrote:
>> On Thu, Oct 03, 2024 at 05:43:15PM -0400, Frank Li wrote:
>>> The driver(drivers/irqchip/irq-ls-extirq.c) have not use standard DT
>>> function to parser interrupt-map. So it doesn't consider '#address-size'
>>> in parent interrupt controller, such as GIC.
>>>
>>> When dt-binding verify interrupt-map, item data matrix is spitted at
>>> incorrect position. So cause below warning:
>>>
>>> arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dtb: interrupt-controller@14:
>>> interrupt-map: [[0, 0, 1, 0, 0, 4, 1, 0], [1, 0, 1, 4, 2, 0, 1, 0], ...
>>> is too short
>>>
>>> Reduce minItems and maxItems to workaround this warning for
>>> 'fsl,ls1088a-extirq', 'fsl,ls2080a-extirq' and fsl,lx2160a-extirq.
>>> Other keep the same restriction.
>>>
>>> Signed-off-by: Frank Li <Frank.Li@nxp.com>
>>> ---
>>> Change from v1 to v2
>>> - remove duplicate function in commit message
>>> - only reduce miniItems for after 1088a chips
>>> - maxItems change to 9. Otherwise report too long.
>>> ---
>>>  .../interrupt-controller/fsl,ls-extirq.yaml   | 27 +++++++++++++++++--
>>>  1 file changed, 25 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,ls-extirq.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,ls-extirq.yaml
>>> index 199b34fdbefc4..1bfced6ed620c 100644
>>> --- a/Documentation/devicetree/bindings/interrupt-controller/fsl,ls-extirq.yaml
>>> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,ls-extirq.yaml
>>> @@ -82,14 +82,37 @@ allOf:
>>>              enum:
>>>                - fsl,ls1043a-extirq
>>>                - fsl,ls1046a-extirq
>>> +    then:
>>> +      properties:
>>> +        interrupt-map:
>>> +          minItems: 12
>>> +          maxItems: 12
>>> +        interrupt-map-mask:
>>> +          items:
>>> +            - const: 0xf
>>> +            - const: 0
>>> +
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>>                - fsl,ls1088a-extirq
>>>                - fsl,ls2080a-extirq
>>>                - fsl,lx2160a-extirq
>>> +# The driver(drivers/irqchip/irq-ls-extirq.c) have not use standard DT
>>> +# function function to parser interrupt-map. So it doesn't consider
>>
>> Same issue as last time, double function.
>>
>> Please run scripts/checkpatch.pl and fix reported warnings. Then please
>> run 'scripts/checkpatch.pl --strict' and (probably) fix more warnings.
>> Some warnings can be ignored, especially from --strict run, but the code
>> here looks like it needs a fix. Feel free to get in touch if the warning
>> is not clear.
> 
> Thanks, I forget add --strict this time.
> 
>>
>>
>>> +# '#address-size' in parent interrupt controller, such as GIC.
>>> +#
>>> +# When dt-binding verify interrupt-map, item data matrix is spitted at
>>> +# incorrect position. Reduce minItems and maxItems to workaround this
>>> +# problem.
>>> +
>>>      then:
>>>        properties:
>>>          interrupt-map:
>>> -          minItems: 12
>>> -          maxItems: 12
>>> +          minItems: 8
>>> +          maxItems: 9
>>
>> Are you sure it works? I see 12 items in fsl-ls1088a.dtsi.
> 
> interrupt-map =
>    <0 0 &gic GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
>    <1 0 &gic GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
>    ...
>    <11 0 &gic GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> 
> Total 12*6 = 72 data.
> 
> Normal each row should be 6 data.
> 
> but when GIC have #address-size, <2>,  dt-schemal split at at (6+2=8).
> 
> "interrupt-map: [[0, 0, 1, 0, 0, 4, 1, 0], [1, 0, 1, 4, 2, 0, 1, 0]"
> 
> So 72/8 = 9, I just realize it can divide to whole number.  so minItems
> can be set 9 also.

I read it three times but I cannot parse it.

I cannot translate above interrupt-map to anything meaningful, so it
looks to me that not only address-cells is ignored but entire format is
different from what the spec asks.

This is not some ancient 15 year old code, but was added in 2019.

You should not add fake constraints to a valid property, because what if
other system implements this correctly?

Best regards,
Krzysztof


