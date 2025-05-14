Return-Path: <devicetree+bounces-177438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B82EAB77C5
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 23:20:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A42534A802B
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3CD929615D;
	Wed, 14 May 2025 21:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vx5izDoF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64928213E71
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747257630; cv=none; b=flBC2h9FkrM5iZrQjtGWaMSqsrTUUel/Xdht/JE0RgdljbExN/ATHoSQVGNHvV+RzP3DknZu6OLeK0mWq2AYxI2V8rLFRKRTBKNLxXBef/hzuUl7QrJa0j73HxAl8Huu9I9WovWcRru3dVzKIXoPbCudXNA4OJNsI2ZqcWl9Uz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747257630; c=relaxed/simple;
	bh=dKXXkyeDnyVFW4grSfvrYpjBsDjCE6AcHIzvzvZQQKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eMvdy6321jv80Q36SEzfPkTayzk4y0i5SfiPUPyU0jhvMYcP+zHm0biQYJmg/LwaKUCcvAnE9TXm3xvBtPiIG1/VoTeqdP2x8Ao/0oNK/xo+cB48DDj8Bs1v+YBjtPvg+EqUK7UB/fcOahVMrxVqrEYNmfwFoiEXECz6yMGGPjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vx5izDoF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EKCZ3d009094
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:20:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2GCgOGdrnZt0SFcUDKGI7c0L
	8gkL0wloGd+Wl/mh66E=; b=Vx5izDoF4V3qD8sPR1lVadXnS1mchmLGU8f32SnG
	F1tmTs/7Ka8nBbPLZ6//WKOeSXfGHkv8CofdC4zhwyRdLiBrXFX+TfkS0TPvbBtH
	TnV9U4/tkdV/cBeX3k/F2deSiK05S0YUgVb4zm/r4gcYutJEhYvYVkoTRA5zkdt3
	mLHcjJH9YwCUDE2N3GwJVzzQlGx4RGjFvzMeD+P4ARJbAllBChUCVadEj9bvGPVi
	Nz1OSRzvgkXCg4h2FxJhjPJHb1NYzG/+oY3x44v1ie6/kO0MOahIPRLvJ97yAYM1
	im8CkP39vj8hC+Rv/Kuy6wl0asyCyjgTNSdzN/saTvEFBg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcpv4k2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:20:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7caee990721so60657185a.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:20:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747257627; x=1747862427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GCgOGdrnZt0SFcUDKGI7c0L8gkL0wloGd+Wl/mh66E=;
        b=TYyU8NliAQ4AN1U+wZ4hPMtF3LL7LgGOMCzazRjT4lE+RreSE+JUBpK1VzWPCG6BKM
         xbQU7m39pMhRgZjPFkoWTANe49UmrvyeOV6MawuUGyupjfw7eS8ImSIFf+2Je6+uope/
         1YvgO2LfMSgQh2yGXAnOpN/RKWPHAwsmoIloZEWZBuGcEYIsMcukuqumtTwAEswDODUY
         YDfhTCUK65L0+Eyj/CnAj3BfymGT3IKP1xCgL11X0do+0VP9HseDgsyebyOFUrMU5Pnq
         GHxOemVVZUUbV1ey/6vNBf6bC0JfEvp5XM/1bBxMD7913El5OGPor2QPkIuLVvLvAsUn
         Kg5g==
X-Forwarded-Encrypted: i=1; AJvYcCXDRGR0mKNow04oNVilkWqtOKs8MqezKffQkXc5XfQF9gGsKXujqHh/jG65qqC0StzQvBDZiB9fs7TD@vger.kernel.org
X-Gm-Message-State: AOJu0YwMUciqL+LUakiqBxW+BAuXLE6AJheRHvG3MD3UPd4v8DYtEG6l
	pIPeHMIhmfe8D5r2DenQoV66kwr5xl0MAVp6Fc6Y3ySIwa3ikBwGaxhNKA8Am3cxDqDrFelNrP3
	JzEbNnLtF6YFZRg6tDftCqvvtn/SfhyCC5vu2JC/nwxm1hJY8bolFdIjZqSrP
