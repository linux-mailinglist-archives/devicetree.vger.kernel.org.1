Return-Path: <devicetree+bounces-221627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C63A3BA1723
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:00:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6A181C27980
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E465A248F48;
	Thu, 25 Sep 2025 21:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M0VOHOhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69772265CBD
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758834021; cv=none; b=mqctTlpA3EaavUyRC5Zyd9MqkGqnNhLtsLLbbZzPyh23ZEW1tyHMr/q0CJYmKciw8OaHA/gNWdI9nnMjSB4A/A+YgUg7aGIr1+1la8OZLG3Vu79tDcnGtN//jP01ZNy7Ybj07adX7XR+/DCtsDIGVGwp146EQcVvx/I8FKkbkdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758834021; c=relaxed/simple;
	bh=T4iNv5cr2miRA9ws/Q/OPuwuH/G+wg5LNI8CS99kHMY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lOpGjlkIQpeCBazSQfOxIOKfg0932COnJO5CcT8fQMQA27Mq45CAGvh8RfWW2mcWHn9Zz2kwOKVNh7VXYKRWtfct6Ao0dbT1j0gF2dFNXeGLzmeRfMsYXmK4BItbgcNhJXTcKXnPrDnlGopoRgJ+gSqAenakhylB91hJoLjddJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M0VOHOhW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQGmC025832
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:00:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=J0Sf/sBWadKXsMJGTZZ12sEI
	LrsGXuVR6yrh2onEh/I=; b=M0VOHOhWE/Cx9fVGigWqZ3bYbPn0y1apqtVbeGMd
	lnrnbt8IQaVzwyMIw+itSBFXgJJ0XYnavQSHF/Vrmd8aqExIL/6rW03dZcfulQAv
	f23oJXiTbEI3W3VbDrBT2G8PPgXwNxKUnHTKLKkRJaFW0qaaGaLy0q07AM/rMH8e
	/eOeSiWuZQzRBwm4cR8yqWqHOaOrVleQ753l8Fe7BYKuA9X73d1EoPp8iIUX64hz
	zQ7M8Wirx4vT94oRenIRmOUOH0Gf0FW92p6lC3XgoUv6f/IENciZXOnJy2rK9cfV
	vD5fNIxK8JDKaxVBuSw0AjB4L9KPJQTmo+N2xxTZAT/pwg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u0d0a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:00:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4cce66e91e3so46653061cf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:00:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758834007; x=1759438807;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0Sf/sBWadKXsMJGTZZ12sEILrsGXuVR6yrh2onEh/I=;
        b=EQ2Iow5mmohoyVkWR6OXNWU/YcpciR1OZsAYmxQ+tVjk9cEjHyv5ghVacX+VshjAFl
         pJS0nZ7L3YEpAg5nFmHuN3WcJbBi+IHU5iNOMI+jq6+9M7IE3T0oidskdOlHc6bD200l
         g3jseNOWfubu/d8DEfQvbNl81HRLRWAL/K/ceBMGsn7rLrcx4X8JDL5gtFeg6MFsKml3
         iWBaRjZmmvQW72Ee2xqkiG0AEbyZt0zGXVYBmZcZy1AJJ9nS9uuqrqlP/RcW+jdDusBQ
         sYCY/gZQYPKk/+ULQial4a7PzF1a+GuibgLP2TCWHhWZOhDV6laf83Yzd1fDefMi76EX
         ARbg==
X-Forwarded-Encrypted: i=1; AJvYcCUlWqWS3GX58p7A+he3Ir0+IOe40XJub4Cmz9ICG2iTM9vLDcQn7Sy/mTHWyS9z54D0I1dgTQ4hxEKA@vger.kernel.org
X-Gm-Message-State: AOJu0YxPOMG7phe8I305YIvKIxJrqCCRJzu8FJ2zJgAo5+ecIEH3sHS4
	RQeOKJLYaEoWPWIy6XzeTPlLta/3QQAZC7ujLcz0Ws09NTTo+gDFfqczshwCKA6SEanjL1Bmzbj
	o7SqkjeXGbRnPMmKt2CA2pbiVFTkcuuVW2cd9/spYP3WR2mEmFjIg4llYWu+u9Ljp
