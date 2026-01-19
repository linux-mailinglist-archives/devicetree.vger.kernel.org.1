Return-Path: <devicetree+bounces-256769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A864FD3A438
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:07:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2C75B3046D84
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35CCD3590DD;
	Mon, 19 Jan 2026 10:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ldw4GC3i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FMozhS6a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA2B3587A3
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768817094; cv=none; b=OcdFaBGHDNBzYGOg6WXaEXfm5B4yNiVOBiq7/gcT09weKag+670tnxj207IVh0Y6qtR49evF2J7NwDqIMHK6Pti5MEXYHUvLnHdlcsCF8WEq78oAdKGH9vAvN5oOHpHlbUHkh03yUJrzjgaelcUntPY6hEkAIxlT2iQWNm4fHnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768817094; c=relaxed/simple;
	bh=UzW5BW538QUV4Xa1w2zhDQwSa0wcN2mNavMPwQIaLcU=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=Dqkt2vRHrpLty5PvmeFOAImiFpzvuxwHfRkeLYXLjnb6mxGH4bC7uD5PHxbMWrYHG/RfqZFyFLTjtkEnQOFHKD/ylEML8ahSA1HX+dDnUNv+rrNDta7wtNdTGOUrVdu2Ndbj9Z35PvU2GDNj1XjuYTyocpkPlD4fX6iSwaAzRuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ldw4GC3i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FMozhS6a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J910l21044261
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:04:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1rZaqFYpKRESrI70ry9zhxOXqJuV68w0fKc0yfVt/8Y=; b=ldw4GC3iz3L/HFDP
	PehbzbZ+xOREoC3H51hwc00H/l6Hfw2+hcJdXjRHS+EHI/SjxLxdNasTECHYRXiN
	QJqoplEptAIxVkb3jrvVXycujyByIFZxSnDqS7x+7AytmS5YaWxGJQS970rICs/B
	2tVbwZmQcecTBTimK6Asfp432+X1WiiWPVFaqfr51Hjw4ySoKStF0M4SyciDbsWC
	QjnXQ45BUceJzMMgfvYNFANNOhPnW0xtfmBaxtZ1x/fmOm+4XtN1QL8NtvBdSdkm
	hpWwjwlL7f6XkyLZ13OoGqB+zU+Xiq2b0Oxgcv22DpyuCJGjvHO3F/8WjxEJOLY6
	Zcn4+A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bs79ehp22-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:04:51 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b609c0f6522so7668825a12.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768817091; x=1769421891; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1rZaqFYpKRESrI70ry9zhxOXqJuV68w0fKc0yfVt/8Y=;
        b=FMozhS6aDTGHMA8KLIXdW/8RcBq0T7y7RDZhomCR1EEOvI/rKl+wqGZmeUeuaoVIZN
         fa8M2M5+xOf9w2zfEiHJ4zdgkQXdzKlUpqNfrY4JDPpiZggjY8mxbWAsYNzi7F7lFZtY
         WAq9dyAjrbOyPsMocmLsHaRNY5wyYogzI1E8yNQSAqySCBoqMzHBHlFJ/8rTmygFWMVQ
         CiMUjvRvO/B9zXMuWohoASfnP07oMmGFHknpXoxkMOdD1VVMz7siPLkIti8ccZZJ9B0Q
         uv11tAvxNV2kFZ11kQ3ActuNBlB6kL9bIA8JzPo16wd+nqs9LsLZgfI2Nhfw5ReXR28A
         fvJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768817091; x=1769421891;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1rZaqFYpKRESrI70ry9zhxOXqJuV68w0fKc0yfVt/8Y=;
        b=WA0MnisDgjYwNExXv9v2TwJqriqx3aGxkFoy4VeZ+i2jvU26IkJN1DJnWC5EFBr9fh
         UqVsrE9qJ5HXeyi2q3U3OM+D5dhRfs8+XYo/Xa98F1jY3/29PsfpBWEvu0hJhoc4j1SI
         v/Vj7C4elPICw1MvVHJeWAbVeA6+xHLbUVelgX/81M4l2YiULuBhZzrKxUcv/XEaYj46
         ECJaFcJ90G1PRAB78c7r9nI3JUwTeZbdRcBO6gfb5ma51xy5dr4NgQmabSjIfVCeHhrk
         4BQFfs7JhezHIyTzP5aDq02vtx6VkC4Kd17mMBjh+yCAnwWzKUz7V4pbxKp4yAVrdYnS
         ooYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsY2jIL9dicoU/ob6n1JY9kyV4xBVoItRT20UcD756/ZPJWvB+DWgP5uJLrjt1zEKNQI6X2nABcv4b@vger.kernel.org
X-Gm-Message-State: AOJu0YwtyNsF8x91Ewz7jAzxd/RRXdtNmkXt0hugOujcd7Q1dHevAe2u
	jne4b6wrYZt7Bb7ZZT/uFoJK2Uz2xglt0kgCsP3v1rt9I/bk07N+W5Uog3bGNX58d0k7n/rbLRS
	aTc1Re/Nd0qMgHaUJj+gsaPzvp1DclbwK/jhW4C+VS2/JAmgJk/UQNO7EIIMofMkiM7eO4Y42
