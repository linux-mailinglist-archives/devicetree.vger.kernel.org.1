Return-Path: <devicetree+bounces-235996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E88C3F08A
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7D5CD345B74
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2BCF2D5944;
	Fri,  7 Nov 2025 08:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eGoLrxx3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mpa+dpVA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DF42989B4
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505544; cv=none; b=tb4cYr9HKg3MvZ+1NMVA8PmihiF3zLoQkRSHAAoBLcwd1GlkG2+jUa6O9GDrGBNkgHClm1h9u+gVK+E7++Ti+yK6Foamgb3pHNwqMPbFyNCmZpG1QdKs4RgPb592qkoWUKZgLa7nF6lrYriXqcE93ce8k5UQfg10LXM+Pm4nEcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505544; c=relaxed/simple;
	bh=WUI8aI9SboATxAMC3sIcJDvYj3bfuIckkF3N8VBA0fI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aF5zko7bK8VceQMBlLZ9sKiAA0fzsHcttTc3i2t1893QjVze2eXqjtrOV6eORDDl12W9cUBX8IotiBj8WisiYk2g01z4ue3bXlfIGzO5Utp04moqbiZNuFVXlBoTkmDDhzAIJsiBkPPXjZmzGJ8hF0Qagzf7oZPJh6DqYAFvqT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eGoLrxx3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mpa+dpVA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A74F324583635
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 08:52:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WUI8aI9SboATxAMC3sIcJDvYj3bfuIckkF3N8VBA0fI=; b=eGoLrxx35ZUoDT9Z
	ojzyFKD3egXl3TYbOqb4VCjB3J5rna4/qatWTyyJvhBZdNYwu49xzA3H7IGfRU99
	4Au1rMkZyH6V3+gsUEUs/IgdbIkefAOznBM0eWlB9voKiDQSwHf2opkxtWtEAIy6
	5i70dPmGLLoeGLNn5IhsGllk4R0VvcxNoy2uvUd8HsyqcLButSzbnQsJwFUM3Yno
	Gkc2SIl+Q5chgk8GapalxY1FAKiaz0jovH8UsGCbIj6lP0cEZPFcRsiI4lYq3dUr
	XZcLK/GzFg1hjwaasZiLLTe3gwS4oluiLNmxTrNSHXkwpLLxFPYUzvj/agFM7mrb
	LokUKQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8yktjdjq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:52:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed6317be8cso1802451cf.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762505541; x=1763110341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WUI8aI9SboATxAMC3sIcJDvYj3bfuIckkF3N8VBA0fI=;
        b=Mpa+dpVAhp7lD8W6bT4UHRWEZW1ypHlMwv8GmBVPiVXbBbE5CEVTeNAVl838S4FFGe
         x/jafyDHwj2MJUrh0C8jRHUf+XLPpmgnzn2Ll3fWtfBXlcvNwTnoH7kJhUv6t5p5miQK
         6dyIz+PQHiTmzE9WxV7RODNkWMdh+/BAB9s9MjQoS7RrFYyRHmZfgmukz//9zu8Cp/98
         bVQdnhl7h5Th9LaUFNt9ubgyfAZ+dIt+BbyLAs33yfp98wmCtEGVyAv/J8EYeHxfWuFO
         eXCn3jfNQr6iebFW8R0T8DkZKnGhpiXtcEezpE8lGV+O7Hc4uk69x2CWZUp6aVoPPGFN
         sZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762505541; x=1763110341;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUI8aI9SboATxAMC3sIcJDvYj3bfuIckkF3N8VBA0fI=;
        b=KJ3ue1Y/jP1afKsbd834DnYOBgo3EDDHLLshWzp8SE3ndXE6Q37yeKzAsOD8e3W3/Q
         FaqRYmeL9Odq1QaS8Py4XMJRBGmZ7CSig6Ssq+dFqebDm1kEiZt3ZzzohHU1z5oywRTG
         Uu+Z3dslMp7/HyjgV46jWm86LEiwrDioPf4O7/x24o62Q7KUL3xXtRjGUgjjxs7gLq8F
         bOCLLENK9rt5ZHna/YL2wuDbFsFf8xMG0Xec2wJFrKJiQ6u5IC1xiD2ZKtTW+N2VmjR0
         4ZiX71GZhA/Xgb+hcHa7S6gAKpnLIK+GU4ZEZnvquzbZg4j6vowyy/9W/bT9oR3MSHaU
         vgvg==
