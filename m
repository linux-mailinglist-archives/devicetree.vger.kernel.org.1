Return-Path: <devicetree+bounces-221344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA686B9EAC4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:32:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 116DF189DCBA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8BCB2DE1F0;
	Thu, 25 Sep 2025 10:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hN8krS+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4875626CE2E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758796346; cv=none; b=n7xGqmeUIc9pVfLjYQz0HuYs3oBzB9CjIlR051Xj/3S59NEvI7W+82Dd76dWZzGsrPZ0kVtRnW+BtBabFaXTb6Ee2aQHqO9khbdkYxYsjZf1onAyEMNHSoe+qfLgcObodvYKmasIdyUA0IQqnq3QiaDC/PbDluL50+cc/uB9lH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758796346; c=relaxed/simple;
	bh=HQTOdtr+qdx/m72wmgNGbMLdeMwcxfr4c+KhH4Yq9Yw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JsxyaEgrW1uKccdIHg9bFeqSnyA9+36Sag133/H1zcHeVSu8puYEtO+HfnWtGRzVTdoefZkos0xLCniHiL4lbuN1arAnFZ6nI7GFxlRt0lQSeKk69M7P0dh2rBdGLw3+J62k/RFTI1i6QmFH7Dh/wbfbaWS5FVHXgKGoKqqxTA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hN8krS+j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9tGlQ027477
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:32:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V9EPLkOHQ+nW8B50CQSYf+2qcs/EKYauVlPSbGFcsJ0=; b=hN8krS+j6Q6It3fX
	2yBlB5BwVf0ue8wDEyBE1q13UwrQwf5fixN+AIrnFi3jR5oJCsKp2Cn1UR2ePKYU
	1y/+Q4UNWBT/md9GCbeUFzMZhznD4CNLfs6+UFDeiTpdHL5DCPaRBWr4VsrmFh5N
	a6zCRLJVuDu4NbBntQMWGoCe5h0eDLgJGy402nf+X7Nd89UEWqguXMe5wpLZfySJ
	D24bx6DvlOxC6Te6ghZ+NbEhTr7e0UpukYPnFvO3UX6OjCh7UpCKmDHMct0mIXyv
	r1q+ec+8lFNOZcIQLDvITiiWj+l1qrr/UcdupO5Eo0FhBEjumAfKg18HTxIp1UFa
	OGF8jQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv17rv0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:32:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-853f011da26so30030085a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:32:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758796343; x=1759401143;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V9EPLkOHQ+nW8B50CQSYf+2qcs/EKYauVlPSbGFcsJ0=;
        b=KKSCA05QdWvuWj875DivN5p1/OH2hbLJ7xh6vFIptRPJR0pRJcA3/oWZf9VKOaNmN9
         cXxp9brkLiYeaqJdAeG5IJO1XJIyF8DzrAL+DC+W9Gp3JD0mHZrKw9tRoyW6Qif8bCB0
         urXzxr9F9+Sa1lEJ+rrcLMmZOxWBVubTmBKAOcPRtgdChu+e5+y9WuSdgd8zzO9QXD8A
         rRn0E5OalUGScl1r7gpyX5MTI7taCMag2O9gmzOjzXBFtYE9ceOK7t8Rc+SdOvdjl25q
         Y/Bx0MbqmIq7kLmPwrF+2LDBwJBJ1yPIg6OMTLGWXKLILZJrSrH+Pi6+Wm5PjzaI2dMR
         mf3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVvwvGCX3C6kXHZH+j6KmeJZkEUIcIAv+G0y+bbszmX6sa6L5S9eMmkXa6xWyTA2yTfTySNCE+FSXwZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxMAJVQ+n0CVEbELITz/NC1zM3Vo6Zy8EMdXdsb0ehc20+wDELB
	dFl4Psk+OF7u2gYQ9yb7itfbC7E37odzrlawllU6WB5w6VruGUkhPBsCmbO0X8vMQL6W0JcDp+b
	xwNiPhgFKsGVTDS2XExnsz+CiJU+OvGxlfzmelvPxcZmTPgjxry0LPbqMVojlN9rS
