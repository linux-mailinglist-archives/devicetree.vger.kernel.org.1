Return-Path: <devicetree+bounces-266529-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id izFTB/4almnsaAIAu9opvQ
	(envelope-from <devicetree+bounces-266529-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 21:03:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D501594CA
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 21:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5ADD33011863
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 20:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABFF52D9EC8;
	Wed, 18 Feb 2026 20:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOfw8yPk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AB7199920;
	Wed, 18 Feb 2026 20:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771444986; cv=none; b=TwLGjGPjE4QEJ/ptoONONNzLT5kdFEjVvLnIxALE1HaGpH6jEwENG81SQLNoNE0Zti7xAJTELDEBJrmWMr8GQbgYZFGhvqhOVIyoLTHWU2TXzt/eE4QVSN5ljDeACrwHnwtcC5amk/dIESAUOVSxu9eNCW1UAG0+/OO77HKNvPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771444986; c=relaxed/simple;
	bh=x74pCM8g+AY+IDvVyRtaHl/FTxvqT89D/tM1i9imlbg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Efn6fQushwOh8Tk/ZSqkt7ulmqpOM3p2KX0Qs/vIFJunjhV6OHThI2teBYvp75cMrJZGJKi1TtQHRRcHR5H2LH20FodSg2i0uSrrZifK33MfA6ltdDHwT/HESRDFOWSEA0dBdPohrrKBdZF0I/bKnZSv1a9+Hr8iFQsclAlt9n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOfw8yPk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 106CDC116D0;
	Wed, 18 Feb 2026 20:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771444986;
	bh=x74pCM8g+AY+IDvVyRtaHl/FTxvqT89D/tM1i9imlbg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AOfw8yPkYUVfE0XzMMnTFWb8x0XKa2txAwWs2tZFiN24w2OoQevCM7rmbFLGAw8bu
	 6rqHJ1sxhHf16gOspxOAWXfVj+Oz+SVlfifIm2NpWmixM1abunvsdBkKm9TGSMrUMx
	 /ZDder/ip+O5T8lBZuG1ui29GSyEoYJSRd+6/ifO5FIpfMBcbT+8uQQ2zPHIKm67fM
	 BQRPHOTT5pJxfk+MvYlomFLd/CYl8FWAj2eC7dcHCv42FDXwyv3QTkn9WyMsEBEyIy
	 druZOh8uev8KLqSO71szxxaPrVqpcwvesoNu4v9/29M6T+/Mom9euEbm/r9VZcQufH
	 B2/OlQJNysewQ==
Message-ID: <c588720a-6a7d-4179-afb5-bb7e89e0e7e1@kernel.org>
Date: Wed, 18 Feb 2026 21:03:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: soc: st: document the RISAB firewall
 peripheral
To: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260209-stm32_risab-v1-0-ef0b2b6a7e0a@foss.st.com>
 <20260209-stm32_risab-v1-1-ef0b2b6a7e0a@foss.st.com>
 <ee9759a6-1779-4891-8716-24c36134198a@kernel.org>
 <516036b6-b825-4a29-a48a-5d3af3234968@foss.st.com>
 <ac793499-bebb-477b-b27e-089529f3ee4b@kernel.org>
 <66ecf6a5-cc1f-4872-971d-6bc32894dbac@foss.st.com>
 <fd73947a-289a-43f9-9506-573fee935d12@kernel.org>
 <ed0ab69f-7aff-423f-8b93-980e79705b6d@foss.st.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <ed0ab69f-7aff-423f-8b93-980e79705b6d@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266529-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[foss.st.com,kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 39D501594CA
X-Rspamd-Action: no action

On 18/02/2026 11:38, Gatien CHEVALLIER wrote:
> 
> 
> On 2/17/26 21:06, Krzysztof Kozlowski wrote:
>> On 17/02/2026 14:12, Gatien CHEVALLIER wrote:
>>>
>>>
>>> On 2/13/26 16:06, Krzysztof Kozlowski wrote:
>>>> On 10/02/2026 10:55, Gatien CHEVALLIER wrote:
>>>>>>> +  memory-region:
>>>>>>> +    minItems: 1
>>>>>>> +    maxItems: 32
>>>>>>> +    description:
>>>>>>> +      Phandle to nodes describing memory regions to be configured in the RISAB
>>>>>>> +      by the trusted domain of at least a RISAB page size.
>>>>>>> +      These regions cannot overlap. A zone must be within st,mem-map range and
>>>>>>> +      can be represented by one or more pages.
>>>>>>> +
>>>>>>> +  st,mem-map:
>>>>>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>>>>>> +    description: Memory address range covered by the RISAB.
>>>>>>> +    items:
>>>>>>> +      - description: Memory range base address
>>>>>>> +      - description: Memory range size
>>>>>>
>>>>>> Why do you need this property if you have memory-region already? This
>>>>>> also should be part of <reg>, although this mixing with memory-region is
>>>>>> anyway confusing.
>>>>>>
>>>>>
>>>>> The RISAB is a memory firewall peripheral covering internal RAMs. It is
>>>>> possible to configure multiple memory regions within these RAMs (done by
>>>>> the Trusted Domain) with security, privilege and compartment isolation.
>>>>> This peripheral allow 4kBytes page granularity. Each page can hold
>>>>> different access rights, with 32 pages at most (hence the maxItems: 32).
>>>>> That is some information that can be added to the documentation.
>>>>>
>>>>> Moreover, when a region is delegated to a non-secure privileged
>>>>> component, this component can configure the privilege level necessary to
>>>>> access the region.
>>>>>
>>>>> This property gives me the opportunity to get the memory range covered
>>>>> by the RISAB. "reg" here is used to access the actual RISAB registers
>>>>> holding the configuration.
>>>>
>>>> Looks awfully like memory regions still :/
>>>>
>>>
>>> IIUC the memory-region property references memory regions within
>>> a reserved memory. Which is not really what I want to describe
>>> here as I want to get the boundaries of the whole range. The
>>> memory-region property would be used by the Trusted Domain / kernel
>>> to get each regions (or only one that represents the whole range) of the
>>> internal RAM to apply desired access rights to them / use them.
>>>
>>> Describing the memory range using a reserved memory would make the
>>> kernel exclude this memory range from the normal usage, no?
>>
>> In general yes, but also depends on the use case/drivers/purpose. I do
>> not understand why would you mark some memory for generic use by kernel
>> (so not reserved for specific purpose) and still configure it somehow
>> for trusted firmware to allow secure read/write access.
>>
>> If you mark some part of memory as a meaning for TF for secure access,
>> you already claim it is not a generic memory. Otherwise TF just writes
>> all over malloced() pages?
>>
> 
> While the Trusted Domain applies the configuration, it is entirely
> possible for the Trusted domain to give himself access to, let's say,
> the first RISAB page to store whatever data, and give the rest to the
> kernel. Actually, this is what we do to store OTP data mirrors

And what happens with the rest of that memory? Why the first page cannot
be the reserved region?

> or DDR context and give the rest to the kernel or the co-processor.
> 
> Now, using internal RAM for generic use by the kernel is unlikely but
> I have in mind the last firewall controller of the stm32mp2x platforms,
> which is the RISAF. It has the same purpose as the RISAB but for
> external memories. One protects the DDR so I do want DDR regions as
> accessible for general use (memory node).
> 
> This property allows me to describe the boundaries of what is protected
> without having to imply anything from frameworks about the regions as I
> have no way of knowing what is accessible and what is not.

Frameworks do not matter here - we don't even talk about them yet.

You want to describe boundaries of some dedicated memory region and you
should not have a custom property for that.

> 
>>>
>>> I think declaring a "boundaries" memory region with no usage for the
>>> kernel wouldn't make sense. The kernel may not be able to access the
>>> whole memory range.
>>
>> I don't understand that. reserved-memory is for cases with "no usage for
>> the kernel", so it would perfectly make sense.
> 
>>
>> Look what your description said:
>>
>> "used to protect internal RAMs by applying access"
> 
> Yes, access rights are applied by the Trusted Domain. These firewalls
> are very flexible because access rights on secure and privilege levels
> along with Compartment ID (SoC is divided into multiple compartments
> holding a compartment ID) can be configured. Some bits of the
> firewall configuration can also be delegated. e.g: When a memory
> region is configured for privileged, non-secure access for the
> cortex running Linux; then the kernel could reconfigure the
> privilege level (unlikely but feasible).
> 
> It would be quite complex to explain the whole mechanism without
> pointing to some documentation [1].
> 
> Anyway, access rights are applied, but access may very well be given to
> the privileged non-secure compartment running the kernel. Meaning that
> only the kernel can access such memory. Not the Trusted Domain, not the
> user-space, not the co-processor.

This implies that if you do not reserve such memory that way, then
Trusted Domain or user-space could just poke and use it...

If kernel explicitly has to tell TD to do something with specific region
of memory, this is somehow a reserved memory. It is distinctive,
special, selected, chosen.
> 
> So you could give some bits of internal RAM to the kernel for whatever
> purpose you'd like (Storing particular data you want to keep in some
> low-power mode, etc...).

All RAM is for that purpose...

> 
> 
> [1]: https://wiki.st.com/stm32mpu/wiki/Resource_Isolation_Framework_overview
> 
>>
>> and
>>
>> " a trusted domain, or the domain to whom the page configuration has
>> been delegated,"
>>
>> so how it is not a dedicated, special memory delegated to specific
>> devices and/or TF?
>>
> 
> The memory is delegated to some contexts. These can be the processor
> running Linux, a co-processor, some initiator ports of peripherals
> having DMAs, etc...
> 

So pretty close to what the purpose of reserved-memory is...

Well, we keep discussing and I am really not convinced. You can try to
catch @Rob tomorrow on IRC and maybe get his approval, but for me this
is clearly some sort of reserved memory thus you cannot go with own
bindings. Another way would be to prove me wrong by using the reserved
memory binding and showing how it could not possible work, ever (such
counter examples sometimes help to look at the problem from a new angle).

Best regards,
Krzysztof

