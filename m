Return-Path: <devicetree+bounces-100328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0515296D2EA
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 11:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 296411C24899
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EE58194AEB;
	Thu,  5 Sep 2024 09:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfVd6OQU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1457F19413B;
	Thu,  5 Sep 2024 09:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725527757; cv=none; b=XsMxsg7WpzDgAgV73ffFHKdW3DiTteymCwODAHaPKKGf85waSB9iekvQyHO9fM0O7ccTWm5wcB1TSbY6eg7apNxfhsxXndM9Y56FHndqrVAiV05X8nS70T/a3STug5N58pmaUpx7lJLhlPPUW6hndfR5aU8ymotFj+cLX3F3bl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725527757; c=relaxed/simple;
	bh=owCjoukPHHtiQVYXFzUhx/MhWIIu5KPW4x1maYmWDP4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P1IhmmSnVir9smhWCWXJ0toqYKtVmMpcNMFzThKLS2f4HIOUWKAvsVLVLWv4JLalxhw3rO2Y51tHzydZoiX3ZPu2QrT1l+zPTg2tZQFzPy6SwW5FwDbWFXeBbz1jtlVk5kDyr9SFo9J34qRJBLiA3K9jxcqnRPBKdr0EtGiT0OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfVd6OQU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9011C4CEC3;
	Thu,  5 Sep 2024 09:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725527756;
	bh=owCjoukPHHtiQVYXFzUhx/MhWIIu5KPW4x1maYmWDP4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RfVd6OQU8/7zPoumOnFIZ6AdLwnsZxfrdVsMw4uRgo2gOJMvHHR/cv3TphVLcIj70
	 1wcIhlfJyD2n06JDPSEyYMn7GsqNxPwpqhPIKt1gZGaXcCxt2CvBZrGTo5NmFCoVUO
	 bTL11ZxvIjWRu9LWf5VTsXQQQ1PGUrDIR/ufUonGyctjdpwiawY2NUjg22pOxzVESF
	 NG7fn/1fKiB4VphevEe9mkxtOwii9MfpfiHbnZaHXn4C3wEoRtmTA/nWdP0/Qa0M8n
	 oZ/jyK0WedVMi6KmPpC7sv95gUcvwRAqwC7/xi5yGBLHbVb/VY5pQoT/YGAadJSyxs
	 QAMxLu3DAd6xw==
Message-ID: <d2eb4faf-c723-453b-a9d8-68693c96fb42@kernel.org>
Date: Thu, 5 Sep 2024 11:15:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: ti, sci: Add property for
 partial-io-wakeup-sources
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Vibhore Vardhan <vibhore@ti.com>, Kevin Hilman <khilman@baylibre.com>,
 Dhruva Gole <d-gole@ti.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240729080101.3859701-1-msp@baylibre.com>
 <20240729080101.3859701-2-msp@baylibre.com>
 <f0f60af7-8561-433a-a027-811015fc5e16@kernel.org>
 <ti4ffymrixcpptlrn3o5bytoyc4w5oovdrzgu442ychai2fjet@wtdhrmwrozee>
 <44feed5a-95a7-4baa-b17e-514c0f50dae6@kernel.org>
 <sf2pklbnlkpgnkemv3wevldpj55kk2xqh4fabbmkcbh2tvnbzr@gg3gxgztq6pt>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <sf2pklbnlkpgnkemv3wevldpj55kk2xqh4fabbmkcbh2tvnbzr@gg3gxgztq6pt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/09/2024 11:08, Markus Schneider-Pargmann wrote:
> On Tue, Aug 06, 2024 at 10:03:00AM GMT, Krzysztof Kozlowski wrote:
>> On 06/08/2024 09:11, Markus Schneider-Pargmann wrote:
>>> Hi Krzysztof,
>>>
>>> On Tue, Aug 06, 2024 at 08:18:01AM GMT, Krzysztof Kozlowski wrote:
>>>> On 29/07/2024 10:00, Markus Schneider-Pargmann wrote:
>>>>> Partial-IO is a very low power mode in which nearly everything is
>>>>> powered off. Only pins of a few hardware units are kept sensitive and
>>>>> are capable to wakeup the SoC. The device nodes are marked as
>>>>> 'wakeup-source' but so are a lot of other device nodes as well that are
>>>>> not able to do a wakeup from Partial-IO. This creates the need to
>>>>> describe the device nodes that are capable of wakeup from Partial-IO.
>>>>>
>>>>> This patch adds a property with a list of these nodes defining which
>>>>> devices can be used as wakeup sources in Partial-IO.
>>>>>
>>>>
>>>> <form letter>
>>>> This is a friendly reminder during the review process.
>>>>
>>>> It seems my or other reviewer's previous comments were not fully
>>>> addressed. Maybe the feedback got lost between the quotes, maybe you
>>>> just forgot to apply it. Please go back to the previous discussion and
>>>> either implement all requested changes or keep discussing them.
>>>>
>>>> Thank you.
>>>> </form letter>
>>>
>>> I tried to address your comment from last version by explaining more
>>> thoroughly what the binding is for as it seemed that my previous
>>> explanation wasn't really good.
>>>
>>> You are suggesting to use 'wakeup-source' exclusively. Unfortunately
>>> wakeup-source is a boolean property which covers two states. I have at
>>> least three states I need to describe:
>>>
>>>  - wakeup-source for suspend to memory and other low power modes
>>>  - wakeup-source for Partial-IO
>>>  - no wakeup-source
>>
>> Maybe we need generic property or maybe custom TI would be fine, but in
>> any case - whether device is wakeup and what sort of wakeup it is, is a
>> property of the device.
> 
> To continue on this, I currently only know of this Partial-IO mode that
> would require a special flag like this. So I think a custom TI property
> would work. For example a bool property like
> 
>   ti,partial-io-wakeup-source;
> 
> in the device nodes for which it is relevant? This would be in addition
> to the 'wakeup-source' property.

Rather oneOf. I don't think having two properties in a node brings any
more information.

I would suggest finding one more user of this and making the
wakeup-source an enum - either string or integer with defines in a header.

Best regards,
Krzysztof


