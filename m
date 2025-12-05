Return-Path: <devicetree+bounces-244625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8507CA72A9
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 11:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8B2E3041998
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 10:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A4B43019C3;
	Fri,  5 Dec 2025 10:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kxcX5H4y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Buw22ZK3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FCD2264C8
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 10:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764930569; cv=none; b=KvcwR0hFej/CXvrutQBEgaOtLI7uR0ukfjt9qVKg8Qm/00ct3YEsOcb+0HEb/3oWW5WLTXqNqOxKgKU8qyutH/ROs99P2ZqUigYysPek823vKGwUcIkKp4F/tzeVzTDyGyjHKZ8uSYpncQSMy1CX/4nZiCdACS48EhNqEqYCeII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764930569; c=relaxed/simple;
	bh=1dM26NOpLL0YqZsN8uN70qJ9hPUmIuwB+9D1WAms06U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FuaM3O05wPxBKwbOM61BH58WHRj2UPFtZ57rLlwCOEJpSpzjaHCxXCuwmOauF96tHx7YqXRTIiAMRf22r8aWCJQy3skMZ4S+JkVtz/ZMOIiu8J8b1FuqT8989t4PvmVC9QOj4k5VpQphqOAjkourxI0Henzfs9ftNEgNlGFMUz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kxcX5H4y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Buw22ZK3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B52eeDg3172957
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 10:29:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T+P9UihzOlxTBT4XtK2QWIlMPWzgt0UAZU+mnK6obDw=; b=kxcX5H4ywgSX9OBY
	QH0Tob7BhgQrSNpKOE10iCo30tGUGekHrB4z4ilYFsMy54VaVx4wZyJ+TSRbGa3h
	RzhPMRvNf8FS3ZLxeAQbvomHIleBpKgxjMHk/Xbb+6rddAcVz8MTRzPcoLoxNjzP
	KE3kn2G9vDkW8tsBVV062h9MSCwEGtfAgp4KGiv7OZDKo7I+0rgQ1Svj1dH67cdL
	jnpkgW0Nl2baxSxO/4aCvwoLrVXSNTYAO/9BSDgzNNPUpF5H2pe4kZNC2zwP/Aow
	p+i53KvxELwPQuC/+Lhcxdfo34yW3NXj5qZDS+qCRSfcMq2dPjMt0yE2R7R9fbLC
	obnXRA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auptqs6p0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 10:29:18 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297e66542afso49366215ad.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 02:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764930557; x=1765535357; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T+P9UihzOlxTBT4XtK2QWIlMPWzgt0UAZU+mnK6obDw=;
        b=Buw22ZK3w0jiMo2BqXd/oy31S2jD0BNfe/H/dD7PevQfzbUFDk+cK7aLABuzrbS/Tm
         S7K6Kh/OSRl0ly+22aeUZQcThZDabKrV2vOBQSJPaSWc+SHGthH/OPf8Q240AUgilEsH
         0pbQtE7rL5+z75DYcoD4KvCLobtoLniB0W+VCC5KY3vZNuuSJnpnV2kMXjwCV9RlGhE9
         Qr+lskuYkD59w91VYZnt1n4zKsR+T4l0dCfM4Pfu4P7HpG8FVcRD8RR25Iv/xhT5d8ht
         rDYPpQVCslTKOEtcnFOa+uDJJfSFJ8IJttHcMFlFWTzHnPf78AVkNhHx13b2lezUg8v8
         eHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764930557; x=1765535357;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T+P9UihzOlxTBT4XtK2QWIlMPWzgt0UAZU+mnK6obDw=;
        b=V2kBk+OMYZLLMYzRZ9L06/ZCsjACqNXOeEzfQsyc4i5XXReoBGYwHrB02avHiAUfXo
         iOLhxlidysgsSuWbbm1cYxgaDYbRz937aytOcbo9y9GFo4b5rhVsTGTlyCRb597JDfnw
         HA8DXim9IonAlSY5KDHB/OCRokv5vnSyz8fihaQYUTZj8qkgGhVU4Jy9yOi1B4zfzagp
         Zw2kT9E/1vJobLTfzQgk0ZOVHpbcuE5J2pZBwiltAvxw1DiSshArL3jShJoqN3zt8dRL
         ilsl42X3YxSwRk1/eZ/AB5VqimTAz0zIKcZ1zI4bPavYz09OWqMLPjYJIlk7ZQHqqqXx
         clZw==
X-Forwarded-Encrypted: i=1; AJvYcCU1Ddt8x7OKa9gUMTtC3QZyhOAe73OxY6xJNQY+x2Px06aFtCtEp8bLdVl1U+CwWckt4gK4J4SQaLE/@vger.kernel.org
X-Gm-Message-State: AOJu0YwNemi7EG+yqhnuQqGhdq3AcI1pb+ggXtuOMTHSo0Zs7Jq9Y++/
	FFopKO7Qd5OhiSDIxcbBziwOayx2N4/h837+HOBDoZusSeTBi38CoaLbYEQ7ZIZaWDmFLLxkWcN
	rtSe9MfVE8lEbij1Xm7dCZFo+7E1J5M/igOf55J/N7sjwYKBvLkGQABVFUQHbMNl6
X-Gm-Gg: ASbGncubuFPMkE8P8PR78DwgXkN/tHiX48ZfI84xfEdVnasu1aKDLhoDALxhBuECEBU
	UBZCe7lAbL3RdW5whNYD1aAbDd+uIHLDBYGiA8daQ4qkmko9d63QyncB2vU27NNGMwfYzwcGWCA
	HivfSzbFFlRa3PjSK5rQcB9HJJp0HWj9sLQZRZMV+uyRsG4oOcAvHQx6AcV1mIafwZCNbW27vRX
	ZCvbHrP2Ywl6P3R4fuvzKjN0gLGYTQ8OQTFL4CUK/kW0uYSJSlhQ7T0Ma9x9pc5qOqfmSCpxPl9
	gQDonjxU84Xb52kRiUTmn7wVq3roRHlkaan9q0IRD91ryPtoofWM6F2c6VprctKKvXEOLeOHtDF
	D0Xn2ubkGc86aZnN8YJLZWsIfplgvSsY4qQ==
X-Received: by 2002:a17:902:eccb:b0:297:fc22:3ab2 with SMTP id d9443c01a7336-29da1ebb0bamr73863155ad.36.1764930557380;
        Fri, 05 Dec 2025 02:29:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFh7HpsBEyO6ilZG7nPGO6ymE5SmKKfCKSfDxDslOX7vJaR3rccD+YDhq2XPNdO+dSiRh2JWg==
X-Received: by 2002:a17:902:eccb:b0:297:fc22:3ab2 with SMTP id d9443c01a7336-29da1ebb0bamr73862905ad.36.1764930556932;
        Fri, 05 Dec 2025 02:29:16 -0800 (PST)
Received: from [192.168.1.4] ([106.222.235.197])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae99f6a9sm45456135ad.65.2025.12.05.02.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 02:29:16 -0800 (PST)
Message-ID: <90bc84e7-19ca-450d-b41f-fd96367e8cce@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 15:59:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
 <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
 <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
 <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
 <3gqq3w6ovy5srgvabyeugsjbwrhaxmjvicykhjmlcxd74gtsaf@5u6wvvzeq52z>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <3gqq3w6ovy5srgvabyeugsjbwrhaxmjvicykhjmlcxd74gtsaf@5u6wvvzeq52z>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SX8cwS4a1-Gpzv6O4v30YnRXgaH2G5hC
X-Proofpoint-ORIG-GUID: SX8cwS4a1-Gpzv6O4v30YnRXgaH2G5hC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA3NiBTYWx0ZWRfX5NQlP5EHal66
 MXglw1roTcssrS92xSwDuWggeG/cC0xf33k1DUWULJYT8ha0OG9IXib9UZnZrzj9hxX+8nJSau4
 hMVuNP/RHLUIysUn429Nxv6aUL362Mn6emRbMUC8WyiJeLbev2TL03sQifJYK8k0xuoYBVKKTVz
 1yqoXo+pGsoftg9wXebryPliVOnbOrIUe41bdjyj3p8P7eU/PCf6nyGy2rQPPyxdEMU3y1l8oon
 RGDyqIE+rKQMAST05SF8Cxuj2mFErsEHjCMvlBvP0OgVwtkdWFWn9ylhCxaL2zSUCgbaCRfqbMR
 HN53YOOA38lxEIWCNYa3dA1hCs6y5sAMR8V9E+HYCsz+iPzPRC07Bm24/ngPMfw3gUT4GIgigLk
 FXgW/XpXyRhlG9sh0PZaJdqncjCYLg==
X-Authority-Analysis: v=2.4 cv=fKQ0HJae c=1 sm=1 tr=0 ts=6932b3fe cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=jBSxni06C9HboLYAjQ55wg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=PFMJV2I6qJKDnvYOCoAA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_03,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 impostorscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050076

On 12/4/2025 7:49 PM, Dmitry Baryshkov wrote:
> On Thu, Dec 04, 2025 at 03:43:33PM +0530, Akhil P Oommen wrote:
>> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
>>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>>>
>>>>> Add gpu and rgmu nodes for qcs615 chipset.
>>>>>
>>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> +			gpu_opp_table: opp-table {
>>>>> +				compatible = "operating-points-v2";
>>>>> +
>>>>> +				opp-845000000 {
>>>>> +					opp-hz = /bits/ 64 <845000000>;
>>>>> +					required-opps = <&rpmhpd_opp_turbo>;
>>>>> +					opp-peak-kBps = <7050000>;
>>>>> +				};
>>>>
>>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
>>>> or mobile parts specifically?
>>>
>>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
>>> here.
>>
>> The IoT/Auto variants have a different frequency plan compared to the
>> mobile variant. I reviewed the downstream code and this aligns with that
>> except the 290Mhz corner. We can remove that one.
>>
>> Here we are describing the IoT variant of Talos. So we can ignore the
>> speedbins from the mobile variant until that is supported.
> 
> No, we are describing just Talos, which hopefully covers both mobile and
> non-mobile platforms.

We cannot assume that.

Even if we assume that there is no variation in silicon, the firmware
(AOP, TZ, HYP etc) is different between mobile and IoT version. So it is
wise to use the configuration that is commercialized, especially when it
is power related.

-Akhil.

> 
> 


