Return-Path: <devicetree+bounces-250149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BE6CE685E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 21C2E30078AD
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC72E308F3D;
	Mon, 29 Dec 2025 11:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FfPfSQtg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K7xZC+xw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A2E2FBDFF
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767007664; cv=none; b=P1XluT017nYZR+fPIxGOMlVHSl7vbTihzDuz8bOheKp3rDstNIMq4x+j0Ca8vzenI2kz4VvQqY/Og3PUyjuf8QMwUplI1MnfMqiZj1xyWyP7MsMrXzRmnqomZvf5z+FD7ziwaPD/Q8aKd1a0sBQKLfg3rLWJRI9rnFZkVSbF5jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767007664; c=relaxed/simple;
	bh=WObA+dks64xaEtrytbG3j5Rv/oJhqbmRhFv/A9hCTAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jOGqwq7+pA8MxPio4jVfxMAGau01b2dFAk85iE30EbF3Sit9lfzLNAEObNcOuT/8USUW7XLwX6s5p1MzUSEAmgh11j9+EEw3iMwDUQ6IkXjPJokcEGBmVemDxkjghcYokFFqMRya8ApqRrhSg0N9UrXC25kIbs3F32eOMx1Nmg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FfPfSQtg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K7xZC+xw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTA6m8G052941
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:27:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3syCLiEhrdZKGo9br19+DmfUp0rg1BL4EKlnIdrz26A=; b=FfPfSQtgzjI422fT
	mqOjbq0OVIDPtYztQqeBYy1rCkRqTuT6HecrY52L+BX5e4u9U45RlsSC3S1ud2ss
	9NTXF88EI0yWltSyPGXb7tfoLkpiP75An6PJFLHcmbQcTP1fs9QNoGSkBt1jjLgS
	kIzubHELqFg4pXNvI24dJ401Loh9/EN87alm4lE9jK/W/+qUi6IkIMl1uPY65P0l
	0Ld9wBtNcTSVQCUXiYYHPQ8eALEUYQA5XzvBxI/awifUU2GYHHhCTkHcs5mjQtFa
	aM3gs3SBufejNH0RAHR2Ye7x9ZtIHh2xd9TzNWa0MPEXrqeiGaxy5z81qh7wp06k
	YbxXRA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba71wv6v2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:27:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f34c24e2cbso30610481cf.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767007661; x=1767612461; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3syCLiEhrdZKGo9br19+DmfUp0rg1BL4EKlnIdrz26A=;
        b=K7xZC+xw3xxq+2JsXufBHm8/lUcZ4L/K9w2QQoYMdDIUQqlsWrPFAH2naXk6mjM065
         GkNfD1v9wJl9YJkaTSoJJaoIuSu826pwvJVUZ/LbE8z0W7jJGyHIWI75gInIvdJ4eZEE
         LipKYdP9ZeOROk8OAfjGGY0RIf94k+vxzgYKBd1roaae/2R2GHzu8ReFJayxcyl9Ag3E
         YyrOAfiDWD0NPzkI4XSYQvcFsNxMtPJHKOVWo27rrGuorRH8VCIN7peE7pN7kBfotTQd
         pMf9/AAgrVPA82wLE1fqPgyqNDnqng4A/LguE6gjjTuaG+RNSh30pYmsv02wHaXbDlq4
         dCFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767007661; x=1767612461;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3syCLiEhrdZKGo9br19+DmfUp0rg1BL4EKlnIdrz26A=;
        b=ik7JD8xvmkqU3LgYqN8sAMGf4G71ofIzEhr6JhLjvPjtmLLI+SFN+tfrkFokPPCWl6
         5cu3wUpiJxsv4j88o3qVYAX53dh6kfkzEB3ouy+9ldSWFOOVtxszOiINTcCxgk1+22Z4
         tGS1R+FUA5hwXFGK/4kRNi1eM3HMiGqhyngrI4DYZT/x+ZNhBl2i+CivGj8Ft42pW5Dp
         K/ySn6aAx3OTvL/w8fVLV+YGVgd0eqZ8oiEhgXmWSIN+LHrtKl4eaAOr34uKWAoFWNem
         S6VHbExZt4SBvpJ/LYzBp189yU7JOYz+AgIrWyLLWjOwEesU0pFjwqDgXCAfcmEKh/X9
         ZUOg==
