Return-Path: <devicetree+bounces-116499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4790D9B3155
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 14:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B2761C210A3
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFD3B1DBB36;
	Mon, 28 Oct 2024 13:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GZKtnrVr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F48B2AE8C
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 13:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730120895; cv=none; b=jwlLbtE184r+TtCJNbPSvjujcrf5FB9+ULkZ3+/RMYRB0L+bRyKDE/DagVrEjZYSlDxNUlZhojXAqharDV8wbG41CAXGpKSTfI65LY1g7mU8olYu2MjSmrKIvFNqxcZwOArG3vU+FO8vhjCcH12UYBsXQ+zLGbEjIDlUgiEwCkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730120895; c=relaxed/simple;
	bh=K1+POMtqPPkBwmm+VOJ6x1McINSY6LXPemTy6GZF6mI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ifASV91tW505/SAx150cA1OusEQSlM1548AFxxqDysPjQkOmu9TSrZPy8E0o7dNMckJxShU+Mv6sM/l4GBdOFbGUg/Pm64NI3WLXSZGKGgpzqHEfKUiW2tkSse5+cF58Jdl2Xr8UmsHBB5ygytgGRGci0EGt++6gFvZ/AphY/4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GZKtnrVr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49SAvU2i014001
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 13:08:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UIRbdJs0ogf2zAP4BW390ihKbnG1ZLOI+yCbm9/iXGc=; b=GZKtnrVrOLHr5JYK
	RjnhqA9Zz2ixyiNT9A9Gnzb34iaLROJOmwSwQtkqGte9BqUT65BkNkmOxhemNZWl
	awFyq9teZtFdnfK+UZ3giqH5R2e2hsdZl27XELinhGVFAxpslPXvLJyE9pyZGeS2
	c1RpYaYAdZZT56DM8Uu7bmD5wI/HypdMCLDeLXLjtwyXqoN/ThC2TTIfb0u/46HR
	uTKLzXGGcPp26NJItRwRtAmRbdxeu9OuXPfsO4Rh+/KA0feJbQy8kCk/6SEaOdQe
	OZLaiuGlV/+fcro45Y4449O7bTuNu3T3J5hKl6DpRW/gsjjeU4LJ7DkTZGEq2Gjh
	qFXG8g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gqe5vya7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 13:08:10 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbf2a4afcfso7565606d6.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 06:08:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730120890; x=1730725690;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UIRbdJs0ogf2zAP4BW390ihKbnG1ZLOI+yCbm9/iXGc=;
        b=Lt9yB9aDoiCGLCaspfxgWPkfavGPmklTncSK0vEgVCXgEnvq4SqSYGyxX2bnmIbU6I
         dFRRLjq+l52bKFwzBBMNMvQeNlMY/1eBFak0ZCYMMHdRARwFe0UUA/f6WP0pX5FrCdPj
         ak2qUK11oYE0HONTdjzn1HITvJsvTRjzbqS70mhUaYN0gyWhq3uzT6EfVVmWognbqSk7
         NF8mQkO50/EpYN2+BPyKVeTNZFAzcxeJjcLvWrfKpgkxVKhSK1RIbPAfZqRMMxaIrsK0
         s9X0aDo3XVULIh5a1YOZb3R6ZUsunKLSZ+tZjZMZO/ESf7LJfZQ376iKV8AO0g0NzB3U
         BCnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYw2hq8W4goU4ANOvrnRhWFgiPfhiPqj/oQeZvZetMzAsevdFeA4ZpUI3s72dQYevj/bJFEwO62+M2@vger.kernel.org
X-Gm-Message-State: AOJu0YzPXv27sIgmgDiaQHE/HifjHpu/TVjm3M7+ow6AKaPeVvM2bX9m
	NLpeoQ9L5B8WQZnWc2f/x1UGHLWhabaIRx4nWfU0j7WgVTtSrkM9dBAakONezAvmM1GKMKVQczO
	xMYROOXpEDkAwFRaV6GgY6ufeAw0W07jxdhwaElyPVNqFIexzbdcfkoGI80fm
X-Received: by 2002:a05:6214:226a:b0:6cb:6006:c98b with SMTP id 6a1803df08f44-6d1856f3e3emr65875106d6.5.1730120890110;
        Mon, 28 Oct 2024 06:08:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAKsqcoK4y2H/F8rWPjy9GFI3YFUe0Kl0P0+ITuiagbKIkpljrhuowwFi3JZRzEvxPtLejQg==
