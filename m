Return-Path: <devicetree+bounces-266442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CisIvO/lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:34:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3674C156BC5
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BDB4303C2B8
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7A593271E4;
	Wed, 18 Feb 2026 13:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K9RUELf5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mlam3o4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6015D320A23
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421567; cv=none; b=dVL13SNmlz0h1Vq0XpT27ZzpF+GDm4aUWWcNCQHWGrlQosEXGmGTeHyV8LrWz8/w98I4P79hJ1gH9CRSXjYzlknDyPoD7xeVL//u1GHx16yWJF5hkP+cLx63lCJG4VVrYZuEbQfl7TgBfnb0SL+mHxyQiuw82eO8nXmqfa6wQSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421567; c=relaxed/simple;
	bh=QedJur50/g6zcxoZnzhwRn25RyISmPBtgycbNB4XN0s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mAZ2PBOBrTcTrhNMyzTOfQLK/Rct4LYm3V5J/PbxaJgSbRtd6ulTO2jXofQWXtnWZhDhYNoe4RikBdS6gsJfkzBtRBEI4VmlGtmJqiAzyaVxIbLoe5m8hNJ5Gu+XgcBTEv6otZtKYQu2O3nlnOBxU7R5574AyBW/b02eMDh4rJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K9RUELf5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mlam3o4k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IBqR7O4060512
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:32:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BiLp20Q3kkEwTZ8fNKmZyNSU4zyYxn1pttaJh2zFj0w=; b=K9RUELf5+j59icvH
	CCmI2iU1nfwDZIJnFK+IzPEpzotxDD4PbnH0kq0lfD4TY8Fol6HhHO2aTuKfWbIV
	vHK6Hg6JoX5mNqsv2D5BZQ5DzvtJ6w7mESqceeSo6gCBIuFUr7iiJNMl5rZ+jKN5
	/3uy05nIcvaqANZD+A0BUz67ZACdiv/+ormMmT/fgKtmW33Q6imRkUcF7dPsBFaZ
	uN+81kWFLkYs6jFyI6uWXylInqSaQIcLa1lOBRP692NX9PlHHE6MgtWfj6VvFonm
	YyCnX/YzjtS5ZSGNsgRMMc5ozbF7gRmsNkoFBPSafF0r854ypGER4Fra12vs2x2j
	1PZOZQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd1qx1v24-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:32:45 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89547ddf32bso41125456d6.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 05:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771421564; x=1772026364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BiLp20Q3kkEwTZ8fNKmZyNSU4zyYxn1pttaJh2zFj0w=;
        b=Mlam3o4kozt8aCKuNjGR4GXAYZlhX3UWRxgAcEKhFQJ9nH6VVLrkLKoD/nw4Gh1+L2
         ESYy1xer4ng7RrlsR43bkvLBR/O+XvEH4IW7W2tv0HO2duLz377VCiTpIs4TUE0MPWEg
         hyNgZ3zrffjJ75L4KLsYrtK6LlpVARf3Qiu72TI5P6maivc25YmPmXkKJofkOY1vrN3Q
         cF+9qoT0dwDH19PLO8C7P3XCOwI45aquI2z1Njitf86E6fHIy+tlz9vKZYE1Fxt8pmSI
         R+QCKfvqi3uL97/+IOv+Ua8jlTjJkWETHu18gwyn0+rLFsJALNZc2XV6FH5tdFKj+Lgq
         uvRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771421564; x=1772026364;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BiLp20Q3kkEwTZ8fNKmZyNSU4zyYxn1pttaJh2zFj0w=;
        b=w7K+zTmcYxRFeMCdwObDN6q5UwxCWuOZ02zuKFRQ/1yFBfijT/pf+shrKOCR23vDtH
         9HRYc1zKjOv565oPZObSWuy7EEB1o+Gkbs2eKJ8vZGgzzCL8O3nXMssklR/GHb6SqdLU
         4d7cqpwfZX9AIZISfkKLFUIQuiAuf2jKSxI2DAkGnynFtZ3k/9DE4MbRJnLD3SAk8v8x
         rI16+VG4jKjuKMx5jEuIV4/QZkTd7L/CUWJtNptnvkYg/RsRTR0B4EIdwFSFZzXTAUUI
         3x0aB8hMrmzmoEDCuxGarH8sBtzfnrS70v5ZWVlGpjMrRkkfyasAuA8rsJKt3vY8WJGf
         TNIA==
