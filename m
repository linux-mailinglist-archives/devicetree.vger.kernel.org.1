Return-Path: <devicetree+bounces-234381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AB1C2BE2A
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BDFA14F7786
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB38230DD2A;
	Mon,  3 Nov 2025 12:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cjNHrobc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fPLGQUWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593C530B524
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762174348; cv=none; b=XUxcf0GoI+KlNwELYP72WApB5L+KWtsceuImMy8Z9exFetmObGJ4W0w1xaGy2fwSqsULUA8HPlLrvzEujUNDWnsAGS0tqt0IHc7EMYukajf4ZYu4zQdO4HGLoh7DMBoti/KfhfhVkk290b1cCk+14feZ0mSjH1EfABqo++MMbow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762174348; c=relaxed/simple;
	bh=heVAq7NCx/flJlCN3TIsR27SjYV1cMhTibQl46WN3DI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nQT11s/vjnuBfQHH6kGDgj/8GInhMWG/X+6UeFH28trvrsS01cFZwGMlJlPQQXYNgmFulHrxx4RtKivW3Wyljh4gIV1WQBkfYAjgHXZtmw7SQ+FcM2D0KHmvuZ5R0r+oAemtR5UZGCuGWBz0lJqjZxQpSHX/gr4dMZfOeHloWTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cjNHrobc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fPLGQUWI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3B5rMx2906319
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 12:52:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ufSdN2+C3wMkejSn2sfN2kc8G6SjeNpP9Coln28UADQ=; b=cjNHrobcZ0S+IcWX
	/jNdPaPmbTOxe3Rf0Lra2hCKyLhfU4PkRLH+AvzBSDW114g1m4hkqZ4ya2LrRLjU
	63RzDLutj9I/MoeLYFESF5qcYPAlgZlq7UCja7T2Xx49wv5FM7ywtVgXq4zum7mc
	Ataajo1tXUE4WAErU4xnO9GIaI6qkTB/6jLY4ld5IXoBXc5/S5APb/NW8eIu9otP
	fgQJPAKreI9D3u6WuHAFLobYvLwpu8FfPsywScv+L2sSQ+19JrWcEzrTiurJZQcX
	LyCF2lspKQBVmhgiKQ8hGEoo5AasOVKNZDJ3znp2S8Z0R59ssdDnVH8GUlwnY5Gg
	++Jj9w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6u7kr7xp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 12:52:25 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8a35e1923so16694461cf.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762174345; x=1762779145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ufSdN2+C3wMkejSn2sfN2kc8G6SjeNpP9Coln28UADQ=;
        b=fPLGQUWIWDGyKfIx8mBqZ7tlYzBjOUsVJ8j34naWIuef4l5Eb8TIXrIBNTCePKbnU4
         hX1J0Q1ORAz7/ZYmwYcq008fSyZCD2CmqMQgfcYEAMVfN4/qRnWVlxBOLVJetWOGhsNP
         NRe9YAnkbV8RPbPSnWByeFw91+gH5PVIbB7tad9gymaFPSFgreUre8NKsC1KeXa9xHeV
         hyNKrRmsxNMtQwbQzd/sVrXBEfAxPk0ker8u0xVBFihFNYRi+gf+6gvz864kpt3Rjl2n
         0vKvnuYH3Gsm4Ggq+lTBN3tRQ11BuHGRssi5Zn5a5YWTnE7s5lXmcvQ7IrQjx9EBg1yo
         Rt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762174345; x=1762779145;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ufSdN2+C3wMkejSn2sfN2kc8G6SjeNpP9Coln28UADQ=;
        b=poi39MfxjFFHMulhgYs+Ynqwlu4/oZh4EztyzEzhRxxPA7tsLS1hEkAF0morAaAI5z
         7RpAzjTu6FTO17VRjFNTb80cV+x4lN3sKmp6diEhLf4WZjctXwuBNOHeYUISBcNKXCdF
         HD//ob/aqM3mon+zDntaf9gT9C+/oq3Ut6bhsqcxat05S8O+nQZ1DywD6LpXVMQ+VcSo
         JbuEziqWiP9N/kA+n3IgdhfNnQsXW/2pE6gcV1nVeCwfuwJ/PzVxID8ZiTpVtmYW6ZPj
         1xK0QRyBoXGJbO1KpXNSl2IB9zerKqQ5KqHjMk9PIBu5O9aq1W39lbvzibiXsKTGqJQO
         pD3w==
X-Forwarded-Encrypted: i=1; AJvYcCW9AEeM8UJ/Tr6r45xsvsO3rRhRdj/LJC6D4WxGeKhBQGokpPE7GVJYkvSDCT3w5vefCnTheXLxHLle@vger.kernel.org
X-Gm-Message-State: AOJu0YzspaK5rodEdWZVLsHSyQT3MGutXTS9Jel7qby5gFAWPfTNtGjl
	rbrRTnpw5nAcHVC8JmMxC6PTUqfgZcafMk3lmENWChZhCjT21N6hA146gut9ETI3uRXDTL7wQRQ
	m++TmWh6CNsA3Sf2dQ8wxZ859bTQJ/fHNQjhxPEpgwQWPjaBt0f3SrroSODTRmW6D
