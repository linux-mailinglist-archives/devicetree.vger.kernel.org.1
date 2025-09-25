Return-Path: <devicetree+bounces-221365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AAEB9EECD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:34:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A09A2385F52
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EFC02FB964;
	Thu, 25 Sep 2025 11:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E8dPJk+i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15092FB60F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800064; cv=none; b=d3b5tcdXa9zgMpLeBJM8W9m3q+TCioeTai2xiJJWx9v46K1DFn42mOXJQPEEoE8jiWHe6PfWxdWhIDahxCDvxkiafi0g3dV77i6db3bI+CQMF9qJqzjIt16mwgJGkItdiJJmZ/RRZ/W5X+LXYSat7B1DpTkW89jVumqdUYAr6z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800064; c=relaxed/simple;
	bh=uDSyOXioUNXrVHKoWkU3M5PSfkV+fJscxsqHyZjxwNo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hI5dTZeEZFhyGTnzGQlfdcgz4J3BjtdR0/bFxv1zSjnSC2IxgKBtZAYUJiyBmEXcduzlK6g2wYHk+4WgNsdxT3hmtTf8Y5PE9IogfrXm9u+p3kYJQO2EEtwnokGLKT4GJu7ggpYJP1iXPvPUbE8bh0EPwg+nD8iDAPe0ZkrBN/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E8dPJk+i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9EH3B001842
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:34:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gEwEMKDS+tlZfd8LuFMgAeA19bLeCZC6NzU3JUxIlKg=; b=E8dPJk+iG9ffeHiY
	uB0MubF9/2rpXjY95B/qpQYxCV1E8PHpkZcxpN87K6MSHodo8TUvOER3DJdSNGQ9
	8rtrf/Cm9e9iriLxGObnbS/MlM/o0nt2EbrPJBb7CIhKJlKk09bKFP3GAn2zAhOr
	m+LB3UJWtKswveqGH4aLa/dofUV003VPE48r2LsdUQPvjGv6TxgKcgbPMeJn2qzc
	aZNS2Ybrj62YxNe2aaojFZzqOompba1Y/7jfNO5XxyfxMfLzoTm/mK9fsCX73ezg
	JLKHAUszP1eS2mRhMaHOpiwxrfaMM16wg6XClJv/jz4pwXF9aFj6rMl9fGaeJiOy
	H2KUtA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98qvt1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:34:21 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-85696c12803so36519285a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:34:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758800061; x=1759404861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gEwEMKDS+tlZfd8LuFMgAeA19bLeCZC6NzU3JUxIlKg=;
        b=m4zi7SdoR/ELIx7hKOJ2SnIQZ2yvdzuAY6+QYCQIkJ4x+RYBWBXrcvEiIl2XIPJT+B
         h/NKMYFXL412NP4uaSIaAYc/XmuM3qStofCWLUrtI73FeFC6kWRXzNZWwiNgtLoefeCl
         JN082yfeHd5+X5ylyAzE9cJT0OTK8/gv+lJUzs6mvcHguMTJWKvKLkLHXuVWpRzZNhi6
         nAt6Udr1Pmc+5RfHP9HbkC7lakXD8UjDTGcfyWlo/3LsaJbWWVXJmAaQodLN5qbpkLu7
         3N1qSRCXaXY2JCFRyEwrPZjUyo660P38ylRjRxAHa+CoDMsZY69gSHteF1zj3fa2vqOo
         tozw==
X-Forwarded-Encrypted: i=1; AJvYcCUbqg/1iLozTcnRf5uSGsnbKNTROTfWUH383iPycT5+nE4qWaI1PJOVqkLPtcixeiy22Ygjy5dm0qrR@vger.kernel.org
X-Gm-Message-State: AOJu0YwebH9w7fJ8LMl+WAYy+CnGMo2TbuoYfzZfAStTSxceHCLDgY+t
	40YYopBqWmbkze1cdlaY37kgtxcEPiMOYf4oaAMR37ceE4+zdAGPstzLgNwk5sUqcvWKtEaxeuE
	oMofGPDmNypLR/8WLKWFcImD8he1LpWXvSR378tMZdXbnjOMF1wmDpMfC+9+IuUBbSbi4+iIM
