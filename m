Return-Path: <devicetree+bounces-237508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B53BC51A5D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6723A4F6BC2
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA86302169;
	Wed, 12 Nov 2025 10:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A3D2P2Im";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GoRm2yxc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC872D876B
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762942974; cv=none; b=lDF1bg6ii3Yg7JFxThTMSMz+7OYW1itMWCX/WzI1bWLy0yV5SSaO95sQBqWG9hngIIMFX6+/Zx4Ds7nQo3s39JW3y9TfGhKe4znatnssX1qd6QEcnnsIMtXINa1tkM9jr8GIZ/ScaA6mB4k2iSgiOzxlXxnx6GaxeqQp2cHoPQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762942974; c=relaxed/simple;
	bh=dkOkT9HWZuMRwVOPFG80dYooCAaGN2chaqeXAY7vEXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sAoMqOLOzsnAd12x6YkvwnKQrRSINyCXbJviDtRrXh9RT3gC4EGh9t5snCT9wQOrUNzLEknpV5ZiQ+55xmyQoIyGdNgYLhCXmuuicV0oFjEv04MKi1KZGblhhJDyIMxKmKWoMfSjl9vV1wcM1Y3mBVeNoVk/NJlWL/wh0EnP9kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A3D2P2Im; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GoRm2yxc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9ggGF1109096
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:22:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5rwAyU0aPBERjod7wgKA1iXuGw5l4SeREMu619RQNrI=; b=A3D2P2ImD5qeuGzo
	jpBbHoHhTWoTnBAVC6dE7Q74dffCYK3d80Avh5EWOL9OPMibphll25jw/a+c2fLK
	C5Xv6OpsbOgjUViRvORZ+CEajalz9Rufz8i3y5mJ2xlMsqWP4CYR0jS6FfxV65Z5
	d867ln9H65q5ZU2XS8q/+NvwyDNLhI9aTeuQXWh7xnlDZOaHMasR3hzUsIAjzWVE
	evSA5abf0Rm28Ey5jE+QIs1WuH5Y0eqCeH35kW5hDrm/kkpjf/WzOU/kUnT+0InI
	kNXy1SsstRtaRY8vrTCrNCkHCRaxLqzO05nSOfn6qD8vBhrVoyDKg2u63Tt/Z4Th
	9sFYBQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqum04r2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:22:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed6317be8cso2156391cf.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 02:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762942969; x=1763547769; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5rwAyU0aPBERjod7wgKA1iXuGw5l4SeREMu619RQNrI=;
        b=GoRm2yxcc+TonFhDeuDNv+2dfueUwaO3A1ol8EOkcwt6BpjvuMpGEKuC+OtO/CpK1r
         nX46Zdm/0hKLCfVSNRAEh+p2DAWB9PS31dq/xvlJwpLVwtpkaknpcODQ7idVSQlWzTHu
         1t4oB+7ciP3+xEhrz75lyRO83yp59LiybP1nkgl1ZNLzyupz+C4HJlfmElk1xTB62p/6
         jbr/FdcXhenWo2A25IsTc3QmUMw1W4yR279BDz0CP8OChyYFfexo0hS9AHnchut3Ttt6
         LeWucCgKXUQxR9QdAyxzRdtdAFbnM2jUBCEx2d/ZImFwIBjwJVhDQRwmM3bO6TC/0FPE
         5vjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762942970; x=1763547770;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5rwAyU0aPBERjod7wgKA1iXuGw5l4SeREMu619RQNrI=;
        b=o96tkXGa/hT8q1oEwSNbRqE4rU+wJfsgM9xe6S6B6uIl1iwsc1ov8V1v0clG42mRGh
         YRVTX69lO+Ui31laJKfAa0b6I3fw/GM47xwqlcxOkQ99eUY8Gp6YXbnXyFZ63w8M9eSA
         jtg7k4QXCLtkiFBTTL5MyEhxRWArVzV+KDSrIHqhnScDWHXo3qZO+BPgKdZgwBwu7jK8
         p1Mdmo/NumjrHyDjI6x49l5UavTmSAyT3PS4zvimywWVpKaXO1YJpPAVSqdNaRAhSnZH
         1WfT264pbvl4jORr0JxJHB6f7mHg+4m1RKJP43cpZQChG7B3cIPLUHuTsxsNgmlfEhO8
         qn0A==
