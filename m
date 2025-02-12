Return-Path: <devicetree+bounces-145829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 462D0A3276F
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 14:46:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 24A6F7A1603
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 13:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0513320F09A;
	Wed, 12 Feb 2025 13:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eGLt8cg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB122080E6
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 13:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739367900; cv=none; b=lvgc0JtDPCW9rLa4cL0eYTkaTqDPSCTI4Hvx2jirvATdjwONwpocVs/ad8+49fqBL77GW9IoYljWlfAl1/wFPp/9KWlwZUbntFmBLoeokRYfEjCFrsyldGvWc5Nrnck71aOisO6MScTBkenCIopJr3uO2VrzGzPDgF+XSj22v0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739367900; c=relaxed/simple;
	bh=1N4I54exUcgE3LTlRai6GULrj0a3pJK6dc5b/9sf+V8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=msNl5BD5n/SZy5aW6ufaFGwnM+oTc733eDM1rLxlFAEvwzRKjavpwta4GMDRr9Pqaa9WpjX2flv1UHoJLabLD9wE2zNxxQ8iYGksyucoK8hJtLe/+a7ZNC/uyzewWNEFiilIcB2+9HIldxgEAs82HoqezqfPUAiCRvfBepJ3FLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eGLt8cg1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51CAGKBL030555
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 13:44:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bcv87hwVFJ59H+rlgvVS9U8o2Zyl8UBZpx3M/46jsWA=; b=eGLt8cg13jFBCs95
	yrPopG7sZNOi1ak3UaZIxzK32Z9zTx0VtHzuFulWKVwnu6fmhU5x0gCh6CR9KBGP
	3HptCiSTfHzFiFDymejlEFZWMMv4XD1pu5mWfZwUVsW4vea0O0oC5/Lau0VOtSbe
	ToGZMztFEXKAxtnSvhHTWyf0HsGIiih9PT+k5NkkQLwK9Dn7WJPuv2fe89iie91C
	jienpfs1fDF22tg981YnrAmkBIvBa1npVfm/8Awhj1DJQAdn9ePdivZWJAhtg2VE
	pmyEV5cr18DV5BiKZxOKcnlMrMKjfzfD2HPbMTmUCcJbyIxvP/GHS+CrV7jI562i
	bNU6KA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qxg9n3ag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 13:44:57 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c05d579bc2so31719685a.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 05:44:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739367897; x=1739972697;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bcv87hwVFJ59H+rlgvVS9U8o2Zyl8UBZpx3M/46jsWA=;
        b=mHmOTxOKRh4jh9eLxsPr23lLpIAbCDWgFEQGrQktoTC2MPoIdIWSY1HiTqBLzCQNmG
         FNyQRfESaB++WyZHj0+eltj5Q0KWS/pYMikq9gOoneujjUW5P4HUuI641VHwnM+5inu9
         IlFG30P+TdOVHeJZjtWyFtg8XYJC4RyDB0/VIHWT6L4uXqJXL0eC9KWEzsga6GmC5uvS
         tosNS4hDl3EKJbzFIBbuya1snppw6WYjPKuXWqYAHIyang0tUNFPJGjnrwNU5c2ScQzh
         vyIc3kxIK8TS4kg6BYjBB2nHj/vUQyk0tBRuYqqTenMcrZ387ibm0IWb10kzY6wWlok4
         KGhw==
X-Forwarded-Encrypted: i=1; AJvYcCXr+B5hm0a/7NcZ+SEeEZwfWJ/H6PBy5VM1QfLsaKSr+qfyP7KgxedtAmFAqCFRVaDYVfogxrImgfwH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9SBwqJZu7Yp1rZ1eenkFg95asABPPT2YaCjp3BURb59QPSThH
	G21OS//FLgljrGnaW2r63CMNUFjIDy0jmLZ8GJa1Bv7+8EUGNiO64KXsP63vAeNowR/m6VHvSje
	1NCybwpCUEJWSC3Xe4ns3E9/rVtgWxKcDFaual+Lan8N1cCAFgg4euRRGT8H1
X-Gm-Gg: ASbGncttuR4tzz9d5vryDvCm8E001Pe0Sdtaof3RMo1cQSQVq46FH/bidzyCwPaSgMU
	mTQBMIiKe2J7cweZeM0/nVh0B+v8vWo5mKUwA/IAO0Lne1igNR4ykEn0H/Ndk8OcpTt/NyEjQqt
	DL6iA1VFZ4s9MtUoNl0+vAf1bunad/LBl6RInMxCV+GyCu0Mq291sUjVkgPhGSL9uIeIj3oKm+c
	B1kAurwbqEvN2r4pD/k8oyoNRE89z29XIcKYqfk0La+ihvII4d1cPJI1QvLo/umfeMSouCMQWMb
	bUNc8dxkDREUkBlx7dqA2TtBrLrI/JkgZXYLGDeuCCzQekduxuNKn5WTMGY=