X-Gm-Gg: ASbGnctJ0gkukKRuDrdZq0Qbx11cne6ZkLRnwmNg6WYQp1AmgBvICX5bFbRxGmL/n3B
	hTYo1tmN4VyQosQz4Yyv1AGzlrHDrjmSF65pRt4q78g7Xns/gVt0f4rdqhXpiKMUrlGEgHdvRye
	H0EWQz0lfRIUxUXyhe5gc8P4nuwyvRW+0QG+xEPx+FAyTwAtK8nU4JqDymQZKirpyz7ztp//rwo
	KxHOWP+ycWAoM3J5Z4iDFlBTW0puRcBWdq31U34GFdyNr9D4BO4ydj7KFD9uIrxOqxsPeGNdukq
	eDUda/41BxpGvv1xW+k74K62gVGHPfcvmGK5V7ueTE+yaB74a1j0QgT5FS+sb+kNyrpBvI3JKJm
	gj36GZd3mTQwImiEEhOd3Nw==
X-Received: by 2002:a05:622a:548:b0:4b5:a0fb:59a4 with SMTP id d75a77b69052e-4da4744b7b9mr26621301cf.1.1758800060578;
        Thu, 25 Sep 2025 04:34:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGtQWMIoQQ6aETO+R7z7npnqU2rOsUkYDHw1hbcP6FnknthNsw/qlBhpSdOZVdY3LZkHF65Q==
X-Received: by 2002:a05:622a:548:b0:4b5:a0fb:59a4 with SMTP id d75a77b69052e-4da4744b7b9mr26621011cf.1.1758800060052;
        Thu, 25 Sep 2025 04:34:20 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353fa65a6dsm150055966b.46.2025.09.25.04.34.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:34:19 -0700 (PDT)
Message-ID: <0dd6a528-d204-4073-a4b6-76356e71c5fc@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:34:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans: pmic: enable rtc
To: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20250925-add-rtc-for-lemans-v1-1-17fc56451c84@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-add-rtc-for-lemans-v1-1-17fc56451c84@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BP3f_qDZUTPW6LKsYja50Y0smEOMFqvN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXyGvjqcqYt5sg
 MxyIt8CHH9px8Po77hLbufY5h40/w2jOniy5F8xL6+rog5qCuGDJ+6XZxaNYEok2IpAKUKjXW/3
 cyw9pChqcmmSagCo3kgHl/5JFIbr96t4RDpzBL0aBT1aP1FiVh8jmZRLgIJLrw3OQRTI2nlkMhI
 UwhMYUrLQpXGeKvRd9qvRJQxi88s2oRD6TxV2619V3DK1A+9mFSHFb7r70O2/RMzXzqFaS4Xqss
 HsRg4DESCCxffKgvKhA86L4y719H5LQSiHDXxZfgxKOpUKIEThP0RFSwudEzLvLZppNmxWZb+fo
 +qP6bjA1LYLHv/wrXcW/41xjSiG61hijyqYP4Xu8wd7rywbkYlHbNobi7Xwjz2nUFttkDk49dku
 bk5U5P8N
X-Proofpoint-ORIG-GUID: BP3f_qDZUTPW6LKsYja50Y0smEOMFqvN
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d528bd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4CTuLwWeLA73sPtru90A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

On 9/25/25 9:48 AM, Tingguo Cheng wrote:
> Add RTC node, the RTC is controlled by PMIC device via spmi bus.

subject: "arm64: dts: qcom: lemans-pmics: foo"

(following the style for the directory)
> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-pmics.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi b/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
> index 1369c3d43f866de9d8cd5cd4985241b99c0a0454..9e0d05c1b39ce229d5d4310ea1df1bf02e689178 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans-pmics.dtsi
> @@ -132,6 +132,13 @@ pmm8654au_0_pon_resin: resin {
>  			};
>  		};
>  
> +		pmm8654au_0_rtc: rtc@6100 {
> +			compatible = "qcom,pmk8350-rtc";
> +			reg = <0x6100>, <0x6200>;
> +			reg-names = "rtc", "alarm";

1 reg and name a line, please

> +			interrupts = <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;

Do we not need "qcom,no-alarm" on lemans?

Konrad

