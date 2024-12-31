Return-Path: <devicetree+bounces-134953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2C89FF0A0
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 17:21:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E54511883150
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 16:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 759CA19995B;
	Tue, 31 Dec 2024 16:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CNu6PG8c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A0618BC0F
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 16:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735662076; cv=none; b=Nipd2pKJdyLUaRNCtFY/rnfO62+X1P8hMB09sa36gUiJ7bXjboIzR0cJvFUYc7hsvqurg7GXj9enKLMRJA6EnTRz0GlEGD0D3mlALgV6FohPdxqOmzC0uwZFjgJvyhHhwY3qzILgDvRyGHSaN4ScEsY0bhBiMFWw2o9levCYSDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735662076; c=relaxed/simple;
	bh=2RF9iuBH0SUoO9XGLxM6Wzu/BqIdZFN/mDeBVPLgTwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AMQczu1p7ChqBGrTIltePB/YD9B2+Lu5w4QC/Ia4NTQ8WxUueDoRJN5RbTBlaIgSCvoOg0sAyk0uFl5M6E8ZoEhQt7GDfDYTPNRd804bXuvNHzTfaw0nDqXNYkhgqVwXfwCn827nauFykssKcpJeDEJA7RnALY1Boip8iZT1Ya4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CNu6PG8c; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BVC2uqe026594
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 16:21:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ljy3Qb4AXKfr9HphI58r4Qn4mu2yQF6pmaRFo1VDtqU=; b=CNu6PG8c5lfHt2dL
	dZLW+iX9jLVj8BQ5QfNT6JFhmcsrXee/qWF3AmM+XDe9xeTm5wSvrwk6qq5469VI
	VogGgD7HTn4NkRDPSJNjNpTBBQ1V80oXAYrxuv8adUlJiMAWTZTaRSHRcjfEr9iY
	agt+pdzqBRXW0PmKEIE7VqwG8oZWCPq+A6eU8IAJ6UtqiX6luv2yFZFOCzWf3Myr
	le/nCTLkXtdjoZ2asLIVhT81utk40cCn9rHYjAPTEYWfXNMtFRRO26KRGA4GoVtl
	tKaP19/BtbusfZMidHT4+/vp5M05/Eb6ExJoB8rnC0a98JMmnFWFbVkfshwDo/ag
	F0mx5A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43vg950c43-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 16:21:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6ee03d7d9so67972285a.0
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 08:21:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735662066; x=1736266866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ljy3Qb4AXKfr9HphI58r4Qn4mu2yQF6pmaRFo1VDtqU=;
        b=PIxegHQkG/6SX1onX9OU+B3qFRlyzd7NQC2lfzxDLpCoaN/IFdchaWSx3RhS4ro9vC
         9bNr6NjSpncvlibkVz5rxTRAizNMrHi+b7vU5x7pMvHLKv1uGhslZ0elnf967y6n0URo
         /K/SF10Xpr8knCCCB0EFDAvtJuY/DBELIBBMahRqFCO/CwKJtgmYeqp68BnT7wTvsTGg
         j58DSqbEJKIWPEN6FDCTvy/UaqFizQbG1kJsoMGCQJTRgq8L4T1J3gZH/umZmQvHexD/
         dKWs42qlbvnyRIVlmg2/IGLLtkwjbHgwd7Js3FqbGD6Pcd9U9oyKD8++9QgVJNGB9sUz
         ERbA==
X-Forwarded-Encrypted: i=1; AJvYcCV02jFRrXVbfpIRVJ+HIcdaudb3NLI09UGW4BguQSBo9XKYs14ACyQJB0ndrbEY5AOiJu1jkKinnNNz@vger.kernel.org
X-Gm-Message-State: AOJu0Yww+WUQXt/f/dtdyaWhxMT96K+AZijYhwGHaqPdEGWr2FensHZZ
	e+lyvzUIBL0RaM/nR01K61nditgTn13XH/Z2S88nZxPZoMsc95lX2Vp1Gn4f93v1tEeB72VyewS
	6zv7g7jbM7nXjnH2V4j7hct7O+3uJParICkvtbV9DyTruBLgcKaHpk06C2xU8
