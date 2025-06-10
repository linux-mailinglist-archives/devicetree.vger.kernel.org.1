Return-Path: <devicetree+bounces-184538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85855AD45DA
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 00:23:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EA76177E9B
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 22:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70EC428B7EE;
	Tue, 10 Jun 2025 22:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TspI/1g2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE2828B4EE
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749594208; cv=none; b=bSilCCUSt++E6vvY53kGRgi29dnDpWpE33vXK+0lohDvrE3P4sZhjoieIiskyU/Pez0zUVF2NMl7L+eA+ajWD/2MNl18TsuPpjlJmTn+CHyngsmmW/CuY6cpIsBBrwfJMa8Phf8RCi0sq+v7Dmtv1xN2rinkzWIaTnFCai01e4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749594208; c=relaxed/simple;
	bh=npHB7Cz4fEyvzZ7FmcG0r7LLLmBlvaufPDf/mhV2evM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ooyQZWslgBv2nF7r+TrCxitTWGKR4HVhb1xor4vpd03lYeaP14fZwCtZYj1UbBaN5YjgrEnkT0crPIJ8BrC9yZVZ/Knmt/+ynfmG2xyP+ObcMdxp9lJtMd3KNuRz/pjW1qIMykR9lIJaz4FZhyHed9DRTRgKRke5PefgYCJ3890=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TspI/1g2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AIQEHn021896
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:23:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2hza23gY3coL4GLirsikjG3A
	jHM2RQT+qzkG3p4icuA=; b=TspI/1g2OXSBthgYyOLRrh6omOIB1ysX+Ho0IDwa
	UFE4/OLz1OkqKVRSYwuo3h70Z5kmmTaLsGtnMMY6Tmg4ObuVwIBR6+J/8Z5azzzE
	9apr4NQuprzo2pR+1uHLxl4Je9JktEK3mCY+boeehrY4XAO02drVYETlCRrEsbgj
	0joXd+igquKPoSJJH7UvrCCLtCZgIInP+dA2fvV9sn0syUuF5r3IoGs9+EiYOQeL
	1PSlcjMxkfPsEVBeTiRjVzuR6Te5OHWx4y2KdWPr6yqL7diZdGWzGbszpYlFo7kz
	mTnKpsnkjoxPI15BAEU5kQ7idKQnXKYLOKraxByxVqGwXw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ce9u0d9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:23:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5f876bfe0so1063553485a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:23:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749594204; x=1750199004;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2hza23gY3coL4GLirsikjG3AjHM2RQT+qzkG3p4icuA=;
        b=MA93SwedxH3k17bmGarAi4GwVP/eqOmJZ6oaB1LpjOnHGWGdDlbaC42lcN82qApvmd
         DVJsKtypQBVGWq9Scdfav80n7hOFXY3GusnV2KSwonpV2Um++bXyQfnLr68sOzfkLTlp
         36IKoE9G1gqDMgtaiaIsasu1Tq1DLo/691kuTYodl8+4vu5zxzASm3CZe1jwegoCfbgk
         N7mNUP5HKgxVoa5C+KtDVg2cfSSuBcrHYcMkpUoBT1tI3lPc1E6Eaz45Ltq05Am3Ppz4
         dQ6urNQSMl96n6BZbja3+B1veGSByn0EYiLBzi9l4586tGlEZT8jfchCOPAvhYwa6hnN
         98lw==
X-Forwarded-Encrypted: i=1; AJvYcCUR56o71bN+z+A00Q0TP9qyiPe8XnE6zk5V2sv/5Zr6or7ACq3peYKk40Rj/dmrHcUp7xjw8q1l4V85@vger.kernel.org
X-Gm-Message-State: AOJu0YyhNVhpsVQP70ndmyNMEDsVT2DROh9xiIHCpyjibxjpbr9PZDBi
	kx59d+yXpwBknNRblnzNbgYKQMJAzDcZcpoP9lI9dqOlmI8GaGeg4fq3Wu6+SgCu1feivCNRxXG
	TmVtwtlybCciCHh0KvS9w1ueIqVtn9Qo7oNspXGvXOpyV9R4DS198+ZvzuVMnkuEI
