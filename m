Return-Path: <devicetree+bounces-221904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63993BA3F3E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:52:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 910B0188F2F4
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45DC61A76DE;
	Fri, 26 Sep 2025 13:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="neWq3WgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09941A3A80
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894717; cv=none; b=Uy3RF3gwJtxMeFizkPbXEYUi8o5/NaYD31scbzzoGsJrN5uoLuViUKSoKYLpnC7qekbyNmd/urjhv8s4guxvlsZSF/wjJguM34qS46V7SYH70h6nSXhnXv7xhVgXHf2b2HCnFSPWU1FyPx8OKoYUPZf4/3Gc8RVZnaUdPLSt+cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894717; c=relaxed/simple;
	bh=LfB0mz5LOzC+e6wrSMhNOgQOH1dRQsiWByoBEiGi408=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H5hS6hQ5Sfiz2A3HHKHhCvoLU5nGOknNsA9ov7v4DMMnkQu6CMw9F5EOIIi9x0DIjSfxs3TcO9RJT5jSymZ6vYrH2TH/PZWbyB4SK7TClDHN/WmmAgaMvgCr2cjYFbT5k3TSglit1bLl47mtrusaTl1yTVZCoJLa3Tm3Hqa19NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=neWq3WgV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QBAlHi019620
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:51:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oWhAI0VAdx5gJX6gdXCdFadp
	6xIz1oz4Ky85VfVuHlQ=; b=neWq3WgV5JI4jS54Rti1aBWRVmSsHiLpjdENlaOy
	aiev+6faw8XbnAb+BNkJ+ER+6bqiD9s7T1ZBkdHvP4xpP8xL3xv3AN3RU2GFU2hu
	NW9PtWZ/XK7Dc3Sq8PyMcubuolAHywNeg08RWb7yCjA8y/NmXxp7cSabAnuqU7Xc
	iSAjSRaF24g0R5qpedkpEfRI7VNKHGCnToKMTCcwQjK2hpCrdo2mWjA9wnHTqYud
	u+/LWL2kQPkggfppnPMnFgwlfaTCrS+jGjhHCir08k6A6NaN4F54+4pRoQJg0gOo
	etaN2og3s6jxRj2amO6wS91ATyezWhsrzEXmBDmp6DM9Hw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49dsqrgdhh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:51:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d9a3ca3ec8so41245781cf.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:51:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894714; x=1759499514;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oWhAI0VAdx5gJX6gdXCdFadp6xIz1oz4Ky85VfVuHlQ=;
        b=vPDU4V527nAAiDmOEtSaqYK7NlkUjDlRcUSIYqGZPBUpsspD1ZovqgWccPcW7LFK5p
         /OetrDu3vqxFnuXURZDMFeUOjKpICJXP0E5zSsSZ9rQyzRK6A87LBsRKK8C0vbOKskoR
         MSP3F7VJojUvKn+uwuKzvZlZDdlPq7rz1dmwnHejMVTyPrAIK+KnyLgTEWaEbFEeF+Bi
         QIVSA9cKZOyq+mnjP1UhwAuLDP336JdjYyoK6TWGbjQLaJMVHKogj2swmZGuYK0LrbmW
         1zLGoslIjxwjMqAfi0dQ7mamowrHYRhspsPnVZBn7f/8wweQf80IZra6tmnfjopxQrjx
         w6Xw==
X-Forwarded-Encrypted: i=1; AJvYcCXqb1IXnKsxdp4fnVLsvlQyXI6FX9FAe0B9dpfwnPlxBiam9+zRiGB8rl4onzw+ZPlyBO1KXOGKY+z8@vger.kernel.org
X-Gm-Message-State: AOJu0YwWUYrTenQRwhLpE9Y0ONkETzzyfB24GT9gYYqiE/+t8j4N2pzr
	D3E32UBBLoORnz/y83ikfbBXBTgTscgH8d2be0cf6VyBHll0j5m/hGInLkKqlPFvWruI5rPKcJG
	Bw49wnQCwoVoDNXw5SS0EVNvaq8MKoE/DdiAnZVXyrq/D4xlvfKpw2TobgfSnf9o5
