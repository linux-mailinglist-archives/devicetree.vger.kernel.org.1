Return-Path: <devicetree+bounces-137159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD07A07BC2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53C34188D731
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52ACA21C9F8;
	Thu,  9 Jan 2025 15:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b1eT36zn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AD9249E5
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 15:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736436084; cv=none; b=pfwbYxtay6zqD6E9DOcA1fzJMbwb3U2hjWOkUr6LktOIHrFA0ueAAKxkrEHL31Lm5x3aYGb4SKuiJZDTGtiGUstFWvFNUXF5Ep/+CDV575x6iOTbjcwDHPIT1J48yVNoGcsWdd+dio1dHcL/OsTsRBiNvQhjn+oyuBZZWEy51uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736436084; c=relaxed/simple;
	bh=TZeuVPmWAY8glpDt7dJrJ+XrqUmpvH7FJYaawA1F2CI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HAO6KTFgVH+F6l0xMkUoZrstJyT8svrK8kqqy6qm0pPOYBSaAQIz0DI6vxwXnLeH54Iw8CG4lGa72c1+SWFlos88dC8rg3CY/j9dRn17C1PVMvMmPFc09KNuD8vLtLneQ+updig2/EMrGQfpxVG9thjuiF/QLkhU9lfzu4CKatI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b1eT36zn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5098wg71007340
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 15:21:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	34C5p5CA9ftaH/fn6NgxcTkQENUkZzx1lhm/7HQ8DIE=; b=b1eT36znZ14h/caY
	4OEyBd1sZHtI3TFMEAmfKqKbJIVvwYWeFKA6zK1rbDyBXee0pCIXJKqEP6yYHFAi
	2uKUBNl9/Qb4oEAFeuB9USqukxlqW+tmVrkVxB34ga5Usi5mRs5VuvSURfjU3kdK
	DxkMvH8CBo8VTCZ8A/7fU80e89xQRjqO0azn6yDM54lswiKneVoQhiORlUzcDKPf
	xXomwK8BPo30K+BM1fZUd9fsHLFEm17gjwbTVAUmRfLly2WZcKQTwK77DZXRJR1z
	u32QPHLDqNnCwzE9MoUjJb1oEjmDxY9Wz8g2E/hvg688su7rjHJZfU+Pmo7ZTGR3
	H2ssHQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442bdxgvt4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 15:21:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46a32c5cdbdso743591cf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 07:21:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736436061; x=1737040861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=34C5p5CA9ftaH/fn6NgxcTkQENUkZzx1lhm/7HQ8DIE=;
        b=e6X3kC3eU+8IyIHkDWCuzyN3pjPrfjF2B2VQvRqupuYTlA+vjs1z7CkPW43zzz0Xcw
         XRSjMZpuuK6Ju+H/bm7/zZdALb7izCqS8+MuMp+v23RTL571j8ezUXAgBLNXBI68gJ1D
         u8AP0I88Gq24mPhABkrskb7GX5yGl186wEg+RvNXtUxVxOxpwZSREwNHMOhOZGbDppYY
         2wKiWWjQ/klIagR5UXr7r+DNuF967UXYB0TSOU/GEbhRqMgl/HV06girHIjDTwpgkZfW
         Vl8fwun97ngDL9EKXREzS/q8j9evfhcSZrOHdC9pBmW1xDnZcOzQ/FHVAy8owukTbV0f
         SpCw==
X-Forwarded-Encrypted: i=1; AJvYcCX4OPJRpLpZfFga8RcR3iENbOmuH2qh44JhR1iQd4/JxYFZyvEKLVDHWp/bJq/vavrLw9vKQzvEYGrb@vger.kernel.org
X-Gm-Message-State: AOJu0YyHj9m7VC40+1teGcHZuXDJjD7zxl+7ft/FyWegpcgNpk9G8Vey
	AoSqZyLm5fdEZp7vmnN71mTUCgSqfNhkg1HHstXu+oP1WJjn5zFLsNdXcgv2p4Q6ovkNaU+k6aN
	35yqAgq+mTBbFrrBEajxgTbc29wI3bNyUaf2PeudSexycubXAJlUig1XZLGzo
