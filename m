Return-Path: <devicetree+bounces-256004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C52B4D2F840
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:25:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 60CB230082CB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5CA630BBBF;
	Fri, 16 Jan 2026 10:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTpUqfoK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1CB92701BB;
	Fri, 16 Jan 2026 10:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768559132; cv=none; b=f/y6AZpxgOqz9YX3sycoHDLPFPWZKWBGx17+VhWnDFP5SDnLXYj0bglPxP9C3VpgAJfh4oxo+rtMc7q0JM/kTCevKFtboitbVFLq6o4xfhbkf8kb7S18dojN6kID7d/Tjf+RXzeB5sIHBxJ/r5a0Am85XG3vd1coepK5k54IbtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768559132; c=relaxed/simple;
	bh=qNRQSnylamTdom5/VYji4B2UsiJId3ypF33MMuCLRg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Br4an96sqpUJBWUekJ/VyEUvL/YP5nZaUdTOmK2Jvnfd1JgaN6aGw16m09PBdco0v3ouiI1tIiZKlRNfy2Q5r3Jb2RwZ7rMiiWGbWEjBgz0msnyKe5Pv/PCwdPAathNSm4SQ7ujauzW8qtamn2F3t8PU9Dl67iQwcA/Xm8kaDMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTpUqfoK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ACE3C116C6;
	Fri, 16 Jan 2026 10:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768559132;
	bh=qNRQSnylamTdom5/VYji4B2UsiJId3ypF33MMuCLRg4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hTpUqfoKHU3CS89JbhItgORUpHf/ubuaLF1w/CAhs8kk64liD2j+DKXP6t/bo6gT7
	 klILxqsRa2BfjJbgaTvpstpXqJQ5dH7jKrgwfqjeYGvjl6qga3tAVXXGSQEjtPmXjB
	 MkQK99xFXpXQc1RN8wvrg9/GUghC53MjOVGTVsO3CPwSCfR3b3Gg4SkdLVYZh0rgsI
	 XqKj1SBrF+lh2orz0nfI8xVatnWw5ROm+nKwhHoPMTLJ3eq6egSuBtoGbVdH4MFlxL
	 WnFV+Ehkw7b2Y1uYDTFs28NgffwTISAuuzUBlfGy+VwIgLmvmu1DVEx1ialH5LtWDA
	 bMkBIMebSkhcA==
Message-ID: <d895d42a-f027-4afd-bf62-2dde984e7f73@kernel.org>
Date: Fri, 16 Jan 2026 11:25:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: display: ti,am65x-dss: Add am62p dss
 compatible
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com,
 simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, aradhya.bhatia@linux.dev,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, devarsht@ti.com, praneeth@ti.com,
 h-shenoy@ti.com, u-kumar1@ti.com
References: <20260107174525.1702585-1-s-jain1@ti.com>
 <20260107174525.1702585-2-s-jain1@ti.com>
 <20260108-expert-whippet-of-downpour-ba277f@quoll>
 <b8e3d087-271a-476d-986f-ad3f08231136@ti.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <b8e3d087-271a-476d-986f-ad3f08231136@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/01/2026 17:54, Swamil Jain wrote:
