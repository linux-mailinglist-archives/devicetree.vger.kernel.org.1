Return-Path: <devicetree+bounces-173203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F24FAA7C51
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 00:42:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 234523AD86B
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 22:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0954021930A;
	Fri,  2 May 2025 22:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o0rDGCIt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC6821A94F
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 22:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746225738; cv=none; b=Ewn1CwkQ+osGJn5KEdKHxe74Jzr2V5XeeOCmN47ZPdQEUqysgAg2fU51sNe9WnKGg/NLvcTgWj8BiMB9JoEMxjhcauX+SNpEIUJTFDUKQyJyd1twboZ7v5Nuwep6PsuOnHgHNSJmmXKdQhCwCDCKMyUiqh+o2AH9c5Z3MabeZgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746225738; c=relaxed/simple;
	bh=m9NYJKIZt8NO6Wjo6GBayzciQLJLCP9eJPM0uU4PPEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hZekvgGK/OEwNDY6AOeF3gFwU7wiIDXSIvGWpW9jkX4ES9ZCiuauHiEm7QWCiYZlWtvkGMhp50jUw9pem/PqR1kZ9MW1zUMNrdXKuGI/ZO/G0pBosiMx7g3NYjeB024FfVCZzbKHG01EZfZdmueOZ7LXqmUa4mxgM3XccBkao5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o0rDGCIt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542KB48v002204
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 22:42:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=crpVW1GAkulPAn2rCtcCM15V
	7zLdAQEB19gyDBO//vQ=; b=o0rDGCItaBuJ7oSVDCFdg+Hg9eJDavqd86Et3mUL
	NEbIfFpmrYI+3mFz55vQZNEkz7/WvKKKTPjB/GYN2YWAODLJSc5g2BZlTn7I21k3
	kEygjn7PvAlEGDhNWhMxAeFHfJypIFCeU+HbybGR5g7PiJZHgSwPo8Ak5nD/xaMw
	jJP5NZ0bnekRZuJxbroXlY8Ws5qloKKGkFPYZh3MQmi8V0bIZ8OY7ZG7mhw/FlEy
	Ba1u3Vss6MPQGrfnNYf6BKghMpLjkSLQFRp8D4JGX/dt7vYxa7tiI84mh7TZ5o9r
	5rUS/7I7e1O60upU0vXG1jxD9cLySD65dntDraPqB0PlnQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ubskd5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 22:42:16 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47693206d3bso64723151cf.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 15:42:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746225735; x=1746830535;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=crpVW1GAkulPAn2rCtcCM15V7zLdAQEB19gyDBO//vQ=;
        b=sHgI9F1n6feNbwqAOvSqG+d2sQRFnTtdCYJ62ATJ0kkg+FqWn+XHnp/WaTpaKrc2Iy
         VlVYdM+slG8P5NF66pXKvWNVHOkNZUbiGFOBJ6n8cOQ0TcA2a7GNvhU4EGcoNsLsd7EG
         hWGdgPLZQSbmepD5LGPAHEHiYWUbXVkpnYfX1illN8FlvfKMdqG/aQZrAxp0UM+nSqqZ
         SHPBN1kcxROsDvxkJ8HoxRETlmR4bOE/APVSPtFY8g61YuFDNRUkUk7Wlb0gmvc46GQC
         heBYIFtcPE7HrzbehZjeAlvGY78zayJ4p6ir1MmrD8G/3lZEY1PqRRbozNrPd41/V1bP
         /4iw==
X-Forwarded-Encrypted: i=1; AJvYcCUpNq+PL8LLf+9EJUpCZ2Ep0fHJuKKUplLxj85I5hs2I9aQBxiRsB5+J/6SLdFUHWhS0UB4b8ViWYpp@vger.kernel.org
X-Gm-Message-State: AOJu0YyLmPQKgc3JnowRJ+xbq9YKwgt2fL26i+qxPMYN6RRPIQcIEnms
	5xtl7TdBo+X3CiWd7EN9deVIJKXm3n1tCcCWySce5rAoriSg8cfsbF1V6x4dpyCGJy+axzjUQ1m
	2AGsaHYLav8rl/IgYTnZQH5MicZn0ySbnIKcT3rE3/UQha6EedXjMi0QjDRiR
X-Gm-Gg: ASbGncvtBfzaRdQ1Duz1D+f0pbseIYAoSBDcl1fq8YSuvI2ShL3h++yMjgqlfRthK5g
	QqeiQndgjuwnNClI4HYUwZKV5JpJIy8CXfME6ge8rWeRYjnLLj5OHckbfFV1VOJLz8miPxInzJG
	ovLJqTOd9u1FgRwK5zgSc113pVAJeBT5TR5z2B5+OCxXLstKtHcj1z6jn12ZKxZx4os9WoqNL93
	CeVsDbVOumNmBrXnkgzrRzcWj2laiGTf5dLaRavRtoo0IdvhYodpUvaTAKM7zu+q3m+HDRu+puX
	xQ4JejepIZ/ZbqiSXb38ubdOBRIRAtH5D37IPSMqfuQjEwzIYmENKe/JetrDIbSanqIcqjli3SE
	=
