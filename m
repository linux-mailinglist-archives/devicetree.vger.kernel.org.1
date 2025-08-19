Return-Path: <devicetree+bounces-206198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B54C4B2BB43
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:59:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92B9C168DAC
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CD53112AB;
	Tue, 19 Aug 2025 07:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AxHxocTu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6253112AF
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 07:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755590378; cv=none; b=HQicQ1BZxgwqzg/QvUpaAZzM+uSs8efYw9KWSR17V+YOfT6odhhhoR1Sgq6Q5frq0tRxjAeSyK8GF8T7Ofvkft2gQWEsTHyedsnGU7U1wi0yEstet44s493KHA7ze0etVHVp7GV2gG01FyjkXcEftf5eHvkrcTwjBqhPm7lUJS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755590378; c=relaxed/simple;
	bh=TmIqGmZD3H9vgCSTYIgWGkAwUVmyYjcneDo8YIQjEzA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iVxnGgckx3cgbonPekFPbf1bQWmJplEw1D/CiMGaoURyNArvDazkkfAt6/S2x3RuqSgOo4K4nYuateOhdV1sDRQl8TVxU+tza0HFN/djACTuwyxEt96lL32yG6GpCghSOVv4D70Gj+w/P50kQb9VKyS7XZJIhwj0lqC4Bjps++o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AxHxocTu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57ILiIVe026360
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 07:59:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3vU6X6UmptKEeubZXKONa3UV
	WPBKyO0rvUIh820/nkI=; b=AxHxocTuLdMKi6qPApw02H8p2uKc9/gCfFXp6JIk
	Wxrg9EWZNdMQHKdQ/GGv2JYKe7qTS8dWUR+Rtq93OIlUSzsxpfRzW3p3XtVepfcX
	JpVfAr7f4hw1dJaVE0fuIuL6Na32UrtXQ1xJPFyzQomZHGJ2ialZ88e659HAadkN
	LPlO8t4dh/z0HIlDM/3GgStv0OZoihhuG0ZlG/jvLX0V4dDByjjU2F15jWqb5D7h
	P/JPGcAxltYQo8Y1D+X47NJx3vaEa7Ij643UlrkqccUo0l/EoJ/d1n//w26XENCm
	PF0mlMyRL+L94jXit2BEne4DdAtI+3tEKqM9ks2bk3fpAg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48kyunuxe5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 07:59:35 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9f55eb56so116951596d6.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 00:59:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755590375; x=1756195175;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3vU6X6UmptKEeubZXKONa3UVWPBKyO0rvUIh820/nkI=;
        b=gynjUAhe2WX8pVQIVlUcP24Ja7pMt/Hw/KouqlRQwDT2cB1sk0MO1duL+uzrji3/X2
         gEtbgkVatfsf3RN8gKoBAhO9MdqKMI0oL447xKL1zIiAFY1/dkNd4DD7q7fx52V23E8f
         BU7Dvd0YrH+sZrhkRerb0SmJmNW/6N9iObvSs4fAR1AxoGQuNXvHpR7IxOklQ2c/ExWO
         XTW4W+6FxrfuLTzkMwqvLSc/4jAsfC8CkGawIKcbgfOViQHjQczJc8KfgxXvc50DCHP3
         qrYn2KRuZ6GafNfDbFQ58iaS+qunzCw1vD6oYcWlynH0juttpM4EQD8z7aRFEWifT72M
         G7Iw==
X-Forwarded-Encrypted: i=1; AJvYcCUkmeHt0SS5gI/t+MCwp1Sn+OUCTsrFUiHGUhZb8KzXc5unhYhBBEV7okK08gbaRmM5wN02NZL3yDcI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/L/M18DWchwhadfTC6mI6K12bpPVGQIPC4Ljihkp8QJZjbZgr
	xGgtznSbVW1pA4MIihlGHFHVf9NImFPU5F7HM7HfKWd6cCsVs5eVttUWMf5pPVCFSFDwfIpgU1m
	4VVU6y1lg0NgaP85rzuwpF8F0XmrMVxMJMZxcy5SmDKWDeMOS1oBFwC8D+banBC4a
