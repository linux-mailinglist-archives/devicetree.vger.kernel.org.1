Return-Path: <devicetree+bounces-79959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8EC91777C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 06:41:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0133B1F224FE
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 04:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A71D13AD33;
	Wed, 26 Jun 2024 04:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QkbKe6Kh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC4C6AB8
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719376911; cv=none; b=a9qnTtuKSZ0AcdEyxdxWHJ8lzqBQCsb9IyMIKgxWhLo/XYflL5YlEM0rWiHp8tp0EqQ5njUpLKqg+L2MLldK5bYKHyU/zjz6nVPdolEtV99pCiLafltFdyQnPgeXgh/U4mvVupoO+SL48Sshzx7TPWuPKWDkSC8wsLq/jenRq1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719376911; c=relaxed/simple;
	bh=QRaqm4UHnafeq/IXFilOgpp6kW8AF0o0NszrnA+/Pw4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gWzZHJysx0gab1d+9dWrboSHTIzXo1qHdA8ruk1LVPgwfw0khMOSW1Ju3Y5mam14M41rJiua7rea8JRoMKwPBu/hk+il/PUAF2sta+MO8SpUrab8ni5q0pq5an7bjJgIKnfg4McLhb4GHh2PK2/NWYEPRF80E/Bt9VwJLDWfUT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QkbKe6Kh; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52ce674da85so3070167e87.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 21:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719376908; x=1719981708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v6VrmvF1EJw2vDb/7UUnrTBd5gZX6m6TMzhdMWuYfd4=;
        b=QkbKe6Kh+bT1os5XKfBWE3KeV7IJQ8x6xXCivPAMIDrQDeyEbbfHYOJSabVwUxcg63
         ULtDzFoIFdt4VUrgUclXk78D0rfNs1a/HekCtDtZbF5cjSuq1BH0VW6D0XdWjmsXYy3f
         HJ1xC1cwPTZdDeX4lotRanSITNzt+cgvvwbIR15HcVCigS9XlklKC9oHwl2aQT9Bz3ZU
         mR+jv6WHLjeScTO9TxM3pehOzhEiJSY2UK85TvrQijX+o/5wnVQEuCKLSgt7s8t7XdVi
         1nU6USUBynTH7GxUHk1l23hd6TtL2U7SJT8eylmUP7Q+G9eXlKhbWyjKirEnCcoiSw0V
         s8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719376908; x=1719981708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v6VrmvF1EJw2vDb/7UUnrTBd5gZX6m6TMzhdMWuYfd4=;
        b=GuBJVk3zMsbtwMRwoEiEOB24ihWoRzNqOsWu7pi/AosbhHezra4lEXygpZXC+u6tkD
         Trp7y51+J3vGpMW+7MQ6wr98GYp3g9nGf7RwoRNvfq6ogs4NXmCUMgCnCjGnXAbsHIFg
         ySA7C3VpfrIaOJIBk7Ay6aHqgz4hPH/xvv/Dc61eZJtEhBGOwO5BbtJtzGdtc+ysuiV0
         nNAlBHjzbTLD0mSn30ayMdf0igoyg4oXTGCrYyKkg5U4qw7tDlsXzKVTZFRRojbVy9VU
         0avYkvzGa8h2Dx6Z+e7c+AK8JCxSdqiCUE2SJ3IJgbplXxsTM1oxsQ0U2dwQ3FLxtRLU
         KuYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVG8SLWhwZlyCQrJZcDsnjeYJ7U5Hd0MSZcSDOCRSLJzfVT/wjRMZgmRpevR6ICV1bZbgpgdJYTtmVqZ1/lXjXoDHrzbUrFW7K4Lw==
X-Gm-Message-State: AOJu0YyFsCR+bBvSYXD9EDXhP/Z9fUByLq0WfTCsda85WdYlicPyC3uN
	MSPwpWCKicIB39bjfQvOXPnkGPHfi8yMe04StVrdjMXx3D4UbqX2tjtiW0Fz3Jw=
X-Google-Smtp-Source: AGHT+IGsPvTEV/zY3vz8LeZ6Bq0ihdlVV6nREOwO4yNrOoETXjQ9wCWuwcfszKVFWDMu4FBqt13fsQ==
X-Received: by 2002:a05:6512:3054:b0:52d:215b:9028 with SMTP id 2adb3069b0e04-52d215b914dmr2204420e87.60.1719376907560;
        Tue, 25 Jun 2024 21:41:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd643e419sm1416456e87.243.2024.06.25.21.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 21:41:47 -0700 (PDT)
