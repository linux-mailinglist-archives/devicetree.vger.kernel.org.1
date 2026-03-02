Return-Path: <devicetree+bounces-270046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHdhOtqbpWmfEwYAu9opvQ
	(envelope-from <devicetree+bounces-270046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:16:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2771DA868
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:16:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6EBF2308752A
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747AF3FD12D;
	Mon,  2 Mar 2026 14:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iJv6jhto";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dfPL/CjD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E926BC8EB
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 14:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772460668; cv=none; b=XPptv2EAcNHcW8XTzBWEv7PDnmO3v30JMKIl0slptk6KWfhXHtYRe/NPS875sQrt6X9p19Snqlv9AjmsZUbvPTfmH7P7q4VDaOmNcpgMKwJiCNSfzb2I6xEJpLonD73L7LF5+jVqSNwUa5MFByu4ajaYaSMqhoEfuJJF81B1y4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772460668; c=relaxed/simple;
	bh=bxV+F/zGqkcxvFQ1Zai0L5atM/NN7lL2m3Xfaqfosk4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kex48foKd0UoDOH8khmHnn4YRvADoBBoesAixb6t7tEZI0PYQEN29lKSI3jOk3+MDmSFyB/Kb/H/Y/1glmp1gkLYKayynEKs+APhSTJF0Pgjj0HjhmUoQrde6VU6B/eK7xwTUjeOCZGKbVgfzjYibpN/78Py7arqGhjgUqbptHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iJv6jhto; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dfPL/CjD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62294knW1291354
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 14:11:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x1SdIm1s2LkjLOru11jbZTK3zSn2Kz9/1xMqlK354RM=; b=iJv6jhtoI5mOfkOU
	u4q6vYxrLBXia8rQ7XbDMYn3XhZJl7GRlI+0omWv5D0MoZZtZrf1SmDPJryAe62z
	+CR2xV+KSIW948M/Zlu1+TEC/IyqW4ghebcudvSU4aSbFEEL3YGyh6wh2cXsVbg/
	fg+9ldp+njCRgpZ8da0inTwcl5MZqXBzUbfIOWjWXNCchjxJT0zXNPDyYSv0xfet
	tifaUiafiW3YdvFJOGCVYsKhM3KG6tuKnI3x9FtCyCwPa7XQZIRXoTGq1MeUUR73
	NvBeWgNjizATycKZu42feXpVpF+U3v4mu8zK8OHP6G79KLnts/Tbi5CU06EnYpYc
	tZd/qQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7ku0y99-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 14:11:05 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ff096cbec1so801080137.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 06:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772460665; x=1773065465; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x1SdIm1s2LkjLOru11jbZTK3zSn2Kz9/1xMqlK354RM=;
        b=dfPL/CjD976y3Vx+oOGVSMeI1v4QYBpRk59wo9kesbRtqZYAh3e7w+rQxv6Y9+l92q
         Gfti8dVWkLiTuZM7TMKnskp1iaNJFmZeFODPw4N50jP/aNOYcAQSDwal0o9jQ07XWxPC
         dm/VNOW8MAW4O/s5yQEuZsbEVQX5HNIPjzeG1oXS3RT78k4CwJqarXzsUTqbSMxjgkoz
         yZcsJHSq9r6LUU49NnqqYUsHAnoHPkoW3+07PBObFoJyEl5eghF7DpPduaIIMy8YX7XU
         OVwnSY5COTc6eG8eeTYkBKsCjT+1HDyJGPEBMiMJvitUEvwZ4MzeozTRFZKJWCneVjIw
         n4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772460665; x=1773065465;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x1SdIm1s2LkjLOru11jbZTK3zSn2Kz9/1xMqlK354RM=;
        b=SYPPtYE7LAhytZ6lzH4vWrBFuk7NAlbgB5iZ+3T90bNSA0H3YG0FMVT+Qq4Cdyh3LR
         lWTUGRfCdlRgXVCqSke32PSMxwRMLSBHmOaY4qTOq7DXW7Obl1iV11x6hxJ2/BJ9blAE
         XbWZPAOvyXJutccMvkEGDcVMdobsACxkOvc7rlXxah3ld9wG4OWsZtROVdCpI04nX0sx
         hxm6aPJ/l1pAl4PPDkkp8wo5gRX1RabVutOjLK6wX4urUpDtPraKDK/2D0+jLvy5sfVb
         vuq37tc1sAKPj8kzkw/mz51kbSRmR2+QVRU2krJM7n7dpKg/XsypwPgUDrbLt7u7SqNC
         jrfg==
X-Forwarded-Encrypted: i=1; AJvYcCUTE/nAf5PAASySb7tRvmEzCoIs0a+Z95+P+/+T7dt5FYc1hFoL9e4RGnTDeb4S+RdECO357GBwRdP7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1TGliasQwYiD+0W1n2z4g1GPKQ4+IutO96qc81ui9Gly8vXil
	eogWrc+2UPWjlcJ6DXu+TzBKwGHj5IkTzifZAKOEUVFIpih+Iz6/54LZ2asuAtZiSiIeQXirouX
	z1dk7qWhJ+Z30V7dIJlkpGwW45XBnqdzfKxEPNIvkaUGiEknxc/DaBpWsSE2UVMoF
X-Gm-Gg: ATEYQzxBWPpsq2PFG8Y5zdsD4W1h1nlc4Aodac4v0YWQ5EQFq7Me/Qi0KVaRIYifliG
	xVk+WiXd820zYt7/+xssHjN9RoWcBHL69MqMwihJ94ft1/7njbBpr4MM4nrnuvXT7Kq3jHC1Ewy
	LOSc6fzzecAPt+bYpUPpYa/vuwBlVK47tsfxUUqSv7lB/EB0Z6eFURCtAkI6Xuy5Z4wmro05hsr
	9CCNGqhUwYy7rkkjAiEIFsF7hGflcIvQWtgm8m6I+hUyjZudk7fb1RU2nR/zVorUuzNzMEwuKSQ
	IVKcVLrgreWYTF2wposkf6vRndtoTTVvTR1kuEAs8HdN5aiOMkTSvoKZ66gl95YbRX4TlrJBW6p
	U1TKiaovbjIYc4EsUI51fVIjZWOtwWGmEZ+C8xQm9+vW7Z6WmJEv6mIjS5WPYIp9RhmjXwqBqZX
	f1tGQ=
X-Received: by 2002:a05:6102:d86:b0:5f5:3a57:1e88 with SMTP id ada2fe7eead31-5ff32536282mr2476559137.6.1772460665242;
        Mon, 02 Mar 2026 06:11:05 -0800 (PST)
X-Received: by 2002:a05:6102:d86:b0:5f5:3a57:1e88 with SMTP id ada2fe7eead31-5ff32536282mr2476544137.6.1772460664727;
        Mon, 02 Mar 2026 06:11:04 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2f4b48bsm26771231fa.9.2026.03.02.06.11.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 06:11:03 -0800 (PST)
Message-ID: <d3de0b25-861a-4261-8d9b-a3785187bfdb@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 15:10:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: sram: Describe the IMEM present in
 Qualcomm IPQ SoCs
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
 <20260228-imem-v3-1-20fbcc1a9404@oss.qualcomm.com>
 <20260301-secret-exotic-nightingale-80f55c@quoll>
 <4cf9c98e-767c-44d3-9e71-bcc790e83997@oss.qualcomm.com>
 <edffecfc-ea3a-4c1e-9e72-58c7c134248e@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <edffecfc-ea3a-4c1e-9e72-58c7c134248e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=V4NwEOni c=1 sm=1 tr=0 ts=69a59a79 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=AMyczQPEon3cgf3ZdCQA:9 a=QEXdDO2ut3YA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-GUID: LLikvX_7J9AtglMiRb-Np_aMZTEUXn9h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExOSBTYWx0ZWRfX/1dcegcKD8F0
 kX3Q/maC1Vz6c2DmgqK75kXA830ncA+VcPy7yLLXpPTkkl0tQgUlqMs0BO+P3Hn3Samw2zBODFB
 mm4ng3eTm6B/PuQQWEg4c7TRIluQ97SSHfGr18QJ4CcQrBJTkTTPI3YHPhjOb6fFaY4B9zi32YH
 RCnCMt0DeetywQCawAPzVPWBWEp4hMg0/8QTnayK0E/5PMA6Mtba2kjC0FKtm3oOmYzzaMNDKQe
 A4rydPc/EXH//W5YkS6fy/eLl82lDmHwAhut3FfkJ7wXzUCrjXIwWv9hFrXsvC08QO6ylgtgH3v
 LNKGIV3S4qepLWO8EIip/4+5sQMUa/20ZcA1OwCWqVOMCFcghmbuIdsxJY+0Y4h+0+27r7PItZT
 vRPrsFqHdddjqu0r63GKNAKGChq5IDbuAc6aXKbIDDSF5kBDGPKxyqJkAWjd2q9Paxh0wGe2Y3b
 zBewGhdwsAulBkZky1A==
X-Proofpoint-ORIG-GUID: LLikvX_7J9AtglMiRb-Np_aMZTEUXn9h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020119
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270046-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5E2771DA868
X-Rspamd-Action: no action

On 3/2/26 2:56 PM, Krzysztof Kozlowski wrote:
> On 02/03/2026 14:52, Konrad Dybcio wrote:
>> On 3/1/26 12:27 PM, Krzysztof Kozlowski wrote:
>>> On Sat, Feb 28, 2026 at 06:38:00PM +0530, Kathiravan Thirumoorthy wrote:
>>>> Qualcomm IPQ SoCs also have the IMEM(On-chip SRAM) region and used for
>>>> the various debugging purposes like storing system restart reason and
>>>
>>> This binding does not allow restart reason. pil-reloc-info was kind of
>>> allowed, but now I think this might have been a mistake because that
>>> bindings were posted incomplete.
>>
>> The sram.yaml binding allows any arbitrrary subnode (sort of like nvmem),
> 
> Not, true, look at the compatible. It requires a specific type of nodes.

Right, I didn't scroll far enough!

>> so long as the name includes 'smem'
> 
> Also not accurate - "sram" is not the reboot reason, which has node name
> called "reboot-mode".

What I was referring to is:

patternProperties:
  "^([a-z0-9]*-)?sram(-section)?@[a-f0-9]+$":

where the 'sram' (not 'smem' as I typo'd above) is obligatory

Konrad

