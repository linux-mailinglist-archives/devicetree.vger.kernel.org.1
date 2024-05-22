Return-Path: <devicetree+bounces-68450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE3C8CC502
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 18:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01CE41F233D7
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 16:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31721411EA;
	Wed, 22 May 2024 16:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jw+7RvXa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A1D6AD7;
	Wed, 22 May 2024 16:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716396167; cv=none; b=r0W5E9qrs9gxTUWMjf3SkxuUvR4SXBNKAdnhG11H5R5Tjtj5xolZt8eUMRA5HcTRopQsyYmkY4Tfjp8Yvn1gJz0KIpv3dutU75vpKjTGTGacezskBxAc3kvvnQontI1ReoX4oZ10eXiLn2MdjbeRQxMM/E82GhjVdGn3nyiol9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716396167; c=relaxed/simple;
	bh=0yTpr4XDAR+wPp22gH1CKiRI5rw+V152ACV8HzNj8bs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tKn5R/HYn38Q5RfHRzsKrKQH9XPa0l2VEf2tH11wNidPndEAJ9HXjFEahKT+aT7uQONgxGmNdScYn/WjrvlIQ7Xa2XApqrzzU3R1eOjrs/bXYqNLGU4ECRepjbaHbNcECUo79A6drrtyqoDiO7AUpDCqudi9lJuol9CUimYQg3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jw+7RvXa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B214C2BBFC;
	Wed, 22 May 2024 16:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716396167;
	bh=0yTpr4XDAR+wPp22gH1CKiRI5rw+V152ACV8HzNj8bs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jw+7RvXae583rBN8jVMBx/fkbAVVn6VuInBNSh5++U1yqwYNKIL3VqIOO2jjFKvFE
	 IegEAvgXh0MYQLSwauE24hPSHO2HIY8zwHU6GNCIClfWAwVMUN9c+5XTn80tgI0zqm
	 C5Pxe2Lh69z3DkBZLNa1OyMIowSuLrvUtqrpbGXzsvdASRmyZULHvJQu+Bir8GUwq7
	 S55/PMk1yRJ/ale27JCD3TPIfKeKjIDdnxk/rYx5Vd65nZeevLKCCjz6X4CvNz0WPg
	 m3sISpN5rAr1Q/oQJls7LiYZVxJ/JTWD5AmUqyNWu5SbMLkkjHLCn9TLMiIm2TnBAR
	 22Nc52RgQ7s6A==