X-Gm-Gg: AY/fxX4ZyZW3QL/Nga9+/+eISZQc9rbaSS4H1EfmknjEP9PeQS9+qaVNtJojHznZeSB
	4bytto2btRIvFaPC296C3WVl63/twpbbiE3N+DJfXfWZXaPkFTwf32X2xoeb69K87I8uL0svtS2
	Ym9nM2G+Sg5noyXm2wSsS4VlfGOaHVIFFQH8+VkUZV451fcEhH/rMJ97nAV/rn4E2kplbYEKjB7
	3vITWhhpNbrlH2D3A2Qq7clfCvm8Q7tnkKQhHvz2GxLPkMVdUibTaP/5LexvbB8kUPqbbM8xmgw
	Nvj/p/d2e5ohmEQDRtYPu+RhDf89/k7woTKoCbOQlBoofJUHIaGshsAO8D7DHRSalQmFcB5IfHS
	FTyfgJr84M6SDHjnbIDO0+0ESaljevU5T0Xti9mg=
X-Received: by 2002:a05:6a20:12c4:b0:340:e2dc:95ae with SMTP id adf61e73a8af0-38e00d5ca1cmr9096373637.42.1768817090557;
        Mon, 19 Jan 2026 02:04:50 -0800 (PST)
X-Received: by 2002:a05:6a20:12c4:b0:340:e2dc:95ae with SMTP id adf61e73a8af0-38e00d5ca1cmr9096356637.42.1768817090091;
        Mon, 19 Jan 2026 02:04:50 -0800 (PST)
Received: from [10.217.223.153] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193dae08sm90920475ad.51.2026.01.19.02.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 02:04:49 -0800 (PST)
Subject: Re: [PATCH v2 0/2] Enable Inline crypto engine for kodiak
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzk+dt@kernel.org, ulf.hansson@linaro.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, conor+dt@kernel.org
References: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
 <176840729246.2734238.959231359705262987.robh@kernel.org>
 <2956f2bb-7db4-4d66-aa71-2017c9a4a057@kernel.org>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <38b979a1-8499-abaf-c990-2986971ffa7c@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 15:34:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <2956f2bb-7db4-4d66-aa71-2017c9a4a057@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4MiBTYWx0ZWRfXzDssjZ8r4+rj
 nijZwg/IRKQFuUD02DUqJ3wNUeVZdcjcQbD/4heTmz6w97uxIVgjlMEuJBTLeWUBsxb6Jz40t0X
 cwtl9n+wRVhoEXbkpL8UHfkHOqqjPjS0XtPpK8NeMW0TNQceMKsmk7c3vtUAiYCJHZ/vodHrCub
 Nm5JBQef+vjLYSI65zxOxg8rHijHFTdvZo3Sfs9n/4a+qB9vwsM49nz6ccfmyOVxYk8V8wAcJc8
 uJPETJY1c7Ot8hh37qE8X5cdK124l69GoaefE1TbmW9bUX+fLsZG6gpMOHSbGsB9XZR03Wsg4ua
 WlcJTHJXBpyHk3Z1jlIbmqGJ1vZW8ivU5qP4MU6E/eTm2lGMZNIU76EaMng9YiBZmyyApU0pjqD
 TnGLHGAIahrls3CmOFXmXZuHfPYsN0Ve/oRIPpAfJLJUL8JwOpMMIz1SCNXZEIkUuIcqbrWi4IB
 yptqRHAQxqUYTAyFAyQ==
X-Authority-Analysis: v=2.4 cv=NY3rFmD4 c=1 sm=1 tr=0 ts=696e01c3 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=xTBwjhZbDR9UlUe_VggA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: VKqDNsjRxOz4HIRMyyZziZPlZ8exbFWY
X-Proofpoint-GUID: VKqDNsjRxOz4HIRMyyZziZPlZ8exbFWY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190082

Hi,

On 1/16/2026 10:24 PM, Krzysztof Kozlowski wrote:
> On 14/01/2026 17:18, Rob Herring wrote:
>>
>> On Wed, 14 Jan 2026 15:18:46 +0530, Neeraj Soni wrote:
>>> Document Inline Crypto Engine (ICE) handle for SDHC and add its device-tree
>>> node to enable it for kodiak.
>>>
>>> How this patch was tested:
>>> - export ARCH=arm64
>>> - export CROSS_COMPILE=aarch64-linux-gnu-
>>> - make menuconfig
>>> - make defconifg
>>> - make DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/sdhci-msm.yaml dt_binding_check
>>> - make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CHECK_DTBS=y dtbs
>>>
>>> ---
>>> Changes in v2:
>>> - Removed the "if: required:" description for "qcom,ice" dt-binding
>>>   as the ICE node is optional.
>>> - Corrected the ICE dt node entry according to the dt-binding description.
>>> - Added test details.
>>>
> 
> Is this another report being ignored by the author? I'll start the list.
> 
No i did not ignore this. I see this comment in the message:

"Ultimately, it is up to the platform maintainer whether these warnings are acceptable or not.
No need to reply unless the platform maintainer has comments."

So the intention was to wait for the comments from maintainer

> Best regards,
> Krzysztof
> 

