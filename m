Return-Path: <devicetree+bounces-249340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC56FCDB2BA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:25:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 96B47302158A
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16AF62874FE;
	Wed, 24 Dec 2025 02:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ix51g6Pd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PKhwMx7H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E460256C8B
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766543125; cv=none; b=DQyY0hvi+b6XLkCIXgwZtezL/Fej9s8j+KdyGeGWwNaot9zwuKWwxQFyYeiLphb51qpo09o5CIn+odciJm2zoRXgHIDY3G/+Wp3X57WeoWHQaOnqYFdIqt1hBIV7Sai9AM+CVpft7mRCdKmaxaV0GsliMfJdQR5iA/pTmwJVI4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766543125; c=relaxed/simple;
	bh=Q2u8UqAa8GkbUAhuaJ7JCVRvNutUwRpMRuPnQO5w4BU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E7Q+vjDZvQZ8oQzawIm2bj6UqAbpoB/u3sHEn87wsWwzYq4zhA286VZGsZfXU+0m5MkM3h9lYTKjDJ5M6p2/8S8gUkLX868ycaJMf2OraWz7zuO5z7OUFPICDcXRBfBU9a+KPmVDP9PIXpqsx0+xr6U9jYW2WiFuRlnmIr2hRYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ix51g6Pd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PKhwMx7H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNMuwSn3188410
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kJMSIrPxVRjOWG8ys5y3zHEr
	idLtCLiJY6TEPFUHWO0=; b=ix51g6PdfcG4VDQ67f5SKdxUHI0rXS5UYZfVIebi
	Pc45weHyC0n3bs0cUWce04cz0VY/YFxN9r0iiZxNhq6Eim1fjqeFemJIxNNXIPoo
	9ChAM7mRvyHEE2FLB+RT5cpfRVJbJGvvwgb52/eNIrL38riJQSKPFHIb3A/h+ti7
	wEWSkQiNxSZyD73GwWkwk+3ef+SV1yF55PLRHZ4zO/zRp5qBayzUlwDBKpSR1UHP
	HycmFozA3LWOWt7YstSl6ElXQc93O5Rfmh2tvAE57Yi054rS5EDWSHPIvkB8R/Y4
	0b2oh93zeXNO72YrBcobqtEm7zPGIIW73sFCpnC63+VPAA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cuhcrq8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:25:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a31ce8214so135902186d6.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 18:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766543121; x=1767147921; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kJMSIrPxVRjOWG8ys5y3zHEridLtCLiJY6TEPFUHWO0=;
        b=PKhwMx7H4weiHMgDJfNRNXSCbXDiMIQLkA//ajJgjPNN5IXEh+3ZjI7wNx+dXQKKq4
         j/5aZjKCW94DpVmGY49d1n5Xl2uTt2n6zGYvNocadM0MscVgqVqZ7EVoWzI5yTpeQgdN
         RRgzwEBHnQEKiBw3xrvB+Dk8+6sjaqSJM0EsZ2WOz64K6pd9YUcXj/ZYvgSU9QU6prpp
         HSq2aJ5xQrfEVGeOcihFUQgSk+UDkdFOzlLwgvaETc9cSG1cTYmrEq5Xw5oaBqSRBLNO
         1bh+4mPHstG+62P3rlZmPHDxxbC0Q8ROAFIvY77MZeDcm5ph2/cfPdGI2WARTZ3oatm2
         1oLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766543121; x=1767147921;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kJMSIrPxVRjOWG8ys5y3zHEridLtCLiJY6TEPFUHWO0=;
        b=Ue4E5GB/Q2KIZk5V1uiK1feJqqIqc8q3YQ4ukJPN1tZTakfmrT4eHT2iLIiqsHX/tn
         iJgsyqMam7JatYikgLXHBgxzSohMz1xKtcpGk6XX7aVPrCMoqiUBzakvUSBKNSFYeyFf
         hdmjI8RBfdIEflVUhcqgwTQCx99SYtWKdkMhTEKxPfUNEnWthcI5/TD2XtjLXzyN38sB
         eDmgPhlatUkbgBUFPe8G3LZdGitiKaWTAAn7FixML+I5y8Gtjxiylwc/GMKVWf1j//va
         EajlSP2I2Yu8KUoQs1tOT3/ZZdRAOk4OToroSjyEnspFOO3R7JyTLto5qJIpi7jW8Auy
         UwHA==
