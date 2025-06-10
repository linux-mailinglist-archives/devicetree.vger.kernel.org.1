Return-Path: <devicetree+bounces-184534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D32AD45BB
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 00:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80CF21899E85
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 22:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86FF028469C;
	Tue, 10 Jun 2025 22:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PmLD9O9L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0004723BCF8
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749593632; cv=none; b=GXmSc80hTtKqehW7bk/bLyCmmPCbTeJAuc09DfJNrdLaOyH1E3p/LmRuJSB0qrVKYmOm9G26ONHnhdmm+Q+hB9W5dV7b7LajI9PmrPHG6ahl4Vn1MPwBIzBRxoKSnma7Oe2l9RHHkJKIXcTGX/HFfVxcoDuf6MA6KnPF/xqE+1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749593632; c=relaxed/simple;
	bh=5cPrOngH34ZskjJ0Ie0Pe6BjzQfwk5fPbKe3h+bKupE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nMhtdtfhWAFdB5VJ4abSd0NzL9G3BCPHzdDVEZNjAtRjwxu2numls+F9VtHmQ058OPlmbKoZHHPSXipfof7CSUI8zXfrKT10iu//ExL4/h4pSgQDdtLITHhSSihiq5SsltfVb/Pd8MWZlP1uQLELJwYoTO3XhKeOGH/Mh22IBnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PmLD9O9L; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AIPnK7000402
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:13:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Om5CnCqBrphXA78M8+yvq9Gl
	bcxxbkcFH/cFOjrYlio=; b=PmLD9O9L8IonovYOqFTMd5qXv6tHnFtJyIECGbO6
	13U3KoU7TCkmdKWICdAk7nrZ4Z8L1zssLa2wCjOJNNqfDjJA/p0yXen+kJFAu1Yl
	BFJPEz8gWndej4RGxMFEpX83tRuMc62VbWfZTEZEsQZYZIh7cN4ZP7Xh/GJ1qI6u
	Ayh/6Gr0QH40DbRsWpVdEaFDF3d6ZieBtTPoz/CDSkWdkj2g/1TUToBFUBxowsYF
	8d7b74SRWRyGoToE7qT/0BwF3VGLAJqhAiVt3rwixIcCxEajJABasE1h/+zV2Bwe
	kEtwKrrsF1hk2V4Jn+N7I+klosSUJZ52A9Acy0xAsn8QOg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ccvawc2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:13:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c53e316734so914521585a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:13:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749593628; x=1750198428;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Om5CnCqBrphXA78M8+yvq9GlbcxxbkcFH/cFOjrYlio=;
        b=tf49yJnULKcaTKCfxyxcFRCC/qBSbQlIzESHpbfOI4IjzYloytCyqxbLLQbT9XJ+wb
         QwSwolZ67gzIwrJhdrvwvpMlPQw5lXXmOztddhWLD9ymObLnd44hNQeXlsrevt9Wyxw5
         ak64rrxRH3jOnzGabS9lBXklGn0tU8zTzFpMFoA9a7WM+cSc564fkGcNID/zSGJx/u8Z
         LTHX6blRSha4M/Ybha7U8XOa7p1GgEluqdVBDIu7HSNsMbYrSYJI6B8LxE9cle0uKPgs
         Ta7Sr34Vl91JdBOO8lbzHG/uOjZKGjo3fbymWVa/p976hPltkOzlIodoVliY9/VgWxT8
         vTww==
X-Forwarded-Encrypted: i=1; AJvYcCVkwvYbXq2Q1vVAT+Bq+F2yK0wHjuiGsL9e4EGU7VZwAY7FLI0SrxfuT6fkkxXTe//EKz8UNPHfjM0d@vger.kernel.org
X-Gm-Message-State: AOJu0YwH8aq1kD5pAyxH4Eesrb7JW+PhCYcT3vvXREuXFADkUivF8SGi
	lnW54YfqSIjoTndVcqSubn4+VtaUEn8mw/TtPPAD4Cy9bu62FXISS7OWl9HmoColtuHLFGFd3YF
	/W3ULIvlutozlzfdo8q/obZBea577cGU7l2yKxS+x3jdapuYFTgO60ZBlijOkIIU/
X-Gm-Gg: ASbGncsmkcqvwDhx6F6Ck5I+QE7zsj75bHwanC7+VKuLT4NMSXjHtPNnKQ8D0eL9Qpq
	OzKvSZm8EWs9Xras5Cc9f2CyAPbOW3wMTyNsax3dJI2qeWv/yEu9WOOpUldtukjnyvp0DUDCJtN
	2R2lGVe5dYNw9CpaWWl2epyY99MgPD3nunlWMsfFwlaCjiMtZdbFq5VTvPP5VPVQNf8ZsXWJpVh
	algCdnoQw152dlYpjbtJHB6YBEYlesSc6PxU/QCuszk4wc6HqezZUE11PvX3fLn4K38j9gZchM/
	XjxvHkkYAnf772drRwW63Dq8nMFHYKlnQjHEAkcHmrrLy0qI/4Or/c6r7vqX18Tqk3EBhku2fm6
	KdW6a3uUPyeChdQuL0OIoX+dtzSpiTXoBBaA=
