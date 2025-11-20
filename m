Return-Path: <devicetree+bounces-240629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2DEC7392E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:55:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 431F94E66DA
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 036AB32F774;
	Thu, 20 Nov 2025 10:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MPO2CJC2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D6wpeDri"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F33232F756
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763636103; cv=none; b=rNfsLoPY6n4DiT2QkjGgNUOejOM9hh99+ACeYnR+LtmbQR+MZgxF087538PHFy/zA6F6uEAvNkhOMedXPQ7GyYBAxrqzlOUOxRppWZJPx7hrGjpArMFKFYytKCCreyPBXNd0DyMhK/OpmIWBwPZyTQA9hRjNb7wpOOiG8DuqFXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763636103; c=relaxed/simple;
	bh=0UT40MgA884Gk4KomG+NtJjgPjNlnJQIeyVQ4+R9+wo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pdyqJjHUEFRqwijvAiZocr29n5YF3C6zAP6xpghjqi3m1PiLv/L7R9Etme5mJj6mjOGdQ/mHh0bjZwSs4fT9B7euOVZIG6YhWs0ZV0wAiVswHJYWqe/yT+PNUbn2Czw6cF2K2Iwsahsx2vWZEQHzcbYLNxFZgD80nC3Q86xTIzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MPO2CJC2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D6wpeDri; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK56Tqc4026384
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:55:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0UT40MgA884Gk4KomG+NtJjgPjNlnJQIeyVQ4+R9+wo=; b=MPO2CJC2yxmS/JZZ
	3gSR+9nSlLG7MMb288jRqb+4ZlIPWZwGb8pYk1FnYHUTbT9109J0tZ5GZcODLS4V
	A5P5zbO2Fe9WO5nU4nA3vH02E6/Ys9JQY3qNdrdIQYa1hdirZICKwmf7Co4F76iu
	vOuHw79JGYqwGyae3f8BCscoz2pBMOx8GKJpkD5wtKwNQ1kDMFGIr7z+8PKqcGyY
	KofP2cP9a6LGOwHNctFqre6N/uLN9blUH/l0sWQjsILOD2745jXIGQUCoUdGN3bH
	JMN6GblzmATMB2kKEPyFzt2KeM2ipHIlFXOWDr4PIWIoa+KYrvp2gp5fVwJUo8gm
	7Pahzg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahvj3h20a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:55:01 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297fbfb4e53so14059905ad.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 02:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763636100; x=1764240900; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0UT40MgA884Gk4KomG+NtJjgPjNlnJQIeyVQ4+R9+wo=;
        b=D6wpeDriVAMCgtXZR8aBOkWBI+LBRCIwkatHaAfSOd3HC5+fHsYt38nLekZE6v2Rfs
         c7GK6d/bFOrp/hDBMIkyO3euxsCLWIKdeNAjYJ3mCKMHGYomavLhMzr65l8ycH88Y0b8
         Le7pGbcZFqCkBXuYgONj0i/W/72jH/CycMqlvAnd/t1qbhdsph5NhL5ctJkdDK94iJ2i
         iwsdJqJi/CoP0FscQi9xp2c79wl4VnLU/rnOP4nVd+pN1tKWSGlVl9tS2u8va3WYXsXa
         L0kK1qQIPO8ly3q86U1Q1iGF8jlcLx/VHGCZBWV8eCYQx4hltgU2w3vCmeby2jPJsBe0
         1RCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763636100; x=1764240900;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0UT40MgA884Gk4KomG+NtJjgPjNlnJQIeyVQ4+R9+wo=;
        b=nPLLOhr3mlMCzUFgtXsBBugezuPctkxYyyPtBFfaII+igcFo2ko0c6KuPfnMyDdAhS
         wsOrS9D50AH4iqMbbOyWUf2UZd+/ZbZg57YHpDrtUi4+np6W2I3G2VU3szY99mFrT7i0
         4PeFztXA0f73tDXAK9bkt0QVBlgax532y6BPN1ScCtFOC5fa/sfbXiD9LTa4gdZGfBMI
         InDOVI5VU66mOm7gwhx4HWOH7hODpA+mFW2MjZDpX6AKAoBKOIo9FQ1GnQP4JNMKj78h
         1FTN8DxTdcxuRXqyRVtr4zKQ2YY3Ef0Fq1YKSPfKZHbTx3IoOneEvOua85ujtOnvOKrk
         YGYw==
