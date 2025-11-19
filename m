Return-Path: <devicetree+bounces-240441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E6221C71084
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 21:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1349334B2F9
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 20:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0264E30CD89;
	Wed, 19 Nov 2025 20:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DA4bGn/i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UI96B/2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496A622F177
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 20:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763584136; cv=none; b=B24y8/pTkV9cfStKn4OJCIZHt8isJIjcbyo04aMWNdMPJ/+Jg0Ood4uDv89EZk/f2KDE/Ec+vDqNSp+h6Uf5e8uKw2pbW4C/6/8LIYgTanPu+SE7uVfSDiyy9JiTReQWaxPvPsB9IoVqWJlBVm9sZugaOOJtgrGnAY4Cp43k2bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763584136; c=relaxed/simple;
	bh=g/pK8ZLLGLzMcWkMe0ugqHmKKZyS10imeG122WSdOWo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l+1acw1wmsyaz3IIrVqrH4QA1lTTksfMYPt7Se0MqpzEBHo1JjnBw3UWI4yILh2G3v6la9ClAK+2p/lOFiHMXmKPVn/9XMhNSgACLK0JfiAIQiws4e+50xa67m9AkkCxNxB7NRUQGc9LbqOz4kBUQ/BUj9tm+PgKleVV1Sk6BZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DA4bGn/i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UI96B/2I; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJFkOWW2061019
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 20:28:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dPnM840VJFPRltzXDqsgZKK11L3FNwTK+BhD/jqFmsc=; b=DA4bGn/i6Ly6n5/E
	s/7EcVXBgz0RBD/u+26qrEt1SBceoQ7v5W5Kr2lUmjiqHCkIRSbiqEgpWrki8jsz
	KhjsZXUBNgb3/c4tDJhtN6oLT9ZKGO0S7tGoOtDN9g9G6qhlUqU60mgZmZrbOoOR
	W/S5CTuP23tLjRFyfUM5ifChMGUJ6Ns3D9KGKUSr03QN178zib1SlIfu8fkIg4Gm
	L1RKsoiq9Ss6bwVcd69imAFvo+hUs69F3/ZbZ410mL4pLR2Z6d9H8Xc0V7tmnnVn
	epgjbw6wDpIU6op+rba9/8hO6pJvTB6vD2SEomFsCJi1WaCssAL5wnMxZeJ/8J+s
	4nTQCA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ah9fuabva-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 20:28:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed6e701d26so3539971cf.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 12:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763584133; x=1764188933; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dPnM840VJFPRltzXDqsgZKK11L3FNwTK+BhD/jqFmsc=;
        b=UI96B/2Ivp5lBbHbHJ50QdKP0BbRC7aDn9EGDR/8qiU48xxyZ0SRWwemDxfKqtchHo
         TqpBaOOVPy5hfmkQwyuOhQjoOkP2MEKREOkBzjjk+XQLT0orAxqEafyxgZ9r8jPjv+rh
         QtY+mTyjVjeZKcgG9HulHOVfbTBWtyHGloQwcmmo6aq97G+8aSvbhPFwM3S2EiubZQ4B
         ePUIl5nvjU28KYqVyazkAgb2GWci0OEZJjWZUEGMFERonZ4CG+5xrtW10QF1cSh09qau
         /VeZnhT6Pw2L9672cSsZZ9NhJF/tVNCeU5x1+bi01nAKJJoCT9g8VwV5rTk7+kSDK7Gu
         ifNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763584133; x=1764188933;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dPnM840VJFPRltzXDqsgZKK11L3FNwTK+BhD/jqFmsc=;
        b=MY2gWElFak84+tPhELDfe2Bw2WEQxX3xKMtldQtXjEQOQ2Jzv01uVZIQZkdvWKZMqI
         eNhhHxGakx5TSi2+h7TSni0s/QLvT/ddElNr3x0NQDQdwaEl4WuvEDuRwCafpsLPPgjM
         lzbzzYVdFt5hdMsDhqe+msb69Q9k5TB013PMKSDYkzWcQSIExpseqHtT1Z3yaoK6CQia
         V5AZkS2PFxTEqC7FVob0WYfoBo3gPY8erp/eGc8br7P+HefqyF+xo/U0YlC4nvXy/M9H
         YNoCUsqg13PTHzkBDcBEDDshRcbL4aro4nWJpE/VAmGMg0LJmpAmIsIbXhhjd4OykoF5
         oRlw==
X-Forwarded-Encrypted: i=1; AJvYcCXkGuKPYjUqONV4FOwuDGwFX7Mp9CpAyBoMlIN0xLl+powZv9j9hsI4gRTTGNfibX8oYCPdjIa/MwVG@vger.kernel.org
X-Gm-Message-State: AOJu0Yz34HGV0K5RXoh5ytChy5QVNijSMyVZ5p/5qJx49OZGa6POviDo
	y3NdSn45cYqqOaG4Dnh7xi/40W2Xxi1j4XmWgKNmaKthy9w8fET4sgxF3v+e7GxBgG42QO/h4Z5
	JNAyE4eaxr2UChiwPv4Y1xKFcMgPnm6VPXm0aKLZb933+eYou1dqY6zHfwFoyaRsT
