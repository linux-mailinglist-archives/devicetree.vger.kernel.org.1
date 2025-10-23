Return-Path: <devicetree+bounces-230134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 351AABFFF76
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ECF4B1A60A2C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6D2301707;
	Thu, 23 Oct 2025 08:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oVTexMTc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9857301484
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761208761; cv=none; b=ocRG+6xQ10DOvpPP/GO9zM/bvUos/FXpY8gCZAEq0YuZyQFTNJPfx7Z3j7bmExyPhFp1pSaUmL/XoWEcm/a12tc4500CimIDos5kDVJXCLTl/lX5/tppa+TmrweY86yQMIQEHdLQuLzdWzf9ZaPHN73az1h11relNdvn1KcgKDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761208761; c=relaxed/simple;
	bh=nOax5hQLsN9PT1AWGz3YCtsa3xYATSOpBANd8fewLts=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QMRsohjXCBXGXNzWaGSPTUnNV4bTmOjn3AyTfp2fPsVAK2I0svdI4WCSAwMLYIuRwEngsmbEWJLfn/tvCG6hEfG2af50j5jv5cK+a3umC4wzy/qCv+Ue9RTIXxrqvsA57hD5kfgGcUFwPx5CHIv5EluRx1oYg88dgEOTOwQtuYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oVTexMTc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N8AXF6019179
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:39:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hWklso/dxpLXwGPGUP0msBHS9WT93suLvo0LKoUXLFo=; b=oVTexMTcIxNPHsts
	3bnBsHd2KLHjGUj/+aagPZ8UN9MxyGO5059ZiB6S6yOLeNRRRv2mR9BzIDZ1mfDu
	Z+5hoSXYYG5NnJYvo4EnP1sx8B+N8Pctq153qcDABqO9y/I+fTGaXbukTlaCGpDr
	ilo5L3gOthqSmEuhBBEkK2GM0+5e4ZMCoTY0JaYuL3lLlizhhzFWSoDap7vNTMhi
	/u0iiDU8abW1USS2gnCxXi9tT9T3tY+OxzKXBxKiohKtAxGIvKHYqFLfjF04nOVf
	y3BooNhgqIfkXhepQulUuI3OaxmIZF8RsJQ4IzoW53irK8Zq0zyA8ONxm5fIntWh
	6O/bww==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y67qhmkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:39:19 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87c0e043c87so1507876d6.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761208758; x=1761813558;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hWklso/dxpLXwGPGUP0msBHS9WT93suLvo0LKoUXLFo=;
        b=G2sPkQ8P51lzUD5iLKHs37yQlesSZ7hzPvFy84jzGqED88XvZa3iw/Dtvkc3j1512M
         m9t1o1Fpu9eDSCVdEK07xPtZcw4r3t9EghVlC9ZfKRRlGsvUWxxfOi7AxvOOhJNsMAbo
         owKnl0DgtkqkxhkWgsAitu54xG72/yd7nv4IjbmMjDbaYUkxGih0DId7hx8wDAZLMZtd
         czPMTqZMpBaZLXRilQ9U5460+CyAVfjSHFoFsZx9xL3I9SVim8HrRaboLgk99JnazcYX
         PPMVA3fvXHS1+9FFtTfcDEDEIl0aWtOcdgBipVA/tD7HtICKKVIYmKTn95q+bRrNvPTZ
         hK5w==
X-Forwarded-Encrypted: i=1; AJvYcCWz0gaUurY359T1aOUQaJ8yIvXfymr1W0H/s+UnARR0/LvWRogGjfkPUGbD7Uviwg9Nf9c2r3K4o4Xe@vger.kernel.org
X-Gm-Message-State: AOJu0YzUQqWTQ+DyKcm8cKifdPikUv+4XFforzj+IgGmGxQOlLuQPy8E
	ObAq64ITI/kTmmR3ri/WZFww/tYgqjgL+/v3tfCJDXpLZebkvS0Trs1sF+zrU1Z8KNVdLDm0pOR
	fEEMdt3PWyfBdix5veV73oiMQjU9FYuxGykjHH8Hhp3KcePTHGgBeHkkYWtBx1/qF