X-Forwarded-Encrypted: i=1; AJvYcCUDCR5GNdbhcAIVAMEidQIwXnFpBB0OYxiyg+vbFmY+LasU0XLW6FeyCY1aFMOcCt92WYLVeDfxR9Wf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2NOOXQP/RM9/Sy2WPEr3ZhIEXPkAzkprxFypLJ9z4xsJsDm8w
	V+7hyrO/s2ASXpiJWoMcZn22/4NKrm8y/Ku9uVnEKaZKChWXe0HolycBZaNXXpLivHXcTXeKrt0
	rZeDF41smPE7ct3CtdTKrZoCy+JzdpiXhT6ACf9e6Qg/Pe7s5Kqx9aK5Y+eD5uN52
X-Gm-Gg: AZuq6aJ15lzF3U2qsc+HpUGz2VLZp4hb/auQsHAO3kWyhmSFGBZIfvul897ekNF2H/D
	jnMLUffbY63aqdANVH6q44yzmRv71FFdpYrRO5LixW6zMoOWaLuYMzIEIi5RiTPFh9DdrsK0esO
	lAHLhtwArYLKh7Ltr08RLEt4tEx/ySC4qLImerqpx1wxWXAqohcqmFoVsvrtQtJgJVgr1GPauy3
	YTH1Wkz20lP09ZuJ+W+wQkOWiasrnkxWzR3XSsEwgT3/n6NXnRlr9FUfRrsThLM0uZ7poBWnZPB
	38CkedqxiGfpNAKvu4TQJ+N6t4lLLmbpN0FzRbvG/4dPPTZVnkozYY0+pqFWbJuDU3A4re2fWdr
	3y7xmptMxPDP1u/lR8bUgODK3gsXOgfg9R40yysrbhN5aAK3QYZPcX1xYaGdqAOSG4TBwghH+c8
	sX5tyoYjOPU6ijoA==
X-Received: by 2002:a05:6214:4f05:b0:897:1d50:2336 with SMTP id 6a1803df08f44-897347ccd64mr191548886d6.6.1771421564482;
        Wed, 18 Feb 2026 05:32:44 -0800 (PST)
X-Received: by 2002:a05:6214:4f05:b0:897:1d50:2336 with SMTP id 6a1803df08f44-897347ccd64mr191548556d6.6.1771421564012;
        Wed, 18 Feb 2026 05:32:44 -0800 (PST)
Received: from [192.168.0.242] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc73f102dsm446535266b.26.2026.02.18.05.32.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 05:32:43 -0800 (PST)
Message-ID: <ac568d38-adae-4fb6-8f12-1d3593d9843b@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 14:32:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 1/3] dt-bindings: sram: qcom,imem: Allow
 modem-tables subnode
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>,
        Marijn Suijten
 <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20260217-topic-ipa_imem-v3-0-d6d8ed1dfb67@oss.qualcomm.com>
 <20260217-topic-ipa_imem-v3-1-d6d8ed1dfb67@oss.qualcomm.com>
 <20260217-godlike-silent-owl-0a8487@quoll>
 <36f0a71c-a8b7-4aaa-81c3-1945b268c57f@oss.qualcomm.com>
 <0bfcb292-4e49-4047-b631-dd3029b43f1c@kernel.org>
 <193d236b-864b-45bd-b0a9-6efbdccf6db9@oss.qualcomm.com>
 <9bfb4ef0-49a1-4127-aad4-2ba1b9dd8e95@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9bfb4ef0-49a1-4127-aad4-2ba1b9dd8e95@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vq5kKVb5VvrV2VDOHsOTlhj55j07uN0J
