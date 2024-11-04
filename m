Return-Path: <devicetree+bounces-118746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 757669BB73B
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:11:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 998291C21E86
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67BBF13B58C;
	Mon,  4 Nov 2024 14:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X5DayAdE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB4B13B29B
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 14:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730729474; cv=none; b=tU7yZ/6L1vDoZChiJlVNR4OlSkeRh6xPSId+OKwVG8QsVY0Ea7chIhbslZic9MZXbz7QCl8nuN80/dJU7nL1jYgFMwbmdx4pxDZmF4QHHPJ7TCNSu4yAiW4W2w5zAWiOf+i7XLN+YSezu1oCKsqjAv5Xl7LwzWttzGxKJ8dPN2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730729474; c=relaxed/simple;
	bh=Mb1NAHwy4i/OehlNAj/7mKmxIJiSPMovAsyefDQqPCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a70Zm6vb7nVD4myYUmpBcE1UVVlONrwu9dlhxvHLtZfAoEo3T4LKcBeq418s757uMhjXsFmF4S7LOpPXmDSP87ATR7vp9e+P5rtKo4vE02jAsOiWQ76dAF0sip43rq6znusmGT9MrmFk8HKkARjMhUE/RuYQJDuGuVtnSVLgXuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X5DayAdE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A4Bj1e8004675
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 14:11:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OWQGK+gFqiAdlvvCufCcwMSL0mH6zzKf4LLgUnrZec4=; b=X5DayAdEp6wWCsxl
	4YtvZQekepElalg4PMAXyJkPQOyArVsqiA4e5mpGb2vQoVxMGIkUSteUhmWvhDa5
	yLUNgLAIEvjLKxUw4Q+7XUpk78mbA1pnKSK4aVUHTPfy4rLZYA2S9vxuTm+RWaiW
	YJqRHwOPC9Y1FayC5yXGyP47tlgEKQLsUYfCMXdlEO/mBx0po+WODsWIMcR/Jb4v
	t6EtKFrX8rTIe1qyNBrMIgYwgImC5NiNLgoky6h6r6KITLwTH/K8KhAXvxXTN4HC
	Bh59JQN+rl2Y3PPGgk1PzXaQrc2Au+us40Ez7Mc6Ihc/fdSVtM4liQtfx1C0Mbfs
	LnFb0w==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd284gpy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 14:11:11 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-71810cd2d0eso265177a34.3
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 06:11:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730729470; x=1731334270;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OWQGK+gFqiAdlvvCufCcwMSL0mH6zzKf4LLgUnrZec4=;
        b=w2CltbYrwHY607zbdI4+mKsjg1tCSKxn+f+bo1ZgsKDahxktGmD2ivS0PU5oAYyqO9
         HjA4M87YUf8dFAd6SIH+8xa3R2M4T6qPK19v+K3NbvTrG+BpPwcexjN6axvUo9SP1KrE
         C9AZecoa1FWD2BJTTaIxYQdKhflfdmS8V7yjnJmpW3OyJCvbOa0K9+GMgBLZrCkQo9lQ
         6MLfdxaaRTFlaBBUhOZzO/O7l1R3pqtqWDXbb9ZpZ/IDsXXDtJQ0DGWt/yT2NGS/Sr7T
         kTzBKdf5Zs/U4eeDR7R1hmaf8LIVnDQ7CBdtfMDxabwy7/bxdKsIyp36UsxKSCWkXUGt
         0YrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQu1KS4cVJUyOreFR/u3rdpr5JsHd4u5MQZb+OBKeSwdgbjQPta3Ni+olDhygp1RwSXSXHLrjQMEUv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy7JzK+5Uyas2BhBv0ERebqXweQSIg++rye2XYim3NMkJauynb
	YpYyVWPXUxe/KkQjJWVr6FHTvowiVCrW/jtkTC6nP1j3ZicuAbEPdtrjA4eVJOvOAC0T1XaBQRb
	N+sLkfyocT19XVw26FEDHJTysp/chG0srTu9UoSnrwOrdOmZjAxlz1mzx4GdI