X-Forwarded-Encrypted: i=1; AJvYcCVdTiw/3+RliHBMn2COIwOf1HqKK7IjKBkzbGHnS+ptgRVSkCdMpJXkeQ7g4Ky8OFWvvwoxdWjt/pnp@vger.kernel.org
X-Gm-Message-State: AOJu0YyOtawl7idQwIe7rpzNXDQlWdkGcBYu/pOQfz74doRoUIG1unlr
	J8/TNLsRjg4Av4rARQWRD9ZQJFZrPv9FVEa8GI5xHfpk4KCYY3XQDpufD6t2bmlPglScv6rR1WR
	EG7f8ffZ8KcMXFJ+1lBVd2xqBOX/AOwDaAdE6QX6U6nAJbbmgIn2HKzdvp75D4RxJ
X-Gm-Gg: ASbGncvEEOpK8RyHXrnifgW55U7pBtqwNKC5ZXIGn0EwbkL1oN9PmUR9cyzyzPhrWCs
	cpOoK0fC1FR6x+gyAQCdG6r5Pn1xb8fdwKMvYooeoSgWoOQk9qU0NH5t4jHUv4yo+R34na/A5BP
	jt6M05yNyPIqQcPzBZTra2yyZC8ge1r7TS3F8cDkodEfBE1zNXrbqZBJoOZmcJcOmifmLeBoDTI
	gVrUmpJZkWw380WcLs6sbxIMlZXvwz9+lwN2Zp15dWz6JvqTFNv2WVjS7Kq+96hzN3woIcoZ+zN
	YNdtWWUZB/YP5wTTPAvWGlekjppFPQWItZO11roWd0VCPtgZaWi/BNgJmFBojoVlYpURqBYkKuh
	5S0G6Ex0i68rHbwBOYw+UdADpRmQXHH5INGJfMOO5
X-Received: by 2002:a17:903:2384:b0:297:c058:b69d with SMTP id d9443c01a7336-29b5b0d5c26mr34817755ad.34.1763636100058;
        Thu, 20 Nov 2025 02:55:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHm9A3fMX5R7oV6gPPQuT2vhD2HFAK2jhTDDsGcWxBtkwzU1nkzrhKHJtQcwDEhFY5BV9ANLg==
X-Received: by 2002:a17:903:2384:b0:297:c058:b69d with SMTP id d9443c01a7336-29b5b0d5c26mr34817465ad.34.1763636099509;
        Thu, 20 Nov 2025 02:54:59 -0800 (PST)
Received: from [10.206.107.125] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b272cd8sm22875335ad.73.2025.11.20.02.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 02:54:59 -0800 (PST)
Message-ID: <0b06f744-b695-43d9-8da3-4424e2b53a5e@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 16:24:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Nickolay Goppen <setotau@mainlining.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, Chenna Kesava Raju <chennak@qti.qualcomm.com>,
        Bharath Kumar <bkumar@qti.qualcomm.com>
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
 <07066c46-4121-48da-846a-3a180d245589@oss.qualcomm.com>
 <47b40a91-8365-4431-9fd9-1e48fad2a4e1@mainlining.org>
 <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
 <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
 <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
 <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
 <80836b8f-16a8-4520-ad11-5ca0abb3403e@oss.qualcomm.com>
 <99c22e73-797c-4a30-92ba-bc3bd8cf70f0@oss.qualcomm.com>
 <eddc16cb-d951-401c-8fb8-fccfcf600143@mainlining.org>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <eddc16cb-d951-401c-8fb8-fccfcf600143@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=J8WnLQnS c=1 sm=1 tr=0 ts=691ef385 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=OuZLqq7tAAAA:8
 a=1HiU9BvADPRXI8_Am3AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: 63Pbmw0C53NS2NCnzsbXVbsinAsLeg7q
X-Proofpoint-ORIG-GUID: 63Pbmw0C53NS2NCnzsbXVbsinAsLeg7q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA2NyBTYWx0ZWRfX3U7gh/iZqLbD
 6dekXi2tgR5VXyYvkFa7jsKVdcHQZl0XUvZEdAgApmvQYaeusTyatnZIv5YZo26ohE7JHktg339
 eo6o1s3TgFS0FDtIaNMDjykvnaMHlgU92DXziLfw4WS7ZbaaYxixqcl6UaV4GdTDuGE8N4UjuCz
 8L3j5F5smEp/+AizfTSzilxR1Zr4xI35ztuZ+ciYUA41mqKsrQUJQGwHSyNmgGJLGLAor0g3G8M
 cXcJOthba/kxJHR1h0JW9N7vA2Nwx2mQzclQXRVh7sgzJjYwph7ZMbj4QE8UYw132MpeRAsAbN2
 3nGr+AAE8PCPn4LhKlAidjjTfe69KNwMGjtbPWZ+nCBFcTJ2MQDBFyMfc7yhEHWtYDxtD8tHDW7
 2p7qyDHQ8bsPQwSV2MUwTL3pwn2Z6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_04,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200067



