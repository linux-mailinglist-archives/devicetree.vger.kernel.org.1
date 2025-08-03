Return-Path: <devicetree+bounces-201495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0DDB193F7
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 14:04:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C110617405F
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 12:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBF722331C;
	Sun,  3 Aug 2025 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sqyimyfq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C75374420
	for <devicetree@vger.kernel.org>; Sun,  3 Aug 2025 12:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754222663; cv=none; b=BwDLg0hN7EPi8wBWzG0dsgkKJaeb410gJXyDTLQ1b6xhIy+/y6/8NN6rfZPcv75dZG6FINo2Xslah69fj/lCt855Sz5quRaneQcCKLgAcrNeEqnCuhbx5vSX32jytI8QmaLKAI7W25bpYQTyOrc7pZZ0Vzd/fSIjN8yrWTKHkHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754222663; c=relaxed/simple;
	bh=LbtT4jx8wkuZFapwiccZnWsYtUzUSJEkkpswQAdVTX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TJCMP6XVMFRBdhlyY+7oxBYT7yNdmB1dE4BxF+1804S8OMeW/sVXgCQNK3h/fIUZCyK8KuIeAH+JeawL2ZpVvFwRcDQQGiCHekp7IFTqQ/S8V5kNnfHVG41bADKjVrq183xbjUBEk4VddtIwAv0CrnWSQkYtg2zuPdVYpkX3/WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sqyimyfq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573BXL7j018863
	for <devicetree@vger.kernel.org>; Sun, 3 Aug 2025 12:04:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RSVG3x22jZtAurZnD9aDPd//
	ucaqPbbTaj97QJ+olX4=; b=SqyimyfqPcq0Olwee4ZaY83eWZih34EYM582fDnk
	S5xv5KXjVUauGxG+WnmHELepReU38f7ztxqQquzE0fv0kiFendAuAdxk765J6L93
	E7N9ukpqaksJB7UxisfaI/wVnYHiTegq1aryJ9Pz3zpuLdV4C02O3NIzpafTpCYJ
	md9G9FBeGVbaSMgYOcII8lGCPUJVjqibuTuecYRzqTVYZZ+FPJRh2OZ9L3Y7TPN2
	53o3Yvu+9McVMeegtZUjuqtVhIBieireU6CmQohXbFeXCiSK05J+YnW34I0YbixQ
	RKgweDipqu/kYkdQSCO7L1BU1jejPU1m2jjNYVh3m7KRWg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489buqj567-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 12:04:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e36e20d700so612073585a.1
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 05:04:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754222659; x=1754827459;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RSVG3x22jZtAurZnD9aDPd//ucaqPbbTaj97QJ+olX4=;
        b=oWXOqOCqH0xFgFC90JPeZ88r0GdtvA7PvMykhxXz7K63Ce16bzjdi1iomRfojWkNNf
         1IOgYPqaLu9/nmo2qvXU6/lLhurCEXsqOqFVqdbEdSBz7az2mMyevMagsQLtF4qLteAH
         2IlFI+V6CczANP2cW9Ru1wyEQvh13t9ibRLqhCuq8S4m92n/q2k9mSNhsGjSwq+kJjcT
         C9R46P/VYOgAjJYkPwcALJX7FgHMiBEAswkljPl7WK1FIwy+KX8Y5okm9/q0b1BtyHaA
         jSyto7XxlDBKeMCxaVomaH4GPG3wCWVX0WuIZB8Az/bjj5OVLaPoRgYIHKc8OFSDP+a+
         qs9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXJEAZzJ3OOd6Anl+iwmT9rPqqc6iLpxEWtBwWKh/c9L1gikIYpJzIqE8mDjU72wMbLaKF8GUp0k7iw@vger.kernel.org
X-Gm-Message-State: AOJu0YxlABg+v9aPwKtinW7Ru5khEVdq3u9jV/QgCL9JTo2OqV8MSAoG
	F/TtuEbri610z9Yj8/GB0oQmKt5Y7rqmSw1ywJ2sxLy8TCA60y/XtPu+UxkMIYMotsEivg0FrFJ
	GMaGEtxifxb/kXpfPBj3AMsUwPbhGi6qqTbfjaMKAKII5ED0VKtzM87u0+vQABluz
X-Gm-Gg: ASbGncugh5SeQqeEWzq/XWqY99Y7o/nSaevkL+KBNFEWZdwwC+jOpW05pIn2P0YAsJC
	NSKGlIHSASwrJmgTpiLDCf+k4zCDK3TL8VUHaCHmfDjUtEQUy212eP7AD+1G1fXuaYotlhnOQ+W
	/D4Dt3TZNFrw2TSr/z6Wmaa9PNCVaGe7cwdfBCPUJRr8RrGZdzZapsrfzSVLWbZE0eivSyfzFTK
	Yl+glrvnXlyVfuHMHYK7GPtQF7/+9InAiCKGF/kuLBBmFZ4irApnlwgnToFyW4UBPyboCZIw/d+
	xD7PPpd+vQBQHHKa0rZ0A16ZB8b4Mph/w9XcENSNoBJngeBjN1y46i+IGkDc9Xy5v/EaT7Bk93n
	BwhPw5ADZqjE7BD+ajTzShDI5gU4/zb8q2EBfP2VVCMo54pjkYjWi