X-Received: by 2002:a05:6808:13c7:b0:3e5:f6b0:6ece with SMTP id 5614622812f47-3e6384c54e0mr8553311b6e.8.1730729470508;
        Mon, 04 Nov 2024 06:11:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFeLnK3SNwDSbU/S8+Adq+C7BNiBcubtYMDM1I7j21B1MpWE1qSEckxqqAiiqRZlKmn1s3qYA==
X-Received: by 2002:a05:6808:13c7:b0:3e5:f6b0:6ece with SMTP id 5614622812f47-3e6384c54e0mr8553301b6e.8.1730729470101;
        Mon, 04 Nov 2024 06:11:10 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e56645da9sm556198566b.164.2024.11.04.06.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 06:11:08 -0800 (PST)
Message-ID: <a41e3aeb-43b9-49c0-8243-29a78a3b1602@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 15:11:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add coresight nodes for QCS615
To: Jie Gan <quic_jiegan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>,
        Tao Zhang <quic_taozha@quicinc.com>
References: <20241017030005.893203-1-quic_jiegan@quicinc.com>
 <69be09ec-e9a5-4fb6-890e-74a65f3ce404@oss.qualcomm.com>
 <3f90b3d6-9637-47b7-ad8a-ff43cb28ad32@quicinc.com>
 <e263d461-9e2b-4ffe-8221-cd9ecdd142c9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e263d461-9e2b-4ffe-8221-cd9ecdd142c9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: vQ_Yi8TpXB0XVK7lB545Wo3cDr8XG1Tw
X-Proofpoint-GUID: vQ_Yi8TpXB0XVK7lB545Wo3cDr8XG1Tw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 clxscore=1015 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040123

On 28.10.2024 3:53 AM, Jie Gan wrote:
> 
> 
> On 10/28/2024 8:54 AM, Jie Gan wrote:
>>
>>
>> On 10/26/2024 2:47 AM, Konrad Dybcio wrote:
>>> On 17.10.2024 5:00 AM, Jie Gan wrote:
>>>> Add following coresight components on QCS615, EUD, TMC/ETF, TPDM, dynamic
>>>> Funnel, TPDA, Replicator and ETM.
>>>>
>>>> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
>>>> ---
>>>> Already checked by command:dtbs_check W=1.
>>>>
>>>> Dependencies:
>>>> 1. Depends on qcs615 base dtsi change:
>>>> https://lore.kernel.org/all/20240926-add_initial_support_for_qcs615- v3-5-e37617e91c62@quicinc.com/
>>>> 2. Depends on qcs615 AOSS_QMP change:
>>>> https://lore.kernel.org/linux-arm-msm/20241017025313.2028120-4- quic_chunkaid@quicinc.com/
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/qcs615.dtsi | 1632 ++++++++++++++++++++++++++
>>>>   1 file changed, 1632 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/ dts/qcom/qcs615.dtsi
>>>> index 856b40e20cf3..87cca5de018e 100644
>>>> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>>>> @@ -202,6 +202,18 @@ l3_0: l3-cache {
>>>>           };
>>>>       };
>>>> +    dummy_eud: dummy_sink {
>>>
>>> Node names (after the ':' and before the '{' signs) can't contain
>>> underscores, use '-' instead.
>> Sure, will fix it.
>>
>>>
>>> [...]
>>>
>>>> +        stm@6002000 {
>>>> +            compatible = "arm,coresight-stm", "arm,primecell";
>>>> +            reg = <0x0 0x6002000 0x0 0x1000>,
>>>
>>> Please pad the non-zero address part to 8 hex digits with leading
>>> zeroes, across the board
>> Will fix it.
>>
>>>
>>> This looks like a lot of nodes, all enabled by default. Will this run
>>> on a production-fused device?
>> Yes, usually Coresight nodes are enabled by default. Those nodes can run on the commercial devices.
> Sorry, my last clarification is not clearly. The Coresight nodes are enabled by default for commercial devices(fused), but only part of functions can run with commercial devices because it needs check fuse data before running.
> 
> If we want enable all debug functions related to coresight nodes on commercial devices, we need APDP override(APPS debug policy override) procedure first. The APDP override procedure will override some fuse data to allow debug sessions.

In other words, will a production fused device boot with this patch
applied?

Konrad

