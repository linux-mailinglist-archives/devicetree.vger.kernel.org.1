Return-Path: <devicetree+bounces-252846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2184ED03554
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C1553258A55
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CEB52F12CE;
	Thu,  8 Jan 2026 13:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VkPQZ39X";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q9s+gDD6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CC04D1F96
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767879999; cv=none; b=GAVSQDRK1SN2QTj2b3ShVs0pmhY3VPc+32668VZEfxx1mSSOK4SpV92J+M3K71aCbwljk0uNzDJ7O/fwnWwt+WGqFFlvOMWY//wML4LPb71aVYV2NWj3innhGA39jNd8MNscbwhoMyldAdcoyl5GOJj1kq+Bp4pbYaOoUWqzyC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767879999; c=relaxed/simple;
	bh=mZj+ePUEErYWWWpWjLcKakjTJoPH3mxhgDYX/QSnktk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YwySMKNCkdYuaHw8p0p2U0sBR4dcC7dvttDtZCdFBh710xaY+6XNl7rqyYrrBErR33Gz4Xx543sqcxHPeciBuKqZ/970wNbbV6hac5KnN0Tjbbm30QV7ppPYpWVUA/zmLPi3hqRA/McqPOh7BzZPgTCLBtU8MwENj2t7V5DPP04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VkPQZ39X; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q9s+gDD6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60884KWM2239586
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 13:46:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kZU9D7A0bMPBh/K2lCh2in/v
	SVoKAdenRjv1onBswg4=; b=VkPQZ39X206YaoJUEQzEX9iks5qHQMjDYPeapjrM
	OStvzEUW2ATCKSiPOEqwoqHSvXSQpMWP+l8BvwTNnfMNQ1qbi0g4bp796CFjQDlf
	dHKk4zJVFlMsYDU3DhkaMI/00BfEUFZcpIxqbrAVi5qrD/veY1aHm1KEZeiHPSDE
	SjyH52T4xYtHsADH30HEvv7dCso9HgDFhwTFvfmuuXo9laikZy7csdYuGQs6d1nj
	vtyqbqWXH2TXkEYqrKU2xtWQwylAp4YEMzjPYhPLDNGO2gfvpg1C7wA5ADva/QFO
	F2txubh1LumCEF3GPfdyWLaGk8hPzTGvGEEQce8HvAdbaA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhqwg46bm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 13:46:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2dbd36752so821565985a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767879985; x=1768484785; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kZU9D7A0bMPBh/K2lCh2in/vSVoKAdenRjv1onBswg4=;
        b=Q9s+gDD6u7HbwslwxORoR92JzgVVYm5x/sd0zwXz/YeahaL3dF/L/jzUGIrKAdvibU
         WCW1Is24bAOynv3JjEkyjF1s7OC6XPJNUvdijV66/ZJvaNm+7dfs+fM1zqSPL+LfSv0X
         G6asWzLuk7hfZlVckICh0xKUxF2crp2nafDPzVKoz8RP8iqWpm0xiRODDd3e0IaOyB4z
         MCEuFSb9j8A8cQADhrGWMsl3u5vTPL/tLIirNmi/WWXOtmg8dx10nHWJFjs+bKFUMshQ
         xkkXsfBPeLstcAyTqszjagnGoNfuSFkYbdsiGFGNtz9erPZhf1SOWqHomP1/DNu6qTys
         i/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767879985; x=1768484785;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kZU9D7A0bMPBh/K2lCh2in/vSVoKAdenRjv1onBswg4=;
        b=dEsazYgfAwps949nAqSxAx6aVNQ/btxcPBDBwt0HqtuWdwkjm9/CffAln5da/1tXUq
         GjBZT30X/2MPZNJBVFA/apDaApowR4W0Ip3wnsHJFAqyXtf8e8RNlnfUaOAX1lLMNxtU
         qY2ORw9uDjDKiHWNY4va/4a5O8nFQ+eFRJMjEKIzuApbSDFpvOALn6iFJbF8iuh9CPML
         NjoOJv81q0cc4nRcua3+6fJ0UbzZsMs4lpEFq14NmeI5k2X9PGZVBW38llJRaHMjDEaN
         FMoODYXcqiKRGQJtv5Jvoi+B+avggWkj4/buMNjgSoAbWIVRstCde0oQmHrut2ZOx9bq
         3HYg==
