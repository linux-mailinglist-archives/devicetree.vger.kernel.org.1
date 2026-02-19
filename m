Return-Path: <devicetree+bounces-266632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAhiJ0/1lmndrQIAu9opvQ
	(envelope-from <devicetree+bounces-266632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:34:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0520515E4F4
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:34:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 487E4301BC31
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09E5C2F3632;
	Thu, 19 Feb 2026 11:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bYxjMDFg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aRqmI20z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27C21DF271
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 11:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771500873; cv=none; b=tHPTRPv4zT1koe8XPvwQoks37c/Inj4+8epBly9W1HplMJ/qJcAGfSNXDdTGGQBI6fijTp4RU9vfQbck0Oq0KY2dNMMq2Ul7I4gOEpQdczkZRFRTNvnQOqrYJflqxLoCBD1hhPFOVJ87da4aoPkJ7Kx1WQ/979xwzH3JCgvn670=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771500873; c=relaxed/simple;
	bh=oUyXB+CcIwbGHWIhJYWqa28ISLsKSEJ27xTfntLMOyA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qJJ8+p0E89M8qb/j22xbpuffwjzWuckUReArZrf6dCTKBM+XpeoHyLNgdGnes5YmGAyjPIdbQOFnEbNZJohayGEnSeVLi4pNUtwUj99TASG8AkirbSxrQX9tCDmdIkxV+ySzIRdy3wB1EF13o9q3h2kQBdIPwVwIX0BS0fJiVSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bYxjMDFg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aRqmI20z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JAOF9U1288554
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 11:34:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P9+d9vwGLTBNf371LFltJnF/8rrYiRV01DBK1yVs86I=; b=bYxjMDFgorXVUUXl
	BlS/Rco9z96Vgbz0ba35wh+pF9ehymEJSOzR/NcG5qMwKEcOaLI0vyg5H6IcEeHj
	06jCpXm1FToqo07ciGAhIaFhwyUDm1/cjntQTi+65SgCheFmToXVm/0tqH061RNH
	HlRovB9OM0eaQEsoSjDc1T8aoFkITHdqQ6b1xOlAbLYJzjjpcwJo4BjJZ962ilQM
	8hZd3yVHmI6PKBIVQTiPWD1DXGScsFDiFryEicblbSv51f8ndg+aP+24YcNyEj9f
	+dGH81WhdVsCNXxL+wq+4r+e+oLU8/32jmEQ9g2VaCoQu8BgX4SowaeMdKGSZuSl
	p9ddGw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrpg991h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 11:34:31 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a76f2d7744so8844735ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 03:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771500870; x=1772105670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P9+d9vwGLTBNf371LFltJnF/8rrYiRV01DBK1yVs86I=;
        b=aRqmI20z3spG/JIqjek8Z/mLapyC9VNhqIaCRa8G3z5ZSDVvhMKqNTbnHPD4BMXTj5
         wbiPe/2Apo0uu42z2nrh1bBs9Uxh39enoC+FGkY9FqhJsl0KuXXf5DQD+KO6aXIqQF87
         grU9VOrg8k1IeR6xkYFZEwzkQH0Apo2JeT8KBhMPDajZMRZ32cUqvh7nHemjROBRgGj6
         ABsAY8q6gp8nY8FqX4cSiI/fk723YOlfv0XO7TbNkf5q50XUrZrsasD84qchX2OLWAid
         E2laeScC4Kak70fkgGABeS4EEeAkdrPJYW9pETE1A0oLwf/yrAvePhxO4irYBdULc036
         C9lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771500870; x=1772105670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P9+d9vwGLTBNf371LFltJnF/8rrYiRV01DBK1yVs86I=;
        b=h3j7SmRB0Zx6+p8ECwyi6kp3SfwNSUmDZt1ZHdoTTpdc9A944YghiAQBVaeWENaLZw
         AzPSbx9lH4zmck45BEa69om1orwGUJc8v8JWaJS09mV0m10tbhGED0qKnbxftno1y4GA
         B26kzVBxZIYvlagmZCson0AgO/C0ZDNF/RGaKENgbr0wP189jY8SGMXF5jBXt0MtX20x
         lYofJe+uLKWNrJzf3tWv4wpL7e+oMqyplcc7KPboJSVnDhhDT4SHkdTjO2VTCwtgD4zV
         MazVz0h26cohOjv9mGwhylzNQkPnMGeqkZQ8NSvFBZU2YzmS0aLhKjsznKqmwYz0xDNn
         ZGGw==
X-Forwarded-Encrypted: i=1; AJvYcCVZA5ZDl3b4xMpQKTvb1XlfDj8ybwChEerUFeN9F/2/ak6JodZyRwjFLCA0tAtCHNi4cQr1zJ0l71t8@vger.kernel.org
X-Gm-Message-State: AOJu0YxLrUKXzuEGu9Hs0duq8PD+a7aEUR0VVeLL3Nob2bb5tAofwKXZ
	xhD+Txy3oaqUA2eG1+PwF2kBdCa2PXfu0xeTfO7ENeRa8ctbqG3VU5DVqQ8MDETOeUryG2tQA6j
	Lf2dScOSwsKOQLdfg+wMf6eiThsk/MkifM1l3jg68MTDlX4xRM2SvlJZGUMCeqHa3H3i1SeXG
X-Gm-Gg: AZuq6aLIFTXa1p3Br3pahYmP847+kGEANz8AiGjN+s+0bpssSf5MPQ49Zw215VpCV5v
	iaBU7Q6TFr6MoaOV5JHaTgqP2vzyK/hcyToUn+roW+cJTxwV01K5KneAYPD071DhhYtwpYQYNpb
	SaP9BOcdPEuq5yGOtXKUFaqfqCBbhQFMsdEzIjqHgukqKbSHtNM43e+B0Ke1SftfveJxQWn2jvu
	MD9L2jaE07uffHZGI9OR6nzIgz97Ak1z4k4z07c8dLC+vHCc78kc6UDp5TPTr49ZFRg0GVV5XKg
	llKrGlAdWlk3BEcNbK/9r+BbwdE3kdYOFGSzx4sYiZLZ7uaOJA5cbPuW8CvHzlv6V/MMckNhe9K
	S0kfaRHJJWSDd/0dWmutMLpy4CryzEEu0rXWHVm1SlhS6WrLh/TlssvIq7g==
X-Received: by 2002:a17:903:3c68:b0:2a9:3211:29f0 with SMTP id d9443c01a7336-2ad50ff2e5bmr40930205ad.58.1771500870509;
        Thu, 19 Feb 2026 03:34:30 -0800 (PST)
X-Received: by 2002:a17:903:3c68:b0:2a9:3211:29f0 with SMTP id d9443c01a7336-2ad50ff2e5bmr40929965ad.58.1771500869953;
        Thu, 19 Feb 2026 03:34:29 -0800 (PST)
Received: from [10.217.198.130] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a73b0fesm163193945ad.38.2026.02.19.03.34.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 03:34:29 -0800 (PST)
Message-ID: <f62c0595-16ce-4af3-b0e1-0ebb84dc4236@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 17:04:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: pm7250b: Enable Qualcomm BCL device
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-3-7b426f0b77a1@oss.qualcomm.com>
 <98ad13d8-82d0-4def-917d-b99cf455c5f1@oss.qualcomm.com>
 <fa6ce650-42b8-4090-9c80-7f4e4c85a96e@oss.qualcomm.com>
 <91425550-35f6-4941-917c-f639dfadb42d@oss.qualcomm.com>
Content-Language: en-US
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
In-Reply-To: <91425550-35f6-4941-917c-f639dfadb42d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: dSBh-iPJ8u9X55wiqANUqtGf1VMfYWAC
X-Authority-Analysis: v=2.4 cv=JrL8bc4C c=1 sm=1 tr=0 ts=6996f547 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=qeKA5tGg5t4KbAWVeC4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEwNSBTYWx0ZWRfXxfi8mcZJk0zr
 sg5JngiS5VmTwThDeQo35lXE5+G6z22GyVIUj2BQOP6agR/BHz2x9Z5/nv5PwUaWQYMY4O+L9cf
 o5sZqD7RUGi/qPEXJB/MsUlykJdZ1vHPEpRJo0RgqWekUx9QdALfnKXrSvfL1bysVhYAAjosvZp
 k/Mw4r4uKaPJWaPrA+gu6zGCFfqxn8odFe509A2QIIACM6BeXL7FdWQ6M1L44SIA/WeAI819G3w
 DUuoK6RzxNizoWUlkW9e9jEjnGn2FlojivGn6e0N0RTHTwrtoKDcRuP/cSR30CCjBHC6xrA67GS
 uNgjD763mn5WKTKORD7gpZNmK/pXljvX2P8poWuQC/94Qmp2kBuT0JA9qu4XploMoHT7JWI3vBo
 3zy6fzQfkw8EN/mDYTKZ8J/P9Fzz6ePWcrf2uG3kwBLmPgR7BJHNIJ0lJj33A/6BDW4pP+bqtKq
 zs/1MF1XIPkKCFAsWKQ==
X-Proofpoint-ORIG-GUID: dSBh-iPJ8u9X55wiqANUqtGf1VMfYWAC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266632-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,c000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manaf.pallikunhi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0520515E4F4
X-Rspamd-Action: no action

Hi Konrad,

On 2/16/2026 5:18 PM, Konrad Dybcio wrote:
> On 2/13/26 12:55 PM, Manaf Meethalavalappu Pallikunhi wrote:
>> Hi Konrad,
>>
>> On 2/6/2026 2:41 PM, Konrad Dybcio wrote:
>>> On 2/5/26 10:14 PM, Manaf Meethalavalappu Pallikunhi wrote:
>>>> Enable Qualcomm BCL hardware devicetree binding configuration
>>>> for pm7250b.
>>>>
>>>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/pm7250b.dtsi | 10 ++++++++++
>>>>    1 file changed, 10 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>>>> index 0761e6b5fd8d..69ad76831cde 100644
>>>> --- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>>>> @@ -202,6 +202,16 @@ pm7250b_gpios: gpio@c000 {
>>>>                interrupt-controller;
>>>>                #interrupt-cells = <2>;
>>>>            };
>>>> +
>>>> +        bcl@1d00 {
>>>> +            compatible = "qcom,pm7250b-bcl", "qcom,bcl-v1";
>>>> +            reg = <0x1d00>;
>>>> +            interrupts = <PM7250B_SID 0x1d 0x0 IRQ_TYPE_EDGE_RISING>,
>>>> +                     <PM7250B_SID 0x1d 0x1 IRQ_TYPE_EDGE_RISING>;
>>>> +            interrupt-names = "bcl-max-min",
>>>> +                      "bcl-critical";
>>> We should strip the "bcl-" prefix, since these interrupts happen
>>> to be under the bcl device
>> Ack
>>>
>>>> +            overcurrent-thresholds-milliamp = <5500 6000>;
>>> Is that something that we expect to change between boards, or is
>>> that an electrical characteristic of the PM7250B?
>> Yes,  It can change based on battery used for that board as these thresholds will be close below battery OCP spec.
>> It is not based on pmic spec. Max current threshold support for specific pmic bcl is taken care in driver pmic data.
> 
> Okay, so this property must not live in the common PMIC DTSI then..

Ack, I will move it into board file wherever it is required in next revision

> 
> I think ideally this could be communicated over battmgr, since it already
> has a lot of information about the battery that's currently connected to
> the device. Do you think that would be reasonable? Would you know who we
> could talk to internally?

We are not adding any battery information here. This configuration is 
specifically for the BCL peripheral to monitor current and trigger an 
over‑current alarm. While the BCL settings are derived from battery 
specifications, they are not the same as the battery’s own limits,the 
BCL thresholds will always be set below the battery’s OCP specification.
The intent of the BCL is to provide early detection of over‑current or 
under‑voltage conditions, notify the SoC/peripherals, and allow 
corrective action before the system ever reaches the battery’s actual 
protection limits.

Thanks,
Manaf
> 
> Konrad