X-Gm-Gg: ASbGncswD1JnHy+7TgKGSWRX80hRGRoRo9q5yEg/FUM1UvmSp2j1E7YuGfkuXDrHBID
	yxor/uO3f6R0ou50qF7RvNXzaNEyaPfWGhASvQSBqGbBLcauAaiDRjA39EBtPr3wMAk8tmdQtM6
	1rMtlEPr0CIwB6SONxGfyqlVhBxRPiv1u5dvYg+xghNsHpiaPAvFxLeUleQTWEPS8RUpsLASDQ9
	24jEceMhgLRFdl92EEwqebGiYRoNTFsxp0z0WuLheEn3O19J1yiZsJvadeG7DX1Fxvl2onUyxxK
	DZHCZZLkfDVdJ3kkqDGdgVMpOZFGTXt00rM=
X-Received: by 2002:a05:620a:2620:b0:7af:cac7:5017 with SMTP id af79cd13be357-7b9ba7322bbmr2404605985a.4.1735662064338;
        Tue, 31 Dec 2024 08:21:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3W+kVRXZdSaW7DniEPJbMiXabPdArKM93olFDB2Kxk2mk1ehf3/y/E52cFnrn5gdU3D6fhA==
X-Received: by 2002:a05:620a:2620:b0:7af:cac7:5017 with SMTP id af79cd13be357-7b9ba7322bbmr2404603585a.4.1735662063904;
        Tue, 31 Dec 2024 08:21:03 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e894f2esm1614037866b.69.2024.12.31.08.21.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Dec 2024 08:21:03 -0800 (PST)
Message-ID: <1798bc04-4cda-45aa-b033-3cbafe7f8f54@oss.qualcomm.com>
Date: Tue, 31 Dec 2024 17:21:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/6] arm64: dts: qcom: Enable cpu cooling devices for
 QCS9075 platforms
To: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <quic_wasimn@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-7-quic_wasimn@quicinc.com>
 <dc6876f2-ede8-4105-86fd-fd7060d9e7fd@oss.qualcomm.com>
 <af982662-85c0-5d21-be40-44cbc8401678@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <af982662-85c0-5d21-be40-44cbc8401678@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 0_APUcl1WY6nNTeW7Hl64KIaKA12iBEy
X-Proofpoint-ORIG-GUID: 0_APUcl1WY6nNTeW7Hl64KIaKA12iBEy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=729 spamscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 adultscore=0
 clxscore=1015 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412310137

On 31.12.2024 12:05 PM, Manaf Meethalavalappu Pallikunhi wrote:
> 
> Hi Konrad,
> 
> On 12/30/2024 9:05 PM, Konrad Dybcio wrote:
>> On 29.12.2024 4:23 PM, Wasim Nazir wrote:
>>> From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
>>>
>>> In QCS9100 SoC, the safety subsystem monitors all thermal sensors and
>>> does corrective action for each subsystem based on sensor violation
>>> to comply safety standards. But as QCS9075 is non-safe SoC it
>>> requires conventional thermal mitigation to control thermal for
>>> different subsystems.
>>>
>>> The cpu frequency throttling for different cpu tsens is enabled in
>>> hardware as first defense for cpu thermal control. But QCS9075 SoC
>>> has higher ambient specification. During high ambient condition, even
>>> lowest frequency with multi cores can slowly build heat over the time
>>> and it can lead to thermal run-away situations. This patch restrict
>>> cpu cores during this scenario helps further thermal control and
>>> avoids thermal critical violation.
>>>
>>> Add cpu idle injection cooling bindings for cpu tsens thermal zones
>>> as a mitigation for cpu subsystem prior to thermal shutdown.
>>>
>>> Add cpu frequency cooling devices that will be used by userspace
>>> thermal governor to mitigate skin thermal management.
>>>
>>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
>>> ---
>> Does this bring measurable benefits over just making the CPU a cooling
>> device and pointing the thermal zones to it (and not the idle subnode)?
>>
>> Konrad
> As noted in the commit, CPU frequency mitigation is handled by hardware as a first level mitigation. The software/scheduler will be updated via arch_update_hw_pressure API [1] for this mitigation. Adding the same CPU mitigation in thermal zones is redundant. We are adding idle injection with a 100% duty cycle as an additional mitigation step  at higher trip to further reduce CPU power consumption. This helps device thermal stability further, especially in high ambient conditions.

I understood this much from the commit message.

What I'm asking is, whether your solution actually works better than just
letting Linux software-throttle the CPUs, preferably backed by some
numbers.

I'm also unsure how this is supposed to reduce power consumption. If the
CPUs aren't busy, they should idle, and if they are not fully utilized, a
lower frequency would likely be scheduled.

Konrad


> 
> [1]. https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/cpufreq/qcom-cpufreq-hw.c?h=next-20241220#n352
> 
> Best regards,
> 
> Manaf
> 

