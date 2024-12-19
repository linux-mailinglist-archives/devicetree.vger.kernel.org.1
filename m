Return-Path: <devicetree+bounces-132724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E1C9F7E36
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:38:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 676071887956
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C88224AF4;
	Thu, 19 Dec 2024 15:38:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BEF8224887;
	Thu, 19 Dec 2024 15:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734622714; cv=none; b=srTCVKZplBrIEWeDtdH1X8KFywICk7z7Zw3KK3YqazDdel6oujhHN+py+hDQ2ApsOROE1z/qCO9p3FlsNQmBQ5dgHYfbhdbKOIXRO5QCQT1YK+9DPPVOFvQFzcFNn5mUBJocBmBUIDguMhaNlWysPBrOtsV8g1frNka4YFQVI8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734622714; c=relaxed/simple;
	bh=leBppe5Eb3Wc/EqSjEjTzkGx+UR1krln1IBKSfaR5Bo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Av0qrcgcpiCxiMppDKYtfbTLjhb105sxuL6WkC2GB47Tj5pDigiikP/tjF7RpRzGebEBdNSIJIMYl7B4mr3GPF6a5zQGFZU1IkKkYyQ59FWTotOVmF4UhS4/K6iEZK1+kDa9J4hoCpzTI6I2QuQHHuesH/SIWBe4RhVjlIP7mXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7945C1480;
	Thu, 19 Dec 2024 07:38:59 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0C4E3F528;
	Thu, 19 Dec 2024 07:38:30 -0800 (PST)
Message-ID: <d09d3e04-24e9-4144-9edb-d7e6f229b2a7@arm.com>
Date: Thu, 19 Dec 2024 15:38:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: arm: Add Morello compatibility
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>
References: <20241213163221.3626261-1-vincenzo.frascino@arm.com>
 <20241213163221.3626261-2-vincenzo.frascino@arm.com>
 <28b22474-1b50-47aa-ad89-87b2270189f2@kernel.org>
 <5b045230-b45c-4451-a76c-61cd1dc51644@arm.com>
 <0737d818-4dae-4474-b030-a4140e9390c1@kernel.org>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <0737d818-4dae-4474-b030-a4140e9390c1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 19/12/2024 15:25, Krzysztof Kozlowski wrote:
> On 19/12/2024 16:07, Vincenzo Frascino wrote:
>> Hi Krzysztof,
>>
>> Thank you for your review.
>>
>> On 14/12/2024 10:08, Krzysztof Kozlowski wrote:
>>> On 13/12/2024 17:32, Vincenzo Frascino wrote:
>>>> Add compatibility to Arm Morello System Development Platform.
>>>>
>>>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>>>> Cc: Rob Herring <robh@kernel.org>
>>>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 3 +++
>>>>  1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>>>> index 8dd6b6446394..ea5a5e179ed1 100644
>>>> --- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>>>> @@ -118,6 +118,9 @@ properties:
>>>>          items:
>>>>            - const: arm,foundation-aarch64
>>>>            - const: arm,vexpress
>>>> +      - description: Arm Morello System Development Platform
>>>> +        items:
>>>> +          - const: arm,morello
>>>
>>> Why is this only SoC? Your commit msg is supposed to explain any
>>> oddities, because on first look that's just clearly wrong.
>>>
>>
>> Morello is at the same time the name of an Architecture and of an SoC.
>> I will add more information to the commit message in the next iteration.
>>
>> Could you please provide more information of why you think it is clearly wrong?
> 
> Because there is no board. Usually it is not possible to use SoC alone,
> because pinout is too small to connect any wires...
> 

I like your attitude ;)

By the way there is a Morello Board as well. I will add it to the commit message
in the next iteration.

> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


