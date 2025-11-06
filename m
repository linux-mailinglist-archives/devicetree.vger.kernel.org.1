Return-Path: <devicetree+bounces-235453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DE2C38DDE
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 03:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8321C188F17F
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 02:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D458829A1;
	Thu,  6 Nov 2025 02:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gfyB/A77";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GhhCgoDm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC6E21E0BB
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 02:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762396105; cv=none; b=Ce/SHmaC+Tv/+H15Qzio+eSkUtitiJ0/bY3Ex/yUVOeFH4uUocDhAo/pccsk7l8XPZmsJXAbLB0AiF/38oOqNhVWV6AAjmKNiCVkA3yaKinnhc8fvp1eUrPOTnBC7uJKmicGENmdJ2kiBW+9OnTuk1MaOrsQWTjzbtE1YRa04ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762396105; c=relaxed/simple;
	bh=GppWJtjpbN5o228a2iWBX91xQ4Ag/G226eBhUZOyZFA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ecQ/Sk/6t0TvPl0ZWij+gXilVI4ufvUgnJOpFlYW+7p0vfKTn1LtA8pFLAO+MiZqn85lZSzXfMNCqfZcMKkzgc5AKm20fvVbTwoJBNxuGsxVhFDZRq4y3eCUSWseOFf7ddQbbwcX5V0atP59qY6E0jxtvR7OKHKr32OBjz4G+zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gfyB/A77; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GhhCgoDm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5KFDf71689574
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 02:28:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V4HjvNLFnxwD9vnohYLriZQRWeU4vT3slKHfceRLugE=; b=gfyB/A77rdK/rR7m
	G2HiP9vbY+4yxLE7NYhgk1Q9EuTipDXeJtvD79eWwY4UkIGJ1eg258D1Zvn4xopY
	CiolNFceVi/lGFB+C3IGRHkNE3CWFztKV1aMLsiAdgW9dbkFiKyKmkRkyKgMIBd8
	1BT1boIZMVhxaSNBU235uiqwNRsro1+6WEUa1/ZL+Va721krqCi57+5UzfPngPS8
	QOXINlPwxahekH//93wrncoD+Jbf35SE+uMW0tZOntLuugnnRgiR9goRHOcsw4Ke
	hw2xTOqdFYymOaKZgcRHHJS4sLYdMs7kQwFoOSrrf8yCIreyEllzPXEjZVf3+TNy
	zTedqA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a88pj9xq6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 02:28:23 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-294df925293so5582615ad.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 18:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762396103; x=1763000903; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V4HjvNLFnxwD9vnohYLriZQRWeU4vT3slKHfceRLugE=;
        b=GhhCgoDmuVIGr/V56kB8veDRdN7I4g0p5xFXZUaU4DqJjCpkRY8tlfv7ZLGpH4Girj
         s2A3DrMzp1gIY0KPbO33df4eNrW+3aItFH1T5j7USGnbihVWaA0N66K3CkwWh/Lv9NCl
         hB1dSMYSiamX1RoCTuGICUWQhDuEDsGtCEhBKlZHvaFFHbmdep6h6PZu/B5xq+HpSbAZ
         9nQCixee8zVY/0hcHMQbfbn//aKmaXAz5vCHfJFl4ElQ3JO2B1qN1uImrkZwEOQmrusL
         ZhsDlrym8KBJ5Nc5rVa7IreqbyUFFJ2W6QvhxThYeSRPuaYrvr9ZpWO95emoG0Sbgk8T
         cm5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762396103; x=1763000903;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V4HjvNLFnxwD9vnohYLriZQRWeU4vT3slKHfceRLugE=;
        b=l/ZOajZaPfP4djv+A4qeDUxwCtDfPKRUKBvsdXfb5RqsB+OSM44FJE3vCjbtvLLSYh
         Kk1VJlGCk5uD15+i2YF+J2INEuYndnJjexvpCG7Wk4kTpv5ms0EC5uwuMhLxstHKHe6Y
         1d/SyMFUH5iAAMRaKZ6pMc++BgAuA+BDJS/Vnp/oVAdG81KrByvPsIZqqkmjra79FK3U
         YSrplCHRLG1KZoJpqb3XaHK6eZ8mJMmRjSynQudsLtkL3SdK+zpqN8FxR3SC45NMDtZa
         9cNFo4UWI/pJW6LXJixqlEVybmqadtExEKtV9aX/ptTDQf8YUrnhGUyf5Vp+4l3JTx1l
         ITlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBY/bV2qT1yYS7E0nNNzeyKuIJrfzZHTFqGrgjtr5NWatnYCaaMjDfKkQZeQ5SgM5/0k29d1DrlYxP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5WK6zQkFLO870h3rlg/U0PeCblTwQ+5HDTf8JcVPN2AVKkUAN
	/VzthUjVUWw05RAxHQOS39tackN8AKQhOkZ1EpOm8U3nT7toX98AOxI5xv/FBi6hcqMRh5Na0io
	BuvZf+beF34ax0yu9CG4wTqXJ8hJXjxJj1/uk6d3AqRW2g6HqJotzePUVpaxkfiMS