X-Forwarded-Encrypted: i=1; AJvYcCXipH8fYqvcPwk3ESHl30diUJ9xPI/n9IXzjEzyqF4svGemT7k/tNEtHEAc01ftUfiia2XzIck5iYHi@vger.kernel.org
X-Gm-Message-State: AOJu0YzbTcN2D/+0kbMOAkSxNGT1ZBz0NMScaYOnVE/K+tBs4NJu9moj
	foS6peUrdR6j/JcMuXH8igQPOuVkfjt7iv8QeL/RvFQk3ybKjZ4U9mpGUyggI8QkIs/W5kGriOn
	5vY7eyNc8A/tpghUEtgklf2v8i0lfARVyDhJOdsa+XgY7MDaUqQwuy153uoJxHlEX
X-Gm-Gg: ASbGnctiqTI26Ja/iYYSiwhEM8ipIhXOU2iL8aQTD/ikKQ+0DnFBr6MqWEvGGmymu8o
	YDvUgeEzZ40WqpQuDqNAikd2wn/MeFh8g/sX2GFztGtg2sAp6uO9iRpeydH76S9rR68PNGibs7c
	ZlDaRgSHN6l096UEnbSM0Yp5zL0tgQXrnryGzCim4Mr/FPchZjU7CeIsbHije+gP4jsZEC7yuby
	xvVe13P4J56C9vF2zWNU1arzJhC4OyDWkC/xYSDmbdA6KOePkqetig8h25oKagTWQnRCY4Z2ULc
	x517KRsU9YhUCZYGHud3oBkdh2a/CgN5uAPTnFy0yWSTSNro9/04OQARqBBhjEJltQIQtcaTAJ6
	uJBWdqczPWGWYMd2l7jj+Vg+DSrCb0+6qT6AQrChfx1S16Hrv5jQKaXNP
X-Received: by 2002:a05:622a:24e:b0:4e8:a001:226d with SMTP id d75a77b69052e-4ed949f2c3fmr17320151cf.7.1762505540532;
        Fri, 07 Nov 2025 00:52:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3kG67QsZQNvhXXJLPvhwblVTCY2za9wLcF0KdPzPtUN0EkUbjgVeOtcVYxRajcJ/PwybTKQ==
X-Received: by 2002:a05:622a:24e:b0:4e8:a001:226d with SMTP id d75a77b69052e-4ed949f2c3fmr17319881cf.7.1762505539996;
        Fri, 07 Nov 2025 00:52:19 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf9bd741sm177667766b.57.2025.11.07.00.52.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 00:52:19 -0800 (PST)
Message-ID: <83cafa2f-8fc3-4506-8987-1b5e10d8eff6@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 09:52:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] Support for Adreno 612 GPU - Respin
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
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
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Qingqing Zhou <quic_qqzhou@quicinc.com>
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bOgb4f+Z c=1 sm=1 tr=0 ts=690db346 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=glulLz7CSyDjeoE76BMA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 8Kk0nOpPa1FHnIxkpG_k9w4TINaI8myc
X-Proofpoint-GUID: 8Kk0nOpPa1FHnIxkpG_k9w4TINaI8myc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA3MCBTYWx0ZWRfX42riw83uA8OD
 l2Fn/bb7PwS8+w+cpbcCmaqNN4daUS6mLCxk34lZsF45QSRjQPS/7PoKJe8e0La4i93UWhidYUy
 jPPsT2kgL+O84T/z4HLQa32zoFVKsQrVPoodhU5h+6HKtrlfQuiY/iwUcJDJe0OqmZnn/PjtiYh
 PNE/kDxh+TDxgWZ5vm7sx1X+LtYxcz6gii1iATOb/hTe5Ylb7iatmZIbWlg79TQ8chicKeeK5qY
 HeeeDHqwQ9kxyebLiTFQ063ADU0JTkOwZq5W8NZFuNIUc7jrA18UhmyxT0uCFGMoJZ/N182c1Ri
 6kr9l8Gq9NsKAPwx12edvvbwPwU6m3qJTbnHSCnPaMylpE1TYq+zIjNXKD0v+HgY1Gq9bVZ7pz+
 T6I0QKJf2QrxYJk9hIJW+xSVm89Hlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070070

On 11/6/25 9:50 PM, Akhil P Oommen wrote:
> This is a respin of an old series [1] that aimed to add support for
> Adreno 612 GPU found in SM6150/QCS615 chipsets. In this version, we
> have consolidated the previously separate series for DT and driver
> support, along with some significant rework.

[...]

> Changes in v2:
> - Rebased on next-20251105
> - Fix hwcg configuration (Dan)
> - Reuse a few gmu-wrapper routines (Konrad)
> - Split out rgmu dt schema (Krzysztof/Dmitry)
> - Fixes for GPU dt binding doc (Krzysztof)
> - Removed VDD_CX from rgmu dt node. Will post a separate series to
> address the gpucc changes (Konrad)
> - Fix the reg range size for adreno smmu node and reorder the properties (Konrad)

The size stayed the same

Konrad