X-Forwarded-Encrypted: i=1; AJvYcCUKj9oUKeUKaN8X54efCtYkW1qOuCu1Rb14hAhBeNRfpOfxYvAOe0tAfQ7mJS3byEYnabVxGwxXo1HU@vger.kernel.org
X-Gm-Message-State: AOJu0YxZA22e83C+nD6/YjwPMyf2YfG+wBz89uR7bhNVVteLJS6NhpPZ
	D67kqxk6cC+Ld3Y2hC2DUZrTHMNM8qOp7C0XBuFulO25rrdoKRLIcUK1zWz+bYcpBz/EIHofMyx
	pPAGcN+SzoLn82ruQiFMVkzQ6CfCiZ5dd0cyLv0/vuqLQvg53f5ltdAudvUBqJ8YB
X-Gm-Gg: AY/fxX4e1MQk7UrGa5MscGocRTlC0+Z1F9XkrxBtNHA5UbacRAGWYZZ8J7T0jncNPwP
	H5GK0rDSor8Ym5/Eg+D/HP3Zd8aHDVAeJHL5lcObpxiSSVHTY5zbyqJkyGCrcfZW4OEJ3vyQY3H
	uUFA8+DBESBOdLkny7CCebIkC10G0C0bx6KDkS+pjU03i7ttVhAMCXbg7F1sUlk0CSi6fB4BrVT
	km5MfHKm8VAsyMPM+4+I1OJL/5/LQLnLhQhxMJUjJuWLFj6pxAFP0PU76KOpliqXTLrIOsvGTuU
	tlAl/rD4+NYoEmEfRetAybI5Y5bt0v69qIiICx4kD+xH+K9KRhRe3C6GzFft7vxCX1c2DgJgGu7
	Ih0ft/YcMyFymP5LpIB1Kqw4FJ25HKENvSYw6p70OSs0UoviHQFdnn/LyhzHV2m9eROEF1dI=
X-Received: by 2002:a05:6214:491:b0:882:6797:3a67 with SMTP id 6a1803df08f44-88d81278f16mr272973026d6.13.1766543121307;
        Tue, 23 Dec 2025 18:25:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFrNdW+R0PdyyGcoJ/iH1xT1ZvVmp3X4bDgF/iM5YBDtBr8TepTmAOt1PUis9RhdZlldhttbA==
X-Received: by 2002:a05:6214:491:b0:882:6797:3a67 with SMTP id 6a1803df08f44-88d81278f16mr272972716d6.13.1766543120870;
        Tue, 23 Dec 2025 18:25:20 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d96bec097sm117191926d6.16.2025.12.23.18.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 18:25:20 -0800 (PST)
Date: Wed, 24 Dec 2025 10:25:10 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Subject: Re: [PATCH v4 10/11] drm/msm/dpu: Add Kaanapali SSPP sub-block
 support
Message-ID: <aUtPBuotEGDLcz/S@yuanjiey.ap.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
 <20251222102400.1109-11-yuanjie.yang@oss.qualcomm.com>
 <fto47ksvr6i4fxl52yqcdgatut7oqepgc7d2slrn4gr7yi2xei@s3bnte4sdk5f>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fto47ksvr6i4fxl52yqcdgatut7oqepgc7d2slrn4gr7yi2xei@s3bnte4sdk5f>
X-Proofpoint-ORIG-GUID: Faofnbhj1RQTQzBNiGezaFxP6fyJeqAF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAxOCBTYWx0ZWRfXzO8t5qWCeFef
 1ASAhUwgnlbyHj0hL+g9FMoNvwsWSaXWv6ZEqejVvd8YNtJoVQy3cbIIVuIGk08xGF3sPwf8v2t
 fLsqKCTPu2dbK6v4ucM3+zLygV/YO4fwuDhTMNhvIYavqHPMPtS96TE8GnuVKETcvzOrw9QULCe
 zV45tp9MVY0vq83uRJ01NJmHViqMxS9QqNaXokv7JjOrP89ENPapAbwu/0uyfA4WDA83WL4umRq
 rZvZjeGedXKhgUfJVoSYR2D16uM79JBlpDyDoKzW10sQg55t1qSy42hWN1JUm8s0paIa5LOJGq6
 chWgkudjoTqjauMcoDYjC32pgC4z9DHSAjv4mPqDikWuHrem8mDoA7UMMJ7JIpCLoH0qTz92NNK
 xMHzeIXXq1koJDY9cVV5oJhN5hDpTRsGHqxK9OuzIXd1xMrWWPuV7PCjPv2h7YYyBVxXkauLvqz
 ZtX/H7o/A/4tc/G5CNA==
