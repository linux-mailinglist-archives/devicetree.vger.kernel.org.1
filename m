Return-Path: <devicetree+bounces-132838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD0E9F8498
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:43:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C822616B9F5
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A0A1B424D;
	Thu, 19 Dec 2024 19:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MctMW8Pu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B4D1990BA
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734637414; cv=none; b=MIC8Ip6IEVXKbCgtGYm2Ool9reeDRWZ/Nqc1vqjCWLqQrKx7aGGFAOY5Lkwglt7EWt8tiKIxIQUPUhBQ26q+hrhgw+zC3tZbUg3lDJTgaggCx2L6qm/Cdtvopdp1itVJ4DEwrqiH80C36upgsXPnmRIec6fI8t2NmHqbfmefzXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734637414; c=relaxed/simple;
	bh=njmpdj/WJomkc7eliil5Lmnys9pLe9x4CTI6BOUVpKI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lbgFGyC0f0GY2hvwkrarvcs30ePs6VVp2v8asTCfo6Fg+aOCWfUPr81hKx8a7z71Y+vFvf92YebniuxkSFhlzVU71MOoh5RcNdxOm4lW77Ttt+QgUGQ9QdyMdNbWyDszItQCN4G1fWc9T5pMO2q3YY/ZyNka7XigaeMqaWAzuks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MctMW8Pu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJGId6N005312
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:43:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ElJue1zWoHt8nvSVMkVrxY1iYyqdjrXkc7YVyvs0eBk=; b=MctMW8Pu9DM5w+K2
	lHE5rbJPnrfiksdV6jwOUdUVKT67Y/y2iHWO9hrhgAh+IwwVcGa2cigK6N3nkLc5
	21yEvJO4MHGoBwNAIf1HHbgqRY9HCFAJxN0U25tnkG9SyBFs2vUBV5I64tck35OO
	y5hVnpOPubVWh+Qxc9EYyMNSOz2H+7oEuLCk8faFZXM3PV+H2BKr0ZNoFQGz4LHm
	DFuTQENuV+dGb6tb+AQlbvOIl5ip5lgAoCLr9uQdJbDCX0n0YpUYWnkHtUNN0ds4
	Iwei5vOmLdVjgXNLkZRQIArg1W8/27pYDoJcsbycnl2Cu2OYfhY+8SrJ0zcdQsHi
	AU+mxw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mpw60ga0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:43:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4679af4d6b7so2893581cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:43:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734637410; x=1735242210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ElJue1zWoHt8nvSVMkVrxY1iYyqdjrXkc7YVyvs0eBk=;
        b=LMsXDfbHSndfEn1tb3ihapogWLGeNuBuanoeElOr9iM2Ra4HrZ9YlAjWu+vruc9ipV
         MQgmLEyhOV2I1hfl4Y4RMofpL/ews9Vjje4G/9a0yBBD4cdpcVsSuJcoopJ/YCWmf5lc
         a68FXTSm1q+n/deb2/C0ddxLuo0HfBejBSWb/0wk1FUHccd6WpBlVQbtwpwIqiT5f3ED
         2H+Qg8HdxU5EFU5NjtY3O7zFEQtjYtnQgCPdYC0eFAH27XnpK3ZSf0i1rmRJ89c93eXp
         MyfA1O4zNKiLtsRir9sYTOKIydWjwO/4eKri5w19r6oq/TnLJlS/V5okgXiqcFYV9fSF
         s5YQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVsgBVahyVd8OSAdFfGwuGqW+ISJj8DuV+KWk09klue/KH4nM2YBMosYCDt1TgvUFQw3nsWCnNLmeX@vger.kernel.org
X-Gm-Message-State: AOJu0YwMvGAFIpXi6NM+JEnftWc7khOQwVOoI2lxGRNHGsz8i1aiJj7i
	x8qKALVyu0hBP93oKHwrWogoaRJYWdtGVDD13mtxGCaTmHp8JYYoZ6hO7eK+op+g6CVjCxDEbqj
	x+PYKkmDyVCq2uHUvD2ajPtRZlawUS7loIUzpWGxQTH82Ek57Z8GPky+vZMnW
