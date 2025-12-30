Return-Path: <devicetree+bounces-250371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33376CE898F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0AB0930124E0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 427DC2DF3FD;
	Tue, 30 Dec 2025 02:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ISLuFuLP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hhHXmuyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C942494FE
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767063071; cv=none; b=qiiT0NkwBWxAuXwJDV6CgjC478c+JOfuEiZPUn+R5uRWYD9oI4Ot9LQjz7sepzMg9CEEZdPMUgP2Hscz95infum6dIayVb3qxnaXlkkayeBUHewwDNdhsF27vnYc2YkMKZc9YxuBrjlKqJ/V1EN2opF1KwsMviH1+gE57czaaYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767063071; c=relaxed/simple;
	bh=ObOFyByshmjKwRlPR9hg6l4OLsEM+eJp+3uBC0YGokk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hK8U8VGWFzUgsDhVzPjl++vlgdKeOdL84yrlxdNPqRdSTvoen7JINJFJydJVeKpOBGsShv+wJ1bELf4E+RNpbZyqba6zvNCb7g9CBBKJmuQKshlppuks4f57wke3SeZakYhR5tXH4znG+c15vXBPFiI3x7+LrN90Hguv4q51hMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ISLuFuLP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hhHXmuyg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTNib2Z1447718
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:51:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+rUc/e3E9ZSswwiL4DZymVorpQAEBtWThsFqfoKpRKg=; b=ISLuFuLPFTRyDiQY
	hKH/tJKBDxb8ZXBdvA+8q/Owt7rk3on7NC1+i/J0pDpjcCVUDL280i3Cw59OIMlx
	2O5sFBr8RB0Ei9gRDxEn+9HQ5wCa45m6RdloPypjxzCbPtzlDHu17AYZOqOGVnMX
	sivVUAzwjtOdWY9F/N2Wkbz3zkGzsFe/oh4xaYO4kyQNaEoC45hIYTsSW0CHAIV0
	H90CvnOiC+ZNiitvPCBib0L5gTbX4mKSmL4gZzvulj5DzzQSCHtc6sMMYrGs3Vph
	PASJMS8UaN8n7g24mQddkrqQ+pxyD11uW3bin2yBSt73QgJkmUplXYmyOnbINVL4
	dDrOQA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bavrj4dm1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:51:08 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0bae9acd4so88992355ad.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767063068; x=1767667868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+rUc/e3E9ZSswwiL4DZymVorpQAEBtWThsFqfoKpRKg=;
        b=hhHXmuygepacFvaWcqkrYsvKr5UX0Oxuet/DROXgdqwC9vXnkW8xl6fFCz99NeOnfx
         vjxIrZHjG80qf908YNanj++o5kEGFZk8NtvFvNLExar2fZ4O3n7ZXbwAp+B0/khVnSRF
         CfuiWBj5Vu3ynQbe+D8LHiuhs/yUUC+3A6QKKKVol5N75vM79a7NRX80u5Ukza6KCetr
         7U9XnyZ68LmfaP+20NuMTM6VNmiYTCwLe+8NBJbyqdtZ3sW9bLEipsI7ZwFcchpc871T
         z+XI9Ked7te4IROfTLz4L6aspJYkSvyypmFImvGROkzllbtNupT9lfpwmY5ojiYKbMG8
         m8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767063068; x=1767667868;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+rUc/e3E9ZSswwiL4DZymVorpQAEBtWThsFqfoKpRKg=;
        b=fAtn1Kb2ogFm1cbLL8snBVEJSWPVWeVPhM828nTyvGGJ0bxvZlcUwxQTqv/a8YFMiv
         Y4IQmb46oKEpC7toMwt0DMu5fh269hxtoE4UPWeEePChKQFJwgBJ8xL3nRuknMbL5qqt
         lNqOxxqYwAcKMfE8kOK4DWy6wQ8VDJYeFPTwh/MvdPtwf/lD8D7b3UQC9hRCgNaMg/AK
         TDv687DDXCh+O4Zw3NeS8fUGPXHw2zHtqiXH/k01hkWmxGuXJCQNkngtE/5sgkaHJgar
         iRxifGHk8RYn1hKpJ/XNpJEYTWGJKylOYb6Ol9qALG58RvH/2GU9xF8n0OsG1g2o/cm2
         BxOw==
