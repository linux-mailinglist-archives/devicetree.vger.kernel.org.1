Return-Path: <devicetree+bounces-139395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E07A15B3C
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 04:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 176FE166BB3
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 03:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE772CCC5;
	Sat, 18 Jan 2025 03:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pU3UMiqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10032F50
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 03:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737171127; cv=none; b=ZYbIugXsL+RSFTVEFbQPkNrZ3mKGXND/uoqKnIbtRb34xnnZvZhbATVkrmpAaBXO2ULwqItn7Lq6JgOed+y6pDuom5im/5hUXER0aQat3yDzf0Z0ike2+Z7rgvstt7IoXyMf1bb69hTO0IUX8Rt+EZDhSE0S/T/GHmy6KHf+kxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737171127; c=relaxed/simple;
	bh=J2Oepqueuxd4ozwv+NPIpvqfgy4TtqZpXa/kQr/v2NU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZBSO0vnL5IHDAuVIXtfrs3y1Dll5un4AaYjic2Nag+uZ7eypK1o4+Z70dIM5fWh5s88cGUpVkSA23qaD+xSLUTlKc/Gjghd0TG9fTDXcdb3w4z6+n3UL07kHG6Tz1p2hYXnWlFOLWFmezQmvjLZE0YDc64QjwqKsXLUgnqBZ+no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pU3UMiqx; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53f22fd6832so2908152e87.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 19:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737171124; x=1737775924; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hzhYcQ8TIQfms4jIUonylBO9hpxU9lIyBPmgiVcYCfA=;
        b=pU3UMiqx9K7JX+1xzYGNnG2ah/qbQg+r96jvuS4rg/bq9oHxA5Jb9gnfn3Qr/thWbp
         oB3obXEdP2zMtOFoXLArhdzVioZRuTlyUfk83Z7VzmrG5IwLgDGaoQR/3HHB8aTHP+mJ
         o/pmmWyWEnfn+IaMlZL9h4s1G3Ey9w+phd153kYXbFTyHKwvZ+i/o8oHGvm/eXZD+PqH
         YflD4yx+mbTcgUED0IKJFr9m1wKDJvF+12m9ZM6QM96cLAFTFw2kxSRMmHFiSIBe+kFG
         8NFeI5UKt3Rb2uiGDwfu9OVNLz+iqHkDg6aOWZOIhAPILbDYfnRK2MxqxViWGogp+itg
         TF/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737171124; x=1737775924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzhYcQ8TIQfms4jIUonylBO9hpxU9lIyBPmgiVcYCfA=;
        b=oabRyUCvK13/ifqRqk7Hra56L1GR7NKLSv6I9NNRF0yEkxSCOPWagSrCe9V2Ec0taD
         Uzd68/tEFdR5HX1PvHLqpBYRib8V5aGW9ad0idrxjrNoux5e3i0SysdKdhKWavL16EBn
         pwVY9DvDAPdzhTT/4zzJTI7S9XKCnHInqH6wYz6YdfCs0UmvUUY/BcqvIcUJpozrVWSU
         NuyPpFaE3DvqHv7asK/tiwOjFLt1z/AU+Il6R8n3V5KUL0KJFGJn+tcP547gpYkD+Mex
         usBSeA0gVmSnz3ZFi4t2znJb3TdsPUJK6xl1de8DXWisDLFuL6fu8ihojij6vc//gwCV
         sTzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf3tcGwrz78cSYR/e3OTWVKfw8Ih8+hNbY6V+ngh0E6giiwVSU/YnNaJiEa4RJnPsIhnp7O9+vWF4U@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5ffP8EmkSyU8hGh8SlnyZZ3NX/5XvLEMoG29SZaABYdqJGjvc
	r4Dg9tepWlc7B8hvADvM40CoT+IHSG4C0O8SFwkPYQ25mmZ2YAKmwdJBgEq8Qqc=
X-Gm-Gg: ASbGnctyMdp+iK4OjNL/C2qRwDnMy7iQ1ZiAiHPGL5ikfLdxQuvA83dyZ5OHIjFVeFg
	lNgacVFdZOojBwq6brbBNKbCx+CX5SNP4VQwrDhFNZFEBxOgfExWO9KRGO7TGMCI/fidMEESKqp
	nUXJL0VAeKmejkB9jiTzp5M4I/zaTssuKIx0jQEZW+eaSHDpAS9ZdERXxL7HWXeBIoNCbBJrU3X
	NRMyqz7TJ4SLx3O4asHT8ddMSgcn79gcJ7xGeyFy6P0c+07V8UuRntlC+oVNCGwUTGrMzSeKmxD
	Fvt44H3Z8FYRP2fUnHCBNPafj3hXMLBx5zqtthH5YLADQazkCw==
