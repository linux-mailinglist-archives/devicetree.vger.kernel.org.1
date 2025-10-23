Return-Path: <devicetree+bounces-230256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6C3C00F16
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50CAB1887EE6
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC42A30F7ED;
	Thu, 23 Oct 2025 12:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ERRuSMqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E46C30F542
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761220881; cv=none; b=csxqeqqXWItCA20+bkXIL8Ko/ZPKASxQNG26Nwch01j2Khktb68BiSWpOMhzuA3DRCUJ5Ngr9ecuAehLadWMF1z+h47kdiP4KU6p0fORKkoA58WLmHVWpzGfpY6fezmoxv8RGOuKUI3YEcatBRrrBrAYAxfNOuoW9sOPFC4M9B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761220881; c=relaxed/simple;
	bh=xgyOM0BDgOZaPTwKa5g6GcOjB33jTljJLH+mwWNy4PM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MRtvpTcBieGK3R/9MeDvPeahPuuv3li7cK0lXCkSs010vaYw49bdv3yAB6yjQM9Eaw0f3jf59U3K3fLGSxgTU3pZMtMKobSX8WLyz93rXI3NabD96rQr86i8BSPYhVCZ5WBqaaTvR5RevKBuOlwBvxkQXa2p4mFLrfXXY+rC8jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ERRuSMqz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7FCho011761
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:01:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=goeKdp/WYHhJWHlaAy8C59qV
	Sxphru8lrJomaYpY0h0=; b=ERRuSMqzetasBthM5RxIR9p9b2FPm8/Zi9gQWLY0
	SWJKLQH3qGe3Mq76R8uVPpVyCGW6AW4M+wZYJS71aQ53AZ+Nf/5DX9OLRbl5YVyW
	6qwP1S9MqpLVA0Twp8C7onzazAZ7yLPI4VIwdcN37Ve+vNEmQZhurqmqh7mpB45T
	2lSiqaiSCf7Uxy5HbdFZ4D2n9ujUKPqm0fjLd4M1R6tiEWB9MrI5FMxCphd0eb4+
	8Iq0Ow4f6r4c9YyLla5aA5Qj2ChVclZVYiHAdvpK8Ybxhcvi6xc4XhKNcT2x4pt3
	jF8MdXeQ5d+4ji3YvPL4ROa5SEEAWvGxM48KJyDiXqbwFg==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y524afvr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:01:19 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-54bbe14a05dso5629845e0c.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:01:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761220878; x=1761825678;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=goeKdp/WYHhJWHlaAy8C59qVSxphru8lrJomaYpY0h0=;
        b=Yxl7fCQQIZC25taK6oAGGGusDKtpBAqg8mb6Zsvb0XsBh1okzhXOPQ7uAOoEISTz6f
         M8Jleb+FHvY06MvUi2HpGYKgsxzWXi9Pc9/KVnnJh72ipwGB5/3+NynuUOKBG4lpk4da
         dVIagIpSMQyj/zKw8psfJ8nGRWbDd3QOdWaCaOKmeTi37jaMbKyxFyMJwH/AXE+gufAf
         Wt1Uuw9gthLCKg4hxVPfbeaZlaMklVJZCRCiM8PmDnOh9MDBjXmiDh4Wzfb3E7p7+95y
         19XBgF7xqU6ZIvd3bsH0EuiuM0b2Cs0xGpQagd8dkGDEgHggHn4gzOx78wyud8T86oA4
         V5eg==
X-Forwarded-Encrypted: i=1; AJvYcCV5Rlz2X3/cLRwfALSuVwTbK7rVb+f9TAt91QQGhmmZMWbm4dxbTFR1E9Cf5MTrhfQ/ofMSsoV8NRe/@vger.kernel.org
X-Gm-Message-State: AOJu0YyuODWhUae0PnZy7Ow0xT6pU9X4+nBKSV5J8WjUZGlvu47+84f2
	uRK4ITsE+cTkV4U1atih7wYPYTevka6ZwbVWp9qcywdi1p6Cj0JgF087+etkCYmmKKcri+4X4R0
	dt3hPtt/ttSbNuNTtZZfaBT/ywAzGrd7LXeDkM32R9eg2PMkh8eW3FGa679FE06eb
X-Gm-Gg: ASbGncsr27OCqqVthG50MLfONUJDi/QAEGO+IaoAKoSftQ7VUXcjyVakOKurRTBgTgY
	o+XKKfDmZ5U7PrECzfIz6NhqBtB5tPI7ETbOA+6YjBfARdPVonTF/fAneCKn9nhMO3nb0mvblAp
	5JNIG4yJTlMIxEQJBl8viahi48bucbF2YSy2aEsmYtQSOao/E3u/zjTHLwzu5RvcnEyV1zYNxf/
	LSo5j7+5OzGLyZrWoNpd+cOvmqovBw3lDZKt9nqbq/LmaeNlFyb7UzyL/VlxPSmwzDf2PT6k5nk
	aFntsgQAXvVAK/uk2MEFSwE18SgrYpmBgtx4lfNhyiPy8tIZMYb12fhZGb94RcybBagX64T9ESC
	Si3UVyNU3IuUjVaOemjAkjQfmca3u137qjwZsbsULNCJbXBHS65E4GZLzrJZO9xXYaOqU5Gb8fy
	suAkeeEOVrJns7
X-Received: by 2002:a05:6122:c457:10b0:54a:8deb:21a7 with SMTP id 71dfb90a1353d-556a1fe00b0mr1375547e0c.4.1761220877773;
        Thu, 23 Oct 2025 05:01:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYxrTX1ih+hGngZciP+iHFYfeFoyaVhepsbpmQ8PJc+gldudoSg8FgGhwuto7pKkQZUsY/ew==
