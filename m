Return-Path: <devicetree+bounces-200316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC7EB14201
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 20:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 236F9541B66
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 18:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2188276038;
	Mon, 28 Jul 2025 18:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RxRRx4bW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300A9275B1A
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 18:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753727398; cv=none; b=hxApWPCFC88AW+UMcgQtqRlzdK44D4iS+VdIhyezwnQvj9d5MWSwN8O4lTd5utSfS3uLe35rIFro5w6aD1E1VA/XzvXhRD86pCP/chln5xicSpKLb/Q5Zw8OLYtNB7TT32Wu+MH3OD02LvBtdylAPH+Zj9nro0YPh3ycVhrdCTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753727398; c=relaxed/simple;
	bh=m39t4hBEDIOE4JkV53k7vdPJAG4/pTKjuu7PU6u/wj8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LcxdX+cGii0m3YbJmpHGTLQdOo7vDo+Cy15IOnNwpLSAGTD2kcU0iA2dwU4Oz1A/NlSlLdk2kjvzNxTc5V+SNf8o1LLhjwB1JK7Y26Fx1k/QhfrSigj+y8ejbZLmM4geie0kMG7kSI7SsVK3+xRDTOBAtMplxKzcRdL6AGg7AU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RxRRx4bW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlPC3031277
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 18:29:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oT3tXcSx8+6IFxvzSzWBOGBoJkG+N20NCBDeHWmRh9g=; b=RxRRx4bW+XfnjtNx
	cXxPfHvYE3kKcnxdM9/MlmG8oFS37+PQ89XZIIdeXMmN9m4UyeGOIbVxbWEfKlvS
	zXbdCe+sxd7uvON5kJ5bGT5M1SfXV6Nh4gzvfEBbKHpLJwV2XUIHDEXCTdCLaTSf
	fdQU5TEs2rlvD0xvSabZilWSFqE5tszYf7KDUH92dHYXOiFYSFylsv26+GVCvruN
	oLRKd4vdPayCzglgYIxJAfQwt4ECUsESUbzoaOoEprCJjLSFPKfcxOx5cBl/kFyp
	LodkABTEXVQz+ErtotXVSkrcRoUxOYsoMI6/Op+BMlhuE7BcbMVIhZ59POVc5JPe
	jH82uw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1xavtg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 18:29:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2369dd58602so49142035ad.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 11:29:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753727395; x=1754332195;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oT3tXcSx8+6IFxvzSzWBOGBoJkG+N20NCBDeHWmRh9g=;
        b=E0AO633jOcIDtLHffgy0R5aiy2V+mm2e/3cPLqQ2heNytVu621E4snxdPGUHrGywAM
         dZWZtAC3zQ9cIU2R6Q057wNt4JDD8Y5xoVdrk/OQSR4eK3mECw8ZMi9eNzCSLL3m99wB
         B+jr80b9hC5YGZRqenB8cWLc4nd038/yWUTE0JAgfHsakv1/s+jWUgsCpuXLG+ZGplsF
         6dbN8c281CZlP8P65sxFKpfWvbzZfyBmngs3tgP68QCJZXCpcW8NPB6HUqq48agj9zSQ
         fyXw/hGL6gWRL+6As1hbNW5Gx/jElHG2PTnRNCxeR3yAmNjvsSQfzjNsIChcnWH3v5IR
         Gqmw==
X-Forwarded-Encrypted: i=1; AJvYcCW1MzAWmKnlz6U7pkZLYw/YY6vkex2plHvQFEYLAcwWiB/XrIrictSM0qGyo/WVnOOEdEEIead0panf@vger.kernel.org
X-Gm-Message-State: AOJu0YxdDd3weNxDnQic2URqkUJRRayoFbyYzQQdIJbRywk+PG6L9wzU
	vMg6SOFcxHJwCeVirOADF+Zjl2Sh1so5L2SPr3AvP2AVaL/cabmC91r+UmL0DjdDb7Cbb7AwWOq
	PmEs0AmysJZAbC68y/ts0Eh9jH2Is4uZr8HRMyr1KhiIbxMJfNhH1qK2sXOpuIMNk
X-Gm-Gg: ASbGncsyplTz5g1Ik2B7MYjNiah6FHUtyYx0VJi5UYSHzewPzToBgN47x3/+tkWofJo
	GTgAwdNtrojKsfPWPWPkPCFRrmrm/j8Dqdpc4Qe6nK1So3ARF7fptZRpfOzT2pRMsYmWZ7zucfp
	FV3DLjkLgqOJo6KR36ZzrJf5CmVORIDmaw18BLfNAoSfcL0iJQHULFN8lcV0WrnqYgcdh8eKzGX
	rPcuHnHRtM/VSph/t/nLYdVJGGsPsw4QTTJmLL5cArzSnPg/Y20hMdMCyPpsLgpINNBg1uSdq4H
	pS3PPXVdCLUb20QzbXvPFsSl5LOMP62fPQ6GGf78SOPrGoCGPPi4yoYOyMtXvriRRt6q6tppFMl
	Tjcq4TeacmUx77Zt8nDRfDg==
