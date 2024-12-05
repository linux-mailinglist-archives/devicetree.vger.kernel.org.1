Return-Path: <devicetree+bounces-127711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFC69E6014
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 22:28:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA29818849B9
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 21:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B002E1C174E;
	Thu,  5 Dec 2024 21:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l1Y1fJOH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FBF192D69
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 21:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733434087; cv=none; b=sY97g/DCdFWLy2tT+1CVSj52PKtsPcypseh+P+utXA7V7AxGrGs486Kp1UiYdoWnOShJoIg2L1Tju2sYtC0HjlIYytsok6RQh6qUHwvrT1RmWAGKwp/8fjadLKLRtcZvYloCPL2Ef6APQRS0wTcOh49pK3PmvO8ewNz2IK1GuqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733434087; c=relaxed/simple;
	bh=jQcNUuUDxCn3dN0kQAY4LIdcEjNmByuC06S984SDtlo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O8eRjqwNI+jr2FbORZITlRb4q9gf+OZWobd/adxh48ffd2kUZ05WxxoVxIhbU7x8qr5iN18gMz1UMbdE4SMk2OWhU8OQJmheAe7AJL4f8l2M0D317bPz6KX4nr2ZTcEbRi/wK5mFcE9qCxW1tGUvfbjnSgNE7CMHzB9g6xemCAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l1Y1fJOH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaMLs020786
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 21:28:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SAMrcNiwBXMAFwkjSpLCHgcVnjsjGKFzPzk9JPy3DCY=; b=l1Y1fJOHswNxv8JD
	muhtpEZMM0z7L6nEtIDBxs0W6GANAemK1CnYItVuX9fowxzxP2XMfbM+Ce/0ydnf
	B4tzyp60PfLeBICuZX3tdFeoCMOZ41SUbqNWDvXDFTNYZ+0xKRq8IojupAk47Yni
	kr7P9oBI5WrNch9ss3I5w030LABixogDuON4vmTakz+WNBRvggVjORG2N+MSBL63
	LqzwugBdfz9sz8f+mACnWSQv3Apm0QfQI9osXnvND17GIeXeiHy6dfdoW1CfejMK
	ZBgre3srn/AMQlNtnFhg4sa3qUnf4kihNfJ2VqvRqOX4ySZ+AI77S69Fll+0VoMX
	2SNZlA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439v80130x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 21:28:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46680667b3aso3270031cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 13:28:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733434083; x=1734038883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SAMrcNiwBXMAFwkjSpLCHgcVnjsjGKFzPzk9JPy3DCY=;
        b=wM0p43V+V/jkQNUWYIgKArLJKjM8XfLpRYofP55ercnXkS/7nhJ5VHO6grgvDcP6R2
         JVgAxS+uP0NsN0Q4o1dcDrlxbMcCx3/QSTYCyHdBMR+AEH4bR8FvTR5SUljBLqSTC1I5
         wvyvIrj/6yZKhxwlYMLogh7IBnnvYIw22CP/TJ+6zD+6l/3TOLkF2mWnpdsRnXCXYVdj
         VCgvvhjuh9rOVMT9dioW0U3jO3S+5FuTv9E51G9Mg4mHdXRJtV/krOp4ycXqyqihAQF1
         vh0N9pAKB5JKVx2j3MajbPo1NXZy5Il03r96fmr77yuxUSBFbY4+NJsNIN16A9FqdV45
         WFMg==
X-Forwarded-Encrypted: i=1; AJvYcCVCR03dFcn/aIhIj5Rh5Z3U5L5JAoszLtzvzfDKH4x/OVR5UAJXOSFwyLw96WzAIm8yFeiFVxHLQ+yV@vger.kernel.org
X-Gm-Message-State: AOJu0YyTcOqDTYXzbQh2uSPwFg16Q1pd/jjDcF9w3MTn+mxVm5iGnyDZ
	6Vp459FIW75X6hLBtqJ8q4WWIV5MzYIPxDp0ennuuV1Cs3iL5fOdzvpbEtdFkWIZyHdhd0QLCOe
	cHilAdhQUQOfxB2KUoBHMO8ww3w9KJKcpPAUEGXhSSBvxbHnnU00bjUsjbA9a
X-Gm-Gg: ASbGnctGRvTxhn4MKs2EJaLEhfGlHtfQj6lcQSL6CibfCFKp2lfkeBdfkYY0Ps6s1Cn
	n6kN+/PhJikzRwAup5PIFTbKDfmlf3zBu8+MbGAQ9NpbkTIL/Lyg01qXJOJK/oOtyybnGE9TQBE
	5EUgNOPIe/lQCzXhTb8c0hW/GBBoYq1/AXvxFY+tdkGGtIlKotGI13ZN6m6hF5Pg131aMQzajXB
	h6dHrUxr+tEc9GMwYqeGLZBJ0vLMxusWKLArlZUbDKW/MPiCqOXpmR8lJCSCQQtvalrOi6zSTPV
	bOP7aDabFucT+ZqSOlqeaOlQbTey1yg=
X-Received: by 2002:a05:622a:3d2:b0:460:8f9e:c48e with SMTP id d75a77b69052e-46734cbe7f9mr3792361cf.5.1733434083522;
        Thu, 05 Dec 2024 13:28:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGEuK/EmDSiLXXkdFaVlsi2dj9nhG3m2IJIOMHn991R1aD2KvBq1gXiZLcNPGieuEMpGNWFTg==
X-Received: by 2002:a05:622a:3d2:b0:460:8f9e:c48e with SMTP id d75a77b69052e-46734cbe7f9mr3792191cf.5.1733434083174;
        Thu, 05 Dec 2024 13:28:03 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260ec5f2sm140940366b.195.2024.12.05.13.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 13:28:02 -0800 (PST)
Message-ID: <b4a2665a-894b-4324-a3db-5bc9de591276@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 22:28:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs8300-ride: Enable PMIC
 peripherals
To: Tingguo Cheng <quic_tingguoc@quicinc.com>, quic_fenglinw@quicinc.com,
        quic_tingweiz@quicinc.com, kernel@quicinc.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-0-001c0bed7c67@quicinc.com>
 <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-2-001c0bed7c67@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-2-001c0bed7c67@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OCdWXhoFT9W8R2tIIf7kFHRNcIAhCX43
X-Proofpoint-GUID: OCdWXhoFT9W8R2tIIf7kFHRNcIAhCX43
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050159

On 28.11.2024 10:40 AM, Tingguo Cheng wrote:
> Enable PMIC and PMIC peripherals for qcs8300-ride board. The qcs8
> 300-ride uses 2 pmics(pmm8620au:0,pmm8650au:1) on the board, which
> are variants of pmm8654au used on sa8775p/qcs9100 -ride(4x pmics).
> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 7eed19a694c39dbe791afb6a991db65acb37e597..56e7194521834a7a6f5c5597e0f28a27a18d90d3 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  #include "qcs8300.dtsi"
> +#include "sa8775p-pmics.dtsi"

I don't like this reuse.. and quite frankly I don't think this is
going to scale well, especially if we keep adding more qcs8300-based
boards and will have to weed out 2pmic vs 4pmic specifics

Please create qcs8300-pmics.dtsi

Konrad