X-Gm-Gg: ASbGnctx4SPB0OCfAnZboyFEf1vgJ3dFEml1hDLVZU1UOnOIhBJl3/iE/Wv41T3ubnh
	eQfqBUp89ENFeEDgmYHirrF00TM/fGMZSytfinGyeRMbCwQuPpz3XbtbZ//gWZm6K8QlHj6c08g
	PI4HgGV1rmqK8siA9tJeTf2kodhjIMBuI+0q8o/3QKzUzba0mB81bveuT2QxzhkAQAG0ESsz5Rp
	wP33ZKipJpLU1zEkWeEMx5DnWbeKigdMnl9tiYRekuGcyvWxWqF1hfecTyOTUKwni1/k+yv2S36
	XRPdmZF2lcu8gMjCHkvERjilgKewLz0RiAg=
X-Received: by 2002:a05:622a:50c:b0:466:88ba:2026 with SMTP id d75a77b69052e-46a4a9a2935mr1263101cf.14.1734637410438;
        Thu, 19 Dec 2024 11:43:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYEQOUAGpGrD/DrXfHSKEFTHgWGm4MANMh46wcOGUyVfn8+5OpwPjGOLaylBbzOx+Atxj8bQ==
X-Received: by 2002:a05:622a:50c:b0:466:88ba:2026 with SMTP id d75a77b69052e-46a4a9a2935mr1262891cf.14.1734637410004;
        Thu, 19 Dec 2024 11:43:30 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e830af1sm96997466b.14.2024.12.19.11.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 11:43:29 -0800 (PST)
Message-ID: <54cc4221-ba5f-4741-9033-20874265ca01@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 20:43:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm,psci: Allow S2RAM power_state
 parameter description
To: Sudeep Holla <sudeep.holla@arm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241028-topic-cpu_suspend_s2ram-v1-1-9fdd9a04b75c@oss.qualcomm.com>
 <Z1LQOmEfFy640PjG@bogus>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z1LQOmEfFy640PjG@bogus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zbspB9TyXezBCk2C64n2CndHR6RncVm9
X-Proofpoint-GUID: zbspB9TyXezBCk2C64n2CndHR6RncVm9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 mlxscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412190156

On 6.12.2024 11:21 AM, Sudeep Holla wrote:
> On Mon, Oct 28, 2024 at 03:22:57PM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Certain firmware implementations (such as the ones found on Qualcomm
>> SoCs between roughly 2015 and 2023) expose an S3-like S2RAM state
>> through the CPU_SUSPEND call, as opposed to exposing PSCIv1.0's
>> optional PSCI_SYSTEM_SUSPEND.
>>
> 
> If so, can you elaborate why s2idle doesn't work as an alternative to what
> you are hacking up here.

Please see other branches of this thread

> 
>> This really doesn't work well with the model where we associate all
>> calls to CPU_SUSPEND with cpuidle. Allow specifying a single special
>> CPU_SUSPEND suspend parameter value that is to be treated just like
>> SYSTEM_SUSPEND from the OS's point of view.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/arm/psci.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
>> index cbb012e217ab80c1ca88e611e7acc06c6d56fad0..a6901878697c8e1ec1cbfed62298ae3bc58f2501 100644
>> --- a/Documentation/devicetree/bindings/arm/psci.yaml
>> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
>> @@ -98,6 +98,12 @@ properties:
>>        [1] Kernel documentation - ARM idle states bindings
>>          Documentation/devicetree/bindings/cpu/idle-states.yaml
>>  
>> +  arm,psci-s2ram-param:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      power_state parameter denoting the S2RAM/S3-like system suspend state
> 
> Yet another NACK as this corresponds to PSCI SYSTEM_SUSPEND and as per
> specification it takes no such parameter. This is just misleading.
> 

Yeah PSCI_SYSTEM_SUSPEND takes care of this on platforms that expose it.

DEN0022F.b Section 6.5. recommends that CPU_SUSPEND StateID includes
a field for system-level power down states. This binding change only
adds a way for DT-based platforms to associate such state with S2RAM
suspend.

That may be a bit Linux-specific whereas bindings are supposed to be
OS-agnostic, but since we effectively want one PSCI state for deep
suspend regardless of the OS, I would think this kind of hint is fine.

Konrad 


