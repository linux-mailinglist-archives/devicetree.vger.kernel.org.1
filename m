Return-Path: <devicetree+bounces-132709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2699F7DAA
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:09:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B8267A3504
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFEFA226193;
	Thu, 19 Dec 2024 15:07:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD3122578E;
	Thu, 19 Dec 2024 15:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734620876; cv=none; b=tcYAksW7YImk+yUCr9hXOqfRSBkC3sSkGg9pKedFvx448Zc67QzMTiNjLxCYAkoVZzACzFq5c4cXgPjZUM5kDOWnWuhhltrm6JWe5x7b98GcrzvV0cwoH62V0i3SzH/6rYofDgoiyWb0nVTzNLMyejCUvxeqZLpNptr3T22rkL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734620876; c=relaxed/simple;
	bh=LHBS8Mtv3+u2RS8jYvi5qs9reZLQXuXxml2Hb4VhliE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lEEVRw9AzP/cLjV2VVDUwcv9wD+n8/7VbpptD5Q2ux41C7/zLHEgq5Yuk2dAT2XimfNzyPZ3drnbyqag4TLHXZJaz1OkilaMBNyYmBrES8n4EvoLwkZAG3zmK1mSAWkJK3p6J8jcJXuQmLzv00B11Gs5IX263pPP4nsDefLNh9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E64BB1480;
	Thu, 19 Dec 2024 07:08:15 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E783D3F528;
	Thu, 19 Dec 2024 07:07:46 -0800 (PST)
Message-ID: <5b045230-b45c-4451-a76c-61cd1dc51644@arm.com>
Date: Thu, 19 Dec 2024 15:07:44 +0000
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
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <28b22474-1b50-47aa-ad89-87b2270189f2@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

Thank you for your review.

On 14/12/2024 10:08, Krzysztof Kozlowski wrote:
> On 13/12/2024 17:32, Vincenzo Frascino wrote:
>> Add compatibility to Arm Morello System Development Platform.
>>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>> index 8dd6b6446394..ea5a5e179ed1 100644
>> --- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>> +++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>> @@ -118,6 +118,9 @@ properties:
>>          items:
>>            - const: arm,foundation-aarch64
>>            - const: arm,vexpress
>> +      - description: Arm Morello System Development Platform
>> +        items:
>> +          - const: arm,morello
> 
> Why is this only SoC? Your commit msg is supposed to explain any
> oddities, because on first look that's just clearly wrong.
> 

Morello is at the same time the name of an Architecture and of an SoC.
I will add more information to the commit message in the next iteration.

Could you please provide more information of why you think it is clearly wrong?

> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


