Return-Path: <devicetree+bounces-171073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72305A9D255
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3794C7AC2A9
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC7321ADC5;
	Fri, 25 Apr 2025 19:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hlxq57EU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B931B7E9
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610694; cv=none; b=WhoNl7MjcI2WOEt0IElf7GGoJo4ymrQTR1LiIMynCje0zYbNm20DgITgFZur4UchbooGnM8eXA9B/L8yUGsR72IfFr0elm/tHlGbJuSPgeObZ/DvxBsSTvE4cmByhWebY4UszFvbyDMudR0j/UnlCf8H7kTioSCGvCL2SUFZAZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610694; c=relaxed/simple;
	bh=hUJsbchXR3Ekft/7c3FAE2ianmHgWCZn5D2kabC9No8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tA/DfFvchMgWPO2bC8AVGx5C7lyHVdz+TmomIQWT+eJCUz7X942vuXRHemK0Y/0PGrs0SZOmRXmLe6gy3QHTZWKjMlRwjwFU1rX3UzgeTMsCTZeSzBVa7vrRDVBWi1hOGXzP9LwPvSKheudAbZnaM/Vr6KjKxVt2BgF6QX1S0vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hlxq57EU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJu49024751
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:51:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EZhXAb5N82DC4xoZmaDuqgjsFIB2BulQK9Ow83G6Ys0=; b=hlxq57EUtm09HRLM
	ZCYMbUC+MXBADtX5rID7Dsw2Hf/Y3TunQHry4eXA8LYdMnwJ6veIUVCa9t8M+3Wi
	O7eA/eMG7xP2ZjdudFUFAXEnG11fHdxB5DJe7oxloHTQ6LTV31PG7wlW27xS2Iq3
	epC9rjhw8DE5XYnY9Tc6rHmhRLqni0J4X9h5HWHi9owSL95fCpNQ8j7VXttv2K59
	5YQNc1XZgL1fZE2cfDEyJYrvuHh3E91L27DJPsek5OEVi51URNHimUKxqwBUOQts
	4WSm7nVLx3bu6wcypgufmnCzjmYhD+ZikbigF6CmRJuvtwjzzUYfRUdSQmzsfB3F
	HGXxZA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0t13p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:51:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47aeab7b918so5999031cf.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:51:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610690; x=1746215490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EZhXAb5N82DC4xoZmaDuqgjsFIB2BulQK9Ow83G6Ys0=;
        b=fiwc3IWak+Dxmj9dRwB7xerG5WxSPAgVkrFy5Em0jNeMkAv+txF0gdB54vbEtIaC68
         +vTJxQ5cIP1ft6O9Y7/73+A1Pho9gfXf3W9jZDpD5y9EB3UWKoACEqNiOwwWZ4Hzlz+z
         Irdr663mldY73szGbhzTs8iibLKQnZG7q4X4RnnqjEc+27PlrKnGwYSEsPbisoxCoeiq
         5ZK1YLIgnWlDY+0bALbHnFol5qo8TL7mMY5QL5xJoHwX/2kLjJRFFZyiMBImB9lWs/oU
         Mvjp89ShLC3PcoG21OKd3PY21kaEa2bwy6Qr2y/fzRuf89mqrqL/KVLr2Wan5Fi+YHOp
         qqnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgHoXV5k6CX+bko1AT/fy0r3fyot/g/anL/zjGmH1gCUKk9RYTqHCnzVC1G4jyf3EDOZCBc2sV1yib@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2R+6FEDAI3zsjALzj0oh5X3QQu1Jl1h9NKdiL96Hp6xVpK7UD
	MZAsibjqeONob1ZlJDoS34keP4u0SFROfi1N784aT7eoEnF6mIEceIcLYEDL7cTpl086Pmcr3+a
	0yg6tlUGI7sAL6HDyBmH52IpooqB0Kfjc+lH0Geylt2KZ802cH/zkrnBgG404
