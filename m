Return-Path: <devicetree+bounces-165635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9230A84D65
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 21:45:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8E9F4A5A3B
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 19:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C230E28FFCE;
	Thu, 10 Apr 2025 19:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jrTsBVS4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD6828EA7C
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 19:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744314250; cv=none; b=j7iNJ+yl4Re9NeSEtdKJEbawxcOkDnO3IW9TT08P6C3XKiAOLA40ggMSSmZ7cUxLEriKsg7i9dI5VrLSL4ER9EaRnMPpwb6X2u28U7CaOsOYrh8iz7lXGQNYB1oLUxwNjh+Kp8xZ462/+BxrC3Pa6cvQP8+4cJzK4W0OSWA0+H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744314250; c=relaxed/simple;
	bh=iMsdDLXheF8MRz+4l0Yir4tgR3MOExzWlGax/sLIrVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fv2kZe6GG8H5wK0tKndrx5UGGEBmqHkMX/SdLDZOv097dNN4Ckd70e+01K/cO+B8XhY3zhCO9V+KgwQ+zfPd9M/AodlNL9CkByOrNdeW4qsJ4H6FQNl6kXGVOtI1ERlqmex4OjWSfVyD56D5MORKsNZrk4+6Uzv5m3q4gzf7W0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jrTsBVS4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AGIbZM013881
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 19:44:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PZm0qqgS5dTG7oCRmAuLkE5p
	HlURp9VF4PXmAQpOQA8=; b=jrTsBVS4kK+l+2V83qmi5UfEscnaEuyvCKWxr/E9
	YrAJ2ykybUVRjY1dIyYRhHir3HHM+cXScju49r/96bW5aSl8Qk3jiq/kDpFCagyK
	u51msUMUidkU0dvyTAmpr+v/fdFkUHHylP8KUGP2ypdWvkVMsNy/QeN/7Jjk8a+I
	yl+VXDrihEZsb4/Jvt8YJTcXfLR94gSk5jGkH4zqLomjhkfce9+I0Dflxfuohdhg
	g3STC047JWrBgpNuz/JUPelYPqI61ZMDPJF4y+q+PyPwXh/HuNecoLiJJMOkFUUP
	hrslaynksnQaPuG8ssB0q2MLRZ9R71rc9uDED7Irewx/+g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbeg754-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 19:44:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5c77aff55so293871985a.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 12:44:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744314247; x=1744919047;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PZm0qqgS5dTG7oCRmAuLkE5pHlURp9VF4PXmAQpOQA8=;
        b=mE9lk2SZ3om3zcz2vUToNkNzjsNVgVt4GDtQpLVhEKEzCuje0nFMdjPUGKvOX/c41c
         JwFTeamuFIjcN4byWPJSUG8HHlodv0R6sDGpa+iDU7nMA2lKYszgblpmIUBLVX4w6Uv0
         ipqNflPLq8BR1OqufA3awv3V5iIla7W+g2xujyMFg4IirEy+OqdFwBfyncyE9Acz+ENR
         FXaAsQP0aucDAr4MxJJxAXId2S+3SwbZNfZAZ3jjMlqcjrYc7HQYIz+/mhTK6LoXwRYG
         3O6/Q3xi2lYZ1lFim28wCVXDM7az8QYPgWZRXImJwAo0xtclRgBIVFHt/iF/707Jcu9U
         NlLw==
X-Forwarded-Encrypted: i=1; AJvYcCXQmbd7W5ZULOWKQCRT9YMnzXGZwUYm3iAieKec27hnFym+X/sGHbT+RX36Rn88DvqyCK7YPI5enO+i@vger.kernel.org
X-Gm-Message-State: AOJu0YyA6I0FUWdXLmGHgvlJJJnW1Mhh9PG+/hBdCy7EBrvAQ3fvLlKL
	CRrsLZrd+Ifsn2pTEZdPXkLIjSPTH7yU+elIyFplkFWVeNnOuQRIrnSGJwXQoa9KShNE3yEtNZn
	qK+t1MoGbP8XDkJG4lCIqi8GHEjuR8xzZtXO+0Kvhe+YnWN7tsBHoJ2d/CkF4
X-Gm-Gg: ASbGncvg0D6/t8qaZWrbDPNKqARfRleHxjm4ev/YvMB1ivNY4uljhjkXKzZtsATtQ/J
	YyXw0l/IYxooaL9LUMuadNDMx5DdIjn5e/17GLiIjVo9zSK1LwA1RcN5WSEDeyIUwDO5YY3ivAD
	/l2TABmBNQYtJ6DX1qCWlnO0wHrGu1mcrJ9najESXgPXLZ0fm7SETPbOjQmJdUKoqH12pSEuPOv
	lRzPmARGjnfMePO8Ndr1nLFtY5SA5fW1As9nAaT/KCfWs/pljFHSkAhJlh/eSAqqSWqsc6grbk4
	SlBLp6YKFnbnWzRqnhRTLCUWrFq30t3uZaAugcEon83+wPHDwFTvoMRcx1mG10naLQJGoWeDujk
	=
X-Received: by 2002:a05:620a:4484:b0:7c5:4b91:6a39 with SMTP id af79cd13be357-7c7af12ec95mr31545785a.33.1744314246986;
        Thu, 10 Apr 2025 12:44:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/AtswoZH0U6ZdBxJQfiEwZm4aVhqnq1sZshU8lrm5+ua8KiXU0Tcl7YdGDm/CpynyS+kVcA==
X-Received: by 2002:a05:620a:4484:b0:7c5:4b91:6a39 with SMTP id af79cd13be357-7c7af12ec95mr31542185a.33.1744314246699;
        Thu, 10 Apr 2025 12:44:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d2386absm228473e87.87.2025.04.10.12.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 12:44:05 -0700 (PDT)
Date: Thu, 10 Apr 2025 22:44:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH RFC v5 1/8] media: qcom: iris: move sm8250 to gen1 catalog
Message-ID: <vhfuhjruok7gupoeo2uloe525k7oycd5gkh67zzz4wbiwrczpt@i3qknymfu4px>
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
 <20250410-topic-sm8x50-upstream-iris-catalog-v5-1-44a431574c25@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410-topic-sm8x50-upstream-iris-catalog-v5-1-44a431574c25@linaro.org>
X-Proofpoint-GUID: SI8RAkft5q8Lp4ogo7sGBWgfsau17Mib
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f81f88 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=w-EXFu6-wi7iOCDdWgUA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: SI8RAkft5q8Lp4ogo7sGBWgfsau17Mib
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_06,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100143

On Thu, Apr 10, 2025 at 06:30:00PM +0200, Neil Armstrong wrote:
> Re-organize the platform support core into a gen1 catalog C file
> declaring common platform structure and include platform headers
> containing platform specific entries and iris_platform_data
> structure.
> 
> The goal is to share most of the structure while having
> clear and separate per-SoC catalog files.
> 
> The organization is based on the current drm/msm dpu1 catalog
> entries.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/media/platform/qcom/iris/Makefile          |  2 +-
>  .../media/platform/qcom/iris/iris_catalog_gen1.c   | 83 ++++++++++++++++++++++
>  ...ris_platform_sm8250.c => iris_catalog_sm8250.h} | 80 ++-------------------

I'd suggest _not_ to follow DPU here. I like the per-generation files,
but please consider keeping platform files as separate C files too.

>  3 files changed, 89 insertions(+), 76 deletions(-)
> 

-- 
With best wishes
Dmitry