X-Forwarded-Encrypted: i=1; AJvYcCWySYYvSjj5gdrZ2iMWB/OpeVJWqZ0Z33RlooH4cdu5J8pxX/bYtQFXe/OOQlHVCKsOEvtDskhQRIJD@vger.kernel.org
X-Gm-Message-State: AOJu0YxPnIYgxjDe/oq2r9z+QprzpKHILPZvVwP4XYutYxFlXh2yjSmn
	6F3m9olLNGYbMY5EIEsA4MMBQviC5XHVvIUpmwbtXFada5uePZVk6pmRrYk4IWwNNGy4Dhj4YGx
	ym+ijjuPLc1yeob7IrpJ8VKC6q2i80rnf5K+ytIjkTCX6H7o14sJbT9HEOm9ojgFV
X-Gm-Gg: AY/fxX68sRRcITxUqSlMd+WkayoJ+Nc7qSvKnj9pNer+kjGen8BCsHT8lJgshS/bReP
	/48iiVmUUpWmfEGiBgnae5AviDItp41LTTe6KORphQ5C6rdWiur90fHOmuwcKL9FmVqUELp43KK
	H3rQ9CNRw51i9VEXg0JVT7phJoFr3BF/F0qHB01jZ1Qq7Ya+sfippFE/G/8RL7u2JDkSFOg+NTJ
	NMNkvM3ND52TZnlEiPZ79QKSK2305LSNvJen6EuWHKnB1LUF1zZlSF9W4MFTK1+cnj2m8yD4ORe
	t8dd1otcb7lralA0W8s5sEOpcfHz2r4cvHufQE5Lc1r+0BNDKdZWbTJwaZTBe5wtAe//SL964uk
	obSEytQncF7pDHvfXLdp+yNvkLDutINxh3jIbrXA9gquT8JtJqde/qBecqtRlfs5C+A==
X-Received: by 2002:ac8:66c7:0:b0:4f4:b373:ebf with SMTP id d75a77b69052e-4f4b3730f72mr230786851cf.8.1767007661427;
        Mon, 29 Dec 2025 03:27:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLYx4q6ZCPo7waNT1eWVSPZKEBNhfrRIO+LW9kl+WvbNPbjmEswyxWsnIaY21qfu3K5oiKNA==
X-Received: by 2002:ac8:66c7:0:b0:4f4:b373:ebf with SMTP id d75a77b69052e-4f4b3730f72mr230786801cf.8.1767007660972;
        Mon, 29 Dec 2025 03:27:40 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de004fsm3365178166b.45.2025.12.29.03.27.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 03:27:40 -0800 (PST)
Message-ID: <8cac29c3-6b05-479d-a06b-583f9def7beb@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 12:27:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
To: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-3-yijie.yang@oss.qualcomm.com>
 <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
 <b8f0e8d9-449e-4f32-832e-f1d5597ff496@oss.qualcomm.com>
 <6421f044-2b07-4518-9edc-b9b2ef49f4fb@kernel.org>
 <8bcf058f-5bf9-46ce-a188-e94954101f2f@oss.qualcomm.com>
 <4f79d090-7d1c-4fb3-a835-a7e4ff96f79c@oss.qualcomm.com>
 <448f2efa-5b1e-4855-a62d-2e375938b36f@kernel.org>
 <19f46c69-fbfc-4129-98ae-fc5aef3f75eb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <19f46c69-fbfc-4129-98ae-fc5aef3f75eb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEwNiBTYWx0ZWRfX4SVxavw4RjSX
 wbitrmZe1j+YqlbM/nMFeRtAUrs8EyfvZf3KhFD8gBhjYvQxCFJbdvvt9UkUDpYBtrea3uHWT8T
 fwY7PNSmI4XTKM02P7Hbb7jDqMouwPM8UL4m6yKV3I7JsOj6VQsE6z3Ps6bgI9T5eiyG5LpNqQq
 2t//n0IO4Yu6LjZOU4acBNjzOe1vUf3QVLmCby5Alh2ICNHdUg5Ekzgd15fcgJhQ7fPzOpGtcx/
 gmM3TlbHgSWdLpDvozIDJLc39mNX01BlOuggZWzMot5PqokpVEewE2b5OXPUWmA5m0YtYuC3BXw
 AzCtVZwrkcCsXFCpcfut4QWqFl/XlF1jden23hApJZzQsoWYyTORPZFzrrOHV4VTh2fCYuSRdwJ
 Hd/cKenGIsHzsTH1LjYho3m0Df/pAfW7Ozz4/r7h796N9pXx0ySDjXqJf+npy3e58ilipk9y3Hi
 FESLl+0B+8wFh7NjEBQ==