On 11/20/2025 1:27 PM, Nickolay Goppen wrote:
>
> 20.11.2025 07:55, Ekansh Gupta пишет:
>>
>> On 11/20/2025 1:58 AM, Srinivas Kandagatla wrote:
>>> On 11/12/25 1:52 PM, Konrad Dybcio wrote:
>>>> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
>>>>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>>>>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>>>>>    * add shared memory p2p nodes for CDSP
>>>>>>>>>>    * add CDSP-specific smmu node
>>>>>>>>>>    * add CDSP peripheral image loader node
>>>>>>>>>>
>>>>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>>>>>> cdsp_region, which is also larger in size.
>>>>>>>>>>
>>>>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>>>>>> related nodes and add buffer_mem back.
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>>>>>> ---
>>>>>>>>> [...]
>>>>>>>>>
>>>>>>>>>> +            label = "turing";
>>>>>>>>> "cdsp"
>>>>>>>> Ok, I'll change this in the next revision.
>>>>>>>>>> +            mboxes = <&apcs_glb 29>;
>>>>>>>>>> +            qcom,remote-pid = <5>;
>>>>>>>>>> +
>>>>>>>>>> +            fastrpc {
>>>>>>>>>> +                compatible = "qcom,fastrpc";
>>>>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>>>>>> +                label = "cdsp";
>>>>>>>>>> +                qcom,non-secure-domain;
>>>>>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>>>>>> created for CDSP
>>>>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>>>>>> Is this property not neccessary anymore?
>>>>>> +Srini?
>>>>> That is true, we do not require this for CDSP, as CDSP allows both
>>>>> unsigned and signed loading, we create both secured and non-secure node
>>>>> by default. May be we can provide that clarity in yaml bindings so that
>>>>> it gets caught during dtb checks.
>>>>>
>>>>>
>>>>> However in ADSP case, we only support singed modules, due to historical
>>>>> reasons how this driver evolved over years, we have this flag to allow
>>>>> compatiblity for such users.
>>>> Does that mean that we can only load signed modules on the ADSP, but
>>>> the driver behavior was previously such that unsigned modules were
>>>> allowed (which was presumably fine on devboards, but not on fused
>>>> devices)?
>>> Yes, its true that we allowed full access to adsp device nodes when we
>>> first started upstreaming fastrpc driver.
>>>
>>> irrespective of the board only signed modules are supported on the ADSP.
>>> I think there was one version of SoC i think 8016 or some older one
>>> which had adsp with hvx which can load unsigned modules for compute
>>> usecase only.
>>>
>>> I have added @Ekansh for more clarity.
>>>
>>> --srini
>> For all the available platforms, ADSP supports only signed modules. Unsigned
>> modules(as well as signed) are supported by CDSP and GDSP subsystems.
>>
>> qcom,non-secure-domain property marks the corresponding DSP as non-secure DSP.
>> The implications of adding this property would be the following:
>> on ADSP, SDSP, MDSP:
>> - Only non-secure device node(/dev/fastrpc-Xdsp) is created.
>> - Non-secure device node can be used for signed DSP PD offload.
>>
>> on CDSP, GDSP:
>> - Both secure(/dev/fastrpc-Xdsp-secure) and non-secure(/dev/fastrpc-Xdsp) devices
>>    are created, regardless of this property.
>> - Both the nodes can be used for signed and unsigned DSP PD offload.
>>
>> Note: If the property is not added for CDSP/GDSP, only secure device node can
>> be used for signed PD offload, if non-secure device is used, the request gets
>> rejected[1].
>>
>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1245
>>
>> //Ekansh
> Does this mean that the qcom,non-secure-domain property should be dropped from both nodes? 
I checked again and found that unsigned module support for CDSP is
not available on this platform. Given this, the safest approach would
be to add the property for both ADSP and CDSP, ensuring that all
created device nodes can be used for signed PD offload. I can provide
a more definitive recommendation once I know the specific use cases
you plan to run.

//Ekansh
>>>
>>>> Konrad
>


