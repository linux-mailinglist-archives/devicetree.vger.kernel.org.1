Return-Path: <devicetree+bounces-140677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC5EA1AFA8
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 06:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 588B016C60F
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 05:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D6D19E975;
	Fri, 24 Jan 2025 05:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="djRty3id"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B423596D
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 05:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737694907; cv=none; b=aKsch0flDTJxWBKJ+EBbrz/ue0Pz/3m8jAbSyyu5ccD3SVepGrzELD9F4VQkVwAIhgKvi32JD2KInRKOmr2DVJigiuMrlA+Bi2RFaH8TFahJ6gXgDMkPU/QU8zihUJOwJSJyTBHYbb+Une2rl3e89hNnQv6AwuywYx4IlksZHyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737694907; c=relaxed/simple;
	bh=pW3tdRtZTEiTTkDBr8KjkOQGFTh5bhTDAL0gxxdbi94=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QlEHvUr3aWJmkZHl7zA4rP2U/J0YuMhVub9qZAM+BMnPj+OQco2anBorGhNYr5BrUxVCeThqR3hW3Mp7HBVDaeZgTTt1DTxx2W4b8dYewUAO56JpCFkKtekoNwzcRmZhRduKKA82MTjT+VKVidzbrJQWdFM6k+w4QGd6hc4NFjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=djRty3id; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54024aa9febso1867170e87.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 21:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737694903; x=1738299703; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0eYsDa3iowZle90PPKo5xgDvKG54lWztwuDRX2J8S4I=;
        b=djRty3idUS3D2AfW5lD3F0ajxP1iqMUdhM8qWUzSTC2ECz/Ura5Ta8ssDgffciMq/Y
         v471MwQx5fwQqyUWM8XQQHuk7idzn118I8KrObbNUpuysWwNjikJHjPJaIO2LFcNJ1XQ
         Efu4YUBZiuUH33Tc6NdhW5bSm2e8djnhxRpaa+1k7/+pvOSmgKOK9qq+80RjfD6azcLc
         G4hWMlaPa6tAGjL1CM8vjHWX5T2DLllEmEBsBslmy5qnoH6rPyk6x0NbYTUqYRKOeNeK
         4kd/DmG3fWhYVM3ehqwRJ8lqdrgNZKawsRIOzuu41kH/J/LWGcysModTKTWppXZ3NPO8
         nVFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737694903; x=1738299703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0eYsDa3iowZle90PPKo5xgDvKG54lWztwuDRX2J8S4I=;
        b=GruRgKm/Jltcie978ra5EavaQ1NqEgqyukGurCY4af1uESPeeq2DBisjU9a69cZnfM
         BnJTXi7BuqdWauPK6o52orneo8ulSLS7lte9pv+dCnt1KkY9o6KfUjdCM/geEcBCUBmR
         BLKVyXA5pJ5AHIXsxSMsycNoqvMZG7VqEnUnyRgVMzf3JP+sV7VN+i+FRnkfK3eaGNEP
         UjNwZbtzS68mYOjS3aw0BTq0WCnJlJ2aVWeW4jLBngIjwAZz9ggsDSUjBpt486XKin7P
         nrz+vX5acLrniZhl1x4pfhbT4rta9vKQrTnC9BXNP5nbhsmxF89csdPzKbYE/J8Z9XBR
         uVlg==
X-Forwarded-Encrypted: i=1; AJvYcCWFab27Ni6DenqWmCyhP8K5WcDrGEbpgseARc6qB3g/AUEWq/saIc7PdnDqJJKyWOsql8EWmUOB84h6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0lONibnes8ObLA3HABu8oMaSIGPfWDQ7tocJ3vspPmrxUnmcu
	36c/C9wz1cZRe8xnMLW8DQgJp5vdxnuoDWej2lgCghK18QVMwKduGvAHl+R6GDo=
X-Gm-Gg: ASbGncsC6MdrnGdLn9wTDuHkLCVy2mSkye5yz6oXdynyLOrq7KJn/cpoikk4+f4MRR9
	OxYQuuv4Bxw8OJtkVqW9ZQ10rs1EhqNV2bc9zqvaVNO0M3SRrhKEtFA3yHpBeNJsvCOgasDImPu
	FDQQHspt7QpNx/24SdWPbzDyoJbV7S7I77LFjJahxZNCgcJDAE0ph5XCeOfrUeUwOoY/Z4TfQVa
	pBZoDe5abE6rRZEUBfOSwdU2rhAS7Wz6rUDqPxThXaLrPWGAMg++kLwbcbMlAlkJMrducG6g1+/
	jI//zWx3NzTQL3GLTizBSZJhPZ2HtnXjBC/XRkxtB6k3Y86Tje3bO+ZdYTkz
