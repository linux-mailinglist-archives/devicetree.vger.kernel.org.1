Return-Path: <devicetree+bounces-224185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C02BC17CD
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:23:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 94A174F67F2
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B762E11BF;
	Tue,  7 Oct 2025 13:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nXScP99z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1C02E03E8
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759843407; cv=none; b=QKIfJxncjniIWOfQvmKv+sNSmOw8ub5FIfKpuATUp4d2RDlmhR4LoUfxdfQkDTCbK69p6jZykQnI/Uii3gXyiTwO3O8vEu09tkAG4wDL4h4909gOlPOf+g1e73PbFSsLLI2YPQUhMLnqhEQwrA9Bh3V4Rm1+kOA2/fJQC0BbeDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759843407; c=relaxed/simple;
	bh=GWcm9Iqd1K8dGk4aFdnzUCo8n2a9wVNXOCYDYImxl9U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nlqkD01Wf8BMhSm0d8v4Gz54gACI9uv2xUGAwJlljc8HCs7xN5nw+hUhUF+pljnKnmAlyVeJMhQwQKbXBPI/RB1Gbry3VpbzN05vWMVPYUPjw2v8/Pao7Vl0xfttdzAZCwxxKiqyPuuqSaMn6t6/2sZHAZk1OgAuQxZqDdK698o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nXScP99z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5977hiIS020044
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:23:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gtlgJP9r9/bTws0jjX0nVpJJdg3+TInrVP7KgIbG6I8=; b=nXScP99zq8qZwbvr
	dbc5ltlz6CUM25y+DyA74YfJ5euZxlmUVvWnshuPhIaGYV3MPWfTzSHVdYhIM4bX
	l/8FC3+lPWPZyZYRH5+enTNDLy/4uSHhHqb5S3ziTzUlbdYGGFbnMRkMG8Q/PDss
	3zb889N348HxPQvxsbOpvUB0zkaCoIAHnxxWwBEYxtdUDKCwrXXzz/v4chP9MGYQ
	TREx3BSTzjOluuRKZe7+ObtkJBO03fqIAsCpMTlnJhcIu2QhW2JJGLRshUY6s5Sa
	1CBaF6XczS1vZrCfF7Dc2etzQfj7puIWFoWxecxMdwfHJlFcGtJWyQbTk9u1IvBU
	rYCIPA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mnkpt54f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:23:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e4b4e6f75fso18103681cf.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759843402; x=1760448202;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gtlgJP9r9/bTws0jjX0nVpJJdg3+TInrVP7KgIbG6I8=;
        b=e9HLDWfmMqfk+NUWTPsczH/0BYkffI5vz0HWetWmWXp1a3WyprD66Yz07tmHTiGz9n
         iu/iaQzvEr5ScvN1MC/T68zalc205Z6ofHEosBcW9SuxwG7kt/64uTD17/8zpGPQvptC
         WHE35DsY+BDNWZQB+u9EMiNINP0uRLSzL490LJ5ls/cVloMMu0MmlbICRRzFBy9zvg5W
         VLo7ODX6zDGgl5cYwh1DlEpvm8lgl0t6myk+8FCg7My0VTOX4j1MCyclxdxVeg+48ffE
         us8t0yS44VFV4pEwE7pMaBYtCNLS+x4LwtlimUizWo7bOl7/k79/BojJYzG+f1/8HPK1
         bPsg==
X-Forwarded-Encrypted: i=1; AJvYcCXMZAN4TRS50y1A0LBQxejPQYXWOPVmfweWGPgGdaExoFhhXz3LHVydEX1xIRBWF0BdqpNuzOaNw+Dq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9tBe/AYAFljkdZPnGSuvPLtd877c2ssh0glk+tHWzS616n/dy
	eUaFC504QmDDuF+0soYvu5wIFiHMuAlyAvR6Dcc4uHOYjWNm1F7oM7y6kq0egVbZ9BzC10uD3s0
	QbSRSwGuNu4ieJJMdJ6BtTa37BP0aOY/JMbNL5fKXj5b3u4Uf6ZIbM9naYVaaPzJH
X-Gm-Gg: ASbGnctKFF58Vk0mqu85CQHfvjvJdXj4cWTfILhPNGnxh1Zx4RRNPHLgR//KbMn3WK8
	ev0h8dO6hS8iRTrTftJlst3Kru0Dj0v4VgBSY6io154aI6js3/PphPlORjgkLkLGHnRqhuDpysz
	NmA8oQ6iewNc0c1AW/RaSRTek4My0ieRCrhTNEDQJPXNVph6CvkOgQyi/zwr4C3fo4JYgEXbv7u
	yYDYvksZExIlNU6GxDn4oJYmFDv4IiO2BA6j4QCVhtKqSKMZk7OrN6lpyBd6btExnp+A2jKkbtL
	Z2f1VhAohXNeJ82J88EqkW8gKnHhYAsrdOI6W/8s9I1uPvdnFlF8WZWC1nMypvsTgUzv5eNfgSE
	TUk7kxMHYh3whUNCrOQ3v0Xh7QEc=
