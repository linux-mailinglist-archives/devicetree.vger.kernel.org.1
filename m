Return-Path: <devicetree+bounces-245255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF21CCADC49
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:36:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 474A6304FFD7
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0899D258CCC;
	Mon,  8 Dec 2025 16:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ceMw35R5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RcUIal19"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828931F4180
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 16:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765211728; cv=none; b=fkYwkgtRbyb7sEZhgh2tn9s5PymcF1nyYbhy6VgcjFvv+9AgJAexupZinn83tTyHoxRbWQgHx47dWnP2kBZmgA//5hxpO9NmvNTMhPgCBFDeI9owJcFlZkSMIejKsaKkPqXCjWmJ/YUCGXEKn1hewrmtUFhSluSw/i+xgqmUk2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765211728; c=relaxed/simple;
	bh=WRhl8m67559d/bMp/HmglladIBTlRdZDTyG3K65sXPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WdRdWaAkRx2P2E3Zmpf/J+jmIkK/i9/VadnpuPa7oO6uiZA9itP40z6/IS/HUqG/NWTHCp/WDoPXoecETh9ciQGeSuoqQwzqn79Ng0zIXByZbIWIfFAZP6fw8oDq6o8cPDPAJDGvqXFq4CX6c7zJXtoQqHaeafMS8K2pv1Ws6Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ceMw35R5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RcUIal19; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8A3m42008744
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 16:35:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JAlzVtGlJb3tb/zpufHIER3XlqaUXfI2HB/I8TTodRo=; b=ceMw35R5jAeeWZo3
	YgA02xdbUkAoqvnH/I0O7FPGqfXGuLLr6c+1R7SIyPSQ+zARklNkATjL61dE2gCR
	wttAn22OoSs2ayLcJ5GsCdfTkb8Vo85LGhORBJGzGApkT2R0EdoIf6bx3JQR2n8N
	GxPfEFQkKFiFIdBTtRpWH/SQhqesW/cbjOEDSrGRGqziwAtaMm5wswPDNTMflGCb
	ObGHSAuXfH/Fbw3gkFcOOcrRddKsuJhBH2m1HhK2WLQD+eBT7cwQyHi8p/xid7Mo
	t6opIkzwJjya8R+2+g0N6AFWBwpQ/yDnn6hXRjiEAuO9p4pYq/PaGB/H4oIPJtSA
	iNZkcw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awvke14f8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 16:35:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee05927208so13437851cf.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 08:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765211726; x=1765816526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JAlzVtGlJb3tb/zpufHIER3XlqaUXfI2HB/I8TTodRo=;
        b=RcUIal19F2uYrvJHN4B3ErqFD+fw88mOlEf4R+4kKHeCkzeCUeeB48mO0wHAhZ4w1H
         dm/IJk+sRBL3B7UxAjLor1iym1jz5A/dbQZ5jUT8MedjgwLEFcwFE4tz+QC2EPYSpkNg
         mow1hphs/a9ztW78XsK4gqYFwReXdDMO4wKafW0kIZJSFQylZNYA119E57Pxx5F0RdBr
         FWjjdEcdJAdCaqh2GZ0X6OfkHViDs4g0FeyIic/R20Els+zeJ9jiDasMCRi6DKVukUIj
         UAaon3Yosi6dYexxB8DhhVcdNbD6SuAQp0EZd4vex62kQIv43z50ktvM+VGoVGQEFtum
         U49A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765211726; x=1765816526;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JAlzVtGlJb3tb/zpufHIER3XlqaUXfI2HB/I8TTodRo=;
        b=B9TMWZZhOU+MGZacyOb2xZr1N8CUeSBdMgWRQRW6qKhFGGBTxAmSdKxkio2B6p/Os/
         ENlLtPtvDpdF50li/slGrPVEO/XM4XPElJK+KSwdsKDgwLk5P0mdps86C5efW7GbSILa
         CgCixCN6x35kJQpV5rX5Y+vOJJ2Inkg06JlkJ8jkhGc8N3is+ClQL0D+rW1QXCx3bk+C
         PUxptAqiTd+5a5hhnf/pX2z3UPAjogADL2e39koaqkis7U0NPq0RtgrXBaJ1nFlBRzoI
         bhI7Jg0VPrjJqQlYEmHbgyZYaXY8Ld9tajr/RnZqsO1TnY7fqAnQoTzdGklvCqemvs9t
         EWLQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6BFQcg/SQv6LEFtvVxBszJsMUnaaiMd4hBUTt4fEAH6WO0D8OViYyq70UR6mEmiOy/HNENTPA95fq@vger.kernel.org
