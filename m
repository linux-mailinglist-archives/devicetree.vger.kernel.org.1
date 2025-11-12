Return-Path: <devicetree+bounces-237492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 455BBC518D2
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 791AE4F1667
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E8342FF167;
	Wed, 12 Nov 2025 10:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AnS32Jw0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ka8U+l/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03E82FF658
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762941602; cv=none; b=IN+BPnNEXS5UYdrT7jjlj4MyGfSZ9uMx3NtRkV1kGxY7cz12szXfXsi2Mx0JMUen0IVNFzpDqnUVj9n1QdICbxCux7AEp3VS/kVKpHhlBOHYkblQcrbFkkEmDJ4F1JDqtVtfWQz8fdfpQTcLnMgV6MUfXBlvRkNhj4Cyiri7jEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762941602; c=relaxed/simple;
	bh=vaafyOM4EBmmr8Xr/75zkct+KElawHFwIAMtB5jypSw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JDNC7gbXPMqaL2jawa/saKNcumTa8KJGy9o4s7V48zPuemf1v0IlE9XeCNPkZ3Pk3BePwma6q56d6JadnI3ezvGcwFxR7tKF7wuYO+dqR0WoLYSMJGL4bWfHz91hW8ZWz/Tl6sHq3JozmwxAJ6OhL9E/A+DmqnV5trSefB/anww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AnS32Jw0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ka8U+l/t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9gjf61109249
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:59:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/c8M8R+TWpXRQ5e1+bQrBnPfd6et7TV4rbqupFG9SIs=; b=AnS32Jw0ui6C8JOY
	hiPKBk1G4+knA0yFTPdpEN1SZwfHaZFz4tFVcbsVQ9IJ5pY7s0a42fBtGJkaNhZn
	dIrOr48Vx48OTdnNHvTLezT+eYp2723P/NsAd9bkiuCdYsUldX2xwlu8KLiAILmt
	zzeKMU2LLcMYA3fzCWYnr3iWf0zNVUKDMrrV4DHhs8bMFEaeX3m8Z9+smhLgubRc
	PeOJ0ydOcuZaeHnNI8dPpGdS9hl0h2r7hYJdIGgoetwxgmlfdSFPnQuHQnODFHmI
	SJ0BlK4q2Equkaba5vjiU0N1ltD3uoe1CxBCAZeNMs0nel/le8dcemsABbpQ161j
	FAB8kw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqum02eu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:59:59 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b25f8d38efso24124685a.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762941599; x=1763546399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/c8M8R+TWpXRQ5e1+bQrBnPfd6et7TV4rbqupFG9SIs=;
        b=ka8U+l/tNcEuKdiP67oc7URggc0551Rel7sn3erK2L0DGabgp3f64HX2/FPOTOSEqZ
         GciIOxjwWsOhZCAV5E7kYN3j8WSVfBy9wekz1iHhH4tMhr018UacO9iMVV6m9aXag00F
         eHeoi8zZeqTMUK6FMXNloSaYvQynAe6exfIxa6V7rzr9pQ3HD8ozOB4HEDmR7zAEF7JV
         GpDKBYJjfDqfZNd+3PBw+VVSTSWb2qwwL5AA4p8qYW5UFucjljmhysoMphHIvXE+w3bI
         dIDKDE5uG4nUtMSt6cg8gqAvOb6DvL5l0OykEdYTr9kWL/j2+n1Dn0P8zJVl9sbFGzbJ
         79aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762941599; x=1763546399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/c8M8R+TWpXRQ5e1+bQrBnPfd6et7TV4rbqupFG9SIs=;
        b=czdDQcGvY1f2YjqY/g7QAAYeT0rgj7YFZnpuONe7OVPRCgzOBIkcpzyEZF/Gbh2fX/
         WMibwasOXpTDwM5biExFY5Ol/fZxlX379FvcbQuzOn9zcXiJZKO5WudQNKc8et+GubpK
         KreRWPlx9jITz5+KaA7ASlM5YgMOkI4LnRaOlU1JBWEh5mFAkwfsSUkWrY0pG08l+qgQ
         Xk7sjUSsHZaSarWNFNE+Lr405rbHGcFOjF3fj+IXSKd5yEOp6LeFNA8TEd4h9HV0JAeJ
         L/D70Fd2BPmLolsgyxEJO/vyj0wTo3zi1u31hACGYekxa/xfJRwnE1MkXPwUzMsoC/Ms
         XphA==
X-Forwarded-Encrypted: i=1; AJvYcCXZZyc7vmcoilTWt7DR0XXHXuAMIMHVFUUhVaIGoNtoA5wg2eF/GyH8VHZIpGsRO3eDZJdaIN6f+84i@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8AbUr93HgNk9xC/RhuZa5K200+JpkWgHRAiEGdc0kOJ3BTl5b
	hnDllnqF34ORGJq9dOMjURg4FW+JuNT6hd+QR4J3AayNRbEae0OFmPwos6gkay5sdsjYMBXFfOt
	EApysIEku6dxxD3DgWKwdi3/zgCr4y2Dj3I28YOTxbF4HnkscfueUdTr0L9fldH8k
