Return-Path: <devicetree+bounces-202222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E64B1C7AB
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 16:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 654E062130C
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 14:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE1BA28C022;
	Wed,  6 Aug 2025 14:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ncGQH0HZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F7E25A2BB
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 14:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754490950; cv=none; b=fu0LHRYUtykM6EFWJz++AFJSNJgDWiYXh4ewZhC5P9S3lVNYyI8dl22Qt+H4K6WKuMni04GMphwADUvr7xmBW6vkD3vGt9Ga61VI8RHI8C3ycUWnyjVaRJ+vMAwlfhH+k++5A9WvWQzq6KhuAzVlNSpIkCfO4rbP6Pq+FWs3tMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754490950; c=relaxed/simple;
	bh=IzAyAJfpY0pHbWneABeVrlnmE6GZCoVRzfOeZKBvWZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M7R5dHxICr/CzG3EKDeZ2589c0LCz/qGN8ang7VlThtQ/k0W+zP+GZ9nxj1VdrxL7Qoo6yUtDbetwQnqHKWoHGSv2b0W7y2WoUlcaN5ASGblsULFJ8x2CHnQlhrk/Awy0baiCsjFMz/qaL84QOlfKaJHZxsk5Xq8TmlO8PGxhNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ncGQH0HZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 576Dslq1013404
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 14:35:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TwlR+oMZlALuIJKmyusyfjuF4+MmPOO9KSk2h10iAKA=; b=ncGQH0HZlicVhpPT
	+V8slmxae8bXQI5IjyQAeE4LbwHJ3NsovDM3FpX2x2G+flTtwLNqS2UG97JVK3y2
	xKPS71sxRvd8CxnU9Q3lC1IUOqDYwCKpSus6RHPE/Gxp6Zglh1/mOi/yzF8xO2M7
	t4OPUd7qW4vS7v7mSKenSHB1vFq93Z0d1d1FRIqC8PWzniK/EMqoMiWLYKDE/dfz
	z2uIqjBt+SIouVtAGCJAsBHYDL3Zfa13N/BlDrIbsM39Z31aXmUXgZ54eLZtUgUQ
	QUdbpPMJmh3OOEtTJFJ7lk7HdCWQakskfICL8KpW3XbfrAt6RyBELfF6CfJBpnnk
	cdjUPg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpvvu1c5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 14:35:48 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-240908dd108so8982445ad.0
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 07:35:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754490947; x=1755095747;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TwlR+oMZlALuIJKmyusyfjuF4+MmPOO9KSk2h10iAKA=;
        b=okIQatE+mbzDeGa0BW4JPhblVZbUmOqyL+6UCLBCUEz7N8gndWy1Urru+sX60Ay3Ga
         O+ojgK91RYKlP/UrLF/Wuhb5Z+3NS13I9CVyFogntrBOjoZlKiMy01COdqVn9kSxTlMN
         YrSbDSTFdYbntSNo0l7N+KBT2wDvWesVDAWH5Yz/upMjVRFQcD60oUZeLTomEJdOCB0l
         /EmjYuMPxfmFsuhPVlFc+9sSb7KXmLZIDoJcDkDQ0oU1yeGjO0TwpBGbmcetSEFbtGH8
         84jnv3mhuho0EbRQk2li9rxriPqDK5f8z4YOaPKZnVrbKWWQU/BXwVplY9o2LqQwErLd
         zm5g==
X-Forwarded-Encrypted: i=1; AJvYcCUwiyStxerCUIqHCp/TAoHKR6FX2mD5brtvN0Hqso7j2k5JhlNepBRRp4SAQrkt/heEghf2FJ2+dpxm@vger.kernel.org
X-Gm-Message-State: AOJu0YxhdgTUt/NVHN3ZUH6Jh6z1MEygeWtU+stvjLlAvcruqUZhdviY
	2W42DZPMkDASqieuGb3afXzBaWfJBGqRmi2u0+/JRvz1oI3vy7ccFKRUGUMfcmHvQ5a4A8RWmxa
	7smmEOpD/OoE0F+FukjQN/h09l0+3wGEVu5HqC5P0YrRikR17IRP4XnB6pEZhNeU0
X-Gm-Gg: ASbGncvJ8N9hfjgWx+S4ADPGdX/OAXBvXzCTPWinUoyIEWHwnJJ0DBsG322Q+Y9Bebb
	Zy1cBLssCLd+d2YrLuozdjYugQv1iDg3Ly9o00eOhgkT7d8+d/4BmF0lr7H7AqhWf4LuCunbPAv
	EWgcmkWPd0DAcKXmcT29Z1Ax6DX0yVywFJlEFlyhOj5/YwvwH07IFkq/LFB0AVeGhm+IYSlze/N
	VVEgXZU/Agm3zl3/CIxHroGUlLY20isjZXOuCS6TK1qlUg8i+Whro7rPM5pm/47xjn98UsqGjsb
	RWn4i455wsDkcA1GGRePi1GeuQLEmosnGxevCm3bP/P22YLJQeK87YsxQLkoG6nbaQAtCZrFshT
	zYoY=
X-Received: by 2002:a17:903:1250:b0:240:3cab:a57a with SMTP id d9443c01a7336-2429f9869cbmr43861625ad.12.1754490947323;
        Wed, 06 Aug 2025 07:35:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+NPjGR/ioIEs8rIKpi433E6HkfZN/NsX24RQq9faA59sT+8283L0e/mv+qkQqKGbp1uO9ww==
X-Received: by 2002:a17:903:1250:b0:240:3cab:a57a with SMTP id d9443c01a7336-2429f9869cbmr43861085ad.12.1754490946675;
        Wed, 06 Aug 2025 07:35:46 -0700 (PDT)
