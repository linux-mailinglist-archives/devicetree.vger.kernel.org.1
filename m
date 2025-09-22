Return-Path: <devicetree+bounces-219945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B366B8FC7B
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:39:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5492D7AD7D4
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 09:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3AA32877E2;
	Mon, 22 Sep 2025 09:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bQdCtVh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361EC770FE
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758533953; cv=none; b=o4kxospXDQnMpZXWSLjnEZ3mPA17ApVk8l6dlbKVjmGYrJxMp+g4u/JAIkSG7JKGx4olnjPGaAA3LAqCDgSVCgGvcYa84lXVKQX2N6TlChYLa7tjak35rKD+R5SHZJZe50eiCIROLvsk4yossJIWeobb6YhVgKZ3rdMVcNoJNYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758533953; c=relaxed/simple;
	bh=sYuFd35lcDhboPlpjlFr9bmZUXD05YmQrZz6vSdnrNI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P3u8+ontSLapOUtxwDnaSzaWY+ELPFnIwl1/clSLXlkQYyRb9lUueEE8jcx6jn36b+R/3ckbdJjIKjBQPxCjF98m5qRJPWwfuXjMo13jKutrj7SUngQ/CO4Q2qxAJnY/075ThiR0agrjywUrm3lFdyb5CPs80oGly+suQPX//wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bQdCtVh/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8xw82024020
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:39:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jAx4FwcII6wbkb81OdZIPAi0
	xEvtze7qSPUTGq3+NiI=; b=bQdCtVh/6lGcmYm68OuLAMQHtqjheTJb/MMDTuIX
	knaM7VoUP44mrC3gDXYoNCsEzXPscI1MZ7D7s148GWcdxu8MbQd52HClZyWrVhXx
	mPxQ694jTIsDtrMxgrZ2vCjs0jyqW969j2NmSkqHohKGPjs/ZnYdQ8tmDB9tykzB
	7ZePQjlB33JF3CSz90w8xKrS3jKxF3sBEMcsEnEku9Fm0Dh94yW9t38uEXA2jnxA
	tUp6j/Otyf6HLRHGskP+gM4t/5fTeu+dFYkGl4+foWuRoMGpVj68W9RCMqMYUdwN
	J/T0bVU13J7x5HAOe7J8O56+q/T3+66SB06In7YYNCEjlw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv0v8a1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:39:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5f6eeb20eso150190681cf.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 02:39:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758533950; x=1759138750;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAx4FwcII6wbkb81OdZIPAi0xEvtze7qSPUTGq3+NiI=;
        b=rHSKudII5cPxBXinVMLhnkWd2zbCf7Y1dOrGAV1BIT0LpzOdzPkvGV2JlzjrRNj33f
         zXvvydanT05BHVaCXEz4V9Sha7Bh0sB/ZI7hRmO1U8UqYnmSOpbuNRwvPltcIs0V4rj9
         HPMuTuSCiXIpeuLdhxrkSDfzaIZVRglMxBMA8pP/l6yDQ16U2+tRpCwFajvYsPAGoepO
         g90FVfY9raunmEsCE95Bq/BkvhScgQ68rmipnz9C1sPryUr6ZskdHVjZ50j+pxpA1Q1Q
         WxhkFh9CLQgmbVotV4KwHXw06BQTDcdGkMMVZNZ09WMS21WFLuv3/nmsX6HEJGoe+ggn
         nZQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjs7jxppzIxtbmH/JSTc6zzkeSXnQ7Ql+5hxsETVb44uAsLNOtsMmpeF5ZlKqXJpKbYEILuaFSqGLG@vger.kernel.org
X-Gm-Message-State: AOJu0YyCVoxHkAW4546hXAulBwDt+x60CShoONgwJ7fej/qiqIN9dkUq
	2gWGMG7ikZcYrSpH61xI25CSws3l2T/hG2mBbkbNVbxAYWRQFAkAkohBMuk7yDtZ/Sn2BL4cg5q
	qI8UYDSuW55tPc2mo94gtCyAgfQrTUissLy9AC8ZQj85/+iviXtR5AiYiegmxX/Tm
X-Gm-Gg: ASbGncvw/G5kyWkvl+M4W9ghuL93XfTJjol2fRo42LQrSoDB21X6cruhS9RwEkoe8A+
	UQKTDkPnFoQoRkZzCR1++NptURHbVNnQEoxd981hsdHfCwEZdjuKqarE/Ied1OeTITtQ4+hoWNE
	puprB7g8PMg8PMVE1ZzxvEIHhtDVix4Buzz72fQ0VlUnV8mmuGUbNB5I+54Vmz5/HMrvQUlW+6R
	/bBBwjzNsmaSwVDLWc/YU6S+QjTsqANqqqzCKnVdglO1BTTkWodVKxCrw95hYTsmNpsuYdlo1jg
	4w8FTrwcd7SMTEO9LNSBUpNpgar+mtclLfvGL1jNmkL1sWcY+L3ySg5Ua4PoWYvnLH3ZH7P0AKY
	DJqg4P9ucGpKsv274R73Z84YtPcUyfh8ZCXGfHGjQlCd/zbdTWYiO
