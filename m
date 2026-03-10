Return-Path: <devicetree+bounces-273468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPJOBRr6r2mmdwIAu9opvQ
	(envelope-from <devicetree+bounces-273468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:01:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4B0249E29
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:01:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 446683046D35
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59C88386C02;
	Tue, 10 Mar 2026 10:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RCnhK+C1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LWn9J6Zo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FA836897E
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773140346; cv=none; b=V9l007SBHyDOOMesHIodTde1VRtGfn2Ax24OP8dDKxzrbaNoB+bzq06MIe6PDN2O3AR6VYYrPZAl81gbNgAzM6KD0ZM+K4iNkfqv7pT8o+w3Z1obCFHEUJBGFwwrsqQV6WG5w4Wcp3/qPc4T9MtBdiJin8cbApTU7dg/M8mh630=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773140346; c=relaxed/simple;
	bh=OX5t6sZu3NmwZ9Xu3APoYi6QWsmPasGwdMgtalTdKnY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ty6TFBUQgesXqoFfK1MFIpIai6O1eqpVkDlXFN1n3xPu437yZ8FxDSmUcSbUW5yTeWukycCRqIH1tL6zR+wOGB5iRJ7U0n9ZG1o0tpo6Vbo9jQ/1rn3hfrlU/Bwo8/EZSg8g8v9nboCVBijRJCDY8qRk0qU4/MUVWNrtxbVjqVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RCnhK+C1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LWn9J6Zo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A98j9a3754559
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:59:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kHFnNozgwGiUCXfpW8J3nNjFkuPfSlVjQ9FqCdunc0M=; b=RCnhK+C133Ll3RJA
	VBuLU3o/mAtpvFEdsd5yjwMFLAdQokBsWvyNseWBEfYs1ktfDIvaBXa59fmQtc+w
	IoHluBgYyEUmg0IiF5eCa0WtR2hIMuMz6o+9KW/bE2kyjO7KLTRuLa88lFUNJ4Mp
	criF2kG8rAjOtbcYzVpU9NOuB54ATcmo9rT2PHUuOTB32JiAN8WaciOWKdKoUqTd
	FrhYJHg2QNpFsH3qQUswS+e8KLW7RGZI/0Id8yVu48XGmYXc9yEfuhPtLQwWkjsq
	nEgcO+fFIV1Lj985nZHS9WbVGo1zLxNv5oSK85WqJqGY4i7B2xbNNyg9eK+KdTI2
	cjLxog==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct477jumc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:59:03 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c738f716bfaso2693094a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773140343; x=1773745143; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kHFnNozgwGiUCXfpW8J3nNjFkuPfSlVjQ9FqCdunc0M=;
        b=LWn9J6Zo2gluOme9OKK3NbDkHvDxnRNuCUIzeZ80E2V7gGa7VS+zo1Ek2dxp/TGX4x
         IFZb/pnX5xmB+5+iIfsEyO3yzkRp2XFc0+ZkjYhCTk25QfdQ0rfFLP7Y0Ev1lTtxh7re
         ugqCbSusyMbnjwdgo5vwn6hiPlNmIaPKA9ytRDmTrHTjS2XIn2P4OQK5BXIPg5cqu88h
         Kq7M/joNVjf2Fbl0pYt/8Apy7Jtsgx8RG7KQjwkncr/pZZ6VE20NGckYNmHIFqdSAT2p
         KhBnjaabQaQZipPEyiKBiOU9990MOw4J0fdzXRUpLgHQU33lnC0++E/OrhZY/HyGcrNT
         pzbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773140343; x=1773745143;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kHFnNozgwGiUCXfpW8J3nNjFkuPfSlVjQ9FqCdunc0M=;
        b=B9C2wwczzuDs4uxgEzPetg2upCbkK0iLQFzv7LtYAaUtx+9d49v3fDjzdup40BEkD+
         JzCY2Hy773MTzWSj3lK0GJYnwqRDj3uUjpO2nmepYKSYQ7TuuGI1v9/799m2y9QOrduI
         1tXNcGBAUBWsq5qbva50lT3laA9gSaA0mCsotnK8P4E6avMbERn7I8KC/X/vXijoht88
         uUa/0ptAHyzaXEpH1jW1U+MI95NpHDpchXRkkQWJfm29Vk9utzgB2u36TdIiBT1R22Dc
         nQdUZeeXBo2ZIptnUWtkDAKSLGD/pf92jcnPob5bIxzd14nEmhAq24TQ+TqUh12PRNlr
         eJsQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6+40yJfAL+t7u58nwe70FyWzoNA1aQ9Y3icBQy7NxhxS/s3Ygqpvs3YiJJkucYYeiFImlb+Ua41DC@vger.kernel.org
X-Gm-Message-State: AOJu0YxaQcyybeuQlb7MV1HEC3ANYpwYRdwisKwfupOIUGyWmiUrXIBZ
	K6jA2kOnN7UTQ0sxOLGVCSC46B5zHcikODHSrXzO8/1si3H2JkhW2YfH+m7AElm11IfkRW4Il5+
	TuzbDbDSB8QL1rKEmDZAZt7VeFETWlQJ8xG4URGRPJBIlJD5C104FHDt8YKxmbi0h
X-Gm-Gg: ATEYQzx42KZ0Ee1gwKDXTdQjR089+BEmC6yuWJfR05Tu1EQvFO3Yxa2TstdLTF4QFy7
	wgiVXUP0UmybWRaSTh9Osp+NVyG6NXvwRC4cPbhqhkOnMtXN7k6YVd50fJcAYLqCrC6GXNxQCGF
	EzBo2/FxUdCeOC6dYBWoKxq6fTz+2Pq7ee+okT9lJ6D5CFPKEhH0Z1pC4VLoFPf6ESpBlemTaId
	rLVbiNG1GkFou41mYmVUx0AImfKkTTFy12W33hHTpoHJ0yHbl3I3ugUvVgHUeWp5OiKO1/wsYAx
	/dKRMwemLo/A5wz9YunTjR7yrLsz/Ch2zibMEInJuJEaCRAaQNUaeeGbAWlLDB4bdPI/koM2Z3F
	eqBcA0x8/rNb4UOAeZ7hASW4mRrbwHYqh254FI7Q+NqlLohkK+y/ztFpyzqZ5mlcuPtgpMdTt4V
	EUzC9PpH9tttc=
X-Received: by 2002:a05:6a21:483:b0:398:8b64:3fd with SMTP id adf61e73a8af0-398ab288704mr2725095637.5.1773140342785;
        Tue, 10 Mar 2026 03:59:02 -0700 (PDT)
X-Received: by 2002:a05:6a21:483:b0:398:8b64:3fd with SMTP id adf61e73a8af0-398ab288704mr2725070637.5.1773140342202;
        Tue, 10 Mar 2026 03:59:02 -0700 (PDT)
Received: from [10.133.33.101] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739dfbf4fesm11934591a12.0.2026.03.10.03.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:59:01 -0700 (PDT)
Message-ID: <4b92b344-c5ef-4bc1-83dc-5f340c5daa89@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 18:58:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 6/7] coresight: ctcu: enable byte-cntr for TMC ETR
 devices
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>, Mike Leach <mike.leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260309-enable-byte-cntr-for-ctcu-v14-0-c08823e5a8e6@oss.qualcomm.com>
 <20260309-enable-byte-cntr-for-ctcu-v14-6-c08823e5a8e6@oss.qualcomm.com>
 <f45b9679-857f-4bb2-b683-cd5701ea16de@arm.com>
 <bc05d278-fe28-4503-ac99-fb28904e7343@oss.qualcomm.com>
 <2ac1d8a1-5cda-4e5c-8c6a-ad08d53e3347@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <2ac1d8a1-5cda-4e5c-8c6a-ad08d53e3347@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5NCBTYWx0ZWRfXxc2SZcVktocC
 +iNnKckiULA8yen18S833NdnwMK7lU9nUwuCjGOarpqMUDZE+6V1X1Kf84cDLolRrJrUH9RnEbh
 UDISJaWf+xM+cHvrarWaf+jMLnutloitpPsqw9oyem3sPT3Y8I9scu4Urpoo6OysGsYZSbH1FrU
 7BLVkFwJDqt11BnYpPPeQNLrCdDTJeiamWoLaxQNcO/XytVV0e47Zis1KAxrSm55PIsgrE3vPw4
 FD0OjThEW1iVCrCUmfHOw8ZVeFXSswwqAOS5s4Ua9KOM8SlipGfAybB1+jYX9tA3gs1v4B72Byu
 a373bTThre0UmIoF9zahc58ZWwB3xRI102FygFTCK/v4a57yDoBdnDLI+WjUX+NNQmRB+NeD2u1
 pz7+I8BRBYAp+6BHQKjlg96mH3+ahJwToRM5Sr81+5XyRC+3T6FFfwyleVtc12l/dpHnL57S1Mg
 GPmy2u0K7kmFw+Yes2g==
