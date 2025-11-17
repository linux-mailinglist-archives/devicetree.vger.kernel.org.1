Return-Path: <devicetree+bounces-239409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BCEC64954
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:13:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 204F33A5ADD
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D498D32E749;
	Mon, 17 Nov 2025 14:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fSa2HpyV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LeqhF66E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4934521A447
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763388554; cv=none; b=s06XD7PHf13Qtv9/AuaIN31pPHP+RPTaXFBj/JK5HCuFAMnK5O4q47pfBAaAveveB3oMSwWIpwrpQrEKmrZ9xZgbzJeUs5sJ2WikfS2J3fjVre7DzwADzz4c4QvLDE54x3iWshBGXfPUD5gA1hNydnGG7TNLcMBO98ljo/J+Pgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763388554; c=relaxed/simple;
	bh=iWP9KkEiIxGDhZLl3mYX9omLsm9axPKeKxjvh8gmgc0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jIZEBeE/KA2MdDFeO12SGw8F3hSreus1TEVXjTdHQar+Pfk/pzSMTEN1r8725nuLeEiHOhLu+nVYYy6HtizG2q4mAAWsLjwqC/JO0OYC/p1SIjBZhUYMXAWjwr2o7us/IC5/+rtlVEiE8W8lo5N/pu7J3e1Lr+ohw7sC2JwP6hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fSa2HpyV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LeqhF66E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB5Jxs2910786
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:09:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wYgunParh+JDc5/YCj+ahicQ6jsPzzbMC9cx0xBw+FE=; b=fSa2HpyVbEXyR5hs
	AUWWxsv+gPGVSCo4FW/z8Q0Z5Eimecl3OR0XXpW8dsYFPKyHvu/+W/bsFJ7R2wYE
	yE7xU5SMzPHOY0ife6MRwRqvPrVeVVPYpEs5B8mpA3Kac4OdYqdG1WF8Mgy+dx22
	L09YKmI5RpAtS6q1ugXdSg7b9+kWjbSjeYMNeD7NsLRlGqq/Q5+4JmbqR5uyI92d
	2yb0J8hx6WDz47JuY8WXKiAUexjO09H9IeKnAaLM7SDtBFAwhRIhtwAikacAmms6
	kAu6pjtK6ERfamox+wbyXsNm5l9ITldnyUb4NfOCBpKEMskvjfonOlezx7BqZtov
	zKuykg==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejgccxwh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:09:11 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-559a4539437so292330e0c.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763388550; x=1763993350; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wYgunParh+JDc5/YCj+ahicQ6jsPzzbMC9cx0xBw+FE=;
        b=LeqhF66EG5kEq+bT1OssWrRq2VKyoEKMh1SEuEsleQ/4GLgK9Vl7dGImj+qkjQ5kDU
         HN/HiTlaQbLC55WADGK3RXMEQ5i9EveVowjwuvjeLXEiwx1shNlJMYBx2AmZDhKxOGsr
         T4HQ2KogCjPUcqz6RhAqJGqJVh/yC+X8Nt0yPs1u/UZvOspxDvdov6iAtnN8ivJwUY+G
         yce9Jbca29ZhvE5xjtyCQX4Wazk3IS6eiVgreoWZr71mDR1fPoy55CiJGqHGv5wrzXA/
         0oCzHB18PPmnC0Dvb+uk+4wHVZc8Nmi1+OQ13ejlQf7bn4vwi+QddAqVoMEuP1yfYLJ5
         h4SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763388550; x=1763993350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wYgunParh+JDc5/YCj+ahicQ6jsPzzbMC9cx0xBw+FE=;
        b=AUK9YPmzC6ygYwvShjMa1ZX5NRNAQ3aTn30Z2BgTlY6SZ0JtF4V1pPFcRp+H6cTi4k
         3FPUCeJM84vRjOf4lLjjl5x5dm11FmCbYRMlQWdhHA/i+398rO2c/GbPy3aPJVbIgVzD
         7pqKjrz4pYjcq/ePi+G5Z5Qv1drhTIKNjOYe0p/oOiExO2sATsGK0MqRMIovRAH+xx1M
         sMS00PB0rYISNqdDZi4CTdenxMjbGJTBm69nSMFQj21nc85UqYpfVM/w5F4Qsa1QQbAg
         A8Kfe2aFwTop2VQEZmQk4bO26EOIp10b/BtqCYCPI7KYTCOVMMpMmht4hQq9s+X0h0ax
         YZ6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWltT/naFHDTKusf9I276ghJGiYXuDTS8Qry1/HJ4ks5lyn2cqLcSxTGE9z2qp8q6Xn+uLVpTPukct4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg2Lg0AtJOg+czF97eZ1ADQ7JAYdXhSYKSV5hAreHLuG41CJd4
	J00vJb5svrFycAGEjW93b94l1zNhGJWAj3n8u9n66cIkk6+kVoWQC5FqL6QZ4Hikv0xS5LQTFPw
	xW6l91Pop4VEWmA3/MhwnXATWAwiPotDsf0FMc3a/+fr0l0LBI6Cjnr4bi4HUQFxs
