Return-Path: <devicetree+bounces-249302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A7DCDA833
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B97E4301C438
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAD1D2206AC;
	Tue, 23 Dec 2025 20:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NTLYo+gh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iiQmgB8K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7466617BEBF
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521863; cv=none; b=ljPpJzPUgD5BV5hS3QEVyjqbYX7nql8L0h9+Beu1AbW1pxP2XelNBBrun4JfA/I1lbc5crZmvHPcYue/A993RwV6Wh/rApJassw0gXH0r+Pnr28rHytSW6D30yGIN/2RtgQjzqNXyLKAXyr8U1Rq8qxW8obpn/REgxMKWAQ098o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521863; c=relaxed/simple;
	bh=ajyxTDXf0xp2drcTnnIGbQ3DiQYBFWUBIjjjjVKVRhk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EzAK/N0xmTQ9fi9KWREyjR8zuUJA8UqKLnQUCpXvyTN/sW8wy4ZIVTvPVGBRD7MbEU23RGARQQvtqT1uH5Q8e+81g9bGsCcLOR6w2DLDhjNrAc/DGL8xGWAvvXcySmWffzMWp6cPHpx1hFd+uIR4+NT+bySjmxmhrUnHiEBt7f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NTLYo+gh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iiQmgB8K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNGO7oK1018073
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:31:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4yTVMLxBUXz2CKuwVwliNlCR
	EofHqymY8nVV9CVfBco=; b=NTLYo+ghkVY3NoHrMcq+VeAlcZ77iHAfH8Le/LeC
	Tflsjyif2npVjh/H33xLZkqVr504NG6E5+xqv1sn0951bMLjnADSp/eFm4F0J9sp
	C+euByLRthWqa47IjYbbAOeP/R1AuAvQ7gW3zb4NRK2Ml0zYWXofO+Bhg/hBD+qn
	MRFwTDRuBaG9CBMYazT7eTulPYlEaXHIfYJxxJpWpYs2Opb/GYUWylSjj06SC3Lv
	I73MuvKxytl9I3g3HxWn4TO07XaChpInDpFbh5XF7h09V3JivpChGcQB8l5QqGhb
	wv6AvOFQauimwNcG2LzjAqc/Ye2pLKHa9AcfAC94LmGrHg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs8shb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:31:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f4d60d1fbdso64249291cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766521860; x=1767126660; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4yTVMLxBUXz2CKuwVwliNlCREofHqymY8nVV9CVfBco=;
        b=iiQmgB8KLaTCs2LHLlfq+/WSBkhqqDz0beeCdrAjERA3aOeADeohQPlvNzt/+JejXg
         M6tis01hg35CTR7YmFe4YAvd/zv3lZsT2QXs7vkgFLPy4ZTMMYOghPuHu6jIqUw6DlQT
         XIGz4Da+1BvnRZ26fOw1aO7QkpjdBIHb7CbKq9MH2MYVPIwgaqLVSmsHGJfcz/J7vHtl
         iW+uDKHn9m722mjmD+9Gt9Xu5vWNO8Q2zv7afmp27VUsqB6BIELgArVKdVncJyVlL7h7
         EPlkadop00rSawr+2mczDYvnl34CeuPrqLJwyMsvuAGjtYxv554J7fcdygOQemJI3E/V
         KJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521860; x=1767126660;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4yTVMLxBUXz2CKuwVwliNlCREofHqymY8nVV9CVfBco=;
        b=esZDS0JC/tYS3mue9c8oPGk80/a1x8HoR1MwxRkv9mT5flKmWfebCGSG8L7aH0wwkd
         Dr5tfstOirV6vl0y9yL2Jhao2RpaAzB2ZyhE9fLuoSxOi6QkjKJ0ngNGroR0pXK3yEut
         mVSDUbgo9TSXDMisWkHxzIDS7VyKFdW5+76g54XwkVSQwJv53lfjoIbfoWDLQxfGvpha
         CsXMXSEYZfU/vSFY3E9BLe2vU1uWJ3H+l5xSEupbywE6pLkCdmkeedFy7808tW7GV80D
         w7OLDjgAcX3j3tPhdWmX//9YMWlKTA0OJTUDmTXzRJy6renpQmgeXDx2EGMoAdjl+6as
         AwOw==
