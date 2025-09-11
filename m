Return-Path: <devicetree+bounces-215934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CDEB532F6
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:59:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B4BEA846FC
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:59:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67D50322DC5;
	Thu, 11 Sep 2025 12:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NF+KtG0d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B29322C7F
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757595555; cv=none; b=kq5UDtu8pRS6ou76lc91SGY8SbCssKejhVNPack73uySAXbWxqA1abAr7YCbbgx6xBYnqimBBnv1jyxGr7uBdyj8h5o/5ECYKxwrHcLmYRTezZj8rXemHFEhjCxSizGrJVeFIHQvccqRLi0WHXHzTod3YnlD8EwpMpjE7ZyAFno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757595555; c=relaxed/simple;
	bh=eJ/guibiApuxYOyuexqb55s4sia4Xi3oTrbQVvt2Xvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uXr8nnp9UHYB6W8p+FDi4HRHRA8R1TOyfqouD9FuLFCqbnEYm3wmki5JENbZrLWBS/heTWg5XbwJZw+yH7DBtWxu+0L9DFv1/c23k+CiLHMYl+Aoo5dt61eUu5Cba+o6sKJeEEd2/q+oX19a7nflO9Re1Unitsz6C3tYNPi0FCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NF+KtG0d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAYUi8027365
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:59:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=erQHYt3izy31hhOi7nQaR12L
	KzLFsLkvUdjCmOIgf4U=; b=NF+KtG0dJrO+Jah9l4R1SQCTtI8Ig4bugDgBUDB3
	Q+tnn9DOXj9Cdz9U2r89R18AiyibwLhEt8DN11Pj8TQP8JWJhLN1zLjqrBwte5mI
	rCNPLEzQ10b8nRvzPYoumLmEz8KrYr08erJ62L6GSFvqhcD+FGAVmVrWR3O8zpm2
	k9G6G2ZqzfkYjaYQoIahqe4wAkekDbv19idhB7aJOoFpz/iURoLabuEBuL560VLx
	LvkUoruTmoYuB3hx5Nc1SkakwiaIm981eiz6gPJxXB/IUow0/9/i2qHFV1bS3qQs
	0cEa4M/bjyT57glR9zrEgMfQF3yOzzMmEnHmvMJYCwdaIA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h2pe6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:59:12 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-71ff3e1256cso18442086d6.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757595551; x=1758200351;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=erQHYt3izy31hhOi7nQaR12LKzLFsLkvUdjCmOIgf4U=;
        b=be8FXny0sF0LAB7yFiq8IRnD94TgOyOreOeQ9hNVVZz+0qPMVdqwfwXzvRGtUwnzI4
         /Spr9nPFAutPvqL0OhCYDscuUv3gbE2hEK8CijhRimFvN4pZNNTc+HZ2ZBJ9qPX2nt7I
         FKfm2CKqgglf++802CY1LOYpzPZXcd/rE2oWZ4WG+0P2ZOmDyZMNuyJEfORN5EnrmVae
         dX3DNEmUKSVJsfH5+ijE0Q/5+8OCF0X9ftYJzb/S6v8Fvpc5Je7z6JY5uFZLe0qjFPwF
         ahwbJ8coGXSa3RpPaFwjyXwS7NCWmQWST/WC0AvzwCcYbEwwRPmHn4ttvo+dI1iiLslh
         28AA==
X-Forwarded-Encrypted: i=1; AJvYcCUbkc05Sn67ThZ0BLPUIMTm13bkKSSXASiQx5i8B+FH/4Tqx241wZ1eIPqciiwzILq/0nWBcgB/qGOs@vger.kernel.org
X-Gm-Message-State: AOJu0YzzuQZvQiyxRhL/atIvur8aG3YJjrQA9BJD3p7c7wfBX91UL1ze
	DSmA2H4bDNr4KvRjpA3GHtCtZqXyiw1t4buDITmFH6JI7P3yh65loz09CTTRvECMfo9LQM7cQu1
	rYa3sA9tnbY/8Qzw4Wvg1mc9VwVL0zNIdro/H/o3fMj0FsGMx8IWpM9k3nh6Fx/GL
