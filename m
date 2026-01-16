Return-Path: <devicetree+bounces-255874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B97D2C5AF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 07:11:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5089300ACBE
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 06:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2F9934CFD1;
	Fri, 16 Jan 2026 06:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R7vhwqp5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RZqTzERI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31BB346A0D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768543859; cv=none; b=SODz0DEf1nm5Jo55ah9wiXw1t0aGvopY4IirEvFlijzE6meW2fZp2sbMoFUVXUZsI4gmhiFm0TEv7UXMyUMLdPpMKpW1RGPuQpRtCuD6IDT2eRky6ySL+e16JGFHYrvk1M5JHwBwLFc9bOw8/EDyTQ2mVPJlhSY5FcbB4Pb7sv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768543859; c=relaxed/simple;
	bh=UWRZdYdbVOS0Qf0SoV1GOlwURlJyQ9EwbQ0x+ZZu2Pw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eU5Yn17TEntT2aJ0MROFGe//N8Y187wdBDnLrsmK3K7mBFRoEkqfoQjCcLLQvf0EPJz2Vfwyk5w91JnRH66DgjJTtkbFYMB+s55tQ8Ks/Nz3atFBvmRMR3WXMF6fA2Q5aehVdSu7e92ek9miOV1EIcyayHtY/S0x22MZCEljt9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R7vhwqp5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RZqTzERI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMd2UC4101603
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:10:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8dvGPLqwrrYLb/jUyaHbTl0R
	INjXWSRLqYqkLp0HioU=; b=R7vhwqp5cDUhV0nwb9FqfTFX0WA2X7STq1Li3Twu
	u/C2rqetf0G99ZRCUdfoXSC9z7puk2b7idtC1gCPijNtDviUTtBSKUuXYUlyS6pD
	ZcDIKo8KhvODP8JI4M2kXPAbzJMch4M+2SNu2JlwYdwPUow+wfuHY0l3kK/89166
	UKUBtp948E5vf5n2FMgFp68SqCN6UBcYeSjX2vdvHeoicGQaQqBE3MRlkpYYxxLb
	ER61lGuN8b+WGxAOdWcku2Ix4AUiZGULhrjX9RAAJm1Gk1KsPHyJO0U4fgTnCrJB
	7xHC6kKaBHp2BVHK1L06RkTda0gsf7+fFbv7SYidLQ360Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq97510sj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:10:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c53919fbfcso432266185a.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 22:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768543857; x=1769148657; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8dvGPLqwrrYLb/jUyaHbTl0RINjXWSRLqYqkLp0HioU=;
        b=RZqTzERIyxHJ/eU3i5PRik8HMzxyG/w1lqC8a95Lm2ClAo4wQt29/HE4kpsAF19OB8
         0M02yY/WfxViChRWiftv4SqRlSOabY878ragw5a30HYIOkmEb2wo0sEEWE3uOZABazmH
         yrdaTce0cISeOKajq3SkA6pA8Eed4VooIQsDK6ymbQ+qzp8HP/wRCZPA+4EukqZdInac
         STYOpKR59RAgKYyA18bsGTs62kBjFdpmyUVpTjdW6SAun9VnEjDWfKLurUkpbQa43uHw
         9Np4hcVgat/D7y5b5GEUcL34Has7+i5pefALwgTsiMi+JLIfab78oD0u0UlBpopzvlGx
         pBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768543857; x=1769148657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8dvGPLqwrrYLb/jUyaHbTl0RINjXWSRLqYqkLp0HioU=;
        b=QAotC5Pzq1ZvjYU1lh+U5iAOkv8IbYruUSsIJQegfim280n6/pJhmY1kSrEKGWd0I6
         YxRVwUkO4mOgGaYCyZB+HRZ8DzgwgZeqv/SEp3Ak3cttPJ8Dlz9IZPIOQd02XbZG0w87
         b56hvuzgTJt3TNZtCW1jbAqcbw/KtALKqmlcm9p0ehhbY3rQAXbbuiEqu4/lx0pF0BuG
         HcsOVhvZWVlbDRs2AwPjoNHDl5faAcAWHXHXNvd6kF3ssFU6WWYusNBi8lZliCLp2D87
         nnuCcYydinyxi65aCW6KtzrTKXfsvbsOmvnSuaT2dfmpcwzTW7ga6GY2gD5jCk12B2mp
         ztHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQioQDs8fCCgthHQSniKV8WmYziU4W3qtNIs4bnkQYFkiyfe11y9/it2wZaJfGbvJM9+CjvFBpye5i@vger.kernel.org
X-Gm-Message-State: AOJu0YwUsdwOrw9YHBTMhXlyM0IhYYciMCoF/T75KbYJcD7Stg8MOIvK
	R17CrCfB+wJdbOw/MaGNX9qi1JiuqL89WYT/pXQmV4/jI3QVsR0vXBgXrojTwZcByBdkC2UNawu
	u+4TCYTw9RKIKksLiiBcXsjfePYNk1+wisvIeWw0X3+8bSD67I1CQ/5QivIaXmyG+
