Return-Path: <devicetree+bounces-223720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D96CBBCDD3
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 01:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 123CF3B235A
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 23:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21702226CF7;
	Sun,  5 Oct 2025 23:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lSZqoVy/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A331E47A8
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 23:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759706529; cv=none; b=TdxyTh91f3rqvELTAkng6zyhgfPTiTj7G45rKkyTTS1X7DfpTLTzz8RHLz8o/VxSdZncuaVtrDBmMsOisSDizBEmZVsKmYVAb4MifiN6b2suEVSULXoXDop7DvYE6DidG4cllTeQ3m0XzY0GbhiOGizGDbRq1sy3SEbabh7kYYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759706529; c=relaxed/simple;
	bh=n5Vtzxojo2wmWBghdlmj8H+Pd5c51UdEJ4MCqmEx6aU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cgCrA1zqbjWneNNcInVN3jlRsL1gvGRMLKySHGD5unBEfpgGMaipWPy19olvCw7wnP+TD2riEnynuGUq8bI05IPaq5Q1ZZacPEF1SvKR5eiBo0ChEYl6IdrFkT2cGs4WNVczrtpKt3cyheqjoR+hcsJekh2gYjBPScfvFEGZP0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lSZqoVy/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NDkLe032557
	for <devicetree@vger.kernel.org>; Sun, 5 Oct 2025 23:22:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Tb08ffW4DbsnaOmuGQXt22LR
	uzui+lNjPwPW3k8wy1s=; b=lSZqoVy/4aXEtSB+LkhqFrCu5WmeS1yItyTkUslR
	TeMNRjI1gyFIeY5cKmyvs22hVPxtjr8sCbLUgRqAPMHBYCzWsgj4KgIaMhnXa/Ix
	LRe1mNpfRBLosC7iQijY6tzDHImClzkBjJGyzFEV6uRFKqf3V/Sr4wvP0c/5P4kM
	CISymuSyY2T3IMg5BiyvAOnSpSx/BWiEJXdI1R1HebMjSJoKgNjOm43WAzRNjlGy
	Br6DZfU8BygeuY3gOrJIb5/wolDAniUGavobQj+XxCVfOq18fmXCq/XWjxUTz5fo
	ntnbqHHAi4eeBfNAsEmJEOgshz6bGGuN/lwMf4Cs+N20lw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49k6bfhrbg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 23:22:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e5739a388bso92306791cf.2
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 16:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759706525; x=1760311325;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tb08ffW4DbsnaOmuGQXt22LRuzui+lNjPwPW3k8wy1s=;
        b=nuTdjORJadz5N0auXxWr9pvSsssnmT5znVKaShvmTp+xzlJz0U3p56r9jTWHequwsV
         rWlc6Q+Iecn7kUXEMiPh0rBGzYn2kY5WJif9VyuC6D+e71SBzUXXG0doBDoPGLi+H/tY
         dI9+yA44kTwDsMg24q1IcXK6rTU4sLDNnNjZ8PkpYr/d5UiTHTIY8yfPl3YPv13ypvyY
         +gZbuD27RlECK1xPChMP1iina9afPnkalL0DEfepB+ZGr1sZ09W+TFn7F6aiqaAvXzQm
         hKuFe1FZ8S/b+YEhdfloKw+v/LEg+0kWWXFEjdTEqqLx8YedIKyeoNIszAUoBCBThZqH
         s2qQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgMv1H8goOO/mgY/78oY/MmF3rV9+ctsTQWLBxG4XKFL0JdZ7qh/bdDeD8b5cpxqznH4hBHeUobLcr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8Lh/FMWj/qr/YtRNS68Vix0uZAEmuL3y9xx5ah4YWgpOR6t7a
	px+NoZ1mBng8zWA7qeClRvdm30F6SetLvxKtqoMx6A4SIVHUC8kjNHn1crgq9JEgBvdu4oemd/C
	pj7rWRmn2u/wAPa7b21a7FotwFUYzVmzeSQK5u6GskFU0gcdTBnPekBY6ChO/bogo