X-Forwarded-Encrypted: i=1; AJvYcCUpWMsaaPmXpgoQIgAEvtun2jQh1O4rfV+g2V7xVoMZB8WL3shlbx8BuUlt6swVHBgwignNTE7/9TTr@vger.kernel.org
X-Gm-Message-State: AOJu0YyL82JZ0R01EH4lZV6s5Y/UwLMGcaHHMT+PB2bLMQy8T+YiWrfU
	x3w2CGdoUNxcKYhBR+2lm8Io/NZlzMUSRHwx2kI/akd55ITvLzRVYxVEEWACJFzbJyxEclLqLGf
	tbG2VqzGuyE2KQCJ5/n9PpMq04Aav+TNi0AH+LSSBwpVXCI1ZLvmaGpKoxwd4iq4V
X-Gm-Gg: AY/fxX67OMNUi/1GPVw5wcIySeCkQ9JpYEoXP4ygUl50UCjWnHm0U+ijrJ/90RL2Pte
	iy1Ae9thFfFeh2ErtHM7dDmDfcdhtIpwugaa5+zuRcaFnLQKLSJMQRmewWlIMYF5p5nGHmKhtRV
	fO0hTlIDJyKLAO6RrKxVbNcDHoByWlT38ktWTAaZcmpKQodre16+iizcvlBi5xj5F61vyZjfcH+
	O2jeBL9gB0WLeQ5z+EymYvLLHUn3rQpM2nbPiNPqmOABqIh3vA0jgUDRKtrzkV1YQ5mQsf/IgMG
	QyOYsjmreKqVvKqucp5AIBJ0LK388X/Y8Oz+wWxKOzh9zbDIhjo3OZDJnAAcFYQcxhDYA+/bl2Y
	IigG+ZITzpuuPsYyWNTms/hcE48n8fcRGZRMAFB8OXT1OWR5C5d/LwCMIJbHT0lahWVn5rMCa/R
	UFS6xo2GuMwCZJhGAlVE6mqo0=
X-Received: by 2002:a05:620a:2847:b0:8b2:e6e2:9a0a with SMTP id af79cd13be357-8c3893fd7f3mr888025885a.59.1767879985017;
        Thu, 08 Jan 2026 05:46:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGyz41Dmq4KLKJe7ZgOODVgCo90nVtYDOjJYppi2nc41HLeTr6IbQ5JXvANeFFzPdqpXQ1PZA==
X-Received: by 2002:a05:620a:2847:b0:8b2:e6e2:9a0a with SMTP id af79cd13be357-8c3893fd7f3mr888018585a.59.1767879984471;
        Thu, 08 Jan 2026 05:46:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8a9bd2sm16940871fa.29.2026.01.08.05.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 05:46:23 -0800 (PST)
Date: Thu, 8 Jan 2026 15:46:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH v5 10/12] drm/msm/dpu: Add Kaanapali SSPP sub-block
 support
