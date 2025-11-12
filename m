Return-Path: <devicetree+bounces-237632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 536DBC52977
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 354E04FA140
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7DE23D7F0;
	Wed, 12 Nov 2025 13:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cSWdgjYk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OlPOLL9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2492264A3
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762955574; cv=none; b=mjovvaHNjHD23/OpQErnje8DtorgFWMrVzBRdHGjVqIuhUp272kpj+aW602ghV1st/4MEDuoToeHFKYY2LiywEFeW2uw00wLma1BNJ3vt9FMZ3+5qgmN75xQuV58oi+PWCvP/nbeiqQaHigd7bWC7JRZs7/P7nAX6LOdhBvFsUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762955574; c=relaxed/simple;
	bh=OAryLYQkLLUmB/WMe+NZx5UWRsH3+TBfVnEaugxiuw0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bwig+XiXK2Gl3OIKB/o1bD2u2sSa1hHStk+dz9DbESdEqQly82onaNSDU63ZcHFgSSOXRiIlMurS+K2sHPatZb1OY8sx43wRQvzA7d9RXVzfqFYvCSrQKVYh5Y+nAeM0DPwo6wHzh3Q+NuTA+bQjgPnfJN9s0YUlK0p2FYHE31c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cSWdgjYk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OlPOLL9R; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACDZFQb3502468
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:52:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RTdtyUKWWBMzxYsC5nXPivGVgsscMtomVbfKa/HEHHo=; b=cSWdgjYkemJrNc1g
	pFfqjO1NFr+lWhKcYSBN7fNg0B9phMoU5W7dun4wLxb4ZFE12v6b/qKyaFp1z+dh
	pI3/hIHiz4SZqa7t7qWngw21byrArSI5wl3ivV1IRxI4VuIwTyj+HxHHT6182eNZ
	BiYCPXszvnAGl7xVByzRqLw9c4AntRPbjLeb8F3P8hVYotjfjT61CEKh6mVFSz4A
	wg1jy04dv8QNy1J7vR6T4BMUZoiVJ5dOqJeI4m68iIzg33F1GsFOhe5Vb7qe43/g
	PDlJm8t4vw4a51B4h4ZbmL3tqMfjC4a6EoP6PPyR7o+l9nwCWno+z9i6gDKe3TAP
	FG8EXg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acdcc2nan-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:52:51 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed5ff5e770so1588161cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 05:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762955571; x=1763560371; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RTdtyUKWWBMzxYsC5nXPivGVgsscMtomVbfKa/HEHHo=;
        b=OlPOLL9RWzBf4vTSt8CsJoRNFXAddA3yBCacKrTKVKfD/ppBUHXVxwHisSL5CNFpDL
         DyaX0W3EHaeCOwXPB4785kdTDSxoU+1Yr9zxg8LyoSymG3vG0d9Dm7QzxlNZfKR135gn
         XUbwGJYTqFh8aQFOn1svj2DzTtEr2r1ssCOKQsgJ8eHPwpqFOlAR2S7xXvTvTdQlfyJp
         fpIquZdzrj0KjGqBhrVJyysnOAnX7T3Now/kbZQ5ORNHP36Fo4IErx1Jp0lj5J8f6YRd
         xQqt0KZipBnrV/qwlsrp16WIt5Ft1K32NAJpghNzotmdD92bsPKR0nIl9RGTelmC6xFM
         nOtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762955571; x=1763560371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RTdtyUKWWBMzxYsC5nXPivGVgsscMtomVbfKa/HEHHo=;
        b=cOxNbGJx2nsJH0hK49ijN8uvCb+Rfp9WFPNSESfhBk2bgEl28aZPIZ4E8HOAh3OwYw
         A0XaXcqHsmQ2hl5LAi6znNPyHjlQk5iO41hcC7e9I9983mjoOSfooU2AGKtuSL2z2qpp
         QQUMqNGus9waEfXS47Ahy1Q0MYeoK6IZBZ9P/kcSQS+PWy8MLwK/PJ+pxhX3OOPrYySP
         grGbp8PAv8wNz7Vb7ZTcz9iWq1phyFr2MNtToAUn81k4zvt2yGPu7NMY9Tq4+8A8G2HB
         fteRjeNGahXiZe0tpxADAZUalDzTOY8HIaaBWv9UZagaqUrZ9bFvOca1qdFPpt2qcFG9
         95qA==
X-Forwarded-Encrypted: i=1; AJvYcCWqMEiE+zMN1jt96GEmNn4ao9YrB/7ZcxA0j8JWuJGdSdOVAYg6ThYL9Ue5HkeFBJGJsZpLNPi4mkDq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7nMOnMdIFB30o9QFQJY8l51LWzT42fbsIr6lZQin9gWsToVj/
	KYDjk/RR7aJ18Oq0SXqtEZ1QMl7MrZkxSl+iD1Oh4aCV/N5qdKXF7gYQEH1y0mUwIu1WVDY+7tF
	3vHHoiENmvZqEjB5bKpC9gyshG9suDvtlXKk6Cd+KEuhXeBxMpDBg1aozuhTg9myj