X-Google-Smtp-Source: AGHT+IFFQeosHAQK91/7knXdxvaokrMIpayWFtvTGFpLCdc3EM+chnPzHE/8v2OM0VCnxzJ7GQylfQ==
X-Received: by 2002:ac2:44b3:0:b0:540:3561:969d with SMTP id 2adb3069b0e04-5439c287f06mr9522617e87.49.1737694902384;
        Thu, 23 Jan 2025 21:01:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8368542sm160268e87.114.2025.01.23.21.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 21:01:40 -0800 (PST)
Date: Fri, 24 Jan 2025 07:01:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Alexey Charkov <alchark@gmail.com>, Jianfeng Liu <liujianfeng1994@gmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Johan Jonker <jbx6244@gmail.com>, 
	Kever Yang <kever.yang@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, 
	Algea Cao <algea.cao@rock-chips.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v2 1/2] drm/bridge: synopsys: Add audio support for
 dw-hdmi-qp
Message-ID: <mpj5o2kdadkwsutjdtmze6riycdan3w7mohgqdzxiwfpvlh7zx@eocnqikqwrwt>
References: <20250123222850.223255-1-detlev.casanova@collabora.com>
 <20250123222850.223255-2-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123222850.223255-2-detlev.casanova@collabora.com>

On Thu, Jan 23, 2025 at 05:28:06PM -0500, Detlev Casanova wrote:
> From: Sugar Zhang <sugar.zhang@rock-chips.com>
> 
> Register the dw-hdmi-qp bridge driver as an HDMI audio codec.
> 
> The register values computation functions (for n) are based on the
> downstream driver, as well as the register writing functions.
> 
> The driver uses the generic HDMI Codec framework in order to implement
> the HDMI audio support.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 424 +++++++++++++++++++
>  1 file changed, 424 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> index b281cabfe992e..f79d38de4c6c4 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> @@ -36,6 +36,66 @@
>  
>  #define SCRAMB_POLL_DELAY_MS	3000
>  
> +/*
> + * Unless otherwise noted, entries in this table are 100% optimization.
> + * Values can be obtained from hdmi_compute_n() but that function is
> + * slow so we pre-compute values we expect to see.
> + *
> + * All 32k and 48k values are expected to be the same (due to the way
> + * the math works) for any rate that's an exact kHz.
> + */
> +static const struct dw_hdmi_audio_tmds_n {
> +	unsigned long tmds;
> +	unsigned int n_32k;
> +	unsigned int n_44k1;
> +	unsigned int n_48k;
> +} common_tmds_n_table[] = {
> +	{ .tmds = 25175000, .n_32k = 4096, .n_44k1 = 12854, .n_48k = 6144, },
> +	{ .tmds = 25200000, .n_32k = 4096, .n_44k1 = 5656, .n_48k = 6144, },

These values do not seem to match the tables in HDMI, Appendix D. Is
there any reason for that?

> +	{ .tmds = 27000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 28320000, .n_32k = 4096, .n_44k1 = 5586, .n_48k = 6144, },
> +	{ .tmds = 30240000, .n_32k = 4096, .n_44k1 = 5642, .n_48k = 6144, },
> +	{ .tmds = 31500000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
> +	{ .tmds = 32000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
> +	{ .tmds = 33750000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 36000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 40000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
> +	{ .tmds = 49500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 50000000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
> +	{ .tmds = 54000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 65000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 68250000, .n_32k = 4096, .n_44k1 = 5376, .n_48k = 6144, },
> +	{ .tmds = 71000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 72000000, .n_32k = 4096, .n_44k1 = 5635, .n_48k = 6144, },
> +	{ .tmds = 73250000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 74250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 75000000, .n_32k = 4096, .n_44k1 = 5880, .n_48k = 6144, },
> +	{ .tmds = 78750000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
> +	{ .tmds = 78800000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
> +	{ .tmds = 79500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
> +	{ .tmds = 83500000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 85500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 88750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 97750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 101000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 106500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
> +	{ .tmds = 108000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 115500000, .n_32k = 4096, .n_44k1 = 5712, .n_48k = 6144, },
> +	{ .tmds = 119000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
> +	{ .tmds = 135000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 146250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 148500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 154000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
> +	{ .tmds = 162000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +
> +	/* For 297 MHz+ HDMI spec have some other rule for setting N */
> +	{ .tmds = 297000000, .n_32k = 3073, .n_44k1 = 4704, .n_48k = 5120, },
> +	{ .tmds = 594000000, .n_32k = 3073, .n_44k1 = 9408, .n_48k = 10240, },
> +
> +	/* End of table */
> +	{ .tmds = 0,         .n_32k = 0,    .n_44k1 = 0,    .n_48k = 0, },
> +};
> +
>  struct dw_hdmi_qp_i2c {
>  	struct i2c_adapter	adap;
>  
> @@ -83,6 +143,326 @@ static void dw_hdmi_qp_mod(struct dw_hdmi_qp *hdmi, unsigned int data,
>  	regmap_update_bits(hdmi->regm, reg, mask, data);
>  }
>  
> +static struct dw_hdmi_qp *dw_hdmi_qp_from_bridge(struct drm_bridge *bridge)
> +{
> +	struct dw_hdmi_qp *hdmi = container_of(bridge, struct dw_hdmi_qp, bridge);
> +
> +	return hdmi;

Just `return container_of(bridge, struct dw_hdmi_qp, bridge);`

> +}
> +

[...]

> +
> +static int dw_hdmi_qp_audio_enable(struct drm_connector *connector,
> +			    struct drm_bridge *bridge)
> +{
> +	struct dw_hdmi_qp *hdmi = dw_hdmi_qp_from_bridge(bridge);
> +
> +	if (connector->status == connector_status_connected)
> +		dw_hdmi_qp_mod(hdmi, 0, AVP_DATAPATH_PACKET_AUDIO_SWDISABLE, GLOBAL_SWDISABLE);
> +
> +	return 0;
> +}
> +
> +static int dw_hdmi_qp_audio_prepare(struct drm_connector *connector,
> +			     struct drm_bridge *bridge,
> +			     struct hdmi_codec_daifmt *fmt,
> +			     struct hdmi_codec_params *hparms)
> +{
> +	struct dw_hdmi_qp *hdmi = dw_hdmi_qp_from_bridge(bridge);
> +	struct drm_connector_state *conn_state =
> +		drm_atomic_helper_connector_duplicate_state(connector);
> +	bool ref2stream = false;
> +	unsigned long long tmds_char_rate = conn_state->hdmi.tmds_char_rate;
> +
> +	drm_atomic_helper_connector_destroy_state(connector, conn_state);

This looks suspicious. I'd suggest storing tmds_char_rate to struct
dw_hdmi_qp in .atomic_commit instead of playing with the state.

> +
> +	if (connector->status != connector_status_connected) {
> +		dev_dbg(hdmi->dev, "connector status is not connected\n");
> +		return 0;
> +	}
> +
> +	if (fmt->bit_clk_provider | fmt->frame_clk_provider) {
> +		dev_err(hdmi->dev, "unsupported clock settings\n");
> +		return -EINVAL;
> +	}
> +
> +	if (fmt->bit_fmt == SNDRV_PCM_FORMAT_IEC958_SUBFRAME_LE)
> +		ref2stream = true;
> +
> +	dw_hdmi_qp_set_audio_interface(hdmi, fmt, hparms);
> +	dw_hdmi_qp_set_sample_rate(hdmi, tmds_char_rate, hparms->sample_rate);
> +	dw_hdmi_qp_set_channel_status(hdmi, hparms->iec.status, ref2stream);
> +	drm_atomic_helper_connector_hdmi_update_audio_infoframe(connector, &hparms->cea);
> +
> +	return 0;
> +}
> +
> +static void dw_hdmi_qp_audio_disable(struct drm_connector *connector,
> +			      struct drm_bridge *bridge)
> +{
> +	struct dw_hdmi_qp *hdmi = container_of(bridge, struct dw_hdmi_qp, bridge);
> +
> +	if (connector->status != connector_status_connected) {
> +		dev_dbg(hdmi->dev, "connector status is not connected\n");
> +		return;
> +	}

Will audio stream be disabled on disconnect?

And anyway the InfoFrame should be cleared by a call to
drm_atomic_helper_connector_hdmi_clear_audio_infoframe().

> +
> +	/*
> +	 * Keep ACR, AUDI, AUDS packet always on to make SINK device
> +	 * active for better compatibility and user experience.
> +	 *
> +	 * This also fix POP sound on some SINK devices which wakeup
> +	 * from suspend to active.
> +	 */
> +	dw_hdmi_qp_mod(hdmi, I2S_BPCUV_RCV_DIS, I2S_BPCUV_RCV_MSK,
> +		  AUDIO_INTERFACE_CONFIG0);
> +	dw_hdmi_qp_mod(hdmi, AUDPKT_PBIT_FORCE_EN | AUDPKT_CHSTATUS_OVR_EN,
> +		  AUDPKT_PBIT_FORCE_EN_MASK | AUDPKT_CHSTATUS_OVR_EN_MASK,
> +		  AUDPKT_CONTROL0);
> +
> +	dw_hdmi_qp_mod(hdmi, AVP_DATAPATH_PACKET_AUDIO_SWDISABLE,
> +		  AVP_DATAPATH_PACKET_AUDIO_SWDISABLE, GLOBAL_SWDISABLE);
> +}
> +
>  static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
>  			       unsigned char *buf, unsigned int length)
>  {
> @@ -361,6 +741,40 @@ static int dw_hdmi_qp_config_drm_infoframe(struct dw_hdmi_qp *hdmi,
>  	return 0;
>  }
>  
> +static int dw_hdmi_qp_config_audio_infoframe(struct dw_hdmi_qp *hdmi,
> +					     const u8 *buffer, size_t len)
> +{
> +	/*
> +	 * AUDI_CONTENTS0: { RSV, HB2, HB1, RSV }
> +	 * AUDI_CONTENTS1: { PB3, PB2, PB1, PB0 }
> +	 * AUDI_CONTENTS2: { PB7, PB6, PB5, PB4 }
> +	 *
> +	 * PB0: CheckSum
> +	 * PB1: | CT3    | CT2  | CT1  | CT0  | F13  | CC2 | CC1 | CC0 |
> +	 * PB2: | F27    | F26  | F25  | SF2  | SF1  | SF0 | SS1 | SS0 |
> +	 * PB3: | F37    | F36  | F35  | F34  | F33  | F32 | F31 | F30 |
> +	 * PB4: | CA7    | CA6  | CA5  | CA4  | CA3  | CA2 | CA1 | CA0 |
> +	 * PB5: | DM_INH | LSV3 | LSV2 | LSV1 | LSV0 | F52 | F51 | F50 |
> +	 * PB6~PB10: Reserved
> +	 *
> +	 * AUDI_CONTENTS0 default value defined by HDMI specification,
> +	 * and shall only be changed for debug purposes.
> +	 * So, we only configure payload byte from PB0~PB7(2 word total).
> +	 */
> +	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS1, &buffer[3], 2);

Please also update PKT_AUDI_CONTENTS0, in case it gets damaged somehow.

> +
> +	/* Enable ACR, AUDI, AMD */
> +	dw_hdmi_qp_mod(hdmi,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | PKTSCHED_AMD_TX_EN,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | PKTSCHED_AMD_TX_EN,
> +		  PKTSCHED_PKT_EN);
> +
> +	/* Enable AUDS */
> +	dw_hdmi_qp_mod(hdmi, PKTSCHED_AUDS_TX_EN, PKTSCHED_AUDS_TX_EN, PKTSCHED_PKT_EN);
> +
> +	return 0;
> +}
> +
>  static void dw_hdmi_qp_bridge_atomic_enable(struct drm_bridge *bridge,
>  					    struct drm_bridge_state *old_state)
>  {
> @@ -477,6 +891,9 @@ static int dw_hdmi_qp_bridge_write_infoframe(struct drm_bridge *bridge,
>  	case HDMI_INFOFRAME_TYPE_DRM:
>  		return dw_hdmi_qp_config_drm_infoframe(hdmi, buffer, len);
>  
> +	case HDMI_INFOFRAME_TYPE_AUDIO:
> +		return dw_hdmi_qp_config_audio_infoframe(hdmi, buffer, len);
> +
>  	default:
>  		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", type);
>  		return 0;
> @@ -494,6 +911,9 @@ static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
>  	.hdmi_tmds_char_rate_valid = dw_hdmi_qp_bridge_tmds_char_rate_valid,
>  	.hdmi_clear_infoframe = dw_hdmi_qp_bridge_clear_infoframe,
>  	.hdmi_write_infoframe = dw_hdmi_qp_bridge_write_infoframe,
> +	.hdmi_audio_startup = dw_hdmi_qp_audio_enable,
> +	.hdmi_audio_shutdown = dw_hdmi_qp_audio_disable,
> +	.hdmi_audio_prepare = dw_hdmi_qp_audio_prepare,
>  };
>  
>  static irqreturn_t dw_hdmi_qp_main_hardirq(int irq, void *dev_id)
> @@ -603,6 +1023,10 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
>  	if (IS_ERR(hdmi->bridge.ddc))
>  		return ERR_CAST(hdmi->bridge.ddc);
>  
> +	hdmi->bridge.hdmi_audio_max_i2s_playback_channels = 8;
> +	hdmi->bridge.hdmi_audio_dev = dev;
> +	hdmi->bridge.hdmi_audio_dai_port = 1;
> +
>  	ret = devm_drm_bridge_add(dev, &hdmi->bridge);
>  	if (ret)
>  		return ERR_PTR(ret);
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