> Hi Krzysztof,
> 
> On 1/8/26 14:21, Krzysztof Kozlowski wrote:
>> On Wed, Jan 07, 2026 at 11:15:23PM +0530, Swamil Jain wrote:
>>> TI's AM62P SoC contains two instances of the TI Keystone Display
>>> SubSystem (DSS), each with two video ports and two video planes. These
>>> instances support up to three independent video streams through OLDI,
>>> DPI, and DSI interfaces.
>>>
>>> DSS0 (first instance) supports:
>>>   - Two OLDI transmitters on video port 1, configurable in dual-link or
>>>     single-link mode.
>>>   - DPI output on video port 2.
>>>
>>> DSS1 (second instance) supports:
>>>   - One OLDI transmitter on video port 1 (single-link mode only).
>>>   - DSI controller output on video port 2.
>>>
>>> The two OLDI transmitters can be configured in clone mode to drive a
>>> pair of identical OLDI single-link displays. DPI outputs from
>>> DSS0 VP2, DSS1 VP1, and DSS1 VP2 are multiplexed, allowing only one
>>> DPI output at a time.
>>>
>>> Add the compatible string "ti,am62p-dss" and update related
>>> description accordingly.
>>>
>>> AM62P has different power domains for DSS and OLDI compared to other
>>> Keystone SoCs. Therefore, add 'minItems' and set to 1 and 'maxItems'
>>> field in the power-domains property to 3 for the "ti,am62p-dss"
>>> compatible entry to reflect this hardware difference.
>>
>> Last sentence is redundant. You are again explain repeating the diff
>> which is pointless, but did not explain WHY you think 2 power domains is
>> correct.
>>
> 
> Will explain properly in the commit message why 2 power domains are 
> correct in v4.
> 
>>>
>>> Signed-off-by: Swamil Jain <s-jain1@ti.com>
>>> ---
>>>   .../bindings/display/ti/ti,am65x-dss.yaml     | 33 ++++++++++++++++++-
>>>   1 file changed, 32 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
>>> index 38fcee91211e..e74e710934fc 100644
>>> --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
>>> +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
>>> @@ -24,6 +24,19 @@ description: |
>>>     DPI signals are also routed internally to DSI Tx controller present within the
>>>     SoC. Due to clocking limitations only one of the interface i.e. either DSI or
>>>     DPI can be used at once.
>>> +  The AM62P has two instances of TI Keystone Display SubSystem, each with two
>>> +  video ports and two video planes. These instances can support up to 3
>>> +  independent video streams through OLDI, DPI, and DSI interfaces.
>>> +  DSS0 (first instance) supports:
>>> +    - Two OLDI TXes on video port 1, configurable in dual-link or
>>> +      single link clone mode
>>> +    - DPI output on video port 2
>>> +  DSS1 (second instance) supports:
>>> +    - One OLDI TX on video port 1 (single-link mode only)
>>> +    - DSI controller output on video port 2
>>> +  The two OLDI TXes can be configured in clone mode to drive a pair of
>>> +  identical OLDI single-link displays. DPI outputs from DSS0 VP2, DSS1 VP1,
>>> +  and DSS1 VP2 are muxed, allowing only one DPI output at a time.
>>>   
>>>   properties:
>>>     compatible:
>>> @@ -31,6 +44,7 @@ properties:
>>>         - ti,am625-dss
>>>         - ti,am62a7-dss
>>>         - ti,am62l-dss
>>> +      - ti,am62p-dss
>>>         - ti,am65x-dss
>>>   
>>>     reg:
>>> @@ -81,7 +95,8 @@ properties:
>>>       maxItems: 1
>>>   
>>>     power-domains:
>>> -    maxItems: 1
>>> +    minItems: 1
>>> +    maxItems: 3
>>>       description: phandle to the associated power domain
>>>   
>>>     dma-coherent: true
>>> @@ -196,6 +211,22 @@ allOf:
>>>                 properties:
>>>                   endpoint@1: false
>>>   
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: ti,am62p-dss
>>> +    then:
>>> +      properties:
>>> +        power-domains:
>>> +          minItems: 1
>>> +          maxItems: 3
>>
>> This is still not constrained enough. You need to define the items
>> instead. I still do not understand why number of power domains is
>> flexible.
> 
> Planning to add:
> ```
> power-domains:
>    minItems: 1
>    description:
>      phandle to the associated power domain(s).
>    items:
>      - description: DSS controller power domain
>      - description: OLDI0 power domain
>      - description: OLDI1 power domain
> ```
> 
> There can be up to 3 power-domains in a DSS instance on AM62P SoC.
> Please check the Technical Reference Manual for AM62P SoC[0].
> On page 542 it is mentioned LPSC_main_dss0 has a partial dependence
> on LPSC_main_oldi0 and LPSC_main_oldi1, and, similarly for
> LPSC_main_dss1 there is a partial dependence on LPSC_main_oldi1.
> This mean if you are only enabling DSS0 Video port 1 for HDMI output
> only you need not mention other power-domains and similarly for DSS1
> if you need OLDI1 output you need to use DSS1 and OLDI1 power-domains.
> So, we can use up to 3 power-domains depending on the use-case.

Still wrong. The block is still part of three power domains. They are
always there even if other connectors are disconnected.

And if some other than HDMI things are disconnected, then the outputs
remain off thus driver will turn off also the power domains.

Best regards,
Krzysztof

