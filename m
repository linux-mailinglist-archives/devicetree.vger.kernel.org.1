Return-Path: <devicetree+bounces-127717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CA79E60CB
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 23:48:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAEDF283DB1
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 22:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BDE81B87C8;
	Thu,  5 Dec 2024 22:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lXCydZBn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80711E522
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 22:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733438911; cv=none; b=WK6E7C8REZuwObJydieNdQvy1Ry5t2AuoZBaVfp0QH2reJPGfAIncwwKQNg4VDxLj/ZYH4YTKkjsDogXdjDPSI3sfdt4W1RQ/9YqHXrlrNyAAsVieLAJl1GxfgCRVDblCBgP3ygKleDu4QzminZVxm1BlwL373ouROb9nDLJIYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733438911; c=relaxed/simple;
	bh=gTGEPy2CvRrmMSYEE4MW9uLY8zq0P0Utj7QLRpZEINk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eM7na3WjF4Qa4QuA/8Q3OtduGE4eWvZ7fuy7ipHkYpibdp1njjffmk4DJlRHucTW42/mBayxooMpuAOL2QpxoI1DKjKBHhqXM2YB18c8UxBc5k/YFCICNndxPo+OE8Qnc6elE7nA6XXbXxVJOYCrQinRQIZwtr3ScEnlSgLLRN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lXCydZBn; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53df6322ea7so1738104e87.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 14:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733438908; x=1734043708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=83pWkxoCSEdGiBqyK8jETisdfX7DMJZ5I5IYCKIF4HA=;
        b=lXCydZBnHExD+nRXV9DiaGdtq0RUlUnC2yCI6RBiZy7JtHEnU5mRA6BdFP6CDpZ+cb
         XV5ZDfHGBLzqmUlfSzEMMIex1MAT9QdmdpaiJJH6hb2YtBAmkWTR0fbLAGK1eCOT8LMJ
         I3O2Vyr0F8jFxmIO+VQyTglgiLck4vx6siDikRN/lJ1O6dM3rAhkBV0ApE9ZjPwzgRzK
         fM8RkkXprQVsFPlE5WfmVa0fUyiMZXsW6kT38Vs3eHEitseftVOmv6Ytzsf+pdcgGABb
         obriBTTKdL2kHVlbG4zGIAZhxm+qGEdGqR7ySwh6Y/mwWAo+WsxdkXZwDkUF/Pj64033
         WjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733438908; x=1734043708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=83pWkxoCSEdGiBqyK8jETisdfX7DMJZ5I5IYCKIF4HA=;
        b=Nc6ah6sNpfOVxjjRXt0p2K0Sh9Tzrhqv5n+zmQib9S9750LIBBFZhxQuJPtmSKwKo3
         38LojMou3D1PSpOgx1E6b3lq4q81/YHRrDV18HLVI70jpMUAPH4FghJ954xCUgX+c713
         ZdEbqVlXIb7Br+MrXLY1iKjQltTOIKrI1Xk3p7Lml8OwonHuruX0BDvuwszxf9NT3L2U
         seK3CIdffcpdYnZjNrpOZjNz0U+lMpswJky1Kai7zYP/Io7ES2ROJfHNewbTAHGwwhTx
         u3OMEARZOBPOB/JtZFWqYL8qFEEjnH4jCjTmuIc8rmwcLGkhr4B9OmSt8dnnbPhyLTRe
         bIPA==
X-Forwarded-Encrypted: i=1; AJvYcCVzYL1M6dxWQp/mWmz6VKQ2LK1GsTiVKoaEKCnwiI6pHD49UVa3v6+mzWYDGtGKNWxUt+P+G3DSRObl@vger.kernel.org
X-Gm-Message-State: AOJu0YxWHP1Mneje7wiNp1x5clNjPgdLbkmw/g7dxgwZXO9XAJwmpttD
	eSxj+mPwezrLzJ13szxjKWGBTpyRZr2hrWYZLOEhg60OEu4TA++7tatOJ3JYXiQ=