X-Received: by 2002:a05:622a:4a18:b0:47a:e70c:e1ac with SMTP id d75a77b69052e-48c30f6e31dmr57477271cf.9.1746225735439;
        Fri, 02 May 2025 15:42:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlIBZLX+XF9YXHrK8MhefSo38cVjTTSSX+WjsmilD5TLhYOiseMueK4E3PQfWe7nPXtR89dg==
X-Received: by 2002:a05:622a:4a18:b0:47a:e70c:e1ac with SMTP id d75a77b69052e-48c30f6e31dmr57476991cf.9.1746225735064;
        Fri, 02 May 2025 15:42:15 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f219dsm516000e87.206.2025.05.02.15.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 15:42:14 -0700 (PDT)
Date: Sat, 3 May 2025 01:42:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v5 06/24] clk: qcom: dispcc-sm8750: Fix setting rate byte
 and pixel clocks
Message-ID: <l6hwojjbk4e7eahoqcjprzululibhgrlpsv5zi7odicwx2wuvr@6difydf2mbz4>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-6-8cab30c3e4df@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430-b4-sm8750-display-v5-6-8cab30c3e4df@linaro.org>
X-Proofpoint-GUID: L0BowbmamdgllLb8Cy0XBBeFm5oACiCl
X-Authority-Analysis: v=2.4 cv=bsxMBFai c=1 sm=1 tr=0 ts=68154a48 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=Fh2Cff8sOiI_5vdZZhwA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDE4NiBTYWx0ZWRfXzjLTD9BQKMrc m5oP6blBYpyJZvKotRLMWuORjxOH+YwH2c8t15f4/yksQH0Tonz5O2enRFwVybP1nxY+6FXtc6Q 99H+KJdbGkAWjPMr6QLAX5xRbsnGMUc1ewnXf82HPF+DYnsvalYJ5wKHhjwdTsLoy1sOfJ0Ce/9
 cBaFtJsYaIrRTSbCKZ3wQdr/+Rr3KriGVUxmufRTZjRNMik2kHP1RG/PYn4wy1G11KuI88x/fPi ny0FSlZfOyZHfJsPOmv/k3K5+aOMKXI0DbbWRdndtFZQ8FUr3FOVVreXdhUtDrPQYkf4gybkHsL FIAPOft/yJgyfmQfhvsKu9jV0pFOiv5On+6X+eWFLkaVALeIqGa2GgQrpvzV8qp7PRdXLxB9Zs+
 jFLZ73lx/2FNkrKiBzdNAPY6bXr9SQDR42KAEsn3m5Dm6GjKhDirYAE64/tUPUj4KW+qTA3m
X-Proofpoint-ORIG-GUID: L0BowbmamdgllLb8Cy0XBBeFm5oACiCl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=631
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020186

On Wed, Apr 30, 2025 at 03:00:36PM +0200, Krzysztof Kozlowski wrote:
> On SM8750 the setting rate of pixel and byte clocks, while the parent
> DSI PHY PLL, fails with:
> 
>   disp_cc_mdss_byte0_clk_src: rcg didn't update its configuration.
> 
> DSI PHY PLL has to be unprepared and its "PLL Power Down" bits in
> CMN_CTRL_0 asserted.
> 
> Mark these clocks with CLK_OPS_PARENT_ENABLE to ensure the parent is
> enabled during rate changes.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Patch is independent and can go via separate tree. Including here for
> complete picture of clock debugging issues.
> 
> Changes in v5:
> 1. New patch
> ---
>  drivers/clk/qcom/dispcc-sm8750.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/qcom/dispcc-sm8750.c b/drivers/clk/qcom/dispcc-sm8750.c
> index 877b40d50e6ff5501df16edcffb6cf3322c65977..d86f3def6dd06b6f6f7a25018a856dcc86fc48eb 100644
> --- a/drivers/clk/qcom/dispcc-sm8750.c
> +++ b/drivers/clk/qcom/dispcc-sm8750.c
> @@ -393,7 +393,7 @@ static struct clk_rcg2 disp_cc_mdss_byte0_clk_src = {
>  		.name = "disp_cc_mdss_byte0_clk_src",
>  		.parent_data = disp_cc_parent_data_1,
>  		.num_parents = ARRAY_SIZE(disp_cc_parent_data_1),
> -		.flags = CLK_SET_RATE_PARENT,
> +		.flags = CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
>  		.ops = &clk_byte2_ops,
>  	},
>  };
> @@ -712,7 +712,7 @@ static struct clk_rcg2 disp_cc_mdss_pclk0_clk_src = {
>  		.name = "disp_cc_mdss_pclk0_clk_src",
>  		.parent_data = disp_cc_parent_data_1,
>  		.num_parents = ARRAY_SIZE(disp_cc_parent_data_1),
> -		.flags = CLK_SET_RATE_PARENT,
> +		.flags = CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,

I assume that these flags should be set for DSI1 clocks too.

>  		.ops = &clk_pixel_ops,
>  	},
>  };
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

