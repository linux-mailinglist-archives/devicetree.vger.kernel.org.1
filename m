Return-Path: <devicetree+bounces-26929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 442478189B9
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 15:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF71C1F2627D
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 14:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12221B27D;
	Tue, 19 Dec 2023 14:24:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A45B1C6AF
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 14:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBC8A1FB;
	Tue, 19 Dec 2023 06:25:15 -0800 (PST)
Received: from [10.57.85.119] (unknown [10.57.85.119])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8349C3F5A1;
	Tue, 19 Dec 2023 06:24:29 -0800 (PST)
Message-ID: <59dd1baa-ef5b-415a-a803-a2dbc3d405b2@arm.com>
Date: Tue, 19 Dec 2023 14:24:28 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] dt-bindings/perf: Add Arm CoreSight PMU
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, will@kernel.org
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, suzuki.poulose@arm.com,
 ilkka@os.amperecomputing.com, bwicaksono@nvidia.com, YWan@nvidia.com,
 rwiley@nvidia.com, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <cover.1702571292.git.robin.murphy@arm.com>
 <3c2dd41b585efe44d361f41fcea0181ff2a9c9c5.1702571292.git.robin.murphy@arm.com>
 <8f583a00-8e9c-4875-936c-ed196d1dae56@linaro.org>
 <2b8414e5-61d5-4c3e-9613-6d9487ae84a8@arm.com>
 <4c78e6f2-d6fb-4da7-9c54-ca6a686f2b58@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <4c78e6f2-d6fb-4da7-9c54-ca6a686f2b58@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-12-18 7:03 am, Krzysztof Kozlowski wrote:
> On 15/12/2023 19:39, Robin Murphy wrote:
>>>> +required:
>>>> +  - compatible
>>>> +  - reg
>>>> +
>>>> +additionalProperties: false
>>>
>>> Why no example to validate the binding?
>>
>> IMO for such a trivial binding built out of common properties, an
>> equally trivial example isn't going to add any value, since it won't do
>> anything more than re-state the individual property definitions above.
>> In bindings where we have conditional relationships between properties,
>> or complex encodings where a practical example can help explain a
>> definition (e.g. a map/mask pair for a set of input values), then
>> absolutely, an example can add something more to help the author and/or
>> users. But otherwise, the thing I've really grown to like about schema
>> is how thoroughly self-describing the definitions themselves can now be.
> 
> The example is used to validate the schema.

Can you clarify what that *means*, though? As far as I can tell from a 
bit of experimentation, "make dt_bindings_check" picks up errors in the 
schema definition itself just the same whether an example is present or 
not. Thus I still fail to understand what else would be validated by me 
writing an example here, other than my personal ability to comprehend my 
own binding.

Yes, I'm well aware that back when we were bootstrapping dtschema it was 
useful to confirm that schemas were written to correctly describe 
*existing* known-good DT fragments. However with new bindings like this 
we've already reached the end goal, where we write an authoritative 
schema first, then the users follow from there. As I alluded to above, 
there are reasons why I would actually prefer *not* to provide a usage 
example here - frankly if a user doesn't understand which parts of the 
architecture their hardware implements, and/or can't figure out how to 
copy a single compatible string and write a standard reg property, I 
would much rather they come to me asking how to write a DT entry, than 
blindly copy-paste a verbatim example into their DTS, then come to me 
reporting a "bug" with the driver crashing or failing to probe. I'd love 
to say I have no experience to base that judgement on, but...

Thanks,
Robin.