X-Received: by 2002:ac8:5804:0:b0:4b7:7dbf:9a81 with SMTP id d75a77b69052e-4e576a56640mr146623021cf.1.1759843401960;
        Tue, 07 Oct 2025 06:23:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTwiKTWukkgKgK9q3K+cBcWv/GpZF9R0dOxSaKX2tCOpUBq88Hnq8CqHgEnzs0FKmcoRdOig==
X-Received: by 2002:ac8:5804:0:b0:4b7:7dbf:9a81 with SMTP id d75a77b69052e-4e576a56640mr146622271cf.1.1759843401154;
        Tue, 07 Oct 2025 06:23:21 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9e66sm1369754066b.14.2025.10.07.06.23.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:23:20 -0700 (PDT)
Message-ID: <80036e24-fb91-4bef-82e0-55b83799765a@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:23:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] media: iris: Move vpu register defines to common
 header file
To: Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-5-e323c0b3c0cd@oss.qualcomm.com>
 <ab28a715-6b5e-4adc-8889-f47ee2e18d5c@oss.qualcomm.com>
 <96aca644-8fdc-8076-c94b-ed655ac526d2@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <96aca644-8fdc-8076-c94b-ed655ac526d2@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: p_LwSLtzXhBtRN6x0yPHmdi3YdpdQia2
X-Proofpoint-ORIG-GUID: p_LwSLtzXhBtRN6x0yPHmdi3YdpdQia2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDE2OCBTYWx0ZWRfXxIER8eYp7PET
 ANEjrfoPnfnh/ykeHtBh5gr3Qa441NGmiQQ897r1wIve/dUSPFfnoTzrHgDKblrgLImxfEmAKS0
 Nk9tv53WTW5SuGYvfcNY50WGORKjLwWQPcmeiZJJvvvd0l3mZApesGG8Z4SFeajFGMoxFQP3jfq
 aOxzlfoIQ3RDKOIR4QJHAs4qHtNRHYBgL/xiGAdomhsl4CxyGXgyi2L/V/f+e66NB5zVagGbCTZ
 vjSQ6VPiRdqA/jd25IdDCOtEmFyhqXe7fN6jCmINuNpYjeqnH7N1hQcKcwxXWTjUQrRlyejXJ04
 NwGzt+ySDo6sW/Po5NRv9N8Nkr+GD0cfhEsvgN5+0BnbwoqNfSThKJ7YWFVfOFRwqMDduh7EStP
 2lYMohuX/ryDwSqSACXJb7oYpAOlnw==
X-Authority-Analysis: v=2.4 cv=BuCQAIX5 c=1 sm=1 tr=0 ts=68e5144b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=YqhKWhOh7Lw7mRpZfF0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060168

On 9/29/25 7:44 AM, Vishnu Reddy wrote:
> 
> 
> On 9/25/2025 2:40 PM, Konrad Dybcio wrote:
>> On 9/25/25 1:14 AM, Vikash Garodia wrote:
>>> Some of vpu4 register defines are common with vpu3x. Move those into the
>>> common register defines header. This is done to reuse the defines for
>>> vpu4 in subsequent patch which enables the power sequence for vpu4.
>>>
>>> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>>> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>> ---
>>>   drivers/media/platform/qcom/iris/iris_vpu3x.c      | 36 ----------------------
>>>   drivers/media/platform/qcom/iris/iris_vpu_common.c | 23 --------------
>>>   .../platform/qcom/iris/iris_vpu_register_defines.h | 29 +++++++++++++++++
>>
>> This is a slippery slope. I think it's better if you explicitly say
>> the header file contains the register map of VPU3 instead, as let's say
>> VPU5 may add a random register in the middle (pushing some existing ones
>> +0x4 down). Such changes are annoying to debug, and we've unfortunately
>> been there on Adreno..
>>
>> Because you're using this for a single common function that is both acting
>> upon the same registers and performing the same operations on them across
>> VPU35 and VPU4, it's okay to de-static-ize the function from iris_vpu3.c and
>> refer to it from vpu4 ops, keeping the register map private to the former
>> file which I think will end up less error-prone for the future.
>>
>> Konrad
> 
>  Just to confirm
>  1. You’re saying it’s better to keep the register definitions for each
>  VPU generation in their own source files, instead of keeping them all
>  in a shared header. Is that right?
> 
>  2. The vpu functions (power on controller, power off controller and
>  etc.) which are common for vpu3x and vpu4x are moved to
>  iris_vpu_common.c and de-static-ize to use for both vpu3x and vpu4x.
>  (This code changes are there in [PATCH 6/8] media: iris: Move vpu35
>  specific api to common to use for vpu4)
> 
>  Will this 2nd point is fine or Do I need the keep the functions also
>  in the platform specific file and reuse for vpu4x by de-static-ize the
>  function in iris_vpu3x.c?

I think we can drop this since Vikash said it's not going to change
much for the forseeable future

Konrad