X-Received: by 2002:a05:6214:226a:b0:6cb:6006:c98b with SMTP id 6a1803df08f44-6d1856f3e3emr65874916d6.5.1730120889756;
        Mon, 28 Oct 2024 06:08:09 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f02989bsm373791666b.80.2024.10.28.06.08.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 06:08:09 -0700 (PDT)
Message-ID: <1d374609-8448-43dc-9eec-2407669ae925@oss.qualcomm.com>
Date: Mon, 28 Oct 2024 14:08:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: qcs615: Add QUPv3 configuration
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20241011103346.22925-1-quic_vdadhani@quicinc.com>
 <15238992-4ede-4b85-9947-391baaa4c8a9@oss.qualcomm.com>
 <332f7a0a-d9df-49bd-81d5-cc04c50183b9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <332f7a0a-d9df-49bd-81d5-cc04c50183b9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: I1il89THnCvn6TyzVQiCB9SLPLFu0xaN
X-Proofpoint-ORIG-GUID: I1il89THnCvn6TyzVQiCB9SLPLFu0xaN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410280106

On 28.10.2024 12:19 PM, Viken Dadhaniya wrote:
> 
> 
> On 10/26/2024 1:10 AM, Konrad Dybcio wrote:
>> On 11.10.2024 12:33 PM, Viken Dadhaniya wrote:
>>> Add DT support for QUPv3 Serial Engines.
>>>
>>> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
>>> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
>>> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +    qup_opp_table: opp-table-qup {
>>> +        compatible = "operating-points-v2";
>>
>> opp-shared;
> 
> Added in v2.
> 
>>
>>> +
>>> +        opp-75000000 {
>>> +            opp-hz = /bits/ 64 <75000000>;
>>> +            required-opps = <&rpmhpd_opp_low_svs>;
>>> +        };
>>> +
>>> +        opp-100000000 {
>>> +            opp-hz = /bits/ 64 <100000000>;
>>> +            required-opps = <&rpmhpd_opp_svs>;
>>> +        };
>>> +
>>> +        opp-128000000 {
>>> +            opp-hz = /bits/ 64 <128000000>;
>>> +            required-opps = <&rpmhpd_opp_nom>;
>>> +        };
>>> +    };
>>> +
>>>       psci {
>>>           compatible = "arm,psci-1.0";
>>>           method = "smc";
>>> @@ -392,6 +427,24 @@
>>>               #size-cells = <1>;
>>>           };
>>>   +        gpi_dma0: qcom,gpi-dma@800000  {
>>> +            compatible = "qcom,sdm845-gpi-dma";
>>
>> You must define a new compatible for qcs615, sdm845 is used as a fallback
>> (so that we don't have to add new driver entries). You will however need
>> to submit a separate dt-bindings change.
> 
> We have added sdm845 in compatible due to below comment in driver file
> 
> File: https://github.com/torvalds/linux/blob/81983758430957d9a5cb3333fe324fd70cf63e7e/drivers/dma/qcom/gpi.c#L2284
> 
>   /*
>    * Do not grow the list for compatible devices. Instead use
>    * qcom,sdm845-gpi-dma (for ee_offset = 0x0) or qcom,sm6350-gpi-dma
>    * (for ee_offset = 0x10000).
>    */
> 
> Do we still require new compatible for qcs615 ?

The comment concerns the driver side. All devicetree compatible strings
present in the tree must be documented in Documentation/devicetree/bindings/
which is where you should add your one as well.

> 
>>
>>> +            reg = <0x0 0x800000 0x0 0x60000>;
>>> +            #dma-cells = <3>;
>>> +            interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>;
>>> +            dma-channels = <8>;
>>> +            dma-channel-mask = <0xf>;
>>> +            iommus = <&apps_smmu 0xd6 0x0>;
>>> +            status = "disabled";
>>
>> Any reason?
> 
> By default, we are disabling all nodes. In the target-specific file, we will update them based on the required use case.
> 
>>
>>> +        };
>>> +
>>>           qupv3_id_0: geniqup@8c0000 {
>>>               compatible = "qcom,geni-se-qup";
>>>               reg = <0x0 0x8c0000 0x0 0x6000>;
>>> @@ -400,6 +453,7 @@
>>>                    <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
>>>               clock-names = "m-ahb",
>>>                         "s-ahb";
>>> +            iommus = <&apps_smmu 0xc3 0x0>;
>>
>> This looks like a separate fix
> 
> One QUP and UART (console) related change has been added as part of the base DTSI. Now, we are adding all remaining QUP and I2C/SPI/UART configurations with IOMMUs and other properties.
> 
> Is there any specific reason to make this a separate fix?

Did this work properly before?

Konrad

