Return-Path: <devicetree+bounces-179860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 923E1AC1EAE
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 10:30:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56AB81BA2AC4
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 08:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F9C22DF9D;
	Fri, 23 May 2025 08:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KpHJpQN0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD87224245
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 08:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747989007; cv=none; b=H4gLMkszfbWaWpAsfXevTwBnCRZEgVptxfcnCilYQrrC4GaCaz9UygbxHH1V1aR5LKSSO696Hgc+64kOwzU9qIIVh1aB9c0lmxrtyb4n3kiCTh+Tk7Z7wA1ysMN1hC4MR7A+3lhS1Tq+IzU5S4tH5oEmsK56TPvc07jkJIKvA40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747989007; c=relaxed/simple;
	bh=Ba/qEJqFr6Ls+4+wQI/kPTBtztizrY6suF60TaJ7cfc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tijIUutjvzWzRsGM7c7YyUgmveQ4zK5tc2dM+OaQK7x0d7fb1FnAPovkzqD7ycwwec4pFZEjXojj6eNjV8fhvJAuUfYvwKbR1FCvwV5hWsWGJpGdDJWPykD0yfCgKBqv8BM9LL2bBgyrKuHyB/ZpM8EmSKG3x3evvGkaU9MiQFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KpHJpQN0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54N6GgjB027606
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 08:30:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VfiheIwlbsPSX3tKRqcUN7oc
	TCW0r9qBhyKUU/kzcNM=; b=KpHJpQN0dwtJLO+HTWzFKrFnk7bx+iSwn8bK+dSQ
	OcDSzPCmLUMrm/kv9g/5xyF0sMhlh7fYHwVBpNLpRtNlXPqjfnzO2V7n7/shn76n
	H+1+qDbvv7oTE12vRufyynS784yTKkqgKG3HYryJHeGvRlw6VpH29+fp5d6v2mh+
	O0EljvCWr36c4t6relmE6w4GeExam1CEKbOEzDi2Vv2gXldPFq+aLeAFJRke+mBQ
	wi4GT93K8pVkXpt80tvRVnaalOgvdiYPtKD4WUzq3WLp8LDuhgYoZIqJPy7cXJB0
	SOeAYJIab+0mlin0k1dpH1a8nO9fBiWQkDml+gGCajTHSw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9h6j1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 08:30:04 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8c6ce05e0so92869446d6.3
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 01:30:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747989002; x=1748593802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VfiheIwlbsPSX3tKRqcUN7ocTCW0r9qBhyKUU/kzcNM=;
        b=lwbMclYvx6Qrzmqco1vrcz6SGiKQfq8M5w6+hEdyupPfooI87ylmPLK0jNu9fRaAZX
         sKkpTPIRtJ1bXvN0BvPAvE0QIbIqxXQipV/8DooYEW1aKnbwx/sirkQ5ITREXIQyVPb5
         hE+sYCEPLb/96l8cxkXgzDOGFGSnL7AY6Uyhhvn5xw97cS8wb27+KvvetuENKvN3JXU+
         p3ezHNbo6xG3m+zfil0XCcXzr++liQjS+HcLRno3sKjuMg4XhEMx1sZPqr8QyY3xjV4N
         Yzz1Mwib9bjva1bTpXv9zndJzg12X7zLHNelDvpHeQbPBBlLU2i5F6R3zhLQyNmtGVu5
         xwcw==
X-Forwarded-Encrypted: i=1; AJvYcCWHhyOAm8V4fZ2luNTV9JzV+JGF8CZwk89oh1JTlqMAJSGzZ8wjCT8LKvsHfGGVyVJ9LviNY7NCbwzB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7nxseMv5KDwob8/YeXpueeX1jX4kzi0LVfy6ceasCr52LjuWW
	JtcM/rT2ygG8okCd6dY/kAvGScdJq/3JjIAc9wue1rAxCBsyHK0EV9x2OVajPYNQYUTVjnToXgj
	1YiM1ifixk3zlePoUO1U8kxuR+HZc0cMG4aelWKwvzdVriKUopceTckR9OnjCbYnj
X-Gm-Gg: ASbGncv/T0WhPDXI+gsHUeYG634hQfTO7fytFSB/XjGomeRsJ+75ueV4gz3GJYzDKlf
	ql4P+h378bgWL/6RmjwYlIZR8Mu7uey9L0vhLR1vh8b1MBEyqrbn+Wd6RT2qbcPC5dKTeSrfISm
	igJW6EwDr9ENoNMgQlPjTtyU7V5AJV41lFNQXiceQ98BHy2FrTsKwlzRBRg4FMg4u4xPL1Z9iIJ
	WI0PlSUxmA9sQE/7wT015Ww5AcO9yTDOo8gR1DkR3RFbENAVo9inXC4gJ9nwiJNwDS21qk1Td6m
	Q9PrrskiaVbrCA6DxlYTwvXFOBBjTuE73u+3HS7OzsXf1N/5fsZa4YdtlnaNJ/aX5ZFPcOz0RPQ
	=