X-Gm-Gg: ASbGncvsmtPWkIxPijKyiqQoGZt5xd3neKBB1uKFLXuIjihXkIKLKsp0D94a1z6c78q
	UzKyg5Ot/d00xVITER3twoEq+peXchxkqVvUt+R2YB62zhgqQMzP1g1wRligWloFZn9Fcu+aHPr
	Q6PWTSxCzTJRJmxil6W7Y0ShfdfF3d/GzUqaRjSDncA8G6hqP1lQFvG0LclFnAo01Q/EJsVf28G
	aUe9aenvgDxEbsaWdd1KvezXZCQsONc1Ed/EN+olM8zfzZs0bmYPRjLUw+C4lcCQ/XcjcmykFiR
	nvGYfmsd2j+qTlmIc0UMqE/QTlPij1PQBFUv9bK5WIfL6m9dP4ebLqxTwcCudaWZ98j1PhACbHe
	mWBWQs7dbpcZKapDTRM6/Dkf6YSN9ZOKq8LA71MEFftea8ICQN6uJ7QO8
X-Received: by 2002:ac5:c818:0:b0:55b:ac1:d05f with SMTP id 71dfb90a1353d-55b1e8e656bmr1323581e0c.0.1763388550498;
        Mon, 17 Nov 2025 06:09:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEn28HG0q377MHRpAVge77qxO8f44ujFbyC1+LqHPUCbNQVUi80/RIfFpD8JZBIKQiQvtEgA==
X-Received: by 2002:ac5:c818:0:b0:55b:ac1:d05f with SMTP id 71dfb90a1353d-55b1e8e656bmr1323540e0c.0.1763388549969;
        Mon, 17 Nov 2025 06:09:09 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3f961bsm10439343a12.14.2025.11.17.06.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 06:09:09 -0800 (PST)
Message-ID: <eeda046b-cea1-4c57-86b9-217482568b0f@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 15:09:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/20] drm/msm/a8xx: Add support for A8x GMU
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
 <20251114-kaana-gpu-support-v3-10-92300c7ec8ff@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-kaana-gpu-support-v3-10-92300c7ec8ff@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: w-o18DVnOQdWKHha5KZP6yulGQYwLznm
X-Proofpoint-GUID: w-o18DVnOQdWKHha5KZP6yulGQYwLznm
X-Authority-Analysis: v=2.4 cv=PJECOPqC c=1 sm=1 tr=0 ts=691b2c87 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=N-Earc09p0J-wu5tJXsA:9
 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEyMCBTYWx0ZWRfX4KAqnhE2NBml
 lIAvIpV45oYZGMkHe1m0cQY3WOAP9O8iPJpNZoxnpEHZO4NrSkf3cpG4buVvBTL/4iC1MCvhZpb
 MwXOBCo/1sMVO5cRWgxDPZpQO664IhUn1suMcnCU6OuWNPaMcr2oYBWieKdAPFknh7SHLe+Qdyb
 hdZPXk5D1THhWygzJoz+fpyds+xZS5EBSbQseigdnJ8kLmFhr0T3LQQOdlEoRaY4+GTGAi2H7wT
 LZYBNPHgqUmRVnzguQBzrOs8/C4TO/MV6COTwfTyHVSQR1eDuQOxWnHRg+l+FdZDbwmtoAS7uY2
 dbF2IV2sVGSfm5f5EnnoBfJGtDZT1A5DhEDXYGYZDS7YFub3l6wNqm+dgmJvUtml/tOc/oJeHY4
 oRpxcQtCm8FHM6o3K1Ah5z86EWLF8A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170120

On 11/14/25 12:29 AM, Akhil P Oommen wrote:
> A8x GMU configuration are very similar to A7x. Unfortunately, there are
> minor shuffling in the register offsets in the GMU CX register region.
> Apart from that, there is a new HFI message support to pass table like
> data. This patch adds support for  perf table using this new HFI
> message.
> 
> Apart from that, there is a minor rework in a6xx_gmu_rpmh_arc_votes_init()
> to simplify handling of MxG to MxA fallback along with the additional
> calculations for the new dependency vote.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

