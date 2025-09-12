Return-Path: <devicetree+bounces-216421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2AFB54B56
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F04591BC3649
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E97E92FD7D9;
	Fri, 12 Sep 2025 11:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FLd+2XvC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C282D238A
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757677573; cv=none; b=oFNNW0pLugAoFs/RTe3Pt7qEfTU+a5KUKLJS+OpeAIpD99YIjkm75qE2HqlTVD/wrf4BqTN7q7erPXWnzRelf72cuPqtF1eUzvHBWg4IsvCCEj8O/Jn1UP9U5DUmy9E3QDS7AzSaDnzNXXSCFYKJeDy0Hc3RLqK+mJpeB0mnLNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757677573; c=relaxed/simple;
	bh=9f7Rt8ZJ2W2atidLryZjEWAbi3srUdougeJJ164aCR0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mna+EUwwf9/ySks33lVmxyQfWOHXTf68i3gsfQcmh3hAbD1igwKNNhw9pDlevStOWct0IEUUl6w/Qf3LqZYiWDePxstN7PplBvhdjzzWT7M4xeXAbSj9WZO+F/hX2uxAjUqfRZ++PsePulnEVhUZuM+udqZ1tifKy2sE1x5y0Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FLd+2XvC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fImG019781
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:46:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9R/kPch3W5Cml6FifUegM7lF
	XoROZHqulO4RRRDKQxA=; b=FLd+2XvCvSN+zewfv4IgufacPZN8XrDTtIGPVMb6
	L+NKOG2DDaKsU3DaTzamqqlGdcZnuEAUkMVzfkttkTIo0o5gEsCm1fv6hiP3xvWh
	W2ViqQ1sNFI6A+wtPdDEaj1oC6rVZrmfDJYWLr02dhmqiNuIO6inWeIi9pH74azs
	eFDUpEEAuTJWBfY6R4iO6IKbwPUpILpPOoN5s+/7kh4LvPfiCF15IZFTrPdGmYjZ
	XSWzcLL5Qp+XNlwjOmQhtJfPVaQrQlPbNN7RJ104Z8gAQjTnOq1MYmqK/TwFpp/Z
	lJjDAN1B20YuM6UkW+B2CcHfaJyKKS3C2UEOtQfZt4iQTQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t387x96-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:46:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b60d5eca3aso46937331cf.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:46:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757677570; x=1758282370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9R/kPch3W5Cml6FifUegM7lFXoROZHqulO4RRRDKQxA=;
        b=b5/PwqdTU/lYUEIpEJQF1IwDzTBvbonQ6sPdMJt0IcvBtINiEXCe8lwPM0RDO4SN0W
         dHAX9rwjz2h1+940S44Tgmr6yrD8PT2qod2kBsUx8TJH5EQUonHre8bA6O3q9kRQzh9b
         5trZFxkLYiS7Ucu/LC/Y+YC7ZB9HD3ihByEk8svdyqdqGnQrUjfdXd4TH/xwZHSSNy+X
         4uFH0b/gB9JTAiPtZIZju/teAzDeqTcLQn3L95sVaq5cX9tLl79pxv58E1v61Y1IlgHH
         /3N6dl8XmRJWXK1nU1IeKD5qgcSRJUjOknAOF3bBLOjIkS0tUX/ezTUmh7/1oMJ6Psj2
         3vPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUUPguo/GbDfV36mqnNlwMu4aMEqaGjhnOO73OY0m+5U2NzyHdHZNKVsH1uS9gVAbJsN4/ouV/jz7F@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6kC9nq8qU5P4/pWRwkmr4dBAKmKcTqbqaK/qV71CKohqbi96K
	jV25KkXQxuSoCguZnQLxMELJ7ifyX3honRK5FdkFDJNmNtnf3NM7VbvE+sHF8iekpGCRYBHcidR
	S/1FmI9/JRrK3dCJxWnTR397dri3BUoIeUVrCD6xfUomGaAzqT5Y3xAxJvuxhD63s
