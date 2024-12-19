Return-Path: <devicetree+bounces-132788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC8C9F81C5
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E36F816A1CD
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43161990DC;
	Thu, 19 Dec 2024 17:21:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1807F8633D;
	Thu, 19 Dec 2024 17:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734628906; cv=none; b=DGsrrQIBi9lNdkoOAEUnA0GLSKO/NfEwULKPS0K1my5+FwEsez+VgXUqmunPdk9Gr4ihVUHmI2rhKev51kKTqkWMnGYFMzDFPeEqOgtdi8PkJTl9G96gjo9IRuRoZoYOCpOZxxdbMI0al9We1tbpAbxh2tkxfAEqj3gHZ12xICE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734628906; c=relaxed/simple;
	bh=u4s+vACK7Nov2YTm47Eegcugno2aDED34qlP5TI0l6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qaCBXIBQcRzk/ThOc7B6GH99UMsk/mcDc5s7mM2DHRLG4zIAZZjS40NwjRAoOZPLHN8tWlYFVf/JL+DsgwOHy4m9lxuB29L+P4AMl4xG4/UlJR6spTY95T4WhanLmXKjHs9I0J1sGZ/iVTvVaD0I8Pwp8XbAXOn6YqTTVhMhV4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3DA71480;
	Thu, 19 Dec 2024 09:22:12 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CC1393F528;
	Thu, 19 Dec 2024 09:21:43 -0800 (PST)
Message-ID: <77354c84-aa4f-4280-8f6d-52c01c001a82@arm.com>
Date: Thu, 19 Dec 2024 17:21:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] arm64: Introduce Arm Morello System Development
 Platform
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>
References: <20241213163221.3626261-1-vincenzo.frascino@arm.com>
 <20241213163221.3626261-6-vincenzo.frascino@arm.com>
 <a4137536-5c7f-43b7-9af6-dbf77aaa8987@kernel.org>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <a4137536-5c7f-43b7-9af6-dbf77aaa8987@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14/12/2024 10:13, Krzysztof Kozlowski wrote:
> On 13/12/2024 17:32, Vincenzo Frascino wrote:
>> Introduce the Kconfig entry for the Arm Morello System Development
>> Platform.
>>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/Kconfig.platforms | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>> index 370a9d2b6919..1c4867ea9407 100644
>> --- a/arch/arm64/Kconfig.platforms
>> +++ b/arch/arm64/Kconfig.platforms
>> @@ -250,6 +250,11 @@ config ARCH_NPCM
>>  	  General support for NPCM8xx BMC (Arbel).
>>  	  Nuvoton NPCM8xx BMC based on the Cortex A35.
>>  
>> +config ARCH_MORELLO
>> +	bool "Arm Morello System Development Platform"
>> +	help
>> +	  Enables support for Arm Morello System Development Platform
> 
> You do not get new ARCH per each soc or product. Merge it to existing
> ARM Kconfigs.
> 

Thanks, this is the feedback I was looking for.

> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