X-Gm-Gg: ASbGnculb3WBTtKYXVHo2egztERaobK8CwMLcHpqNVW7NOsbByizrPUsWRqRR2OtreA
	Wp3o3UKA4FN2lPhgnzv78BOfaFaUJizljoN1o5vxLNaPLpWOOA8ck1W+8epMB0PSXJ/3Vdly1Eh
	JZnerDoJUEo1GyYCDU2HYd5il8xHfBej+sE7U1YNDniDiOBlncIzFdM7GwYFQogW4dcWamRE6u5
	rF53Jt5Q/45sC6e1b+sA4tXhzNyC23BxLeDZCuSHyUcWfIsf261CCcXkN0gcqXo669ApYx6qhe3
	cbNc9tlpMomwWr53B0UppdM6ckR9f5wT+FLL771PMeaFrSCIqHyIghsjC6TN/ZD9EU53MMFCOA2
	oDkvsfqYHEoDwHmeMp1g4Sya8VtFPrR/2UDKLjYI/PXarn1bBe2uV/mGb1w==
X-Received: by 2002:a05:622a:998:b0:4db:9c75:abad with SMTP id d75a77b69052e-4e576b307c5mr126255651cf.74.1759706524727;
        Sun, 05 Oct 2025 16:22:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJULL2VZQjCLXKuYta5vackW0AYBFaK3yrYJMbji+l7aGMwmBnu+kqmtXsQ9JSHKRG6CXTOA==
X-Received: by 2002:a05:622a:998:b0:4db:9c75:abad with SMTP id d75a77b69052e-4e576b307c5mr126255421cf.74.1759706524145;
        Sun, 05 Oct 2025 16:22:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d88fsm4371863e87.69.2025.10.05.16.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 16:22:02 -0700 (PDT)
Date: Mon, 6 Oct 2025 02:21:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, jessica.zhang@oss.qualcomm.com,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] drm/panel: Add driver for Tianma TL121BVMS07-00
 panel
Message-ID: <anldo4jltvbu2smqo4ognxkauqs6aomm742f5v7bhryi6jappx@lfcig7pn5go6>
References: <20250930075044.1368134-1-yelangyan@huaqin.corp-partner.google.com>
 <20250930075044.1368134-3-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930075044.1368134-3-yelangyan@huaqin.corp-partner.google.com>
X-Proofpoint-GUID: _3GBkWn0MlkIaew2VUGKMApvvrZCKacU
X-Proofpoint-ORIG-GUID: _3GBkWn0MlkIaew2VUGKMApvvrZCKacU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDEzNSBTYWx0ZWRfX0Zzzw8PgClcK
 6cTKohjcsD1Xz58RfbkrURZnIsZtbCk8h5X+HY3/sF9TcgOB3oQeH64GMA33wqYIRhdwSr51IjQ
 uw7qSikAZlaw9iog5RtxOyaiID+9hvbrF01h1dgjVOtkYYVqz1QGqKH+xiYre8IdjGuubey+fOT
 g12j8WrwmpaPJUqKQfkpAk2qaeCWHF7QNg+cYzlfVbJJQrZ+v7kqd52vfkzNjy76LEx9eLnP8Zw
 VEOOSBlmGFnsbVmTSWYDv852d8gd6EnNJDJPT+y3HJt2wT6IAH1bhy4sEcyza0+vMCSL69qo9mL
 cvNT0wo6dIZ4Y2WMAhsFZw3EcB8Y7QTzboYWQBc2JAEcfzAikMyw9I+eAQyfhEOglA+WCGet/QX
 7N/HAfHNVX7Yv5xINQlZX4Mpbn4FRA==
X-Authority-Analysis: v=2.4 cv=Hr572kTS c=1 sm=1 tr=0 ts=68e2fd9e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=1XWaLZrsAAAA:8 a=NJAL_iFP5D2qNw8AoYUA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-05_08,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040135

On Tue, Sep 30, 2025 at 03:50:44PM +0800, Langyan Ye wrote:
> Add a DRM panel driver for the Tianma TL121BVMS07-00 12.1"
> MIPI-DSI TFT LCD panel. The panel requires multiple power
> supplies (AVDD, AVEE, 1.8V logic), an enable GPIO, and a
> backlight device. The panel is based on the Ilitek IL79900A
> controller.

The rest of panels based on Ilitek controllers are handled by
panel-ilitek-iliNNNN.c drivers (which might or might not be shared by
several panels). Is there a reason to deviate from that custom?

> 
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>  .../drm/panel/panel-tianma-tl121bvms07-00.c   | 419 ++++++++++++++++++
>  1 file changed, 419 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-tianma-tl121bvms07-00.c
> 
> diff --git a/drivers/gpu/drm/panel/panel-tianma-tl121bvms07-00.c b/drivers/gpu/drm/panel/panel-tianma-tl121bvms07-00.c
> new file mode 100644
> index 000000000000..5facffeda864
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-tianma-tl121bvms07-00.c
> @@ -0,0 +1,419 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * DRM panel driver for Tianma TL121BVMS07-00 12.1" MIPI-DSI TFT LCD panel
> + *
> + * Based on drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> + */
> +
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/drm_connector.h>
> +#include <drm/drm_crtc.h>

