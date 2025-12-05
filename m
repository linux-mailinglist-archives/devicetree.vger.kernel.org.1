Return-Path: <devicetree+bounces-244756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E295FCA86E2
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 17:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E101F30133EF
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 16:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E9B33EAFD;
	Fri,  5 Dec 2025 16:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GTCe6oyU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SDtkSQ3k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F39336EE2
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 16:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764953260; cv=none; b=p6cL+IFWAe0TY2IE/aI38jhpo/Y9kTOKUKBmjRWjOXdMWOpiLJm8bzBCyNnUClDuq61mD7VnaYW6qcYK2aDe5bHd8PW/wrG7lQzORMkJFIb3DGr+1b5uEURUxOGjK4Z8XPQe1r5I1MGcCsT8ee4jRN2aAxkzw0Z/8pZrlnQYi50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764953260; c=relaxed/simple;
	bh=al+Zeq/KhoUTK3Nukkf1s4vVMOh8XPIsPB0Rx8paY2A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C8iTMeVMYNnWAhMb6xPXQE6dod7rVFsXUhV6kZ5z/kgP7IceV8waHnV+q8Szl2RfqhSTwpvfWQiTAkIBZPYAkOgSSpe/i8OlAd8VXNfmWr3HYc2yAGfsPBmGpgPmh2DRiyNJOMq0bITP4pMQEJGmhe0Kg+4mzszMilvueffBgX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GTCe6oyU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SDtkSQ3k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBMg81077677
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 16:47:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6gQ4phfn6ife2ezaMBOzgck5fHXd8kJlqOvlD6vM3lA=; b=GTCe6oyUVthJBYZX
	XKkmsuKvAE6WOzCnY9xNnFDw8x4tIW2x3PUF38cCNa91j8GntPhsV80ld0yAKlZn
	kLbxj+oNmoTFwqJ3v8VUtGlmMK1iFWTxeJ6xhtpoBlW0k0+vmWVQrHh/zXtz/iu5
	LnQBNUVkpAwHgTZ2VQGg+vuiQTXoyK6azmWh3mFPkVgN843fyIIWTXDc4Vi7H9L6
	HNswLQ09iGzoOOYpGZyna5qYRIzOjrT5mhoLQ4uK9ia3JA6AncDahcNcXt9XOaf+
	f5XvGIBr1bvSWs9HwOlqAjwDSD9H/d0hRgakXqzMzqEI1d7bHRVOtWAK02aSGp+X
	CZQZTg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aupa8tb6g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 16:47:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e2342803so503273185a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 08:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764953251; x=1765558051; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6gQ4phfn6ife2ezaMBOzgck5fHXd8kJlqOvlD6vM3lA=;
        b=SDtkSQ3kH2XRsqmZTIrs7Em7q5Ka4IjigqPGbQBz7TM9M3vxxGUKf3ja03QsxalJoM
         whcT8A8DIBB/PCWwN2FJsZnYvn7n2mM/6Yc+mkcWaXKfcoPhfHVUAfy8TaemjDpZyKdc
         rbi2fnRW85oJRA358oBrERarlI8u1b5sRRekrYNe9UKfCahbU9P7Q1dO99gXxt3+YnBq
         W8AOemIu3Rxw4OB592qSxrDGXpKagKDyM+WCc5i7/8tqrPchSAq3K211pOhyPDSAjVpk
         XB7h9K9QIyJDJl3sBDhV7Ed3O1sO7aTBBDO+oZcaxWhN9+g4YRcvBhAGg57pwGorWhnQ
         eflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764953251; x=1765558051;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6gQ4phfn6ife2ezaMBOzgck5fHXd8kJlqOvlD6vM3lA=;
        b=Y1fx0co92UjljH3XVP1x/gelaV31cV9Dp16FSbO8XttI2px0dp5SZYvYb2uBftNEXy
         kN4e2lShNcr6cNMX+U9CP+UNCCTdAiclVqKuuHS21NVdO60+HjMc1pgdAjD+7zjp8L0l
         lwelcKqs3qGwvswiAsRAF/eba9zXF14W7v8J1Vp9nXrg0fowkomBY5hOj4g9Ucpj3gOx
         t/Ebu82ZLLsbWAmEMj0lBSqGebJlKDBR2FFt2YVugfB0taMrHKzfJTwywhaQAh2Pg3/X
         qEh6PsP17H4e5WeuoCDxwuK4RpBCxbX05nrdoQLppZX1JxQWWZe7fhm8Gz3MJCuYa5rA
         E3ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuu2j93VPdI352QojEphYhvFpKRR1wrp1phuUb1Bif72koYMT7nPXY+kWbhGAX9Dt8ElDz80HNUJWT@vger.kernel.org
X-Gm-Message-State: AOJu0YwVy+9B+p9I8cGm4tDy4ou9Id0zVVx8XeX2QpIRYackDermfmRT
	sWmvZmU08y2YwWBxs2kleOUFxCOnTvpjR98UQKHveb8Bi4dAc9mIpFuTmbZkKafJnXf1/MzfGn8
	Bhi3tazGBvPBrngaSZvQ4gWVNTW4wk2QYbkP/rpU3zeHmTbB5RZUci3J84fd9JCg3
