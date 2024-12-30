Return-Path: <devicetree+bounces-134774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EEB9FE7A6
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 16:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9E903A19DD
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE371AA7BF;
	Mon, 30 Dec 2024 15:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YiuZkCiA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438091AA1D0
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735572969; cv=none; b=i0Qewekjy+rpwrDxnRtWfu/NrNAwTfvzhZfTMo8bZ/PjvpjZ/+kvG9MXHYEJEiQ7aMW1xzjyDamtM64iwS6pOjQuI8Y16+NbESKKBw+8VaJL+ujzfEBqCIdbVua7UYp9FSrcBZemaN+6MYBCr6cPWSD0EDIvmY9ziPuqTr6guJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735572969; c=relaxed/simple;
	bh=wkeG7P4UChRzJtrhWCiRAM2V3yJ4AXjEyMvJFckL1vg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=syxWnXQ/W1yXtkYGL23m4WW13hMjwnYaxjq8VB+3xzSXrAzDtnQVe3d5T0u5xW0KESfAhyPXJQx7d/s+uyQ4g26qy/IJNYUcSMQRmRucvpftbz+AZqmSzls8Xu0L1yU+QmEz7O+VoX4SykWyCahuxZX17oVzajMWgIPf1M4HSKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YiuZkCiA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU7GIKt028140
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:36:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QlRM+Tt9HfLWUo5Qja07NOP2unyO6boK9jX6MFLYbss=; b=YiuZkCiAgKoaSu6I
	T7wuFOM30jnPMCFlD/2Ycy1t2gju+g9FFZkeU9CmrAq8s5rgkLxKjKbHa9VD4oMq
	gKak7txiI99BvXno+E8spyxdFRJVo+cEAPskuIlel7hcLRC2Uu6GUjonHjgspvu2
	mDAVHYETYJ8wGRFPIbRHsKZQhDqtVxERfx4tp+1z4FsoWhftT7XGwRGcB0BAqSDK
	xjQfF7THQ2jdRNKJ8pMz3KvNyP3fmo/7EEXf0cMwV8xydSZjuBW+tp1TVzkTzYu5
	cf6v0LkMk8Yd+GuvvVpnTpGfIJT0mdtNva8AimAjzD1QFqTjWjrAPn5AmVl27RZv
	zdJ4bw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43upyr90u5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 15:36:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6faf8b78aso99970985a.0
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 07:36:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735572966; x=1736177766;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QlRM+Tt9HfLWUo5Qja07NOP2unyO6boK9jX6MFLYbss=;
        b=wZHYB1gA6ujs973qOcSqgKyGosnbfkUQdN2FM7BtS/O6v0hDEHWfuPwJJ+1Td+ezdc
         VQI4Zd7JjPEL1RSj6ziZacxGNPuEi1Ceau4boBOJn9K6D6tPhHREFVkXpHsUC3TeDTW1
         wsuxhYdsRag9JlH/xpU/9DHeJmZb/nJDA0AmtXWIUfXK6NOBgjo5JXS9pRxMv5kUvd0N
         Kx1NpSoQpxpQ+c2Pd6De6wO/yvQuriYX0IVyLBXXLmckn42VRQUClLjRoYA/fXMU+zSe
         x0hkx6c5ORJ73TBEOzoI7FqCyy3/EGw+Dw5Q69ruD9/y/CcRSz8gn5MYIoliW+bg9cHH
         xSQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBsmFSsKm/vJI6S3yYQOOJP4stBg/mfZiuACG7SDqwgHHQZaYs91RP8+yI6as6uRoYkMMOvhqdLlfU@vger.kernel.org
X-Gm-Message-State: AOJu0YyptdPcDSImHzhlrJJxj7Fn4Pqd3rY8a2JwS7ZbR3px3U57B9TS
	Iw/BSxvkXEv+XfYTXTFH4jgCi4sCEh/byXU0UcE4KXulKJ1Klx45pP5zrXdGXhxkDaniN+2jbkX
	0KvTnauN4bEE2rqMnqYv3/J8jAQrf3ThJFR0RqeEhXQx/QoRlSDKMA0hA92pl