X-Gm-Gg: ASbGncvYV8530vHo+C8zP8t0HsN4vaKdv1JSnr72a11w3FEs0Ov3S7pCszrBad+VNel
	KtSI+3myyyYJMPWSdIxIbp1bvS3OMAKgMKsOoN3bj+8YX9kEJdK5M9x0FjmaFnCldbm7AIVEZ64
	RotwYqVxJkiv5//pS5YxyZQPEMw+sATo2sxvv1dqWTu5MlbifqKvkm7H1oXGqW/HsyJHryBDb6A
	ydxUa7nAO+o84HjTml9q0y7PD+hDwiq3/rYnOyIomAk+zgPZYf81YkfMc+iTd1U/rTRhvfLsu40
	6QMRn+asRAqcjDzzU+ZFlMoC0GxgQsyrdGtwF9KkQwuMw3RCJ9f/mVsAIzZAEp/4PjWqJf5eZko
	=
X-Received: by 2002:a05:620a:17a1:b0:7c5:5d13:f186 with SMTP id af79cd13be357-7cd287f8e7cmr636195985a.10.1747257627374;
        Wed, 14 May 2025 14:20:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3q4xP/KFiqPpFuTzMa6gUHpPuBPwILvvqRM11pnp2aen1rdHKlrCCS3ZIbWjmOhuvvWpyUA==
X-Received: by 2002:a05:620a:17a1:b0:7c5:5d13:f186 with SMTP id af79cd13be357-7cd287f8e7cmr636192585a.10.1747257626942;
        Wed, 14 May 2025 14:20:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-326c321f2d7sm21110781fa.0.2025.05.14.14.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 14:20:26 -0700 (PDT)
Date: Thu, 15 May 2025 00:20:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 04/18] clk: qcom: clk-alpha-pll: Add support for
 common PLL configuration function
Message-ID: <s7ekugpsfdzxvz4wm7axshrvjudpsjgh7dlceyqtqtts5kmwba@q2rgggezzf4l>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-4-571c63297d01@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-4-571c63297d01@quicinc.com>
X-Proofpoint-GUID: w0lsnzrOz0PB3DkfyoMl2BFEAJUtALri
X-Proofpoint-ORIG-GUID: w0lsnzrOz0PB3DkfyoMl2BFEAJUtALri
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE5NyBTYWx0ZWRfX1uh88iNOKEJU
 6JqQCVPE87MTMqsqjHTgVbHYO+7lyicg/5B4ugqbGrPByL6/J7Yg52AtIQtam7gd0Wv66YqbBk2
 SSvnrhHMeU057Vmve2KLpD6Q/ouwoXSRON+z0PyjrJPI4btm3mEFBl5AAaLkZUur3uJwzCReByl
 tgV2mnKDJhJKOPrQ8nJYKlYWKFvJKUuAQn47vWNtPp/Uba5qOmNAN4npd70nr3oxh+DsTsmD6vO
 yGy5Vrmp69ZCQOGNdrf92r8Wi+5vkhnRM9jKiraOqOfB6ezXoDPJ8SWGZEJwN7Mnc9AjpFl7Ng/
 us65WWp0BsXPwpIXdf4g+gFEqtkyxNIhYWeZQVsecdq0T29QELSrlLTDQJ8rQWUad2Gu2w5lw/N
 YR6acT4qWK6azH4lIMXERoaBRIuKOWdCZqujtoXOn+0Mj1qj+kybwNO9cwmih0OsbcBYarqT
X-Authority-Analysis: v=2.4 cv=KcvSsRYD c=1 sm=1 tr=0 ts=6825091c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=mbcL5m-RS8wsDEqdrk8A:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 impostorscore=0
 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140197

On Thu, May 15, 2025 at 12:38:49AM +0530, Jagadeesh Kona wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> To properly configure the PLLs on recent chipsets, it often requires more
> than one power domain to be kept ON. The support to enable multiple power
> domains is being added in qcom_cc_really_probe() and PLLs should be
> configured post all the required power domains are enabled.
> 
> Hence integrate PLL configuration into clk_alpha_pll structure and add
> support for qcom_clk_alpha_pll_configure() function which can be called
> from qcom_cc_really_probe() to configure the clock controller PLLs after
> all required power domains are enabled.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 57 ++++++++++++++++++++++++++++++++++++++++
>  drivers/clk/qcom/clk-alpha-pll.h |  3 +++
>  2 files changed, 60 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