X-Gm-Gg: ASbGnct8Q37yNWhhOfO8M97zhweGKBWYx16zY4By4JTSWnCWOL95DAF4FioCuu24mR/
	VjO0z8Nldt9AoLOoJfEskjGzE/dPTbTFwSeMjBu5SSIi77XDaTuUsc/Xi18YxdRU4zYo4hIMQwF
	KS1o7r5yCnUk3VfPUGN0aBo2zWsRPAvK8yWNsJbhbfM12z+x3mpQbF06OxFZhO2XwAFPQY7BcNp
	7qUgxWpOK+dLrXbHflW5w91KbTDLRbnVSQ+bukN+ny5KJYFdsLideFYAgNjXZJ7ZgZ11rt74qp0
	fWQJZUYN+RRhMW+ZBd1/nXPbD9Q2xQ==
X-Google-Smtp-Source: AGHT+IEUCn69scVq5JjYTt7YykqkAOYdXSBMpYFvfnkl+upOc9eRbhj+ieRB8nnC2GaSBXSO9xv/cQ==
X-Received: by 2002:a05:6512:3b85:b0:53d:a3a7:fe84 with SMTP id 2adb3069b0e04-53e2c28e63bmr214074e87.8.1733438907730;
        Thu, 05 Dec 2024 14:48:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e2297527asm358519e87.85.2024.12.05.14.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 14:48:26 -0800 (PST)
Date: Fri, 6 Dec 2024 00:48:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andrej Picej <andrej.picej@norik.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, marex@denx.de, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, upstream@lists.phytec.de
Subject: Re: [PATCH v4 2/3] drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing
 optional properties
Message-ID: <nbumcptoi5hwehjbrynf6dh2wrz7a4ugqblrjxyswvj7udkf3u@6qikclizqfjr>
References: <20241205134021.2592013-1-andrej.picej@norik.com>
 <20241205134021.2592013-3-andrej.picej@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205134021.2592013-3-andrej.picej@norik.com>