X-Received: by 2002:a05:620a:a209:b0:7e3:487c:e2c4 with SMTP id af79cd13be357-7e6964062aamr831536285a.0.1754222659262;
        Sun, 03 Aug 2025 05:04:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4XimR/Xf3sqe9EVRtQ5JwRiWC8l4whCCJYoIcIaG2M9wIVxHg4yY+a8+2Jega6gAh/0aO6Q==
X-Received: by 2002:a05:620a:a209:b0:7e3:487c:e2c4 with SMTP id af79cd13be357-7e6964062aamr831528785a.0.1754222658762;
        Sun, 03 Aug 2025 05:04:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88cabbd8sm1302925e87.149.2025.08.03.05.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Aug 2025 05:04:17 -0700 (PDT)
Date: Sun, 3 Aug 2025 15:04:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] drm: panel: add support for Synaptics TDDI series
 DSI panels
Message-ID: <6lecaocg6odrzqwg3t3bnw7lahxablltewapyg3ljayxalpnsv@paqencnpfeuw>
References: <20250720-panel-synaptics-tddi-v3-0-43a5957f4b24@disroot.org>
 <20250720-panel-synaptics-tddi-v3-2-43a5957f4b24@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250720-panel-synaptics-tddi-v3-2-43a5957f4b24@disroot.org>
X-Proofpoint-GUID: QH-5eSjEqM3XIzxK-eJuZKpkABdXJKAX
X-Authority-Analysis: v=2.4 cv=VZT3PEp9 c=1 sm=1 tr=0 ts=688f5044 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=LpNgXrTXAAAA:8 a=zSSJBQ5_HwqSYLKZnHAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=LqOpv0_-CX5VL_7kjZO3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAzMDA4MiBTYWx0ZWRfXwbyl6sWXv1KF
 Q5V2B2bnDvvtsJDjyiNTgbmEOO70hDdt5CikkpaGyoyfcTTFe/h5FWraNWyb53A29xvsIq32Lcm
 wdBlkmwNN4suhtLcV5u7ANsbVekjHwYiFqB0t0nL8iMU5l2hgJ8LL24c738iVA9gWHUoRrAztd6
 LUBgT8GPYZ9I/6hbIVQh6hJBtkXmybzQER7BcfqpXfbM5KqgSpcoJI7yYc126934+vasb/U5sJI
 OmFg0S+EcPbuU7NetlbeOfI3/+7FCCQE3ltVkAw67slBoubemrQzfy4i+qKsDReRWuRZhdRJWIg
 7wPlzjDiixAFzViIMmldgHolfTU/P3weisLlRe1hqVTIPHCLcGL0RzhIL55VR2VQabcWKNvSbSZ
 xJi68451ac8GccE5E5Eo+dP2XDYp3yYVAF/z6sw4ndRQjKh+09/pzOcWtzaFyyLnQiKONLO0
X-Proofpoint-ORIG-GUID: QH-5eSjEqM3XIzxK-eJuZKpkABdXJKAX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-03_03,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 malwarescore=0 bulkscore=0 phishscore=0
 spamscore=0 mlxscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508030082