X-Received: by 2002:a05:6122:c457:10b0:54a:8deb:21a7 with SMTP id 71dfb90a1353d-556a1fe00b0mr1375509e0c.4.1761220877262;
        Thu, 23 Oct 2025 05:01:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378d66bbd08sm4052251fa.4.2025.10.23.05.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 05:01:16 -0700 (PDT)
Date: Thu, 23 Oct 2025 15:01:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 04/12] drm/msm/mdss: Add support for Kaanapali
Message-ID: <7yrjpxx2uqb7ox6yk55hsdj2cgexvcoqjjutmhnjokciy7pnl4@a3zdvmn7wmto>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-5-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023075401.1148-5-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfX50u9A8ZpuxiU
 0W3dq5IuljzlEIuCYSBcP+vkz8XtZEEVYdInObOQANJovNMacCIJ7OcbxrPZuZZIKRGM92ZQZVj
 yvyx3kwbgUBCOxaiaD13Qx2PhWjhfhjj1/ekCsLYGrhgUSeX+BR5X0xRupMp1v920HFRjtNZh3I
 RM7iQxlb0JPC+nQsByycoeRdLA56yYHBeKlp0m3GO//PR6yWofUqWmmsGJVMj5SEoAULTeB/6VN
 J/72OX1TCcwS+MZgmvC6vGHr4WE+W/dw4Y5nEG0DYn6iHMMBwHvXhBOd7utcL3pBbw+4O5g6M4I
 ABLAlqPnIH24ro2FE/CPUCiuvfSzqyb/c0JZLSsXJrMF4/2CmOzCv4MLe8mD6B03QjnpvJHZf0X
 v24JGfD0aBuQm3B2e7IaQkCQRMMIwQ==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68fa190f cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FJEgi42wPuteDVaKdBsA:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: gErRVqJW9JOPl6Qu3lEnPpOmzNbkA5gH
X-Proofpoint-ORIG-GUID: gErRVqJW9JOPl6Qu3lEnPpOmzNbkA5gH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155

On Thu, Oct 23, 2025 at 03:53:53PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add mdss support for the Qualcomm Kaanapali platform.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 22 ++++++++++++++++++++++
>  include/linux/soc/qcom/ubwc.h  |  1 +
>  2 files changed, 23 insertions(+)

Where can I find the UBWC config for Kaanapali?

> 
> diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> index 2d0e3e784c04..665751d2b999 100644
> --- a/drivers/gpu/drm/msm/msm_mdss.c
> +++ b/drivers/gpu/drm/msm/msm_mdss.c
> @@ -243,6 +243,24 @@ static void msm_mdss_setup_ubwc_dec_50(struct msm_mdss *msm_mdss)
>  	writel_relaxed(1, msm_mdss->mmio + REG_MDSS_UBWC_PREDICTION_MODE);
>  }
>  
> +static void msm_mdss_setup_ubwc_dec_60(struct msm_mdss *msm_mdss)
> +{
> +	const struct qcom_ubwc_cfg_data *data = msm_mdss->mdss_data;
> +	u32 value = MDSS_UBWC_STATIC_UBWC_SWIZZLE(data->ubwc_swizzle) |
> +		    MDSS_UBWC_STATIC_HIGHEST_BANK_BIT(data->highest_bank_bit);
> +
> +	if (data->ubwc_bank_spread)
> +		value |= MDSS_UBWC_STATIC_UBWC_BANK_SPREAD;
> +
> +	if (data->macrotile_mode)
> +		value |= MDSS_UBWC_STATIC_MACROTILE_MODE;
> +
> +	writel_relaxed(value, msm_mdss->mmio + REG_MDSS_UBWC_STATIC);
> +
> +	writel_relaxed(5, msm_mdss->mmio + REG_MDSS_UBWC_CTRL_2);
> +	writel_relaxed(1, msm_mdss->mmio + REG_MDSS_UBWC_PREDICTION_MODE);
> +}
> +
>  static int msm_mdss_enable(struct msm_mdss *msm_mdss)
>  {
>  	int ret, i;
> @@ -296,6 +314,9 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
>  	case UBWC_5_0:
>  		msm_mdss_setup_ubwc_dec_50(msm_mdss);
>  		break;
> +	case UBWC_6_0:
> +		msm_mdss_setup_ubwc_dec_60(msm_mdss);
> +		break;
>  	default:
>  		dev_err(msm_mdss->dev, "Unsupported UBWC decoder version %x\n",
>  			msm_mdss->mdss_data->ubwc_dec_version);
> @@ -552,6 +573,7 @@ static const struct msm_mdss_data data_153k6 = {
>  };
>  
>  static const struct of_device_id mdss_dt_match[] = {
> +	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
>  	{ .compatible = "qcom,mdss", .data = &data_153k6 },
>  	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
>  	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
> diff --git a/include/linux/soc/qcom/ubwc.h b/include/linux/soc/qcom/ubwc.h
> index 1ed8b1b16bc9..0a4edfe3d96d 100644
> --- a/include/linux/soc/qcom/ubwc.h
> +++ b/include/linux/soc/qcom/ubwc.h
> @@ -52,6 +52,7 @@ struct qcom_ubwc_cfg_data {
>  #define UBWC_4_0 0x40000000
>  #define UBWC_4_3 0x40030000
>  #define UBWC_5_0 0x50000000
> +#define UBWC_6_0 0x60000000

This should be tied with the ubwc config changes as this chunk goes into
a different subsystem.

>  
>  #if IS_ENABLED(CONFIG_QCOM_UBWC_CONFIG)
>  const struct qcom_ubwc_cfg_data *qcom_ubwc_config_get_data(void);
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

