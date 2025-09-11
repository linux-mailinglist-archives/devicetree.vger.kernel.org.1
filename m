Return-Path: <devicetree+bounces-215936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CED6B5330D
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 15:02:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBC955A5060
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 13:02:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 456D8322DA6;
	Thu, 11 Sep 2025 13:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VS3/UwzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F955322DAC
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757595738; cv=none; b=UcEszGQvndsILhHc5d9Mos6p7sCcojcAzRzNopohaPAAax9GeU65sDBueUNAtwdOA+Ta28plNkpUgNNmvp/i69W8iDSBblVbHsM4jmrkIiiBpB6JBb61ScnP9UBlVHgmO1RSZdMCv7EMhQj0UjZzL98WPgXiNe5mk2S8iyfD8CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757595738; c=relaxed/simple;
	bh=ifckRixAc4OgM2DCkMz0AVEhS+7S7pIgBQ2AALYiNdo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fz+NHk34/l5aLI+OrG9qnrf42v3YtlxaGjrLcyOW+fqX2XuDOAADAeRuDvC77cenFOANI3A94uMwwbZYHrI70/gv7aOQxcz1i8IBH1kLMvL6AyTuQ1K6iYWXAvfP2HmMsZJz+rdysPfv6CkNlcPQrqurSY0bHECI0SNaEcxKb80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VS3/UwzJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B4kBF5019089
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=020/RT6M8DeqQ4FFLCQkWPxS
	sOM8wzuUhGEMVMCrtzI=; b=VS3/UwzJ4nickQEaH5W6omM0qT27Bne6pWdxtKvY
	kva9j9VxgRpFn3uQn34RfmeypiurpoZPuM4p0SkcaDMU4DzvL7o2Drdm1nVzjeiJ
	w88hamHlP+heFznlo51J2bXy/PZllEaiU9ZAo5E6ejCQqbPxw98E3aSjyrgZxshh
	CcYCwNKOktm9ln+zF0vZluDiGFko6m7v/UjLrIKfaodCN68zRCbMZg4uLrTnFo/2
	kfs1sB1z7EERQyIQtEO5OElUl2SfXEnGAY5VH0ZW00ipKDOZS7kppLlHjd80kOHw
	qGDGPXe6Nrx5U8lj+iLF+ghDo9tYIrzCRQBupCRMvTbAng==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphsev1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:02:15 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-544a00d501dso800542e0c.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 06:02:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757595734; x=1758200534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=020/RT6M8DeqQ4FFLCQkWPxSsOM8wzuUhGEMVMCrtzI=;
        b=wy2lgbGlueddMyDnWrLRvZQ22KPmkZmb1GODrUDOLfe+6gO8Aq/BYwktzkWwdktTiY
         ENcoFe3J2wOEvXktipxQAH/3sVhfhheik6Q9+KS9iAca/nXYjWvNpXvO+Q16gqkLQohC
         ipeb3yR3QfwT3AtVngUkcoRnz9258RKdNmG+kqEd3FdYgG4B3Hjtwo04ZGZJA4o8o/LN
         sNdW+eVJECzWqHkrY0x7T01DzoP9xoSJvxJ7gbA1vZiXDWyxFS7H4fmPIkKy4kwWGW9+
         /PVU5NPHZAZw++CKk4Xg0IlUeTG8DYORKhcM3/YxGKg+/mU4sQup/VAzF13XymgA28SJ
         nviw==
X-Forwarded-Encrypted: i=1; AJvYcCUFAuUWQwFUSXwTdRkl4XZsCtzxU17p2OiApub7lDORmnZ+b9IeCRlBjsMANdP3n477lopVa2HYgSo3@vger.kernel.org
X-Gm-Message-State: AOJu0YwCt0n0osxQS8aiwIDNVAkXYW6bpY7MpKZ8yNUwzrxbeWSkk0ei
	66Fdzh3OVLUilGwesFStV4WmKtq8NqtQCaICl45ISZgSrqB7c8FCRW5R1rtKxEYfPPRLqDsy6lf
	yAfOvSY5CNGKLtFZRal+uUhTreXicIRFz8jEM/zppPLM/ux4pSawapyhgrtZ94dyd