X-Gm-Message-State: AOJu0YzVbwBvooxy6jo92dt4PeFb2Rbz8rD85CohaEu/Eu5K8octwrbK
	iT2MFc2eLbkxdX1RnHvB3yw3s0Irg62vmemcdFh5n8JXc8kftpYNwn9IwpoCbjxadF76zIiLQqM
	fajWmQLnomOhNu9dHNe2DSxv8lwsNnRK5G6HOYObMoU64qTodM+ViQu41UImKByx4
X-Gm-Gg: ASbGncvA2QOV4f/PctAuNXbePo65PYyFHyV79UhzsHTGdGAnqMW2cRW0CL9kQ05daoy
	Q/8cDvkLFdB6E5oM2/RibGCeH/zNzbtXoe3amqwI7yB/wvQvOiY/3uCSNOdGWl3C//GgrWgZGSE
	3SkuPpWw2nOyhG2XOZgo42rw/sRUHJ9qe2k5wExagvhf05RipwzbwYdewFsMCJmfIKBPsBFc7Ep
	YiHkgWwr1M5bJCQIx9auIzYpF3BEKwiDaucYFYCLx0307wBD9jNu7aoTwfJ5pkgEUUqpAuD9rl5
	J0N3JiSeeu3xjJ/zs/hREkN2SjIxcp7sVP1rSFVdM1o7UD4RtABx9BCEntNbt5z3qsrqXg+MtxR
	zGAyxO3UeEKQqh+v7QBFvzCDHSGHPnZeXToVPhP4T0eqmj9jkAzXDSoeJXczWp1xxIg==
X-Received: by 2002:a05:622a:178d:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4f03feb8ccdmr102806041cf.7.1765211725803;
        Mon, 08 Dec 2025 08:35:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGci8UgQSWlaltZSzak+aKVBGVH/z3CvEzlp6n/VDNbYwfFSN/xBcIF8oiUdbFctNSG2CV2rw==
X-Received: by 2002:a05:622a:178d:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4f03feb8ccdmr102805571cf.7.1765211725346;
        Mon, 08 Dec 2025 08:35:25 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412dd8csm11356749a12.33.2025.12.08.08.35.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 08:35:24 -0800 (PST)
Message-ID: <532531d2-8f26-4ffa-9355-7821a4d64200@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 17:35:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PBBbJmhhGCAKpuEo4pz6C_g6isehM502
X-Proofpoint-ORIG-GUID: PBBbJmhhGCAKpuEo4pz6C_g6isehM502
X-Authority-Analysis: v=2.4 cv=UvBu9uwB c=1 sm=1 tr=0 ts=6936fe4e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OQN141zOAAAA:20 a=pGLkceISAAAA:8
 a=W2_YLVZPviVWVX_7ETMA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=kacYvNCVWA4VmyqE58fU:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDE0MCBTYWx0ZWRfX3dXybUQD7pVD
 jHZ8irMsGI9jePgfvnceWFRZ3N/u6nEvG6GFejWXpSrkSv8SSD+vKWGlmZW/lzC0yzdXQnyM2aY
 UfPjcvgFhgr6DvBKr4lURONM80krrXkotoem9R9xfqMX/ocOzitblMMxbJNzWb0RK8fa26x65/3
 ykCcuC6bhLedkN5x1u/aDOXxlz2sQMNzMfEoWOxsGH/Te98/tLkeyhZWaw4PCWK2gwD00KJi5Az
 hvW4KqDOfybQ4cXhUNisFMx/a5Tr/4PQLfhY/7rT+nmjTRtOEBYwfXjROO4IJ/rGPqIHvkywf/x
 faJVf5ZMaa/GL8uMJ3G9Bb/O0awjNWa806pAi+kVNFYYqT+jtsz1mWLWcjOOu2EZWFeWP1eyUr2
 BO9ncHlI6rEtTe0GlN1ge9l5kaz9IA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 suspectscore=0
 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080140

On 12/5/25 11:16 AM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add the tc360 touchkey. It's unknown if this is the actual model of the
> touchkey, as downstream doesn't mention a variant, but this works.
> 
> Link:
> https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/input/keyboard/cypress_touchkey_236/Makefile#L5
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
> Add the tc360 touchkey. It's unknown if this is the actual model of the
> touchkey, as downstream doesn't mention a variant, but this works.
> 
> Link:
> https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/input/keyboard/cypress_touchkey_236/Makefile#L5

This driver mentions a register called CYPRESS_MODULE_VER - maybe
it could help confirm the model?

Konrad

