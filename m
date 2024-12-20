Return-Path: <devicetree+bounces-133212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E168D9F9C92
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 23:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D1FC7A291D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 22:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A433227565;
	Fri, 20 Dec 2024 22:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OX6qF5HN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9658226551
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 22:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734732364; cv=none; b=tzYMpb/6ax5Uk3QtI1H+7BX+m1PIFHem4yT6ezv0DWm5SRjwq72oPU7AIwjB+WXtqyvVfcqoZ/2SaP1d/eJ5pqbsZWJEOIwmBUpPqlDzqnqsDWJRfrm4CqWhFbDiu9T7c5yovh9F6U8pB4XmncsvQODSgmCUSJ3H/lgknMvv2wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734732364; c=relaxed/simple;
	bh=PYfMyDqg17kslvPPraNVn6LtPqttUcrIdvQB0jDY3cE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S1qpJduH6P+jQ0jicIaPA1fGq55oEpMxYhwvnMJT+45gMCu7q4gRJO3ZB/KjqpxSg69dtIlRQMskDkZhbuknNWqWX0J0VeuVEbaoqoNyS6abBVu/NotEAOLsLRfUdCDXmod9TKkcXgZxlpQc0AV1oBe9FcndWMQRxahTtHwewHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OX6qF5HN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKLh4Rn012509
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 22:06:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9LkFprxiUsD1tk8g3pSzxnZakkpVhYTWUC5dUvvw9cU=; b=OX6qF5HNDalc8WsU
	j1l+fCGALZntBY47aJJj/THHl+B7bxzD94dCk8um1GMoOrr92fRm9RLRh/nsGZNN
	x6zNnGIhaQjZC1Rfvg6TFDqHZgejTEHTtdhD2eHIf4X4c8qTpYwRAD8hvq2Cr9d0
	W2huSD4ejU53l7/ToTzgNE/1VfoAuR30ZbK2T6G5XCwuhZwjqqqEwtVa74xOuAfk
	DAXqXsVf4fXjRm8iL44FPC0eOiFPiADkmyLTOEJoIP6DeZEAhus6lCameWkKP22x
	i3BQOYf9JISQPokSXU0dqGglf/wJHUSXHGbhdv3eb4xcZr1mh2QCePY5Xcqwu3QL
	yr1Ldw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ngr081ay-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 22:06:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b704c982eeso9512685a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:06:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734732360; x=1735337160;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9LkFprxiUsD1tk8g3pSzxnZakkpVhYTWUC5dUvvw9cU=;
        b=hD/9aWfxD8isrC2KeNebmsDHP6rzciw+62uE7eoS8RlcbDL5ax6coHJN00tP2NpEfL
         A/OmO6PX8vbsCGnWPnvpuR9friEFruuuXavtBGEj6BpHbzM9QMTkb2y+R1uITvycwGrz
         LafOHKfkrFf0R4jVUOpfnrnJE4XakY1O/yphuOUrO5O0FiVbPdAAz9b6p42nHhAee4rY
         UF9C2ye986GWV1vcVxe2Q35zMsjTl4QHDZbv7gRAm3huAQrdACG44+Jk7r3GTnCX+Rbq
         rVsQpav1czBBQQowYsf4zKD7BJAE2Quf1logd16xtVfSadbU2OgZ87zCWIeHEjwSmGNS
         njmA==
X-Forwarded-Encrypted: i=1; AJvYcCUXEiwK64HCQqRQeqxamJn87rUO9qYHP9iriHjvTqCmhj6XeuM9Acg6h8QhL8MsJFI/GsXBSYuOQ31B@vger.kernel.org
X-Gm-Message-State: AOJu0YwKUqF0+ug07meXSgjtFFGwx/gPsg8v4IF2VDiEsQkLJZBvBRMB
	w//6sQe6Rj2tMp3mW5SXuP24wZWDh81kR/nf0/byR7hr+wsWSe7jb22i1R61dnwhtId0pZxBQqu
	zrOwZScPnB/7FwziMr0aE8uAW3J3uaXYXma5q1slKXS/XPjIbfYZq78OdG/fE