Date: Wed, 26 Jun 2024 07:41:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/panel: add lincoln lcd197 support
Message-ID: <irzer3be5fj2rg2bmc2oqxqtaw6jybbdkgv3jgxpyhdvojwv24@e4i2v6d454nz>
References: <20240625142552.1000988-1-jbrunet@baylibre.com>
 <20240625142552.1000988-4-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240625142552.1000988-4-jbrunet@baylibre.com>

On Tue, Jun 25, 2024 at 04:25:50PM GMT, Jerome Brunet wrote:
> Add support for the Lincoln LCD197 1080x1920 DSI panel.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                |  11 +
>  drivers/gpu/drm/panel/Makefile               |   1 +
>  drivers/gpu/drm/panel/panel-lincoln-lcd197.c | 333 +++++++++++++++++++
>  3 files changed, 345 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-lincoln-lcd197.c
> 

[...]

> +
> +	mipi_dsi_dcs_write_seq(lcd->dsi, 0xB9, 0xFF, 0x83, 0x99);

- Please use lowercase hex instead
- Please consider switching to _multi() functions.


> +	usleep_range(200, 300);

This will require new helper msm_dsi_usleep_range(ctx, 200, 300);

> +	mipi_dsi_dcs_write_seq(lcd->dsi, 0xB6, 0x92, 0x92);
> +	mipi_dsi_dcs_write_seq(lcd->dsi, 0xCC, 0x00);
> +	mipi_dsi_dcs_write_seq(lcd->dsi, 0xBF, 0x40, 0x41, 0x50, 0x49);
> +	mipi_dsi_dcs_write_seq(lcd->dsi, 0xC6, 0xFF, 0xF9);
> +	mipi_dsi_dcs_write_seq(lcd->dsi, 0xC0, 0x25, 0x5A);
> +	mipi_dsi_dcs_write_seq(lcd->dsi, MIPI_DCS_SET_ADDRESS_MODE, 0x02);
> +
> +	err = mipi_dsi_dcs_exit_sleep_mode(lcd->dsi);
> +	if (err < 0) {
> +		dev_err(panel->dev, "failed to exit sleep mode: %d\n", err);
> +		goto poweroff;
> +	}
> +	msleep(120);
> +
> +	err = mipi_dsi_dcs_read(lcd->dsi, MIPI_DCS_GET_DISPLAY_ID, display_id, 3);

This probably needs new _multi helper too.

> +	if (err < 0) {
> +		dev_err(panel->dev, "Failed to read display id: %d\n", err);
> +	} else {
> +		dev_dbg(panel->dev, "Display id: 0x%02x-0x%02x-0x%02x\n",
> +			display_id[0], display_id[1], display_id[2]);
> +	}
> +
> +	lcd->prepared = true;

Should not be required anymore.

> +
> +	return 0;
> +
> +poweroff:
> +	gpiod_set_value_cansleep(lcd->enable_gpio, 0);
> +	gpiod_set_value_cansleep(lcd->reset_gpio, 1);
> +	regulator_disable(lcd->supply);
> +
> +	return err;
> +}
> +

> +
> +static const struct drm_display_mode default_mode = {
> +	.clock = 154002,
> +	.hdisplay = 1080,
> +	.hsync_start = 1080 + 20,
> +	.hsync_end = 1080 + 20 + 6,
> +	.htotal = 1080 + 204,
> +	.vdisplay = 1920,
> +	.vsync_start = 1920 + 4,
> +	.vsync_end = 1920 + 4 + 4,
> +	.vtotal = 1920 + 79,
> +	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +};
> +
> +static int lincoln_lcd197_panel_get_modes(struct drm_panel *panel,
> +					  struct drm_connector *connector)
> +{
> +	struct drm_display_mode *mode;
> +
> +	mode = drm_mode_duplicate(connector->dev, &default_mode);
> +	if (!mode) {
> +		dev_err(panel->dev, "failed to add mode %ux%u@%u\n",
> +			default_mode.hdisplay, default_mode.vdisplay,
> +			drm_mode_vrefresh(&default_mode));
> +		return -ENOMEM;
> +	}
> +
> +	drm_mode_set_name(mode);
> +	drm_mode_probed_add(connector, mode);
> +	connector->display_info.width_mm = 79;
> +	connector->display_info.height_mm = 125;

drm_connector_helper_get_modes_fixed()

> +
> +	return 1;
> +}
> +


> +
> +static void lincoln_lcd197_panel_shutdown(struct mipi_dsi_device *dsi)
> +{
> +	struct lincoln_lcd197_panel *lcd = mipi_dsi_get_drvdata(dsi);
> +
> +	drm_panel_disable(&lcd->panel);
> +	drm_panel_unprepare(&lcd->panel);
> +}

I think the agreement was that there should be no need for the panel's
shutdown, the DRM driver should shutdown the panel.


-- 
With best wishes
Dmitry