X-Received: by 2002:a05:6214:2aa1:b0:6e8:fbb7:675b with SMTP id 6a1803df08f44-6fa93aa463fmr35204606d6.32.1747989002054;
        Fri, 23 May 2025 01:30:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQTPt4MTIbkICZvOrh1skICymAaWmqgOHvMqVvofwa6vGpCOsSPPMr6URNTP7Fxd27LeFefg==
X-Received: by 2002:a05:6214:2aa1:b0:6e8:fbb7:675b with SMTP id 6a1803df08f44-6fa93aa463fmr35204156d6.32.1747989001635;
        Fri, 23 May 2025 01:30:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-551faf6be77sm1933997e87.84.2025.05.23.01.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 01:30:00 -0700 (PDT)
Date: Fri, 23 May 2025 11:29:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
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
        Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v5 21/24] drm/msm/dpu: Implement 10-bit color alpha for
 v12.0 DPU
Message-ID: <dlkrweid62i6jz3iexahbludm32hppzen2odjx27sxfe6opt5c@zqnryzjpzqoe>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-21-8cab30c3e4df@linaro.org>
 <aDAbxAnCN1lGGcGH@linaro.org>
 <aDAdax7xdeDsvQHB@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aDAdax7xdeDsvQHB@linaro.org>
X-Proofpoint-ORIG-GUID: fY3I-AMM4NyXeGzeaQ_R54hrrOzxyMBN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDA3NyBTYWx0ZWRfX9w31Sq6R+pZU
 N+3jY6h10uAmQs9QsBdT1EfKN90ElXRHMlbpF7UMzy9GiX1iXsNc1ZvsabIqD2P65+0YipzggtF
 8uX+Wb6eLf4b2oNsWvAZH+RtnKlOYOYGiTo662bOe0ICMKnYxd0IjHDMhFlUellhRdWnT1KV8EZ
 apHH/U+L43I6ib7W0xUwwP3rCOCxuVER4cKFJsjPiA/f8a+2X+aZvqcxhJo4vrbFVN0GRV39TP0
 2t6XXT+tyfX46sNjKviVL3COqpKnzHA5v8QCtMCs0G5oB46BDTPn6bHG/uomY6TQ7CDNI4jdly0
 5ucBgWwg87xVuTc68ZL7yWi18m9rITU6wWIYwYeXJ3+D6WDOOwIxeqaAFU+XxvWB7ikg1pmNJU9
 UsNejd9ot57hJf3NY2cFw+w+JqU4bSwyiFy0C1nSArasAIzX8neVB0gxCH15lmKaCHsYjEhE
X-Authority-Analysis: v=2.4 cv=GawXnRXL c=1 sm=1 tr=0 ts=6830320c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=pcGS-iR_AO2RkNitFtoA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: fY3I-AMM4NyXeGzeaQ_R54hrrOzxyMBN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_02,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230077

On Fri, May 23, 2025 at 10:02:03AM +0300, Abel Vesa wrote:
> On 25-05-23 09:55:00, Abel Vesa wrote:
> > On 25-04-30 15:00:51, Krzysztof Kozlowski wrote:
> > > v12.0 DPU on SM8750 comes with 10-bit color alpha.  Add register
> > > differences and new implementations of setup_alpha_out(),
> > > setup_border_color() and setup_blend_config().
> > > 
> > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > 
> > > ---
> > > 
> > > Changes in v4:
> > > 1. Lowercase hex, use spaces for define indentation
> > > 2. _dpu_crtc_setup_blend_cfg(): pass mdss_ver instead of ctl
> > > 
> > > Changes in v3:
> > > 1. New patch, split from previous big DPU v12.0.
> > > ---
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c  | 19 ++++---
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c | 84 +++++++++++++++++++++++++++++--
> > >  2 files changed, 94 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> > > index a4b0fe0d9899b32141928f0b6a16503a49b3c27a..90f47fc15ee5708795701d78a1380f4ab01c1427 100644
> > > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> > > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
> > > @@ -320,14 +320,20 @@ static bool dpu_crtc_get_scanout_position(struct drm_crtc *crtc,
> > >  }
> > >  
> > >  static void _dpu_crtc_setup_blend_cfg(struct dpu_crtc_mixer *mixer,
> > > -		struct dpu_plane_state *pstate, const struct msm_format *format)
> > > +				      struct dpu_plane_state *pstate,
> > > +				      const struct msm_format *format,
> > > +				      const struct dpu_mdss_version *mdss_ver)
> > >  {
> > >  	struct dpu_hw_mixer *lm = mixer->hw_lm;
> > >  	uint32_t blend_op;
> > > -	uint32_t fg_alpha, bg_alpha;
> > > +	uint32_t fg_alpha, bg_alpha, max_alpha;
> > >  
> > >  	fg_alpha = pstate->base.alpha >> 8;
> > 
> > For the 10-bit alpha, you need to shift here by 5 instead of 8.
> 
> Typo. "6 instead of 8".

Granted there would be a next iteration of this patch, I'd suggest to
modify _dpu_crtc_setup_blend_cfg() to always use 16-bit values and pass
them down to LM's setup_blend_config() callback. Then LM can perform
version-specific shifts, utilizing either 8 bits or 10 bits of alpha
channel values.

-- 
With best wishes
Dmitry