X-Gm-Gg: ASbGncua4vA4QWHiNHo3oD9yHAb+aTHJddGfANsaE3Ux1/ugni8G1uxFBTw4oJhAMQy
	HGnchLUEb8eC7U7sYhWc+DZKT0YQvg+W6tadcmtRNqgzN+9RyypWTDSOcvxxH0SVKsrgKpzCB7W
	PRGbQt0TjPYG9OmG6l7UHbpdQhGozkTHOBTa/IV4kNRN3lQjTYqb93ZuCR//8AduaFN+QOMrPFA
	C0N88XhNwA2LK7RLlsNqDeJf547AhtUOmskbN8WiJ/zQxw5h2JG0cHVT8Hk9968Iruurm8HuiAc
	B7nEPA5DjoDhnw36Gi0yAUziV2pJP9I3JohGr2w058B5oXplSvyvhmRUtGcVoTJZPmZYI6lQQPI
	0Tq7kVhlDdV6P+x7Af0c3l2f+UkRQD6EIRrk=
X-Received: by 2002:a05:620a:198e:b0:7c5:ee84:a575 with SMTP id af79cd13be357-7d3a89bb112mr168583385a.46.1749594204440;
        Tue, 10 Jun 2025 15:23:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCcqxVLVUJFrq+O0cQ9j5/TPx+SAaSrKInIQWb4KK+4mCxXHk5ZJ92VOUVg+qUAfhrlPtaxA==
X-Received: by 2002:a05:620a:198e:b0:7c5:ee84:a575 with SMTP id af79cd13be357-7d3a89bb112mr168578585a.46.1749594204049;
        Tue, 10 Jun 2025 15:23:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55379b2c854sm1321061e87.142.2025.06.10.15.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 15:23:21 -0700 (PDT)
Date: Wed, 11 Jun 2025 01:23:19 +0300
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
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v6 07/17] drm/msm/dsi/phy: Define PHY_CMN_CTRL_0 bitfields
Message-ID: <w4napqk3loelkhl36gvhke6z6xg4g4xxymxsfjn3hmntkj2urv@bshk4l63nfrn>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
 <20250610-b4-sm8750-display-v6-7-ee633e3ddbff@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610-b4-sm8750-display-v6-7-ee633e3ddbff@linaro.org>
X-Proofpoint-GUID: uyCbuL80pVBslMADJzkXAAZZxAlZaUkQ
X-Authority-Analysis: v=2.4 cv=drjbC0g4 c=1 sm=1 tr=0 ts=6848b05d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=3n_StpEWJ1elpYQgr94A:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: uyCbuL80pVBslMADJzkXAAZZxAlZaUkQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDE4NCBTYWx0ZWRfX1YaTV+wx0702
 tAJ9AXqsFS/bS3f+bCm26xD9pxmeje2Fllq/8a8GUkqey5LTlc1CO6a2+rK3RG6AE0dLHXOc+aQ
 umWMy+aKGiI+C/pqqWVCmjH+3aLwMqCVkQes9MH4DT7vRLcYcHapDT5AUu4eIPshQauY6UokYUu
 q1nme6GgvihTtXtGeKC9Jc+Jg6gGhBgBq1mN6i8XCzC4JfvIMSdxt4x7Wx149KhUZW7wN1D/bV4
 dJN8R8mtkIpWik5iIIKbN6To42PRAbfZRyRTdx2jg0r9l+eaWVk20jia2LloWoGXwY9AP4k9ZX5
 pnvMgd+0aKa0JeGytZZHbW4JqPd9RS1dsVfC6oGM3cVXQOEhch4mGI/KnnlgZGpdN9WOfVeufDO
 I43L7xWAdX/MV1xRhZd+6b5yA++LimRHSAF+qy076xHI630aakYRS43uRpDETKoKz31cYf0I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_10,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 mlxlogscore=387 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100184

On Tue, Jun 10, 2025 at 04:05:45PM +0200, Krzysztof Kozlowski wrote:
> Add bitfields for PHY_CMN_CTRL_0 registers to avoid hard-coding bit
> masks and shifts and make the code a bit more readable.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v6:
> 1. Add new line between declarations and actual code (Dmitry)
> 
> Changes in v5:
> 1. New patch
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c             | 16 +++++++++++-----
>  drivers/gpu/drm/msm/registers/display/dsi_phy_7nm.xml | 11 ++++++++++-
>  2 files changed, 21 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