X-Gm-Gg: ASbGncsoVYinrT52CMa3VF6TRJi7keLku7CiLARl7457D7fndAWWNv502vM+hMowgN2
	KnQsO3XTU6z6Q80CRu3gBVKmTLPt614uArcFoeyYPhPAjM+ZQevxpEOx2MIC+Zszwuptbd01Z0C
	Db7m+WHfjpM78heIgLKAcQfr1FPwcNfRjGES7USqM1OMSSQP972KzfJtVtlrJZlYZH7sdhbURLS
	CFmDfgv0TLPKYejv/9DjGXip3a62UMZjEFDwP7q4702wPhswXnLjGpAq2f2yfj5et54/GBYvliw
	4b2PaMFTNC9E6/nucziR3Y8NoIhrMdjZ1Zy26mN4WAfaOpRD2oJ4bkJ2/fNdf9DGYFTOOTffaaI
	if3TCNOh+8L+lMEGHk+gQu/0J4AaBGZNZv8rM4V3j8ZFFIyCTC2lB
X-Received: by 2002:a05:622a:5a85:b0:4d7:c9d3:cbb6 with SMTP id d75a77b69052e-4da4c96e753mr94986451cf.72.1758894713665;
        Fri, 26 Sep 2025 06:51:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8YkJGYw1+CDemqZBbYI88MpytkUH1UcPY/ucGdfsLVPLTx/bR3Xx/PZiHi0DE/0nYLVZtkA==
X-Received: by 2002:a05:622a:5a85:b0:4d7:c9d3:cbb6 with SMTP id d75a77b69052e-4da4c96e753mr94985671cf.72.1758894712878;
        Fri, 26 Sep 2025 06:51:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb771029csm11547581fa.38.2025.09.26.06.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:51:52 -0700 (PDT)
Date: Fri, 26 Sep 2025 16:51:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
Cc: marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
Subject: Re: [PATCH 1/4] drm/msm/dp: Update msm_dp_controller IDs for sa8775p
Message-ID: <c4o6bcvl7cgmvklvnwj7togokawvaiqmiye3sgdlugwftz45bh@g7vfktowo5hj>
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-2-quic_mkuntuma@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926085956.2346179-2-quic_mkuntuma@quicinc.com>
X-Proofpoint-GUID: XKkqUHXVCgeJwgaqtB7XJZ66v9o8fFvo
X-Authority-Analysis: v=2.4 cv=d8n4CBjE c=1 sm=1 tr=0 ts=68d69a7b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=tFSzMcqD3SoeBU5fSnoA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: XKkqUHXVCgeJwgaqtB7XJZ66v9o8fFvo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDEwMyBTYWx0ZWRfXyf0v6HITvjE2
 GorEwtjZho/voWMkkJ+Y3y1uSPdRif7N5G1WLinVcMKrQ/Oalsh+5QwwUVPklwJPn5R90lIkNwE
 Cxsd1VAJg7cRPvwoDGhP1h0OVLd+Uezt+THzJxe0bWBWTE7b2+FLZsdQVuqN6NuRk1vkvco3DdH
 SX0yxVkE8ern83qIOushI94I//lphLw4mIYyzLHGw5i7WbiAhhgWfrkgEUUHqoB5TL7LTMQgp1q
 7wz/WYUwJyt9qPQaLKNMUo1aCL4DACW8GdfdRJoqK/fpvRAQp5pksxm7n6vSOHTkMbE8x1O+Owc
 BJdtdrEqZv22qVU4kUVb0bdLeyz3MQUAgfSL+FViu08ucfH1TgF4Noqz24yvKvTfKUljjdRJjXd
 c1QTwzwTVLM1sDABuCmcTPb2/X54wQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509260103

On Fri, Sep 26, 2025 at 02:29:53PM +0530, Mani Chandana Ballary Kuntumalla wrote:
> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
> for each mdss. Update controller id for DPTX0 and DPTX1 of mdss1.
> 
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Missing Fixes tag.

> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index d87d47cc7ec3..f247aad55397 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -133,8 +133,8 @@ struct msm_dp_desc {
>  static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
>  	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>  	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
> -	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_2, .wide_bus_supported = true },
> -	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_3, .wide_bus_supported = true },
> +	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
> +	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
>  	{}
>  };
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

