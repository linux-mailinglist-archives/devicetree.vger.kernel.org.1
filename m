Return-Path: <devicetree+bounces-191500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8B0AEF7BD
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 14:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAEB74A1D17
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BE2825A35E;
	Tue,  1 Jul 2025 12:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fsstwGVy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B712B1D540
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 12:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751371483; cv=none; b=kWMhbqedtajBLVDipeNU9v5v5/6B9aCL3qXOUTJixYANvBu8GVV556Y5XX937RZrbUUidTZOTA9X8DXgLh9MQJOASoelx30IG33RLUi8DTnL8fqsOBErzDQ+NWBTC4ANGS55DlftKxX4f8+K5TBEEvmfxrRiVO/QctTb7h1g4MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751371483; c=relaxed/simple;
	bh=1lbvkwmcN9+XPKXalOgA9l2vSu8vLVpKPb/SY3OyzR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UXg8oMrxRjedMzkrqEbRDRG0uZlcjDTJOdZb1RpAQOMkc21/fUUdU1rzoIZRZQDvu57p0Rr9ASiWOv0hfY944wSnIFFfxaEHD5GhP8ZvSuhE1aBL9xSYb1EeC5zjLfgYy/XLGi6GtPyxlbGY+ZHSfsm6oKpm9d8TVpq+oJIo31o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fsstwGVy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619Rjo5025165
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 12:04:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8NHaWBJg+Ds90gbf6gIrNnGLkbKxLD7AC/sDGjFqo0Y=; b=fsstwGVyEgtyq39g
	I3qt8UYvjp80hCeAeu2Dmo+eU4zHnDDMIaTGO0RKueua50jsSOoWrL/Yme3lz3RS
	G3/D0BCyRUqcOA86qi4KkDHUz7iTU9YvY4bOP3DDsCvus6+n8CMGvKMjfqu50lWf
	WDlUkH2fluJltkZlpl+mSZR7jpG4mmiyaoyXyulDTcQfPgI1KwNSvqlDtKR3SaIX
	E+sfMhD/KSxl8SntvfYVUlXcPGw5iu3qHcOe1yydYwsSsTpxaQzg+j4n+9srw5do
	FpBOO/JjPs3/IOQF/wMByIsSonVwFMttvux/fboUlqBiJFRlH1UxMxoKRXPgyR0i
	UbKMlA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kd64p1t9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 12:04:40 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fae04a3769so13723056d6.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 05:04:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751371480; x=1751976280;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8NHaWBJg+Ds90gbf6gIrNnGLkbKxLD7AC/sDGjFqo0Y=;
        b=aVqRjncEA7uM1dZi0+8ivY4bU6U3fc+A073YravxDcip7SKz4WEJzNyZl6thkmlujE
         NxoeIhKh6MgKh1YH82YDERKTmC/fR8jAGzOy/0DR/As1rdvcpJmbYUnypctiI1mainzv
         v3A2DDJ8CGnOnfM38VSwWEMH5PHSOzANvOfN/07RdKKBzafABBGL3I5KghwS0mW9zZDe
         GSun4X7SwDZQh3DpPps94oTDpRgXTflvbrlRbh+ibhRh8htVzrXG/LkRIg6A8i5u/PGN
         G5yc5xB/7SOhEH69XnjxL19ABJx/iRXX2ovFO1J+DMGuI7TKxJTw6GQqhCBkgVWdBbqK
         fAhg==
X-Forwarded-Encrypted: i=1; AJvYcCUoMwPSbQlhNWydaPz6pKaenjIRqHHZHLZ33mVDViwVD74zFw2wnvZWzNLAdjEuPDAcWJqPPcb6E8xh@vger.kernel.org
X-Gm-Message-State: AOJu0YwRS8Pg3IgAgBnTuh82Z+Jht5uWJt/CNx7n4BkGeeF48N6R/Dr0
	6pcfb21ZO9BYd9Zx6ZFchVwEpV4hGgwDAxKrwM0PwQRwQbFHHOglxFF4D615umJSa9l3om9RYrY
	TKb0pi3GG3W3bUugqf+LFr4cKajwlhotGk/nX3GVFO781YAZKF0QoORT5OnbC/pR/
