Return-Path: <devicetree+bounces-206826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AC3B2DAD8
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EF2916A3D9
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35BDF2E54B1;
	Wed, 20 Aug 2025 11:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pkTjb6l/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BF42E5434
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755689047; cv=none; b=eckEr/EkSo0s1yja31QdiZmhU2xkWZjFSjY4XfsbegyoKcOGpsLwtiZH+P//M5DgGhtH9zeNHmxH1B8RwaQCznopVt0Tk6fVZGM2uoOkFut9gWuDOJREREyzSRN1N2Q7jfpr8XcJ/MZdK4OgTtVoDrUO8YUVhBBrgd8qSMGh3NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755689047; c=relaxed/simple;
	bh=6G9KmzeLf5YVqaYxwfq4CAXn/TU0rLwA084iscdmPho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CH4u8ZpNJczTuHS7FDCwyJ/hsMY8QWdewiZytiVk2gkL1EQOk4k+2HGiZDgFBTX4ZLUkNVsQxEx6HriW7PqwJeL7YEMdnMcyYKzM+u1tjPQ/noT+OzDxOMDxuoJGOefP3w793muZOVrhhjeDDV9AlWLJdk4v83ihLEyb+G+yHz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pkTjb6l/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KAEvmI006189
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:24:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EuD+Bc6KdiQI4X6+HM5Q47sW
	/v3v69hO/DD7lycWQNc=; b=pkTjb6l/5sHY7Nta+gekct4ANscCgigVpoFzyGwV
	u3kPDnBbdIq0RT9odv2wBpXPPRUVzxAMOSsBFcqFqBr3OVi/JmwA/5ncHJGcWsgw
	d13ZJ3Wbpl7ApBJbNhfe0/EK+TgcS/7WzIUAUEvMTdCcfAPLVk0+NmQMtqx3Oy5T
	0hRGw1uvPRIApF0F1z/uwKJtyRAwCdb8Plr/ZN1K3RZElolv5TGU1Bc1SB+kVEgz
	cUcpEz3A1jOCkH1oMZFdJFoDa8hqMrYu2gB9RJDIx0r6q3hjiATsoduRUZIBd3uc
	ixHKOOg/ulWMVBMsuY88qHjlYnYVOUzHHwwd4Vnk3nqryQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52chgjd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:24:04 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a9f55eb56so144670236d6.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 04:24:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689043; x=1756293843;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EuD+Bc6KdiQI4X6+HM5Q47sW/v3v69hO/DD7lycWQNc=;
        b=XUVnmZdno9Wh1xXJJUktDYIcHh0Kn8FIAgk5IresYHkS65Y+LirhejI0Gg4TCZ9+fi
         QcohTSI+58iq8GWqRpvshYWvJNXEr4A9gPVqiC5m/CuRxIZcG5gtezldNy8zsmxq+hW+
         SUMssmWCM6zRmmkr/fTywXUF9fI8do7Fj+xl3dCT5dFl6gUuvBL9y4g2+njzE/pJaxC8
         W8pGHEAySWln4XkniQ9ueqTYRRx4SkMIDplkK9mfpHDXY0qcH6lnt0xKs++lgsve4hBp
         sKBnuaTXHExPd0Px4BPBTTeuPdDBNfjAa7Ap8RPF/fgRONpQauh3w0+6/szZ5HW5nSLM
         c33g==
X-Forwarded-Encrypted: i=1; AJvYcCUMpoURJ690W5Cw0sv0nREKnFJGw8iWp8rKw5qrv9Oz3leMl1NqI4rVKt68cbJpoVVsQVDweXB4POGK@vger.kernel.org
X-Gm-Message-State: AOJu0YwbkBd5V/EKRxwtGXY6okgypabQ6Kj7nwzXlfjH8biOokkQym6E
	uCmXG29nLqvqNHHZNUXs7+7B9rxbZL5mIndnEYV0D/q+HFIyEI++UROlOmJHti7Kovk9qkOLAkb
	y6TV1hhFCxAQwVbsnvRy4oF5HoBD5++FqRYbmumcgFBLgG8mnpSd2VqsCWS8N9MSv