On Thu, Dec 05, 2024 at 02:40:20PM +0100, Andrej Picej wrote:
> Add a optional properties to change LVDS output voltage. This should not
> be static as this depends mainly on the connected display voltage
> requirement. We have three properties:
> - "ti,lvds-termination-ohms", which sets near end termination,
> - "ti,lvds-vod-swing-data-microvolt" and
> - "ti,lvds-vod-swing-clock-microvolt" which both set LVDS differential
> output voltage for data and clock lanes. They are defined as an array
> with min and max values. The appropriate bitfield will be set if
> selected constraints can be met.
> 
> If "ti,lvds-termination-ohms" is not defined the default of 200 Ohm near
> end termination will be used. Selecting only one:
> "ti,lvds-vod-swing-data-microvolt" or
> "ti,lvds-vod-swing-clock-microvolt" can be done, but the output voltage
> constraint for only data/clock lanes will be met. Setting both is
> recommended.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
> Changes in v4:
> - fix typo in commit message bitfiled -> bitfield
> - use arrays (lvds_vod_swing_conf and lvds_term_conf) in private data, instead
> of separate variables for channel A/B
> - add more checks on return value of "of_property_read_u32_array"
> Changes in v3:
> - use microvolts for default array values 1000 mV -> 1000000 uV.
> Changes in v2:
> - use datasheet tables to get the proper configuration
> - since major change was done change the authorship to myself
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 147 +++++++++++++++++++++++++-
>  1 file changed, 144 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> index 57a7ed13f996..f724d2a6777b 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -132,6 +132,16 @@
>  #define  REG_IRQ_STAT_CHA_SOT_BIT_ERR		BIT(2)
>  #define  REG_IRQ_STAT_CHA_PLL_UNLOCK		BIT(0)
>  
> +enum sn65dsi83_channel {
> +	CHANNEL_A,
> +	CHANNEL_B
> +};
> +
> +enum sn65dsi83_lvds_term {
> +	OHM_100,
> +	OHM_200
> +};
> +
>  enum sn65dsi83_model {
>  	MODEL_SN65DSI83,
>  	MODEL_SN65DSI84,
> @@ -147,6 +157,8 @@ struct sn65dsi83 {
>  	struct regulator		*vcc;
>  	bool				lvds_dual_link;
>  	bool				lvds_dual_link_even_odd_swap;
> +	int				lvds_vod_swing_conf[2];
> +	int				lvds_term_conf[2];
>  };
>  
>  static const struct regmap_range sn65dsi83_readable_ranges[] = {
> @@ -237,6 +249,36 @@ static const struct regmap_config sn65dsi83_regmap_config = {
>  	.max_register = REG_IRQ_STAT,
>  };
>  
> +static const int lvds_vod_swing_data_table[2][4][2] = {
> +	{	/* 100 Ohm */
> +		{ 180000, 313000 },
> +		{ 215000, 372000 },
> +		{ 250000, 430000 },
> +		{ 290000, 488000 },
> +	},
> +	{	/* 200 Ohm */
> +		{ 150000, 261000 },
> +		{ 200000, 346000 },
> +		{ 250000, 428000 },
> +		{ 300000, 511000 },
> +	},
> +};
> +
> +static const int lvds_vod_swing_clock_table[2][4][2] = {
> +	{	/* 100 Ohm */
> +		{ 140000, 244000 },
> +		{ 168000, 290000 },
> +		{ 195000, 335000 },
> +		{ 226000, 381000 },
> +	},
> +	{	/* 200 Ohm */
> +		{ 117000, 204000 },
> +		{ 156000, 270000 },
> +		{ 195000, 334000 },
> +		{ 234000, 399000 },
> +	},
> +};
> +
>  static struct sn65dsi83 *bridge_to_sn65dsi83(struct drm_bridge *bridge)
>  {
>  	return container_of(bridge, struct sn65dsi83, bridge);
> @@ -435,12 +477,16 @@ static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
>  		val |= REG_LVDS_FMT_LVDS_LINK_CFG;
>  
>  	regmap_write(ctx->regmap, REG_LVDS_FMT, val);
> -	regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x05);
> +	regmap_write(ctx->regmap, REG_LVDS_VCOM,
> +			REG_LVDS_VCOM_CHA_LVDS_VOD_SWING(ctx->lvds_vod_swing_conf[CHANNEL_A]) |
> +			REG_LVDS_VCOM_CHB_LVDS_VOD_SWING(ctx->lvds_vod_swing_conf[CHANNEL_B]));
>  	regmap_write(ctx->regmap, REG_LVDS_LANE,
>  		     (ctx->lvds_dual_link_even_odd_swap ?
>  		      REG_LVDS_LANE_EVEN_ODD_SWAP : 0) |
> -		     REG_LVDS_LANE_CHA_LVDS_TERM |
> -		     REG_LVDS_LANE_CHB_LVDS_TERM);
> +		     (ctx->lvds_term_conf[CHANNEL_A] ?
> +			  REG_LVDS_LANE_CHA_LVDS_TERM : 0) |
> +		     (ctx->lvds_term_conf[CHANNEL_B] ?
> +			  REG_LVDS_LANE_CHB_LVDS_TERM : 0));
>  	regmap_write(ctx->regmap, REG_LVDS_CM, 0x00);
>  
>  	le16val = cpu_to_le16(mode->hdisplay);
> @@ -576,10 +622,101 @@ static const struct drm_bridge_funcs sn65dsi83_funcs = {
>  	.atomic_get_input_bus_fmts = sn65dsi83_atomic_get_input_bus_fmts,
>  };
>  
> +static int sn65dsi83_select_lvds_vod_swing(struct device *dev,
> +	u32 lvds_vod_swing_data[2], u32 lvds_vod_swing_clk[2], u8 lvds_term)
> +{
> +	int i;
> +
> +	for (i = 0; i <= 3; i++) {
> +		if (lvds_vod_swing_data_table[lvds_term][i][0] >= lvds_vod_swing_data[0] &&
> +		lvds_vod_swing_data_table[lvds_term][i][1] <= lvds_vod_swing_data[1] &&
> +		lvds_vod_swing_clock_table[lvds_term][i][0] >= lvds_vod_swing_clk[0] &&
> +		lvds_vod_swing_clock_table[lvds_term][i][1] <= lvds_vod_swing_clk[1])
> +			return i;
> +	}
> +
> +	dev_err(dev, "failed to find appropriate LVDS_VOD_SWING configuration\n");
> +	return -EINVAL;
> +}
> +
> +static int sn65dsi83_parse_lvds_endpoint(struct sn65dsi83 *ctx, int channel)
> +{
> +	struct device *dev = ctx->dev;
> +	struct device_node *endpoint;
> +	/* Set so the property can be freely selected if not defined */
> +	u32 lvds_vod_swing_data[2] = { 0, 1000000 };
> +	u32 lvds_vod_swing_clk[2] = { 0, 1000000 };
> +	u32 lvds_term = 200;
> +	u8 lvds_term_conf;
> +	int endpoint_reg;
> +	int lvds_vod_swing_conf;
> +	int ret = 0;
> +	int ret_data;
> +	int ret_clock;
> +
> +	if (channel == CHANNEL_A)
> +		endpoint_reg = 2;
> +	else
> +		endpoint_reg = 3;
> +
> +	endpoint = of_graph_get_endpoint_by_regs(dev->of_node, endpoint_reg, -1);
> +	of_property_read_u32(endpoint, "ti,lvds-termination-ohms", &lvds_term);
> +
> +	if (lvds_term == 200)
> +		lvds_term_conf = OHM_200;
> +	else
> +		lvds_term_conf = OHM_100;
> +
> +	ctx->lvds_term_conf[channel] = lvds_term_conf;
> +
> +	ret_data = of_property_read_u32_array(endpoint,
> +			"ti,lvds-vod-swing-data-microvolt", lvds_vod_swing_data,
> +			ARRAY_SIZE(lvds_vod_swing_data));
> +	if (ret_data != 0 && ret_data != -EINVAL) {
> +		ret = ret_data;
> +		goto exit;
> +	}
> +
> +	ret_clock = of_property_read_u32_array(endpoint,
> +			"ti,lvds-vod-swing-clock-microvolt", lvds_vod_swing_clk,
> +			ARRAY_SIZE(lvds_vod_swing_clk));
> +	if (ret_clock != 0 && ret_clock != -EINVAL) {
> +		ret = ret_clock;
> +		goto exit;
> +	}
> +
> +	/* If any of the two properties is defined. */
> +	if (!ret_data || !ret_clock) {
> +		lvds_vod_swing_conf = sn65dsi83_select_lvds_vod_swing(dev,
> +			lvds_vod_swing_data, lvds_vod_swing_clk,
> +			lvds_term_conf);
> +		if (lvds_vod_swing_conf < 0) {
> +			ret = lvds_vod_swing_conf;
> +			goto exit;
> +		}
> +
> +		ctx->lvds_vod_swing_conf[channel] = lvds_vod_swing_conf;
> +	}
> +	ret = 0;
> +exit:
> +	of_node_put(endpoint);
> +	return ret;
> +}
> +
>  static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
>  {
>  	struct drm_bridge *panel_bridge;
>  	struct device *dev = ctx->dev;
> +	int ret;
> +
> +	ctx->lvds_vod_swing_conf[CHANNEL_A] = 0x1;
> +	ctx->lvds_vod_swing_conf[CHANNEL_B] = 0x1;
> +	ctx->lvds_term_conf[CHANNEL_A] = 0x1;
> +	ctx->lvds_term_conf[CHANNEL_B] = 0x1;

These match the defaults in sn65dsi83_parse_lvds_endpoint(). Do we
really need those?

> +
> +	ret = sn65dsi83_parse_lvds_endpoint(ctx, CHANNEL_A);
> +	if (ret < 0)
> +		return ret;
>  
>  	ctx->lvds_dual_link = false;
>  	ctx->lvds_dual_link_even_odd_swap = false;
> @@ -587,6 +724,10 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
>  		struct device_node *port2, *port3;
>  		int dual_link;
>  
> +		ret = sn65dsi83_parse_lvds_endpoint(ctx, CHANNEL_B);
> +		if (ret < 0)
> +			return ret;
> +
>  		port2 = of_graph_get_port_by_id(dev->of_node, 2);
>  		port3 = of_graph_get_port_by_id(dev->of_node, 3);
>  		dual_link = drm_of_lvds_get_dual_link_pixel_order(port2, port3);
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