X-Gm-Gg: ASbGncskdPBgbXSK3AeH6hsTXEwowgLeunwMzip7r200SDk/UwtKhkEX50Q9keMB8pw
	kMUx8XlPGFXxaMXmPR9OdFSJ1Difl0SEsHrTJ544ht12o34BOsg+/LeK1VZMas6A4VwKCMP5LjP
	Gu/1bPsna6L+wNdsTRSoGttGVHWhvVe0maj+MhwSFgPPj/fRGO3TGryTsAXI34Pp94W1Ji04qYs
	O+4E3qu1FIAASW87nggccsVPWzbmFasNcH8ie9vRg2vfNzfN3Mfy9uRsiruWm8vorahRTRuWNmy
	/oWxlnGXXN4OaUnXGK0mwUhFoAkoChkwWr1tDxYrf+OjVv2Fk/rvQQWBxjOUVfqO+99PbZ22KmC
	NlXRtQINTTriUgcdhRHtI4Gkhv68criqmDEWV8Va/NUBv6pJuemrS
X-Received: by 2002:a05:6214:2a4a:b0:729:9ec8:a1a6 with SMTP id 6a1803df08f44-7393ec167f7mr231642656d6.53.1757595549397;
        Thu, 11 Sep 2025 05:59:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELAL9kOk9qQGqQpSk7nyLvkiKnEOMoOscLtU6SuZkaDa8BaY8uCBWjurK/6Kut9nEHxlP7Tg==
X-Received: by 2002:a05:6214:2a4a:b0:729:9ec8:a1a6 with SMTP id 6a1803df08f44-7393ec167f7mr231642076d6.53.1757595548865;
        Thu, 11 Sep 2025 05:59:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a31a1asm400573e87.134.2025.09.11.05.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 05:59:08 -0700 (PDT)
Date: Thu, 11 Sep 2025 15:59:06 +0300
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
Subject: Re: [PATCH 6/6] drm/msm/dp: Add support for Glymur
Message-ID: <gteqgamsehrmaf2hro4uhqydckexjlvkzlpkj3xyt2w2derf6t@evk22k5y4bpb>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
 <20250911-glymur-display-v1-6-d391a343292e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-glymur-display-v1-6-d391a343292e@linaro.org>
X-Proofpoint-ORIG-GUID: LmzpcY-_tp5f--qgZ8NI2ukCNu5oGh01
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfX/kjKYLwejzOF
 FIbrO6M6p7BXcNwUrYXSVv8uSC1wTODNIIhZT+tuTjBWtxR8kGKBPW7xyFCp5v2haqtn2YBaIt0
 FwopTz0FAOW/B+cyKGstoM+nupLd3vyw2tqbcdhUwv8qm58b87fdoURJcLTLw8hsFnz4gmDI4kp
 kk8cEgcmybvaCb6QAjWcKF6lOF8IcP+UMvqIumksVDgEp5lhH/IfgkCv56GLKTCL152rpejqRaP
 MbLAzwcgNofqbI1I+GWkbWGVpJa5qzmwNCR9UuU032saJZf0ZaZoP5DxY/M3RsOVETV4ZjyKhK6
 D3QcD7XLR2QHa4GYclITjvk9RuhV4+ADJRuuQ2TEOm2a6XLsKE5IhiB2DU4+faZAaq7Wm7upWCk
 JYfh22m3
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c2c7a0 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=r4hCbaOVonaLTjXU3fkA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: LmzpcY-_tp5f--qgZ8NI2ukCNu5oGh01
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177

On Thu, Sep 11, 2025 at 03:28:53PM +0300, Abel Vesa wrote:
> The Qualcomm Glymur platform comes with 4 DisplayPort controllers, which
> have different offsets than all previous platforms. Describe them and add
> the compatible.

It's not only about offsets. It has different core revision, so it
varrants a new compat string.

With the commit message updated:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

-- 
With best wishes
Dmitry