X-Forwarded-Encrypted: i=1; AJvYcCXaRa51vzbTCy/1TegoqzxYELe/pu7mE/nZCOBod58Hpwzs/5B/5MKkmfVhQzTv8PuZWyU0lESvLzls@vger.kernel.org
X-Gm-Message-State: AOJu0YxmSjghrbkQ/t5wHUTyliC9KzRhKNe+j6ZX8WdP7BTRkdnYXpfZ
	MLTqoX14JVOgmlNd4UgTxfRj4qxS1m7vR5L0RI3VGKvVJiHVFeuN0KgihP7ViLDq3CA4jqKYmdP
	mknSra1TjsFRwUg/roS/Uvs2TmbfJZFANcr+++J8Vtp7hxyOAY/tj2uAXQpMY+kJn
X-Gm-Gg: AY/fxX5RercU49PGzFJPAZcE+Vd3QhK93+/5Y83Fl/mzpvZWE8z7OGWdtxbLvU5cQvO
	0TYwNAKDjE3V0NjgD9fvcvOsZRmuqnm6Ax7QsmiT5/KX7hXRC1FcvcEKOMaGRY4hh3TmflcVq6/
	FvrzeVwxTGmJ7N0DXDXgQR+Dgigz18CYkSCpTANI/O6GpCLMotEGKY44VmfLaL48Umu8fbgEehi
	6zg7j5ruu+bJr3E9+g3bt/O2zcGr9QJ4FjPEDREP42yqBKtd+DjBCQNImkYW32LV+g18yM9HVbx
	oDqvaQpPMAZ0AChPU2DbUIrox6MJUhQbfbiCvml/DpysMbQbtoGNGICrhwAA+S8f8aj6EYq7J3N
	L/LoJZ625YxlZ17sPdijzehlF1u1bbbBdz++JzmJciT4ORGwRMcAJjtgJ3/7BSr0wIl0+HLTDIe
	/6xs4JY58PMVFDvZhUOa9kXP8=
X-Received: by 2002:a05:622a:2515:b0:4e8:a8fd:e00 with SMTP id d75a77b69052e-4f4abd6fd05mr238717471cf.43.1766521859692;
        Tue, 23 Dec 2025 12:30:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkymYoqedGNX8RtCYK8eQPHwf5IoC9fyqOpxWcuOypEFxU4OUDP0i1kmyNmN0ZGRkzYM4p+w==
X-Received: by 2002:a05:622a:2515:b0:4e8:a8fd:e00 with SMTP id d75a77b69052e-4f4abd6fd05mr238716991cf.43.1766521859184;
        Tue, 23 Dec 2025 12:30:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f2e6sm4377066e87.69.2025.12.23.12.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:30:58 -0800 (PST)
Date: Tue, 23 Dec 2025 22:30:56 +0200
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
Subject: Re: [PATCH v4 10/11] drm/msm/dpu: Add Kaanapali SSPP sub-block
 support
