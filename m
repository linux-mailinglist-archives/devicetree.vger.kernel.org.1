Return-Path: <devicetree+bounces-135333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75901A008EC
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:53:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42041162F01
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E001F9A96;
	Fri,  3 Jan 2025 11:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ouC7XvjU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6941EE028
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 11:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735905178; cv=none; b=TieTTqgWr0gI8ZVeQja+ZvdD/uzwXSR3IHWMyAuTsqwzm+uTWf8UW6L0dD50xBPwhEaDnkM38t3SFEgkadYFKxH/BgBqGfUD+ah9GpmTwchQ/At3+jZmrLlA1o3DRpgdl3sIL0gMncNJfLZOCW5wvUfC3KdljztBRrPkCptfLDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735905178; c=relaxed/simple;
	bh=rbJsVbXEh90aDI4/VQcvR5wn9IsJb7NcvJun31JjhbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pq/fAFYPBBVf3YpxJcR+qE0m5FlPc1uVhPI7m16jEFEAtVaVI1aQZEghX65sqzR9o1/LExOkcRbplDQwxPJOwbXqEk5sZfE8FBacfAlBvHDG41f+EgOwc9NoYOpQqiM9x99rLL2d+ry4aaqcO5cuuQ1lYHk3czqIraP4Dy9r0JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ouC7XvjU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5038KduL010127
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 11:52:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JY1U5XqD6amvSasmh+RJE2X/VJp+Hek5uY57Le5Rqfo=; b=ouC7XvjUcQgxa9tX
	Fh6t6Ubz4cyXa3SD6XTtiFPUPU/ykhr1/96ilxQvwcIsB+ISCT77XMugLxF/cnrT
	uFRPJrflmuP07ZghAM3gJjWzH4r6VUAjwCKvTv1hLYob/igrFIMhHx5kmQh1wazk
	YEqQ1Yw13JRHtoiEoEQFa3u36iSI9YCExYXFXo+qu6BgpF31b8FxEzEA2zoVgugg
	8VSfw6RHZUH/HY2Dq6VdK1Gu95atJO5x6Y/WcdaHPE+ca6BktV+5sJJHBNKneaaE
	gwtiOyKKvlVicsPS2/oJ34m8LxKA2F3sM7I0Myu5tPbSACACU/WxPJHgiSFqL6ws
	CfEVoA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xca50f0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 11:52:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b700506e64so27057985a.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 03:52:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735905175; x=1736509975;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JY1U5XqD6amvSasmh+RJE2X/VJp+Hek5uY57Le5Rqfo=;
        b=rebBb3xXGWD8u6c2QOruRJxhaMBJgnaS5pDLbrucaEHM62M+jqgN9fx6YDs2BgmcTn
         HdrDsEOGbegqlUPt/gDORlGPU+ik0+sjLmga3r3dqMO6aqMEKK7BQKesEjEazM/+HhkR
         u6zBj7kmcVdCf2xlad55JdJ+WiOy9uSUv797kpQq5WPcy++LYuRXdqNogqeuU5FhIuUx
         b9fK1JKwmCucBeyQjN9RgYpkcaENVzu247cmAXYg5ADEuXCV7p1jDM0aEV0gCxZSOn+/
         4Gw3SpcnbmKJjNjSkCiIbOHyYysVSIi38m7I4ghStcEPWzZxcQ5Kd6PpzXtGvypyM84e
         K0sA==
X-Forwarded-Encrypted: i=1; AJvYcCWCse79xo9wR2JnJEcwpQ0mBdYLx71o1JDA6JENgJn+ZhEJnkHtDIrebuLDrj9EwsmG44ZoRpA4pWk4@vger.kernel.org
X-Gm-Message-State: AOJu0YycmBRpgZ3yfVqsREWyOiJt+takX63PpDMkdztN5bWlhNGsRig+
	mMMhH8XydEo5u1KM/y5LChjgh6JSf69m5A7Ua9q6H6OY1NC0/0PYMMSMVYpxPADxqg4ZNP0vLYE
	NzgDM+qKPvFO//upLyqsuw4RNUt1qodDO7mF8gA9QDo2LQuiH61mZPJvgsUxM
X-Gm-Gg: ASbGncssvasSrrzIrpXzsx9btOx+REL3bkotaub+V3JwL3AzdoTh+7PmN+6F0DlJ+Tc
	2vDSK88HniohyNNuRuz+HaCPVo60z3vsv1oWDBBl+CaAC+5dKwQVqA3fdELV+DYmVfpgenF6GE6
	lnbwPh82OqH3L8fotXCm7mJmJOkVJU8be2VwSyG8Qh+CMg4EKwm/p9REisoCPybUpetEBLId3aj
	OqLDkVYSIjmzMP0nyzwNKo05DKrCxN8x+LnJVZ0PaKHpYXPP2VPv4sF/5JxnvvVmGCTdAebXKtH
	stib8Xi+xsbKkXXlYLCn0QOone/cqGl9i8U=
X-Received: by 2002:a05:620a:191b:b0:7b6:6bff:d141 with SMTP id af79cd13be357-7b9ba7f78b7mr2808802885a.13.1735905175083;
        Fri, 03 Jan 2025 03:52:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJxHWimw7JCy6lQWt8UYiPckHWd9mdaCkz+/USHq5Wt/D5nsSkZiCeWrJulSwvC6oBVP66ug==
X-Received: by 2002:a05:620a:191b:b0:7b6:6bff:d141 with SMTP id af79cd13be357-7b9ba7f78b7mr2808801785a.13.1735905174765;
        Fri, 03 Jan 2025 03:52:54 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895372sm1874946666b.58.2025.01.03.03.52.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 03:52:54 -0800 (PST)
Message-ID: <9eba9b8d-8851-46d2-bb5e-ae14d5da63d0@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 12:52:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU
 Frequency
To: Chukun Pan <amadeus@jmu.edu.cn>, konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cb90fd75-60de-4df7-bef1-e5c832601a75@oss.qualcomm.com>
 <20250103030005.30784-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250103030005.30784-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: D8eL-uF5ltvQiChUwqzYrdY-SVcKgqk6
X-Proofpoint-GUID: D8eL-uF5ltvQiChUwqzYrdY-SVcKgqk6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 suspectscore=0
 mlxlogscore=894 spamscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501030104

On 3.01.2025 4:00 AM, Chukun Pan wrote:
> Hi,
>> Could you try to boot the BSP software and read out the related
>> registers to determine the real CPU frequency?
>>
>> Or perhaps, if there's a cpufreq driver (I don't know), check syfs
> 
> 1. The CPU frequency on OEM firmware is 1.2GHz.
> 2. The CPU frequency on the BSP kernel is 1.2GHz.
> 
> Related commit on the BSP kernel:
> https://git.codelinaro.org/clo/qsdk/oss/kernel/linux-ipq-5.4/-/commit/7336e62905941d8137176b911410d1cea25d6336

Ok, thank you for providing this

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

