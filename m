Return-Path: <devicetree+bounces-196266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D88FDB04D17
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 02:41:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21F684A12D3
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD3C5193077;
	Tue, 15 Jul 2025 00:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FKWnFbnW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A150156C79
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752540072; cv=none; b=KBDCJYyjI2xVA376i3DJDA0NqYpWA3qeBIc3+hqTb8Brn84p7UsxUYb18/dVAjj9MjolZ0HhnHKzFzqVZ+MGS6e2NJem9Vzk5FrJq0CjJfW/SV3VYyTu8ZAFpjDeBEhQUmF9OULSnO38rSKVY7IncxqsYo3hMYPcZQSkgFT3fmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752540072; c=relaxed/simple;
	bh=/fpeOpzdtrvMaMBvHjLFsNU8U+wmDzW4BOVzVwKT8Ok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GJwbat8RcQ/rk0zuaiow6HemlRrQ39D0m9UGkiNyBdHDv95/2Q+vL1/F7E9n0EE/n5zRGoWpWmyLKzSb61E7rN1vh169IBLkQ/Vs+34DfoO+Sk/dibsAy2CkpvSgNcyEhE04NfrgnmMq3K4aUYP30hQ8lb0azzfdqlXoj6p8Ubg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FKWnFbnW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EHFTFo014407
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:41:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wODJleHZ+bVcBgLQTtzGXHzrVqiJgA68FlyszfYFYek=; b=FKWnFbnWGotIx8hu
	v6oXPGBfNGvBWCFQ0pFVoR8JL3g2qXR8CaoqHR8FF/guH4VNKz9xeLtxnmCjtn94
	eBG5GCYHF6lCt2IWX1rZZH7XiHBsym1PO+TLGOQEZqmXqcGNUNiBnjo4hJKVBNo8
	MQJANvaMixLhfBCf/+XEttcHmpb+dKvHUFloIi9aAAKRlDqrCGwsm5iOzaONXBWe
	+V3NWd/o4UNMuFzRh1E+R/nCI8FyRamHq2rqgEjavuAq0X3HuIPKXuvHSIqe/q9k
	TF2gyBByfsJsE+gBE/7Y7IUP3D8rAd4RkqIl4viv+7PwrH/4y/jiarkMwKkIAbk+
	m6pkEQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxaxbte-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:41:10 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2349fe994a9so43567755ad.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 17:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752540069; x=1753144869;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wODJleHZ+bVcBgLQTtzGXHzrVqiJgA68FlyszfYFYek=;
        b=RGiFRy+Wda4hyDnHLmz6Od8hxzHlwkz16WWAj8e5IHsgqi0CjjvzDaRwqvocDmrPeJ
         hsKf1FNw7LtwLgYooO53bfU6ZTk69W3D3XOFmLaxAb/abHTB3gtRPlFc7RgzWLnDvJP+
         SVLapYfZrHlzsVOpNFmtw9vwCzWRcU2hVVKdcnKSSYuW6AA2heviQpCKDaJrGcsM+A51
         2XQBP7ltdEICQmICl8tx7l5wmndIokgWoDK/d/CUt2NuE9j7a8RGtjG95bmaGMRXnGjg
         UotKh7are7BquAU9DE6i8qWbIkyfcf5nvOnpAqBPcQdexHOEREmAmGilEUBFoq0nPZ4R
         HmFw==
X-Forwarded-Encrypted: i=1; AJvYcCXptNFIKFYbUY8Ah10X2p7NQckfmI+Y1zXhYK/hclJaEetoJZgTVjeXvi806gz+neOU1sejJYRoURSp@vger.kernel.org
X-Gm-Message-State: AOJu0YzYVoc6qcsEGlGWwXiZrQPWtHjDak9bh0zQsJQsZoEuhcLANL6S
	ag74psg4K0jL+g9C1Ah0ytbsRSo6f4oRJkpyBqQMBW/xCOZ9MCowEMdMCReCJhcJyfI8mrN1IJU
	9CX+8/6OH7lJ0kBmuUAgspUmmS58uGh9kWs5771cL8GavcIroY85fm0qFfKerwqwz