X-Gm-Gg: ASbGncsbg8Wa3Z/z/3z3PzQk316ZwV0ovhXUlen2dRRoH18zsnLxPwt2XPrYLMIpFZ4
	vsgSjQHwmjCVEQifymn3qfxKpytPg2HuVxzWhijUDL91nDHYLPRH/9O6xMWUUgWtkJCi0lxO3p0
	2cHh6RxQDSA2Qpt/QFAqoR+6UHm1eJ3ZY2YY0OwVZWonLK/vdwCfRNQVau7MJ5rLaMI8VflDspo
	SqwhmV0hqztEpY13nku1rjBL7JiYEJeJU69EweX1TS1bKjtKpaIKLPUAV2r3l+JpfJTa3wPvw0t
	gQhQN8dd8PsFw2vsthXJwOcJLt9BIvubhILHmLtSm3xUyiOEpnhsmGMn3cSmf1TDI7F5PIHcP5A
	QJbOMXjfvgMNheWotCN1abOh6C2RYmGT6vjqf1cOtwzS+hpdJFhpUbcCYgcciqNVV/EDm8w==
X-Received: by 2002:a17:902:c40d:b0:295:fe17:83e with SMTP id d9443c01a7336-2962ad1c9a2mr79751875ad.19.1762396102779;
        Wed, 05 Nov 2025 18:28:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1oBFOtqzUwUW+AAZsojfog5/ufDjnphy5RrmbFpT6Iop14NvlZgmut0SAAChl4RXD+SpEwA==
X-Received: by 2002:a17:902:c40d:b0:295:fe17:83e with SMTP id d9443c01a7336-2962ad1c9a2mr79751515ad.19.1762396102308;
        Wed, 05 Nov 2025 18:28:22 -0800 (PST)
Received: from [10.133.33.81] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-296509682b4sm9362535ad.12.2025.11.05.18.28.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 18:28:21 -0800 (PST)
Message-ID: <47c055ae-c3da-4a9a-8a09-b567b1a80628@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 10:24:46 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/7] dt-bindings: arm: Add support for Qualcomm TGU
 trace
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org
References: <20251104064043.88972-1-songwei.chai@oss.qualcomm.com>
 <20251104064043.88972-2-songwei.chai@oss.qualcomm.com>
 <20251105-industrious-oxpecker-of-valor-af17fa@kuoka>
 <746b292f-fc3a-43a8-89b1-76f61ccc0630@oss.qualcomm.com>
 <7ba7e32b-f00a-4f77-88da-047126a8c3f9@kernel.org>
 <b9e7f8ba-a629-4316-a6dd-d765ed0037ee@oss.qualcomm.com>
 <17c3ee70-66e3-418f-8c79-926c8a139d16@kernel.org>
Content-Language: en-US
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
In-Reply-To: <17c3ee70-66e3-418f-8c79-926c8a139d16@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: MZlRZXCGc63MVnSrDb0kM5duk2JqYc0N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDAxOCBTYWx0ZWRfX3kr+/s1XPtui
 F4JWvzOrTRJjpZSJ2iWtxoYYl6gIYHn4zDUgtZXEzAGaqzIkUOD6ZuTYjPDbemVK6br96d5ALco
 zD5mYgNXDb36Gq6xkYZCoYYjMDh2wy4J6FYEsQWkVvWHUcS2+44F0obJ10ClwXwwJqNc8yUteOR
 QK6SmOMdKcLOINoLvvmlVzMWZJC6kG4Hl9oiKpcArzMITxlJWAJ1obMOR4DFlNRrjlQ3SszxJux
 OfVILMyAqDYQXcNq9BNv41yVt1jsWBI7si6V6Vt8oUnP0dFikjxtHa1jUN4I4DdzvJDA3WaywI1
 OELR0kUYSz/fyQYIWX1OF8zk5GeEg4VYOxnu8F5OWiOD3Qm0CBu0T755rgQGwASd5F1+fGdq0ER
 gv+xog6CY70JkixXkDS+oPZ/rSEbYg==
X-Proofpoint-ORIG-GUID: MZlRZXCGc63MVnSrDb0kM5duk2JqYc0N
X-Authority-Analysis: v=2.4 cv=ZODaWH7b c=1 sm=1 tr=0 ts=690c07c7 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=k5NQ7owp_J2c5NZ3w_0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_09,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 spamscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511060018



On 11/5/2025 5:06 PM, Krzysztof Kozlowski wrote:
> On 05/11/2025 09:49, Songwei Chai wrote:
> 
>> Once again, I apologize for not including these modifications in the
>> changelog.
>>
>>> All qcom coresight bindings are called coresight and I do not see reason
>>> why this is being changed.
>>
>> The reason for removing the |coresight| keywords is that this patch
>> series was not
>>
>> accepted by the maintainers of the Coresight subsystem (as explained in
>> the cover letter).
>>
>> Therefore, we decided to make it a Qualcomm-specific driver.
> 
> Use standard email paragraphs
> 
> not
> 
> broken
> 
> by
> 
> two lines each.
> 
> Anyway, above discussion explains nothing about compatible. I might be
> missing something, so please quote here Mike the part where he asks to
> *change the compatible and hardware name*. Please quote EXACTLY that part.

  "this component is primarily a part of the qualcom proprietary QPMDA
  subsystem, and is capable of operating independently from the
  CoreSight hardware trace generation system." -- From Mike

While he didn't explicitly ask to "change the compatible and hardware 
name", from his above remark, i think he doesn't consider this component 
to be part of the coresight subsystem as it can operate independently.

That's why, in the latest version of the binding, i've removed the 
coresight keyword from the compatible.

> 
> Best regards,
> Krzysztof