X-Gm-Gg: ASbGncsO5RkF7yzG58MzisjU9hUcgAObceU3VRN8cPIHD0sJ9gG89jWzXoIfeebEv/0
	XsErWIlWI44cPpVGAj1G+tynlQ2glgB37T35fkvvvawlua+iqFhe6p0zC4ADuI34Knfnptppn67
	RyiJJVxDPEF/dpPQ2hcYNikn++QYwYXzK1jymCfWEdajiYSS3azvR0QJgDzC9TQjzcmznbUdon4
	iuNarvwa6/i3F3MmnKCECWP7lZbKP7NtoQoqPmRPAut+yd2jMseELL61648oHRtsntXqfvYN4CR
	LiKrRK6MEuyaBXOU27XK+pZqyWiRlDEvsLblwBaRABMq2ARpgpC0C1b2vQhWFsRddw9YBDxCzfY
	5HzNdclvlDU5JwWWg4b8WhTQae+O3pmRxT7tXDXPmB4zO5MaIbYwb
X-Received: by 2002:a05:622a:3cd:b0:4b5:e606:dc14 with SMTP id d75a77b69052e-4b77d17bbe0mr26549711cf.72.1757677569048;
        Fri, 12 Sep 2025 04:46:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdVs3SKgOxiIfzvO/EkGuSuQowx0IqMmkOv8Q4BBfV0cg+8bLLR4jRDO1o8cJV0pjYZeiqPg==
X-Received: by 2002:a05:622a:3cd:b0:4b5:e606:dc14 with SMTP id d75a77b69052e-4b77d17bbe0mr26549321cf.72.1757677568463;
        Fri, 12 Sep 2025 04:46:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63d43sm1104326e87.91.2025.09.12.04.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 04:46:07 -0700 (PDT)
Date: Fri, 12 Sep 2025 14:46:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH 1/2] dt-bindings: display/msm: dp-controller: Add SM6150
Message-ID: <sx64y6vfov4yag46erckpbl7avwmqlsqt3siebckn76m6jqxjh@f5lueyih6n3q>
References: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
 <20250912-add-dp-controller-support-for-sm6150-v1-1-02b34b7b719d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250912-add-dp-controller-support-for-sm6150-v1-1-02b34b7b719d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: eDRhyKxKlpy7n2jl11D413tJYHPAmPe6
X-Proofpoint-GUID: eDRhyKxKlpy7n2jl11D413tJYHPAmPe6
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c40803 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=EjQU334iH38qswJM8_UA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfXzgmC2HAvSsYX
 uI6v0wEoH5tA0vESlI9xLqci9r3jD6UatydiXvvdK8ZkHsu6PgFBLILgrskqLK/1j+hb7kALwU+
 /v+BubLe9KsbMGDcuSWXIk+OAOjql4bQIDBbUaCXxBbwV2YTn3BBxhPhOVJDw689LZPOmJzw6tm
 G8ssJ6vwiOMUr/Y4GWG38sTnPNCu8ofZUUbG/90Y7WD3M9umXZdH45ZOsUoPljJsl6l6pYEn/5f
 Ji6OVVEPCCh7XvNp3h1cryKs13YNhCAy6GpG/ynSqWfZLYpNUh/z9ZNYdCE0cwkna0o6ygBT+RO
 /qMlTUyeQ99G+uTEl9ZtVyEIsXtP2rbEDNnexR0QywSjGWgr21CB261DAKKg39RI4phLNLAhx74
 WAnOr6B+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

On Fri, Sep 12, 2025 at 07:39:16PM +0800, Xiangxu Yin wrote:
> Add DisplayPort controller for Qualcomm SM6150 SoC.
> SM6150 shares the same configuration as SM8350, its hardware capabilities
> differ about HBR3. Explicitly listing it ensures clarity and avoids
> potential issues if SM8350 support evolves in the future.

The controller is exactly the same as the one present on SM8150. HBR3 is
a property of the PHY.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index aeb4e4f36044a0ff1e78ad47b867e232b21df509..2bebc182ffe348fd37c215a6bf0becea11e5ac15 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -46,6 +46,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,sar2130p-dp
> +              - qcom,sm6150-dp
>                - qcom,sm7150-dp
>                - qcom,sm8150-dp
>                - qcom,sm8250-dp
> @@ -261,6 +262,7 @@ allOf:
>              enum:
>                - qcom,sc8180x-dp
>                - qcom,sdm845-dp
> +              - qcom,sm6150-dp
>                - qcom,sm8350-dp
>                - qcom,sm8650-dp
>      then:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