X-Gm-Gg: ASbGncsVKqr4lWP/pZJIYmYrat9WqtxD1OHW1UA3UsoO2VVWgzJK08iQK9XV2qPD8FH
	jL790lVp85wvUTIZ+hvqZ/tZZ1AMbuhRLrjaJ0PEq5uGQ23REjW2QNli0O0FGygD9oLP1uXIHHv
	xqmc8fkc29cRxk0Wc3gvCB+G57g7+kyzC6F4g+9Mtih+leTCpQ2ZJfiykaXBlslEMwLspiVUf6W
	Hs5ssRtQSEhezCAuKDo7shFzyol9lXCL0FrLd9mxQJWBay6RgkubAmBihNhsdmZpafVwkJ7ZfYH
	UmTprON7AVTaaJTN89JtnLBOlnTRCMV5nLZJt+xakO/97Q6h2fffBB6d+psj4d/nW0M=
X-Received: by 2002:a05:622a:20f:b0:474:e213:7480 with SMTP id d75a77b69052e-4801e6f355emr20287181cf.15.1745610690521;
        Fri, 25 Apr 2025 12:51:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGixXgh/UfVDbXANnAdc5BNsWh63o++g6JqWbU8CImmPZ2H5rCWnTMEJKVAKIbuE1Syh75RhA==
X-Received: by 2002:a05:622a:20f:b0:474:e213:7480 with SMTP id d75a77b69052e-4801e6f355emr20287081cf.15.1745610690227;
        Fri, 25 Apr 2025 12:51:30 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6eda7d9asm178782266b.166.2025.04.25.12.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 12:51:29 -0700 (PDT)
Message-ID: <43e5ec19-4377-4890-aa6c-e0f9733d5106@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 21:51:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/11] ARM: dts: qcom: apq8064: use new compatible for
 SPS SIC device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
 <20250425-fix-nexus-4-v3-10-da4e39e86d41@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250425-fix-nexus-4-v3-10-da4e39e86d41@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: jCc-q_kMPcHrl-2g96ecc-5EI5bV5L5q
X-Authority-Analysis: v=2.4 cv=ftfcZE4f c=1 sm=1 tr=0 ts=680be7c3 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=exUESaSVoveG68c7jMoA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: jCc-q_kMPcHrl-2g96ecc-5EI5bV5L5q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0MiBTYWx0ZWRfX+ddVtD3m5K9c wQC43l4gXbQqUppbQtUZ0xWaNau1krruxqzsPnsphHK4RzzLZVKX351/gYOT08RPN1uMD8/xLXQ 6mRfQ/XYr8oYZM0ZJBdumuAmlMnRwPgUd1Lh7oG68zlAeIt5CDq29wsUqg4tRNy0u4z+lpICQJq
 wNfT7DGq9X5IqJwssXvLszOzL1Pp87DhO5p8Yd383vsHNYC1X0PqC6anbxALbIVIeT8lhEDijz2 Cy3ehwXFklrM94k1AUd1cggokm1owNi8i/TIZyno4GiQ961UUVOkYNaNLLhYd/Oec8Rk3TDIrxF zLwhemr2m9/0TxI8rU/O2QrcuFrCKa9RRuCXfYjuySdlHimocYn1lBWu8658m3qRb8u33mADGu+
 HsiNkqSyGxl1LOgt1u1dELvd9yxJW2ourTQxoVDhH19px1XmBWRflbfxKLCTxjqpVHxLHxC9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=561 lowpriorityscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250142

On 4/25/25 7:47 PM, Dmitry Baryshkov wrote:
> Use new SoC-specific compatible to the SPS SIC in addition to the
> "syscon" compatible and rename the node to follow the purpose of it.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> index a5aad4f145dd368aabed44cf520ffc037018b37e..b6533630e347c8fc5e3f0791778cd05760b3f3c8 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> @@ -402,8 +402,8 @@ saw3_vreg: regulator {
>  			};
>  		};
>  
> -		sps_sic_non_secure: sps-sic-non-secure@12100000 {
> -			compatible = "syscon";
> +		sps_sic_non_secure: interrupt-controller@12100000 {
> +			compatible = "qcom,apq8064-sps-sic", "syscon";
>  			reg = <0x12100000 0x10000>;

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