X-Gm-Gg: AY/fxX7QL5Bdt2DlPY4oLLWdzVZPxgxfqHqbTtE0my9SkyL8vNHHq72Ks30Vdwa6Q+o
	r9oYTOmJLOSrAfB161DMxIxDuWZgQQLLMSQZAtZtdggUXqorCpacsH4i0od9+rD9DKOioB6cS35
	5HG8aZM2AwP60AwryttZyp7X/foy9Z0X7JkU0MxiMgAUmw6pN9c/ja2lQxub7lE4sM7cuObwE27
	XVK/EYsZlwgaFP4wuet5/naEfwkKkxQCGb8uw7GCB9tCooCN353+KuoebNBavP/3k7qOyqEx+zi
	l8NqzTEuPaZ1RZpG5LPrkkN5TOtUuZ/u9YSEln7iIFCf+ua3DHpWz0AZmi8DeCgM0EQZ00DCW+r
	qZAHLcKANjkiflOkH1mBAQLur9Q+SyDMNq7WS0cbC199lOTHgl7jtdRjD+YJ+03Wiy9WlW7YyoF
	L0tX8o2VZlBrmV/rI0/drCaaw=
X-Received: by 2002:a05:620a:1a86:b0:8b2:4a1b:b80a with SMTP id af79cd13be357-8c6a66e4ec2mr297781985a.25.1768543856751;
        Thu, 15 Jan 2026 22:10:56 -0800 (PST)
X-Received: by 2002:a05:620a:1a86:b0:8b2:4a1b:b80a with SMTP id af79cd13be357-8c6a66e4ec2mr297778685a.25.1768543856296;
        Thu, 15 Jan 2026 22:10:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf34d572sm457592e87.24.2026.01.15.22.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 22:10:54 -0800 (PST)
Date: Fri, 16 Jan 2026 08:10:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 7/7] soc: qcom: ubwc: Add configuration Glymur platform
Message-ID: <s5eu5xqoh7zs762dciup426fxed7kcnk3offyguv2qhqsnaomt@drou2clinmly>
References: <20251027-glymur-display-v3-0-aa13055818ac@linaro.org>
 <20251027-glymur-display-v3-7-aa13055818ac@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251027-glymur-display-v3-7-aa13055818ac@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA0OCBTYWx0ZWRfX9kTQp9U60bka
 aPN81fuYlKrkl51CGZuOLqHxDzMW9TLAKoAxrHP5iYIkpg4qS4Lni8qP8vOTbtatjWQlypU+POA
 qfcLxrk4GE2MNsswDcfOi94dU8Uz1miLkTLiVaYze/d8uGtTs48ecx+RD3AunDGEeqvXmyjMI4W
 VIO3pwLQx7ndtnNUkdQIYxtwk8W0nLirA0eegYNuWK4OmnH0f8p+Ws0JI4hHO1Tl14kYZ5alWK0
 Erv8e00kRzqWF9AbJaG/lmI3Xd8LGzw/7+j9MS6uuG5EMZm6Tc0c5BUXpR5CLTm8cgJmOzjrTAd
 +w0oqxx8pg35r1ZF3kgqutislFjREdSGXBQZ0egIv5xQBjX1482aNlRejAetttvy3Vnlbv2A8WI
 gUfRNeYYCaXXUXVV9LCulNNWUhoqLk5sQ4ptNCrEIXLGZMnY+WRZZGr1g6yWRmtLv9zbEM7mxYD
 1R8pOXNvtQlWuzJid+w==
X-Authority-Analysis: v=2.4 cv=Sv6dKfO0 c=1 sm=1 tr=0 ts=6969d671 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=qHQHcOLFhFkQKvqmysIA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: e8KG3uEz87BRL9QaOZfLRDLzEqBDjZjB
X-Proofpoint-ORIG-GUID: e8KG3uEz87BRL9QaOZfLRDLzEqBDjZjB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_02,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160048

On Mon, Oct 27, 2025 at 04:59:24PM +0200, Abel Vesa wrote:
> Describe the Universal Bandwidth Compression (UBWC) configuration
> for the new Glymur platform.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/soc/qcom/ubwc_config.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/soc/qcom/ubwc_config.c b/drivers/soc/qcom/ubwc_config.c
> index 15d373bff231d770e00fe0aee1b5a95c7b8a6305..7cca2afb68e3e9d33f3066f1deb3b9fcc01641a1 100644
> --- a/drivers/soc/qcom/ubwc_config.c
> +++ b/drivers/soc/qcom/ubwc_config.c
> @@ -218,11 +218,23 @@ static const struct qcom_ubwc_cfg_data x1e80100_data = {
>  	.macrotile_mode = true,
>  };
>  
> +static const struct qcom_ubwc_cfg_data glymur_data = {
> +	.ubwc_enc_version = UBWC_5_0,
> +	.ubwc_dec_version = UBWC_5_0,
> +	.ubwc_swizzle = UBWC_SWIZZLE_ENABLE_LVL2 |
> +			UBWC_SWIZZLE_ENABLE_LVL3,
> +	.ubwc_bank_spread = true,
> +	/* TODO: highest_bank_bit = 15 for LP_DDR4 */
> +	.highest_bank_bit = 16,

As I started reviewing UBWC bits and pieces... Could you please check,
according to the document I'm looking at this configuration is not
correct.

> +	.macrotile_mode = true,
> +};
> +

-- 
With best wishes
Dmitry