X-Received: by 2002:a17:902:f30b:b0:23f:f983:5ca1 with SMTP id d9443c01a7336-23ff9835e51mr72280495ad.12.1753727395425;
        Mon, 28 Jul 2025 11:29:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAAEQKwWNVIHaeiLUK+6MPkWiAUDHenXFMWUMIoSJAH/g0px54Std4EA5mF2F39xEpbfaLQQ==
X-Received: by 2002:a17:902:f30b:b0:23f:f983:5ca1 with SMTP id d9443c01a7336-23ff9835e51mr72280055ad.12.1753727394829;
        Mon, 28 Jul 2025 11:29:54 -0700 (PDT)
Received: from [10.134.71.99] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fc5a9d219sm55658715ad.98.2025.07.28.11.29.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 11:29:52 -0700 (PDT)
Message-ID: <8399dc75-6363-4ae1-98cc-59b5b62dc8b5@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 11:29:31 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: display/msm: dp-controller: allow eDP for
 X1E8 and SA8775P
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Danila Tikhonov
 <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
 <20250719091445.3126775-1-dmitry.baryshkov@oss.qualcomm.com>
Content-Language: en-US
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
In-Reply-To: <20250719091445.3126775-1-dmitry.baryshkov@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDEzNSBTYWx0ZWRfX4VHiMop12c0u
 hcHjHaApplqd1PpyGug4Lm11hhqo+A4ZrcrCR8ej55ZyYVSy8m2mDPXdZrHN+WGBU6C/BmI5cGx
 ZHcRkVk1rS+hIr3HFhduV0QE8qSaSiVYlpHzzvGzpONW2+7fU3KLt9oTyknoMYjRp+pVICU2I8M
 MCrYjQ4YT/GZCcPvDLqJr/OeZZe540Pp4yisdD3i+Uv/cIY1J+i06ZzI21pJukkDlaUM/B8uNK6
 S00y3P7UiL1+jkf6Ts43LW7cVMn/gmuuWHD31e7A4W7LogCj7Y5L6TOPJsUP7L+g9qRlraq/lUy
 e6Gd+W+zWi8lXMCYPgoQtWgYJ6UYRGah/azhcx6FzA+rJ4+h18kJoC8OOVPxD3FOWJ06vwWKv+a
 6QSA/aBQi0GoNsYZIzgtpOXnI12pzs1gpeOZ35pISUJcwvsJmbE9AHWxL9ZO+yTSC0vq+8Os
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=6887c1a4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=wmqSsp3ovfGiw9AtJwoA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: HezlmvnWumTzXj3yYwmJLpC7hL0OlB6L
X-Proofpoint-GUID: HezlmvnWumTzXj3yYwmJLpC7hL0OlB6L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280135



On 7/19/2025 2:14 AM, Dmitry Baryshkov wrote:
> 
> On Qualcomm SA8775P and X1E80100 the DP controller might be driving
> either a DisplayPort or a eDP sink (depending on the PHY that is tied to
> the controller). Reflect that in the schema.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> 
> Jessica, your X1E8 patch also triggers warnings for several X1E8-based
> laptops. Please include this patch into the series (either separately
> or, better, by squashing into your first patch).

Hey Dmitry,

Thanks for providing this patch -- I'll squash this with patch 1 and add 
your signed-off-by w/note.

Thanks,

Jessica Zhang

> 
> ---
>   .../bindings/display/msm/dp-controller.yaml   | 26 ++++++++++++++-----
>   1 file changed, 20 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 4676aa8db2f4..55e37ec74591 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -176,12 +176,26 @@ allOf:
>         properties:
>           "#sound-dai-cells": false
>       else:
> -      properties:
> -        aux-bus: false
> -        reg:
> -          minItems: 5
> -      required:
> -        - "#sound-dai-cells"
> +      if:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - qcom,sa8775p-dp
> +                - qcom,x1e80100-dp
> +      then:
> +        oneOf:
> +          - required:
> +              - aux-bus
> +          - required:
> +              - "#sound-dai-cells"
> +      else:
> +        properties:
> +          aux-bus: false
> +          reg:
> +            minItems: 5
> +        required:
> +          - "#sound-dai-cells"
>   
>   additionalProperties: false
>   


