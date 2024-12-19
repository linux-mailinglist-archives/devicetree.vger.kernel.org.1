Return-Path: <devicetree+bounces-132711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FF59F7DC6
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B37F01891499
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EFCD225798;
	Thu, 19 Dec 2024 15:13:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5294C2582;
	Thu, 19 Dec 2024 15:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734621193; cv=none; b=A9qNCSoLfTvAmw92UNDAeWN5lYlUDJQHCduhMDb6z65nobyj8FRU50F1pvMUG4rvvGYlZAvNVQToH9k3X//jenVX2hsYJ90lc55iLkwaFlzbl/XPtGaC/2OtRKjm3xwemTiR3Z5a8brQG+yWi3FoOU8/6lKZkxqnxSdpLWqzYbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734621193; c=relaxed/simple;
	bh=/qTWNx3FKMrT4/9cTBBdfeIMrl/zLRfVwtXE3FKq5yw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cNHQmESGyjSCMMh014mTgrgd2p6UNdQPynpBnLqQOa3cN3DV8g9tdZD9w/47JA8kC0vX5rzSRztTPDx+TzYHVi1uiW/uXErebHlRXFB9tRA8xczY298XfdMRa4u15iUfPYpEkrUk5RyPnFEJ+zuCLkAg8koCZfq1NSSQXE0Z+mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B1B371480;
	Thu, 19 Dec 2024 07:13:38 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B92273F528;
	Thu, 19 Dec 2024 07:13:09 -0800 (PST)
Message-ID: <c3c1f5cf-5000-43b5-bda1-502566c27806@arm.com>
Date: Thu, 19 Dec 2024 15:13:08 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] dt-bindings: mailbox: arm,mhu: Add missing properties
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20241213163221.3626261-1-vincenzo.frascino@arm.com>
 <20241213163221.3626261-3-vincenzo.frascino@arm.com>
 <bad23b40-bbca-4ab4-b650-a75723c0bad0@kernel.org>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <bad23b40-bbca-4ab4-b650-a75723c0bad0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14/12/2024 10:10, Krzysztof Kozlowski wrote:
> On 13/12/2024 17:32, Vincenzo Frascino wrote:
>> Add support for "interrupt-names" and "mbox-name" optional properties.
> 
> Why?
> 
> 
> I wonder why you are not cc-ing other maintainers, like only Rob is
> acceptable by you?
>

No it is not. And this is why it is not a good idea to post patches on Friday
night. My intention was to copy linux-arm-kernel but I copied mistakenly
linux-kernel instead. I do apologize. I will fix this in the next iteration.

> <form letter>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC (and consider --no-git-fallback argument, so you will
> not CC people just because they made one commit years ago). It might
> happen, that command when run on an older kernel, gives you outdated
> entries. Therefore please be sure you base your patches on recent Linux
> kernel.
> 
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> </form letter>
> 
>>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Viresh Kumar <viresh.kumar@linaro.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  Documentation/devicetree/bindings/mailbox/arm,mhu.yaml | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml b/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
>> index d9a4f4a02d7c..65a4f66a7273 100644
>> --- a/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
>> +++ b/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
>> @@ -63,6 +63,16 @@ properties:
>>        - description: high-priority non-secure
>>        - description: Secure
>>  
>> +  interrupt-names:
>> +    minItems: 2
>> +    items:
>> +      - const: mhu-lpri-rx
>> +      - const: mhu-hpri-rx
>> +      - const: mhu-si-rx
> 
> No, drop.
> 
>> +
>> +  mbox-name:
>> +    maxItems: 1
> 
> No clue what's this, for sure there is no such property at all and
> commit msg does not explain it.
> 
> 
> Drop entire patch.
>

Fine.

> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