X-Gm-Gg: ASbGnctdsWYIV3FC8jDKvOsWBk04BvCQg2otHwkH499VPd2eWKBv2xXIIp1JxTGq04K
	i1Pqjeqb6Jqc69/J8bek/ss+cAvWNzayfsoNg/bMvZj3G8dziTTUjB4nfc3oRsIXypUEX7SNB2y
	vl8i64YyYO4MP1X/DDMnrcU8sw4KUjpv4nEqU3V2Vuov1Ibqcrp0r/68daomT/f/QN/8F9I5cQE
	uaC0x5V9+8p5DkfkAhBsUis0sidPfQda2IuesnMgw6RN2Z7pszqImYhlSFRLUWeiHZXfN3Kn1aP
	fJQHZO09Xr8dPFzpOxzM36PUhEey1+ANvjYfVs9tBthm/OAwZrkR/QUni6QD8DW2geTtfUXIPuj
	Kyjd5owGJPSkSlO4hNY7TziIll3sPkf3HotUMHzYrnOAiBISkpm6fs31f
X-Received: by 2002:a05:622a:835c:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4ed30f7f5bbmr90085601cf.9.1762174344887;
        Mon, 03 Nov 2025 04:52:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQK6aZxb1evMm9CSUc6V/nzcWHXNYMRxGxQJOJEOdgSqxZTkvtNL9OfqFSj74zG4eUWypUTQ==
X-Received: by 2002:a05:622a:835c:b0:4e8:9af1:366c with SMTP id d75a77b69052e-4ed30f7f5bbmr90085241cf.9.1762174344325;
        Mon, 03 Nov 2025 04:52:24 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70ada0c289sm513580566b.3.2025.11.03.04.52.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 04:52:23 -0800 (PST)
Message-ID: <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 13:52:21 +0100
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
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
 <07066c46-4121-48da-846a-3a180d245589@oss.qualcomm.com>
 <47b40a91-8365-4431-9fd9-1e48fad2a4e1@mainlining.org>
 <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDExNyBTYWx0ZWRfX+HiLAt8d4P8i
 QoYv5Azs5RTHNIPn27hPc75tIIJT+VK1uGR8uK3C5VFII0uAmWTpITu5VAnk/FEECftIlNTQ6f3
 e1rtKoJFsHrMCMfyhOjr67rHvNkBKyt7uBeKe6aSf7YiMJetD8/kQBYkWvQSBsgmFQjp3SGlLFN
 ymCdtwvE8CwMPEVXhiuwSCOHQwHzT4Z3eLM7vIGO1FstaGee5q3SmJ8PtvjFgydTcKixVEZhPu8
 GvZuGqEH26C/xw335I4kuHXB3fYu2OzHUmrcN3iF7X4JO/gf8L7byAJ7Uc0plCXC0tTNCyQg+vy
 97Y13zOTs9UlFcpouXEeP1mk9rahOxCbIKVCcedn11sX/DUUFugxETREzrHUZMa2NC3pcEgtjmr
 uqLiJwRwvnjq65fBOtAvdyvbeTzung==
X-Proofpoint-ORIG-GUID: k1TPJiLgvUX3eG1SyK8P0IBl5xd4vg3H
X-Proofpoint-GUID: k1TPJiLgvUX3eG1SyK8P0IBl5xd4vg3H
X-Authority-Analysis: v=2.4 cv=Q9HfIo2a c=1 sm=1 tr=0 ts=6908a58a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=ITMobWRzqwyUaGoyGfYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-11-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030117

On 10/31/25 12:30 PM, Nickolay Goppen wrote:
> 
> 24.10.2025 16:58, Nickolay Goppen пишет:
>>
>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>> In order to enable CDSP support for SDM660 SoC:
>>>>   * add shared memory p2p nodes for CDSP
>>>>   * add CDSP-specific smmu node
>>>>   * add CDSP peripheral image loader node
>>>>
>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>> cdsp_region, which is also larger in size.
>>>>
>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>> related nodes and add buffer_mem back.
>>>>
>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>> ---
>>> [...]
>>>
>>>> +            label = "turing";
>>> "cdsp"
>> Ok, I'll change this in the next revision.
>>>> +            mboxes = <&apcs_glb 29>;
>>>> +            qcom,remote-pid = <5>;
>>>> +
>>>> +            fastrpc {
>>>> +                compatible = "qcom,fastrpc";
>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>> +                label = "cdsp";
>>>> +                qcom,non-secure-domain;
>>> This shouldn't matter, both a secure and a non-secure device is
>>> created for CDSP
>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
> Is this property not neccessary anymore?

+Srini?

Konrad

