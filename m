Return-Path: <devicetree+bounces-140230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC4DA18EEE
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FED51884BCC
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BB2C21128A;
	Wed, 22 Jan 2025 09:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfEpP8H/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530DC211283;
	Wed, 22 Jan 2025 09:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539744; cv=none; b=DDFRSBhqUZB1zZmG99kJXDSCoGguLaGD0TWeoTQ1TNXTOoAEW3tU/7lY8Mf/WHLSnNqQ3x6fpIZIRTDqnNTGGCcaSIoqX3EG2eoM8TSptVS2DiWaaB/zpxya97ZRv4mTARtmblv0H5UAUyytsTkGyHLxcKwYqNEZ8mTQ+0dtMms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539744; c=relaxed/simple;
	bh=oTek1JRLg1nABvU7rxwqx97/p8svej4w5YzkvNSofVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gANBZfTxZd2Jwn0+ZWyftcQ0I90Ya0L4tc8O3CFI2ogS/pHXFnd3fre/pfBq0E+2Ff5nIZaF3py56STF8SdU3652BhgrV0Hsi6sduRS/y393lXwmpObnbSdEQ7ORZ/i17Q/i70v0kNziT8KXbkWcIl+ejBuekCrlsmo6aBIHC+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfEpP8H/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 990A2C4CEE2;
	Wed, 22 Jan 2025 09:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737539741;
	bh=oTek1JRLg1nABvU7rxwqx97/p8svej4w5YzkvNSofVM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NfEpP8H/5XTmmcZM7/Cd5HS0PZkfFZrX0bx2m/biDCf9WAieo928GjZM+jb7bfPOj
	 NQoNDxN+DITenk9l2NF9vg1HcCYzaeWGNnbPpJQOmirG1fwXHTMqQMCuj2Nod9gFhO
	 2Vyt0W62gA4arrEmNjbGCV+bCPoeUUyOWhOsmTkJIrTbb5HPJI2D+HvYMNNuibBjOM
	 v0g3ybgwxPL80vY11fyiiqQJzQzsafHHEnl0lgVM7YDMuFrvxUY4u707pL8XBiAF82
	 a+RREuSPSfa6o4FC1VPkTGgg2LXdfnyrfES6NT9xNypMM9G4p4Qppjq543WoIiB44R
	 +Np3L9/uqYrEQ==
Message-ID: <77ea5067-deb2-41d4-ab82-ce19ac018ba3@kernel.org>
Date: Wed, 22 Jan 2025 10:55:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 12/13] dt-bindings: display: vop2: Add rk3576 support
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
 detlev.casanova@collabora.com, daniel@fooishbar.org, robh@kernel.org,
 sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103500.2528258-1-andyshrk@163.com>
 <20250122-amber-moth-of-upgrade-fa8331@krzk-bin>
 <5eb4acaa.6df6.1948d68332d.Coremail.andyshrk@163.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <5eb4acaa.6df6.1948d68332d.Coremail.andyshrk@163.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/01/2025 10:46, Andy Yan wrote:
>>> -      The VOP interrupt is shared by several interrupt sources, such as
>>> -      frame start (VSYNC), line flag and other status interrupts.
>>> +      For VOP version under rk3576, the interrupt is shared by several interrupt
>>> +      sources, such as frame start (VSYNC), line flag and other interrupt status.
>>> +      For VOP version from rk3576 there is a system interrupt for bus error, and
>>> +      every video port has it's independent interrupts for vsync and other video
>>> +      port related error interrupts.
>>> +
>>> +  interrupt-names:
>>> +    items:
>>> +      - const: sys
>>> +      - const: vp0
>>> +      - const: vp1
>>> +      - const: vp2
>>>  
>>>    # See compatible-specific constraints below.
>>>    clocks:
>>> @@ -135,6 +147,8 @@ allOf:
>>>          interrupts:
>>>            maxItems: 1
>>
>> So this change moves to this patch.
>>
>>>  
>>> +        interrupt-names: false
>>> +
>>>          ports:
>>>            required:
>>>              - port@0
>>> @@ -148,6 +162,39 @@ allOf:
>>>        required:
>>>          - rockchip,grf
>>>  
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - rockchip,rk3576-vop
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 5
>>
>> No. You did not implement my comment at all.
>>
>> So again:
>> "Why minItems? Nothing in this patch makes sense for me. Neither changing
>> existing binding nor new binding for rk3576."
> 
> Do you mean because I already defined minItems of clocks is 5 on the top, so 
> there is no need to redefine the same minItems here ?

Lists must be constrained. This is not constrained from the max items
and you repeat existing constrain.

For every variable list you need to provide min and maxItems, except the
edge cases when dimension matches top level dimension.

Standard example is:

https://elixir.bootlin.com/linux/v6.11-rc6/source/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml#L127

which I mention on mailing lists multiple times. Also described this
case exactly on my two talks...

> 
>>
>> To address such comment, come with reasonable answer to "why". Not just
>> send the same. It's a waste of my time to keep reviewing the same.
> 
> Before sending this patch, I asked you what the next step should be, but you didn't respond.

You asked whether splitting is correct and I did not object that. I
already said: " You need to split reorganizing", then you asked if you
can split, so sorry, I am not going to keep repeating the same multiple
times.

But anyway this is not about the split, so you did not question last
time how to do it. You just skipped my paragraph asking for "Why?".



Best regards,
Krzysztof