X-Gm-Gg: ASbGncsjGkwfKPkY/vihnz6WpR2o56FJM38sakUhYertNO1grDPmi7e0G+eRBX+lkfr
	COLpYwMgg+rv3dVojx5NdrApHOzX8vXpHnadZDh4/NRRSyDBgoCGOQky4pSR5qNz4D+/mhWhZ82
	gAWDiTZ/TNoppxLShzempo9s/8z6IvQwzrtB5k029F9IEdoQHH/YKjemYZ5MHZ2UevL/EX6MXni
	MUBE8wmNoStt7qBoXPXUT+fAdzL2c8sIV2fo3vLbNV3CLqVz1jOUqYnE0lsORFXoZXSDHo2JA9C
	1M6eFXq6nxSjCIfX9fGCqvbh9jttLdLBBck=
X-Received: by 2002:ac8:5a41:0:b0:461:6599:b9a with SMTP id d75a77b69052e-46c710f2d4bmr40217941cf.11.1736436061053;
        Thu, 09 Jan 2025 07:21:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmIHtl3eZAgfGfE2RTSXRapbygLmumbuXY2AxYPLgcf0IqlUc7tPrUr7Ep4FQbNoFQ9Z9sNA==
X-Received: by 2002:ac8:5a41:0:b0:461:6599:b9a with SMTP id d75a77b69052e-46c710f2d4bmr40217641cf.11.1736436060395;
        Thu, 09 Jan 2025 07:21:00 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c9564865sm81412866b.108.2025.01.09.07.20.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 07:20:59 -0800 (PST)
Message-ID: <27ae4821-b185-41ba-a0ed-6e4f754a4484@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 16:20:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: dts: qcom: sm8650: rework CPU & GPU thermal
 zones
To: neil.armstrong@linaro.org, Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, robclark@freedesktop.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
 <b305ec90-26b6-4dfa-830a-4ff3acd9caf5@oss.qualcomm.com>
 <ec361e16-4af0-49bc-a7ca-8d8caa3dc332@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ec361e16-4af0-49bc-a7ca-8d8caa3dc332@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: qDJ1uWQpJkN1_F0ae1iKbTop7Jn7ubZk
X-Proofpoint-ORIG-GUID: qDJ1uWQpJkN1_F0ae1iKbTop7Jn7ubZk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxlogscore=793 impostorscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090123

On 3.01.2025 3:49 PM, Neil Armstrong wrote:
> On 03/01/2025 15:43, Konrad Dybcio wrote:
>> On 3.01.2025 3:38 PM, Neil Armstrong wrote:
>>> On the SM8650 platform, the dynamic clock and voltage scaling (DCVS) for
>>> the CPUs and GPU is handled by hardware & firmware using factory and
>>> form-factor determined parameters in order to maximize frequency while
>>> keeping the temperature way below the junction temperature where the SoC
>>> would experience a thermal shutdown if not permanent damages.
>>>
>>> On the other side, the High Level Ooperating System (HLOS), like Linux,
>>> is able to adjust the CPU and GPU frequency using the internal SoC
>>> temperature sensors (here tsens) and it's UP/LOW interrupts, but it
>>> effectly does the same work twice in an less effective manner.
>>>
>>> Let's take the Hardware & Firmware action in account and design the
>>> thermal zones trip points and cooling devices mapping to use the HLOS
>>> as a safety warant in case the platform experiences a temperature surge
>>> to helpfully avoid a thermal shutdown and handle the scenario gracefully.
>>>
>>> On the CPU side, the LMh hardware does the DCVS control loop, so
>>> let's set higher trip points temperatures closer to the junction
>>> and thermal shutdown temperatures and add some idle injection cooling
>>> device with 100% duty cycle for each CPU that would act as emergency
>>> action to avoid the thermal shutdown.
>>>
>>> On the GPU side, the GPU Management Unit (GMU) acts as the DCVS
>>> control loop, but since we can't perform idle injection, let's
>>> also set higher trip points temperatures closer to the junction
>>> and thermal shutdown temperatures to reduce the GPU frequency only
>>> as an emergency action before the thermal shutdown.

We could probably work out some mechanism for drm to say "gpu is too
hot / too busy" and stall the userspace's requests.. If that doesn't
exist already (+RobC)

>>>
>>> Those 2 changes optimizes the thermal management design by avoiding
>>> concurrent thermal management, calculations & avoidable interrupts
>>> by moving the HLOS management to a last resort emergency if the
>>> Hardware & Firmwares fails to avoid a thermal shutdown.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>
>> Got any numbers to back this?
> 
> To back which part ? Yes I've been running loads with difference
> scenarios and effectively the hardware work is much better with
> a more linear correction and slighly better performances because
> it sets slighly higger OPPs while maintaining the core closer to
> the target temperature range. Which is kind of expected.
> 
> I don't have easy numbers to share, sorry...

Ok, what you said above sounds good already.

Konrad