Message-ID: <58ada5ce-5c02-4ff5-8bdd-d6556c9d141f@kernel.org>
Date: Wed, 22 May 2024 18:42:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] ASoC: dt-bindings: omap-mcpdm: Convert to DT schema
To: =?UTF-8?Q?P=C3=A9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>,
 Mighty <bavishimithil@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lopez Cruz <misael.lopez@ti.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240522075245.388-1-bavishimithil@gmail.com>
 <0594944d-c158-4840-8724-b3f2edaab1ca@gmail.com>
 <4f722e53-011f-4176-b6af-080522165007@kernel.org>
 <bb44d588-9316-4509-b545-9bbaa2d240cb@gmail.com>
 <3c6c5be1-fb8e-4bf0-9f58-cfb09672e8c1@kernel.org>
 <d999bc26-9bb1-44a8-92a3-bcbe14c5a1c3@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzSVLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGVBBMBCgA/AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJgPO8PBQkUX63hAAoJEBuTQ307
 QWKbBn8P+QFxwl7pDsAKR1InemMAmuykCHl+XgC0LDqrsWhAH5TYeTVXGSyDsuZjHvj+FRP+
 gZaEIYSw2Yf0e91U9HXo3RYhEwSmxUQ4Fjhc9qAwGKVPQf6YuQ5yy6pzI8brcKmHHOGrB3tP
 /MODPt81M1zpograAC2WTDzkICfHKj8LpXp45PylD99J9q0Y+gb04CG5/wXs+1hJy/dz0tYy
 iua4nCuSRbxnSHKBS5vvjosWWjWQXsRKd+zzXp6kfRHHpzJkhRwF6ArXi4XnQ+REnoTfM5Fk
 VmVmSQ3yFKKePEzoIriT1b2sXO0g5QXOAvFqB65LZjXG9jGJoVG6ZJrUV1MVK8vamKoVbUEe
 0NlLl/tX96HLowHHoKhxEsbFzGzKiFLh7hyboTpy2whdonkDxpnv/H8wE9M3VW/fPgnL2nPe
 xaBLqyHxy9hA9JrZvxg3IQ61x7rtBWBUQPmEaK0azW+l3ysiNpBhISkZrsW3ZUdknWu87nh6
 eTB7mR7xBcVxnomxWwJI4B0wuMwCPdgbV6YDUKCuSgRMUEiVry10xd9KLypR9Vfyn1AhROrq
 AubRPVeJBf9zR5UW1trJNfwVt3XmbHX50HCcHdEdCKiT9O+FiEcahIaWh9lihvO0ci0TtVGZ
 MCEtaCE80Q3Ma9RdHYB3uVF930jwquplFLNF+IBCn5JRzsFNBFVDXDQBEADNkrQYSREUL4D3
 Gws46JEoZ9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLue
 MNsWLJBvBaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6ei
 OMheesVS5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wA
 GldWsRxbf3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA
 6z6lBZn0WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9
 YegxWKvXXHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt
 91pFzBSOIpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gU
 BLHFTg2hYnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/
 JoFzZ4B0p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu
 4vXVFBYIGmpyNPYzRm0QPwARAQABwsF8BBgBCgAmAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtB
 YpsFAmA872oFCRRflLYACgkQG5NDfTtBYpvScw/9GrqBrVLuJoJ52qBBKUBDo4E+5fU1bjt0
 Gv0nh/hNJuecuRY6aemU6HOPNc2t8QHMSvwbSF+Vp9ZkOvrM36yUOufctoqON+wXrliEY0J4
 ksR89ZILRRAold9Mh0YDqEJc1HmuxYLJ7lnbLYH1oui8bLbMBM8S2Uo9RKqV2GROLi44enVt
 vdrDvo+CxKj2K+d4cleCNiz5qbTxPUW/cgkwG0lJc4I4sso7l4XMDKn95c7JtNsuzqKvhEVS
 oic5by3fbUnuI0cemeizF4QdtX2uQxrP7RwHFBd+YUia7zCcz0//rv6FZmAxWZGy5arNl6Vm
 lQqNo7/Poh8WWfRS+xegBxc6hBXahpyUKphAKYkah+m+I0QToCfnGKnPqyYIMDEHCS/RfqA5
 t8F+O56+oyLBAeWX7XcmyM6TGeVfb+OZVMJnZzK0s2VYAuI0Rl87FBFYgULdgqKV7R7WHzwD
 uZwJCLykjad45hsWcOGk3OcaAGQS6NDlfhM6O9aYNwGL6tGt/6BkRikNOs7VDEa4/HlbaSJo
 7FgndGw1kWmkeL6oQh7wBvYll2buKod4qYntmNKEicoHGU+x91Gcan8mCoqhJkbqrL7+nXG2
 5Q/GS5M9RFWS+nYyJh+c3OcfKqVcZQNANItt7+ULzdNJuhvTRRdC3g9hmCEuNSr+CLMdnRBY fv0=
In-Reply-To: <d999bc26-9bb1-44a8-92a3-bcbe14c5a1c3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 22/05/2024 18:01, Péter Ujfalusi wrote:
> 
> 
> On 22/05/2024 18:22, Krzysztof Kozlowski wrote:
>> On 22/05/2024 16:43, Péter Ujfalusi wrote:
>>>>>
>>>>>> +      compatible = "ti,omap4-mcpdm";
>>>>>> +      reg = <0x40132000 0x7f>, /* MPU private access */
>>>>>> +            <0x49032000 0x7f>; /* L3 Interconnect */
>>>>>> +      interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
>>>>>> +      interrupt-parent = <&gic>;
>>>>>> +      ti,hwmods = "mcpdm";
>>>>>> +      clocks = <&twl6040>;
>>>>>> +      clock-names = "pdmclk";
>>>>>
>>>>> The clocks cannot be added at the time when the node is defined, it is
>>>>> board specific. This way you imply that it is OK to have it in main dtsi
>>>>> file. It is not.
>>>>
>>>> Wait, what? That's example and pretty standard. Example should be
>>>> complete. This is not an exceptional binding.
>>>
>>> The fclk for the McPDM is coming from external source, and the McPDM is
>>> designed in pair with twl6040/6041, there were plan for other codecs to
>>> support the McPDM protocol and in those cases the clock would come from
>>> the connected codec.
>>>
>>> The example (as the original binding was bit rot) is missing reg-names,
>>> dmas and dma-names to be complete.
>>
>> None of these properties are allowed by the binding and during these
>> five/six revisions of the patchset no one raised missing properties.
> 
> I just by accident spotted this patch, I was not in Cc.
> 
> The reg-names must be set to 'mpu' and 'dma'
> The dma-names should be 'up_link' and 'dn_link'
> 
> These names go back for a long time (~2012) and have been mandatory ever
> since.
> 
> Yes, the binding document was neglected pretty badly but when converting
> to yaml it has to be correct since that will have ripple effect on
> existing dts/dtsi files.

Yep. And testing DTS should clearly show that conversion leads to
incomplete binding.

> 
>> I assume the DTS was validated with the binding. Isn't the case here?

Mithil Bavishi,
Are you sure you tested the DTS?

Best regards,
Krzysztof