X-Forwarded-Encrypted: i=1; AJvYcCVjK/IBIIXacY7yZ+6qQwjp8hTSYKGGe2BkD+G3RJ33BrU8BoPG42FHboewEfHbkWsFWUwuRdXoDJBY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9h4k8BfU0Etsko2LqetXjNpdBwgpJ/7UdGrhETlBsEk/QWs4b
	hzHEUTKjTGI/WeS2VuQ+5FM74owW1P3e3cRnAm+u2M9Q9p0kq+0eXv22y6V19x+Qzrd6IYLxVpD
	poTdMTTGfCCx42TqBUvYEYyIlcRgrydGC5+R/LNbALfwCv2TsVJA+wmwfrkozVMJ/
X-Gm-Gg: AY/fxX5f1/qsZ6wJA/tIPHtn1vokEJoof2nO2CK3SUfJ7dQHW5oAW/5Xc9jgKFCfFMc
	QzMm0yFmfSRKWjMOLFu34TdX7bhJBN8hBwezUQ/wE1eorfDJR6YJW/qftOoEtZdhHvHG7zuMgMB
	LUGCSvJh4q7/mj7ObdcKedBD9BWmBdvF0brtzGxTo0QmXrroYwXVBETRWTEPOSKmrN7+nEVVYG6
	bh0V4es9Oowih1MvPjB41rcwfL7Cm5GzuAePUHvaJcG/khhmAg+zZxSM+/XmsHP/Y4j93J+kAl/
	yg33742HwV8cSKBTAhY2J4ZNGkbWiZdzSJqKfiG7Fid02dd9SvfEo1lFQ2e9FS4UfdcOb2culWt
	IIBapZizEtfYTrP2//H2B06WKnvDGySoNKlUyJ9e9UOldzq/C5fDRNtV/F4eMV5HjHg==
X-Received: by 2002:a17:902:c950:b0:297:d4c4:4d99 with SMTP id d9443c01a7336-2a2f220d3ecmr359575715ad.6.1767063067986;
        Mon, 29 Dec 2025 18:51:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHd/nVv47KUg4jDJq/bOU4T3gN9b1wKRUq91S06v1YpKCNSC8SO5upnVKECiwVvuxK1z2I/JQ==
X-Received: by 2002:a17:902:c950:b0:297:d4c4:4d99 with SMTP id d9443c01a7336-2a2f220d3ecmr359575485ad.6.1767063067454;
        Mon, 29 Dec 2025 18:51:07 -0800 (PST)
Received: from [10.133.33.16] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cb3csm288644965ad.58.2025.12.29.18.51.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 18:51:07 -0800 (PST)
Message-ID: <9804a98e-ffc0-4346-8b49-0d7670e150ec@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 10:51:01 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Initial patch set for PURWA-IOT-EVK
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <dmdtwsdwl2bl7mn6j4d4xv76h6bo57van3ni4zt3iapq5bonsp@rxoqan4nahud>
 <d8642ba4-9a6f-4fb2-bd0c-419ead2630d3@oss.qualcomm.com>
 <0593cc2e-0114-404f-929a-0860d60afefb@oss.qualcomm.com>
 <d15c68bf-1a34-4024-b508-dc3f2676cdea@oss.qualcomm.com>
 <9648b69d-bec8-4f4e-8db6-b94972971454@oss.qualcomm.com>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <9648b69d-bec8-4f4e-8db6-b94972971454@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: KhOqqRM43h4yINWkcI2JkYvu9WMcs1g-
