Return-Path: <devicetree+bounces-148944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B18E0A3DC92
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DD1B17960B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18DF61FDA89;
	Thu, 20 Feb 2025 14:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X7Oq9c8x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792F51FAC4C
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740061155; cv=none; b=umNaSwi5p+9Fzvf1ECCjFVMw1xoMKDPP3XEqJYOYm9B8ZZUIHLABX5WugA/6Ag4VaOvwv+1IWs3s8qMKlpn+4HRg48cetbI49i3Z594ozc+9IoW0c+052BmbAvrNkfXPzTfO7sI/04aGQQdjOh4z616Td3YeQWOOD3ZGD+qXHiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740061155; c=relaxed/simple;
	bh=EOKvgRMWbNRK5S4FoZ8sqAxDMmYVYMCk/LxtLibO6Os=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O1p4LHBX5e2NhKvU7U20r7LP9jprU+bMC8iiHVyIHw8RxlWeBT/7xOjxqVFOwWq6WcONNrUQHxcwz/V6Vy5Jps5CpB+ZjeUautqqUXxuO3ZVGgdX0zqoXAFkVhr/RlWqJdOapcCpBN3SHt24jK8qlNy8F9BmDv6eZCT8ORi3//Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X7Oq9c8x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51K6rg7F031358
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:19:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZzGpuNpEMvmvsVtbZHCixwxV188CGJ6yTEUyvKSil0I=; b=X7Oq9c8xcZesA4wx
	IxZ3gZCZVPgvDMOOY5hRHipJYxUdD1kO6ByZvqvjWmVttH/RixOKn9yGd+mvnBji
	roaCWYOc0P/NHzuIK/T1zYLqwH6G0s04qEHPQUNO1pBlu0x5Ydzk8q+20t0/aKBo
	3okbRmfStWCawdjOyGQRrOHA1uteA76w1MhoO/y25gCql6zmMh27oVXRWcglr2wH
	yMLS765/jvbW3YrXY14Tu9n0SQhPd0mOKguMrIpWKffxvZI8biwz+jlAVYgELqMS
	VCTQzlfdVZE3oV7zN2O4T7/x2vFCLQhRemEKtulAPl62H606349dwYknDlJTNaFq
	+i66Dg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy5ebpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:19:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e1b2251f36so2078726d6.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 06:19:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740061150; x=1740665950;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZzGpuNpEMvmvsVtbZHCixwxV188CGJ6yTEUyvKSil0I=;
        b=Fmfsv14Q2pniFpsH0ruVaIQOnccaOFBbR/2zgFBcglJMzwlhQbwRuRTEazjrKUMlOn
         y5HyPVELTKiyhRgywmiCZ6hpQAXHjbAG1sZ8VuP4Xq0FkY2K2cN1PibFz5xM0UiKbWvi
         QtCIUuvzHNTBcUs9wpy59A8kbKu5zu1Fz5HZSjrHiYl8sEnfYQGTQXZgXkTl00g4fpcx
         zBCeRfZ6QycbRtGPYrFNpnMrigGW3uIKdEWi0hY4nDReKki5KQS9qNH5L5UkoiUWa/O7
         uCUyqyMgr1yGMCufbHJz8coeAsKLhUSyvuI98doAX0diHoZ4A6E0JTsqoqJ5H26TAAq+
         EWwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUg963Zf5K/9KZ+zen0rvVV51G/aSvOBRM/e1Pe4TyFjAGYRohdxlUII18A2tZe4unvLyqAf3ad9zXp@vger.kernel.org
X-Gm-Message-State: AOJu0YyyTvi0v+M6qwd9KKL7D5eNJmdEteoucJJ1+sLnqzJCibb5HxFJ
	xMKjhLcvm5tVRP649nLKwcFgWOCqmi3NL5GSmvn4P6yGh7uAbCS8K0V9wwmbmZw+OJ9pWBHVZ5/
	Gci/69KzaAZUhir7sTZ8/0vr1AfepRc1rebHIMl5UHs/72DlZ4d+ArIfiV8kL