X-Gm-Gg: ASbGncsnsGVARHMRkd65Wo0Zd8QuAnavPvOZcw9UQUzOxfmgU3pRAP2yMv6XlgWw0FX
	v7WOeKePPYE8VaNOnhmwrIkHMT18UVh2To9PM78ZJI48L99lMbXJwf8L65aIHzdigpgMcLxylWv
	2gNQPb9H7AL720N3srxoqwT2woXMPGWYU8TkUUQT1wcDAMrA47dG8otkdd5Lunm3CMokBA3Ir7u
	X2ek/0PiwkFzUxLNfdMCN1GVhy3AuFpWqMgd+fX7xUKulEVD+b8Adi8YRicnYDDzvcyP+pzUj/Z
	Emh46Aqh4KMUSd1jBDL6MKMCFkq6VezSJZdga7DD5ZoQaQHM4sTNm/JGSMdpCmH3R1pBpH7G7Xa
	u7zJ+DjQA7Fr8/mex+L9LC0gOY+Svyj0l/bXLjiqXJFkFYmhmzCORcRGd
X-Received: by 2002:a05:620a:4047:b0:8b2:fea:21ad with SMTP id af79cd13be357-8b29b7c1df7mr186052585a.9.1762941599114;
        Wed, 12 Nov 2025 01:59:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFeACvtEsXBDBf86oFt1CCQ2CtTgxFZLUvN151CpNKDu+hMJHO80+bcfR0KyKS8bfTOd2+bww==
X-Received: by 2002:a05:620a:4047:b0:8b2:fea:21ad with SMTP id af79cd13be357-8b29b7c1df7mr186050985a.9.1762941598464;
        Wed, 12 Nov 2025 01:59:58 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa0f37csm1552008366b.64.2025.11.12.01.59.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 01:59:58 -0800 (PST)
Message-ID: <2b10f34e-ab3c-4329-9034-8666b252ac49@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 10:59:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] drm/msm/a6xx: Add support for Adreno 612
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
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
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
 <20251107-qcs615-spin-2-v2-1-a2d7c4fbf6e6@oss.qualcomm.com>
 <abf79d96-72c2-453b-aa2d-0626be584baa@oss.qualcomm.com>
 <65714302-3b71-4a15-8647-ad707e056302@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <65714302-3b71-4a15-8647-ad707e056302@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3OSBTYWx0ZWRfX+v8ZRe5X+pKb
 C9rOXxY7M16YChJhkVC1zovpn+tcIxoYyWBIZtflo0hJivjJQFGQTZYTvnGDJ13uQB6G5FLG2Nq
 87sdFMB4sbmVWiJJbzX3iNRB6MNTWtQIBR1GsYTHRCtQKa2nd+WovnkyE5MmYFNNSiZMVL8X1Of
 IMKQnJzZCewbxej0r5eA5IXyyC387j8VDZeI8k4pNf3Ve14fOnS+ScfkClznU2cXYKzjAdv/wva
 Q01XA/GDmYzwwQdCs300BSJZ7I+OLEuM08BGyFxZI+aSeQPARwB3bAvP377S/Tob2uyRyOVikpx
 b3xv+7MO+GTxvPth2Oxop8JiSS2LwHiRt/7QwUGw9ePLfAg8HvyoU2WR1Ier95oQpbNLhiomEQE
 HF50SY6gmFNZhKdYwp+CXQuUbrNBIQ==
X-Proofpoint-GUID: wdfdnng7m3srOr6LUdb00C2kyjYOI7fr
X-Proofpoint-ORIG-GUID: wdfdnng7m3srOr6LUdb00C2kyjYOI7fr
X-Authority-Analysis: v=2.4 cv=KeTfcAYD c=1 sm=1 tr=0 ts=69145a9f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=yXIK2swZwOVbrSwllKgA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120079

On 11/11/25 4:10 PM, Akhil P Oommen wrote:
> On 11/7/2025 2:28 PM, Konrad Dybcio wrote:
>> On 11/6/25 9:50 PM, Akhil P Oommen wrote:
>>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>>
>>> Add support for Adreno 612 GPU found in SM6150/QCS615 chipsets.
>>> A612 falls under ADRENO_6XX_GEN1 family and is a cut down version
>>> of A615 GPU.
>>>
>>> A612 has a new IP called Reduced Graphics Management Unit or RGMU
>>> which is a small state machine which helps to toggle GX GDSC
>>> (connected to CX rail) to implement IFPC feature. It doesn't support
>>> any other features of a full fledged GMU like clock control, resource
>>> voting to rpmh etc. So we need linux clock driver support like other
>>> gmu-wrapper implementations to control gpu core clock and gpu GX gdsc.
>>> This patch skips RGMU core initialization and act more like a
>>> gmu-wrapper case.
>>>
>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>>  	/* Enable fault detection */
>>> -	if (adreno_is_a730(adreno_gpu) ||
>>> +	if (adreno_is_a612(adreno_gpu) ||
>>> +	    adreno_is_a730(adreno_gpu) ||
>>>  	    adreno_is_a740_family(adreno_gpu))
>>>  		gpu_write(gpu, REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL, (1 << 30) | 0xcfffff);
>>
>> Downstream sets this to 0x3fffff, but IDK if having a timeout too
>> large is an issue
> 
> I reviewed this. It should be 0xcfffff. It looks like the latest tip of
> kgsl has an incorrect value for a612 gpu.

Thanks for confirming. This patch looks good to me then!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

