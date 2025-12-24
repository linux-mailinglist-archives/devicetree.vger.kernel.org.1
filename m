Return-Path: <devicetree+bounces-249341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D74A7CDB2CF
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:27:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9503B3007C5D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2CDD279798;
	Wed, 24 Dec 2025 02:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JiLCAyFU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Sa7BK+Nm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8008819B5A7
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766543277; cv=none; b=SDBEBEQ8LF+LiBPeGwg6nOEeyjdrFwnQiHA0j8aageJp8N8AjPM3FhQrs5ZSiUefe3Bm/iSt/3eyvS+p2GWavj+3WRCzRTT15apIIAaO5mL57HigV/WAPP2dz6g65pBlViuFgIkFD+03OlXJeyXA8Q4YB3iLiXq9WVa9cDDsHYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766543277; c=relaxed/simple;
	bh=ThvT76cjJvgLd+fzgxi+Zk3jr20IcMwPef8PZRoLSPE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XXnP0ik4SCJcqNYwrSTltQqSF+HvDr+E7xDnyNyx8wkcgxSPvbUOCoDOaam4bbKAZGPcVb6V06zfPIBN8rpFL06jMTrUSn1Sem3JxEUjMlQOjqKIhRr/6MRgW/Yf9/X7n1ToTmZTC5tZ7zKNMRlp6VS+2wA/LyP7TdKBPmiZA8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JiLCAyFU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Sa7BK+Nm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNFrNOG4135043
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:27:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RwuVY2Lab/HrxB4EgajBljldpOxAGJuGAxHmuMQ6J4k=; b=JiLCAyFU4Afh5Um+
	Ocxn98PVjJpmPi0h2x+3xwPxJAQoj5GdmtyHaZ6ZcQAK08Lq9frqH3l0HA1fy4Mj
	/7DzQvMYRUuxiqu0IX7Btp1pvw/NEK0dI7qlxoktPjpk7M/ln2IkMlpmKqWhJhfr
	0hqTur99qzebl7lht0FjkSxB05epSSW1yBZMmyyWSVoNCdGMUAk0b0ojPBLOyA5b
	Dp/ooTP9le4Jey0GT8TutyJ6eXLbxiocyQRPDmu01Z4+K6OS+TN+SRPSKiGy7YQK
	+wVk79NuqPMh71gtScUL65lAwCaYR2MULtzNRzXc2AOF7zbYySvM7zc/1UEEBDlB
	v62Lvg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46skw0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:27:55 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7f89d880668so8282895b3a.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 18:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766543275; x=1767148075; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RwuVY2Lab/HrxB4EgajBljldpOxAGJuGAxHmuMQ6J4k=;
        b=Sa7BK+NmbCe70R2Ta+odnjTgkxUnK3na+bcKCZHfZGt1wFdorbPHaomK0O4O5VEnPZ
         Qn5p9nWmSvE6P4MvdHZwDNnEo4g96zbMpGmgjv+n1awD0tZSpk29KmCdo0Oq3ewmXPxH
         lbJZYUzxeT7gSzbdorpsQNuXm6TsCndpNDbXVlGpVYOCPi8Tjv3Mv6QF1jSPBGH94GaL
         PBSuJqzHvl8W/YxRLQdwTQwWFByWE+Z+VscT7TJLoCGP6VSOc9amMARe7yTbhi5UWgNF
         +sClGvrJmiNeONX5DIHnPY1ZHUqSQd21fTniKoCUsqXKqcg0zJYMZalitfx7+JpkAomY
         Llpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766543275; x=1767148075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RwuVY2Lab/HrxB4EgajBljldpOxAGJuGAxHmuMQ6J4k=;
        b=jhna0Y3KGwatx3t2yxqZ6SB7TIiuHKYyZhd//8gIro/7UV+tugSlHlKHkJ0LMEBvxU
         3sjnMxAyUT6Cqkra0yxsr6sylFd1+Sf+cZ2ot/Ab5MtyXzhPR3kfVoplVmyjUu6M7IRX
         fTX5dO+UmXW7uBm2Xf6/zdKvpj1/CY2902oWa5i9Vrl2VKY6TtvpSf5++dZwet7khJL6
         6P+6stPI5Omdv9mf6lJi0iBj8wAd3NC756Wz3vuOuf5r8s57hWImAARZoyty5eiP4C04
         +48ltDS3hw4Q2umo91SQYEV/VkXhx8DuA4GqdHFC8wsXoPiF80lHn+TEfIo9Mh1tvZgb
         WLxA==
X-Forwarded-Encrypted: i=1; AJvYcCUwd1Lha79hcadxUTXifbtsky1bcXnJV2F6UPOz37sf4TCc/FjFkQgV/8Y1jqO39s5L/+1Ej1KPP7/7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl/e9LlApbfRibVTtiK5g01PrQVhtlhM8RnimVBSB7i1AifFPF
	wgNKWgvnhh5ARPmME4d1D5D/0CkvkYDAAHyEV5ey5Oci6DsmpVazFi9d3p9XxgraYu7HuP6KTIR
	3PGOSQjaRem/exWMRtOUb/yVzDW1Ea7MUI9Bb7gaxrs0ArIhu4DpDDsRzKnkuiZ4h
