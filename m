Return-Path: <devicetree+bounces-230252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCA8C00DFE
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA3044F9444
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E919230E821;
	Thu, 23 Oct 2025 11:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J6p4C73S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5753C2FD7C3
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761220130; cv=none; b=uqnQFyAAYjKGp+IlzPPTixAd5rl9OWSRqws6w2e1V9DZ2vOgUs8+LW9vi+YbNgznOIY5Y6lUhM1dcmRsvVPwfcsQgaFepHZTQg8c5sHQuBz5G9Q8f9d56OX6s3OwtONvXIqmFIe9aDYp48SCIC76pXMjDwlZTwfv8PLOmSDIWFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761220130; c=relaxed/simple;
	bh=1SdNvE1cuwEq0NOTggB8fDJC6aA076G4wX9dvNePykk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cpnNTkMafUgr6LEZqhlvqh7q3gW48GhTl3C9uiAN26KSaDmmt0KbII9jCerMsiQYLG6kTWNI3zpw0rutIL/8EaQ6vAdylZtNu1JB2VIQrkIWAN5DARSGmSQONl1VjEdLayw9WvaTn5U5DGiSmGQuSLfAyGBOmjlf44qciWn5pyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J6p4C73S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N913HM024900
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:48:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8JacSqvTb8Izp/E+9oHQMd6Y
	7RxdSS+i4X6P9XWgoUo=; b=J6p4C73SrKh6N6ouWigYKFKpO8AKvdx39XOUokle
	b4AKubnJm3NGQAIRVA1wDV5zT6LXck6tRUJJdZ5JhbPIy2gLf/lLH2IZkqkhtD12
	X7k7kOUYNys6Z2MFYnuI1eAYZIBeyFSwO37BGdW6fcO/6qj9YCcYZDnNEJE2koI+
	4PHNvwRxnjMKFtHdpkBe/ZKhR2mb4k6sKhAekJEZSH7JTGzq/12KzE8/omOjLfQ6
	bMhknSOhXK6t1gPCIsICY+lBZ8TYZ5mDsDtU5vrD7GYYtxtQ7EProzeagE5OwNuR
	d/g2htTeoPKg258Pqooz/Q05su16xWZYTVoPxI9pGbQAFQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0p69v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:48:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8a3f6becfso5345231cf.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:48:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761220127; x=1761824927;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8JacSqvTb8Izp/E+9oHQMd6Y7RxdSS+i4X6P9XWgoUo=;
        b=nlmyqiXuzDjpAUPucMnXHmRhofP9K66WiT1HG2HMr2WxYNTeX2JgI4KprlDq0FW5ZM
         BLz+5mObox2TCnyUkrR7Rr0IRhpKIcD5zHAUCL+pFyY6dNbKTIHtjTiTtViXA7TCpohk
         MFOCmA5awZa8g7OkKlBlwXfIX04fQiG8FPFbFBysynkKEHjfRLOFwf52YkEurXscUk+O
         zQXnCrGGz5duDWlIYa2datx2pwZ+ekDjKsKIlpLe5wHAlOTwCU8gDN6ERBCmLozhvvmk
         /eqR5utsAeBd0Ll62f1tBFshbGuPSXGY6tYuVbW/kPs+rWnEeosSqOkET+vfyhAG1sLw
         T/OQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlnICoJ9o4Tpsg7Fw/sx16KXhp8NzqWtZcJAGgIh22Q1bwArOoVV6vFc9301bSMPv4zaliulSGX8dX@vger.kernel.org
X-Gm-Message-State: AOJu0Yze0s6eUfHYgdUs1bY59M1EhvEB0neVie0Y9vqxwCIuyH4lTK5a
	sa7XczyIYLvJlHlV4Ow8w5EtLc+NsYfm71x1LBmGERAtGlxZA3HGbgzWCBC9QA0rjA2TTPDCXb9
	PS2iyZagpmwK2kGhMuq6UBbcd3yT0UYRBna9wEGHWkfxJn/rPBjGNafIlmJqA1LK3
X-Gm-Gg: ASbGncuTQddUJmSLCYsx8hZjsVORWwR/70hR7UBEPNny6Rw2YJCsRj3mjc51ZfV/hus
	wcoe5rUBLvbbw11BbZXIqmWqP2U3zSyr6c7unSyLmuFrwifXVGPIoUvd+KKyqK7yVREfiwxOZdp
	ddyh1fBlp0WUlzq4u45RYD0puJ9qdR933DntDVO0gareT9XECmYf51UqjFqq0wsELK55b5mzib2
	ahyxS2P/LLbxFfXq1ZAOimkxy35UOJpAGvXHqZx3EEqMV3iR0KYUesFl+9xot6NQv9qWn+eiir6
	vWjCO//bFk8UEARhdd8VEY0JCRJFGQ0+37V3bs1lfIw+hRX8t1KT2Qwb/QCUit/4AiiBDJmUVNf
	W0PBbFlxb8ebMm/qx27owKV+1x10sH+4SXxkPBJiu1TZi3z4ewBpL/YrcBZTwZwxtzRDZke7uMx
	su1+GBFL/v9p1W
