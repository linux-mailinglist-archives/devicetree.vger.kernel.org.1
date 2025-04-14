Return-Path: <devicetree+bounces-166897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56820A88CF7
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 22:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FEFE3B3AC6
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 20:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604C61DF97C;
	Mon, 14 Apr 2025 20:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GUICQXqr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234CE1D5CDD
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 20:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744662070; cv=none; b=GhklKtiGeXsIrP+FBlCXJF6gWCgm0lnRDlHVA/9sSO5wyNwqpsjqpGOX6nO9j6shVmcDUkPUGt/lp03fb8J8ZDh5a+p7UUt+owkEIGn0v95lo5W8AZzDQeDzOSdttGk9GIFGwTTGVNSGU1PEBpAtnBKxveuqWNY1uFB3d6LcoYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744662070; c=relaxed/simple;
	bh=IHxH+ITR2MyYN82fNQQ7nDWZbhuT/sr8/lromKSu78I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lWq9RcB1x30bo9EJlXVGZz8/NX1CEZ6f05a6rUjoh1SUC8hoeZ5oFSjJnuBx8q18vW8SVUbMzHhGhzYp/42QdVWJxazSqqT/6pX/YbfL1NJRaEUCegVK4n6MmumQgXbHkR08VtybKScKtI5vexp0OVt6NgW2hO3R+XAwJtauyzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GUICQXqr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53EJdB9X030642
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 20:21:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fD1kH8AdGKUlHf5k0cz3xyJc207+khrE5Z3bUIWX2lg=; b=GUICQXqrHwzWYDGE
	LG4fKOHNFG/fnfMiWd5+iuToFru32S9mKs4jiBGSPtSDeTNh1u4aMYhtM1HksmeA
	2O9E9UZXe6b6WWr68IlTYRNacZa8FuUBH0RXlYse+2xa5vZk85ctVjNyXJXpwZfW
	n4V9p429FBXZTo9EDXcx36OLx7xwfDNi+UREU9PLcJzjKRChJ/eksICDBqgfq73J
	899eoefJe6aL5DSZBqOvbsrTj+uQQhe7QsCFCgwvnGhk4ZfBiX4HdlPjpCjTft7s
	oKZyvWZNqb+2Iry2P4Fc04Kxqx0PhMtzUcHJl/lOChXLNrIdJ3YBEmJrMvRhNC8R
	gm4MKA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj5w1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 20:21:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4766ce9a08cso9208331cf.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:21:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744662063; x=1745266863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fD1kH8AdGKUlHf5k0cz3xyJc207+khrE5Z3bUIWX2lg=;
        b=bKG0a+bM8oplEbeU9DUC7tm1GFEmvBYywRhK7ydqnahNYb6GyPcwb2sVTFlpj3CCOX
         nlHJJZ1urDruN163UWXdWQh88/MfB8LsISJx2ozIEiGcpXULhdxIpyV4iZkRj6pDbKnp
         g1LXGnH6BUPFI0vuBGHyGD4JO1zhCT9RpEq8ttOcGHOQMKE0mKRem9yjN58iXRS38qv6
         I1aV7nQ8sgVcv/kVDjRAIQaSr6ek1PKffnecFKJH9C7b4r2WZtdMmefVOXtz4HALMKOW
         UvASEckj4DQXDe/FipdbXsQ+ICHIJxS6tgo+ZfUN4tK3qrioK2qSw9i9k+zKHlKsMj6A
         Y0uQ==
X-Forwarded-Encrypted: i=1; AJvYcCWufwaWdVu1UKlPRex2Xz2XIXVs/+biG88lYFwZVkn74sWyh6v35AEfWPnA5wmFobPIdT75NdPkQths@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0ASmjiTkUr3qPZL6Rei/A+2H84AuD/ydTxp6hdk2UkR6bA8FM
	BF/T34RLUWWd1vhIFlgKejRCSGSGUQnLwlVB+E5ykO8BiP6okpiAmJWktjTAXh0Rvngf9jQP5e+
	a/gbSNzgyU++Ab1Ju8etexRG4k9WibjMh+RPQ06m6Vg4kMhb/n1IjZnO0S2dG
X-Gm-Gg: ASbGnct/sSSbpynJ356eAGyJNMJF/ZOyO5scCAswuscYGD3EKS9wvra2Wo2BJR6NX2U
	MXjwws9LW0EPX1/wLOU3rut+gy6gRD7fUkx2CE3NRNXcxwa9WfADh6wK3yIZTGiFxPaMrq9G6T0
	E1DgG//6zed0MCvEIpAdQWeRHvyAvN0mz50Knz0id9I0QAH/yt0NieaWmIMwg5kFO5BNzoPE/ol
	x+c+HC2kNYp1e63sBBScTARAoiL6HrxAhvB9ChIselPRZ08qzbXJUjjYBXuTU7AZ+ZtzhjZXxuk
	VNZ2XhIh32nxZ2xmuaNIhxQqx3mEMdYmLByrq9BVFCLqwmDQd/RuK0Gf+NgzBDf+vw==
X-Received: by 2002:ac8:7d4d:0:b0:471:ea1a:d9e with SMTP id d75a77b69052e-479775c6474mr73469601cf.12.1744662062846;
        Mon, 14 Apr 2025 13:21:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQmk8erDwTZPoMnwnKO/lkX8ikdJXyaa7kJzITObjAr+gigb+AnzYJwbVS5NUMmzICm5veAw==
X-Received: by 2002:ac8:7d4d:0:b0:471:ea1a:d9e with SMTP id d75a77b69052e-479775c6474mr73469311cf.12.1744662062133;
        Mon, 14 Apr 2025 13:21:02 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ee551besm5410518a12.6.2025.04.14.13.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 13:21:01 -0700 (PDT)
Message-ID: <c36c32a9-3d07-4406-a3f3-9e2d345682ff@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 22:20:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 enable MICs LDO
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20250412124956.20562-1-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250412124956.20562-1-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fd6e30 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=1SN7V59r7WJZvlfn_q4A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 4y6dUpiA78HPziFz6SdpRdTlU7B5kN7r
X-Proofpoint-ORIG-GUID: 4y6dUpiA78HPziFz6SdpRdTlU7B5kN7r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_07,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140148

On 4/12/25 2:49 PM, Aleksandrs Vinarskis wrote:
> Particular device comes without headset combo jack, hence does not
> feature wcd codec IC. In such cases, DMICs are powered from vreg_l1b.
> Describe all 4 microphones in the audio routing. vdd-micb is defined
> for lpass-macro already.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

Looks good, thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