X-Gm-Gg: AY/fxX4XO9ci1ZGtuL8x2alZSd3Bj/M0tUg9hRo4CU+SjHFAnOLECOLaKU7bk7Poo/P
	0d2p2a0jZG7gU8n+ezlsCw5MZ/qf1hFTOVNb8E6mp7Mpu0ukCMzVXC7F1UnV5+U+BSh3wEU0wiI
	gP5r60Bxw/qfnXmsZQ5/v9+nJ1USoJliEDOVvl10Ypy6PINVjCnVsxjx16SiC67YrQm9aHUnR8d
	tj61BvyuviDeJd/pVK4h2KSo+nMUoeuv2eO1QCXDxpDMvA2+myyiXxwqs2rbNCXAhOUZddJrhjm
	vtpe9FFLIWUZUmmnECuMDuxd6qLbLq4dhHqFYMFctZxKhyhY1MlmVJK7Prl/TFAdCPlKOWX87M2
	LI2R8h907CtyGwupx91h+uAjVjt4EFQ/iYEyKheYVPRzICwc9q2dKcLCuStDopBqxM8sNA0Y6ta
	M7Lg==
X-Received: by 2002:a05:6a21:e097:b0:341:262f:6510 with SMTP id adf61e73a8af0-376aa1f81f2mr15457974637.41.1766543275074;
        Tue, 23 Dec 2025 18:27:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUdJFu5WTsVl4EbSp/XYtjut0VIK479Z5/BBVF2Ool/fb3XCzhkw8mnQYh17W1FdQCf/M7Xg==
X-Received: by 2002:a05:6a21:e097:b0:341:262f:6510 with SMTP id adf61e73a8af0-376aa1f81f2mr15457958637.41.1766543274583;
        Tue, 23 Dec 2025 18:27:54 -0800 (PST)
Received: from [10.133.33.19] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e0a2e3esm14804089b3a.37.2025.12.23.18.27.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 18:27:54 -0800 (PST)
Message-ID: <6211f39c-90a0-4460-a20a-5487c35de80c@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 10:27:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-3-yijie.yang@oss.qualcomm.com>
 <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
 <862aa161-fd99-4938-98c5-73593b03d215@oss.qualcomm.com>
 <d105c29d-82fb-4127-bef2-11bc43472dd5@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <d105c29d-82fb-4127-bef2-11bc43472dd5@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -AOQ66YZViBqgHJ9_liafboooDeHs6RE
X-Proofpoint-GUID: -AOQ66YZViBqgHJ9_liafboooDeHs6RE
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694b4fab cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=18nqzL3DF-mq9pMaMlAA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAxOCBTYWx0ZWRfX0uDD5u+SP2/F
 J1K1ZBNoPvbgDdMBFEViBqdQPID7fHSArpVPU6CrBbUhhNyN+Po/UQsjEO1ED2CWrYNUEtE8+/U
 cPRPgR4qdRk3hx58XJ+G2o8wTEfPbMKQKfjbQv4ywLy4gPumbQMMu4movV1PMEd7l6bM2I+PMMu
 zfo4BTvZUVV0T3nMdbgfX7l3E9xtLDnJ2lmr3d++yWhRHtWuCm/p3sXKh+xj0bqOpU6RE3THxJq
 bm4HGBT5Y1Vy9o5+wECwKjhOVrtcSe3VEG74DoadaFeoz+8nbCQrP25hb9JOxxyGifDvBXzkZtA
 jZcIzHzCmdHJyqp6RXTPZXEFqJ2sOeOj4JxZRRW8bLYund3lrEEe8IlzHy7tM7yW5iu1WqZ9QaO
 f5QNOBaKLVIANL082tg7UKZIFlPRIpu7jnN6gPu6RMmr0DxHWm8kPwtn000i4bExrVXR2H8/29S
 qmfEZNpH/aBdHdk0D/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240018



On 12/23/2025 9:42 PM, Krzysztof Kozlowski wrote:
> On 23/12/2025 03:00, Yijie Yang wrote:
>>
>>
>> On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
>>> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>> HAMOA-IOT-EVK and PURWA-IOT-EVK share a similar board design. Extract
>>>> the common components into separate files for better maintainability.
>>>
>>> SoMs do not share actual hardware. DTSI does not represent what looks
>>> similar to you, but actually common parts.
>>
>> The two SOMs share the same hardware except for the SoC. What are your
>> suggestions for the file architecture?
> 
> Not likely. That's like saying SM8650 and SM8550 share the same
> hardware... Take the Som to your hand. Can you remove the soc? No? So
> you're done. Separate device.

Although the two SOMs differ, they share an almost identical hardware 
layout. In this scenario, would there be any issue with extracting the 
common DTS parts into a separate file?

> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie


