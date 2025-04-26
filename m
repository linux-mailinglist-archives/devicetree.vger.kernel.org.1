Return-Path: <devicetree+bounces-171175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 733ACA9DA35
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 12:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C474B9265CE
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 10:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A312236F4;
	Sat, 26 Apr 2025 10:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G1XVeFCq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0565B1F8AF8
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745664524; cv=none; b=Mt0BfbE/FItL9D4IhlrEypS0gP48riRxL0KHLYiNJzE6yIy3Vjasx81gabYRuXPgwMuSMw049E/D2UrRc+XAtFxKA8SqZiVhMiCzTPctShwykhm9A9ktQ61Av8m32RZzLJskXCrqGziAjWa5WuhRZCnTte+BATshKERtlb4mxfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745664524; c=relaxed/simple;
	bh=4sRaghWWcD60w7uXTlO9CQBIPxZMoc5Qe6bm0cuHaKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ap28rsPSR2Km+gjFDzoxYvtUUBovTOBv51kxvkdYPXSS9vD8eOHPeKtqkuTrHefhem55Kh/6yJycTyh1QZTkJRwdIRABUaeqTCqDvMSdkz9AdpoCT9HPCKdYbt0XMRfPLicvqZAKOwBI1brWT6f8dtNaWwp9xD9tKZHD8nZzP4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G1XVeFCq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q0iepZ025388
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:48:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DJpZvWXgtHuZU26lIpKxv2J9vl2iSDRp1jpslHEmWKI=; b=G1XVeFCqeV64K18k
	D+nNmwVTTSzGjSYxggyku5VPu1UdxPOxm85OuA7HWLzt4AUAXEatMgGS767fDH4R
	W/6oyMft4wNca25RNUIm1/xD0s00h7OmjiUbruR6cbA3qcbtx/l9I8qIvLGAXoEw
	1V8rYvjFA6Or3PbhOucfyRqD38miP7BFEhBS/0ZySZ7SM8u4PHdGmFJKUf+wOvtr
	gOUEWy/QDhqDT+kdzOuspZwDMVNcQj8CKt5Ajsa3oq1Glogk6Onzz3KBZu5D/uEI
	+HJkRuDIh6izodPEcC2iDS+EvKVUhXcttEr+2FgbDyPUexOBwgzcCw9JN893uPs1
	KJtvmg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468n6j958p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:48:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so9524336d6.0
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745664521; x=1746269321;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DJpZvWXgtHuZU26lIpKxv2J9vl2iSDRp1jpslHEmWKI=;
        b=ALhLrOlVKABWJ2ERoNt/FgMRBLTBFmrNIUfM2Ev7t9Oi3ytnTYucrbnbfy8c5T9pKa
         5Yg5Qg/HwQpL7E+pIwpCC/aYtTWrw9USF5eHkNx0C7zyapkRndnLiznUHNjinPUveuMD
         M7tE4oNzXUq2I9J/OhSMExMI5PGNnBOiQupeyYDkkIGkUPbeXgb47nJbkjvVDqhl0QdM
         e5d8mUem1Mm/VmXNcOIFnY61J9LsJrTTtmtENOuchXaH67Jkc2lM2qbEBUWO9LpfWmLG
         fYzzIxnj8TskIvrMuXm02P47Ur3JqcmPY9qdzrqdtAVmSSkncW5mbJY1/45h+5M6HUNy
         mq4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWFbcZHNHtqJjHAL/7AXDBEQLP7sHKenMIwImGUMkLcBa/BHFI0rbuc+lO76A7Bv8X7AaiUoSEEWlkp@vger.kernel.org
X-Gm-Message-State: AOJu0YwNWT0mMRqhUYcb1P4Vhz1nxpZY95a/V7iVn0NQR2+pRl9QXXUg
	heYcNKARqdfiCnJqZraeh9Q0MFZYJVrXF/kQ03/3JPHfoi7PQbjzQNPeUjS3auGlE57hlNonOYp
	ib43jun9jmqIWjzyyGIogmlaQl9tXut4nqHb5Q/9nSiZeBdXn+Qr0rkwxnmTR
X-Gm-Gg: ASbGncugz83FBL78aCYhKSQc2pIB9db2/n2XTEP2UgoQEisbJqeBIhB7rSzNlm+9Avj
	di10BP3KWUypgcFmmpnAmP/U9ylvo+EufixHspYvfNZ6+Z3cLEprgQB315E44zZFM4MrbOs7fZu
	thwAndLmsigJxl1JmDNlB1eyfmV9X1tFg0HUDWb2aRvEDFqTEBMTX/qxSlC1vVSNO3mBHBlxZMg
	qF++N7QRRN9eUnPkgRLEI7/d7QbtnLyZq3quIZSCqUgVtImj6oowUr54DSHrx/XwVtZiBvtYkz1
	hqE/SBpZupjr0bKYOO2zPTdiZt2ygv3PshlAlCls5FDSAev/PmzwXQJ2YDrW+bZmoew=
X-Received: by 2002:ad4:5ca8:0:b0:6e8:fcd2:360e with SMTP id 6a1803df08f44-6f4cba61ff7mr32939256d6.8.1745664520783;
        Sat, 26 Apr 2025 03:48:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF66thbVT17q0t+hsUlfIDPNUs130uihaEVBIxsM6mBjrr8hzmW8LMlanJd82uYVVyB8uTOEg==
X-Received: by 2002:ad4:5ca8:0:b0:6e8:fcd2:360e with SMTP id 6a1803df08f44-6f4cba61ff7mr32939076d6.8.1745664520440;
        Sat, 26 Apr 2025 03:48:40 -0700 (PDT)
Received: from [192.168.65.154] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7014006desm2478040a12.31.2025.04.26.03.48.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 03:48:39 -0700 (PDT)
Message-ID: <17a1a4d9-fdc5-477a-bf4e-91cae5a62479@oss.qualcomm.com>
Date: Sat, 26 Apr 2025 12:48:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: x1e80100-qcp: Add qref supply
 for PCIe PHYs
To: Johan Hovold <johan@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com, quic_qianyu@quicinc.com
References: <20250425092955.4099677-1-quic_wenbyao@quicinc.com>
 <20250425092955.4099677-5-quic_wenbyao@quicinc.com>
 <aAtbFQIQMJO-BYe_@hovoldconsulting.com>
 <e82eda3b-b27f-4584-ad23-562ca4b22847@oss.qualcomm.com>
 <aAt54vikoREWZyGY@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aAt54vikoREWZyGY@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDA3MiBTYWx0ZWRfX5/XzMVp6sjTy Vbd2GcaBIugE35ad5tKFLBfHfzax83biHlqRPu0/9wZzA2JBkE32175y6ofsar1LpyCrLMxe25R QLZColRPRhhfuPQCniFObZadDAbJ5/KStUnnUrVM4E6nrZfMj+UiGYqm9ge0JYXXkBbMUv1Aoek
 IizRy3j5tARt2JOdXcsXFaaLxMGxgfoS8YU8MDwWEtgfxZfi8utG9jhKrWwVCQPVRAN/uXWNHVo IL/eJoclq8tmLQ6LsBSP5QQdLNqJUyaC8zvtnWnxZeYTzUoGoKYEzOlFQU1yu8v+WC+v+b5xe5K wrZRnTT6Xj8hoR1bz+1qFn2p7T2zCuLv6/mhoK2PR3dxGWG4BnS9ThYZDQK22SdkkqRNM7OA0o/
 KF8z7bkS7vr+QzoCbRymDUfMj020KD58LVaZOlWCv1GYLG8xc0XvKeZNeGx4j7Mkhtd3mNFb
X-Proofpoint-GUID: pIBztrgWoj9FBU3efkM88EDIZeJeVQpt
X-Proofpoint-ORIG-GUID: pIBztrgWoj9FBU3efkM88EDIZeJeVQpt
X-Authority-Analysis: v=2.4 cv=C8fpyRP+ c=1 sm=1 tr=0 ts=680cba0a cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=8SvZGl_aAWB78hht054A:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260072

On 4/25/25 2:02 PM, Johan Hovold wrote:
> On Fri, Apr 25, 2025 at 12:03:06PM +0200, Konrad Dybcio wrote:
>> On 4/25/25 11:51 AM, Johan Hovold wrote:
>>> On Fri, Apr 25, 2025 at 05:29:55PM +0800, Wenbin Yao wrote:
>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>
>>>> All PCIe PHYs on X1E80100 require vdda-qref power supplies, but this is
>>>> missing in the current PHY device tree node. The PCIe port can still
>>>> function because the regulator L3J, which vdda-qref consumes, is voted by
>>>> other components.
>>>>
>>>> Since the device tree should accurately describe the hardware, add the
>>>> vdda-qref power supply explicitly in all PCIe PHY device nodes.
>>>
>>> AFAIU the PHYs do not use this qref supply directly so it does not
>>> belong in the PHY node (but possibly in the tcsr node that provides the
>>> refclk).
>>>
>>> Since commit 031b46b4729b ("phy: qcom: qmp-pcie: drop bogus x1e80100
>>> qref supplies") it also won't have any effect for pcie4 and pcie6.
>>
>> QREF is a separate hw block distributing the reference clocks across
>> certain on-SoC peripherals
>>
>> If its power goes out, I don't think much of the platform would be
>> functional anyway, so it's redundant here..
>>
>> It doesn't have its own single register region and it's frankly
>> one-shot-configured way before Linux starts up, so there should be
>> no need of describing it at all.
> 
> Then it sounds like the qref supplies should be marked as always-on. Can
> they be disabled at all?

The best answer I can say is "maybe". I would (without knowing any better)
assume RPMh wouldn't let you turn them off. QREF predictably takes VDD_CX/MX
and some additional lines

Konrad

