Return-Path: <devicetree+bounces-173644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5877BAA92F8
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:24:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3123818994DF
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A680F24A061;
	Mon,  5 May 2025 12:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UGrcD4YR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001151F4607
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746447885; cv=none; b=fsu9EZ8Np9omYP/C7wwjoxA8EnYq+KVF8NquTw6h3ZiXxqK09p2L5K1OVCb7/Mwhq92rM1crfkK/5WhlfZWqndninCqYXslBeRziVi8WOL8zn+8cQyKdYiR1UEV6RhBEwQYHvy+ecULqAPHXDd1fBZAmAHiU0DKNilqYlY9a/Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746447885; c=relaxed/simple;
	bh=1n4N8SV8iYUBKBESdu/oMblCqrUGnJHEzXHOHJjQFP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fEzXm1oiBRYpF1k1Ew39NNJoKw7+WMI6Hj/0faxHC2RsOopljmbbn6ki6VDUMt6+fKq8TL/LGxPU7som2CinTgzkRcTU+qN/lDD8AryRRsEY8P7zhgj2ijU73iZFO2miP56pvtPYvMAaExNg38FUrqaXqBCMdeyxmheyMfL7ag8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UGrcD4YR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545BMN1U018506
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 12:24:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jrwG038kdxUPyHEoYbFPB3qB
	QgkZiGSoqj/0yEoAKXQ=; b=UGrcD4YRberod5zPfWFWWzSj4pz3o/+siba20sxr
	ypLY4v/gEV/YMnJYVmMEsQYwIpsuQyJjeBAyTBqbm8G1ZAbgRcjmXZkv+w9XM///
	/dyu7IR0Z97MEDsFJs/v6WhcTz2tyh2PlR5zdMNnOFk//QKksTyjwfwh3z776QET
	GL0kC37+WU09Ah5Wh4Jr3gYYJgU+KJKkDdqEtfr9Vqse7tVNKNNOOa1ZgbQcDYBl
	+p2y/PR/7+kAuOaVW59qFKUTMx4IyAMQr3Tfcq6QM9jfyHuRnGCSkFTCZYyFiTyB
	5PWbOZqzPdwM7hwTxjIOBPWeugjFWr1ANNWhal79FgsRaQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbh7c16y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 12:24:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5750ca8b2so108282785a.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:24:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746447882; x=1747052682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jrwG038kdxUPyHEoYbFPB3qBQgkZiGSoqj/0yEoAKXQ=;
        b=JqL/uxwtlY0sLEwcqpdabi5g5DP86Frfd+yc/rV9zoUop9tTky7bW3wijQDqL1U854
         eWk1u+1GryYvX8gW1tfNUZAYTInJ32uRN8k3BkQzVzVvT/EX+NJgMPayKJU2knHOK02i
         RlorN12s1V5uvopcWaGC2TRQzggXnDUFiziojAIabYMx39Sl/Baid8iUywiA/XGODmrz
         m9DSjjup/z7wr5v7Vg43fv/Jm8yBnUZMjyUD3ya1EbBeNPwSZ2NngzvP9XYDiTArWWSc
         5FLHFBcII6XpDOb6jCDk8QWRKCE+eOco63FSV8Nikfw6WyGGMll6kbP+VS5fVoUhzasj
         tZKA==
X-Forwarded-Encrypted: i=1; AJvYcCUg+vq2tkaESKAglGQM4seYIotWAR9zNtP8SQcwudjyPzc4gtxkva/tJyXXIo9YrRoCLkUmaktJiHDf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5EHS5g/b5L5L5uyo7unDvycFPYFSLAaned0OUTxl01nS25F+U
	Ks/cM8IeJtm3RVb4nQ9yXhwaKdIgKZX08oXDL+D2xtc29PjS/RmmEkQNqQTmP5Yojke/S60Qc5j
	d7Rsc19R6rkj2ZOg6vtJSVF46xAFilyD5aDTtlpbx9PZFWMVNDL+rNwGEOUE7
X-Gm-Gg: ASbGncudIzbKQUNYlfN84q6rCM7Wotnt86baH+8riWIv0KbJ61JKox8wOU5NwQtok75
	z2M+h5irSGA8nVZQ3px1CxxIDnDhQDNSanEJHqaQd+ZLVRgOqBFiGsOL6ZQUzmov7nQVXkfIWrn
	bTM67YVVJQ8DabOgil+T8KxvUDDzc3cXKh8UYtdSIWOUVWRTYqQ4FjBD0/8Mb8WSUx+VRugwmlN
	KJLuZQGnB+H7yOTiKif5QNivpLN+opgxVqpUO5upkb+Cs1gJxK4DrdMxMdNjDGaN7txY8DJpfy2
	A6FT5MK4l+gGVB+vJLXX3ri31q7Y3Xv1Ru33c04R1Q0oMUV7QZs/8YwkAAUwCKGsk5Tde/zf00I
	=
