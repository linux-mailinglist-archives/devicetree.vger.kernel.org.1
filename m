Return-Path: <devicetree+bounces-244899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B43BECAA0AE
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 05:26:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F254F313B5F9
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 04:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1366925F7A4;
	Sat,  6 Dec 2025 04:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H18/e4ux";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f7SGrtF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5665F2116F4
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 04:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764995163; cv=none; b=lU5WIsuSS6fVfiO9xMmQHGPJ8ZgVx526F3cbsbcDspNiFfgRt1WtBphVQTaHQ2Y7iOWDSQb8yzTvJzpxipCsmtoPezpzrLMG3LzmFKcyAPiVsiEq5hWcFAaMWqFTrp6wpqyUsWYAWeeTjSOeRNGYw3bXvq9zuqhJZvHBM9nhvSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764995163; c=relaxed/simple;
	bh=NuWolUz2KhoGblIjnficgr+2t26ZDl/ZTs/yro3FSb0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iW4NcQoojYu5fLY3d2odSR8KxbJldp7POs1nBzBddPd4vEDngbgAk2Zj4PhYPLYR/sjHcfHeCuuCybHXojUmPlrg+wW0orJsOsW9AlDHJPOy1kWHh4SjrVN+5eGQVQEV2EO5PW/ok7Zrl3Fp4r+m+507GHzPg9pzxrrEmZK6Kk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H18/e4ux; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f7SGrtF5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B63QA6a2574587
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 04:26:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ognPUSg0ypp1iSasBEkkG0+y
	XPls6MuScMwxxjxW6Z8=; b=H18/e4uxN+1Z65eAK3Mv4WzVO9CmFRc5JVfOu2W6
	3D3tV90s8K/5Ag29zrnXOnwFqLVX34d/re6Qp45j44MAc6g5FKp5mMWQ0SaiZn+Q
	KEHFPOJe1CgIZcgRg14L2HgkeddYfrqyqYKrW/JjD0ZxZH1lGMsfcM0lNGEUFKXl
	lFQqr/AYse3SDwlXl71+SyVocAxh1clXnOoIuqSk5XJCFe+5tEbzQNi/J+QvmdED
	kXAyj+HQUAI1+sGkkN8VPZD6Up7gJhBwqJvDnKyIEqhlfBLXbqVLM2Ho5bHIQteJ
	YCzmId2T+ZXHp10VVOR5dg/OIiKP96XQRLK+d9bsdZN16w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avcjv82rt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 04:26:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b6963d1624so53811985a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764995159; x=1765599959; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ognPUSg0ypp1iSasBEkkG0+yXPls6MuScMwxxjxW6Z8=;
        b=f7SGrtF5mlRldrZ231NX7CLkUGc6HQkNB9bmiBiYp9qJ8GMavacpFR4t6CaMO98Gzp
         5YLOtnO5Vdk2Ac0f/zgP+6dyMvVTQ7zcLTJ+YC2rfYeD9ukuJ+nWJII21LXmPq14I/LS
         4eM7gSyTF3C1r2L8GxsW025o2RnEEVdpgziMTx3t3JEgaoPgc19TTWbE3+eYlCGwjTHQ
         K7FOb56qZDa8PZ2rDG4RZdnG3ZMnG5nauga8iS/x9LEPPjktA7BLhL02SkGKTdO+jgy5
         W+eGHcczZcvQZ6lS2LwZ1hc9kceCIsh9D7XasdJIuRl04tnBD0OIVid6VELetPj0DRU7
         nN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764995159; x=1765599959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ognPUSg0ypp1iSasBEkkG0+yXPls6MuScMwxxjxW6Z8=;
        b=bqL7rLKiOzYwDzQyP7PkkoZULYewTqC4ogFLwMQb/zUabu8sK9J6AyvjLjSs/AZiLB
         ZLpkaHvsMZkIzbFrkyKebm/evilBiiiVrkJHPVbedDVLS+Fkia7HecCsM3GY0cmr5rPz
         2xGPxLV0tmY1/wP9alvRaMK3cbRtJN5yma1uzyaaOp3WeBR6Kxwiv5hbDTNkO1mpgRTy
         1FmBonti4VOuW4YhOT7V3kHidkpwOAFBqpiFuW3IJgHfn6CY1Fsegk1QhFMXLYk4AIhd
         HV3nXt3YhAGYTDF2IzIV97tc7178PBwr72rve27GuxqMDjWVMmZvWqtVyQIpp0fqG/vb
         fG4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXWu57n2jtNiVFeGHZm9untlBEhwxxllTlR2j0Sn2Wp+TI4CLQDvpQSeIaNUwzZEF16SN6mSzQ5Ub3M@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3pcw9O+SVxY5xvZ0A1aIWzK6qHJlnGaZwqBZInnQM+X/pCvSE
	eMMFnjpP5nMqnL6JhXZ8t0g1tFxWYmaZBd7hBOO1ytqwPDnTaSrXvEYIUHN7RdGtz3RdG3UubPB
	8WoJMcHgxwL90mQvxnYQ/u78ELq3HHW+o+JxAranQzyywAJAnFymcOtLFP5yUZ/kX
