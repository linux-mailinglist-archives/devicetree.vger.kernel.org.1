Return-Path: <devicetree+bounces-252379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58921CFE2A0
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1652F3098FB9
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446C1322B7B;
	Wed,  7 Jan 2026 14:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iSNboE4c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BeQCoNn8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2DC6315D23
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767794629; cv=none; b=NDznDAK0o/rSHvBMxaZVbqTFBBmhxyKKHPSN9VQgybeBmTnWKsaknd2jDP0NcZgs839QcU/+Y+ZpoBRcy4x1O5jiIPsmmbr6Q0WHg5S3iEbVKTk8FlGDwBBeZ1l7hpMJK95xZMcpcOyEALXGy8epHLABJiUK+O+aq31lCeQeybM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767794629; c=relaxed/simple;
	bh=+eBgn1FXDfynTOWRPQJQcXgChNeUrZJfwmqaclXZWmg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vFyAkOPJSchY1mgf/EnSE6vATOQQFFbU4NTWANO+QkLwkCTjBGMHQrE+v+8ysANp0FA9SjAWXX5Vw1CeajtZBIh4tiyfBd/1IaQ4t0ryL/Wkwkc+++Sds0Xk6O+9JUQtbnG3Zh/ph4cnfKg02Qrrc+F2Z5fotW8Lzl1brOgMQ+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iSNboE4c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BeQCoNn8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6076tUmb2379337
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 14:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZGUEfPXYzSComK/4z89HH9yCe+htm7JQCogZL+pmhcU=; b=iSNboE4cXnSfjv6Q
	T9IeoddUr7lZJW8JimTlQkX8C++dWLYVbrQ3iI8zPng6hDQm7HKgCdwBej/yd8UP
	DdT4+bAvoTp3Jj+n+IElHDSqe2QA9boZVBngHYuDdp15iYidSpx59EPsmBOpwjmD
	L4eEBIWgi4TPqLnRfUqZyphcvWM85J/1bkwbon5pN2YoSeZvpFF3ocYNh5Clos7i
	Y/+ckUU78QqaWvGIjZSSUtWe5olAFd96RWRQZ5/tqdDRPVW2OT0nz8x0oumcz1To
	4dzl9vRKocCBRkcKmeHZxmvdS236A4GGd8wjXQElzTrQ29gcf/RDtEqWNXTzXpNI
	DMkEdQ==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhjn4s95v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 14:03:43 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-6446cbc11a4so914515d50.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767794622; x=1768399422; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZGUEfPXYzSComK/4z89HH9yCe+htm7JQCogZL+pmhcU=;
        b=BeQCoNn85dpOdRPpdu5Kj/HNnppYqNZ8jbVakwqbyxUaxNAqs/8Z9fAjHytgcl/y4B
         XIVpVvoodBQKXxIIeUh1g4oucWKDGP8tOexD3+VdbiAPZiMpQiv98Pp5AZhgtnqhEV3C
         fBlqMT05KIzxboZ11feNiz9IPFc4baUMeA94yX/XCMSWnER4SUI0qq4J4pPtQaPE4Mlu
         4oLVldvV3jA9Y0neTV1DMogS31G/DyaIdC/jEfh1sc5d7gK0rDcCa1QkmXLo5WjP3ich
         HhlxfAqJwv6eaiVZ0rer8jxMMn9xm11Lx7hvEP/ETZAPPepGaDiXiNxJWk8EwtBcIci3
         fedQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767794622; x=1768399422;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZGUEfPXYzSComK/4z89HH9yCe+htm7JQCogZL+pmhcU=;
        b=QSGsCQpxA6+sRh1FEsAo58xCppH6VQaZiscH5/S0fAOHwRuQZ6r3pJm95sKpujsILv
         GUiZQkw+8tmAZr+JovPhEIaY4Nai6FI8MUQOkxo5cVY645vJBkJ0PmFnzBoUC5HOH8Kk
         WMfJA44v82iJ09wAjd59avlZnBBlD/OKfqsHY5GyzcWk3/EFusqvxzkKPVeAYIz1Kj0F
         tquuPS/1E2ZGQDXL7LgaLQQ0l6l0E3s6Bx+lWvy62elfemSysYA5DnAn4+0REhz1flYV
         XAKgSIJ7pZUIHbuHo8vWWaBdpWdRdKoNR+Hlps2ZfohTUpGC/z0+D6i1h8pSNFt0qysU
         Sl0w==
X-Forwarded-Encrypted: i=1; AJvYcCV05wiVCMXxPeW5Y2PzHMsy4UfK4LoiR8d2skNMV5qohXTa+qfrA5YwbsQwBduLkQ58zKy+iFcTVZM1@vger.kernel.org
X-Gm-Message-State: AOJu0YxUlq/sBImhrYUm32qmvE7LvMPueklMGeUyJolEsd2bEDU/Ek3M
	VdBeSAviR7Vna2CbnogAKlHqX1REzzhDSuud11j7MaPA0ak2yt5beByRfpyUA+s4R1q8Ynb8DYr
	p1HqCyK8S5ti1gNdkpvFm4vVvHE7v7b1A+pGTtM7zSEnqduYdH4eDg41PeglMlaqn