Message-ID: <fto47ksvr6i4fxl52yqcdgatut7oqepgc7d2slrn4gr7yi2xei@s3bnte4sdk5f>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
 <20251222102400.1109-11-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222102400.1109-11-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE3MiBTYWx0ZWRfX4MMX/v7qr7Pm
 kunTtaQdvKeJDrOfZrvMMOGLBP8kyfA7P/kadbwaM2BzRUKUUAKBUdSN3t5asjvkAgTRVhACA8m
 yrFFpOPGPspRic5IwJQ09X1rx3rwuXAERuiCPNLI0cR3hE8IZuQ7wZPjKZLlBj/3LfEZT2rcRnK
 nBzg2xPfULV1uUThHZ0ADgQqTLmR0lrx2NlofY79DqXMjF1VXinpsW0ZhbVU2Vlf3pvnjniEhaz
 dNhiMIed4ZzR+CIr6nxdcG6sxQAzqfjbEAWxzQdmLsvP6+DlRKWQI/7DDgNt8Bx+cVAhoHEE/br
 osId5xdFH89OB/a8XsB5M7wMwGlIYYPw2yPNj1VBwjUh/b2AXZY8nhDLq/KiG7nw324Wp8WLRPd
 qVqdv5/yVZPyKhpl1JB4u5TkHJw/+11sqzX8eeh0Fuy+MQCEjTGLDalLqGY+8FoBTfaVv2WNPGS
 UiHw3uHOD/G1auHJO+w==
X-Proofpoint-ORIG-GUID: 6pA0y5HZB7M6HOV-gpTEw81tAXvXDLwt
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694afc04 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=T7gXAn62BuYQ5x_KxX0A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 6pA0y5HZB7M6HOV-gpTEw81tAXvXDLwt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230172

On Mon, Dec 22, 2025 at 06:23:59PM +0800, yuanjie yang wrote:
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
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   |  13 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |   4 +
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c     |  17 +-
>  7 files changed, 371 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
> 

> @@ -291,9 +292,10 @@ void dpu_hw_setup_format_impl(struct dpu_sw_pipe *pipe, const struct msm_format
>  		if (MSM_FORMAT_IS_UBWC(fmt))
>  			opmode |= MDSS_MDP_OP_BWC_EN;
>  		src_format |= (fmt->fetch_mode & 3) << 30; /*FRAME_FORMAT */
> -		DPU_REG_WRITE(c, SSPP_FETCH_CONFIG,
> -			DPU_FETCH_CONFIG_RESET_VALUE |
> -			ctx->ubwc->highest_bank_bit << 18);
> +		if (core_major_ver < 13)
> +			DPU_REG_WRITE(c, SSPP_FETCH_CONFIG,
> +				DPU_FETCH_CONFIG_RESET_VALUE |
> +				ctx->ubwc->highest_bank_bit << 18);

I'd prefer if this is pulled into dpu_hw_sspp_setup_format().

>  		switch (ctx->ubwc->ubwc_enc_version) {
>  		case UBWC_1_0:
>  			fast_clear = fmt->alpha_enable ? BIT(31) : 0;

> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
> index 478a091aeccf..006dcc4a0dcc 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_wb.c

This commit was about SSPPs. Why are you touching WB?

> @@ -148,6 +148,15 @@ static void dpu_hw_wb_setup_qos_lut(struct dpu_hw_wb *ctx,
>  			      cfg);
>  }
>  
> +static void dpu_hw_wb_setup_qos_lut_v13(struct dpu_hw_wb *ctx,
> +					struct dpu_hw_qos_cfg *cfg)
> +{
> +	if (!ctx || !cfg)
> +		return;
> +
> +	_dpu_hw_setup_qos_lut_v13(&ctx->hw, cfg);
> +}
> +
>  static void dpu_hw_wb_setup_cdp(struct dpu_hw_wb *ctx,
>  				const struct msm_format *fmt,
>  				bool enable)
> @@ -202,8 +211,12 @@ static void _setup_wb_ops(struct dpu_hw_wb_ops *ops,
>  	if (test_bit(DPU_WB_XY_ROI_OFFSET, &features))
>  		ops->setup_roi = dpu_hw_wb_roi;
>  
> -	if (test_bit(DPU_WB_QOS, &features))
> -		ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut;
> +	if (test_bit(DPU_WB_QOS, &features)) {
> +		if (mdss_rev->core_major_ver >= 13)
> +			ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut_v13;
> +		else
> +			ops->setup_qos_lut = dpu_hw_wb_setup_qos_lut;
> +	}
>  
>  	if (test_bit(DPU_WB_CDP, &features))
>  		ops->setup_cdp = dpu_hw_wb_setup_cdp;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

