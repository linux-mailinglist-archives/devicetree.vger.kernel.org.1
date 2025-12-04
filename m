Return-Path: <devicetree+bounces-244324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 093DACA3C05
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E55C3069CA9
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83352340A4C;
	Thu,  4 Dec 2025 13:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dqFv3iHA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P3WNQ8ku"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D0A338901
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764853842; cv=none; b=Y3kSjuXHc/zuLkDN6mMHeZsUE4VAhyCW+N6wNToFaNU9dZyQj9d7U4l4dcNP+UK6EnG0p0yfFX+L5apnshz9mB3uC9Wog2XpbhZi07pNRB7G34tXZY9sf5M8i8xsb8Dp0pa5LdNQ/oglT6Vbz2SZvMPxxdGQwpt8Rut0C5iEIt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764853842; c=relaxed/simple;
	bh=gGu+paqPdC7mnHt9rPYBqZXYrdM76LcBZv7bVEm5vA4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I7n5kn5oG1a+szHN8X+flaqaXDuJFCioaFy1ryq9zTj6Xdn25Me5ruKGkuOKmX9Ofs9ttu0dJw9hkZRdQXkAQL5NKHRwCv3tHPUuirFhJPAute1PkigODN7gBNrzwQsJ+yRdqlwMRP1qE1XHZdWSTdXrdw4VKHaD0X/+/hhGucE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dqFv3iHA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P3WNQ8ku; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AErTJ1042891
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:10:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m2K2dG+OAFsTlsLCX6kJRr1wk8NbZkGqj6db/5frYcE=; b=dqFv3iHA/AWscMfT
	XmV19C7dBQ51O2gGGN34PlVrHuNtuzY8+B2hwucwHavQrm5v16imz0tw6bpj57Vt
	uWSS0rOW+k6gcl9g2uYjYGm2O5ViPSo6laRXs9OJXLG1a6R9RRP7TzhbjR+IeZqk
	TWV5OO67yFhGmmLLVpJGpA7NmUSpjRdwTGX1X/McdTEJ6s7oCdY5D7Fumy0Q3zvJ
	Tpm6CpzdoX4nIQBLBPWrkD+H8eO294HbdJTm6FsdUaPgYJkqIF2w6sG0GnG7Eh1N
	4aKbNx3rTrn0toEA564IFjRufwuzzlhO8gkbgaKJ9dAh956qPO6j7dzC1qpCm2hy
	siq0Mw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6xp0u3h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:10:40 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7ba9c366057so2386317b3a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764853839; x=1765458639; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m2K2dG+OAFsTlsLCX6kJRr1wk8NbZkGqj6db/5frYcE=;
        b=P3WNQ8kuwrXceDP1Rk4PITfDO9IMT3fPuAscWJYXiG2WTnc0exrKQuAu8uqvbHAhaY
         oFHLyRJ1zjCUTrf9d469DDHosacuuEPtT20exnyWcvbCqE/y+ttuA8576Nuln1jneyQe
         2Y97/kkA+5GCfD3mME4/VTOTG1hiBtleaqxPyXDJ6rupbMxRRERY9U4feDN68WxOjd0R
         7xXr1Wjg1HYyhf0L2VUDDhPVI2B3OGOAnXWDE6u4pkpl3/+pWsPl85cF43IW+vU+fd4A
         IlL/3pQkrQZXZnNyGZ14YIZ8++L0rWUMV06orAawFEK+tJkEZibq5wW9qI4tvXqPo6bp
         a8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764853839; x=1765458639;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m2K2dG+OAFsTlsLCX6kJRr1wk8NbZkGqj6db/5frYcE=;
        b=jhZeXAfytPV7xuAKgT1Q2bGxnXdP6lf1QmFB5n+YW7DoTCuXwt2XDABripe1nZHkV3
         ut8rnrwOeZbcKlJsbVwebRajCrGg8dzhcxuZlDAmCcI/aKaoLOPt937KfVJ3hTHTKYFd
         Z+lOr0ZD2YTQNMC3KFvtJ0cMeaidlRmbgtf5BVvZBVOxp/0nVWccn2Y7PaHTo1ZcccfS
         UgIixYGsnaH2BtejzwTMbHiuylTyZpSMR/te/sSfNiGFZcgD55D2SCfuCQ7jLLcecDHX
         lSXla9bNIPDCmxIexdDar/tt2donGn9H3gmdR2LFSnao+fq++PMOT8iCyE6C9Yg6g0bK
         hrRg==
X-Forwarded-Encrypted: i=1; AJvYcCXCeSapdLr3oddmGJbURjbCM+qxOHF9YJ14j2ZtGoRoflpUxiKBwWJmZ4SzKri8U22maQjyNsHmu8Xk@vger.kernel.org
X-Gm-Message-State: AOJu0YwuHEW8xHEYr2rgsHb2bndNiu+kQM2AVvRXM75dG6lNQRK8CnKd
	zquaSzvA6fTVUiJDiBc9XUeEQojNGaPAZKuX52PKFMgoKY4dA6vQP43o6Mf+H4pMNbClr5eB6Xr
	7wSAICAil4+oTlv4wCJNyI3Y7eGSBcwJMNSbifyLqU6h0fCXeUvt3fTLBNmpuNqWX