X-Proofpoint-ORIG-GUID: jeoEj1rANiNCiUGFbbZ4W5OLRWL473ez
X-Proofpoint-GUID: jeoEj1rANiNCiUGFbbZ4W5OLRWL473ez
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=695265ae cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-EYVSfHI5QxSVCcxwr0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_03,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290106

On 12/29/25 11:19 AM, Tingwei Zhang wrote:
> 
> 
> On 12/29/2025 3:21 PM, Krzysztof Kozlowski wrote:
>> On 29/12/2025 02:23, Tingwei Zhang wrote:
>>>
>>> On 12/24/2025 8:12 AM, Tingwei Zhang wrote:
>>>> On 12/23/2025 9:41 PM, Krzysztof Kozlowski wrote:
>>>>> On 23/12/2025 04:38, Tingwei Zhang wrote:
>>>>>> On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
>>>>>>> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
>>>>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>>>>
>>>>>>>> HAMOA-IOT-EVK and PURWA-IOT-EVK share a similar board design. Extract
>>>>>>>> the common components into separate files for better maintainability.
>>>>>>> SoMs do not share actual hardware. DTSI does not represent what looks
>>>>>>> similar to you, but actually common parts.
>>>>>> Purwa SOM board and Hamoa SOM board share same design. They share same PCB.
>>>>>> The difference is only on chip. Purwa SOM board has Purwa and Hamoa SOM board
>>>>>> has Hamoa on it. 
>>>>> I do not speak about boards. Read carefully feedback and respond to the
>>>>> actual feedback, not some other arguments.
>>>>>
>>>>> NAK
>>>> In this change, the SoM hardware except SoC is described by iq-x-iot-som.dtsi since it's common between Hamoa and Purwa. Hamoa and Purwa SoC hardware is described in hamoa.dtsi and purwa.dtsi. Hamoa-iot-som.dtsi includes iq-x-iot-som.dtsi and hamoa.dtsi. This change could reduce the duplicate code and review effort on a totally new purwa-iot-som.dtsi. If we found any bug, it can be fixed in one common file instead of two separate files. Same idea is used in x1-crd.dtsi. X1e80100-crd.dts include x1-crd.dtsi and hamoa.dtsi.
>>> Krzysztof,
>>> Please let me know your opinion on this. This could be a common case for
>>> Hamoa/Purwa boards share same PCB. Share same dtsi file like x1-crd.dtsi
>> It's not the same PCB.  You did not really respond to my first message,
>> so I responded to you - I do not speak about boards. Then again you did
>> not respond to it and brought some irrelevant arguments.
>>
>>> would reduce maintenance effort.
>> Does not matter, I do not question this. Why are you responding to some
>> questions which were never asked?
>>
>> DTSI represents actual shared physical aspect and you cannot share SoM
>> physically. It's not the same PCB, because you do not have a socket on
>> the SoM.
> I didn't make myself clear enough. The SOM PCB I referred here is just the circuit
> board excluding the components on it.  Let me rephrase.
> 
> Hamoa and Purwa SOM boards have very similar hardware design. They share
> same circuit board and most the components on it. The only difference is Hamoa
> SOM board has Hamoa SoC while Purwa SOM board has Purwa SoC.
> 
> I agree they are not same PCB since the SoCs are different. 
> 
> However, I still think it's better to use common dtsi iq-x-iot-som.dtsi since their
> hardware design is very similar. 
> 
> I'll invite Konrad to chime in here as author of x1-crd.dtsi and Qualcomm SoC
> maintainer. I think we are facing similar case on purwa evk and purwa crd.
> Align to same strategy for device tree topology would be good.

Hamoa CRD vs Purwa CRD are literally a just a SoC swapped PCB as far as
I'm aware

Konrad

