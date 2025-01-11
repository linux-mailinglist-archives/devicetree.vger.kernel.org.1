Return-Path: <devicetree+bounces-137669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A7BA0A3A4
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 13:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7012E1699EF
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 12:44:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6622619DF64;
	Sat, 11 Jan 2025 12:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="T5UZptPQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mr85p00im-zteg06021601.me.com (mr85p00im-zteg06021601.me.com [17.58.23.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0869719D898
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 12:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.23.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736599486; cv=none; b=Ef0Sz7Ar/EQGxs5c4N2CHwebiK/lycpM5+uRlWG6iGUhgkheG9jZhHp1D6V2357XVR0FsC8nIfnC4GuGa1tSCYiwnA3FeQPWP1pzfYpWEYri/SxCtltpd+y1rVJGbUW0gNJwXPJxy2d8kBumRtEEjqc5fMxSdb0rYaP7wMcowWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736599486; c=relaxed/simple;
	bh=Y7MwLYugGR94MesrZwH95LGqiJA4Y2tcKKbI22njXsg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=WD92tibD3aQNKJGhH/Odqbf9jypmigT4R90sLfkMjFSnV90SVz5a0uqXlBa8T2M6CUf+Uwxda9VU/VolwVBmIuv2Fjizru6ERV2RGTlCivR60znHr69jkA6DOJtm5vUOalU96iuFiaNL1RioRg7sUgPIylw7RIuz4S0rQ538tn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=T5UZptPQ; arc=none smtp.client-ip=17.58.23.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736599484;
	bh=8s7n0fGmh+7RxdpqjIj6o0hu5RhyfH2TGvQsxRm5JGE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type:
	 x-icloud-hme;
	b=T5UZptPQg6JkkLU5fgVIka4pwMONA30gFsaF++gvh8wgH1cgMjFBy0Gbi//7kQWAy
	 Jne7+7Om8YbhUYrXE3XRi0pczEDas3kw7tjSExgQU0egPa2g+YgOvKNXsIu9xYoADr
	 xTwghUHLU2RQKzW3B5PhS/sarmg8iwXEUCVOy7Jzte83jNUFw4Q3PEuF4w16hXVczZ
	 wLv5y75KsUeBTBJ/r+LzOLtZIIh/hpwhlHy+Sl+9GAJlZb8NKv7QU8mBbyIC3LrNn3
	 ZgsgpOU3jzbRS4RPU5h9/FI5Ovs3B3lhevoONAcYS68O6gTFKbuVUFrjPSORhHjwKI
	 E7gOna1m2Q4QQ==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-zteg06021601.me.com (Postfix) with ESMTPSA id 01CF33058690;
	Sat, 11 Jan 2025 12:44:37 +0000 (UTC)
Message-ID: <680a0b08-b085-41aa-a0e3-f36c153c91f6@icloud.com>
Date: Sat, 11 Jan 2025 20:44:34 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Zijun Hu <zijun_hu@icloud.com>
Subject: Re: [PATCH v4 14/14] of: Improve __of_add_property_sysfs()
 readability
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>,
 Andreas Herrmann <andreas.herrmann@calxeda.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>,
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook <kees@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
 <20250110204154.GA3529721-robh@kernel.org>
 <c79dd576-0a85-48e2-a7f8-e4b4e005a18b@icloud.com>
 <qvyhzgeye7qwppcafisvjkg4wwkrenwxq7nebnsjxdenj7wvxm@qwxzet3iyzyx>
Content-Language: en-US
In-Reply-To: <qvyhzgeye7qwppcafisvjkg4wwkrenwxq7nebnsjxdenj7wvxm@qwxzet3iyzyx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Y66I_W9g6yHNvsW3B1DCKLLUTPevysPX
X-Proofpoint-GUID: Y66I_W9g6yHNvsW3B1DCKLLUTPevysPX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-11_05,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011 adultscore=0
 suspectscore=0 phishscore=0 malwarescore=0 mlxscore=0 bulkscore=0
 spamscore=0 mlxlogscore=980 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2501110110

On 2025/1/11 17:17, Krzysztof Kozlowski wrote:
> On Sat, Jan 11, 2025 at 07:48:48AM +0800, Zijun Hu wrote:
>> On 2025/1/11 04:41, Rob Herring wrote:
>>> On Thu, Jan 09, 2025 at 09:27:05PM +0800, Zijun Hu wrote:
>>>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>>>
>>>> __of_add_property_sysfs() hard codes string "security-" length as 9, but
>>>> that is not obvious for readers.
>>>>
>>>> Improve its readability by using strlen().
>>>
>>> Does the compiler optimize the strlen call away? Maybe, maybe not. If 
>>> not, that's N calls to strlen() where N is the number of properties in 
>>> your DT. That's in the 1000s easily.
>>>
>>> Do you really want to go test enough compiler versions we support to 
>>> feel confident this is optimized away. I don't.
>>>
>>
>> i understand your concern about performance.
>> perhaps, such impact about performance may be ignored for linux OS.
>>
>> what about below solution ?
>>
>> const char security_prefix[] = "security-";
>> use 'sizeof(security_prefix) - 1' for the length of string.
> 
> Code is still not equivalent - just de-assemble it and you will see
> some overhead.
> 

Thank you Krzysztof Kozlowski for code review

the overhead may be that use of stack is increased a bit.
it may not almost impact performance since 'sizeof(security_prefix) - 1'
may be still a compile time constant.

> Maybe just introduce builtin_strlen() to string.h and use such? It would
> be the pretty obvious code.
> 

it is a good idea to introduce API for this common issue, it seems the
main strncmp() usages in current kernel tree is to check if a string
begin with the other string a shown below:

// "s2_string" is wrote twice, and also impact performance
strncmp(s1, "s2_string", strlen("s2_string"))

// it is not obvious for readers that "s2_string" length is 9
strncmp(s1, "s2_string", 9)

//"s2_string" is wrote twice, same as strcmp(), may be wrong
strncmp(s1, "s2_string", sizeof("s2_string"))

//"s2_string" is wrote twice
strncmp(s1, "s2_string", sizeof("s2_string") - 1)

what about a new API such as ?

// check if @s1 begins with @s2
bool str_begin_with(const char *cs, const char *ct)
{
	unsigned char c1, c2;
	
	if (!cs || !ct)
		return false;
	
	do {
		c1 = *cs++;
		c2 = *ct++;
		
		if (c1 != c2)
			return c2 == '\0';
	} while (c1 != '\0');
	
	return true;
}

> 
> Best regards,
> Krzysztof
> 