X-Gm-Gg: ASbGncsVDK3Vaz+y9LxrqoO+ObXrpjVVr9J4PdUflaSyrdo/PUM36gDohCjY/0zHPbB
	rR7Ex2VhaHJ0cPvCZ9EBZJEwj+uAgNEKPEmZTfAx95DeZAlMx/xU/Yi6dvGncSL/xCGUKx3JGdt
	dZG0QbDgRWdlAlOgnWX8ClLXQ3SacR0gSYEqTFi8uRMbsCEvZYxDzjb16sKr4r5d1X8zZbaYYb7
	G8fDlgnkD5ExfDFHiVOmpLd3YaboKB6TDsCFAwNHKTPU/o0TsDrqMxO7DWiDpyQxX+NucVTx8Qc
	Ie11UpipIK8pe4lfWNu100Qf8VpJ9SDQzkQ=
X-Received: by 2002:a05:620a:17a0:b0:7b6:e126:3dee with SMTP id af79cd13be357-7b9ba71292cmr244460885a.3.1734732360440;
        Fri, 20 Dec 2024 14:06:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEHDi1i1hytvqYgiaDYCCC63bgwu6iKUJ6GlNcbQHn3uxugwlsISW/jSe1exPxzhd8K+GSWew==
X-Received: by 2002:a05:620a:17a0:b0:7b6:e126:3dee with SMTP id af79cd13be357-7b9ba71292cmr244459385a.3.1734732360111;
        Fri, 20 Dec 2024 14:06:00 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a3ebsm2100297a12.7.2024.12.20.14.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 14:05:58 -0800 (PST)
Message-ID: <2d1570a2-511a-4200-b4cc-60f56cfe4423@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 23:05:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 1/5] dt-bindings: net: wireless: Describe ath12k
 PCI module with WSI
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241105180444.770951-1-quic_rajkbhag@quicinc.com>
 <20241105180444.770951-2-quic_rajkbhag@quicinc.com>
 <9cbdca90-e76c-4ebb-a236-a0edbd94a629@oss.qualcomm.com>
 <62c599b5-20b2-4e1e-810d-e4502abbc682@oss.qualcomm.com>
 <768ef22a-855b-472d-9432-49db7daaf2df@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <768ef22a-855b-472d-9432-49db7daaf2df@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 4gWVs33P1DevTDsYIW4QJ7ZbtRml4twp
X-Proofpoint-GUID: 4gWVs33P1DevTDsYIW4QJ7ZbtRml4twp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 spamscore=0 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412200178

On 20.12.2024 11:05 PM, Konrad Dybcio wrote:
> On 20.12.2024 10:47 PM, Jeff Johnson wrote:
>> On 12/20/2024 12:03 PM, Konrad Dybcio wrote:
>>> On 5.11.2024 7:04 PM, Raj Kumar Bhagat wrote:
>>>> The QCN9274 WiFi device supports WSI (WLAN Serial Interface). WSI is used
>>>> to exchange specific control information across radios using a doorbell
>>>> mechanism. This WSI connection is essential for exchanging control
>>>> information among these devices. The WSI interface in the QCN9274 includes
>>>> TX and RX ports, which are used to connect multiple WSI-supported devices
>>>> together, forming a WSI group.
>>>>
>>>> Describe QCN9274 PCI wifi device with WSI interface.
>>>>
>>>> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
>>>> ---
>>>
>>> I think this description is missing the key points:
>>>
>>> * what is that control information (power, data, radio stuff?)
>>> * what happens when the OS is unaware of all of this (i.e. what happens when
>>>   we don't send any configuration)
>>> * is this configurable, or does this describe a physical wiring topology
>>>   (what/who decides which of the group configurations detailed below take
>>>    effect)
>>>
>>> And the ultimate question:
>>> * can the devices not just talk among themselves and negotiate that?
>>>
>>> Though AFAICU PCIe P2P communication is a shaky topic, so perhaps the answer
>>> to the last question is 'no'
>>>
>>> Konrad
>>
>> We already pushed the non-RFC version to our -next tree so we cannot update
>> the commit description without a forced push.
>>
>> https://lore.kernel.org/all/20241211153432.775335-2-kvalo@kernel.org/
>>
>> However, Raj Kumar can submit an update to the description in the file, which
>> is probably the better place to have this information anyway.
> 
> Sounds good

(although bindings usually land with Krzysztof's or Rob's review tags,
but that's between you and them to talk about now)

Konrad