X-Gm-Gg: ASbGncsf6yR6akmO+PpsKYbef3sQSgKREe1Sw34Kqh1AMoiB0EVMHSya5wiajzhsNHn
	bqykGbT0P2JQdk6wV87X4oD5LVbM2V42rjkMl2X8oBw9b0F4DYBCcwFDJgMLsL7kH614JBiGreV
	9EHgHHcLhSA+HaI9HOAj0tLwzNldp6O3OFJq6OOSerforj+qVtdn84051bM6uOmc82f8ItE6NUn
	/gzxi2HZ5OGVM6eY5eHg5GRHNGMtJHPnYUx/1O9ZtvhhpV6FadCMzQMkpBpTtUNS+mICa3yj1Av
	9rFw57BXrR1afw30grQFVAt43xEsPoUxFkz64ahnyOAYI9lBKF42Rs3VsF+AWeDIoc6w1MHK7bm
	UMxWvrBPw4DUAHbSmK9LrpOVAhgRc2dgmnL2B0TrA+TLwgKdxuZS1n2X5
X-Received: by 2002:a05:622a:1209:b0:4ec:ed46:ab6d with SMTP id d75a77b69052e-4eddbdad3damr29223911cf.9.1762955569077;
        Wed, 12 Nov 2025 05:52:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcy1zE3l/tMASsQZC9DN852+GpFxCEn0w3eDqVGBouDX1a9/hlv2AeSAGGjvnQlClfa38f9w==
X-Received: by 2002:a05:622a:1209:b0:4ec:ed46:ab6d with SMTP id d75a77b69052e-4eddbdad3damr29223501cf.9.1762955568364;
        Wed, 12 Nov 2025 05:52:48 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf723172sm1585335666b.32.2025.11.12.05.52.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 05:52:47 -0800 (PST)
Message-ID: <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 14:52:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: EOhC9HZJ88shranrOQGUm1q_oET1poZN
X-Proofpoint-ORIG-GUID: EOhC9HZJ88shranrOQGUm1q_oET1poZN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDExMiBTYWx0ZWRfX/p4WV+wZbP7K
 2TCiIQBJLFKrnsZEmbiewrOhbYRa/PUulWqFo1El90xZSTe9ZfV6T4k6Rhy5h56ZjJZagjLNyLq
 2SiPR481M1x8BVkg3LmWDdFLAc601H6O+UqaG+BVZ5GVc+ViyOg6zCnGiA+4DJZY1yXkKQx+Oms
 a3ObC+5ry1ibBw/F3U19tPHCOlHzGF2/QT9B8xu5e20uF77aQItNhzDfJP3lkeHdkFFSW/1RLh+
 mpnxx77cAX8MXZfBQYsHkx7R+PJFOrIGTmIXTFuFLvfZkeZZQMfn9qsRsUBNTkRoPEWO156v/vJ
 bb9Xj5zGhXF6nox1Uw47ifMDrhNzOhbiqm9hA1XsUn8ZCGC4qbsM9Oh34PqKS1Vuu1HGsr1tkFa
 /vYhVFO6QeBawvpFKTJ644nvDoGY5g==
X-Authority-Analysis: v=2.4 cv=L/0QguT8 c=1 sm=1 tr=0 ts=69149133 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=eRqVM4IRrQ2YyvCDTyEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 suspectscore=0 spamscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120112

On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>
>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>
>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>   * add shared memory p2p nodes for CDSP
>>>>>>   * add CDSP-specific smmu node
>>>>>>   * add CDSP peripheral image loader node
>>>>>>
>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>> cdsp_region, which is also larger in size.
>>>>>>
>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>> related nodes and add buffer_mem back.
>>>>>>
>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>> ---
>>>>> [...]
>>>>>
>>>>>> +            label = "turing";
>>>>> "cdsp"
>>>> Ok, I'll change this in the next revision.
>>>>>> +            mboxes = <&apcs_glb 29>;
>>>>>> +            qcom,remote-pid = <5>;
>>>>>> +
>>>>>> +            fastrpc {
>>>>>> +                compatible = "qcom,fastrpc";
>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>> +                label = "cdsp";
>>>>>> +                qcom,non-secure-domain;
>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>> created for CDSP
>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>> Is this property not neccessary anymore?
>>
>> +Srini?
> 
> That is true, we do not require this for CDSP, as CDSP allows both
> unsigned and signed loading, we create both secured and non-secure node
> by default. May be we can provide that clarity in yaml bindings so that
> it gets caught during dtb checks.
> 
> 
> However in ADSP case, we only support singed modules, due to historical
> reasons how this driver evolved over years, we have this flag to allow
> compatiblity for such users.

Does that mean that we can only load signed modules on the ADSP, but
the driver behavior was previously such that unsigned modules were
allowed (which was presumably fine on devboards, but not on fused
devices)?

Konrad