X-Gm-Gg: ASbGnctCWq+rGdyawhx0KATuk5a0A1NZzoTSeVULiNh6ouw3pggm2v3gw6sn6FzLaM8
	k3tndAuu5VZT7XJ8l+8OZ8CQff8TachmoTuyOgb9HxRYiCU8hpgd+ylPGUKYaAT0ocIY06vm+4f
	Z6Z9jMtYl+35IySnuMlFOx+pMjq06aQJGYh8SRcb2xFPkHSkFB9EKTQCTN9BbvbMSSvBnFkDdUz
	IbnFFuwrLI51AXH51iqC1xAr/G5zBh4VGQSi0IkmdX0MqnIRyP7ci6DgCSMUAMmq4STHvOgxhDU
	/wcG/WoHPBO7022GxNBuEKFuB4mMTKECYgok3iofxXEYoq2Ba1pNdvxKdQYJM8MFL39/QjgpqoD
	xQ0DCF0FDL+ZRpI5u5PuBkmxDqZimCukePLSCSm24+kElCvkJhapJhCp/
X-Received: by 2002:ad4:4eeb:0:b0:87c:1f68:60a7 with SMTP id 6a1803df08f44-87c20648934mr220471726d6.4.1761208757856;
        Thu, 23 Oct 2025 01:39:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1cj9oNKOdOhb82W7AZwyB/d6gcZ6DzbdGz722pp8OHNmq2vXVRfnz96SMP1l1gSm5txUD9g==
X-Received: by 2002:ad4:4eeb:0:b0:87c:1f68:60a7 with SMTP id 6a1803df08f44-87c20648934mr220471536d6.4.1761208757410;
        Thu, 23 Oct 2025 01:39:17 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3f3349a8sm1129107a12.36.2025.10.23.01.39.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 01:39:16 -0700 (PDT)
Message-ID: <1039aea3-47c6-4205-826a-636e595f127d@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 10:39:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: ipq5424: add cooling maps for CPU
 thermal zones
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com,
        kathiravan.thirumoorthy@oss.qualcomm.com
References: <20251023043838.1603673-1-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251023043838.1603673-1-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2OCBTYWx0ZWRfX5rvGm80fiDoE
 kDlfb0Iqpz5C/ZDXucXwlMl++vdukQ/JIu6bdMk4v2KibbBKdgSdJA8MiEOKbACIQvK4z+b1pB0
 PNBTdYnR3qTfudj+zRAOylqpWcN6etxFg2okxj7THN2Xj87yk4hiMCYmlWy2/LL/BaZ3Puh5JBE
 UwVdvHWjLMZJhNW33Wim8dFrW9nUQQcr9xGle3GYwFrk/bQhWGOR7eW0ecr5IQuSUnbRxWwWeGi
 mz2nIa+S2mRXYVNX9eE8kGi/YMQmZgIFBF1uZCrwNL7g73VCUJBBCm1AJKIl875Vh+5i66lv6o9
 a3F+BVY2S/h9McFF4fEfaejv/gouatpbXAmESbC0AdpOzQvXp0g7IbVWWAeZF13bTbBiZYfaVx7
 nj30r3GKane07EIn0rVvnt8xuH4FzA==
X-Authority-Analysis: v=2.4 cv=LMRrgZW9 c=1 sm=1 tr=0 ts=68f9e9b7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=FqFNHRKa5SRjCxdZjAwA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: waXISh4B6FP64AXUSza73tsLKnbKw1Nc
X-Proofpoint-ORIG-GUID: waXISh4B6FP64AXUSza73tsLKnbKw1Nc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220168

On 10/23/25 6:38 AM, Manikanta Mylavarapu wrote:
> Add cooling-maps to the cpu1, cpu2, and cpu3 thermal zones to associate
> passive trip points with CPU cooling devices. This enables proper
> thermal mitigation by allowing the thermal framework to throttle CPUs
> based on temperature thresholds. Also, label the trip points to allow
> referencing them in the cooling maps.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

[...]

>  		cpu1-thermal {
> @@ -1254,18 +1269,28 @@ cpu1-thermal {
>  			thermal-sensors = <&tsens 12>;
>  
>  			trips {
> -				cpu-critical {
> +				cpu1_crit: cpu-critical {
>  					temperature = <120000>;
>  					hysteresis = <9000>;
>  					type = "critical";
>  				};
>  
> -				cpu-passive {
> +				cpu1_alert: cpu-passive {
>  					temperature = <110000>;
>  					hysteresis = <9000>;
>  					type = "passive";
>  				};

This means "software will start throttling the cpufreq at 110C"

Is this what you want?

Also, is there nothing like LMH on this platform that throttles the
device way earlier, without OS intervention?

Konrad