X-Received: by 2002:a05:620a:178f:b0:7c0:7818:8563 with SMTP id af79cd13be357-7c0781886f1mr47789685a.8.1739367897006;
        Wed, 12 Feb 2025 05:44:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOHyU09alCVQwtWMOufSC23nsnbBXmC6L1k3XnA5cPStmX6pOxlCcBfACplNb3zo+zUrAcFA==
X-Received: by 2002:a05:620a:178f:b0:7c0:7818:8563 with SMTP id af79cd13be357-7c0781886f1mr47786285a.8.1739367896515;
        Wed, 12 Feb 2025 05:44:56 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de51768762sm9483438a12.61.2025.02.12.05.44.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 05:44:56 -0800 (PST)
Message-ID: <c4850349-e0d7-4976-a6dc-9c690905abf3@oss.qualcomm.com>
Date: Wed, 12 Feb 2025 14:44:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: display/msm: Redocument the
 dp-controller for QCS8300
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>
 <20250212-mst_qcs8300-v1-1-38a8aa08394b@quicinc.com>
 <531a23fe-940a-4e9a-b023-5f1789ac65a5@kernel.org>
 <10d83c88-9f72-4577-95ba-bb1fd1ef36d1@quicinc.com>
 <5fd75e3d-ee87-439e-b6d4-dd0dd9a0ea2d@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5fd75e3d-ee87-439e-b6d4-dd0dd9a0ea2d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: eDx0BSe_-dRP0vAXZAC8d4726basD3Hl
X-Proofpoint-GUID: eDx0BSe_-dRP0vAXZAC8d4726basD3Hl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_04,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 mlxscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 phishscore=0 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502120106

On 12.02.2025 12:28 PM, Krzysztof Kozlowski wrote:
> On 12/02/2025 12:13, Yongxing Mou wrote:
>>
>>
>> On 2025/2/12 16:35, Krzysztof Kozlowski wrote:
>>> On 12/02/2025 08:12, Yongxing Mou wrote:
>>>> We need to enable mst for qcs8300, dp0 controller will support 2 streams
>>>> output. So not reuse sm8650 dp controller driver and will add a new driver
>>>> patch for qcs8300 mst feature. Modify the corresponding dt-bingding file
>>>> to compatible with the qcs8300-dp.
>>>>
>>>> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
>>> NAK. You just said qcs8300 is compatible with sm8650. I did not ask
>>> about drivers, I asked about hardware.
>>>
>>> This is messy approach. Describe properly the hardware first, instead of
>>> sending two conflicting patchsets.
>>>
>>> Best regards,
>>> Krzysztof
>>
>> Hi, Krzysztof, thanks for reviewing, i want to explain why i submitted 
>> this patch. Patch 
>> https://lore.kernel.org/all/20250114-dts_qcs8300-v3-1-d114cc5e4af9@quicinc.com/ 
>> and 
>> https://lore.kernel.org/all/20250120-mdssdt_qcs8300-v4-2-1687e7842125@quicinc.com/ 
>> is the qcs8300 display enablement changes. It base on current linux base 
>> code and it only support SST mode, so in the SST mode, qcs8300 dp 
>> controller driver is quite same with sm8650, struct msm_dp_desc only 
>> have 3 members(io_start, id and wide_bus_supported) and they are same 
>> both in qcs8300 and sm8650, so we reuse it. BTW, for dp phy hardware 
>> version, qcs8300 and sm8650 is different.
> 
> No. In one patchset you claim hardware is like that, in other patchset
> you say hardware is different.
> 
> Sorry, hardware does not change based on your patchsets.
> 
> Sort out this before posting new versions.

In other words, fallback compatibles must be chosen with features that
are present in hardware, but not yet supported upstream in mind.

It's totally fine (and even preferred/expected) to describe hardware resources
(such as MST clocks here) when initially creating bindings for a piece of hw,
even though the drivers don't use them yet at that moment.

dt-bindings are supposed to give the OS a complete representation of the
hardware and ideally be immutable (which is a struggle, but we're getting
better). Driver specifics should not influence your decisions (or at least
do so very minimally) when adding these.

Now you're in a """good""" position as the display bindings haven't been merged
yet, so you can still upload a new patchset where the description is more
accurate. If it was merged, we'd have to break the ABI or add some crazy 
workarounds..

Please coalesce this patchset with the "add 8300 display support" one.

Please also describe all 4 MST clocks and whatever other clocks/resets that
may be necessary down the line.
 
Konrad