X-Received: by 2002:a05:620a:1723:b0:7c8:39ea:5166 with SMTP id af79cd13be357-7cadfeda709mr1534149985a.55.1746447881948;
        Mon, 05 May 2025 05:24:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQVHNC/X4ldrU2WAdEOvCrJu1jzAs9DRDibWoLBRLHVoPEZe8mcE+qcx8xAVSbPy2Iuw/oTw==
X-Received: by 2002:a05:620a:1723:b0:7c8:39ea:5166 with SMTP id af79cd13be357-7cadfeda709mr1534144385a.55.1746447881548;
        Mon, 05 May 2025 05:24:41 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94b16b6sm1706106e87.12.2025.05.05.05.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:24:40 -0700 (PDT)
Date: Mon, 5 May 2025 15:24:39 +0300
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
Message-ID: <ygd6givaigkmypmaufpeidkqauoujcndm2xemi5pm5zue6ou7j@zonusie3tuap>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-21-8cab30c3e4df@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430-b4-sm8750-display-v5-21-8cab30c3e4df@linaro.org>
X-Authority-Analysis: v=2.4 cv=fMY53Yae c=1 sm=1 tr=0 ts=6818ae0a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=cHRrv4Hvtu4HjFTugcMA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 9shnCZ2RGkk_RcxMJHjq6G-yg2k_F67v
X-Proofpoint-ORIG-GUID: 9shnCZ2RGkk_RcxMJHjq6G-yg2k_F67v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDExOCBTYWx0ZWRfX4Y+F6jpHrMgc
 K996x3ktD+szB5JjP1u0QyiLdWaMjxw4bwCFLNALbV3F98zFEE0+WF9lDHPYu/DHbJU5WLrXet7
 WiYp4KOzc2Xkd9R2lKRD44/r7QMCTlA2CN34PoKnG3ygUOpzRFyAuPrKUw8h42jUPL/IFJmPHmG
 N7VpF1K5AAdVDznlWpZZaT/BwW4cDbPXbWm76TkNgqztj+kd3gI5zrS0Q5COfHDqSQnM8EqITgc
 MZypZ2p/+1ODJkIcHeo3xse2XHmn2EpKDdh77/S1G1hN0tk43rFeMPc+3cf06/ES7lbo7x1cP4C
 n++3O6r4hsA7uWztMQTfgUoM1MXr5daGrYLtaIJ+jFwzElBwfosfcRKJNNzKHAhmNJiPgdP87p1
 wrd9XjX9mzfjoyPUD64nhNJ0ffpiZvkq+56MwfJoVd+bJPiYz06wHt594PCwX0C5KngS1FsG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 spamscore=0 mlxscore=0
 adultscore=0 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505050118

On Wed, Apr 30, 2025 at 03:00:51PM +0200, Krzysztof Kozlowski wrote:
> v12.0 DPU on SM8750 comes with 10-bit color alpha.  Add register
> differences and new implementations of setup_alpha_out(),
> setup_border_color() and setup_blend_config().
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v4:
> 1. Lowercase hex, use spaces for define indentation
> 2. _dpu_crtc_setup_blend_cfg(): pass mdss_ver instead of ctl
> 
> Changes in v3:
> 1. New patch, split from previous big DPU v12.0.
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c  | 19 ++++---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c | 84 +++++++++++++++++++++++++++++--
>  2 files changed, 94 insertions(+), 9 deletions(-)
> 
> @@ -175,12 +246,19 @@ struct dpu_hw_mixer *dpu_hw_lm_init(struct drm_device *dev,
>  	c->idx = cfg->id;
>  	c->cap = cfg;
>  	c->ops.setup_mixer_out = dpu_hw_lm_setup_out;
> -	if (mdss_ver->core_major_ver >= 4)
> +	if (mdss_ver->core_major_ver >= 12)
> +		c->ops.setup_blend_config = dpu_hw_lm_setup_blend_config_combined_alpha_v12;
> +	else if (mdss_ver->core_major_ver >= 4)
>  		c->ops.setup_blend_config = dpu_hw_lm_setup_blend_config_combined_alpha;
>  	else
>  		c->ops.setup_blend_config = dpu_hw_lm_setup_blend_config;
> -	c->ops.setup_alpha_out = dpu_hw_lm_setup_color3;
> -	c->ops.setup_border_color = dpu_hw_lm_setup_border_color;
> +	if (mdss_ver->core_major_ver < 12) {
> +		c->ops.setup_alpha_out = dpu_hw_lm_setup_color3;
> +		c->ops.setup_border_color = dpu_hw_lm_setup_border_color;
> +	} else {
> +		c->ops.setup_alpha_out = dpu_hw_lm_setup_color3_v12;
> +		c->ops.setup_border_color = dpu_hw_lm_setup_border_color_v12;
> +	}

I tried picking up these patches, and choked on this one. This heavility
depends on the DPU fetures bits rework patchset (mentioned in the cover
letter, it's fine), but granted the lack of the reviews / updates on
that patchset I can neither apply this patch (and its dependencies) nor
steer Krzysztof away from basing on that patchset (this patch provides a
perfect example of why that series is useful and correct).

Abhinav, could you please continue reviewing that patch series?

-- 
With best wishes
Dmitry

