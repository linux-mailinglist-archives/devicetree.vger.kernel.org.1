Return-Path: <devicetree+bounces-166589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4C7A87BE0
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 11:28:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA64B7A2684
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 09:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C479B2641FD;
	Mon, 14 Apr 2025 09:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o0kSTR02"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5710925E808
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744622920; cv=none; b=U7BFgEbNDM4VfbsPJcU4o6SjFL5/XfcyGeYwgT61uFGtzfwVv09dyuGmhOVbu2RIEmxXQXEE+0pvpcR330i5fQIoWx6dA7EbcH6zpGBF06G5SN8cHK0rcg8wwJ+18luNteaPGuVhmh2ylR1vLj/j9PaTuSj2gblhHEouWmqoWYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744622920; c=relaxed/simple;
	bh=p+SXQbXpWY8nrFUTHgArld6DddwBE1LEIAWnhEzPGRg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bb6iQZiEoIgCZM6upAnARbmSwrj9mpntwICS/991aueRctxuL14UYMm1cENqPI+io12ZiaJbQQL99DufW8st0EvEoUbRMNxCGLwa2B0CBTKo3qv4Q0w+IHuT2z6dGesCSjqibXNMqoIze/cD+Bfncefl/sgLWJEvER9E2iHY8a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o0kSTR02; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99o5Q031346
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1/tChIsO+AfaAF6VSG18Zad4p25Eyylh9VoM+tiR1XI=; b=o0kSTR02vhkBdUmU
	6YMvf7ddPQjws8Tdnq0BEf6/oU2rAw+jBAGWCSYj/jTfmmUAbxqOEgqFgTcOaDdE
	smGdD2PYh1trG/zOTVAMr1DtWaO1OeXF+UpF7rPhpI952f2WaDAUT8u9KlUejbC5
	8uYdDQtdvuwAXFS/FsSbKJNmZVbWKHZji+IXuGUVjRLmY5MMdmD0+66AHZwPBVdf
	XbqPBYDQ2vvVGaMty0598RfT3SWgJokRq6ZxJbhOE5Ed9H+O9+uJz3Xgb6O+Z2Us
	DtSyGqArq2J5yI+5X3ccPkWkfToG9c87gYMQpVx6JiSCUSltTp6vfgPEiOn1i4du
	EcKhVQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxjuxp3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:28:37 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c793d573b2so767570285a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 02:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744622916; x=1745227716;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1/tChIsO+AfaAF6VSG18Zad4p25Eyylh9VoM+tiR1XI=;
        b=JoVpH4cYKL+TOYhEmTEYYhlyKpo7PWraC7XuDY2Z3Cs0krEW4n+mbsaEoEtD4RM6dZ
         /HY0ch2PEFLSrOXxXpa4BeMDZooZYtHkN+DWMkMwB8Mo7A03vrjFN/N3bZhJmYEXjHel
         DA0IO6yQtlmGM42tpDvM7N399l+V1Z6WabgL3e/tCuZuKchxYe3z5X9FKIB5HmWSvssA
         ZURHrwl9oVIqxIHtGkYcXAiGmAbMs4sihYUsvvY9fH0rJ1E29bt5GuHWAMBCnn5PAp5x
         cyIzLJoHdN8T8QzcqhTLnzjRNOtILJnv2+/MrOv1Tk2WOhB4CY5jJ4UUcd6koXV6hyB4
         wLDg==
X-Forwarded-Encrypted: i=1; AJvYcCVrCDgc+/BYKwylXa3eToVAKeujfWl/e/0/YzCSC41fcggATCO9z0YSHSSQgZyNDAAVRULbAfTB4Qis@vger.kernel.org
X-Gm-Message-State: AOJu0YzARvrZ9zEYnzwzbHWRlY+G9BpbWwLFBRygJVrCmO2vQ59zbBlk
	1U3rd75AESqCRafy7+KUUqPB0x4iT/bppohlcy1LBg0tplAI+Oe1da8ZSpEkb0p4NzY2KjDwwbN
	ErT8LJS/UKXnJp3YTyhG7iGbleCWmtOglpxHimn5sS9a1+3yZ9Cw+LmLJH/Sw
X-Gm-Gg: ASbGncvbRy9R6fsp3R6LsIHVqhmPSZLP0OYzfXI6cG9Zjmw1sw87RrHXLy1+NgVx7FX
	65eyv4XSQcuRvx+aRs85HVfN1lc0IlIXe5e4nL+wH64kPUudChWyP5O3tAlg8/01GNnNsI6JZco
	t7E42XTioN9sW6DZ/DpPJhTGoQYbC+rtcwSfPisNdounfMPY22jNQR1jMF+Rl4K9gxSuLJVtH1D
	JPmk4NsXj6dNk1uHrIkDo1c2PI5VrUK4Pf3t9wo5A7IY3lP3DfEwQiaD+ksnS88uTZcm4WOpAZW
	QrYA7flOHNAW8zaNjap/ge1OHh2IIUGcJGubG7YvHpG/edvmbzhmjUza1pQqdEddu4BxoeejroX
	SLxocf20CUzsfTc8wiA4wz7L5GgD3r0HYEE4PoXtGUG60rcVbFfiFJSGyDKVW
