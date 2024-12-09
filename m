Return-Path: <devicetree+bounces-128462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 657599E8CAC
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 08:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39CEC1885F59
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 07:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7FF9215066;
	Mon,  9 Dec 2024 07:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=norik.com header.i=@norik.com header.b="jx4p82O6"
X-Original-To: devicetree@vger.kernel.org
Received: from cpanel.siel.si (cpanel.siel.si [46.19.9.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B1C5588B;
	Mon,  9 Dec 2024 07:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.19.9.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733731002; cv=none; b=aHw0WR6o2L0ylhBglmc0y+XqlZcRHPeBQh2PkAsS5BhpNhspnDPHQrF/cP7H/A/3tFneemkmCt9nrA8cQ3GRipB4DHmy6vmxPRZhjo2lrWge5nUITJSy12kuGqTElbRaDJAgZ0DdXZUaqmZMJ2kGRZEEc7NF6sxsAIcoC8rcasw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733731002; c=relaxed/simple;
	bh=dOzkwIt4wBrEMWeTrrjq7iqdwFAIc1VZ0W9wLQpFfio=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fmk1iC52uz7W1/08fxcFmjJd1LTK49zYkLGT8whUFJ+zdigHm8gzAu5WJfPHW63SsoPMeH+XWpqU6zb5l6i0DNXyKWis7/a1gUssoKYeX/L8h107RTr/YGXcm0dvxaskSVFg3F0fDs4NMZ5x49tWRGZM8to8F3fVzfISPW68pU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com; spf=pass smtp.mailfrom=norik.com; dkim=pass (2048-bit key) header.d=norik.com header.i=@norik.com header.b=jx4p82O6; arc=none smtp.client-ip=46.19.9.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=norik.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=asfSv4c4JmeZTydH9MVkhtzuqipLsnGGrSwlvS1CyTU=; b=jx4p82O69RpzBBfhRY75VkSFl9
	RKfmouEBcGRQQ4hWsiN/fcc8hzh7XcDwCJ4AdzhuPq7xUD/d+Y0ZuQ2bRaL8F1OCFpW5N+AVzyONc
	2pan1mwIFwelb1uWm2/7UEFzhkLV13p+nzMBeGRT5yoMwvGFjtEVzjetmzxzp7dalSZGr7j2FGY2s
	RMWoHQHfGK80kIm4EGYxhjIUehQvfT0QFOLM35fxkOI8Kw/YwaYQh1SbqqI2XNR3I7UE9y6acz9MM
	5tYbS/9J5NfVqmH/ZSOzCayabMgkXjwUKxAdNRIFS/nBiCiZoNgaBzqptfLgCFGTxZWJXia111jeM
	X2PI20eA==;
Received: from 77-38-14-103.dynamic.telemach.net ([77.38.14.103]:45694 helo=[192.168.0.15])
	by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96.2)
	(envelope-from <andrej.picej@norik.com>)
	id 1tKYd7-00F1g7-19;
	Mon, 09 Dec 2024 08:56:32 +0100
Message-ID: <e420579f-25b2-41ca-9627-130d67c51541@norik.com>
Date: Mon, 9 Dec 2024 08:56:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing
 optional properties
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, marex@denx.de, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 upstream@lists.phytec.de
References: <20241205134021.2592013-1-andrej.picej@norik.com>
 <20241205134021.2592013-3-andrej.picej@norik.com>
 <nbumcptoi5hwehjbrynf6dh2wrz7a4ugqblrjxyswvj7udkf3u@6qikclizqfjr>
Content-Language: en-GB
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <nbumcptoi5hwehjbrynf6dh2wrz7a4ugqblrjxyswvj7udkf3u@6qikclizqfjr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi Dmitry,

On 5. 12. 24 23:48, Dmitry Baryshkov wrote:
> On Thu, Dec 05, 2024 at 02:40:20PM +0100, Andrej Picej wrote:
>> Add a optional properties to change LVDS output voltage. This should not
>> be static as this depends mainly on the connected display voltage
>> requirement. We have three properties:
>> - "ti,lvds-termination-ohms", which sets near end termination,
>> - "ti,lvds-vod-swing-data-microvolt" and
>> - "ti,lvds-vod-swing-clock-microvolt" which both set LVDS differential
>> output voltage for data and clock lanes. They are defined as an array
>> with min and max values. The appropriate bitfield will be set if
>> selected constraints can be met.
>>
>> If "ti,lvds-termination-ohms" is not defined the default of 200 Ohm near
>> end termination will be used. Selecting only one:
>> "ti,lvds-vod-swing-data-microvolt" or
>> "ti,lvds-vod-swing-clock-microvolt" can be done, but the output voltage
>> constraint for only data/clock lanes will be met. Setting both is
>> recommended.
>>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>> Changes in v4:
>> - fix typo in commit message bitfiled -> bitfield
>> - use arrays (lvds_vod_swing_conf and lvds_term_conf) in private data, instead
>> of separate variables for channel A/B
>> - add more checks on return value of "of_property_read_u32_array"
>> Changes in v3:
>> - use microvolts for default array values 1000 mV -> 1000000 uV.
>> Changes in v2:
>> - use datasheet tables to get the proper configuration
>> - since major change was done change the authorship to myself
>> ---
>>   drivers/gpu/drm/bridge/ti-sn65dsi83.c | 147 +++++++++++++++++++++++++-
>>   1 file changed, 144 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>> index 57a7ed13f996..f724d2a6777b 100644
>> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>> @@ -132,6 +132,16 @@
>>   #define  REG_IRQ_STAT_CHA_SOT_BIT_ERR		BIT(2)
>>   #define  REG_IRQ_STAT_CHA_PLL_UNLOCK		BIT(0)
>>   
>> +enum sn65dsi83_channel {
>> +	CHANNEL_A,
>> +	CHANNEL_B
>> +};
>> +
>> +enum sn65dsi83_lvds_term {
>> +	OHM_100,
>> +	OHM_200
>> +};
>> +
>>   enum sn65dsi83_model {
>>   	MODEL_SN65DSI83,
>>   	MODEL_SN65DSI84,
>> @@ -147,6 +157,8 @@ struct sn65dsi83 {
>>   	struct regulator		*vcc;
>>   	bool				lvds_dual_link;
>>   	bool				lvds_dual_link_even_odd_swap;
>> +	int				lvds_vod_swing_conf[2];
>> +	int				lvds_term_conf[2];
>>   };
>>   
>>   static const struct regmap_range sn65dsi83_readable_ranges[] = {
>> @@ -237,6 +249,36 @@ static const struct regmap_config sn65dsi83_regmap_config = {
>>   	.max_register = REG_IRQ_STAT,
>>   };
>>   
>> +static const int lvds_vod_swing_data_table[2][4][2] = {
>> +	{	/* 100 Ohm */
>> +		{ 180000, 313000 },
>> +		{ 215000, 372000 },
>> +		{ 250000, 430000 },
>> +		{ 290000, 488000 },
>> +	},
>> +	{	/* 200 Ohm */
>> +		{ 150000, 261000 },
>> +		{ 200000, 346000 },
>> +		{ 250000, 428000 },
>> +		{ 300000, 511000 },
>> +	},
>> +};
>> +
>> +static const int lvds_vod_swing_clock_table[2][4][2] = {
>> +	{	/* 100 Ohm */
>> +		{ 140000, 244000 },
>> +		{ 168000, 290000 },
>> +		{ 195000, 335000 },
>> +		{ 226000, 381000 },
>> +	},
>> +	{	/* 200 Ohm */
>> +		{ 117000, 204000 },
>> +		{ 156000, 270000 },
>> +		{ 195000, 334000 },
>> +		{ 234000, 399000 },
>> +	},
>> +};
>> +
>>   static struct sn65dsi83 *bridge_to_sn65dsi83(struct drm_bridge *bridge)
>>   {
>>   	return container_of(bridge, struct sn65dsi83, bridge);
>> @@ -435,12 +477,16 @@ static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
>>   		val |= REG_LVDS_FMT_LVDS_LINK_CFG;
>>   
>>   	regmap_write(ctx->regmap, REG_LVDS_FMT, val);
>> -	regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x05);
>> +	regmap_write(ctx->regmap, REG_LVDS_VCOM,
>> +			REG_LVDS_VCOM_CHA_LVDS_VOD_SWING(ctx->lvds_vod_swing_conf[CHANNEL_A]) |
>> +			REG_LVDS_VCOM_CHB_LVDS_VOD_SWING(ctx->lvds_vod_swing_conf[CHANNEL_B]));
>>   	regmap_write(ctx->regmap, REG_LVDS_LANE,
>>   		     (ctx->lvds_dual_link_even_odd_swap ?
>>   		      REG_LVDS_LANE_EVEN_ODD_SWAP : 0) |
>> -		     REG_LVDS_LANE_CHA_LVDS_TERM |
>> -		     REG_LVDS_LANE_CHB_LVDS_TERM);
>> +		     (ctx->lvds_term_conf[CHANNEL_A] ?
>> +			  REG_LVDS_LANE_CHA_LVDS_TERM : 0) |
>> +		     (ctx->lvds_term_conf[CHANNEL_B] ?
>> +			  REG_LVDS_LANE_CHB_LVDS_TERM : 0));
>>   	regmap_write(ctx->regmap, REG_LVDS_CM, 0x00);
>>   
>>   	le16val = cpu_to_le16(mode->hdisplay);
>> @@ -576,10 +622,101 @@ static const struct drm_bridge_funcs sn65dsi83_funcs = {
>>   	.atomic_get_input_bus_fmts = sn65dsi83_atomic_get_input_bus_fmts,
>>   };
>>   
>> +static int sn65dsi83_select_lvds_vod_swing(struct device *dev,
>> +	u32 lvds_vod_swing_data[2], u32 lvds_vod_swing_clk[2], u8 lvds_term)
>> +{
>> +	int i;
>> +
>> +	for (i = 0; i <= 3; i++) {
>> +		if (lvds_vod_swing_data_table[lvds_term][i][0] >= lvds_vod_swing_data[0] &&
>> +		lvds_vod_swing_data_table[lvds_term][i][1] <= lvds_vod_swing_data[1] &&
>> +		lvds_vod_swing_clock_table[lvds_term][i][0] >= lvds_vod_swing_clk[0] &&
>> +		lvds_vod_swing_clock_table[lvds_term][i][1] <= lvds_vod_swing_clk[1])
>> +			return i;
>> +	}
>> +
>> +	dev_err(dev, "failed to find appropriate LVDS_VOD_SWING configuration\n");
>> +	return -EINVAL;
>> +}
>> +
>> +static int sn65dsi83_parse_lvds_endpoint(struct sn65dsi83 *ctx, int channel)
>> +{
>> +	struct device *dev = ctx->dev;
>> +	struct device_node *endpoint;
>> +	/* Set so the property can be freely selected if not defined */
>> +	u32 lvds_vod_swing_data[2] = { 0, 1000000 };
>> +	u32 lvds_vod_swing_clk[2] = { 0, 1000000 };
>> +	u32 lvds_term = 200;
>> +	u8 lvds_term_conf;
>> +	int endpoint_reg;
>> +	int lvds_vod_swing_conf;
>> +	int ret = 0;
>> +	int ret_data;
>> +	int ret_clock;
>> +
>> +	if (channel == CHANNEL_A)
>> +		endpoint_reg = 2;
>> +	else
>> +		endpoint_reg = 3;
>> +
>> +	endpoint = of_graph_get_endpoint_by_regs(dev->of_node, endpoint_reg, -1);
>> +	of_property_read_u32(endpoint, "ti,lvds-termination-ohms", &lvds_term);
>> +
>> +	if (lvds_term == 200)
>> +		lvds_term_conf = OHM_200;
>> +	else
>> +		lvds_term_conf = OHM_100;
>> +
>> +	ctx->lvds_term_conf[channel] = lvds_term_conf;
>> +
>> +	ret_data = of_property_read_u32_array(endpoint,
>> +			"ti,lvds-vod-swing-data-microvolt", lvds_vod_swing_data,
>> +			ARRAY_SIZE(lvds_vod_swing_data));
>> +	if (ret_data != 0 && ret_data != -EINVAL) {
>> +		ret = ret_data;
>> +		goto exit;
>> +	}
>> +
>> +	ret_clock = of_property_read_u32_array(endpoint,
>> +			"ti,lvds-vod-swing-clock-microvolt", lvds_vod_swing_clk,
>> +			ARRAY_SIZE(lvds_vod_swing_clk));
>> +	if (ret_clock != 0 && ret_clock != -EINVAL) {
>> +		ret = ret_clock;
>> +		goto exit;
>> +	}
>> +
>> +	/* If any of the two properties is defined. */
>> +	if (!ret_data || !ret_clock) {
>> +		lvds_vod_swing_conf = sn65dsi83_select_lvds_vod_swing(dev,
>> +			lvds_vod_swing_data, lvds_vod_swing_clk,
>> +			lvds_term_conf);
>> +		if (lvds_vod_swing_conf < 0) {
>> +			ret = lvds_vod_swing_conf;
>> +			goto exit;
>> +		}
>> +
>> +		ctx->lvds_vod_swing_conf[channel] = lvds_vod_swing_conf;
>> +	}
>> +	ret = 0;
>> +exit:
>> +	of_node_put(endpoint);
>> +	return ret;
>> +}
>> +
>>   static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
>>   {
>>   	struct drm_bridge *panel_bridge;
>>   	struct device *dev = ctx->dev;
>> +	int ret;
>> +
>> +	ctx->lvds_vod_swing_conf[CHANNEL_A] = 0x1;
>> +	ctx->lvds_vod_swing_conf[CHANNEL_B] = 0x1;
>> +	ctx->lvds_term_conf[CHANNEL_A] = 0x1;
>> +	ctx->lvds_term_conf[CHANNEL_B] = 0x1;
> 
> These match the defaults in sn65dsi83_parse_lvds_endpoint(). Do we
> really need those?

Yes, I think we do. This ensures that defaults are used even when 
property is not defined/LVDS channel is not used. So also LVDS channel B 
defaults are set even for sn65dsi83 (single LVDS output). Keeping the 
same reg values as before these changes.

Best regards,
Andrej


> 
>> +
>> +	ret = sn65dsi83_parse_lvds_endpoint(ctx, CHANNEL_A);
>> +	if (ret < 0)
>> +		return ret;
>>   
>>   	ctx->lvds_dual_link = false;
>>   	ctx->lvds_dual_link_even_odd_swap = false;
>> @@ -587,6 +724,10 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
>>   		struct device_node *port2, *port3;
>>   		int dual_link;
>>   
>> +		ret = sn65dsi83_parse_lvds_endpoint(ctx, CHANNEL_B);
>> +		if (ret < 0)
>> +			return ret;
>> +
>>   		port2 = of_graph_get_port_by_id(dev->of_node, 2);
>>   		port3 = of_graph_get_port_by_id(dev->of_node, 3);
>>   		dual_link = drm_of_lvds_get_dual_link_pixel_order(port2, port3);
>> -- 
>> 2.34.1
>>
> 

