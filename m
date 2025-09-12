Return-Path: <devicetree+bounces-216457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 189A3B54D63
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCAF15A5FC8
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C417530C35A;
	Fri, 12 Sep 2025 12:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mDZ+sMVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A778320A22
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757679014; cv=none; b=mX/3IcHB38XdbQWQJhh71AWh/kaROh9I7I0uLKSDeeykufAmmPteW8x4YoeAa1Yr2AOCT4z2qhkSZVjDggleIlfWGaSRcFOlNIDHRmx/KSDPdg5XM0kkh8xsd2Q3IB0bAdcMAUnO4Q7BULpYHAblzxcQ7rEnls117WSLpr+G0XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757679014; c=relaxed/simple;
	bh=JVRX127ZdnnrJQmZw4fn7pA8JbWfejoo/XtTkFCpBdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fYeLt6pqnJzuq0ypkCfkcQ/Xn/k84dZVkd66xUselhyrEWDMETSv6Vpw4vOXEPLJ8JCwo0Jy3S7YTQQfE2xH+yGBOi9Hd7X1lL0//M300N+2prHKUCuRs1ovmzzVl2rlYAYdc4sCA929p0l8bguKpkvKBl160vzDuvIE8UI5p+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mDZ+sMVz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fGtw017695
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:10:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dUewbymExetqos/pBiWHZiBD
	APIskSwpfO+nHDhO8vI=; b=mDZ+sMVzzT0+YVrLCIiX+PhRLvmJOSfFfErrhw04
	m6AdFsZDmcPt0Obm6ckzfWx4Q1aZ5+S4nMGWp+miK4xCgs5METyJJPCetrGb1hy4
	+UiBpuZQR8xqIlvMCmrq6SANVmDRdwdAnkOEtTJSEuFEb1BfJM/LJq0hyjPNc4H5
	tNPyF+h1AVv7BmcAQYO97RKAKwZbiuj/Y7CfN2Co/OJz6LGNPURlDJXr78NYKlb4
	Hul7VxkCW05y/MIGDcpS60WXLZmFOUPfsNqoq4jPLFeOmYLJxbBwJZfXxMZUG8iM
	Vrrq/6Nj1dg4sWApmDsmlbdnIwHXY61EDnwe65LTxzYACQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8una2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:10:10 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-768181ba081so14387756d6.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:10:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757679010; x=1758283810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dUewbymExetqos/pBiWHZiBDAPIskSwpfO+nHDhO8vI=;
        b=E0Mf2hGKctbu5SLmaqs9Lt0LUg8Sq4fjRDzWcDaOGmd6zRW8zglIIrv1HCgOk6mW5+
         pLJwackm9St5UDq1SZSlZ6TNvD8WN48aV6vLdFND6z8Lp+lDLB9BfK0T9rvikimmZYEP
         ISFaKuJgWSQZ6dw41aDNyDdw+9kdYSKe4ERU0IK+K9sU3HvY6UQL4hpiYKMwLMkNlAVE
         m/MVrgvUNi2SIWfD/O4rA/AV9/wPcBC3OcXXCz+BFjZEP0fIXuCbNMSLqp6kaGY0Czqf
         LmiP+D1ANVvfc4yGOQ3aKeF+xRjWDuoMfoMry8jf/12EjcD+7GfIYhIhc6KH+9VEkqlw
         w3DQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhYVcFiKc5CqyEXBYgINnYP9yD8u7bUJtEDf/2CQopBBzPH8ImZvYCDNA+/ugnnzCV+ROcSLgSNcSz@vger.kernel.org
X-Gm-Message-State: AOJu0YzvcYXE1d/hGh+03EztypfVZ7gBBcpyk6OagCwCvaNpbUceoZ8Z
	hMdHcHapVRgPyV8MTgP2b2zaxicTHKmbWi/m5MsIKtAef5Enk8jiHwQJBeRcG2QnWOkk+flczdq
	KjS+8yHd/apuAfDTnlKuw8dhbr5Q/qsOuTspakLJYGyP4cdAUxwO1LF3J+sIyZ2EB
X-Gm-Gg: ASbGncsw6f4gjtx+eIh/NztWrwMcc0R/6Ej07SmxL2JAwqwNDGnf0eceTbr5ndcbtCu
	2Le4yiLxsV0ed8VXZtdUZhOMoypiYDssmkEtSyB8PHub/ldoJukwpfl0K3VUUgJrOamUDXLkSJT
	vXE/1ZsYVFhwibv8L0DzpNV1UoNUF8fGj/ElhDc5/y/bh2TE84ijJUKrmwHyrBmBwbfxLpR4R2b
	Ye8STSlLUhVXU2O2zxgB3CYL68ZkOm1dsCa+7exmr1skqN+XGpc3nNbtJH6TLoBMh9S5XetfJ6a
	t/b1md6cYj0t3+MxVk+2JHPQQtjEf2S7omxo+XvoCbyvPJPqJjy1/6P3jvQS5lsLd+ci7lriEJK
	SMTYciEXH2gKaJfPoILp9rvZsREoTUzjzQlBLYRRD1KSstfJ4zqNL