X-Gm-Gg: ASbGncu1NKLdjMzwfCaioUI07CBptTwiDGYxsMadfVecWd4bPtcbXSIHd/BhKq4TiWl
	XdmEwMpEgAKvyralSaTd5BZXwJcdoZhqyc296a8v/Yv1y3EU/IgtI4dqdAVdq/JfdXC22mHLmaq
	J6/4gfssKF3ATNujzKF3yJT2uVgbgVbuS/hqlTC0HEkQgpxD9RnmeL2VECqjik7RBuEsTFIOa+B
	1pSDRFn+aQ298kCtm8adbGJ8Xy5xNWvOpVIDMMIV7scUF+rsHdvjMneFkSOiS/O9p5j2DzRDJ+6
	fZ0iJtpo5omDBgH22N/3GHI1JnRHvr40+cZjYqIFI+AB4yS6gP9JaguaWzkU4uS89193s8DCfsL
	fSBJUq6Tp6+vuPYckQGeP9ZAiExIOOsI24EtMBLlHtN7EBHHoux0RIDq0h9KqTypdVqj0sDVf9N
	ePysYbXUanHACCY6g/OOg87QI=
X-Received: by 2002:a05:620a:3181:b0:89f:27dc:6536 with SMTP id af79cd13be357-8b6a23d3ce7mr198628285a.54.1764995159384;
        Fri, 05 Dec 2025 20:25:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGZLXHLgEMHcj/4gWSWWforl0+eBSPgONjDyYevRp8h1TrRuz9KnFaSPg9m3taHQ5GRofi9PQ==
X-Received: by 2002:a05:620a:3181:b0:89f:27dc:6536 with SMTP id af79cd13be357-8b6a23d3ce7mr198625585a.54.1764995158921;
        Fri, 05 Dec 2025 20:25:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a7dbsm2067046e87.20.2025.12.05.20.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 20:25:58 -0800 (PST)
Date: Sat, 6 Dec 2025 06:25:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 4/8] drm/panel: sw43408: Add enable/disable and reset
 functions
Message-ID: <jqgwmjet2ncit5bqilvuqldxrtcapiozmpbk5klc5tybwbfezi@4muxgno7do45>
References: <20251125-pixel-3-v4-0-3b706f8dcc96@ixit.cz>
 <20251125-pixel-3-v4-4-3b706f8dcc96@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251125-pixel-3-v4-4-3b706f8dcc96@ixit.cz>