X-Gm-Gg: ASbGnctIo9imszQrs2viVONA2vOnxXrdug+6CwHMKNZ1qxiFjOLoB2Tw2l7me2+jgFe
	Lzs3MMJvbz9thyIZu8LLLP57FBlIDqqJE+R+8TLwoREtJoofZI2PMx9t72FhItXMQ/VPKxgdFBB
	e/FMla6vpsrMoa3wmdVQMd+TmKaH3ErnpSvpK8MWO/3tCekpZxzZSae71Pg3PxpBLfJDUINgEUS
	0qfR4zXPqPhkL6GgVcHcA30iWpUJVwII4C/18Nm1dT9zJFqeONZ/ng7euzxL65oC5HA6QElU+NM
	iO+hmQDN3tEx/L12NBUF7SWrJyflo6Oo/3rOT5Thwwukd3u7kjfIsSfnwEQpNy42PeT5b9UEP5G
	vv2OiBTjHp9pLnUuK+oeNN8y+
X-Received: by 2002:a17:902:ef48:b0:23d:dd04:28d4 with SMTP id d9443c01a7336-23dee2a0946mr248519745ad.43.1752540068852;
        Mon, 14 Jul 2025 17:41:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdmamRBVee1XJcy8VnXWvKBcAqzZnAQTh81D4R2wPJZjMPo/wxYIsxmLIYNDX5XWYHIlCWPw==
X-Received: by 2002:a17:902:ef48:b0:23d:dd04:28d4 with SMTP id d9443c01a7336-23dee2a0946mr248519485ad.43.1752540068456;
        Mon, 14 Jul 2025 17:41:08 -0700 (PDT)
Received: from [10.133.33.236] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4343e48sm98825605ad.190.2025.07.14.17.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 17:41:07 -0700 (PDT)
Message-ID: <c7cca483-f1d3-45b4-abef-ec5019ad57dd@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 08:41:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Enable CTCU device for QCS8300
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: rPBUYE8NOM0yAqlRObE_EuL_1HDSllYD
X-Proofpoint-ORIG-GUID: rPBUYE8NOM0yAqlRObE_EuL_1HDSllYD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDAwNCBTYWx0ZWRfX9A1sU3CwcHho
 fGQvtkEaA7OKSUTl+uSGj8CHh2ygEyMv8kpaQ1nAneTsCas1Nqrtu9hh/3Tu7yRf/apFbB5VoZy
 E6nNuhgVKnBf/NdAqjK9RSuAa4bBjfhJHiQDTAKhLSrRVEEyPsbswsMNJteDkpC2Uz3q4DDnaQs
 MPlw2se8MFTCgchGsAP1FsNmiMGMyhJBk1swulV8q6IqzBOswr0PtI27KhhA92osP17FuH/i7hY
 n96g2nWl6It1jRt4PoIHw0dM6s+GLBMFjfZ2AX3JJdveDxVDX/pgmzrD/V11Cz+pMJaZK0Sw8VK
 y9u6Xuxb8QViTwe4uXq1hifcOtNM/iP+svA4JKxPSyLWNKLpdAoKlHsgFOX3hDP5qKi7y1nLfiR
 0Mf7I3pWSAgGuDhUSHA6ZrUmnS1c/vKqqj4EKPF+v98tt3oo72YliXRMsaY4bblazJjg3LU+
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6875a3a6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=fSwdLtKwHKkDrnzOdDIA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=909
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150004



On 6/24/2025 5:59 PM, Jie Gan wrote:
> Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in binding to utilize
> the compitable of the SA8775p platform becuase the CTCU for QCS8300 shares same
> configurations as SA8775p platform.

Gentle ping.

Hi Suzuki, Mike, James, Rob

Can you plz help to review the patch from Coresight view?

Thanks,
Jie

> 
> Changes in V2:
> 1. Add Krzysztof's R-B tag for dt-binding patch.
> 2. Add Konrad's Acked-by tag for dt patch.
> 3. Rebased on tag next-20250623.
> 4. Missed email addresses for coresight's maintainers in V1, loop them.
> Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1-jie.gan@oss.qualcomm.com/
> 
> Jie Gan (2):
>    dt-bindings: arm: add CTCU device for QCS8300
>    arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
> 
>   .../bindings/arm/qcom,coresight-ctcu.yaml     |   9 +-
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 153 ++++++++++++++++++
>   2 files changed, 160 insertions(+), 2 deletions(-)
> 


