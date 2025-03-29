Return-Path: <devicetree+bounces-161758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DFBA75626
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 13:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A810216DEE5
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 12:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 477361C460A;
	Sat, 29 Mar 2025 12:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j3wiT/zY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507551420DD
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 12:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743250021; cv=none; b=Ug4RO6NPlrvqlIxmZdjMVhkAJMVr71o3uo0PHFmU4nJcdTzp2u4w3W3htr/0zFLQNAqQg8jNVqaB1LeioG0pwdSRd23a16SBIMYR/jyenuUqKUhx5FplSjZx+rdfeUo+/7eeg5UcQBxEFPv8TpZv1b/BjeSEn4qcHYw9Esut6ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743250021; c=relaxed/simple;
	bh=JRDw47hnBad76kPzHF87TIyZ/RQ63GX6NTfAgQK9cK0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kwt3Uq0aDunmudGEZpjDGRDMjZUUNEs+FDpmU9RUCKr6YGMNmZJ0UpV8FkPelKQQtvKLXJp1WL6/+JNOtQ8QSS7RAbEc0cFmXe9BwPpMRmtUH7nQAcscz+2rAntkVQ4HmbwM+AExnn0zpSPohXj5wHcyulVSPwzu3a1Lqql/C0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j3wiT/zY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52T7tsFL024948
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 12:06:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gNmDeGRJa23NM4Spk7uKeuQZcKlV1POHjWAt2bZXH8A=; b=j3wiT/zY3zyenaRM
	wqBKQe71E3vV0dEqpuSeo6FivO7EQfnWeL2bwBPj5nKV3yEWCwC5uE12VM1oLLMZ
	gqrkviRp/8tO2TFuqg3mp7qhHQ4k3ZFLj3iPq8WUGreypHUN5QDBkl8WGOApxtNQ
	KpK7NT9DqDS7B3+vyHHyuM6Kpu2meJs7t3SBHzH5JgpeZX+bMoyGKde7bZo9UovR
	OjMNm9mhnrwCCFZ7AkvB9XNCdda4F5Vla5hDh75OkcslaQHfsCEGY48FNB4qj1ZP
	jD83xP3l7z6sdcHnWEYVeGnqSxRYk4c1R0BArFbBTgHQBShnrBrmm6nYAMA016Wk
	U6FGcw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p7tv8rx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 12:06:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54734292aso67541685a.2
        for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 05:06:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743250017; x=1743854817;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gNmDeGRJa23NM4Spk7uKeuQZcKlV1POHjWAt2bZXH8A=;
        b=mMWRp6ah+C61yWzZPXsQnIuOR6c1xYY+O+KNgUKCqGHfO610AHk4rkARUvCVP2DRot
         vnVlfAT8/bm50r9ll1vL0DLYEQxXv6H8Xq+OngMbHj3PLt+IklkOIIffCF4i/O4L7vSe
         ZT8LRiRHY2w6QG1XMtablKZqbEkAXVphT8HRZ7HevcMpq/1A4rhwNDsMDzIcdIwp0uvW
         XyITf9mJLINp/1v75wP4Kst30eYm0H1P01aKArTXwaUsJUK3uwKRmy915jtVdY7fTtyi
         cjWsl1EOgviW0t2XGxzxo3GPJrIPbsKtQ1Whc18jXOR0rSNPuCo64IEfHPidb/ehvj92
         WENQ==
X-Forwarded-Encrypted: i=1; AJvYcCWm130uIjQHWYVGXOnExqRtCKHUIEuOsipToY84FFTzxISdwTNR0NXaW/cdhuQt1pENrUVQ8k8T3rkx@vger.kernel.org
X-Gm-Message-State: AOJu0YxpMGhIiMNEZwfMmerw7jfGyQs+c4TeZkASRdu6VDnsonTHHFnM
	9vG9R/VVY4+B26XpkGiwxY06vYx0I79+uXbh6kuclpFkSUuU8hkNmdiCR9zs2zvhGx5ckGonm2A
	mLOyfHtXYJQKJhdFmaGcrn2wr1tiqdr3soJWXiqbzzqO+WhjdoDfSbZGJYwN2
X-Gm-Gg: ASbGnctZr8Vk3rGN91PHrWWRbKS2wzEgBsCo4lW/CN0jJlKwJSYBUl7D4SdySS1rn+b
	68r0Onm5x5Z1Z4Tg1A6ocCavPuAYZowmiYD4csU/oGdBkqzvAnE1mtzbU1OcHAQjAIt5+B3oG3w
	+8RWIDV8O3ujpU6H8lh/DGhsk8aiDrgFkKKdSY0CyegFdhbfFpBPlq2bYQ4carBnJuFjjq7NLAd
	Kk75DYzDAr+zlJz7Ix5uhXFbtm8ZNnvGfyNe23AvUTowTK+Q/kLoRQ6mbDD2KGH7bcVmmuxC+rm
	ot8VjkIb/5esVvZXrWFM0X/1kZODRclO+gnTqY53Ury9l4UKO9VKTdDCxVCw7dhEglJ4+Q==
X-Received: by 2002:ad4:5c69:0:b0:6e8:fef8:8b06 with SMTP id 6a1803df08f44-6eed5f87e60mr16320656d6.2.1743250017164;
        Sat, 29 Mar 2025 05:06:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWtxmy8q0ReZiZy3CsZsNPhns/iOWTdrbK+IuRtub+1CLYbcLY16JZgYSlOWc6R5uax+lodQ==
X-Received: by 2002:ad4:5c69:0:b0:6e8:fef8:8b06 with SMTP id 6a1803df08f44-6eed5f87e60mr16320386d6.2.1743250016728;
        Sat, 29 Mar 2025 05:06:56 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71961f0f9sm312968566b.88.2025.03.29.05.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Mar 2025 05:06:56 -0700 (PDT)
Message-ID: <04ada91e-bf41-4be6-9021-96bcb781a40b@oss.qualcomm.com>
Date: Sat, 29 Mar 2025 13:06:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e78100-t14s: enable SDX62 modem
To: Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dennis Gilmore <dgilmore@redhat.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250327081427.19693-1-johan+linaro@kernel.org>
 <Z+ZsE1wm87GfVanE@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z+ZsE1wm87GfVanE@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OIon3TaB c=1 sm=1 tr=0 ts=67e7e262 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=PwuDve-1MTzY0m-xjTMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: GprTwtTJp9H5_9tdvchm_MaAPWBW3CAt
X-Proofpoint-GUID: GprTwtTJp9H5_9tdvchm_MaAPWBW3CAt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-29_01,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=786 lowpriorityscore=0 malwarescore=0 mlxscore=0 clxscore=1015
 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0 impostorscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503290086

On 3/28/25 10:29 AM, Abel Vesa wrote:
> On 25-03-27 09:14:27, Johan Hovold wrote:
>> Enable PCIe5 and the SDX62 modem present on some T14s.
>>
>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>> ---
>>
>> I don't have a modem in my T14s, but this is based on the work I did to
>> enable the modem on the CRD reference design and the T14s schematics.
>>
> 
> What happens with T14s variants that do not have the WWAN ?
> 
> Is it OK to enable it on those, HW-wise ?
> 
> (Hope we don't have to split the devicetree again, like we did for the
> panel)

Unless Lenovo planted something else on these GPIOs (doubt), it's even better
to enable it, as UEFI brings up this controller anyway

Konrad