Unnecessary

> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_panel.h>
> +
> +#include <video/mipi_display.h>
> +
> +struct tm_panel;
> +
> +struct panel_desc {
> +	const struct drm_display_mode *modes;
> +	unsigned int bpc;
> +
> +	/**
> +	 * @width_mm: width of the panel's active display area
> +	 * @height_mm: height of the panel's active display area
> +	 */
> +	struct {
> +		unsigned int width_mm;
> +		unsigned int height_mm;
> +	} size;
> +
> +	unsigned long mode_flags;
> +	enum mipi_dsi_pixel_format format;
> +	int (*init)(struct tm_panel *tm);
> +	unsigned int lanes;
> +	bool discharge_on_disable;
> +	bool lp11_before_reset;
> +};
> +
> +struct tm_panel {
> +	struct drm_panel base;
> +	struct mipi_dsi_device *dsi;
> +
> +	const struct panel_desc *desc;
> +
> +	enum drm_panel_orientation orientation;
> +	struct regulator *pp1800;
> +	struct regulator *avee;
> +	struct regulator *avdd;
> +	struct gpio_desc *enable_gpio;
> +
> +	bool prepared;
> +};
> +
> +static int tm_tl121bvms07_00_init(struct tm_panel *tm)
> +{
> +	struct mipi_dsi_multi_context ctx = { .dsi = tm->dsi };
> +	struct mipi_dsi_device *dsi = ctx.dsi;
> +
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x5a, 0xa5, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0x3e, 0x62);
> +
> +
> +	mipi_dsi_generic_write_seq(dsi, 0xff, 0x5a, 0xa5, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0x1b, 0x20);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5d, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0x5e, 0x40);
> +
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0xff, 0x5a, 0xa5, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0X29, 0x00);
> +
> +	mipi_dsi_generic_write_seq(dsi, 0xff, 0x5a, 0xa5, 0x00);
> +
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0X11);
> +
> +	if (ctx.accum_err)
> +		return ctx.accum_err;
> +
> +	msleep(120);
> +
> +	mipi_dsi_dcs_write_seq_multi(&ctx, 0X29);
> +
> +	if (ctx.accum_err)
> +		return ctx.accum_err;
> +
> +	msleep(80);
> +
> +	return 0;
> +};
> +
> +static inline struct tm_panel *to_tm_panel(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct tm_panel, base);
> +}

I'd expect this function to be present right after struct tm_panel
definition.

