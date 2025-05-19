Return-Path: <devicetree+bounces-178639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3DCABCB16
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 00:44:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83D8417A6A9
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 22:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17EB021D3D9;
	Mon, 19 May 2025 22:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fSUyTXP0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5469021CA03
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 22:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747694645; cv=none; b=ozw5EdF6WdqjjVZDvXVogCvuFfuiL3zm4BSPfuDBC7/6bcDcF8WdFwiz67QUqC1rp28zEM7IEeaIygHhzIhiryGgYuC094isuypStXn8W8igUfp9TzW4SIc5078v5Ix8TWa3WUe3RxXcFZEKAUGXvd7qH8oCJMAHIZBFKOMQ4XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747694645; c=relaxed/simple;
	bh=W08Jo+9FHd07kDbDBftwTug+2s2lcmnYyG8VcdD/muQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j9v6sPhJDMvuFOuZSeiBCSbfbJNTazNBDKiepbeOdAoh0+rRcVh/TDDX/Q1wp5FIfrf/iekkouwtOTMZVJ4ExwSl4b1rTClBD/9qCe26oibp1t1pmZorVZmcWrzV9jLaeMlZHD7OyW//vFeApt3nyAKqVARLq6H9Uq5Tpinj/Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fSUyTXP0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54JHmnZg002941
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 22:44:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4B3h1KneRsR4g4P8DoAhcb5VoEzgECZqghlNOYZOMuU=; b=fSUyTXP0wQdu3qa6
	NSZ2pz+xtkiPjjuHJ5zP6gekDpFkkVLJFqjIFDf0n/bQCDeNkjrHXx4vvZ21oOCY
	sYKydzjoTJebqU1GuAzz+RCEqmSkV7BWPFz/09QFqPMpq2UyauS4MHrt/mvYUDc9
	i9FyChWzyvh4hmAXExD/rG/+Pjr8j08EcbWnda/aiYhYxSkhbT6DbO48r/A51aYh
	WaVfA/4vNyvXpdOVp9akIqp4HH0nrP7h+bvwkKa9XSrgSh1r2PDrc8X9FMl+pv2W
	wBnJh1H3BCQ2AVNNhHzeptA0CD0xQQ4ckKAG4ZZMWv6uSvtOTQ1q7b9a0j3FRqgx
	MlueGg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r1atj3mh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 22:44:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f2c8929757so15029216d6.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:44:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747694639; x=1748299439;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4B3h1KneRsR4g4P8DoAhcb5VoEzgECZqghlNOYZOMuU=;
        b=ZKOY0pUxOnXJekLYxFJ09qkrwYw7bZk77AyLYfc+6gyen9SuAMGn+znp9c8oaIiU2q
         hSAddOVj1LyTF+hWIxo5tdoK7OeqQem9PtS//uV0GsMXqPk4jDgQ/pXyx/ydToOz0tmr
         zVf8B2axgbFzUMbP9zKKI/DgUjZj6J4SCSogjSOXxJE1JBgwVvWVKdsdK9+C4FPJKLrg
         8Qq/ROHXJ8xn5LLMDBft3lHGxnL2laOwpNEvbkFq6PWe5S5c9JLsLv37a9gaaUyGgMU0
         G+i+azCl2pGgT19lqsSIT1HirsKHnRyHi1Q5seZUc0MwYMxwOujEfP11namxlXv/QiVV
         ijqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlv5iAnfHmdyFWPx1xWnbTPz6YBxHqwe4Ajxc72KimbmL9cVwrTtg4+dFoRAW3nLHPMe6cb8blHRmW@vger.kernel.org
X-Gm-Message-State: AOJu0YxGtcNTiHxJR0h3HDGyylSeThRkqpWKLbPopbP9vRwxMUcB/4an
	EkMjE3J19E+63EED0mxC7gRV1UyoJmn5eg1wmbtY6D2JyeoAK7NFgPpgvhlylFEcMuLe8SJQHyw
	NWRsJEZetyk1WTHHedOiJY/mV2PeB1DhGLGtOyhTlovJfORtAsGXBckjgHHJU0qkZ
X-Gm-Gg: ASbGncu4HDNNGmTOmDiUEfNLCuwdy5TkRaoa+/x2MYlEvIz5ADqQapy5XLlfn6qn5C6
	5eNSV/DnMQCpSnxL4jFio8rvFUsS5oq5/B01QN+b5HwV114EJeToVerJ5jpFX+JiuY5eLvskd6F
	lTNAr2kFHzne+Uqv2ZUqtlsi99/GYmd5rfTzyFfgVX5J89JhtvpZ6vmmFeOOCDPtKz1QGANlEnS
	RqtqoVmautxmqp7ACPQ94jQU1/Wf1U+w5MfPjtvgwTajqhuZi4sIvYkk/mCOijiQikggnlayfNp
	mUITtyyMT6fxgrZEQ/rcS0E4UYGjyZeF+SQthnTDNZYcrUQsmpGQ2k4cKudwkggeJw==
X-Received: by 2002:a05:6214:2e09:b0:6f8:b1e9:e5df with SMTP id 6a1803df08f44-6f8b1e9e6afmr67305456d6.3.1747694639349;
        Mon, 19 May 2025 15:43:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIcNvJxTpaX4aSwxX8+XLPauKtBWB3PQV78lz2duPuZaNPM5o3XDBuZzyTejxUixxBkLYQYA==
X-Received: by 2002:a05:6214:2e09:b0:6f8:b1e9:e5df with SMTP id 6a1803df08f44-6f8b1e9e6afmr67305326d6.3.1747694638927;
        Mon, 19 May 2025 15:43:58 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4e8afdsm649638066b.176.2025.05.19.15.43.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 15:43:57 -0700 (PDT)