X-Proofpoint-GUID: KhOqqRM43h4yINWkcI2JkYvu9WMcs1g-
X-Authority-Analysis: v=2.4 cv=coiWUl4i c=1 sm=1 tr=0 ts=69533e1c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KZpCQj3iTLzay5iD_AYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDAyNSBTYWx0ZWRfX3HOTM8meMtLx
 pRImUnHcP5risCaf6O+hK42dWKHtbK5/fncDmL6h0YC16M1SWB50b7Bb5Rwh0xRF6P2Hyu6F89n
 64cm6Z3QG1ehXeCuJRPM/uxDwxlwDmm0X7FdeJ1MY1RMUEtta0/dIa9rQHFNvasHJsokIfRKFQa
 dzKE77Ma+CepYW263zrgNNwaoBw6NMjzfR9SE7+77vI+d+2PZWGagFCamAtfiErBHugxpMvYMGR
 8kLx0S0/cUWvMCASFtH9SS2vd5DfT066nFZBHX0aF9v7mzv3tBBzy1E7rm/q7dhOqyLOVTF1EqL
 bi8H120phzdKaKMofQs62ioRLwXGBFQZQkF7fwQGFkh6U7uGAB0Qh5oo7hZPddhVEHfqnXS97wU
 ioqmkJQTXxxaW+7wu+p1Br1znxzxyVOsWSf21L9KaXUtCQhjixsMataS8y30tOwAaoD3J/Yn9dM
 yO5U8r0j14IzXYjkEnQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300025



On 12/29/2025 8:18 PM, Konrad Dybcio wrote:
> On 12/24/25 3:02 AM, Yijie Yang wrote:
>>
>>
>> On 12/24/2025 1:27 AM, Konrad Dybcio wrote:
>>> On 12/23/25 3:12 AM, Yijie Yang wrote:
>>>>
>>>>
>>>> On 12/22/2025 5:18 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, Dec 22, 2025 at 02:03:25PM +0800, YijieYang wrote:
>>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>>
>>>>>> Introduce the device tree, DT bindings, and driver modifications required
>>>>>> to bring up the PURWA-IOT-EVK evaluation board.
>>>>>>
>>>>>> Purwa and Hamoa are IoT variants of x1p42100 and x1e80100, both based on
>>>>>> the IQ-X SoC series. Consequently, the two common files in this series are
>>>>>> prefixed with 'iq-x-iot' to reflect this relationship.
>>>>>>
>>>>>> PURWA-IOT-EVK shares almost the same hardware design with HAMOA-IOT-EVK,
>>>>>> except for differences in the BOM. As a result, most of the DTS can be
>>>>>> shared between them.
>>>>>>
>>>>>> The changes focus on two key hardware components: the PURWA-IOT-SOM and
>>>>>> the PURWA-IOT-EVK carrier board.
>>>>>>
>>>>>> Hardware delta between Hamoa and Purwa:
>>>>>> - Display: Purwa’s display uses a different number of clocks, and its
>>>>>>      frequency differs from Hamoa.
>>>>>> - GPU: Purwa requires a separate firmware compared to Hamoa.
>>>>>
>>>>> Is it just a separate firmware, or does it use a different _GPU_?
>>>>
>>>> It uses a different GPU.
>>>
>>> I think it would be useful to call this paragraph "Hardware delta between
>>> Hamoa-IoT-SoM/EVK and Purwa-IoT-whatever - because now Dmitry is asking
>>> about differences between Hamoa-the-SoC and Purwa-the-SoC which we
>>> expressed in purwa.dtsi
>>
>> I want to provide readers with a comprehensive comparison of the two boards, Hamoa-IoT-EVK and Purwa-IoT-EVK, covering all differences in both the SOM and the carrier board.
> 
> Of course - my comment points out that the specific wording of "delta
> between Hamoa and Purwa" may be easily misinterpreted as not what you're
> saying above

Okay, I’ll update it.

> 
> Konrad

-- 
Best Regards,
Yijie


