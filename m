Return-Path: <devicetree+bounces-266561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rfnrK8uhlmkNiQIAu9opvQ
	(envelope-from <devicetree+bounces-266561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 06:38:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1260315C249
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 06:38:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 48C5D300826C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 05:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B9B2BE057;
	Thu, 19 Feb 2026 05:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iUOTJcxI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RMr0o7Ja"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BCC628D8FD
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 05:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771479494; cv=none; b=qnIeOLBFfSmZEzgXkTuW0FM7gus8yZkUMKLzAulQDyqHlCsrQ46kgRyW03IFF1wA5BkvXMZIJG9dtPBugUUMf+wQaMW1FJF29ElsdqypHzDmkmkcO2Nci1lGngohbUzX1SoO+nXPWgEhf8J4XGlnDaHhf4+wbTtzQTUHFgfgIFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771479494; c=relaxed/simple;
	bh=JarSg4Iy2X5OeOrsbK3lxs8hqItkhx4v7l+xAx/pSn4=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=kFdZVB9KZvSCNBW7dUEvq10NUasFIcknh6N68qhaHj0//C6Fn161jEgGmcXOs6es5a+4nFp6Wq8Xqbz3qGmFRGeSDFiWTJKBsdkqpvPTRLNQBmeUYNLZp8SidHfTZah5nurbRpGpWRl9V7MrfHAF/JGVhQxXI8+QVvgk70n+DH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iUOTJcxI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RMr0o7Ja; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J2kgIp3233507
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 05:38:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bx9vef0HkXb6vOZHSEYOmtJceWicO+PSjEh/i3J41t0=; b=iUOTJcxI5tVwiqCa
	/KjjOGai9QMxIxMzTxQo24CwE4R5X+J5euxtXcTyG5V54g+jlWpmuzcZWu7kGgnu
	QuS4JYOO0AM/aW7WFKgN6s26+YV1H5JDNOdyRN+nQ0wUAnFZGkooU9e3UD8AUTHT
	40RDqL0Ysp0smn5otmWsm6KazMA6ipifrd21H70hoTslUA1u5Yy0I4ewLPy9H15+
	SM3h/gWAc6kGTSdryVgNLsEks5slUqZfireVfW2A7GamY2Yd6C0a/k7k5w/hT3Zn
	rc+9MhPjBfQ1vT4WdK2RCUFA5+M6DI9F7CcyHvCC0pceXhjd71rVzM2o/1SDajE9
	cq28/A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdqfg8jnf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 05:38:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-824a1d441e7so260304b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 21:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771479491; x=1772084291; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bx9vef0HkXb6vOZHSEYOmtJceWicO+PSjEh/i3J41t0=;
        b=RMr0o7Jaqfc2HTLMhvDZZdFTfs/0RnAg/JSAwp4JWkk88H3VW5M3xLi1Fmilamn1Vw
         2RC9ID0+7HisfMNUq4mh7ZYhwMj2jPP5rS3G2GuaxuoL68I1rhEOEjf4ghZkWtp4W/QY
         728NFMJhBCC6++Yrc2bgbbx253OuC8t6lpQ6QuWCx7f6uhASPlrabhOSSDvb/0FrAScu
         duou4v0gPf+YqHPzOIvsNB06DQ7lDcFAfTJdIaJ7SXwlMcYPj2kNSfTWzAkel8h4XjzN
         pY6qLJ4OXVSqmmqv5E+muqptkBt6e/hb3XiSPqI8+Lr8nHysn4SnOlLSHCIdf7GDsBwd
         ZmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771479491; x=1772084291;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bx9vef0HkXb6vOZHSEYOmtJceWicO+PSjEh/i3J41t0=;
        b=e7Ba7/YakzegEt+4wTHpnL0Atz9t89PFwHkOSX3LqJiNlsU5Sacpbw07zLW7up6m6f
         jF5KXLQwWbifsmTtZOZmAdWkeqD45XrRuimr3tRROZf1ObjK9YLASsxnqxAfYU8WcWjn
         Dijl/+f24G/758gLTBZWhr1/cVESbaOVEqSfZOxvWZKT2DajJhlBHoGcvRgHdUzqvYUn
         QALclYcq8qdRxun8jobKRfTE8Z/Tr+tDVQ8yFLz1Nr4fTWkXWl3ygVRxenxjrKultEq4
         bdW4Mle7mUlyn26v/bfqpygZ+XhE3zVKA9EJ98Ad4R6tGsNVteGnGvQHi8uzPzqSw4Ly
         b6NQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+DesnzgukjRYgw/WbzTWwpDSWq/h/yD2Sa18MRn+rvvFHhCBiVcFp/JvNlIgx4YCU6XQKx5zuM0ur@vger.kernel.org
X-Gm-Message-State: AOJu0YwOmzfF32aKuFesdFaTLgPDDyObSz4g0vE8pV/an5AY6HA1EJIY
	6/VcT1Vts8zsdQl3M14W51LGv2adKpCjTjQEEBjozpOailT1YxCIsyPYNL5XMEtwFS8vi8WrsFC
	Dj8Zqw6j7szDmMbc+Ic5M5Z/wtfo5JS6lkmqI0Oy28JXsimrGVWIzfH8frgG/4BXY+U8uhtTh
X-Gm-Gg: AZuq6aIO9zU+2yMOsi1wP9zFhSPJUwhTbJMfqKDaDmshdhdrgs/r1T8FLIBgC06CUNS
	lFRw2P1fUNX09mamiXv3DsZ211TebJY6iizxAp7jr7TFylIwEJBzHARjDJd03IkWxdW68ReK4qb
	bpzDoGFqKXjSda7i1+Z5cw4o+xmdDMZ4+3N08nFkbJGsIu415+4pnCrQQUXpVnNPc/goOYAYIg6
	qABiTGCJnST+HH+jil9NrZysznw0ErzewPsKQ63ryPx1bjhSxwNq0qupk4+c5YkvAdXEkpBzpz5
	fUE/g1ONlYn0JJH6bBN/6x3OZz/JlzNpGvV2r5e411S/5At1geAcVCwVgUZVNO18giX3W28DsOc
	M6acVubZs5WDjLR4xKUoUpDxXUQss5kj7PyTUtIV7ZkCCXSHp+A==
X-Received: by 2002:a05:6a00:7586:b0:821:70e7:74ca with SMTP id d2e1a72fcca58-824c965d569mr15419702b3a.70.1771479490931;
        Wed, 18 Feb 2026 21:38:10 -0800 (PST)
X-Received: by 2002:a05:6a00:7586:b0:821:70e7:74ca with SMTP id d2e1a72fcca58-824c965d569mr15419671b3a.70.1771479490448;
        Wed, 18 Feb 2026 21:38:10 -0800 (PST)
Received: from [10.217.222.63] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a409e6sm18351122b3a.18.2026.02.18.21.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 21:38:10 -0800 (PST)
Subject: Re: [PATCH v4 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
References: <20260217052526.2335759-1-neeraj.soni@oss.qualcomm.com>
 <20260217052526.2335759-2-neeraj.soni@oss.qualcomm.com>
 <20260217-berserk-puma-of-focus-bcbe82@quoll>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <e3ac0681-605d-c1df-e4f0-78a2c142fa66@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 11:08:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260217-berserk-puma-of-focus-bcbe82@quoll>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WZO-wmYc01tWIqUV2WNYP9hYK7aU6yQw
X-Proofpoint-ORIG-GUID: WZO-wmYc01tWIqUV2WNYP9hYK7aU6yQw
X-Authority-Analysis: v=2.4 cv=A6hh/qWG c=1 sm=1 tr=0 ts=6996a1c4 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=P-IC7800AAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=7CWuv0upaalPmBxTJ3QA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=d3PnA9EDa4IxuAV0gXij:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA0OCBTYWx0ZWRfX/k+BlAAyAqHR
 w4OuRcz6KR+gzFvzWgE1SgsdhwC6EVLA4m13XKoQuLXta5Bvyk1n7JzyQAzBLugElhlmAesF7Jg
 Glun03lLBqvXZsZRRY+/sdSFKIhL9GBYUkfz6oc239CKw18ZV8jjw19SbvDLTxlKGkaTb8rfCoc
 RsEWJfIfsbfJ7qOvZYy3+h+EQHwpS0+DTkpgd7lGMTcmHPZu5n4aoX30jdJ54dEBzBFtvS+fyw/
 SAuZiBwYUJerRkXCgKZRC3BRGZ6l9ZF38KWVqV9cvQ6rkeKYIxZThgMZKdMSyUuK5nquXG33AXu
 I0J9JK+MdpwHknANWDy55ygbiWs2eUJf3Ti7snNJbPZngqGMoriV5fMJWXL0xBPpLYqoCnkuOF2
 xvkt+rZcWxZa0i/U81KjZKLNiq1cZE6XPGNjDyCLeHloZa09CtWvnK2W1mX5shxwF5b+IzIejTo
 IPJEL/m+RYoOBjTkH+g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_01,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0
 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190048
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266561-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1260315C249
X-Rspamd-Action: no action



On 2/18/2026 1:46 AM, Krzysztof Kozlowski wrote:
> On Tue, Feb 17, 2026 at 10:55:24AM +0530, Neeraj Soni wrote:
>> Starting with sc7280(kodiak), the ICE will have its own device-tree node.
>> So add the qcom,ice property to reference it.
>>
>> To avoid double-modeling, when qcom,ice is present, disallow an embedded ICE
> 
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> 
Ack. Will fix in next patch.

>> register region in the SDHCI node. Older SoCs without ICE remain valid as
>> no additional requirement is imposed.
>>
>> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>> Co-developed-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
>> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
>> Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
>>
>> ---
>>
>> Some initial work is done by Abel here:
>> https://lore.kernel.org/all/ba3da82d-999b-b040-5230-36e60293e0fd@linaro.org/
>> and by Abhinaba here:
>> https://lore.kernel.org/all/20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-1-2a34d8d03c72@oss.qualcomm.com/
>>
>> This patch adds the purpose and usage for phandle in the description and encodes
>> it properly in the schema.
>> ---
>>  .../devicetree/bindings/mmc/sdhci-msm.yaml        | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> index 938be8228d66..9b902e0c8d09 100644
>> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> @@ -140,6 +140,11 @@ properties:
>>      $ref: /schemas/types.yaml#/definitions/uint32
>>      description: platform specific settings for DLL_CONFIG reg.
>>  
>> +  qcom,ice:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      phandle to the Inline Crypto Engine (ICE) hardware block for this controller.
> 
> 
> Srsly, I asked once and not much improved. What is explicitly written in
> coding style which I asked you twice to read?
>
I have attempted to modifiy it as per the comment you gave in v3 here:
https://lore.kernel.org/all/b6e510da-b369-4c43-b9a1-455478af4948@kernel.org/

I will rephrase it to explain the usage better in next patch.

> And how long is this line? Why such trivialities cannot be fixed and I
> need to remind this every time?
> 
It is 83 character long but i understand now you expect it to be wrapped 
at 75 as per kernel coding style. I missed it and stuck to the limit
dt_binding_check tool allowed. Will fix in next patch.

>> +
>>    iommus:
>>      minItems: 1
>>      maxItems: 8
>> @@ -223,6 +228,16 @@ allOf:
>>              - const: cqhci
>>              - const: ice
>>  
>> +  - if:
>> +      required:
>> +        - qcom,ice
>> +    then:
>> +      properties:
>> +        reg-names:
>> +          not:
>> +            contains:
>> +              const: ice
> 
> And reg is still 4? This is not correct syntax. You need to define
> proper and final constraints per each device. I would write example, but
> why... more things you could just ignore.
>
I had included changes for reg in v3:
https://lore.kernel.org/all/20260206112053.3287756-2-neeraj.soni@oss.qualcomm.com/

but those were not reviewed so i assume them to be incorrect and dropped it.
Will fix this in next patch and post.

 
> Best regards,
> Krzysztof
> 
Regards,
Neeraj

