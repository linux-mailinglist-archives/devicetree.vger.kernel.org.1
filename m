Return-Path: <devicetree+bounces-186283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2252ADAEDB
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 13:40:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6407516A7EA
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9395B2E2EFF;
	Mon, 16 Jun 2025 11:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gvEwwKbi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43BE2D12F6
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750074041; cv=none; b=lEXBKc1luPBRCleESm5ap7ph/DaORhoFQUQXwWtguBNG3Mwxq54319Uv3CXI2o6bYvRlb/neGwJTLd1v0VBgQSPxahI1K/L9uJd+U+lBwLOeLaYQI+6QYRp4A/rvhBSyYaFLVByvyE4pxZvV6nHsJNs28XJY2zJ8HGjBdDBq/bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750074041; c=relaxed/simple;
	bh=Xxxi8t0eVnWP/vXRQRQ8rPROtZm3BlMfdE2fMVvnFXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mv8MZjkdKbFT59wamivaMKVyG2V0o7O8+7BT5Xp5Z0qw2xrT4x/vp0yEh+NQM/T237R26A9szM7MYhqi765VYl6jrofgQOYmewuYcORljEzxQZ+rP/VZnVAhqXwrRg4V9TwI/0OwDRifA8NsNfIXVeMRyuin+hXx2zsdYRIPAVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gvEwwKbi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8fm35010987
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:40:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sU9oQKJ9CXQPwDKh9YrC0FRF
	yn4HmwQPux4WlLidHvQ=; b=gvEwwKbitZsu1mMmSO0EnwkzfmRzVPolUoc6trSx
	vkcap6Gxd2aLi2LoxvgV4hKseot6Z2mHH+WvVYkMXU/NUkNqWckMj3x/v01E0bBG
	4pmLOjYVTVaW2UhuQ6CnYK/PYyMIp8TTxqLlkZrHVdC9lbNw1xKhjeq84x0sXQ9B
	BcR/Y7NKthVJwxghEvzEZTwfvo9w/bfsZQsH3PpW5dOxD/DlZqCGxC6/VTmoUXzA
	T1CefGkczhlAi1qdgYeZVoofVQ5yR3wFLkGQPh8XP3+kvV8lR3R0c7sb9u6nZwFo
	iDNQOddlSGrjcMnQZhgHuC1LNELY6OSrl8G3cRLc8XapCQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5jwqu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:40:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5f3b8b1a1so776908085a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 04:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074037; x=1750678837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sU9oQKJ9CXQPwDKh9YrC0FRFyn4HmwQPux4WlLidHvQ=;
        b=SO9JJ7Veyi7w2QIEHHG7lV+6ejVOqZpki/8Jo5ofnoVWQgqlkg7bME8RjHnSNN42Z1
         9qp7RLE1dXyp6OJkru4XrzPNb/bqUtD4gTqMmclLHXXhtWIIOoAUAddMo04GCI44QfVx
         xQDxsi34pjzLMl20jPYLzC0hftlqhD4qxSL07GRSUF8oGeg7o5+UmK8pIafm+OdZhUd3
         I4An8r4adYKWdalsglN57mZ68dbhWqi9VeMCZwzmoFOQtph3vsc7O/xQEr/EWB4Pw38f
         YanPVEhp5VYXcIgwh7FPY6QFShcjDJInVqGijeauB7cip/MVBtWr6G3LM/j6GKYNMHVN
         H3Qg==
X-Forwarded-Encrypted: i=1; AJvYcCVZQh3EOGPUB/xcbv7ve465elkv0cQKadYvorGj5gWGdpcRoFw9puNGtdLNV4ZOe2PZkZDdZMAVX+TI@vger.kernel.org
X-Gm-Message-State: AOJu0YzPblqzgDqXrCvyxXQ8v26WWU+aGkJt0LtCToecfzDdqR7NaD6Q
	nHtU1U84CGkrF/bn8LVcHzcIulIVIZp90Y4B/ujLvyZSa3reZ2fdRHHVzCW3Gn2tOYmrW3t/K0A
	nN/UfJOpTItw+zlJf/XrF1gpQAZe02CAR2OwT6PvRESY3n+jJsP43l36I4c94LUrWK89+uaKUbu
	g=
X-Gm-Gg: ASbGncviULAPgOjCzJd9jvjc8qbPlErlKGsocvD5hWBOJUgHyLeE+7WDT0DcU2/PF6/
	i9DMYq70wGy4xKgTpwe692dy4Eojp9jIB/ZSIq0XhILOS9Ak+LbKHnC7Vjf4LaTb3uhYcIruk2e
	v9+SU1v9k4UHbxxXH4YTPz4egAAlqBKc0NKv5EzXwfkk32E4wkYmqdbjRQyqwHNrX+pTO2zx0Y9
	hRlkemnWT7h83HgJPftJzmdYQyzmd65rCZETfitC4kvzvVZ7mwYPV55yO0e6gG43TN9wDzdXCnc
	+sVUi0GoQl+Vr1KDIOJJEwyE7pcl/Lif1rVSTOZNML5i7B2VNGVNp3swsKSfPhpPFXCl6+R/Pj8
	IYsoohRG8FIaZQmt9SBd89Y2bNHnmFVQWYEs=
