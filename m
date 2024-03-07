Return-Path: <devicetree+bounces-49118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BE8874EDA
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 13:22:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 745301C20DD2
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 12:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D8112A168;
	Thu,  7 Mar 2024 12:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ORKkG32T"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085EA12A143
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 12:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709814157; cv=none; b=hiynzThJakoeeyqHN3aPDYpt3gLF2c/aCPYam/+pqS6BHoq49A7eeF5aaf500YgBO5xHY8/mKZ3KLpAE3RR5ZFFidG5ILtaAjEEKdtEKDNHJFXTQ8RI7+oir7bbw3/+rBqL1ijCnRq6qO5DEKX0RwXXWmtv8xx4X0tgTByLyhMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709814157; c=relaxed/simple;
	bh=/MJrkxK9nqN+Zj13A1cNKFlQySvEhjHdM7lYN4T1lSM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hhnll5tztBOT5ijkuwx0XFyCKBMESiHqPLnbWKXMGhDWvyq3PUpZicdgyb42yncvMarj4CV9IY+b0p9dycfcV7W6Jcga2fbFCAefg015ZdyJhiCH4cYY3iXxJmxJ/v4iV2x14bY+Q7KKy0Jm6noXJJNNnL1z1ac+k4zLsrHYlAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ORKkG32T; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709814154;
	bh=/MJrkxK9nqN+Zj13A1cNKFlQySvEhjHdM7lYN4T1lSM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ORKkG32Tsijz8VVeeWrZQaNZOS8KKDRGD6fmPfBCOOagsgN8Un4x+GzRRonPqgMYe
	 PpfdSxvGl9STQY1pYzRuRRwpHwpHYhE8osLPx+WcXxA5Z2T+y34lbXu3QDuKt6ylVm
	 U6r21Wu0NAnMfPHdrs5hxEyQb/NTpphpdUzdLg5dVnj/TIjveP9lsJcB7zunSmaJyI
	 sIvD+eWvFDXlKohuNuUDO075qIIROX3+mwifBLRo7irgihtSv/IURQ9vtqCAklQBrn
	 R4/tv6fT5rMH/BkkCduLRlHRjaW8uUNkwqdaD3SqKI2LEVygCcHRa3EkEU2r3iDvwY
	 Bm1jqacGe+CYA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 688C437810CD;
	Thu,  7 Mar 2024 12:22:33 +0000 (UTC)
Message-ID: <bf61e844-b05a-4626-b123-d693aab8939d@collabora.com>
Date: Thu, 7 Mar 2024 13:22:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: add Airoha EN7581 platform
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, nbd@nbd.name,
 john@phrozen.org, devicetree@vger.kernel.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com,
 lorenzo.bianconi83@gmail.com
References: <cover.1709768157.git.lorenzo@kernel.org>
 <b50faa94923389d435ac37c3094c269a46bddaea.1709768157.git.lorenzo@kernel.org>
 <6ff8ed9a-f70c-4ef5-97a7-37ddba4db7f6@collabora.com>
 <ZemvnYjbHHIVqvU3@lore-desk>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <ZemvnYjbHHIVqvU3@lore-desk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 07/03/24 13:14, Lorenzo Bianconi ha scritto:
>> Il 07/03/24 01:11, Lorenzo Bianconi ha scritto:
>>> From: Daniel Danzberger <dd@embedd.com>
>>>
>>> Introduce the Kconfig entry for the Airoha EN7581 multicore architecture
>>> available in the Airoha EN7581 evaluation board.
>>>
>>> Signed-off-by: Daniel Danzberger <dd@embedd.com>
>>> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>>> ---
>>>    arch/arm64/Kconfig.platforms | 13 +++++++++++++
>>>    1 file changed, 13 insertions(+)
>>>
>>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>>> index 24335565bad5..bbe61e233034 100644
>>> --- a/arch/arm64/Kconfig.platforms
>>> +++ b/arch/arm64/Kconfig.platforms
>>> @@ -8,6 +8,19 @@ config ARCH_ACTIONS
>>>    	help
>>>    	  This enables support for the Actions Semiconductor S900 SoC family.
>>> +config ARCH_AIROHA
>>> +	bool "Airoha SoC Support"
>>> +	select ARM_AMBA
>>
>> ARM_AMBA is selected by ARM64 already, you don't need that one here.
> 
> ack, I will fix it in v4.
> 
>>
>>> +	select ARM_GIC
>>> +	select ARM_GIC_V3
>>
>> ARM_GIC and ARM_GIC_v3 are also selected by ARM64
> 
> ack, I will fix it in v4.
> 
>>
>>> +	select ARM_PSCI
>>
>> ARM64 selects ARM_PSCI_FW (which should select ARM_PSCI, please verify)
> 
> ARM64 selects ARM_PSCI_FW but ARM_PSCI_FW does not seem to select ARM_PSCI.
> Am I missing something?
> 

I asked you to verify because I didn't (and was making assumptions) - if it's
not getting selected, keep the select here. I have no problem with that.

>>
>>> +	select HAVE_ARM_ARCH_TIMER
>>> +	select COMMON_CLK
>>
>> ARM64 selects COMMON_CLK already.
> 
> ack, I will fix it in v4.
> 
>>
>>> +	help
>>> +	  This enables support for Airoha EN7581 multicore architecture
>>> +	  available on the following SoCs:
>>> +	   - Airoha EN7581 Evaluation Board
>>
>> You're not going to add one ARCH entry for each MTK Airoha platform, are you?
>>
>> (if you are, that's wrong)
>>
>> ....so the help text must be refactored; you could say something like
>> "This enables support for the ARM64 based Airoha SoCs"
> 
> ack, I will fix it in v4.
> 
>>
>> ...also, I'm undecided whether MTK should be mentioned or not, here, as those
>> SoCs are (...at least the 7581 seems to be) really based on MediaTek router
>> chips, in many instances, sharing the same IPs.
> 
> Right, EN7581 is similar to mtk router but I do not know if this will be always
> true (maybe?? :))
> 

I hoped you did know more... but even if logic says that it will be true for most
probably a long time (since Airoha *is* [a subsidiary of] MediaTek), perhaps it's
not a good idea to mention MTK?

I'm not sure either. Of course, mentioning MTK would for the sole purpose of making
sure that whoever tries to port new Airoha SoCs has a pointer (as in: look at MTK
SoCs, you can reuse stuff from there, don't lose time with reinventing the wheel),
but at the same time if Airoha starts being different, that'd do the exact opposite
of my intention...

Uhm.

Any advice from anyone else?

...otherwise just avoid the mention.

Cheers,
Angelo