X-Gm-Gg: AY/fxX72CdRxq2bIyBPW/vfCiXFD5M3drHflWlInFYbiAasmcD5LWhVfjDbhfIXB+Z/
	SCPTql742n2XHljmJ+CBy02jFQJFTU1H8D+xjQ2ZJQLrcDtauxdv5vW7Q4QtjbrhwpezV1OXZGY
	rxVtVx3jGrlnwXkTBgTsrJ9g4scQcQHgl3a7J1O5hKpHUPPICYy8zhW6xPPkQvnZTjxo2b9raFj
	8/Jpg+kguO24Z9UFhfU2+OsTFeASEY88i2b1bo6tUP2ka3O4Uf470sLWNbJgX+MiDwgbcWhIfK6
	hZtHIlxaGC2LYBuxI1pIG5lg4Di/LbpICs6sUoze10hS9b29aYvvf9f6OmNOuHUB749JtjIZ61R
	IjzDGTqlPGL4kPIo0rA6FNZ/JmQDKvCmMlXYrDhlowMs5k+7AnWiivROBV8nguzWOVUk=
X-Received: by 2002:a05:690e:1486:b0:646:5127:ad64 with SMTP id 956f58d0204a3-64716c9291fmr1920187d50.8.1767794622209;
        Wed, 07 Jan 2026 06:03:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE+yD6IwhCJBS0M0IdpMAihYXZ2W52QH5LWTaJGmcGDkAkN6V6xxs4QcaIu2Pf8pk26NxzbQA==
X-Received: by 2002:a05:690e:1486:b0:646:5127:ad64 with SMTP id 956f58d0204a3-64716c9291fmr1920088d50.8.1767794620266;
        Wed, 07 Jan 2026 06:03:40 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b9d4c89sm4571078a12.10.2026.01.07.06.03.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 06:03:39 -0800 (PST)
Message-ID: <bfa54cfd-b5cd-47c6-b941-3bb5673d19f6@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 15:03:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: backlight: qcom-wled: Document ovp
 values for PMI8950
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260107-pmi8950-wled-v1-0-5e52f5caa39c@mainlining.org>
 <20260107-pmi8950-wled-v1-1-5e52f5caa39c@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-pmi8950-wled-v1-1-5e52f5caa39c@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LJhrgZW9 c=1 sm=1 tr=0 ts=695e67bf cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=WZtaUWDQifwC2z0g4SgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEwOCBTYWx0ZWRfX19qzsjwYWSjl
 iaXsIFymeLhiJ+F0JLdAs4/maCzYEtr3VztWuxooCGUmyd6GoqSPRMqwNYdbbNKZCRyRxZc1uU5
 6nT/ZRSZ7yqm+DwYYczjAaQjJjD5hPpaP3QjYyXDIvkfv2CP5yI+jS6ieTZwonKtPtgQiHQtHC2
 VhiAOa9yplhKjIHuH2mgya1jyiYVItKOhjy/p9kxDtLSRgTBOIeHkhO54n9xakx/b+QcXF+XSsC
 2B4oTqIS8tYVzHjP51+cmCnIRxVQJ1V9SfL8NgvJzcdeUCRqGYJnBklNhH/Nxjc2GdH/Unl4nty
 x+APGmB+C3ZUQs9meMBSeCdynJ00earzKqF5acBkw4s0g5KT4fyuKOX0FocW0FP6bx2LeShyi/X
 y0+UOXgzG0BTjRkEfLG4aSFjh18LkgSlQOLhFaXjZ7EL4oKsWblv60pKmbtavKzTetJJK8GWaZk
 lGMaK8vsPoYM7XdM7BQ==
X-Proofpoint-GUID: s6JgTix9XRvLi7MN_mjI9ONxKR31Cj1f
X-Proofpoint-ORIG-GUID: s6JgTix9XRvLi7MN_mjI9ONxKR31Cj1f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070108

On 1/7/26 2:31 PM, Barnabás Czémán wrote:
> Document ovp values supported by wled found in PMI8950.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  .../bindings/leds/backlight/qcom-wled.yaml           | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml b/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> index a8490781011d..306fb6642617 100644
> --- a/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> +++ b/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> @@ -98,8 +98,6 @@ properties:
>      description: |
>        Over-voltage protection limit. This property is for WLED4 only.
>      $ref: /schemas/types.yaml#/definitions/uint32
> -    enum: [ 18100, 19600, 29600, 31100 ]
> -    default: 29600
>  
>    qcom,num-strings:
>      description: |
> @@ -239,6 +237,24 @@ allOf:
>            minimum: 0
>            maximum: 4095
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,pmi8950-wled
> +
> +    then:
> +      properties:
> +        qcom,ovp-millivolt:
> +          enum: [ 17800, 19400, 29500, 31000 ]
> +          default: 29500
> +
> +    else:
> +      properties:
> +        qcom,ovp-millivolt:
> +          enum: [ 18100, 19600, 29600, 31100 ]
> +          default: 29600

Out of the supported ones:

{ .compatible = "qcom,pmi8950-wled", .data = (void *)4 },
{ .compatible = "qcom,pmi8994-wled", .data = (void *)4 },
{ .compatible = "qcom,pmi8998-wled", .data = (void *)4 },
{ .compatible = "qcom,pm660l-wled", .data = (void *)4 },

I can confirm both allowed and default values for PMI8950/98/PM660L

I could not find any data for PMI8994 (or PMI8996, the essentially
PMI8994-revbump), but it's very probable that 8950 is an oddball,
so:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