X-Google-Smtp-Source: AGHT+IEHCXhnR9Ifz788WfaTw8BC7iP0CpDRy+2jMi6d69znvkXj4Q2lQp7TuxJzYYy15v3Qpf7Fpg==
X-Received: by 2002:a05:6512:e8d:b0:542:9883:263 with SMTP id 2adb3069b0e04-5439c246370mr1751170e87.14.1737171123682;
        Fri, 17 Jan 2025 19:32:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af60970sm574860e87.116.2025.01.17.19.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 19:32:02 -0800 (PST)
Date: Sat, 18 Jan 2025 05:31:59 +0200
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
Subject: Re: [PATCH v1 1/2] drm/bridge: synopsys: Add audio support for
 dw-hdmi-qp
Message-ID: <xtthbgdnyaevtcvjmkqsipje6ksxmbilkacbw5f4m4fvu62ggx@wm34iotb2a6d>
References: <20250117164815.67253-1-detlev.casanova@collabora.com>
 <20250117164815.67253-2-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250117164815.67253-2-detlev.casanova@collabora.com>

On Fri, Jan 17, 2025 at 11:46:57AM -0500, Detlev Casanova wrote:
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
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 472 +++++++++++++++++++
>  1 file changed, 472 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> index b281cabfe992..55ceeb180bc6 100644
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
> @@ -59,6 +119,8 @@ struct dw_hdmi_qp {
>  		void *data;
>  	} phy;
>  
> +	struct mutex audio_mutex;

There should be a comment, what is being protected by this mutex.

> +
>  	struct regmap *regm;
>  };
>  

[...]

> +static int dw_hdmi_qp_init_audio_infoframe(struct dw_hdmi_qp *hdmi)
> +{
> +	struct hdmi_audio_infoframe frame;
> +	u8 infoframe_buf[HDMI_INFOFRAME_SIZE(AUDIO)];
> +	int ret = 0;
> +
> +	hdmi_audio_infoframe_init(&frame);
> +
> +	frame.coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
> +	frame.sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
> +	frame.sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
> +	frame.channels = 2;
> +
> +	ret = hdmi_audio_infoframe_pack(&frame, infoframe_buf,
> +					sizeof(infoframe_buf));
> +	if (ret < 0) {
> +		dev_err(hdmi->dev, "%s: Failed to pack audio infoframe: %d\n",
> +			__func__, ret);
> +		return ret;
> +	}
> +
> +	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS1, &infoframe_buf[3], 2);
> +	dw_hdmi_qp_mod(hdmi,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN,
> +		  PKTSCHED_PKT_EN);
> +
> +	return 0;
> +}
> +
> +static void dw_hdmi_qp_set_audio_infoframe(struct dw_hdmi_qp *hdmi,
> +				    struct hdmi_codec_params *hparms)
> +{
> +	u8 infoframe_buf[HDMI_INFOFRAME_SIZE(AUDIO)];
> +	int ret = 0;
> +
> +	ret = hdmi_audio_infoframe_pack(&hparms->cea, infoframe_buf,
> +					sizeof(infoframe_buf));

Please use existing functions,
drm_atomic_helper_connector_hdmi_update_audio_infoframe() and
drm_atomic_helper_connector_hdmi_clear_audio_infoframe() to manage the
infoframe. The drm_atomic_helper_connector_hdmi_update_infoframes()
function will take care of updating the audio infoframe.

> +	if (!ret) {
> +		dev_err(hdmi->dev, "%s: Failed to pack audio infoframe: %d\n",
> +			__func__, ret);
> +		return;
> +	}
> +
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
> +	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS1, &infoframe_buf[3], 2);

This should go to your dw_hdmi_qp_bridge_write_infoframe().

> +
> +	/* Enable ACR, AUDI, AMD */
> +	dw_hdmi_qp_mod(hdmi,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | PKTSCHED_AMD_TX_EN,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | PKTSCHED_AMD_TX_EN,
> +		  PKTSCHED_PKT_EN);
> +
> +	/* Enable AUDS */
> +	dw_hdmi_qp_mod(hdmi, PKTSCHED_AUDS_TX_EN, PKTSCHED_AUDS_TX_EN, PKTSCHED_PKT_EN);
> +	mutex_unlock(&hdmi->audio_mutex);
> +}
> +

-- 
With best wishes
Dmitry