X-Received: by 2002:ac8:59d4:0:b0:4e8:91f3:ce80 with SMTP id d75a77b69052e-4e89d35c00dmr276317651cf.40.1761220127354;
        Thu, 23 Oct 2025 04:48:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGslKTOl2FnZpR64N0uFwx++ukkNxW4h01yUb6YToY7alXQDtuES4qDK8dNrLcsuDQNbwzhXQ==
X-Received: by 2002:ac8:59d4:0:b0:4e8:91f3:ce80 with SMTP id d75a77b69052e-4e89d35c00dmr276317331cf.40.1761220126814;
        Thu, 23 Oct 2025 04:48:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4d2070csm678165e87.83.2025.10.23.04.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 04:48:45 -0700 (PDT)
Date: Thu, 23 Oct 2025 14:48:43 +0300
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
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
Message-ID: <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfXwVYRVj1M7rRa
 /8brPvmwCIr75dXzDWpZ2ybO46TGm56+UaeNkSOui7UA5oJIIxvOgX+7f3MV6Mjd3jePH2rMTaP
 yB5xtCM7MJMDUnjZ+fmQ47n3iYKm1eHn8Y0cZ7lgHiTPwmpwPDluQawZuGPK5bmbzlLxrqukt97
 UhoqyAoP9oicjXfEGuXoWfIUeHfSWVNTCxPCdP0+bBchh9NAK4eXIm+8iB45qXuDP+cgZ7XBxhn
 y8U23WUqhTF1Pv7IXTQU5PDviYIz1tRKehAP5QuiFgV4b/YY6T2cgeHFfcXKXCkuuZEzZJpVpaM
 wo6jgiW18isNedJmIDtn4G/Kb+k//6xjxW9Hpk+3DcG6NkpulbpQv307F92LoJVQpENJBbmacCE
 C2HfnLgSzwG9j98OwqL1mjCb7q7ImA==
X-Proofpoint-ORIG-GUID: lfHdG8VQtmew1PLQpViDLSJZ1TTMXwaa
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68fa1620 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=B1tu1MuE3RNTBmX3WhkA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: lfHdG8VQtmew1PLQpViDLSJZ1TTMXwaa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add DSI PHY support for the Kaanapali platform.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 23 +++++++++++++++++++++++
>  3 files changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> index 4ea681130dba..7937266de1d2 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> @@ -577,6 +577,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
>  	  .data = &dsi_phy_4nm_8650_cfgs },
>  	{ .compatible = "qcom,sm8750-dsi-phy-3nm",
>  	  .data = &dsi_phy_3nm_8750_cfgs },
> +	{ .compatible = "qcom,kaanapali-dsi-phy-3nm",
> +	  .data = &dsi_phy_3nm_kaanapali_cfgs },
>  #endif
>  	{}
>  };
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> index e391505fdaf0..8df37ea50f92 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> @@ -64,6 +64,7 @@ extern const struct msm_dsi_phy_cfg dsi_phy_5nm_sar2130p_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8550_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8650_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_3nm_8750_cfgs;
> +extern const struct msm_dsi_phy_cfg dsi_phy_3nm_kaanapali_cfgs;
>  
>  struct msm_dsi_dphy_timing {
>  	u32 clk_zero;
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> index 32f06edd21a9..93e53fb8b4fa 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> @@ -1518,3 +1518,26 @@ const struct msm_dsi_phy_cfg dsi_phy_3nm_8750_cfgs = {
>  	.num_dsi_phy = 2,
>  	.quirks = DSI_PHY_7NM_QUIRK_V7_0,
>  };
> +
> +const struct msm_dsi_phy_cfg dsi_phy_3nm_kaanapali_cfgs = {
> +	.has_phy_lane = true,
> +	.regulator_data = dsi_phy_7nm_98000uA_regulators,
> +	.num_regulators = ARRAY_SIZE(dsi_phy_7nm_98000uA_regulators),
> +	.ops = {
> +		.enable = dsi_7nm_phy_enable,
> +		.disable = dsi_7nm_phy_disable,
> +		.pll_init = dsi_pll_7nm_init,
> +		.save_pll_state = dsi_7nm_pll_save_state,
> +		.restore_pll_state = dsi_7nm_pll_restore_state,
> +		.set_continuous_clock = dsi_7nm_set_continuous_clock,
> +	},
> +	.min_pll_rate = 600000000UL,
> +#ifdef CONFIG_64BIT
> +	.max_pll_rate = 5000000000UL,
> +#else
> +	.max_pll_rate = ULONG_MAX,
> +#endif
> +	.io_start = { 0x9ac1000, 0xae97000 },

These two addresses are very strange. Would you care to explain? Other
than that there is no difference from SM8750 entry.

> +	.num_dsi_phy = 2,
> +	.quirks = DSI_PHY_7NM_QUIRK_V7_0,
> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