X-Gm-Gg: ASbGncshZC0ukEOBYXMBCsl5sPc182+ObYv0pgR8Amb5JEKKke8StMqWDep/SB9qO3P
	DI9wCMHrt7009SdIXOImCSZfxbKmfK9wqPstTgEYcFC95b834erEI5nr9DARUuH9Bo2o9nO69sU
	Is0YC3hp8Oki7zCk96gg/eIc2P4fKt8sLMTMjxIJ3OZAhxOhwU1fAB14jOVVbURwFomifPZudUR
	8MCGjYZ110DCCaSk2OVr+Az+veHDuoWxa6Mf6aeH10JXJDi5eohojEZmw85/HgpWzd+ouOwltjB
	8dbaofaiPOEUc39PDWGP9UlBa5H+ji4lfHY=
X-Received: by 2002:a05:620a:2496:b0:7b6:e61b:3e60 with SMTP id af79cd13be357-7b9ba742c0cmr2250330285a.7.1735572966277;
        Mon, 30 Dec 2024 07:36:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEi4DQS+Ey4mwcCBBrhyHtkNV/V1K4BRSDlma3sCc3zl5NHxwgFKp47MXICxUIytxfQe/LDZQ==
X-Received: by 2002:a05:620a:2496:b0:7b6:e61b:3e60 with SMTP id af79cd13be357-7b9ba742c0cmr2250326985a.7.1735572965855;
        Mon, 30 Dec 2024 07:36:05 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f01228bsm1477930666b.143.2024.12.30.07.36.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 07:36:05 -0800 (PST)
Message-ID: <34ab59a1-b735-44d1-918a-1b82954a4423@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 16:36:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] Add SPI4 support for IPQ5424
To: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Cc: quic_varada@quicinc.com, quic_srichara@quicinc.com
References: <20241227072446.2545148-1-quic_mmanikan@quicinc.com>
 <e673dbdf-9b16-4c64-a3e0-cf5bb31e2b82@quicinc.com>
 <d4875732-ec24-4e35-9a7b-af05c6ee7d4b@oss.qualcomm.com>
 <fbf019aa-e8f9-4169-9543-f85d2a17ce7f@oss.qualcomm.com>
 <52fa8219-0485-4fc6-8f3f-5759649057cf@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <52fa8219-0485-4fc6-8f3f-5759649057cf@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: MQFAgrMN1YoNblXav-rjF1u5WcjNlOEA
X-Proofpoint-ORIG-GUID: MQFAgrMN1YoNblXav-rjF1u5WcjNlOEA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 mlxlogscore=943 adultscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300135

On 30.12.2024 4:34 PM, Kathiravan Thirumoorthy wrote:
> 
> 
> On 12/30/2024 7:28 PM, Konrad Dybcio wrote:
>> On 30.12.2024 2:54 PM, Konrad Dybcio wrote:
>>> On 30.12.2024 7:51 AM, Kathiravan Thirumoorthy wrote:
>>>>
>>>>
>>>> On 12/27/2024 12:54 PM, Manikanta Mylavarapu wrote:
>>>>> Add SPI4 node to the IPQ5424 device tree and update the relevant
>>>>> bindings, GPIO pin mappings accordingly.
>>>>>
>>>>> Changes in V3:
>>>>>      - Rename SPI0 to SPI4 because SPI protocol runs on serial engine 4
>>>>
>>>> Do we really need to do this? If so, it will not align with the HW documentation and will lead to the confusion down the line. IMHO, we should stick with the convention followed in the HW documentation.
>>>
>>> +1, the clocks are called SPI0/SPI1 internally
>>
>> Ok, I looked at a bit more documentation and it looks like
>> somebody just had fun naming things..
>>
>> SPI0 is on SE4 and SPI1 is on something else, with no more
>> clock provisions for that protocol.. Which is not usually the
>> case.
> 
> 
> IPQ5424 has one QUPV3 instance with 6 SEs. SE0-SE4 are Mini core and SE5 is FW core.
> 
> SE0 and SE1 are for 4-wire UART and 2-wire UART respectively. SE2 and SE3 are for I2C protocol. SE4 is for SPI.
> 
> Since SE5 is FW based (some RDPs use this SE for I2C). In GCC block, clocks for this instance is named after SPI as SPI1.

Thanks for the explanation.

Manikanta, please refer to this in the commit message as well

Konrad

