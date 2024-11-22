Return-Path: <devicetree+bounces-123798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 430399D5FCE
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 14:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B92EC1F22CC5
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 13:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E5226AF6;
	Fri, 22 Nov 2024 13:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TKboz4EF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5E4182B4
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732282850; cv=none; b=MBxOSZ0fYQxny32krKDQaOkWdaU1nir5VNUukcq8pVVay37fx97xYBhGkF5lzdSudPZ2z5VQNitKq3K5YOfDM73VjQzgr7l4SrcdMUtb3GK++qBWyg9Wr+kA4Nl+4U4gpCzcMoUxB1xfnm1YcIT8QvUwxei+neC4FdlLWA9HGtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732282850; c=relaxed/simple;
	bh=Kp/24QwYbDI+D/YE1SXVqEO9Lm13GmtYqS9Ue9eTfOU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=crzoON6zeXVhXERkrbsoKiRPA7X8HgpVRiJn0T5tfcjq4uKmSM5pEZgdQLFs4C5H5OabjUtFLSnIOHzUUiHhRmU+o7WzL3z/31iGLF3Im5+p2rgIt9Kzw4FRNQrpbQW6VVNaoILr9uK1ZbjZfvXcUwEfLhqnEqfuowT15pvJbsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TKboz4EF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AMCHGCk029251
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:40:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9YxKM1aS6D02+szZVaQt14eLLw2dbeFbZpQyV+FRSfw=; b=TKboz4EFVHG/nWqa
	7Tc+cQOEtZVSBkxUi29I6qj3As3zRVkfh58f/39j5BWVa3HbT6ozNLkNfmv3nNWh
	oJs1cgNEcRxofu8f5bwyqp9FWK9vUY5ysT+JyoVVOWXS/eL2ZPZL31WgdaS4yV4M
	rtyzxn1pQpNNQbCwntIogxP66he8oCLE79hQCBbuG0bZFy6m6/R8AKOTr51mkPnB
	xMGjGMm6a88OcR1GeKYU2pwJxm1zQR7IBsLkb/L8aKA5c/u0k78JRhAC0RlYQDof
	BpGA8F/6PK0K6jYEkeJDUdK2rCIjmSn1JKY1vmiD5K8dwgxwO7k7eXrMU5RarBxR
	3K08+g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 432h4dsj8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:40:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b145f2d7bdso14841785a.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 05:40:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732282846; x=1732887646;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9YxKM1aS6D02+szZVaQt14eLLw2dbeFbZpQyV+FRSfw=;
        b=doG2lGp7y50GeUt4BIvrRyN29nUNVNTspTBWnzvi0XtmZXDjQ9YlD3J6CuAyz4TnUV
         y8A1eFY+Jx98XBy3osWEIhcBTFIC5CArABvfPq4iTJveTyPUFCDSrUSYQMnagilLqvBI
         VMCQqSu9OThPnj7EsijmyTkTcph8AYzM2xZzxI85tynVJawnbdN1Ed0Xaa+pBfNH07IN
         +4i93X861KTL23PA4i10v+EWdvmaAfTGo2RewDN/8EirBtEaWiUcxsd+uDVFMQlJc1xU
         hu5fpN8IA49lclOIet+f6M5bgYRoYeNZP+1/ow/0f1m+dP58Q4cXrf93/PPhNkRoBfeG
         6N2A==
X-Forwarded-Encrypted: i=1; AJvYcCUTzX6dFrv4vn7rHQPlJNSJVuZlq0DpoBRVbc66Kl9l+k1mgyLPsGrPvGTQBTMnTHikw6C+AZsKJTeH@vger.kernel.org
X-Gm-Message-State: AOJu0YxRpyiC5e/sbdJuUqv+2mV1TYJdbayNdABwk9hiO4GLE4wV+FE7
	sXWg7cc6NysBp25j0us+TbgtVOkjxARcyEeIXM55WwY/L0WEee5HeHKIcHmUFjuZH6AnyUNQOYy
	aYu+8Zfv9cZktR56Mob8gCYqpIFqXxYZVSn1SOOCZGncSIxCuZkr0n9xrUURq