Message-ID: <3fcc04b8-42b5-4715-a2ea-815b7c4808a1@oss.qualcomm.com>
Date: Tue, 20 May 2025 00:43:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
To: Wesley Cheng <quic_wcheng@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>
Cc: Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
 <20250409-sm8750_usb_master-v4-6-6ec621c98be6@oss.qualcomm.com>
 <Z/exOF4T+0vNLQwg@vaman> <0517c37d-b1ba-466e-bffd-9f47b0d458d5@quicinc.com>
 <aCRVaNDQP/PdAXPR@vaman> <5183b76b-8043-4309-b25d-e1ae505f929e@quicinc.com>
 <6fa4959c-d733-4d50-904f-caf933e02da9@oss.qualcomm.com>
 <f3727b53-8da3-d4f6-575b-108a8d6898e5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f3727b53-8da3-d4f6-575b-108a8d6898e5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OfqYDgTY c=1 sm=1 tr=0 ts=682bb431 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=jJrOw3FHAAAA:8 a=VwQbUJbxAAAA:8
 a=7CQSdrXTAAAA:8 a=9j9lLQFCJERsiU0aoWIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=-FEs8UIgK8oA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: tlEC9tbU0eiLl5PPMtKZGwNBwtZg7Lnm
X-Proofpoint-GUID: tlEC9tbU0eiLl5PPMtKZGwNBwtZg7Lnm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDIxMiBTYWx0ZWRfX4WaTj11nd7el
 dRqgQMouoieL1IP+8qgJ5a61FoieQCvBesnsSQ5fCS0lcvbHBJtTwiLqLrrSbxinXFFtr057OgP
 1vjDPTm4+nqqRMdYd3wYrevKSRH/SPqmO4oFIdyGIm8oH+arcN0xA+Y51D0T+LOm72q1BobrZuA
 Sb6ZHU6qyET48XO2wf/XQYAHTWk4rgMEHqCU3b99wR5CZB1Q93QLxSMOiJqi7K0QDAKfq1xQXlj
 dvmAMxwXrMPRvtZBM7/0eYdfuF2cZ4LYnQU/V8vOGKylqR7eulTTiztv+mLqIqGCAHsio+2KMst
 xxRGNmtP9S0/3V2FyCKzTB5lK678QR7kDtshP5FSioE4qOOQQMGx4jvB9ARj/S19BNX/R66uSc6
 91hYnfbeXbVV9zTS4KdQaabqmil3ipXGWHNKyCqxySYGsrf+Wyza3mY8TsJ5ZaJhLibb/X1d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_09,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 spamscore=0 mlxlogscore=999
 clxscore=1015 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190212

On 5/20/25 12:04 AM, Wesley Cheng wrote:
> Hi Konrad,
> 
> On 5/17/2025 11:28 AM, Konrad Dybcio wrote:
>> On 5/14/25 8:24 PM, Wesley Cheng wrote:
>>> Hi Vinod,
>>>
>>> On 5/14/2025 1:33 AM, Vinod Koul wrote:
>>>> On 16-04-25, 15:45, Wesley Cheng wrote:
>>>>> Hi Vinod,
>>>>>
>>>>> On 4/10/2025 4:53 AM, Vinod Koul wrote:
>>>>>> On 09-04-25, 10:48, Melody Olvera wrote:
>>>>>>
>>>>>>> +static int m31eusb2_phy_write_readback(void __iomem *base, u32 offset,
>>>>>>> +                    const u32 mask, u32 val)
>>>>>>> +{
>>>>>>> +    u32 write_val;
>>>>>>> +    u32 tmp;
>>>>>>> +
>>>>>>> +    tmp = readl_relaxed(base + offset);
>>>>>>> +    tmp &= ~mask;
>>>>>>> +    write_val = tmp | val;
>>>>>>> +
>>>>>>> +    writel_relaxed(write_val, base + offset);
>>>>>>> +
>>>>>>> +    tmp = readl_relaxed(base + offset);
>>>>>>
>>>>>> Why are you using _relaxed version here?
>>>>>>
>>>>>
>>>>> No particular reason.  I think someone pointed this out previously, and I
>>>>> was open to use the non-relaxed variants, but I assume using the relaxed vs
>>>>> non-relaxed apis comes down to preference in this case.
>>>>
>>>> Nope you cant! There _needs_ to be a specific reasons!
>>>> When you are doing read, modify, write, it is very important to know the
>>>> right version to use...
>>>>
>>>
>>> I mean, its a write readback, which ensures the bus transaction is complete
>>> based on [1], hence why **in this situation** it is up to preference.
>>>
>>> Otherwise, w/o the readback then we'd need to ensure writes are made
>>> depending on the required sequencing (in spots where the sequence is
>>> strictly defined), and that can be enforced using barriers.  If you feel
>>> like using the non-relaxed variant is preferred let me know.  I can replace
>>> it and remove the readback.
>>
>> Readback is stronger on arm64, as otherwise the writes may be buffered and
>> not observable at the other endpoint even though the instruction has been
>> issued, even if a barrier has been issued
>>
>> Some resources:
>>
>> https://youtu.be/i6DayghhA8Q
>> https://lore.kernel.org/linux-arm-msm/20240618153419.GC2354@willie-the-truck/
>> https://developer.arm.com/documentation/ddi0487/latest sec B2.6.9
>>
>> There's been a real bug observed (pun not intended):
>> Commit 2f8cf2c3f3e3 ("clk: qcom: reset: Ensure write completion on reset de/assertion")
>>
> 
> Thanks for sharing.  Useful info...The way I interpret it, even between relaxed and non-relaxed variants, a readback is always desired.

Yes, and IIRC it didn't exactly matter which of the parameters was set
first, so we can use relaxed

Konrad