On Sun, Jul 20, 2025 at 05:31:55PM +0530, Kaustabh Chakraborty wrote:
> Synaptics TDDI (Touch/Display Integration) panels utilize a single chip
> for display and touch controllers. Implement a simple device driver for
> such panels, along with its built-in LED backlight controller, and add
> support for TD4101 and TD4300 panels in the driver.
> 
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> ---
>  drivers/gpu/drm/panel/Kconfig                |  11 +
>  drivers/gpu/drm/panel/Makefile               |   1 +
>  drivers/gpu/drm/panel/panel-synaptics-tddi.c | 289 +++++++++++++++++++++++++++
>  3 files changed, 301 insertions(+)
> 
> +
> +static int tddi_get_modes(struct drm_panel *panel,
> +			  struct drm_connector *connector)
> +{
> +	struct tddi_ctx *ctx = to_tddi_ctx(panel);
> +	struct drm_display_mode *mode;
> +
> +	mode = drm_mode_duplicate(connector->dev, &ctx->mode);
> +	if (!mode)
> +		return -ENOMEM;
> +
> +	mode->type |= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> +	drm_mode_probed_add(connector, mode);
> +	drm_mode_set_name(mode);
> +
> +	connector->display_info.width_mm = mode->width_mm;
> +	connector->display_info.height_mm = mode->height_mm;

Please use drm_connector_helper_get_modes_fixed()

> +	connector->display_info.bus_flags = ctx->bus_flags;
> +
> +	return 1;
> +}
> +
> +static const struct backlight_ops tddi_bl_ops = {
> +	.update_status = tddi_update_status,
> +};
> +
> +static const struct drm_panel_funcs tddi_drm_panel_funcs = {
> +	.prepare = tddi_prepare,
> +	.unprepare = tddi_unprepare,
> +	.enable = tddi_enable,
> +	.disable = tddi_disable,
> +	.get_modes = tddi_get_modes,
> +};
> +
> +static int tddi_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct tddi_ctx *ctx;
> +	int ret;
> +
> +	ctx = devm_drm_panel_alloc(dev, struct tddi_ctx, panel,
> +				   &tddi_drm_panel_funcs, DRM_MODE_CONNECTOR_DSI);
> +	if (IS_ERR(ctx))
> +		return PTR_ERR(ctx);
> +
> +	ctx->data = of_device_get_match_data(dev);
> +
> +	ctx->dsi = dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	ret = devm_regulator_bulk_get_const(dev, ARRAY_SIZE(tddi_supplies),
> +					    tddi_supplies, &ctx->supplies);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to get regulators\n");
> +
> +	ctx->backlight_gpio = devm_gpiod_get_optional(dev, "backlight", GPIOD_ASIS);
> +	if (IS_ERR(ctx->backlight_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->backlight_gpio),
> +				     "failed to get backlight-gpios\n");
> +
> +	ctx->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_ASIS);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "failed to get reset-gpios\n");
> +
> +	ret = of_get_drm_panel_display_mode(dev->of_node, &ctx->mode,
> +					    &ctx->bus_flags);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to get panel timings\n");
> +
> +	ctx->backlight = devm_backlight_device_register(dev, dev_name(dev), dev,
> +							ctx, &tddi_bl_ops, NULL);
> +	if (IS_ERR(ctx->backlight))
> +		return dev_err_probe(dev, PTR_ERR(ctx->backlight),
> +				     "failed to register backlight device");
> +
> +	ctx->backlight->props.type = BACKLIGHT_PLATFORM;
> +	ctx->backlight->props.brightness = 255;
> +	ctx->backlight->props.max_brightness = 255;

Props should be set before registering the backlight

> +
> +	dsi->lanes = ctx->data->lanes;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +			  MIPI_DSI_MODE_VIDEO_NO_HFP;
> +
> +	ctx->panel.prepare_prev_first = true;
> +	drm_panel_add(&ctx->panel);
> +
> +	ret = devm_mipi_dsi_attach(dev, dsi);
> +	if (ret < 0) {
> +		drm_panel_remove(&ctx->panel);
> +		return dev_err_probe(dev, ret, "failed to attach to DSI host\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void tddi_remove(struct mipi_dsi_device *dsi)
> +{
> +	struct tddi_ctx *ctx = mipi_dsi_get_drvdata(dsi);
> +
> +	drm_panel_remove(&ctx->panel);
> +}
> +
> +static const struct tddi_panel_data td4101_panel_data = {
> +	.lanes = 2,
> +	/* wait timings for panel enable */
> +	.delay_ms_sleep_exit = 100,
> +	.delay_ms_display_on = 0,
> +	/* wait timings for panel disable */
> +	.delay_ms_display_off = 20,
> +	.delay_ms_sleep_enter = 90,
> +};
> +
> +static const struct tddi_panel_data td4300_panel_data = {
> +	.lanes = 4,
> +	/* wait timings for panel enable */
> +	.delay_ms_sleep_exit = 100,
> +	.delay_ms_display_on = 0,
> +	/* wait timings for panel disable */
> +	.delay_ms_display_off = 0,
> +	.delay_ms_sleep_enter = 0,
> +};
> +
> +static const struct of_device_id tddi_of_device_id[] = {
> +	{
> +		.compatible = "syna,td4101-panel",
> +		.data = &td4101_panel_data,
> +	}, {
> +		.compatible = "syna,td4300-panel",
> +		.data = &td4300_panel_data,
> +	}, { }
> +};
> +MODULE_DEVICE_TABLE(of, tddi_of_device_id);
> +
> +static struct mipi_dsi_driver tddi_dsi_driver = {
> +	.probe = tddi_probe,
> +	.remove = tddi_remove,
> +	.driver = {
> +		.name = "panel-synaptics-tddi",
> +		.of_match_table = tddi_of_device_id,
> +	},
> +};
> +module_mipi_dsi_driver(tddi_dsi_driver);
> +
> +MODULE_AUTHOR("Kaustabh Chakraborty <kauschluss@disroot.org>");
> +MODULE_DESCRIPTION("Synaptics TDDI Display Panel Driver");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.50.0
> 

-- 
With best wishes
Dmitry