X-Gm-Gg: ASbGncvFxlZsTO7N7TelKMjlKeH11a1B5DNCPIb2YHy2z64gVI7yEuxvOqJ3NxU+H+B
	n37Rz4mT2cjnZiDRbfZixlGBa7XLVoTuCxhx2kysP7UrTFmtBQOnfIsSVAveup+d6ey5uCySxRx
	XuLAxJHrm6c+qHYGR//qixa4q8d57+tUbg0xXQ5ERQvKO7Zc0uDk9hJF7sqjkiDlqtbikWMbeT9
	Cv3sr+GTqe9KjMKrAOGo0LQECjESAe4S/YOecd/erwwb0KOB5lBBt8GOaAsgArumr0YJwZBa70Z
	PMMc3oSlhIy5HnylUZOvuUfV1w2y37s=
X-Received: by 2002:a05:620a:1a90:b0:7b1:aeb3:8cc8 with SMTP id af79cd13be357-7b5143e2d53mr174436185a.0.1732282846687;
        Fri, 22 Nov 2024 05:40:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXGNumdZdSYybkI01sEQNxSeLwadn5nIEeM0rXqU3TOxlAdFxpisS54Pj9uZRXr9K53cdmWQ==
X-Received: by 2002:a05:620a:1a90:b0:7b1:aeb3:8cc8 with SMTP id af79cd13be357-7b5143e2d53mr174434485a.0.1732282846324;
        Fri, 22 Nov 2024 05:40:46 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b52ffd3sm101578566b.101.2024.11.22.05.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 05:40:45 -0800 (PST)
Message-ID: <4d2a9f76-f6e6-4897-9569-6d325a6e62cb@oss.qualcomm.com>
Date: Fri, 22 Nov 2024 14:40:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] dmaengine: gpi: Add Lock and Unlock TRE support to
 access I2C exclusively
To: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        konrad.dybcio@linaro.org, andersson@kernel.org, andi.shyti@kernel.org,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        conor+dt@kernel.org, agross@kernel.org, devicetree@vger.kernel.org,
        vkoul@kernel.org, linux@treblig.org, dan.carpenter@linaro.org,
        Frank.Li@nxp.com, konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: quic_vdadhani@quicinc.com
References: <20241113161413.3821858-1-quic_msavaliy@quicinc.com>
 <20241113161413.3821858-3-quic_msavaliy@quicinc.com>
 <87cc1f1e-85d2-40cb-b3b3-8935004f4f98@oss.qualcomm.com>
 <5a39b6d0-600f-455f-9ba7-29787f9085ce@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5a39b6d0-600f-455f-9ba7-29787f9085ce@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Kflzs-y3ZY6B2jc9aRRhitA7ZoVzkTdC
X-Proofpoint-GUID: Kflzs-y3ZY6B2jc9aRRhitA7ZoVzkTdC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 adultscore=0 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220114

On 18.11.2024 6:46 AM, Mukesh Kumar Savaliya wrote:
> Thanks Konrad for the review !
> 
> On 11/16/2024 12:53 AM, Konrad Dybcio wrote:
>> On 13.11.2024 5:14 PM, Mukesh Kumar Savaliya wrote:
>>> GSI DMA provides specific TREs(Transfer ring element) namely Lock and
>>> Unlock TRE. It provides mutually exclusive access to I2C controller from
>>> any of the processor(Apps,ADSP). Lock prevents other subsystems from
>>> concurrently performing DMA transfers and avoids disturbance to data path.
>>> Basically for shared I2C usecase, lock the SE(Serial Engine) for one of
>>> the processor, complete the transfer, unlock the SE.
>>>
>>> Apply Lock TRE for the first transfer of shared SE and Apply Unlock
>>> TRE for the last transfer.
>>>
>>> Also change MAX_TRE macro to 5 from 3 because of the two additional TREs.
>>>
>>> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
>>> ---

[...]

>>>   +    /* create lock tre for first tranfser */
>>> +    if (i2c->shared_se && i2c->first_msg) {
>>
>> Does the first/last logic handle errors well? i.e. what if we
>> have >= 3 transfers and:
>>
>> 1) the first transfer succeeds but the last doesn't
>> 2) the first transfer succeeds, the second one doesn't and the lock
>>     is submitted again
>> 3) the unlock never suceeds
>>
> geni_i2c_gpi_xfer() takes care of any of the error. Upon error, it does dma_engine_terminate_sync() which resets all the pipes. Internal downstream also has same implementation.

Okay, this sounds reassuring.

Since the TRE would be locked to APSS, I'm guessing we don't ever need
to worry about gpi_terminate_all() being executed halfway through a
non-APSS transaction?

Konrad