X-Received: by 2002:a05:622a:143:b0:4b5:d60c:2fc8 with SMTP id d75a77b69052e-4c0734ea370mr157007581cf.71.1758533948668;
        Mon, 22 Sep 2025 02:39:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE35/RYNkp6gQyQPasMu7rVuD0sFyNJP9oENTXh4ze2R7ETd8aNwunTy76/33FRan7WDLixdA==
X-Received: by 2002:a05:622a:143:b0:4b5:d60c:2fc8 with SMTP id d75a77b69052e-4c0734ea370mr157007381cf.71.1758533948134;
        Mon, 22 Sep 2025 02:39:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57b78577636sm1624019e87.80.2025.09.22.02.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:39:07 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:39:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <z6x3bwb7izywozeran5aq64uw4tiwlbwx4kekoy3vv3vt7qyip@2ibiat5focw2>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-GUID: 2x9BTQy5y9o39xFGlxTWu3NKu19xJtwi
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d1193e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RqUhitWEW_Btmly2q4YA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX4firf4kVibpZ
 K+l8AAnLtX6txrPfUabEmM4pEhZ3aYJXRw2E7sI/SPOYSB8BJ5dYL0NhhKWU3/3FDm19vzhIath
 zMbUGNqacb47UNb3BFWjDulRNDugXNkGUUXHQ9d4lIqmmQruAylACX/wgvBOEZGvW06MIW/OtkQ
 cNHqlxLw7zF04dF7O3oBogNZpU4ieV7mbtv7+8ySejaZ8rKJA1iH3fTW6rOABBDVFwuvWKn2O43
 e0rnBPbldsMxrS78oiygfJKHV7O1eFbey1YmZKQpQdA0oT+l2hO99XZXyEgeXIt5+P0sSDsHESZ
 1TgZcODPv0EwfBGaYeeHOIQYm0vuN27hHOKOFkeYNb41yWQKTtWxhJu2sJHuPM1qWNvHse6YPYR
 FA4V9zEK
X-Proofpoint-ORIG-GUID: 2x9BTQy5y9o39xFGlxTWu3NKu19xJtwi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
> path on the old hardcoded list; non-legacy path uses cfg->reset_list.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 3b48c69f9c3cb7daec495ebc281b83fe34e56881..3d228db9ef0882eb76e7ab9e82f8122fa9cfe314 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -335,7 +335,8 @@ struct qmp_phy_cfg {
>  	int (*configure_dp_phy)(struct qmp_usbc *qmp);
>  	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
>  
> -	/* regulators to be requested */
> +	const char * const *reset_list;
> +	int num_resets;
>  	const struct regulator_bulk_data *vreg_list;
>  	int num_vregs;
>  
> @@ -428,6 +429,10 @@ static const char * const usb3phy_reset_l[] = {
>  	"phy_phy", "phy",
>  };
>  
> +static const char * const usb3dpphy_reset_l[] = {
> +	"phy_phy", "dp_phy",
> +};

This is unused in this patch. It should go to the patch adding QCS615 DP
PHY compatible and the rest of the config data.

> +
>  static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
>  	{ .supply = "vdda-phy", .init_load_uA = 68600 },
>  	{ .supply = "vdda-pll", .init_load_uA = 14200 },
> @@ -464,6 +469,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
>  	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
>  	.pcs_tbl                = msm8998_usb3_pcs_tbl,
>  	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>  	.vreg_list              = qmp_phy_msm8998_vreg_l,
>  	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
>  	.regs                   = qmp_v3_usb3phy_regs_layout,
> @@ -480,6 +487,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_sm2290_vreg_l,
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
> @@ -496,6 +505,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
>  	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_msm8998_vreg_l,
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
> @@ -512,6 +523,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
>  	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
>  	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
>  	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
> +	.reset_list		= usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_qcs615_vreg_l,
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
>  	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
> @@ -1051,8 +1064,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
>  				     "failed to get pipe clock\n");
>  	}
>  
> -	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
> -				 ARRAY_SIZE(usb3phy_reset_l));
> +	ret = qmp_usbc_reset_init(qmp, cfg->reset_list, cfg->num_resets);
>  	if (ret)
>  		return ret;
>  
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