X-Gm-Gg: ASbGnctttPff+HXUCHB3cTGVvznnDoWXdPoBOoosdYSL7eudaNZoB6JtB0r3nRjki1V
	OikSiuZtLYHAwCnGtpeNARjmwCtGpMqlRKKoa3snt+wftW+QyNzpQi2zPS6gAEmKqmQtB+kcIvG
	G/TIT6Cb1c1+SgPRpeAGfVwO5LWZhAEc7SvxI6di6WeV067tCyHilsrW4BgYdIBZxoN2sozltRX
	DdDnmNftbFzxWfn43U3gVf0IIgqSH6WtVTs746fk4otUH1HGEh8k8cIVeGsGhkqF9KjFD4FrGrA
	FJv9Dv6vYxDe4wH8Gil9kZlJlTP3D+2/QqIuik9zLoWUbTQ204VrUuw4CXgwBlb8X+xFVOekPvw
	/gsD80kTb
X-Received: by 2002:a05:620a:294a:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7d4688a26d0mr124885885a.2.1751371479565;
        Tue, 01 Jul 2025 05:04:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8XZoEPSj7bokOOVZKz/UcTzyquGklqsan9ThQP9FrWzaAytiLBv4obM8TRklGr/BZUMuQwA==
X-Received: by 2002:a05:620a:294a:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7d4688a26d0mr124876985a.2.1751371477590;
        Tue, 01 Jul 2025 05:04:37 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353ca20a0sm866875566b.177.2025.07.01.05.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 05:04:36 -0700 (PDT)
Message-ID: <84861a4d-3016-4d67-b606-ef698ea10e7d@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 14:04:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] media: iris: configure DMA device for vb2 queue on
 OUTPUT plane
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
 <20250627-video_cb-v3-5-51e18c0ffbce@quicinc.com>
 <d8a1fdd4-0056-480f-ade1-318a34d27204@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d8a1fdd4-0056-480f-ade1-318a34d27204@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Z+PsHGRA c=1 sm=1 tr=0 ts=6863ced8 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=QmyDNCatlCRWdA39UCgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA3NSBTYWx0ZWRfX5eUZKTvS/6AK
 FIt8DXW6aMsPlcVmGtOkJNL3PwDxrraOXA5JKABzRDhhbrSIWKz7yaXXuTaD1fhNsh3Ub8Y3+M4
 cuiG2e/pqol0Odl9QUeTg7J/Hy9ygLfJlkQOb6LpxyB2MAATId66nbYgnDLLx/01egX2pjjOQ4G
 rg07sQ45XIy13HDiDVpKvsiXV/yXC8UAvxDj2kIs/sDpkoaobqyrjt5LJS+lm32/fBKypTML2WK
 nOvgZjzMbQ+UWqeYLF+Mdg0RddVvF9E0Fqp7YHbq5NLdOPXTPmfA862y3IbfbbzzHh6r7Aaim2A
 A+UMYLCr6XRcmFVnCXl2omon+H8aVJ0VakzROT3uqNbm+dsbN223dWGfvtAKYG5iCGEDgkAP7my
 jsY/CAmTwJcjpnUwRTcPoFWn9gfZRwvbKVBjN3sZoo5cq9/cIHp5YdzX/m63Br+diG9wLpYV
X-Proofpoint-GUID: 6J79yydExcsHu61lvEWhrtVGrqjAqNkQ
X-Proofpoint-ORIG-GUID: 6J79yydExcsHu61lvEWhrtVGrqjAqNkQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 mlxlogscore=999
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010075



On 27-Jun-25 19:08, Bryan O'Donoghue wrote:
> On 27/06/2025 16:48, Vikash Garodia wrote:
>> While setting up the vb2 queues, assign "non_pixel" device to manage
>> OUTPUT plane buffers i.e bitstream buffers incase of decoder. It prefers
>> the non_pixel device(np_dev) when available, falling back to core->dev
>> otherwise.
>>
>> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
>> ---
>>   drivers/media/platform/qcom/iris/iris_vb2.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/media/platform/qcom/iris/iris_vb2.c b/drivers/media/platform/qcom/iris/iris_vb2.c
>> index cdf11feb590b5cb7804db3fcde7282fb1f9f1a1e..01cc337970400d48063c558c1ac039539dbcbaba 100644
>> --- a/drivers/media/platform/qcom/iris/iris_vb2.c
>> +++ b/drivers/media/platform/qcom/iris/iris_vb2.c
>> @@ -159,6 +159,10 @@ int iris_vb2_queue_setup(struct vb2_queue *q,
>>       *num_planes = 1;
>>       sizes[0] = f->fmt.pix_mp.plane_fmt[0].sizeimage;
>>   +    if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT ||
>> +        q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
>> +        q->dev = core->np_dev ? core->np_dev : core->dev;
>> +
>>   unlock:
>>       mutex_unlock(&inst->lock);
>>  
> 
> q->dev = core->dev;
> 
> if (thing || thing_else)
>     q->dev = core->np_dev;

q->dev = core->np_dev ?: core->dev;

Konrad