X-Gm-Gg: ASbGncs1g3vy2PbKcwJQps0FFyU+XSYO+f8rX0lkNfxq7CUGtiK9HkSFJg96f7l/yzj
	tqa/NiPwMWdJoIJybs1mLKu3PNqhM8gHqH0S7V8IU9J4RUlE+geKqaXxxcnhIWp8AuGTm8cB6rE
	lfFy5EaX89bJGNhpmRo+gW/0mYXRHApQLWfYC3hi1V++XTEeKX9/3Kqkx/L/UoSxTGj9IgGECWj
	fiP4+a5bgnm6LDuV/L7TN5iNW/Eno2deM9M5ET9Tcfxb0MjTsQCgU6tqx886/hbVvva+Lb5VDNP
	UQCkyuz8xCgrEv6G8eZS3AqZr29aqlGAMBMKXaD7DsqHAzGUbAKaFCFK73lefqTaXSs869XWsMy
	3FL9JOufFG1WTQN1p2iIJsuzdb3bTdc1KwhC+aN2o93pN8cW/zVJT
X-Received: by 2002:a05:622a:a94a:20b0:4db:16f6:9049 with SMTP id d75a77b69052e-4db16f69d23mr37264831cf.70.1758834006860;
        Thu, 25 Sep 2025 14:00:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSqyJMyZZeC0SdYv6VOMpLT31YAW82OV1CV5+LhKhpeDE/XPG6jushTLuxUA1OesOxbqQQ/g==
X-Received: by 2002:a05:622a:a94a:20b0:4db:16f6:9049 with SMTP id d75a77b69052e-4db16f69d23mr37264331cf.70.1758834006373;
        Thu, 25 Sep 2025 14:00:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313dd66fesm1110678e87.54.2025.09.25.14.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:00:05 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:00:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH 7/8] drm/panel: samsung-sofef00: Invert reset gpio
 polarity
Message-ID: <anrdocs56hbunj7ga573kopcol34pw5cklrwneqevpfhhlm2bc@qvih2y7vm7q7>
References: <20250925-s6e3fc2x01-v1-0-9293016768f7@ixit.cz>
 <20250925-s6e3fc2x01-v1-7-9293016768f7@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-s6e3fc2x01-v1-7-9293016768f7@ixit.cz>
X-Proofpoint-ORIG-GUID: CWKU87Y1n0UVovR-PtVP2JFwL8Ongs_v
X-Proofpoint-GUID: CWKU87Y1n0UVovR-PtVP2JFwL8Ongs_v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX277GY7v38W2N
 YxCPt8r3DPN9HW0+peehTnCQfGoKirbzo7+cH8oacI4jOKXbZYgz9RLjpr3GhQKvUVxxVrzjZ6t
 4fN1M3go56jQqTxnOhlVQ8cA6kde8O93kvzuIfgQm0nNInvykAokdZddfiiAjD85w5odPbo0w2R
 hGbsj9ZKZqLifY5s07jI/UtG+Pv1AgSVsO/YHFtmUSkYOmsGPXv57ke+1GcNJrYpxCGjh+QpYhu
 5WqwIvkFrD9LvfBVxh5cqAjYiairDW8CoRu2j45++sdosWACIofs1dXu762/xsZpLDJuzeMwC7d
 MB8wHrXo1MOYzWMZueDuM3jVbiAtWLfq/N8pS1q6X0zGvLCEq9HbxIm0qX9Z2hYDsgkBHikicMD
 /onyG6IHlyE4AxBjriVPJeXBH7bOQg==
X-Authority-Analysis: v=2.4 cv=ZsHg6t7G c=1 sm=1 tr=0 ts=68d5ad63 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=RX7N6JFfHuZ5v-HjQggA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 11:12:53AM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Follow the device-tree change for OnePlus 6/6T and invert the reset
> polarity in the driver.

Reset is usually active-low. On most of the boards it is described as
RESET#.

> 
> Fixes: 5933baa36e26 ("drm/panel/samsung-sofef00: Add panel for OnePlus 6/T devices")
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/panel-samsung-sofef00.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

-- 
With best wishes
Dmitry