X-Authority-Analysis: v=2.4 cv=R7oO2NRX c=1 sm=1 tr=0 ts=6995bf7d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=ZflIhQ0aK2eKklpQHNMA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDExNSBTYWx0ZWRfX2rVAk5gJDEgV
 vsQcl0mGbE90tXuqd9EXzbhN4A69L/vqbRpVE9qkkq88IoBBSl57n2jae1YKNgph2FzIHPh+ExB
 SSfRyd6O7doYvl0tXp8DLlimEQXGh8UA/3/lYAxrhTZt7jz3o/IxO76M36ZhAVQ9+/XCc2iTOub
 09VKWDFfv7y2HUxKJjU3Rkl1lQbcsitnWHWHokCPBxhPOp6w5ZDAQtyEKQ6GEZZxhSu2AzinAt8
 lWVFWSGNTsMsqcGzLjP7T/1i178le2wGuuMZg7xngwMbNDDK/Y4DAlH2stk2wNMwJy1RcXDu0+y
 OYERDtpm546gjFgF/x2ukhITgWng5rBZmfdfom3UV0bw6L3LsOuOXwZx3tQv/g7yAU9XTr4WRQL
 OABF2occBRj3H9krPUQnTAs530D3c11FLoPgrQReWTTP5autxxU21gf1+p2dfcrbrRnwiwKc5RE
 IGVOD4bqOqB9Iev/RSg==
X-Proofpoint-ORIG-GUID: vq5kKVb5VvrV2VDOHsOTlhj55j07uN0J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180115
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266442-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.4.210:email,qualcomm.com:email,qualcomm.com:dkim,foobar:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3674C156BC5
X-Rspamd-Action: no action



On 18-Feb-26 14:21, Krzysztof Kozlowski wrote:
> On 18/02/2026 13:26, Konrad Dybcio wrote:
>>
>>
>> On 18-Feb-26 12:56, Krzysztof Kozlowski wrote:
>>> On 18/02/2026 12:05, Konrad Dybcio wrote:
>>>> On 2/17/26 9:25 PM, Krzysztof Kozlowski wrote:
>>>>> On Tue, Feb 17, 2026 at 02:30:31PM +0100, Konrad Dybcio wrote:
>>>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>
>>>>>> The IP Accelerator hardware/firmware owns a sizeable region within the
>>>>>> IMEM, named 'modem-tables', containing various packet processing
>>>>>> configuration data.
>>>>>>
>>>>>> It's not actually accessed by the OS, although we have to IOMMU-map it
>>>>>> with the IPA device, so that presumably the firmware can act upon it.
>>>>>>
>>>>>> Allow it as a subnode of IMEM.
>>>>>
>>>>> You do not have compatible, so rely on the node name as ABI, which is
>>>>> fine in general but... I do not see usage of it in the driver. Why do
>>>>> you need to define modem-tables child then?
>>>>
>>>> I don't really *need* the node name to be an ABI. However, the current
>>>> binding for IMEM only allows a named "pil-reloc@.." subnode (which is
>>>> consumed via of_find_compatible_node() in the remoteproc subsystem) so I
>>>> figured the intention was to keep the list of allowed subnodes strictly
>>>> moderated
>>>>
>>>> If you'd prefer a blanket pattern declaration with say '^[a-z]@[0-9a-z]+$'
>>>> with just a reg requirement inside, I'm fine with that too
>>>
>>> No, the problem is that you do not use the ABI here at all. Neither
>>> would you use the blanket pattern, so my question stays: why adding ABI
>>> which is not used?
>>
>> The subnode I'm trying to introduce is going to be consumed (via a
>> phandle reference) from the IPA node, as done by the remaining 2
>> patches in this series.
> 
> And that's the problem - I do not see consuming child. I see
> of_parse_phandle to sram node, not the child.

Ah, I just realized this series has no DT examples..

The property I proposed to add into the IPA node&code is indeed
named 'sram', but my intention is to pass a phandle to the *child*
(similarly like we pass a phandle to the child of a nvmem provider
rather than to the provider device itself)

i.e. the design I envisioned is:

imem@foo {
	...

	ipa_modem_tables: modem-tables@1234 {
		reg = <0x1234 0x1234>;
	};
};

...

ipa@foobar {
	...

	sram = <&ipa_modem_tables>;
}

Konrad