X-Authority-Analysis: v=2.4 cv=Dccaa/tW c=1 sm=1 tr=0 ts=6933b058 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=dyG3DeJWMbf1Z_p6H2UA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAzMyBTYWx0ZWRfX1EYNECuTcmDV
 JWz07APvLvPzNbwR9+cjIHgO9n7BimYR39rs1gLxs5hvMo+cNK9JO4oq9ZIrxpJV5VDpi+YesmH
 QWIwUV8ew5kIvBd5y2wnwSCR7Nu3MjtjgVDCCqh7xsAnYjnpni2Q6TShe5xdXkSFYgUDZiKua1S
 UfDzl12iEws2TcOk6G4uGtMCqmCz6A96GcsHha3WMXqMoiCPiH2aF8UD/Pw3nWdQFlQ8k5/j9Ky
 9SbT+wiALqZ6hX2X4qTKvk3r/kIR3Zz6GiuD9pcP/dZZRIq2b/E7RYbhgsxg3TIri7V62i5vb4t
 W3HzagypzIJ0WkWlE447E3r5tszsUKlZkMoXAFTpnljhYzR2u51WyWzFoUoOfERx0lZSJqnpwCV
 NU7x7qvkXsg7gIQeQGvJRFTozSkveg==
X-Proofpoint-ORIG-GUID: A579GVEV9Fp0VnNrGPbZsG8GqZ4ihh6R
X-Proofpoint-GUID: A579GVEV9Fp0VnNrGPbZsG8GqZ4ihh6R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060033

On Tue, Nov 25, 2025 at 09:29:39PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Introduce enable(), disable() and reset() functions.
> 
> The enable() and disable() callbacks keep the symmetry in the commands
> sent to the panel and also make a clearer distinction between panel
> initialization and configuration.

This also makes those to to be executed after starting the DSI stream.
Is it fine?

> 
> Splitting reset() from prepare() follows clean coding practices and lets
> us potentially make reset optional in the future for flicker-less
> takeover from a bootloader or framebuffer driver where the panel is
> already configured.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/panel-lg-sw43408.c | 83 ++++++++++++++++++++------------
>  1 file changed, 53 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-lg-sw43408.c b/drivers/gpu/drm/panel/panel-lg-sw43408.c
> index dcca7873acf8e..20217877e107f 100644
> --- a/drivers/gpu/drm/panel/panel-lg-sw43408.c
> +++ b/drivers/gpu/drm/panel/panel-lg-sw43408.c
> @@ -38,11 +38,10 @@ static inline struct sw43408_panel *to_panel_info(struct drm_panel *panel)
>  	return container_of(panel, struct sw43408_panel, base);
>  }
>  
> -static int sw43408_unprepare(struct drm_panel *panel)
> +static int sw43408_disable(struct drm_panel *panel)
>  {
>  	struct sw43408_panel *sw43408 = to_panel_info(panel);
>  	struct mipi_dsi_multi_context ctx = { .dsi = sw43408->link };
> -	int ret;
>  
>  	mipi_dsi_dcs_set_display_off_multi(&ctx);
>  
> @@ -50,19 +49,55 @@ static int sw43408_unprepare(struct drm_panel *panel)
>  
>  	mipi_dsi_msleep(&ctx, 100);
>  
> +	return ctx.accum_err;
> +}
> +
> +static int sw43408_unprepare(struct drm_panel *panel)
> +{
> +	struct sw43408_panel *sw43408 = to_panel_info(panel);
> +	int ret;
> +
>  	gpiod_set_value(sw43408->reset_gpio, 1);
>  
>  	ret = regulator_bulk_disable(ARRAY_SIZE(sw43408->supplies), sw43408->supplies);
>  
> -	return ret ? : ctx.accum_err;
> +	return ret;
>  }
>  
> -static int sw43408_program(struct drm_panel *panel)
> +static int sw43408_enable(struct drm_panel *panel)

Please move it below sw43408_program() to ease code review.