X-Gm-Gg: ASbGncuTPOCC8sRO2hOog8sNkxbIzPlvxMR4AfV86jfq7vvBCZaj+0a7eIFT0vlzGZq
	vzLsEZQCW+X8HHa/dHhwbLYcykd10vqezFG5Ez3rfHDgzUg+MQnQMRTerZqQgdXL5JgZKJ5FqqU
	GhDxU5MIqu7jPHpSq8dt2s9I0B01wC/4KOgyMJjVew9s8BhGw0v+Ol3BDt03W2py8YonkmtqlIF
	EHDKbFRpYi2RGncnQN4o7n7IvhBviWjiYx9CUgfhZbDV4rSc/tX6jUS4YUGs1I4edQsMGzYuXTR
	t8yI7U5JFv5Z+gh3fkMmzO0P2oCjGHEKx3c2NZqwhH0rN+Gf0Xi/zF58NEvi1B5grqgl0Z+/LdC
	hdvy9HtlWh1Ontm7ogoMZgIRUwCQIBuzf9RcISlWK4htzNe3ZbivH
X-Received: by 2002:a05:6214:2249:b0:709:8742:e46e with SMTP id 6a1803df08f44-70c35c1f06amr21420536d6.45.1755590374880;
        Tue, 19 Aug 2025 00:59:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiMVGZQHvFNLcaq5/1TlbULCLv9YgylRXF8bOeajYtu4DRaeBUMTeUknrqEQR/YcjE19k0Pg==
X-Received: by 2002:a05:6214:2249:b0:709:8742:e46e with SMTP id 6a1803df08f44-70c35c1f06amr21420206d6.45.1755590374394;
        Tue, 19 Aug 2025 00:59:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f3932sm1968059e87.109.2025.08.19.00.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 00:59:33 -0700 (PDT)
Date: Tue, 19 Aug 2025 10:59:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
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
Subject: Re: [PATCH v7 6/6] drm/msm/dp: Add DisplayPort controller for QCS8300
Message-ID: <brculyyu3dgc5nkj2cuzv3jkjzcouljy5o4jwr6mw33r6i7gt7@j6ur7yvwmky5>
References: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
 <20250819-qcs8300_mdss-v7-6-49775ef134f4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819-qcs8300_mdss-v7-6-49775ef134f4@oss.qualcomm.com>
X-Proofpoint-GUID: 1cjWYJAGFXbjhPhzD4An44lEs5HbJUok
X-Authority-Analysis: v=2.4 cv=N6UpF39B c=1 sm=1 tr=0 ts=68a42ee7 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Yr_zk0diUUozgDP3y_gA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDA3MSBTYWx0ZWRfXy/1/LwSopf2k
 GljyAp4BrAKDzLptU8onmWTdEffNiGkiORbRHo8TR+Dnf3xijidhpU3Yc1sOkZoITb4tggf5TV2
 UvdWRUHuhCr4jUo/lJEumxBnzkMrAW6u+BAkTt86mg428/j5YOa9wIIu7nsva/uzsCV8oI5S1v5
 rEbibCCHXc0yhO3kJfks26Z7TT3tScRPorc5neQv1IizG0TMHcyXNMvDe2wYG66fC8TxhIWOBUa
 9QC01ua6bGawObLUrDIm9K7igFVqIztEEkg5+iD5bFHadaC0+9fyj3IcJ8NGtpVVmNdTmCIpC+O
 Fnw3v+u75EGVty6vP7FdAbwXBYDYMp2OxlXWDF71saDIQaLarCinCGxop6gJD0MQpXgbUqCOTXf
 Ka4j6IQY
X-Proofpoint-ORIG-GUID: 1cjWYJAGFXbjhPhzD4An44lEs5HbJUok
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180071

On Tue, Aug 19, 2025 at 11:33:33AM +0800, Yongxing Mou wrote:
> The Qualcomm QCS8300 platform comes with one DisplayPort controller
> with same base offset as SM8650. But it requires new compatible string
> because QCS8300 controller supports 4 MST streams. 4 MST streams will
> be enabled as part of MST feature support. Currently, using SM8650 as
> fallback to enable SST on QCS8300.

Hmm, no, you are not using SM8650 as a fallback. You are using the data
structure for SM8650 for QCS8300. That's a different thing. It would
have been using SM8650 as fallback, if you had declared device with two
compatibles, qcom,qcs8300-dp and qcom,sm8650-dp, and then relied on the
second entry (only) to provide a match and data.

Exactly the same comment applies to the UBWC patch.

> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index d87d47cc7ec3eb757ac192c411000bc50b824c59..bb4660585849d1a67921a28e7e12422e0c327ab2 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -187,6 +187,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
>  };
>  
>  static const struct of_device_id msm_dp_dt_match[] = {
> +	{ .compatible = "qcom,qcs8300-dp", .data = &msm_dp_desc_sm8650 },
>  	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
>  	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
>  	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