X-Received: by 2002:ad4:4ea3:0:b0:70d:f55f:ef97 with SMTP id 6a1803df08f44-7621c32efaemr78241886d6.1.1757679007381;
        Fri, 12 Sep 2025 05:10:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGj9V1c+2coOy5S3o8/s5vrGQ5oy6OiMW/P7QJhRZCoPuqb8GRBAOCSvwHquRJ3YcZvRDvPSw==
X-Received: by 2002:ad4:4ea3:0:b0:70d:f55f:ef97 with SMTP id 6a1803df08f44-7621c32efaemr78241266d6.1.1757679006733;
        Fri, 12 Sep 2025 05:10:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5cf2f446sm1136422e87.42.2025.09.12.05.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:10:05 -0700 (PDT)
Date: Fri, 12 Sep 2025 15:10:03 +0300
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
Subject: Re: [PATCH 2/2] drm/msm/dp: Add DisplayPort support for SM6150
Message-ID: <ds5fisf464z3i4b6hz2ca2ul4u65d4rmjzvst5plfvdwywo2qm@gzgffhfpp4ib>
References: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
 <20250912-add-dp-controller-support-for-sm6150-v1-2-02b34b7b719d@oss.qualcomm.com>
 <budeqnh65mcmtc5rscbgvy2nz3woptxnht6sddzg7jhttsnx5f@bwf3kyvbrfaj>
 <d9c55e72-0683-4eb3-a22f-015a799e2c79@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d9c55e72-0683-4eb3-a22f-015a799e2c79@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX26Xay/1dtCJ8
 Id/vZL1TjSeVcoiF0IwBkREzxGtja6HNogZuhGPXlhOO9kf/g57dvrv320iNg/BH5qwkWDvKU+O
 WWizNNzDwyGg+sm+moAflGAYqy4bDVH4YLGuSXJ2IzmnFVh7Vwm8OCyK2R8oB0DoVBeWkMxPPb5
 OsWqKOSDpjQYANmrg/B3lMGbFAFYgI0NOE1iHYK9OMFX36Eio1n3hR7BmPmsV05QFVcQVzrD99G
 /NBbjxMl97GxkYbUDkO3J130IM9xv5IABKok958nEitCHjEYq5wJnv4xmoHUtWeE1GpHEMO3ZAU
 losgsqX8hELGCblP8Lglw1ZpBn6z2XM4vxd3VDyRLu7+Omt3knc0ACr3e1GdgwZHehR4n9TTDJ4
 6RmiG1oo
X-Proofpoint-ORIG-GUID: YkYfRnUOdPynVlU4P2okuCIG0xsjbzuI
X-Proofpoint-GUID: YkYfRnUOdPynVlU4P2okuCIG0xsjbzuI
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c40da3 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=YvU48llmxf4k0NmX4icA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On Fri, Sep 12, 2025 at 07:53:50PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 7:47 PM, Dmitry Baryshkov wrote:
> > On Fri, Sep 12, 2025 at 07:39:17PM +0800, Xiangxu Yin wrote:
> >> Add support for SM6150 DisplayPort controller, which shares base offset
> >> and configuration with SC7180. While SM6150 lacks some SC7180 features
> >> (e.g. HBR3, MST), current msm_dp_desc_sc7180 data is sufficient. Listing it
> > SM6150 supports MST as far as I can see.
> 
> 
> Yes, but since msm_dp_desc hasn't been mainlined with MST enabled yet,
> I went ahead and submitted it with this commit message.


The commit message is misleading: it makes one think that SC7180
supports MST, while SM6150 doesn't.

> 
> 
> >> explicitly ensures future compatibility.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/gpu/drm/msm/dp/dp_display.c | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> >> index d87d47cc7ec3eb757ac192c411000bc50b824c59..ddb22b50490035779904d4cab20e2fee7e0f9657 100644
> >> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> >> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> >> @@ -196,6 +196,7 @@ static const struct of_device_id msm_dp_dt_match[] = {
> >>  	{ .compatible = "qcom,sc8280xp-dp", .data = &msm_dp_desc_sc8280xp },
> >>  	{ .compatible = "qcom,sc8280xp-edp", .data = &msm_dp_desc_sc8280xp },
> >>  	{ .compatible = "qcom,sdm845-dp", .data = &msm_dp_desc_sdm845 },
> >> +	{ .compatible = "qcom,sm6150-dp", .data = &msm_dp_desc_sc7180 },
> >>  	{ .compatible = "qcom,sm8350-dp", .data = &msm_dp_desc_sc7180 },
> >>  	{ .compatible = "qcom,sm8650-dp", .data = &msm_dp_desc_sm8650 },
> >>  	{ .compatible = "qcom,x1e80100-dp", .data = &msm_dp_desc_x1e80100 },
> >>
> >> -- 
> >> 2.34.1
> >>

-- 
With best wishes
Dmitry