X-Received: by 2002:a05:620a:1a0a:b0:7ce:c604:3f53 with SMTP id af79cd13be357-7d3a880db31mr144759185a.24.1749593628047;
        Tue, 10 Jun 2025 15:13:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkR/rgawQIqItRoAtofycgRlFovtJqLTPqRUHHzSmcmfKvyj/WssHDU5FcyI0gN/rfAVoU/Q==
X-Received: by 2002:a05:620a:1a0a:b0:7ce:c604:3f53 with SMTP id af79cd13be357-7d3a880db31mr144756885a.24.1749593627635;
        Tue, 10 Jun 2025 15:13:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55367722268sm1701751e87.112.2025.06.10.15.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 15:13:46 -0700 (PDT)
Date: Wed, 11 Jun 2025 01:13:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v3 3/4] drm/panel: Add driver for DJN HX83112B LCD panel
Message-ID: <jjfmloif6l2pljlcbo42cdxykynrl2j77n7glq7q4ka6n2bhyd@57t24neodjxn>
References: <20250610-fp3-display-v3-0-e7e7561812e1@lucaweiss.eu>
 <20250610-fp3-display-v3-3-e7e7561812e1@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610-fp3-display-v3-3-e7e7561812e1@lucaweiss.eu>
X-Proofpoint-ORIG-GUID: 1yDPxP0W98XgxcJIrZarYBdhWJ79N_j0
X-Authority-Analysis: v=2.4 cv=TsLmhCXh c=1 sm=1 tr=0 ts=6848ae1d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=dlmhaOwlAAAA:8 a=0UYVBa6PcIZdzih26zYA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-GUID: 1yDPxP0W98XgxcJIrZarYBdhWJ79N_j0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDE4MyBTYWx0ZWRfX/A6Quq9haKPx
 SgLbj9d3fmauDIEihdRoAiwpaxGkWXqI/yymE0pX0wpwfzbCLOv8OtjZZP1l+W3mYvRyrps2Sls
 u0hcvSfnJwWJ7RnVHI7XMBAhblP9cJJuaO+ZgwC1H6GRJ1JU9pTc+qBDn8ZeRBMHX9IdUk81UKE
 BEkwYBf9NXoEwlJqGWNHHHFp7Aj+vX2bS7bx8L1pbCVOKHHWxrR2r+0rpn7GJQRHkuwOi9SQc7L
 RRzzMkhd6LOkAwzc5ho1w/f3/rLrqfYn7WoSzoR6f7r5L6qIlDG2e8rn3VfVnmrADEHZqbFXa26
 s33fYDMYVrQ2Ugat6UnVqHQadX/ZOxcrHOP3ZHUOnFqTZKHObDneTKIkIrX/pW+Qts6ZNF8McoS
 nbJaxYZcxXn4wFT/7hCsucTlfTKTewSTjqrNmwUn3H3yKP/oIxL+21C17M+cJuIc3pcY+NWs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_10,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=999 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100183

On Tue, Jun 10, 2025 at 09:09:21PM +0200, Luca Weiss wrote:
> Add support for the 2160x1080 LCD panel from DJN (98-03057-6598B-I)
> bundled with a HX83112B driver IC, as found on the Fairphone 3
> smartphone.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  drivers/gpu/drm/panel/Kconfig                |  10 +
>  drivers/gpu/drm/panel/Makefile               |   1 +
>  drivers/gpu/drm/panel/panel-himax-hx83112b.c | 430 +++++++++++++++++++++++++++
>  3 files changed, 441 insertions(+)

> +static int hx83112b_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev = &dsi->dev;
> +	struct hx83112b_panel *ctx;
> +	int ret;
> +
> +	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ret = devm_regulator_bulk_get_const(dev,
> +					    ARRAY_SIZE(hx83112b_supplies),
> +					    hx83112b_supplies,
> +					    &ctx->supplies);
> +	if (ret < 0)
> +		return ret;
> +
> +	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Failed to get reset-gpios\n");
> +
> +	ctx->dsi = dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	dsi->lanes = 4;
> +	dsi->format = MIPI_DSI_FMT_RGB888;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO_BURST |
> +			  MIPI_DSI_CLOCK_NON_CONTINUOUS |
> +			  MIPI_DSI_MODE_VIDEO_NO_HSA | MIPI_DSI_MODE_LPM;
> +
> +	drm_panel_init(&ctx->panel, dev, &hx83112b_panel_funcs,
> +		       DRM_MODE_CONNECTOR_DSI);

Please switch to devm_drm_panel_alloc(). LGTM otherwise.

> +	ctx->panel.prepare_prev_first = true;
> +
> +	ctx->panel.backlight = hx83112b_create_backlight(dsi);
> +	if (IS_ERR(ctx->panel.backlight))
> +		return dev_err_probe(dev, PTR_ERR(ctx->panel.backlight),
> +				     "Failed to create backlight\n");
> +
> +	drm_panel_add(&ctx->panel);
> +
> +	ret = mipi_dsi_attach(dsi);
> +	if (ret < 0) {
> +		drm_panel_remove(&ctx->panel);
> +		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
> +	}
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