Message-ID: <k2orlbxktyqhuuoievurde5vglpbx2qqhkbmnasfnefax6p4tv@7hhmnyomtxyy>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
 <20260108085659.790-11-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108085659.790-11-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-GUID: RMQivs3YWFL-VcxqFtESijLKyVy8dF8V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA5NyBTYWx0ZWRfXzyxyb//avmyr
 YifmNomzblWwc14csz7DNbMRprKsoT2Ep6/gZYnHj/kWaWx/SqbihvDNJTGKLXBHqquJZeG67L+
 GfnCWVYlQu0oqqLkIZDz9Ta/ZuzrvJeFfZCZsiAqL5awGTk+W7hGZro4y/Moa2R40CwbwR4rTKZ
 CkcFttJu/rCLQX0IEr8NRCiBaKeMpKQrCusM3iAWMUmH82t+hBcapB6HMggo85jE76TQEGjJ/qB
 SA4xfyp6gTGvvvklIBjrj6fdEZZ0Y9YvLLkoZsaYrgfyT9S9rvuedzX3/k3hXDtP2HfLNsr5meE
 5ExHXEIAlCxRyDoSdHno47tE/M8AifRb1x4bumndxP/xR1xchTWRsfonZZXRo0pTiG/ODxlCjbg
 0aysyG5uLpu6DI8TIOM1E/Xc0bF8UFtGOH86Srlm8qFfFJQXyMJ5oEi6dI0+QK553moXM2ur44Y
 64jNu3UQXDzuIyiZ7lg==
X-Authority-Analysis: v=2.4 cv=Pa7yRyhd c=1 sm=1 tr=0 ts=695fb531 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=GJ_0RPxpAChO0skCYF8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: RMQivs3YWFL-VcxqFtESijLKyVy8dF8V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080097

On Thu, Jan 08, 2026 at 04:56:57PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add support for Kaanapali platform SSPP sub-blocks, which
> introduce structural changes including register additions,
> removals, and relocations. Add the new common and rectangle
> blocks, and update register definitions and handling to
> ensure compatibility with DPU v13.0.
> 
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/Makefile                  |   1 +
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  14 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   |  14 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |   4 +
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
>  7 files changed, 371 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
> 

> +
> +void dpu_hw_sspp_init_v13(struct dpu_hw_sspp *c,
> +			  unsigned long features, const struct dpu_mdss_version *mdss_rev)
> +{
> +		c->ops.setup_format = dpu_hw_sspp_setup_format_v13;
> +		c->ops.setup_rects = dpu_hw_sspp_setup_rects_v13;

Wrong indentation.

> +		c->ops.setup_sourceaddress = dpu_hw_sspp_setup_sourceaddress_v13;
> +		c->ops.setup_solidfill = dpu_hw_sspp_setup_solidfill_v13;
> +		c->ops.setup_pe = dpu_hw_sspp_setup_pe_config_v13;
> +

>  /* QOS_QOS_CTRL */
>  #define QOS_QOS_CTRL_DANGER_SAFE_EN       BIT(0)
>  #define QOS_QOS_CTRL_DANGER_VBLANK_MASK   GENMASK(5, 4)
> @@ -475,6 +482,17 @@ void _dpu_hw_setup_qos_lut(struct dpu_hw_blk_reg_map *c, u32 offset,
>  		      cfg->danger_safe_en ? QOS_QOS_CTRL_DANGER_SAFE_EN : 0);
>  }
>  
> +void _dpu_hw_setup_qos_lut_v13(struct dpu_hw_blk_reg_map *c,
> +			       const struct dpu_hw_qos_cfg *cfg)

Will it be shared with other blocks (DS, WB)?

> +{
> +	DPU_REG_WRITE(c, SSPP_CMN_DANGER_LUT, cfg->danger_lut);
> +	DPU_REG_WRITE(c, SSPP_CMN_SAFE_LUT, cfg->safe_lut);
> +	DPU_REG_WRITE(c, SSPP_CMN_CREQ_LUT_0, cfg->creq_lut);
> +	DPU_REG_WRITE(c, SSPP_CMN_CREQ_LUT_1, cfg->creq_lut >> 32);
> +	DPU_REG_WRITE(c, SSPP_CMN_QOS_CTRL,
> +		      cfg->danger_safe_en ? QOS_QOS_CTRL_DANGER_SAFE_EN : 0);
> +}
> +
>  /*
>   * note: Aside from encoders, input_sel should be set to 0x0 by default
>   */

-- 
With best wishes
Dmitry