X-Proofpoint-GUID: oepWVRRHdmyx6GPiguQV6okrE2RBibUB
X-Authority-Analysis: v=2.4 cv=KLxXzVFo c=1 sm=1 tr=0 ts=69aff977 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Tkd2dFuKn2QnQrKl1zwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: oepWVRRHdmyx6GPiguQV6okrE2RBibUB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100094
X-Rspamd-Queue-Id: DA4B0249E29
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273468-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/10/2026 5:15 PM, Suzuki K Poulose wrote:
> On 10/03/2026 03:01, Jie Gan wrote:
>>
>>
>> On 3/9/2026 8:43 PM, Suzuki K Poulose wrote:
>>> On 09/03/2026 09:47, Jie Gan wrote:
>>>> The byte-cntr function provided by the CTCU device is used to 
>>>> transfer data
>>>> from the ETR buffer to the userspace. An interrupt is triggered if 
>>>> the data
>>>> size exceeds the threshold set in the BYTECNTRVAL register. The 
>>>> interrupt
>>>> handler counts the number of triggered interruptions and the read 
>>>> function
>>>> will read the data from the synced ETR buffer.
>>>>
>>>> Switching the sysfs_buf when current buffer is full or the timeout is
>>>> triggered and resets rrp and rwp registers after switched the buffer.
>>>> The synced buffer will become available for reading after the switch.
>>>>
>>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>>> ---
>>>>   .../ABI/testing/sysfs-bus-coresight-devices-ctcu   |   8 +
>>>>   drivers/hwtracing/coresight/Makefile               |   2 +-
>>>>   .../hwtracing/coresight/coresight-ctcu-byte-cntr.c | 351 +++++++++ 
>>>> + + ++++++++++
>>>>   drivers/hwtracing/coresight/coresight-ctcu-core.c  | 103 +++++-
>>>>   drivers/hwtracing/coresight/coresight-ctcu.h       |  76 ++++-
>>>>   drivers/hwtracing/coresight/coresight-tmc-core.c   |   8 +-
>>>>   drivers/hwtracing/coresight/coresight-tmc-etr.c    |  18 ++
>>>>   drivers/hwtracing/coresight/coresight-tmc.h        |   4 +
>>>>   8 files changed, 555 insertions(+), 15 deletions(-)
>>>>
>>>> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices- 
>>>> ctcu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-ctcu
>>>> new file mode 100644
>>>> index 000000000000..6ff1708fb944
>>>> --- /dev/null
>>>> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-ctcu
>>>> @@ -0,0 +1,8 @@
>>>> +What:           /sys/bus/coresight/devices/<ctcu-name>/ 
>>>> irq_threshold[0:1]
>>>> +Date:           March 2026
>>>> +KernelVersion:  7.1
>>>> +Contact:        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>; 
>>>> Jinlong Mao <jinlong.mao@oss.qualcomm.com>; Jie Gan 
>>>> <jie.gan@oss.qualcomm.com>
>>>> +Description:
>>>> +        (RW) Configure the byte-cntr IRQ register for the specified 
>>>> ETR device
>>>> +        based on its port number. An interrupt is generated when 
>>>> the data size
>>>> +        exceeds the value set in the IRQ register.
>>>> diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/ 
>>>> hwtracing/ coresight/Makefile
>>>> index ab16d06783a5..821a1b06b20c 100644
>>>> --- a/drivers/hwtracing/coresight/Makefile
>>>> +++ b/drivers/hwtracing/coresight/Makefile
>>>> @@ -55,5 +55,5 @@ coresight-cti-y := coresight-cti-core.o coresight- 
>>>> cti-platform.o \
>>>>   obj-$(CONFIG_ULTRASOC_SMB) += ultrasoc-smb.o
>>>>   obj-$(CONFIG_CORESIGHT_DUMMY) += coresight-dummy.o
>>>>   obj-$(CONFIG_CORESIGHT_CTCU) += coresight-ctcu.o
>>>> -coresight-ctcu-y := coresight-ctcu-core.o
>>>> +coresight-ctcu-y := coresight-ctcu-core.o coresight-ctcu-byte-cntr.o
>>>>   obj-$(CONFIG_CORESIGHT_KUNIT_TESTS) += coresight-kunit-tests.o
>>>> diff --git a/drivers/hwtracing/coresight/coresight-ctcu-byte-cntr.c 
>>>> b/ drivers/hwtracing/coresight/coresight-ctcu-byte-cntr.c
>>>> new file mode 100644
>>>> index 000000000000..0bf738d6c283
>>>> --- /dev/null
>>>> +++ b/drivers/hwtracing/coresight/coresight-ctcu-byte-cntr.c
>>>> @@ -0,0 +1,351 @@
>>>> +// SPDX-License-Identifier: GPL-2.0
>>>> +/*
>>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>> + */
>>>> +
>>>> +#include <linux/coresight.h>
>>>> +#include <linux/device.h>
>>>> +#include <linux/fs.h>
>>>> +#include <linux/interrupt.h>
>>>> +#include <linux/of_irq.h>
>>>> +#include <linux/uaccess.h>
>>>> +
>>>> +#include "coresight-ctcu.h"
>>>> +#include "coresight-priv.h"
>>>> +#include "coresight-tmc.h"
>>>> +
>>>> +static irqreturn_t byte_cntr_handler(int irq, void *data)
>>>> +{
>>>> +    struct ctcu_byte_cntr *byte_cntr_data = (struct ctcu_byte_cntr 
>>>> *)data;
>>>> +
>>>> +    atomic_inc(&byte_cntr_data->irq_cnt);
>>>> +    wake_up(&byte_cntr_data->wq);
>>>> +
>>>> +    return IRQ_HANDLED;
>>>> +}
>>>> +
>>>> +static void ctcu_reset_sysfs_buf(struct tmc_drvdata *drvdata)
>>>
>>> minor nit: This has nothing to do with the CTCU. For what it is worth,
>>> it must be called, tmc_etr_reset_sysf_buf(). But more on this below,
>>> and even do we need it, further below.
>>>
>>>> +{
>>>> +    u32 sts;
>>>> +
>>>> +    CS_UNLOCK(drvdata->base);
>>>> +    tmc_write_rrp(drvdata, drvdata->sysfs_buf->hwaddr);
>>>> +    tmc_write_rwp(drvdata, drvdata->sysfs_buf->hwaddr);
>>>> +    sts = readl_relaxed(drvdata->base + TMC_STS) & ~TMC_STS_FULL;
>>>> +    writel_relaxed(sts, drvdata->base + TMC_STS);
>>>> +    CS_LOCK(drvdata->base);
>>>
>>> Could we not keep this function in the tmc-etr.c and invoke from here ?
>>>
>>
>> Sure, will move the function tmc-etr.c
>>
>>>> +}
>>>> +
>>>> +static void ctcu_cfg_byte_cntr_reg(struct tmc_drvdata *drvdata, u32 
>>>> val, u32 offset)
>>>> +{
>>>> +    struct ctcu_drvdata *ctcu_drvdata;
>>>> +    struct coresight_device *helper;
>>>> +
>>>> +    helper = tmc_etr_get_ctcu_device(drvdata);
>>>> +    if (!helper)
>>>> +        return;
>>>> +
>>>> +    ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
>>>> +    /* A one value for IRQCTRL register represents 8 bytes */
>>>> +    ctcu_program_register(ctcu_drvdata, val / 8, offset);
>>>> +}
>>>> +
>>>> +static struct ctcu_byte_cntr *ctcu_get_byte_cntr_data(struct 
>>>> tmc_drvdata *drvdata)
>>>> +{
>>>> +    struct ctcu_byte_cntr *byte_cntr_data;
>>>> +    struct ctcu_drvdata *ctcu_drvdata;
>>>> +    struct coresight_device *helper;
>>>> +    int port;
>>>> +
>>>> +    helper = tmc_etr_get_ctcu_device(drvdata);
>>>> +    if (!helper)
>>>> +        return NULL;
>>>> +
>>>
>>>
>>>
>>>> +    port = coresight_get_in_port(drvdata->csdev, helper);
>>>> +    if (port < 0)
>>>> +        return NULL;
>>>> +
>>>
>>> Please validate that the port_num you get is valid for the CTCU ? 
>>> That applies to all uses of this construct.
>>>
>>
>> Will validate it before using.
>>
>>>> +    ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
>>>> +    byte_cntr_data = &ctcu_drvdata->byte_cntr_data[port];
>>>> +    return byte_cntr_data;
>>>
>>>
>>>
>>> nit:
>>>      return  &ctcu_drvdata->byte_cntr_data[port]; ?
>>>
>>> Also, why not make this into a helper, as we seem to use this other 
>>> places too ?
>>>
>>
>> Didnt get the point here. We may run more than one ETR devices 
>> concurrently. So we should get the proper byte_cntr_data according to 
>> the port number at runtime.
>>
> 
> 
> static struct ctcu_byte_cntr *ctcu_byte_cntr(struct coresight_device 
> *cctcu_dev, struct coresight_device *tmc_etr, ) {
> 
>      port = coresight_get_in_port()..
>      // Verify the port in this helper and everyone uses this.
>      if (//!validate_port//)
>          return NULL
>      return ...
> }

Got the point now. I have missed the instance 2/instance 3 you have 
mentioned in previous message.

Thanks,
Jie

> 
> 
> Suzuki
> 
> 