X-Gm-Gg: ASbGncugNYMGQP3UWYwcZ5ObnCJyo0r8GVwMqCqQmMPHiGp5R2QCAAOIRokvDjFhF7v
	Fn87EY+3Yj9j8zqgwUCeQdU2M4yfEuBLt+vgOX7h3wweRbXi3E+bL3oPsC/3VGE+KpfR3MMzgEW
	yJE3PffK5UILOXrtu8ajYqjxdDCcPqd83+hK7nbUGIw/yw2RPRn1V6nUNJxR46kZYtCgFqjAgGQ
	Ult8mCoyzYfv4b4wJdqtntifZ+lAcMWGLEYK+aRRgfF57gjtlX4eDh0CxXYNGkJgCM0sl/20eOs
	O9fT0mVfYUqpYgUoSpwoF2/AGwKauYJrqSoeq2HynT1H5WxTvdCTWZx8sc7NjAamiUVU0imTHZr
	0nCVvPuFmYBeFMDZxaGTBVw==
X-Received: by 2002:a05:620a:468e:b0:850:75d6:3da8 with SMTP id af79cd13be357-85ae8d1be1fmr217526485a.10.1758796343227;
        Thu, 25 Sep 2025 03:32:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrfUlNU55bcz4nXz0i0xu/T6mVDI/gqlomCgirM5MRBRQq4GVnXDHqldtsjAxpYhpAFaGLdg==
X-Received: by 2002:a05:620a:468e:b0:850:75d6:3da8 with SMTP id af79cd13be357-85ae8d1be1fmr217524285a.10.1758796342683;
        Thu, 25 Sep 2025 03:32:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f7506sm136913966b.52.2025.09.25.03.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:32:22 -0700 (PDT)
Message-ID: <09b2ee28-ee2b-46a8-b273-110fb0b4d8a7@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:32:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/24] arm64: dts: qcom: glymur: Add PMIC glink node
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-18-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-18-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: yppvVxwsD_LRIIi1U_JMNycbtYna0FaG
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d51a38 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=XhRRIRvm7l31mynVaKEA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfXybctaLPHQsoH
 f+NUvNNeWiFNYh6Szpc62xwDT5N3e8WDaQumffL4qq873sttdIszT3hntivtlDLs5i5JbVV71GQ
 MmTPAPBt1J4S/Xb97yHV8Wf2r1f46PS0xydACnzdQADqyq/wjrR1FSrTVjKZfxG6kdAX8rlTSCY
 V/acZvd1bY92HDY9abpzu02Jgkx4qF1v7i4+YhCB/LKlUkgRoO8+Wm1oSvdJKbQY9Joha+Xe6A2
 RIbKZ1QjWGF4aXFpFsIzFtYaaDFMiiEAjj6XecW3rGVTmRuw27902ffXG32ZDerPHpppIoGOkNT
 pIkDG7qViIz3Kjs12tTmIPX1ObXG0M4WCQkvktwgwRyyiMOd4reLAPtftCqHt/+u3qz5JSMNxvn
 b8HaSAw2
X-Proofpoint-ORIG-GUID: yppvVxwsD_LRIIi1U_JMNycbtYna0FaG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> 
> Add the pmic glink node with connectors.
> 
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index b04c0ed28468620673237fffb4013adacc7ef7ba..3f94bdf8b3ccfdff182005d67b8b3f84f956a430 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -79,6 +79,34 @@ key-volume-up {
>  			wakeup-source;
>  		};
>  	};
> +
> +	pmic-glink {
> +		compatible = "qcom,sm8550-pmic-glink",

You *must* include a glymur compatible

> +			     "qcom,pmic-glink";

Are you sure this is still compatible with 8550 after this
series landed?

https://lore.kernel.org/linux-arm-msm/20250917-qcom_battmgr_update-v5-0-270ade9ffe13@oss.qualcomm.com/

Konrad