X-Received: by 2002:a05:620a:2a07:b0:7c5:f696:f8e5 with SMTP id af79cd13be357-7c7af0cdb43mr1407180285a.14.1744622915987;
        Mon, 14 Apr 2025 02:28:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiGrpwkmGI1qGb6G96gQavHJhSrEGo7mCvhfYx3430oMZu4pJJtylHsiSrBskfpxniPNKTuQ==
X-Received: by 2002:a05:620a:2a07:b0:7c5:f696:f8e5 with SMTP id af79cd13be357-7c7af0cdb43mr1407177485a.14.1744622915366;
        Mon, 14 Apr 2025 02:28:35 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c3:3f5:600b:83a3:2692:ef99? (2001-14bb-c3-3f5-600b-83a3-2692-ef99.rev.dnainternet.fi. [2001:14bb:c3:3f5:600b:83a3:2692:ef99])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d51e147sm1037886e87.226.2025.04.14.02.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 02:28:33 -0700 (PDT)
Message-ID: <7b664533-ca6c-4d4a-a793-0c3961724d09@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 12:28:31 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v5 1/8] media: qcom: iris: move sm8250 to gen1 catalog
To: neil.armstrong@linaro.org
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
 <20250410-topic-sm8x50-upstream-iris-catalog-v5-1-44a431574c25@linaro.org>
 <vhfuhjruok7gupoeo2uloe525k7oycd5gkh67zzz4wbiwrczpt@i3qknymfu4px>
 <f637965b-dff5-45d4-b6be-de8c68c6c397@linaro.org>
 <gkgd7gelin2hbkm2ltsifibxs6laluc66yx5k5uupfa2p4sswc@ypkyrj25njew>
 <d7241218-388a-4749-a4c7-fafd9b10f352@linaro.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <d7241218-388a-4749-a4c7-fafd9b10f352@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67fcd545 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=GmHQQg_rlXLpeqUa9FIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: mzmmAhYUbohx1rCRjtg6wT07elPRb5cD
X-Proofpoint-ORIG-GUID: mzmmAhYUbohx1rCRjtg6wT07elPRb5cD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_02,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140067

On 14/04/2025 12:07, Neil Armstrong wrote:
> On 14/04/2025 09:39, Dmitry Baryshkov wrote:
>> On Fri, Apr 11, 2025 at 10:14:02AM +0200, Neil Armstrong wrote:
>>> On 10/04/2025 21:44, Dmitry Baryshkov wrote:
>>>> On Thu, Apr 10, 2025 at 06:30:00PM +0200, Neil Armstrong wrote:
>>>>> Re-organize the platform support core into a gen1 catalog C file
>>>>> declaring common platform structure and include platform headers
>>>>> containing platform specific entries and iris_platform_data
>>>>> structure.
>>>>>
>>>>> The goal is to share most of the structure while having
>>>>> clear and separate per-SoC catalog files.
>>>>>
>>>>> The organization is based on the current drm/msm dpu1 catalog
>>>>> entries.
>>>>>
>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> ---
>>>>>    drivers/media/platform/qcom/iris/Makefile          |  2 +-
>>>>>    .../media/platform/qcom/iris/iris_catalog_gen1.c   | 83 ++++++++ 
>>>>> ++++++++++++++
>>>>>    ...ris_platform_sm8250.c => iris_catalog_sm8250.h} | 80 + 
>>>>> +-------------------
>>>>
>>>> I'd suggest _not_ to follow DPU here. I like the per-generation files,
>>>> but please consider keeping platform files as separate C files too.
>>>
>>> This would duplicate all tables, do we really want this ?
>>
>> No. Keep the tables that are shared in iris_catalog_gen1.c, keep
>> platform data in iris_catalog_sm8250.c and iris_catalog_sm8550.c (and
>> later iris_catalog_sm8650.c)
> 
> This won't work, we need ARRAY_SIZE() for most of the tables

I see. Can you do it other way around: export platform-specific data 
from the iris_catalog_sm8250.c and use it inside iris_catalog_gen1.c?

> 
> Neil
> 
>>
>>>
>>> I want just to add SM8650 support, not to entirely rework the
>>> whole iris driver.
>>>
>>> Neil
>>>
>>>>
>>>>>    3 files changed, 89 insertions(+), 76 deletions(-)
>>>>>
>>>>
>>>
>>
> 


-- 
With best wishes
Dmitry