X-Received: by 2002:a05:620a:2a0f:b0:7d0:9f1e:40dc with SMTP id af79cd13be357-7d3c6d0caf4mr1552506585a.56.1750074037337;
        Mon, 16 Jun 2025 04:40:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9s64+AUEQh7O6C8bv6bysqjaSeP/EDjHBrywB+0/u+u/JEszrb4CKMujLx374cWraAyL0lA==
X-Received: by 2002:a05:620a:2a0f:b0:7d0:9f1e:40dc with SMTP id af79cd13be357-7d3c6d0caf4mr1552500885a.56.1750074036881;
        Mon, 16 Jun 2025 04:40:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1ab619sm1530482e87.136.2025.06.16.04.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 04:40:35 -0700 (PDT)
Date: Mon, 16 Jun 2025 14:40:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
Message-ID: <qmcoh5lysln46mg7tbmeelmnzc7s6o7bssir3a7r3n3x5lnboq@cizzodjel4ut>
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
 <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
X-Proofpoint-GUID: ghyMw7uhmAQBDIRxd0X53sM-BlSXsg31
X-Proofpoint-ORIG-GUID: ghyMw7uhmAQBDIRxd0X53sM-BlSXsg31
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA3MiBTYWx0ZWRfXxllvOSl6DW9G
 gdPFsW5GTHiweLFX+lm86AA1TfghMssk55YSNZApCX7B2YjKGCkC1AYhHInjO3gTn7gk9HbFkF2
 Ng76HCDg8LnmkoVABuQJEGfis0bg3DMLZrIZwk4uhKJrdpT9GLF0WgbIHOqJZZfI/n+mOL5CfLi
 sqKdEjwYp8ednRCJ6Rdlfo9FCInk/qP4Dn7bhGVCr8HhGz2oYzlbQbovOTCB0L5rY6GrjrcLGmI
 TXBvX2/ppv2Am7QuaFFJLW60aWkrHLtRNwQH7mbeXhD1fMlHfUVXLHsHgZtxP8xfzCGqOfs2HiJ
 6ymSWyip5Pwx0a6jRE2786q/KIWn0wQ2zjFoW5I85ZVL+jO8U7GvBeH3T5j2qW7Lo6KAO8+JaVC
 CnoWQ3oMDy24Hbrhr1Meb3E3MwYVZG4fRtXZad0MMgwmtorWw002QbyoHkFhHBmkOYsbUR0L
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=685002b7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=QGoD4uD7uq53lMcaTbkA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160072

On Mon, Jun 16, 2025 at 11:45:12AM +0200, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 63 +++++++++++++-------------
>  1 file changed, 32 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 6bd1b3c75c779d2db2744703262e132cc439f76e..a246c897fedb2edfd376ac5fdc0423607f8c562b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -61,8 +61,13 @@ enum eusb2_reg_layout {
>  	LAYOUT_SIZE,
>  };
>  
> +struct eusb2_repeater_init_tbl_reg {
> +	u8 reg;
> +	u8 value;
> +};
> +
>  struct eusb2_repeater_cfg {
> -	const u32 *init_tbl;
> +	const struct eusb2_repeater_init_tbl_reg *init_tbl;
>  	int init_tbl_num;
>  	const char * const *vreg_list;
>  	int num_vregs;
> @@ -82,16 +87,16 @@ static const char * const pm8550b_vreg_l[] = {
>  	"vdd18", "vdd3",
>  };
>  
> -static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
> -	[TUNE_IUSB2] = 0x8,
> -	[TUNE_SQUELCH_U] = 0x3,
> -	[TUNE_USB2_PREEM] = 0x5,
> +static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] = {
> +	{ TUNE_IUSB2, 0x8 },
> +	{ TUNE_SQUELCH_U, 0x3 },
> +	{ TUNE_USB2_PREEM, 0x5 },
>  };
>  
> -static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
> -	[TUNE_IUSB2] = 0x5,
> -	[TUNE_SQUELCH_U] = 0x3,
> -	[TUNE_USB2_PREEM] = 0x2,
> +static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
> +	{ TUNE_IUSB2, 0x5 },
> +	{ TUNE_SQUELCH_U, 0x3 },
> +	{ TUNE_USB2_PREEM, 0x2 },
>  };
>  
>  static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
> @@ -129,17 +134,10 @@ static int eusb2_repeater_init(struct phy *phy)
>  	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
>  	struct device_node *np = rptr->dev->of_node;
>  	struct regmap *regmap = rptr->regmap;
> -	const u32 *init_tbl = rptr->cfg->init_tbl;
> -	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
> -	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
> -	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
>  	u32 base = rptr->base;
> -	u32 val;
> +	u32 poll_val;
>  	int ret;
> -
> -	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
> -	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
> -	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
> +	u8 val;
>  
>  	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
>  	if (ret)
> @@ -147,21 +145,24 @@ static int eusb2_repeater_init(struct phy *phy)
>  
>  	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
>  
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE_EUSB_HS_COMP_CUR]);
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQU]);
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_SLEW]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
> -	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
> -	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
> +	/* Write registers from init table */
> +	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
> +		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,

Init tables have TUNE_foo values in the .reg field instead of
EUSB2_TUNE_foo, which means that writes go to a random location.

> +			     rptr->cfg->init_tbl[i].value);
>  
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
> -	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
> -	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
> +	/* Override registers from devicetree values */
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
>  
> -	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
> +
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
> +
> +	/* Wait for status OK */
> +	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
> +				       poll_val & RPTR_OK, 10, 5);
>  	if (ret)
>  		dev_err(rptr->dev, "initialization timed-out\n");
>  
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