X-Forwarded-Encrypted: i=1; AJvYcCUbZB7lQfomNCychNCOElmmDQ2IwkHViJRNCM0L7YF4MiuU4dT8V0QWGm0o3LhY25lYYsbSk2sF5u0R@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9eVDzGxssx6h9mEzBayGHyJPUfbhhZk/HNLA3SWePWzBMfp90
	0V/7FgYsh+coeHKEflBXRAI6EKX3Ft3jjl50zIMv9MszJ7zFE/7n/6dTlZ55orHV6VVpqVuG2No
	ckY3AxUEcpIKqSKJ8wQplq9fGIPSlk4KB9ujf70sTl1zNWlI96r6CNgsrqvk0BE0v
X-Gm-Gg: ASbGncuY6wA2pEV2SdLmlVghdQIs7Eu4/cb2cmZSZhbg2WL1qLgoCb1y/NfdVGJaXOP
	27Ob3M9XsE+LDlODgOswyhGk+Siy3Q6Ri+jZTI0421slGf6LmwpbkRQ0DQANwkmDkZjiXsHgfQQ
	ht8W/uhvap26ybdKqpiX76UZNhkKk8YQc50VemNL8BZjufenHT38/61PtTkHozPdlNXwb9D4p23
	L7IIkMnBNiPnmsiVXuSZSd5nIK/qOI/jWTVlnGWqt7mXlZyfozxnCv7SXofS+bARoLb2f2/hUGA
	uEgT1OBqh1YGSTx6JfOmU3LP7WLJ5k0QU+g43+a0u6ZCNy4Z22B7w4nAtKOAn9Q2givJWnB1Pbe
	cJaDQGvNUL5/8SDJhdvHTogPWAnsgC/OSHM5lrKCBVEO6Ef+ZL7FR9zGK
X-Received: by 2002:a05:622a:d0:b0:4ec:f53b:418e with SMTP id d75a77b69052e-4eddbc6bc3dmr20363081cf.2.1762942969396;
        Wed, 12 Nov 2025 02:22:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGebY4K7Namd6glwHLtMAZE0lf4hL9guGKfOfliFjM5eEuz55Nipc9SN3o1JFfip8JTUrox/Q==
X-Received: by 2002:a05:622a:d0:b0:4ec:f53b:418e with SMTP id d75a77b69052e-4eddbc6bc3dmr20362721cf.2.1762942968808;
        Wed, 12 Nov 2025 02:22:48 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f862bd0sm15744925a12.26.2025.11.12.02.22.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 02:22:48 -0800 (PST)
Message-ID: <28d62905-c191-4c3a-995e-a4146ffce619@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 11:22:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/21] drm/msm/adreno: Move adreno_gpu_func to
 catalogue
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
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-5-bef18acd5e94@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-5-bef18acd5e94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA4MyBTYWx0ZWRfXxgxHQN86PvAH
 g78nN9vBpOmddD/wR+412O1J27OyljLG/0vPMf5BYk0yBFeH6cbpq3JEkmvdS6uJoBnjcLJ7laK
 d0bNkwex5nur7fKdBju5Wae1eS8AusWJkmnha0KrZtQwMmGJ9LUFN901ObjMCgYfraSYo9U6VqI
 szkYvePy7LjNujUF+jCcCYb5s//4wChhSLcGhHX2O22aM+gZ/RYjF34Bi7QzT0LsCXWLKutr7a8
 w5iCkc3HWKUpWd2RXLXAmkJIt+zV4bUebyUPP18xKM0OpAQbxhdUEmLd6DxB3048qBr4R1nHkHz
 pHQYqaI9p/gapxP1iokixwLcU38H5w6Fal3atBcHn+wXH/yu8JVmEPDiRDpwbAyIAnDjE4fuaqz
 Y1oQZyolcvnPLvaK3e4VKnEDxuAUfg==
X-Proofpoint-GUID: DuXb24-VrcIDAmR6M3xjoR7_YXZag1Do
X-Proofpoint-ORIG-GUID: DuXb24-VrcIDAmR6M3xjoR7_YXZag1Do
X-Authority-Analysis: v=2.4 cv=KeTfcAYD c=1 sm=1 tr=0 ts=69145ffa cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=p7PcLuspDTVbkQel-sEA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120083

On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> In A6x family (which is a pretty big one), there are separate
> adreno_func definitions for each sub-generations. To streamline the
> identification of the correct struct for a gpu, move it to the
> catalogue and move the gpu_init routine to struct adreno_gpu_funcs.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

[...]


> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> index 44df6410bce1..9007a0e82a59 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> @@ -683,7 +683,7 @@ static const struct adreno_info a6xx_gpus[] = {

Somewhere among this diff, a619_holi needs to have gmu_wrapper funcs
instead

Konrad

