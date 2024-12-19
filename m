Return-Path: <devicetree+bounces-132800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E5D9F82AD
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:57:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6477F189B359
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F181A704C;
	Thu, 19 Dec 2024 17:45:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236061B4122;
	Thu, 19 Dec 2024 17:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734630313; cv=none; b=jLQ4Vy+RlYgpZMrX61LVxHulAOvmd4PiJu7pFZaUdjNX8AqGvbvAume3mp5nGAC2rck6YmLPeozatkdpt/WEfzwJV3Apt3hXRhMqP4qw6H8abhDBig5Hp485wC9B5MoF5LB7+dbzHtHlKMtJGTNvJI0CobDqslbVGWb9rEWswwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734630313; c=relaxed/simple;
	bh=xvL+ay3A3MV+cO+b9Sgdl+vtVyC3pEstpQzMEk3sxFQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qbPAUhpCdsxj/Tz2ig9dAb+92hcfhYoBsAiKCDlKHYqXkOUvse9zOfsieElFFUr3jTVuoIEzuc31lQcoxIMi9K4HjGPYZ0pLrQcIslx/Z5egYhESKbpyO3zwtG5OFuVfk4B/wQY4x4KFzUlxIO++SDZOv3I3eaQG9HXwH2NbdUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80CFD1480;
	Thu, 19 Dec 2024 09:45:38 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 828D23F528;
	Thu, 19 Dec 2024 09:45:09 -0800 (PST)
Message-ID: <2d1333bb-0c47-498c-98c5-a3a307dc6626@arm.com>
Date: Thu, 19 Dec 2024 17:45:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] MAINTAINERS: Add Vincenzo Frascino as Arm Morello
 Maintainer
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>
References: <20241213163221.3626261-1-vincenzo.frascino@arm.com>
 <20241213163221.3626261-9-vincenzo.frascino@arm.com>
 <392a0cc0-bcd9-48a2-83f2-e520a460d2b8@kernel.org>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <392a0cc0-bcd9-48a2-83f2-e520a460d2b8@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14/12/2024 10:19, Krzysztof Kozlowski wrote:
> On 13/12/2024 17:32, Vincenzo Frascino wrote:
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  MAINTAINERS | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index e6e71b05710b..8199e5945fb2 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -3304,6 +3304,12 @@ F:	drivers/clocksource/timer-versatile.c
>>  X:	drivers/cpufreq/vexpress-spc-cpufreq.c
>>  X:	Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>>  
>> +ARM MORELLO PLATFORM SUPPORT
> 
> Wrongly placed, M is not after V, I know people cannot keep order but
> let's try. No need for new Boogaloo.
> 
> Plus look how all the titles are created and do not come with different
> style.
> 

Not sure I understand what you mean here. Do you mean that I have to put Morello
in alphabetical order in the file? Or just above VEXPRESS?

For what concerns the title, the MAINTAINERS file contains several styles (...
PLATFORM, PLATFORM SUPPORT, etc). What's your preference?

>> +M:	Vincenzo Frascino <vincenzo.frascino@arm.com>
>> +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> 
> 
> So why you did not bother to Cc this list? You are supposed to develop
> on mainline kernel and then run get_maintainers.pl or b4 prep, so how is
> possible that your Cc list is so empty?
> 
> 
> 
>> +S:	Maintained
>> +F:	arch/arm64/boot/dts/arm/morello*
> 
> 
> Missing bindings.
> 
> 

There are no bindings specific to morello. What should I add here?

> 
> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


