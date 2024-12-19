Return-Path: <devicetree+bounces-132771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3791D9F814D
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:13:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11A897A0465
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2231A262A;
	Thu, 19 Dec 2024 17:06:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0BC19F424;
	Thu, 19 Dec 2024 17:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734628016; cv=none; b=tfwNyxZYanR/uBs/ackQIl8JijDL1dXjTXyTWpyICxKl5oS6IpNaRdPR6r+9CTWHhhQUKjDjPFrcsC+O2eTqVhLwJXh2q+wWM1FP5RRd5f0G3XMV6qcZSkAIVP7EZf2zjpYkSjxpwTxBNy0QN69lSmHcRYIo/Lwu91sBsn9W/fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734628016; c=relaxed/simple;
	bh=ax62RxQ2v705JKZNMOdKynwwBs7g1CMJYM62PhqMBX0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A44PRoxPQTJYYKH+ynbaO2LwhVKKWdU+OoOMGkvI1dLlSj5HxIkbk6w4pyTtugUAcmU0vo/9aqxvaBFL+jZ6dt8p7tidhMiVi6iKl4XJZK7XIUqkXABS56kNWQ2h3cEiR2VBcegqZnixTOZLsjZJ5kGlmrVVL30+XUBy9eW5CKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D18CA1480;
	Thu, 19 Dec 2024 09:07:22 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAD803F528;
	Thu, 19 Dec 2024 09:06:53 -0800 (PST)
Message-ID: <4c5dd285-9d2a-4765-aefc-d6bf5379cbce@arm.com>
Date: Thu, 19 Dec 2024 17:06:52 +0000
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
 <c3c1f5cf-5000-43b5-bda1-502566c27806@arm.com>
 <d54bac01-f083-47dd-a779-ee6b770ceed6@kernel.org>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <d54bac01-f083-47dd-a779-ee6b770ceed6@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 19/12/2024 15:26, Krzysztof Kozlowski wrote:
> On 19/12/2024 16:13, Vincenzo Frascino wrote:
>>
>>
>> On 14/12/2024 10:10, Krzysztof Kozlowski wrote:
>>> On 13/12/2024 17:32, Vincenzo Frascino wrote:
>>>> Add support for "interrupt-names" and "mbox-name" optional properties.
>>>
>>> Why?
>>>
>>>
>>> I wonder why you are not cc-ing other maintainers, like only Rob is
>>> acceptable by you?
>>>
>>
>> No it is not. And this is why it is not a good idea to post patches on Friday
>> night. My intention was to copy linux-arm-kernel but I copied mistakenly
>> linux-kernel instead. I do apologize. I will fix this in the next iteration.
> 
> It is not the problem here. Both lists should be. Just use tools instead
> of selecting addresses.
>

Will do.

> 
> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