X-Gm-Gg: ASbGncsF5AEcAn9lNLsBDShttB+7Qtxpm1Cx+ycIsXxw8h/Ug8sATvxRnSZhFOrEv6A
	O51jgcKuGrSS2keM/JFlv2d/R0KtyfbzbjJudzM0pSIF3wGAjDS7zSKZ8LYuisC3lF1psHT84jy
	r2kdMtO40pTswR5q6o5JFTR+a+8N0nDrywZzOYg+TyHuj4+VeB0DU/BOeSaTyHfeJgooSkbmedn
	r/doy/rQYToPvlIkVwJOWTB/NkwEIMVySoKTCHmHB/1O76rBfDfLREd9Bvxqn2dcdgW302OlBQN
	jGZxCeb5nkw3+KyHocmWaM7gUXap31+h1oSVsrqkehEKa/h5kiIBueD57KFxDmzmqa5SDBpwlkV
	AHxcVm+aJnQ4i40cL2lSSzifYqGmBHJ3GKA==
X-Received: by 2002:a05:6a00:3a1c:b0:7a9:c21a:559a with SMTP id d2e1a72fcca58-7e226e2de0bmr3219784b3a.8.1764853839412;
        Thu, 04 Dec 2025 05:10:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHzWjvtqQGT91E8vkBQvMcAoAvWRgDe3oW5gq4ULEbuYC5TSGRTZv0nuedZ7pKUKHPPmAwtCw==
X-Received: by 2002:a05:6a00:3a1c:b0:7a9:c21a:559a with SMTP id d2e1a72fcca58-7e226e2de0bmr3219746b3a.8.1764853838937;
        Thu, 04 Dec 2025 05:10:38 -0800 (PST)
Received: from [192.168.1.4] ([106.222.235.197])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2ade44a4asm2174039b3a.36.2025.12.04.05.10.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 05:10:38 -0800 (PST)
Message-ID: <936b6a48-a5e5-4efb-be7c-215ac670677d@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 18:40:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] drm/msm/a6xx: Retrieve gmu core range by index
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
        devicetree@vger.kernel.org
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-1-9f4d4c87f51d@oss.qualcomm.com>
 <9cc55934-6980-4673-8501-2d1efe2f816e@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <9cc55934-6980-4673-8501-2d1efe2f816e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RKW+3oi+ c=1 sm=1 tr=0 ts=69318850 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=jBSxni06C9HboLYAjQ55wg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8zqzhdr9uPwxYiBKMiUA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: dG6EY8rArq8tnbFcx6e9TYrlrUD53vfB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwNyBTYWx0ZWRfX/tiGDftGEoee
 vd9L6+u0Xmyp6WE19ECBqP3PvxhGNy+8tBnNIFdm6N8/ewiB2Kv8qxKqMPLv5TERQDaxN7gt6fA
 mIitak/bGJuFgmgy2R6gGObwEDq0Xv3Id8OfTJBvV7gpbCzM3cCHdHLry0LqwguvsHJdcHlm9fc
 CVTQjukAw66gj7sZn9vEhoaJDXDk4g8wZvaOOurcuXKl0QIbMxotorRiCCHGz0UaGZNQyisLXzV
 HCOpO1K2FSuXp2s2G4TrNTAEjOfFutFGfZEbFLck50aE1ZT3AR+9u3KHRHlGw2RyziwzjeqE3UF
 BJ+DgsuUVuhcUd7RLdtjLzIHwG8zU/2RObY7O2k4bE3I4V6T4SsxaXWg9hE9ht4AZ//yQcMMBY8
 L56UbMblC7t4O0TLsA/JC6GEdXQ+FA==
X-Proofpoint-ORIG-GUID: dG6EY8rArq8tnbFcx6e9TYrlrUD53vfB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040107

On 11/22/2025 7:08 PM, Konrad Dybcio wrote:
> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>> Some GPUs like A612 doesn't use a named register range resource. This
>> is because the reg-name property is discouraged when there is just a
>> single resource.
>>
>> To address this, retrieve the 'gmu' register range by its index. It is
>> always guaranteed to be at index 0.
>>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
>>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 14 ++++++--------
>>  1 file changed, 6 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>> index 5903cd891b49..9662201cd2e9 100644
>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>> @@ -2029,21 +2029,19 @@ static int cxpd_notifier_cb(struct notifier_block *nb,
>>  	return 0;
>>  }
>>  
>> -static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev,
>> -		const char *name, resource_size_t *start)
>> +static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev, resource_size_t *start)
> 
> Can we drop this and just use devm_platform_get_and_ioremap_resource()?

This API seems to lock the io region and fails with -EBUSY if the region
is already in use. I am worried it may regress other chipsets. So, I
dropped this idea at the last moment.

-Akhil

> 
> Konrad