Received: from [192.168.1.4] ([110.227.163.12])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1ef75bdsm160361515ad.11.2025.08.06.07.35.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:35:46 -0700 (PDT)
Message-ID: <6d2f71a5-72a6-4ba6-956d-19f053d73c2e@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 20:05:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] ASoC: codecs: wsa883x: Add devm action to safely
 disable regulator on device removal
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250727083117.2415725-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250727083117.2415725-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <07faf0cc-a8e6-426d-b397-dfc321a7f3df@kernel.org>
 <aae92260-5169-4af1-97b0-48f364612dca@oss.qualcomm.com>
 <4bc486cb-9d94-4bad-ae07-e9a7aeed481a@kernel.org>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <4bc486cb-9d94-4bad-ae07-e9a7aeed481a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: fydk6_PdtSBm47BUVIemEcQe4zeTwZqo
X-Authority-Analysis: v=2.4 cv=GttC+l1C c=1 sm=1 tr=0 ts=68936844 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Q/58bkKydBp6VmYC+FnXRg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=usrlyX-CWiNRApQyylIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: fydk6_PdtSBm47BUVIemEcQe4zeTwZqo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX6XIzVkTgjFg6
 mc+uah0n1H2oYrZNFm7yh5wYm1tU9lXSGYcTJbHZO3Ztpe7EF9//zIdpfs3QXlK+0oeOOoBNycK
 4zgrLWmxpLgelVoXx/MjrBvXXRPZeh//YKn4Ki7UhwKbxGaqn/x4AtQfanAQUfzxWWMnrMOoejg
 w0GrPiPYGc0vBwMsXgDbP9fAMXb6gM+zebjj9o61gtO0hTrRSTa0/Ks1LcmyxtgOXR/jdQYg6pH
 3DegVAsWsXaCRTV2/Ah8z0mAQ+T6jYkq2M/klL4o+7omkq7XwLfI/Lqb43mb0pM8k2JQS5l5KN/
 gk2qCBI+mD0tD1Ya4FdG3y7rwzphAOizcZ+tA0vD2Fsugn1iwQIPXkBfmBsQJq5gWActzc5nGhz
 hxlIN4d9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009



On 7/28/2025 6:32 PM, Krzysztof Kozlowski wrote:
> On 28/07/2025 14:36, Mohammad Rafi Shaik wrote:
>>
>>
>> On 7/27/2025 3:00 PM, Krzysztof Kozlowski wrote:
>>> On 27/07/2025 10:31, Mohammad Rafi Shaik wrote:
>>>> To prevent potential warnings from _regulator_put() during device
>>>
>>> Warning is either there or not. Either you fix real, specific issue or
>>> not. The code looks correct at first glance, so please describe exactly
>>> how these warnings happen or how what is the bug being fixed.
>>>
>>
>> The current wsa883x codec driver manually enables and disables
>> regulators during probe and remove.
>> In patch v3-0003, reset functionality was added using
>> devm_reset_control_get_optional_shared_deasserted() for shared gpios.
> 
> 
> There is no such code at this point. Each patch is a separate commit and
> must stand on its own. With its own explanation. You cannot say that you
> add bugs later, so you need to fix something now.
> 
> Describe actual problem here. If there is no problem here, describe why
> you are doing this.
> 

Identified the actual root cause of the issue observed in the reset changes.

The failure condition was not properly handled in the reset patch.

I will update the patch to include error handling for failure scenarios 
and ensure regulators are disabled appropriately.

will Drop this patch for next version, only will keep the reset changes.

Thanks & Regards,
Rafi.

>>
>> However, during cleanup, this led to a warning:
>> "WARNING: CPU: 2 PID: 195 at drivers/regulator/core.c:2450
>> _regulator_put+0x50/0x58"
>>
>> This occurs because the regulator is still enabled/released when the
>> devm-managed cleanup path attempts to release it.
> 
> So that patch was broken? You just did not properly clean up there?
> 
>>
>> To resolve this, remove the manual regulator disable logic and instead
>> register a devm-managed cleanup action using devm_add_action_or_reset().
>> This ensures proper cleanup and avoids regulator misuse warnings.
>>
>> For reference, the wsa884x codec driver already follows this approach by
>> using devm actions for regulator management.
>>
>>>> removal, register a devm-managed cleanup action using
>>>> devm_add_action_or_reset() to safely disable the regulator
>>>> associated with the WSA883x codec, ensuring that the regulator
>>>> is properly disabled when the device is removed, even if the
>>>
>>> Device cannot be removed/unloaded, AFAIK, because of suppressed bind.
>>> Regulator is already disabled during error paths, so that part of above
>>> sentences is just misleading.
>>>
>>> How can one trigger the warnings?
>>>
>>
>> The warning in _regulator_put() can be triggered by applying patch
>> v3-0003, which introduces reset functionality using
>> devm_reset_control_get_optional_shared_deasserted().
> 
> 
> There is no such code now. You say "potential warnings" are here.
> 
>>
>> Since the existing driver handles regulator enable/disable manually, the
>> devm-managed reset cleanup path may attempt to release regulators that
>> are still enabled, leading to the warning.
>>
>> This issue highlights the need to replace manual regulator handling with
>> devm_add_action_or_reset() to ensure proper cleanup and avoid such warnings.
>>
>>>
>>>> probe fails or the driver is unloaded unexpectedly.
>>>
>>> How driver can be unloaded unexpectedly?
>>>
>>
>> "Unloaded" might not be the most accurate term here. What I meant is
>> that the driver’s probe can fail due to an error—such as missing
>> resources or improper regulator handling.
> 
> 
> Use standard Linux terms, e.g. probe failure, probe deferral etc.

Ack,

will ensure all upcoming changes are managed effectively.

Thanks & Regards,
Rafi.


> 
> Best regards,
> Krzysztof