X-Gm-Gg: ASbGnct4vAoAi4+NjGbWQ8xVaAd1J3AVyN/rob6V3qxwEuXdAnLQXUmDmZ4J3G0KZiX
	+qLWthlEgrgJv57zvpWDkrVzB5sbRhM1AQrq8Hj8+YleHxo+YACi3nfAn+aUpL2k4tYlL0ayB0J
	Yg0m+NvPA+ij99ygJeixtfTLVqtlF9bLcx8dlgluR0eriOS4wrlOI5Z0E347pFpqnJI+eEpVOEb
	KAdxYF8ZBM3IJYW1zKr7bRw30+R7zUSoB8f6/CtDsRw3c01DuUV5onStgbAuEGd9a1r0aqwjNi1
	CfZL5S0ktrGd0zEGSFBre7qnlC2lLjIbv+6TS9xyie4gjM9Nz64QlW+8NsUVL8ZURqwP9UTQF4K
	k5GO+EZW5Ua4QnooebAWMM9XAGXK+gufopBqX
X-Received: by 2002:ac8:5e0a:0:b0:4ee:24e8:c9b6 with SMTP id d75a77b69052e-4ee4a09bdcemr5261931cf.59.1763584133559;
        Wed, 19 Nov 2025 12:28:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFOXKTjfsFE02TAa3utoPP4wwivftCiEZk8Oiy72azJqAD3Dza9t6k70sbNo+T2C2pKvCDD9g==
X-Received: by 2002:ac8:5e0a:0:b0:4ee:24e8:c9b6 with SMTP id d75a77b69052e-4ee4a09bdcemr5261631cf.59.1763584133087;
        Wed, 19 Nov 2025 12:28:53 -0800 (PST)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42cb7fb8a29sm1035717f8f.30.2025.11.19.12.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 12:28:52 -0800 (PST)
Message-ID: <80836b8f-16a8-4520-ad11-5ca0abb3403e@oss.qualcomm.com>
Date: Wed, 19 Nov 2025 20:28:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
 <07066c46-4121-48da-846a-3a180d245589@oss.qualcomm.com>
 <47b40a91-8365-4431-9fd9-1e48fad2a4e1@mainlining.org>
 <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
 <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
 <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
 <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDE2MCBTYWx0ZWRfX/eGE1mVlTGoO
 yUUzw+Zux/6o6wvPimqhekTgD4QOgr/d0D/yRLc6/S2ymS+HnLhymghE0UDLTzwX1oTIDa0Aq81
 ytsBCWT2XdTOMXvS9O1x4PAs8Y1lKPW8UXuMxkk+veSOjdGOeauG9qbi552t3iwDaW1uB6Ezp91
 75pWp026cKVx2Hq33OoyNLg1pMRWbehXB70CwSeg4RMaTaIQdKgbbknixwxWfd6wuK5iCyUNosX
 Tg6tnZng49bDHdVzbVFj0PM6HnwdB5t/M+FQeP/vaKs3e0k3Ln05Tw8iIp647cGbg0nXklx6q1f
 5GVqXvj32/itFGfa2Bq2FqAKKEKY2H3mFqAvlQ7+g==
X-Authority-Analysis: v=2.4 cv=KZTfcAYD c=1 sm=1 tr=0 ts=691e2886 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=dCnKVPZACBjga27198AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: TUkSmnvR_ItRL0psgO91--F2FHMOdoDi
X-Proofpoint-GUID: TUkSmnvR_ItRL0psgO91--F2FHMOdoDi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_06,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 phishscore=0
 malwarescore=0 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511190160

On 11/12/25 1:52 PM, Konrad Dybcio wrote:
> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>>
>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>>
>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>>   * add shared memory p2p nodes for CDSP
>>>>>>>   * add CDSP-specific smmu node
>>>>>>>   * add CDSP peripheral image loader node
>>>>>>>
>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>>> cdsp_region, which is also larger in size.
>>>>>>>
>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>>> related nodes and add buffer_mem back.
>>>>>>>
>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>>> ---
>>>>>> [...]
>>>>>>
>>>>>>> +            label = "turing";
>>>>>> "cdsp"
>>>>> Ok, I'll change this in the next revision.
>>>>>>> +            mboxes = <&apcs_glb 29>;
>>>>>>> +            qcom,remote-pid = <5>;
>>>>>>> +
>>>>>>> +            fastrpc {
>>>>>>> +                compatible = "qcom,fastrpc";
>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>>> +                label = "cdsp";
>>>>>>> +                qcom,non-secure-domain;
>>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>>> created for CDSP
>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>>> Is this property not neccessary anymore?
>>>
>>> +Srini?
>>
>> That is true, we do not require this for CDSP, as CDSP allows both
>> unsigned and signed loading, we create both secured and non-secure node
>> by default. May be we can provide that clarity in yaml bindings so that
>> it gets caught during dtb checks.
>>
>>
>> However in ADSP case, we only support singed modules, due to historical
>> reasons how this driver evolved over years, we have this flag to allow
>> compatiblity for such users.
> 
> Does that mean that we can only load signed modules on the ADSP, but
> the driver behavior was previously such that unsigned modules were
> allowed (which was presumably fine on devboards, but not on fused
> devices)?
Yes, its true that we allowed full access to adsp device nodes when we
first started upstreaming fastrpc driver.

irrespective of the board only signed modules are supported on the ADSP.
I think there was one version of SoC i think 8016 or some older one
which had adsp with hvx which can load unsigned modules for compute
usecase only.

I have added @Ekansh for more clarity.

--srini


> 
> Konrad


