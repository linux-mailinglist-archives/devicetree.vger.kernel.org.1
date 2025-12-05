Return-Path: <devicetree+bounces-244651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 988D7CA7F77
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 27D7F33A7D78
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 12:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D64362F5A13;
	Fri,  5 Dec 2025 12:12:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A64632F74A
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 12:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.19.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764936729; cv=none; b=a6bnzKUozUiSRX94zvu3vvm1anfTTMcWSp5/xAmYBZVk9k9NJsbqiwUDsTN+q6UTBl2YjMdQsPkRpyHiV51vewMVKWHIkWCSo7PXIg7MtMA0yyTA9ZKb3a2+Rna0ZcWwVa9lqFIU80oiyfI6WCfxQiXHg2DKgrJx7ZPFZQlYhAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764936729; c=relaxed/simple;
	bh=6oF97LQFyC+d5DUt3Nqs40q90GFj6LHPrRU0wJzS1R4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=eVVPdz5Vcg+3wZPUMKOqGbtV7WAh2KtTDC2NlgDrTQrVU8XrZ+86cjYM7Uguz2LeSzUWsS0ARXl3hEIOcgdJwQdszlYZY7Im4wbi4t/IILLkdXJl/lfBXiSwOYS2rChYl8ReiuCBGyzyCFmYm09s1ODe04w2mbStXgGPIQiVsOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.19.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1764936631td6d3ad0f
X-QQ-Originating-IP: IuPkPR/GVZYSZMUt/AhHb+HEMP3OnTaGUzX2t+S9HLk=
Received: from [IPV6:240f:10b:7440:1:17ae:8f83 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 05 Dec 2025 20:10:28 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2528925561383847697
Message-ID: <2CE13C2293B6BD8E+94a46e0f-f6ad-4c41-a14f-880476f0744b@radxa.com>
Date: Fri, 5 Dec 2025 21:10:28 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 3C/5A/5C
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de, Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dsimic@manjaro.org,
 krzk+dt@kernel.org, linux-rockchip@lists.infradead.org
References: <20251201144629.135570-1-naoki@radxa.com>
 <20251202135008.513685-1-amadeus@jmu.edu.cn>
 <A665FF5170FE9550+0e1d2609-454b-4a82-9e52-2d167e351187@radxa.com>
Content-Language: en-US
In-Reply-To: <A665FF5170FE9550+0e1d2609-454b-4a82-9e52-2d167e351187@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Nwz8Cs33/LprQ8POHVw2TfB018lSRJKn3f37Lg4LOymXb0wQH1mSiwpT
	KxWrHUA4DMqOB4NqhcsjbqUjPqI1P4tMtylL7OBgIoe7LKPXYv66T29TeMf86LRuwbGluf+
	lLIM2JROng1jVUVKZcuJUuj9QIVCXquqYXQJcYTkOyneA3SOeszlFs/WgyVElxlW5ERvg11
	DjO5IruZuawr4QVifEcCRaPa6WwLv3KSfSRyhil1EeW+A+ZSsMQOCMO1+7bnCKDXvrxKys3
	qfkgDUbIaQYiuEQhnS9YkjT3uObWqNXKVGFXjo1LEdRO8eyry+LysQ3LHv14mwDkPYSwkUF
	ssaGgyCIdNre1p4oHaL8k3eAICI6Fj18l/eCadFdK842fSqlnlD+88POEHVSqsFx5qIPzz5
	psvHI33tEvSlfNT/FMYR1zIyOI02WliDlfOFR2IXU9ZRVXlm5BM34XtM9z2ba1iRDHlx2Vy
	s37U4hCkkaCdbW3AlGUqnwerOc9gAA9x/1p9ViZXviWSPaoIwkhhci8gWT1+e+9Q/BHVkxc
	iPSFSbhvTsTbSGSFHMwA35yb538Vi+LdTPb4AZDpvSMWg2atHLMskCRBzo6Jk0Q0ScF57Y/
	MjYWfFNK1+p3SldavDk33fL6xppV+juRwi8d8imqvtnhFmHqrBROsb3tVzOj57FV/Z/z+lr
	yWsnpFvAHl+X7ONefrWA7hjhYxUZqOt23cHpMwQ2ExweA2eVdq9sxeGFofjjUxwJhVkeFVZ
	DKcFrp7YHVQrkKHpe7QAuXR7eGiD2CMx+1MJgQAx/p7PNIQeFhXhGLVW1P+JVsRIPq1Weke
	V+CX+gn/ET/TnA6rDivgK0YQZIHzpRcTys6J9oMlk10IxsJktlGaasDnJ+LwqyfEcVf/QbJ
	vRJKP/ef/XkT6y7jWWSL3rFlDNjDyjXPMQmCyaM7a0sXbwgzc1iTWxbRYIoR6gof09Rq1Tz
	Oi2pCRXN0YRsWdEqYUQ1PihyyK8YBsUjwqWc=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi Heiko,

Should I send v4 just for removing Fixes tags?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/25 22:53, FUKAUMI Naoki wrote:
> Hi Chukun,
> 
> On 12/2/25 22:50, Chukun Pan wrote:
>> Hi,
>>
>>> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
>>> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
>>> Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")
>>
>> Since the EEPROM on these boards are empty, this patch doesn't
>> fix anything, so the Fixes tag is not needed here. If you want
>> it to be backported, you can add "Cc: stable@vger.kernel.org"
> 
> Ah, sure, Fixes tags are not needed. Thank you for pointing that out.
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> Thanks,
>> Chukun
>>
> 
> 