X-Proofpoint-GUID: Faofnbhj1RQTQzBNiGezaFxP6fyJeqAF
X-Authority-Analysis: v=2.4 cv=NZDrFmD4 c=1 sm=1 tr=0 ts=694b4f12 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=EeaRNE0bk9nq3hHqtxUA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240018

On Tue, Dec 23, 2025 at 10:30:56PM +0200, Dmitry Baryshkov wrote:
> On Mon, Dec 22, 2025 at 06:23:59PM +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > Add support for Kaanapali platform SSPP sub-blocks, which
> > introduce structural changes including register additions,
> > removals, and relocations. Add the new common and rectangle
> > blocks, and update register definitions and handling to
> > ensure compatibility with DPU v13.0.
> > 
> > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/msm/Makefile                  |   1 +
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   |  13 +-
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |   4 +
> >  .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++++++++
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c     |  17 +-
> >  7 files changed, 371 insertions(+), 6 deletions(-)
> >  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
> > 
> 
> > @@ -291,9 +292,10 @@ void dpu_hw_setup_format_impl(struct dpu_sw_pipe *pipe, const struct msm_format
> >  		if (MSM_FORMAT_IS_UBWC(fmt))
> >  			opmode |= MDSS_MDP_OP_BWC_EN;
> >  		src_format |= (fmt->fetch_mode & 3) << 30; /*FRAME_FORMAT */
> > -		DPU_REG_WRITE(c, SSPP_FETCH_CONFIG,
> > -			DPU_FETCH_CONFIG_RESET_VALUE |
> > -			ctx->ubwc->highest_bank_bit << 18);
> > +		if (core_major_ver < 13)
> > +			DPU_REG_WRITE(c, SSPP_FETCH_CONFIG,
> > +				DPU_FETCH_CONFIG_RESET_VALUE |
> > +				ctx->ubwc->highest_bank_bit << 18);
> 
> I'd prefer if this is pulled into dpu_hw_sspp_setup_format().

OK, will put this part in dpu_hw_sspp_setup_format.

 
> >  		switch (ctx->ubwc->ubwc_enc_version) {
> >  		case UBWC_1_0:
> >  			fast_clear = fmt->alpha_enable ? BIT(31) : 0;
> 
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
> > index 478a091aeccf..006dcc4a0dcc 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
> 
> This commit was about SSPPs. Why are you touching WB?

Look like I should drop WB part in current patch, 
and add a new patch just "add qos V13 in WB".
 
make it more clear for each patch function.

Thank,
Yuanjie

> > @@ -148,6 +148,15 @@ static void dpu_hw_wb_setup_qos_lut(struct dpu_hw_wb *ctx,
> >  			      cfg);
> >  }
> >  
> > +static void dpu_hw_wb_setup_qos_lut_v13(struct dpu_hw_wb *ctx,
> > +					struct dpu_hw_qos_cfg *cfg)
> > +{
> > +	if (!ctx || !cfg)
> > +		return;
> > +
> > +	_dpu_hw_setup_qos_lut_v13(&ctx->hw, cfg);
> > +}
> > +
> >  static void dpu_hw_wb_setup_cdp(struct dpu_hw_wb *ctx,
> >  				const struct msm_format *fmt,
> >  				bool enable)
> > @@ -202,8 +211,12 @@ static void _setup_wb_ops(struct dpu_hw_wb_ops *ops,
> >  	if (test_bit(DPU_WB_XY_ROI_OFFSET, &features))
> >  		ops->setup_roi = dpu_hw_wb_roi;
> >  
> > -	if (test_bit(DPU_WB_QOS, &features))
> > -		ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut;
> > +	if (test_bit(DPU_WB_QOS, &features)) {
> > +		if (mdss_rev->core_major_ver >= 13)
> > +			ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut_v13;
> > +		else
> > +			ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut;
> > +	}
> >  
> >  	if (test_bit(DPU_WB_CDP, &features))
> >  		ops->setup_cdp = dpu_hw_wb_setup_cdp;
> > -- 
> > 2.34.1
> > 
> 
> -- 
> With best wishes
> Dmitry