X-Gm-Gg: ASbGnctNveu0M5DZCpR3DzYXkw568Mw9CyohKxSkW3l6uf3XsFKyTNTsZ34e+55TEt2
	KtucTWJ2w19zr6skRfQrnhxDBqyOmhOtV6SPrUZyh6eHF93nugcgC1gX8FWy9nuTLT/59kplVx2
	TNzRf2ZGlHVtXfifTzsJ5mHir8xQM77ytIZxBAT5rP6csRopIY9g4kB/jRhKWR/l1Meb8S3CWCT
	FL7N3HupeUx0iw7F1UKiAdWhBldXGfxmr5wgT6ik/wlPV5A4CvKdhuQqfKeZXFpBjR0L6gCRY29
	otH+0J7DC4DKWyt/cOdphwxPVUP8jUtNKtDFyRbuFCbtr5xuF4jsLv22qt8=
X-Received: by 2002:a05:620a:7e8:b0:7c0:b018:5930 with SMTP id af79cd13be357-7c0b0185c4cmr395262585a.15.1740061150197;
        Thu, 20 Feb 2025 06:19:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGplcBIxuc1qJMHH/uMdBHwF3xTcMp0hOINAPPRPBlGB53/bt9zTWLON5PGnGl2kKOLrka9A==
X-Received: by 2002:a05:620a:7e8:b0:7c0:b018:5930 with SMTP id af79cd13be357-7c0b0185c4cmr395260485a.15.1740061149834;
        Thu, 20 Feb 2025 06:19:09 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e03aa0b1f7sm8859956a12.2.2025.02.20.06.19.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 06:19:08 -0800 (PST)
Message-ID: <00659634-c602-4382-b4a7-ef32f4d27dbf@oss.qualcomm.com>
Date: Thu, 20 Feb 2025 15:19:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] drm/msm/mdp4: move move_valid callback to
 lcdc_encoder
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
 <20250220-fd-mdp4-lvds-v2-5-15afe5578a31@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-5-15afe5578a31@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7t68Pb2oJvFEY2YCVvrQHv9qqj_Dr9he
X-Proofpoint-GUID: 7t68Pb2oJvFEY2YCVvrQHv9qqj_Dr9he
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_06,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200103

On 20.02.2025 12:14 PM, Dmitry Baryshkov wrote:
> We can check the LCDC clock directly from the LCDC encoder driver, so
> remove it from the LVDS connector.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h           |  1 -
>  drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c  | 27 ++++++++++++++++------
>  .../gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c    | 21 -----------------
>  3 files changed, 20 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
> index b8bdc3712c73b14f3547dce3439a895e3d10f193..e0380d3b7e0cee99c4c376bf6369887106f44ede 100644
> --- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
> +++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h
> @@ -191,7 +191,6 @@ struct drm_crtc *mdp4_crtc_init(struct drm_device *dev,
>  long mdp4_dtv_round_pixclk(struct drm_encoder *encoder, unsigned long rate);
>  struct drm_encoder *mdp4_dtv_encoder_init(struct drm_device *dev);
>  
> -long mdp4_lcdc_round_pixclk(struct drm_encoder *encoder, unsigned long rate);
>  struct drm_encoder *mdp4_lcdc_encoder_init(struct drm_device *dev,
>  		struct device_node *panel_node);
>  
> diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
> index db93795916cdaa87ac8e61d3b44c2dadac10fd9e..cfcedd8a635cf0297365e845ef415a8f0d553183 100644
> --- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
> +++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c
> @@ -348,19 +348,32 @@ static void mdp4_lcdc_encoder_enable(struct drm_encoder *encoder)
>  	mdp4_lcdc_encoder->enabled = true;
>  }
>  
> +static enum drm_mode_status
> +mdp4_lcdc_encoder_mode_valid(struct drm_encoder *encoder,
> +		const struct drm_display_mode *mode)
> +{
> +	struct mdp4_lcdc_encoder *mdp4_lcdc_encoder =
> +			to_mdp4_lcdc_encoder(encoder);

Crazy linebreak

> +	long actual, requested;
> +
> +	requested = 1000 * mode->clock;
> +	actual = clk_round_rate(mdp4_lcdc_encoder->lcdc_clk, requested);
> +
> +	DBG("requested=%ld, actual=%ld", requested, actual);
> +
> +	if (actual != requested)
> +		return MODE_CLOCK_RANGE;
> +
> +	return MODE_OK;
> +}

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