X-Gm-Gg: ASbGncsq/Ul/KnLnt6mMGYMlsM6uTUA771614ihnFPBEC2yA+6qwtkyMjx4NwRQ1cIq
	03vB0HBZ46suxvD4Fownvg47yUxJr5Tr53cRYSlDgoDSAMiDyC6YI53Fg5pUJ9gbyJK9gEdtffv
	gr28CpK17f199wbuGrnICpcEkQzYOTnV36TNMRKZSCdRh5WuNoz+Cpj8flbzIL7kUjbxBnMPYWf
	MFSo96esXbvR8b05lsP6T5WUg6+V38py+7tN6RvfS30iNvLPgk+ClJXb5GSfsMZ3DZBDgCuH+He
	+ChAdBvQgc/MYKGb80x5xXJ72D8G4ZfpHCiCp+iGgsJSjRrnXj6Yb3ZJ871mhvU3qZiYHRoBWUq
	HmU02zm+ZYIXux0fP2ip4bZTtLVYZTQU5J0N6/HyutwqeLWz2raon
X-Received: by 2002:a05:6122:d02:b0:545:d9d2:a832 with SMTP id 71dfb90a1353d-5472aeed8f7mr6420442e0c.7.1757595711723;
        Thu, 11 Sep 2025 06:01:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfU5T4Be/8d1NB+n++SlGmSCbRAol8EPaMIXQXmGdUJfhc5omkFmwE++S+Snmx64VOIIOiNQ==
X-Received: by 2002:a05:6122:d02:b0:545:d9d2:a832 with SMTP id 71dfb90a1353d-5472aeed8f7mr6417135e0c.7.1757595692924;
        Thu, 11 Sep 2025 06:01:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a32f66sm398785e87.138.2025.09.11.06.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:01:31 -0700 (PDT)
Date: Thu, 11 Sep 2025 16:01:30 +0300
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/6] dt-bindings: display: msm: Document the Glymur
 DiplayPort controller
Message-ID: <mgbv5zoptfox664jswi3imvibrd7d2teazeuied37dw3ooiex5@lli2bsap7d3x>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
 <20250911-glymur-display-v1-3-d391a343292e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-glymur-display-v1-3-d391a343292e@linaro.org>
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c2c857 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=yi07AWGtMeMy8SJ1qNsA:9 a=CjuIK1q_8ugA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: FTZ--IY5uLufukUTPvpyTxrJfaMcn8_Y
X-Proofpoint-ORIG-GUID: FTZ--IY5uLufukUTPvpyTxrJfaMcn8_Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfX2pWwc1fnkSLl
 5b+865pBVFFfdwJQYX50XIr7GR52BwXtZGZl7kWoK0sv2AI6pMpoa0bz6nt7lh5jeVvOSJcgMr5
 5WdzB5p5zK4qs+7/j7UQFZzvIwJv7+pZ8dWls+cssJ4LwFALDeBOXEjxn56o4gpNnaOFcj1mxK6
 M9EG16inWt5WiPWEaM2pcWM4BSvmKi8c3sHoXPLUkYdPZF4S9MpFgcK5mGpWAOqL+etiaQHNWjv
 jD+Mg1uCr8rIfn3DWpMLkk9afSDxeSWcmcf12neuDuwub/q2wyP1jhH79XaM4moTeMlDwMxHdEK
 0wuuIGFDOc+ldePmai0jLv+zwylcORgPISikiSrsBfe14E0LpJ/AjRPrPXI192+wDn0t2SmLz94
 0S/N6xR3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040

On Thu, Sep 11, 2025 at 03:28:50PM +0300, Abel Vesa wrote:
> Document the DisplayPort controller found in the Qualcomm Glymur SoC.
> There are 4 controllers and their base addresses and layouts differ,
> therefore being incompatible with all previous platforms.

... and it's a new core revision.

BTW: any additional clocks or regions for DP?

> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

-- 
With best wishes
Dmitry