>  {
>  	struct sw43408_panel *sw43408 = to_panel_info(panel);
>  	struct mipi_dsi_multi_context ctx = { .dsi = sw43408->link };
>  	struct drm_dsc_picture_parameter_set pps;
>  
> +	mipi_dsi_dcs_set_display_on_multi(&ctx);
> +
> +	mipi_dsi_msleep(&ctx, 50);
> +
> +	sw43408->link->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	drm_dsc_pps_payload_pack(&pps, sw43408->link->dsc);
> +
> +	mipi_dsi_picture_parameter_set_multi(&ctx, &pps);
> +
> +	sw43408->link->mode_flags |= MIPI_DSI_MODE_LPM;
> +
> +	/*
> +	 * This panel uses PPS selectors with offset:
> +	 * PPS 1 if pps_identifier is 0
> +	 * PPS 2 if pps_identifier is 1
> +	 */
> +	mipi_dsi_compression_mode_ext_multi(&ctx, true,
> +					    MIPI_DSI_COMPRESSION_DSC, 1);
> +
> +	return ctx.accum_err;
> +}
> +
> +static int sw43408_program(struct drm_panel *panel)
> +{
> +	struct sw43408_panel *sw43408 = to_panel_info(panel);
> +	struct mipi_dsi_multi_context ctx = { .dsi = sw43408->link };
> +
>  	mipi_dsi_dcs_write_seq_multi(&ctx, MIPI_DCS_SET_GAMMA_CURVE, 0x02);
>  
>  	mipi_dsi_dcs_set_tear_on_multi(&ctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
> @@ -97,26 +132,19 @@ static int sw43408_program(struct drm_panel *panel)
>  	mipi_dsi_dcs_write_seq_multi(&ctx, 0x55, 0x04, 0x61, 0xdb, 0x04, 0x70, 0xdb);
>  	mipi_dsi_dcs_write_seq_multi(&ctx, 0xb0, 0xca);
>  
> -	mipi_dsi_dcs_set_display_on_multi(&ctx);
> -
> -	mipi_dsi_msleep(&ctx, 50);
> -
> -	sw43408->link->mode_flags &= ~MIPI_DSI_MODE_LPM;
> -
> -	drm_dsc_pps_payload_pack(&pps, sw43408->link->dsc);
> -
> -	mipi_dsi_picture_parameter_set_multi(&ctx, &pps);
> +	return ctx.accum_err;
> +}
>  
> -	sw43408->link->mode_flags |= MIPI_DSI_MODE_LPM;
> +static void sw43408_reset(struct sw43408_panel *ctx)
> +{
> +	usleep_range(5000, 6000);
>  
> -	/*
> -	 * This panel uses PPS selectors with offset:
> -	 * PPS 1 if pps_identifier is 0
> -	 * PPS 2 if pps_identifier is 1
> -	 */
> -	mipi_dsi_compression_mode_ext_multi(&ctx, true,
> -					    MIPI_DSI_COMPRESSION_DSC, 1);
> -	return ctx.accum_err;
> +	gpiod_set_value(ctx->reset_gpio, 0);
> +	usleep_range(9000, 10000);
> +	gpiod_set_value(ctx->reset_gpio, 1);
> +	usleep_range(1000, 2000);
> +	gpiod_set_value(ctx->reset_gpio, 0);
> +	usleep_range(9000, 10000);
>  }
>  
>  static int sw43408_prepare(struct drm_panel *panel)
> @@ -128,14 +156,7 @@ static int sw43408_prepare(struct drm_panel *panel)
>  	if (ret < 0)
>  		return ret;
>  
> -	usleep_range(5000, 6000);
> -
> -	gpiod_set_value(ctx->reset_gpio, 0);
> -	usleep_range(9000, 10000);
> -	gpiod_set_value(ctx->reset_gpio, 1);
> -	usleep_range(1000, 2000);
> -	gpiod_set_value(ctx->reset_gpio, 0);
> -	usleep_range(9000, 10000);
> +	sw43408_reset(ctx);
>  
>  	ret = sw43408_program(panel);
>  	if (ret)
> @@ -208,6 +229,8 @@ static int sw43408_backlight_init(struct sw43408_panel *ctx)
>  }
>  
>  static const struct drm_panel_funcs sw43408_funcs = {
> +	.disable = sw43408_disable,
> +	.enable = sw43408_enable,
>  	.unprepare = sw43408_unprepare,
>  	.prepare = sw43408_prepare,
>  	.get_modes = sw43408_get_modes,
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