> +
> +static int tm_panel_enter_sleep_mode(struct tm_panel *tm)
> +{
> +	struct mipi_dsi_device *dsi = tm->dsi;
> +	int ret;
> +
> +	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
> +
> +	ret = mipi_dsi_dcs_set_display_off(dsi);

Use _multi.

> +	if (ret < 0)
> +		return ret;
> +
> +	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int tm_panel_disable(struct drm_panel *panel)
> +{
> +	struct tm_panel *tm = to_tm_panel(panel);
> +	int ret;
> +
> +	ret = tm_panel_enter_sleep_mode(tm);

Inline

> +	if (ret < 0) {
> +		dev_err(panel->dev, "failed to set panel off: %d\n", ret);
> +		return ret;
> +	}
> +
> +	msleep(150);

And here use DSI-specific wrapper.

> +
> +	return 0;
> +}
> +
> +static int tm_panel_unprepare(struct drm_panel *panel)
> +{
> +	struct tm_panel *tm = to_tm_panel(panel);
> +
> +	if (!tm->prepared)
> +		return 0;
> +
> +	if (tm->desc->discharge_on_disable) {
> +		regulator_disable(tm->avee);
> +		regulator_disable(tm->avdd);
> +		usleep_range(5000, 7000);
> +		gpiod_set_value(tm->enable_gpio, 0);
> +		usleep_range(5000, 7000);
> +		regulator_disable(tm->pp1800);
> +	} else {
> +		gpiod_set_value(tm->enable_gpio, 0);
> +		usleep_range(1000, 2000);
> +		regulator_disable(tm->avee);
> +		regulator_disable(tm->avdd);
> +		usleep_range(5000, 7000);
> +		regulator_disable(tm->pp1800);
> +	}
> +
> +	tm->prepared = false;
> +
> +	return 0;
> +}
> +
> +static int tm_panel_prepare(struct drm_panel *panel)
> +{
> +	struct tm_panel *tm = to_tm_panel(panel);
> +	int ret;
> +
> +	if (tm->prepared)
> +		return 0;
> +
> +	ret = regulator_enable(tm->pp1800);
> +	if (ret < 0)
> +		return ret;
> +
> +	usleep_range(6000, 8000);
> +
> +	ret = regulator_enable(tm->avdd);
> +	if (ret < 0)
> +		goto poweroff1v8;
> +	ret = regulator_enable(tm->avee);
> +	if (ret < 0)
> +		goto poweroffavdd;
> +
> +	usleep_range(11000, 12000);
> +
> +	gpiod_set_value(tm->enable_gpio, 1);
> +
> +	if (tm->desc->lp11_before_reset) {
> +		ret = mipi_dsi_dcs_nop(tm->dsi);
> +		if (ret < 0) {
> +			dev_err(&tm->dsi->dev, "Failed to send NOP: %d\n", ret);
> +			goto poweroff;
> +		}
> +		usleep_range(1000, 2000);
> +	}
> +	gpiod_set_value(tm->enable_gpio, 0);
> +	usleep_range(1000, 2000);
> +	gpiod_set_value(tm->enable_gpio, 1);
> +	usleep_range(20000, 21000);
> +
> +	ret = tm->desc->init(tm);
> +	if (ret < 0)
> +		goto poweroff;
> +
> +	tm->prepared = true;
> +	return 0;
> +
> +poweroff:
> +	gpiod_set_value(tm->enable_gpio, 0);
> +	regulator_disable(tm->avee);
> +poweroffavdd:
> +	regulator_disable(tm->avdd);
> +poweroff1v8:
> +	usleep_range(5000, 7000);
> +	regulator_disable(tm->pp1800);
> +
> +	return ret;
> +}
> +
> +static int tm_panel_enable(struct drm_panel *panel)
> +{
> +	msleep(130);
> +	return 0;
> +}
> +
> +static const struct drm_display_mode tm_tl121bvms07_00_default_mode = {
> +	.clock = 264355,
> +	.hdisplay = 1600,
> +	.hsync_start = 1600 + 20,
> +	.hsync_end = 1600 + 20 + 4,
> +	.htotal = 1600 + 20 + 4 + 20,
> +	.vdisplay = 2560,
> +	.vsync_start = 2560 + 82,
> +	.vsync_end = 2560 + 82 + 2,
> +	.vtotal = 2560 + 82 + 2 + 36,
> +};
> +
> +static const struct panel_desc tm_tl121bvms07_00_desc = {
> +	.modes = &tm_tl121bvms07_00_default_mode,
> +	.bpc = 8,
> +	.size = {
> +		.width_mm = 163,
> +		.height_mm = 260,
> +	},
> +	.lanes = 3,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
> +		      MIPI_DSI_MODE_LPM,
> +	.init = tm_tl121bvms07_00_init,
> +	.lp11_before_reset = true,
> +};
> +
> +static int tm_panel_get_modes(struct drm_panel *panel,
> +			       struct drm_connector *connector)
> +{
> +	struct tm_panel *tm = to_tm_panel(panel);
> +	const struct drm_display_mode *m = tm->desc->modes;
> +	struct drm_display_mode *mode;
> +
> +	mode = drm_mode_duplicate(connector->dev, m);
> +	if (!mode) {
> +		dev_err(panel->dev, "failed to add mode %ux%u@%u\n",
> +			m->hdisplay, m->vdisplay, drm_mode_vrefresh(m));
> +		return -ENOMEM;
> +	}

See drm_connector_helper_get_modes_fixed()

> +
> +	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
> +	drm_mode_set_name(mode);
> +	drm_mode_probed_add(connector, mode);
> +
> +	connector->display_info.width_mm = tm->desc->size.width_mm;
> +	connector->display_info.height_mm = tm->desc->size.height_mm;
> +	connector->display_info.bpc = tm->desc->bpc;
> +	/*
> +	 * TODO: Remove once all drm drivers call
> +	 * drm_connector_set_orientation_from_panel()
> +	 */
> +	drm_connector_set_panel_orientation(connector, tm->orientation);
> +
> +	return 1;
> +}
> +

-- 
With best wishes
Dmitry