X-Gm-Gg: ASbGncsefKtgohKLPu6lXXNvdJyfhG4aGblmjS6svThvmK4ox10dyxhQXYrfwylngAk
	n+wLfMxEU9a2uLgUNRjBpUvnoMxT9THpJYhdHSDKKHSg4/7urYe1IgJkgyDMXRU3xZbTA146/7o
	yrM8Ii4kRccJyTN7Pb6YO4s9Z7iHPOZyxzHC2fIqnZiHUAriyZsPqD2JRKWsSpegN6MKeKmHOcg
	26q1LCFwI2x0LxlUDPftBeX4l2gqV1qFyF20XNOPASVc77oGFp3rCA/5Si+ooQLOCv79MTZv3Cz
	HJ5OorVzkBgnLPlXkZoy3bqbhOaaYPkS9Zf4JDmhnBWM9Uk4payY2lwmacR+vuspN60yNYQtodM
	LwSBVmDKZs/3Otv5DyeQAT4IeMCh7GKYfNfaJyntPNgP6XcXZA+IXeZ/C
X-Received: by 2002:a05:620a:4152:b0:891:a03f:7c76 with SMTP id af79cd13be357-8b6181eab7emr1114489485a.76.1764953250905;
        Fri, 05 Dec 2025 08:47:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoGhlhqAsRd7FLdO2RuC2rvg878fg65NRperhyRrGPH5/dQ5/RvGkjMuZ5fanPWoPvWT1aYw==
X-Received: by 2002:a05:620a:4152:b0:891:a03f:7c76 with SMTP id af79cd13be357-8b6181eab7emr1114484085a.76.1764953250364;
        Fri, 05 Dec 2025 08:47:30 -0800 (PST)
Received: from [10.140.86.114] (87-95-1-57.bb.dnainternet.fi. [87.95.1.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e70621ec7sm16145501fa.41.2025.12.05.08.47.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 08:47:29 -0800 (PST)
Message-ID: <75d44bf2-c518-444d-9b15-fca067e25877@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 18:47:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] of: factor arguments passed to of_map_id() into a
 struct
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>, robin.murphy@arm.com,
        will@kernel.org, joro@8bytes.org, robh@kernel.org,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        charan.kalla@oss.qualcomm.com, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
 <20251204095530.8627-3-vijayanand.jitta@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20251204095530.8627-3-vijayanand.jitta@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZqDg6t7G c=1 sm=1 tr=0 ts=69330ca3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=6rJAVqwrXYrlrbcIgKCPAw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yyg80FiLJEQYT9IT_GYA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEyMyBTYWx0ZWRfX9Bg9r22OWT/U
 ueHcKL26RsF90iQMKzPFdH3xM283K1kfpsB1FzEc9LD9tvf2VCBPgv8RZV2uLKBN75An28+sQlc
 38i3+wTUhZiia+3RrX6sI6YH8PCuk8qBh8j9cDAPwFYfIDX8AAkkU1B/fy2mghhjWXOOKxYX+kS
 n0vJzCUy0JpIoplrgu0tgLTluKhKQlRQrX220AXbU9+A/7IgID/bLV2cWbtx60mWkW36LhchFmc
 3VlRpP18GsNbWiWbrcYCe4WCK7e4/jYQcJMoSXmG/5MtLfZt7oIs88FyL00JHRe5OcgjHUEE41b
 v+eMU04Wn9W6RYM7pf0Iez9aOXmLLZlsViyO3LSRboDDy2/DTY1CNBDpmdwDGcDTJ0Mu0aJSgL2
 +FEeCmi3Od0Im700Wmlq/ZpY55XMxw==
X-Proofpoint-ORIG-GUID: D1zuV40ob2h76gpjHLr9Rz3ng0zsoERY
X-Proofpoint-GUID: D1zuV40ob2h76gpjHLr9Rz3ng0zsoERY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_06,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050123

On 04/12/2025 11:55, Vijayanand Jitta wrote:
> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> 
> Introduce a new struct type where the optional arguments passed to
> of_map_id() are in struct. Subsequent patches add additional arguments
> to the struct that the caller expects to be filled of_map_id().

Why do we need a separate struct? Can't we use of_phandle_args instead?

> 
> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> ---
>   drivers/iommu/of_iommu.c              |  6 +++++-
>   drivers/of/base.c                     | 31 ++++++++++++++-------------
>   drivers/pci/controller/dwc/pci-imx6.c |  6 +++++-
>   drivers/pci/controller/pcie-apple.c   |  5 ++++-
>   drivers/xen/grant-dma-ops.c           |  5 ++++-
>   include/linux/of.h                    | 23 ++++++++++++++------
>   6 files changed, 50 insertions(+), 26 deletions(-)
> 
-- 
With best wishes
Dmitry