X-Gm-Gg: ASbGncsORRn8E0JlbEPfHKPqihYD/FHtNVXVMdxtC82DTPRs+CjyU58erYAD47j5a1+
	Nw+dHe7F3MoST+NkAWMeHIREHPo1tKYQorVF0bGhwIZGP8IKkr802Y0KkEJIii6YGqpsPe/4bCg
	NU2qnX+MY+8KTwEGnXO4LtcQ8fPiT962XYgGwJ79NzL4xfDQpxRaa34jwJe2rRhEUtvJTuixyXU
	rCBqHZvVaH6EJrC7iYZWVMbsI3QM7kriEBzJ1ZLPjQ20qJz6rWZlpX4actL8xoaslx0aMJbDLgc
	6OPp3/TfItRAbeQTFqgcF9puxA95Mv+cTLBrYyzjorSoMk7PG3JZUeEJF7lNtIzXXVx68N+NZ1S
	1FajRRPZjfc4HU9SBO5dvVuiO6W62SK/6ZbN3KfN788ZwKvqlUuTy
X-Received: by 2002:ad4:5e85:0:b0:707:5c72:c5bc with SMTP id 6a1803df08f44-70d770c81dbmr22798036d6.35.1755689043170;
        Wed, 20 Aug 2025 04:24:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSZE8hAQdMQJuBZplbqJNg6TajC1+Oy2DlFMUSP4YrC9/AQfNI69mKEaoGj7BYpityTg8m9Q==
X-Received: by 2002:ad4:5e85:0:b0:707:5c72:c5bc with SMTP id 6a1803df08f44-70d770c81dbmr22797566d6.35.1755689042574;
        Wed, 20 Aug 2025 04:24:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e033fc2e8sm623386e87.59.2025.08.20.04.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:24:01 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:24:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 10/14] phy: qcom: qmp-usbc: Add TCSR parsing and
 USB/DP mode mutex handling
Message-ID: <i4rc5siu4q2o4sjk3j4bex7b7qdrs26y6lxsfnike7e7kqdva3@xddrd7vowtlb>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-10-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-10-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-GUID: CVcj95Uv5V2CtzXTnllsPOudcR2ygSFn
X-Proofpoint-ORIG-GUID: CVcj95Uv5V2CtzXTnllsPOudcR2ygSFn
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a5b054 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=zOceuAXpaMaZHB4uI4oA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXxZZX9H0LAuFl
 jirfKt+S91eh2YE3qJ4XQufZdmA4drglrhVhzPrAa9WczxDCBpGvaY9ycrO6EGYX4L7kslTZXI5
 XOsqzWCddRyRHrlIdACa4sT7KsNMzkk9JRh6kZcrSTAT92VGY/PKUP+8Xxl2CiQjMvMUJEYdS41
 N0O6bCZyrwPax8aS1E1dE1teedm8vQCXQAxNWeXkga6Dl0qGh19GtAuYc5sI0GegQTXMcR2TfYL
 n2bOPM3Xd0vHYXSK5rfCJgr5sw9f5uMDKrnhEra0m5oRB0Zwmv81YoaLFrFBW02khviw3fXd0j5
 CokHqwbb2SO5cBoQ0ihl+CHGlR70KQ16td2MmsEWa+8A3F3/KOMFEuDcLO6KxT0s/lcGTh5UZHo
 SFhkO4jYuoKNXC8UP6Cj1NicRZ4AUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 05:34:52PM +0800, Xiangxu Yin wrote:
> Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
> Introduce mutual exclusion between USB and DP PHY modes to prevent
> simultaneous activation. Also update com_init/com_exit to reflect DP
> mode initialization and cleanup.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 60 +++++++++++++++++++++++++-------
>  1 file changed, 47 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index a1495a2029cf038bb65c36e42d0a4f633e544558..821398653bef23e1915d9d3a3a2950b0bfbefb9a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -674,7 +674,7 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
>  	.num_vregs		= ARRAY_SIZE(qmp_phy_usbdp_vreg_l),
>  };
>  
> -static int qmp_usbc_com_init(struct phy *phy)
> +static int qmp_usbc_com_init(struct phy *phy, bool is_dp)
>  {
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -704,15 +704,20 @@ static int qmp_usbc_com_init(struct phy *phy)
>  	if (ret)
>  		goto err_assert_reset;
>  
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> +	if (!is_dp) {
> +		qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);

Why? Don't we need to program those bits for DP PHY too?

If not, move them to USB init call.

>  
>  #define SW_PORTSELECT_VAL			BIT(0)
>  #define SW_PORTSELECT_MUX			BIT(1)
> -	/* Use software based port select and switch on typec orientation */
> -	val = SW_PORTSELECT_MUX;
> -	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
> -		val |= SW_PORTSELECT_VAL;
> -	writel(val, qmp->pcs_misc);
> +		/* Use software based port select and switch on typec orientation */
> +		val = SW_PORTSELECT_MUX;
> +		if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
> +			val |= SW_PORTSELECT_VAL;
> +		writel(val, qmp->pcs_misc);
> +	}
> +
> +	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
> +		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, is_dp);

Write this reg directly from USB / DP init.

>  
>  	return 0;
>  
> @@ -733,6 +738,9 @@ static int qmp_usbc_com_exit(struct phy *phy)
>  
>  	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
>  
> +	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
> +		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, 0);

Why?

> +
>  	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>  
>  	return 0;
> @@ -1045,6 +1053,17 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
>  	return 0;
>  }
>  
> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
> +{
> +	if ((is_dp && qmp->usb_init_count) ||
> +	    (!is_dp && qmp->dp_init_count)) {
> +		dev_err(qmp->dev, "%s PHY busy\n", is_dp ? "USB" : "DP");

"PHY is configured for %s, can not enable %s\n"

> +		return -EBUSY;
> +	}
> +
> +	return 0;
> +}
> +
>  static int qmp_usbc_usb_enable(struct phy *phy)
>  {
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
> @@ -1052,7 +1071,11 @@ static int qmp_usbc_usb_enable(struct phy *phy)
>  
>  	mutex_lock(&qmp->phy_mutex);
>  
> -	ret = qmp_usbc_com_init(phy);
> +	ret = qmp_check_mutex_phy(qmp, false);
> +	if (ret)
> +		goto out_unlock;
> +
> +	ret = qmp_usbc_com_init(phy, false);
>  	if (ret)
>  		goto out_unlock;
>  
> @@ -1103,7 +1126,11 @@ static int qmp_usbc_dp_enable(struct phy *phy)
>  
>  	mutex_lock(&qmp->phy_mutex);
>  
> -	ret = qmp_usbc_com_init(phy);
> +	ret = qmp_check_mutex_phy(qmp, true);
> +	if (ret)
> +		goto dp_init_unlock;
> +
> +	ret = qmp_usbc_com_init(phy, true);
>  	if (ret)
>  		goto dp_init_unlock;
>  
> @@ -1467,7 +1494,7 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
>  		qmp_usbc_usb_power_off(qmp->usb_phy);
>  		qmp_usbc_com_exit(qmp->usb_phy);
>  
> -		qmp_usbc_com_init(qmp->usb_phy);
> +		qmp_usbc_com_init(qmp->usb_phy, false);
>  		qmp_usbc_usb_power_on(qmp->usb_phy);
>  	}
>  
> @@ -1602,13 +1629,13 @@ static int qmp_usbc_parse_usb_dt(struct qmp_usbc *qmp)
>  	return 0;
>  }
>  
> -static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
> +static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
>  {
>  	struct of_phandle_args tcsr_args;
>  	struct device *dev = qmp->dev;
>  	int ret;
>  
> -	/*  for backwards compatibility ignore if there is no property */
> +	/*  for backwards compatibility ignore if there is 1 or no property */
>  	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
>  					       &tcsr_args);
>  	if (ret == -ENOENT)
> @@ -1623,6 +1650,13 @@ static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
>  
>  	qmp->vls_clamp_reg = tcsr_args.args[0];
>  
> +	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 1,
> +					       &tcsr_args);
> +	if (ret == -ENOENT)
> +		return 0;
> +
> +	qmp->dp_phy_mode_reg = tcsr_args.args[0];
> +
>  	return 0;
>  }
>  
> @@ -1665,7 +1699,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	ret = qmp_usbc_parse_vls_clamp(qmp);
> +	ret = qmp_usbc_parse_tcsr(qmp);
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

