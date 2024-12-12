Return-Path: <devicetree+bounces-130206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 602379EE44D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 11:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2ED7616780D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 10:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA71920FA8A;
	Thu, 12 Dec 2024 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=norik.com header.i=@norik.com header.b="n0m5xV6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from cpanel.siel.si (cpanel.siel.si [46.19.9.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A40E211274;
	Thu, 12 Dec 2024 10:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.19.9.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733999913; cv=none; b=EsezGgprvElPXGVCw6JF7smXSKtkwkGzLOc5rhjAbNm5E5B/HPWeXCnqmn728qQ5HjiWljLelfod2rUa6Lm5i1YGSQMQT2DnLsvsinfJM0Dybrn+m2FRBxSkwBT15xzTr4O3qGuB16wnL29tAdToJuwFGKrM34ZPvphSK9Ez1t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733999913; c=relaxed/simple;
	bh=bhQoY+wdDsLhC6WhXMZM/E2zhtXM8HX81yB/AV+GSi8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TmMEc+SPH3H3Ov4PtIgYgNDhtLYKkZ/NqeCmTkuFSe1Pj0W//RPJLzZfl5qiPJ57qMoa5mmiLyoHFtVkx6rFOLxi2fI8FawUcLs5yEopygAFpboF+oma1+nPxsgGfCzwAEW3WWHkFD8auip2xcjdNCxVk1r1mVgm6WzDIY3TukA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com; spf=pass smtp.mailfrom=norik.com; dkim=pass (2048-bit key) header.d=norik.com header.i=@norik.com header.b=n0m5xV6Q; arc=none smtp.client-ip=46.19.9.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=norik.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=hQLoLzcTEiVKXGdksCB0pOe0DR8Djegij8YVXq8UMuI=; b=n0m5xV6QHlhDRSeobaRvpyBkEj
	090N328aH2ogv2dm13I6Wxlr55PtDcxENQ2tvb5nXDhbTkuXnekfZ8pXw6yAdSTbZfc/Lpy1JPFmN
	RXso0qunumYQhNLEQcvp+wvowvIcP45U0uzBdV4AXxQiw1NqMS8Qi6vDN5Ya6rt/6loNh8FYH/XBH
	jYDi8JwDz9uM6Mof1rIWft4k9tOfDhwkcXpGo4qHoqMld3t/lhcQaqKsgULRTuiL2rdDPP2tMhMpo
	X7viYDAy3IsZX6XfnzIh1/TMZuNlQ481Brat1Zvkwq0tsyWjzo+333Xs+EfFaON8QcwN7QZ1RGv8P
	k6mvQVyQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:39836 helo=[192.168.69.52])
	by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96.2)
	(envelope-from <andrej.picej@norik.com>)
	id 1tLgaS-009mt6-2X;
	Thu, 12 Dec 2024 11:38:28 +0100
Message-ID: <08a10b77-011d-4003-ac33-4bef45d801bd@norik.com>
Date: Thu, 12 Dec 2024 11:38:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing
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
References: <20241210091901.83028-1-andrej.picej@norik.com>
 <20241210091901.83028-3-andrej.picej@norik.com>
 <irpmhq7vxjra6vhmdh7p63ajj57n3h2c4br3ija2jmwtoewist@zyxfmx6k5m4e>
 <aa2de99d-21f4-4843-83b7-5d2db78be86f@norik.com>
 <qhmsobin3fsmoc7ic2jtancowfscoauyroruxdpwhmqwlogtkz@6by3s2ruwzwp>
 <519cc025-0782-4f96-a169-1fe87b280173@norik.com>
 <rputm4gnjj6nb66ix7dqbxr2janltia6rlb6zunhf7x3mgooxw@o3lblnyp5cci>
 <ad8843d6-e5a3-437a-af4d-f2248b247a65@norik.com>
 <roxosjotsh65dkecrwhhtlhkhqseezkj7ydk532shc27irzmd3@xry3ggjdq4uo>
Content-Language: en-US
From: Andrej Picej <andrej.picej@norik.com>
Autocrypt: addr=andrej.picej@norik.com; keydata=
 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
 xtT/8OxBOVSHvA==
In-Reply-To: <roxosjotsh65dkecrwhhtlhkhqseezkj7ydk532shc27irzmd3@xry3ggjdq4uo>
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



On 12. 12. 24 10:28, Dmitry Baryshkov wrote:
> On Thu, Dec 12, 2024 at 09:08:03AM +0100, Andrej Picej wrote:
>>
>>
>> On 12. 12. 24 00:04, Dmitry Baryshkov wrote:
>>> On Wed, Dec 11, 2024 at 08:57:17AM +0100, Andrej Picej wrote:
>>>>
>>>>
>>>> On 10. 12. 24 14:59, Dmitry Baryshkov wrote:
>>>>> On Tue, Dec 10, 2024 at 02:41:01PM +0100, Andrej Picej wrote:
>>>>>>
>>>>>>
>>>>>> On 10. 12. 24 12:43, Dmitry Baryshkov wrote:
>>>>>>> On Tue, Dec 10, 2024 at 10:19:00AM +0100, Andrej Picej wrote:
>>>>>>>> Add a optional properties to change LVDS output voltage. This should not
>>>>>>>> be static as this depends mainly on the connected display voltage
>>>>>>>> requirement. We have three properties:
>>>>>>>> - "ti,lvds-termination-ohms", which sets near end termination,
>>>>>>>> - "ti,lvds-vod-swing-data-microvolt" and
>>>>>>>> - "ti,lvds-vod-swing-clock-microvolt" which both set LVDS differential
>>>>>>>> output voltage for data and clock lanes. They are defined as an array
>>>>>>>> with min and max values. The appropriate bitfield will be set if
>>>>>>>> selected constraints can be met.
>>>>>>>>
>>>>>>>> If "ti,lvds-termination-ohms" is not defined the default of 200 Ohm near
>>>>>>>> end termination will be used. Selecting only one:
>>>>>>>> "ti,lvds-vod-swing-data-microvolt" or
>>>>>>>> "ti,lvds-vod-swing-clock-microvolt" can be done, but the output voltage
>>>>>>>> constraint for only data/clock lanes will be met. Setting both is
>>>>>>>> recommended.
>>>>>>>>
>>>>>>>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>>>>>>>> ---
>>>>>>>> Changes in v5:
>>>>>>>> - specify default values in sn65dsi83_parse_lvds_endpoint,
>>>>>>>> - move sn65dsi83_parse_lvds_endpoint for channel B up, outside if,
>>>>>>>> Changes in v4:
>>>>>>>> - fix typo in commit message bitfiled -> bitfield
>>>>>>>> - use arrays (lvds_vod_swing_conf and lvds_term_conf) in private data, instead
>>>>>>>> of separate variables for channel A/B
>>>>>>>> - add more checks on return value of "of_property_read_u32_array"
>>>>>>>> Changes in v3:
>>>>>>>> - use microvolts for default array values 1000 mV -> 1000000 uV.
>>>>>>>> Changes in v2:
>>>>>>>> - use datasheet tables to get the proper configuration
>>>>>>>> - since major change was done change the authorship to myself
>>>>>>>> ---
>>>>>>>>      drivers/gpu/drm/bridge/ti-sn65dsi83.c | 142 +++++++++++++++++++++++++-
>>>>>>>>      1 file changed, 139 insertions(+), 3 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>>>>>>>> index 57a7ed13f996..f9578b38da28 100644
>>>>>>>> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>>>>>>>> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>>>>>>>> @@ -132,6 +132,16 @@
>>>>>>>>      #define  REG_IRQ_STAT_CHA_SOT_BIT_ERR		BIT(2)
>>>>>>>>      #define  REG_IRQ_STAT_CHA_PLL_UNLOCK		BIT(0)
>>>>>>>> +enum sn65dsi83_channel {
>>>>>>>> +	CHANNEL_A,
>>>>>>>> +	CHANNEL_B
>>>>>>>> +};
>>>>>>>> +
>>>>>>>> +enum sn65dsi83_lvds_term {
>>>>>>>> +	OHM_100,
>>>>>>>> +	OHM_200
>>>>>>>> +};
>>>>>>>> +
>>>>>>>>      enum sn65dsi83_model {
>>>>>>>>      	MODEL_SN65DSI83,
>>>>>>>>      	MODEL_SN65DSI84,
>>>>>>>> @@ -147,6 +157,8 @@ struct sn65dsi83 {
>>>>>>>>      	struct regulator		*vcc;
>>>>>>>>      	bool				lvds_dual_link;
>>>>>>>>      	bool				lvds_dual_link_even_odd_swap;
>>>>>>>> +	int				lvds_vod_swing_conf[2];
>>>>>>>> +	int				lvds_term_conf[2];
>>>>>>>>      };
>>>>>>>>      static const struct regmap_range sn65dsi83_readable_ranges[] = {
>>>>>>>> @@ -237,6 +249,36 @@ static const struct regmap_config sn65dsi83_regmap_config = {
>>>>>>>>      	.max_register = REG_IRQ_STAT,
>>>>>>>>      };
>>>>>>>> +static const int lvds_vod_swing_data_table[2][4][2] = {
>>>>>>>> +	{	/* 100 Ohm */
>>>>>>>> +		{ 180000, 313000 },
>>>>>>>> +		{ 215000, 372000 },
>>>>>>>> +		{ 250000, 430000 },
>>>>>>>> +		{ 290000, 488000 },
>>>>>>>> +	},
>>>>>>>> +	{	/* 200 Ohm */
>>>>>>>> +		{ 150000, 261000 },
>>>>>>>> +		{ 200000, 346000 },
>>>>>>>> +		{ 250000, 428000 },
>>>>>>>> +		{ 300000, 511000 },
>>>>>>>> +	},
>>>>>>>> +};
>>>>>>>> +
>>>>>>>> +static const int lvds_vod_swing_clock_table[2][4][2] = {
>>>>>>>> +	{	/* 100 Ohm */
>>>>>>>> +		{ 140000, 244000 },
>>>>>>>> +		{ 168000, 290000 },
>>>>>>>> +		{ 195000, 335000 },
>>>>>>>> +		{ 226000, 381000 },
>>>>>>>> +	},
>>>>>>>> +	{	/* 200 Ohm */
>>>>>>>> +		{ 117000, 204000 },
>>>>>>>> +		{ 156000, 270000 },
>>>>>>>> +		{ 195000, 334000 },
>>>>>>>> +		{ 234000, 399000 },
>>>>>>>> +	},
>>>>>>>> +};
>>>>>>>> +
>>>>>>>>      static struct sn65dsi83 *bridge_to_sn65dsi83(struct drm_bridge *bridge)
>>>>>>>>      {
>>>>>>>>      	return container_of(bridge, struct sn65dsi83, bridge);
>>>>>>>> @@ -435,12 +477,16 @@ static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
>>>>>>>>      		val |= REG_LVDS_FMT_LVDS_LINK_CFG;
>>>>>>>>      	regmap_write(ctx->regmap, REG_LVDS_FMT, val);
>>>>>>>> -	regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x05);
>>>>>>>> +	regmap_write(ctx->regmap, REG_LVDS_VCOM,
>>>>>>>> +			REG_LVDS_VCOM_CHA_LVDS_VOD_SWING(ctx->lvds_vod_swing_conf[CHANNEL_A]) |
>>>>>>>> +			REG_LVDS_VCOM_CHB_LVDS_VOD_SWING(ctx->lvds_vod_swing_conf[CHANNEL_B]));
>>>>>>>>      	regmap_write(ctx->regmap, REG_LVDS_LANE,
>>>>>>>>      		     (ctx->lvds_dual_link_even_odd_swap ?
>>>>>>>>      		      REG_LVDS_LANE_EVEN_ODD_SWAP : 0) |
>>>>>>>> -		     REG_LVDS_LANE_CHA_LVDS_TERM |
>>>>>>>> -		     REG_LVDS_LANE_CHB_LVDS_TERM);
>>>>>>>> +		     (ctx->lvds_term_conf[CHANNEL_A] ?
>>>>>>>> +			  REG_LVDS_LANE_CHA_LVDS_TERM : 0) |
>>>>>>>> +		     (ctx->lvds_term_conf[CHANNEL_B] ?
>>>>>>>> +			  REG_LVDS_LANE_CHB_LVDS_TERM : 0));
>>>>>>>>      	regmap_write(ctx->regmap, REG_LVDS_CM, 0x00);
>>>>>>>>      	le16val = cpu_to_le16(mode->hdisplay);
>>>>>>>> @@ -576,10 +622,100 @@ static const struct drm_bridge_funcs sn65dsi83_funcs = {
>>>>>>>>      	.atomic_get_input_bus_fmts = sn65dsi83_atomic_get_input_bus_fmts,
>>>>>>>>      };
>>>>>>>> +static int sn65dsi83_select_lvds_vod_swing(struct device *dev,
>>>>>>>> +	u32 lvds_vod_swing_data[2], u32 lvds_vod_swing_clk[2], u8 lvds_term)
>>>>>>>> +{
>>>>>>>> +	int i;
>>>>>>>> +
>>>>>>>> +	for (i = 0; i <= 3; i++) {
>>>>>>>> +		if (lvds_vod_swing_data_table[lvds_term][i][0] >= lvds_vod_swing_data[0] &&
>>>>>>>> +		lvds_vod_swing_data_table[lvds_term][i][1] <= lvds_vod_swing_data[1] &&
>>>>>>>> +		lvds_vod_swing_clock_table[lvds_term][i][0] >= lvds_vod_swing_clk[0] &&
>>>>>>>> +		lvds_vod_swing_clock_table[lvds_term][i][1] <= lvds_vod_swing_clk[1])
>>>>>>>> +			return i;
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	dev_err(dev, "failed to find appropriate LVDS_VOD_SWING configuration\n");
>>>>>>>> +	return -EINVAL;
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +static int sn65dsi83_parse_lvds_endpoint(struct sn65dsi83 *ctx, int channel)
>>>>>>>> +{
>>>>>>>> +	struct device *dev = ctx->dev;
>>>>>>>> +	struct device_node *endpoint;
>>>>>>>> +	int endpoint_reg;
>>>>>>>> +	/* Set so the property can be freely selected if not defined */
>>>>>>>> +	u32 lvds_vod_swing_data[2] = { 0, 1000000 };
>>>>>>>> +	u32 lvds_vod_swing_clk[2] = { 0, 1000000 };
>>>>>>>> +	u32 lvds_term;
>>>>>>>> +	u8 lvds_term_conf = 0x1;
>>>>>>>> +	int lvds_vod_swing_conf = 0x1;
>>>>>>>
>>>>>>> Magic values
>>>>>>
>>>>>> Can you please elaborate.
>>>>>>
>>>>>> I can use:
>>>>>> u8 lvds_term_conf = OHM_200;
>>>>>>
>>>>>> What about lvds_vod_swing_conf? Should I create additional define for it?
>>>>>> But this doesn't solve a hidden meaning? Maybe additional comment above?
>>>>>> Would like to avoid using voltages for it, since then we are reverse
>>>>>> engineering the table in datasheet to match the default reg value.
>>>>>
>>>>> I think the following example solves both problems:
>>>>>
>>>>> lvds_term = 200;
>>>>> of_property_read_u32(..., &lvds_term);
>>>>>
>>>>> if (lvds_term == 100)
>>>>> 	ctx->lvds_term_conf[channel] = OHM_100;
>>>>> else if (lvds_term == 200)
>>>>> 	ctx->lvds_term_conf[channel] = OHM_200;
>>>>> else
>>>>> 	return -EINVAL;
>>>>>
>>>>> The same approach can be applied to lvds_vod_swing_conf, resulting in
>>>>> removal of magic values.
>>>>
>>>> Sorry, but I think it is not that easy when it comes to the
>>>> lvds_vod_swing_conf. We should assign default value if
>>>> "ti,lvds-vod-swing-data-microvolt" and "ti,lvds-vod-swing-clock-microvolt"
>>>> are not defined. Default value of the lvds_vod_swing_conf is 0x1, but this
>>>> doesn't have any straight forward meaning like OHM_200 for example.
>>>>
>>>> What we can do in that case is that we copy the values from defined
>>>> datasheet tables to the "lvds_vod_swing_data[2]" and "lvds_vod_swing_clk[2]"
>>>> arrays and then run the
>>>> sn65dsi83_select_lvds_vod_swing with it, which will return the default value
>>>> (0x1).
>>>>
>>>> /* If both properties are not defined assign default limits */
>>>> if (ret_data && ret_clock) {
>>>> 	memcpy(lvds_vod_swing_data,
>>>> 	     lvds_vod_swing_data_table[ctx->lvds_term_conf[channel]][1],
>>>> 	     sizeof(lvds_vod_swing_data));
>>>> 	memcpy(lvds_vod_swing_clk,
>>>> 	    lvds_vod_swing_clock_table[ctx->lvds_term_conf[channel]][1],
>>>> 	    sizeof(lvds_vod_swing_clk));
>>>> }
>>>> lvds_vod_swing_conf = sn65dsi83_select_lvds_vod_swing(dev,
>>>> 	lvds_vod_swing_data, lvds_vod_swing_clk,
>>>> 	ctx->lvds_term_conf[channel]);
>>>> if (lvds_vod_swing_conf < 0) {
>>>> 	ret = lvds_vod_swing_conf;
>>>> 	goto exit;
>>>> }
>>>>
>>>> ctx->lvds_vod_swing_conf[channel] = lvds_vod_swing_conf;
>>>>
>>>> I'm not sure if using this approach gets rid of the problem with magic
>>>> values.
>>>> Or maybe I'm not seeing the obvious solution so please bear with me.
>>>
>>> Yes, the defaults (0..1000000) should be fixed to result in the same
>>> value (0x01) as if the property wasn't specified at all
>>
>> The defaults (0..1000000) is selected because in case if only one property
>> is defined in dts (ti,lvds-vod-swing-data-microvolt or
>> ti,lvds-vod-swing-clock-microvolt) the other array values don't effect the
>> decision which "lvds_vod_swing_conf" is selected. That's why we initialized
>> the array to be out off bounds of the datasheet tables, all values in the
>> table match the not defined property, so lvds_vod_swing_conf is selected
>> purely on the basis of the defined property.
> 
> I see, thanks for the explanation.
> 
>>
>> Example:
>> DTS
>> ti,lvds-vod-swing-data-microvolt = <250000 428000>;
>> //ti,lvds-vod-swing-clock-microvolt NOT DEFINED;
>>
>> After parsing the devicetree we will get:
>> lvds_vod_swing_data = [ 250000, 428000 ]
>> lvds_vod_swing_clk = [ 0, 1000000 ]
>>
>> In sn65dsi83_select_lvds_vod_swing lvds_vod_swing_clk[] values don't effect
>> the decision making since
>>
>> lvds_vod_swing_clock_table[lvds_term][i][0] >= lvds_vod_swing_clk[0] &&
>> lvds_vod_swing_clock_table[lvds_term][i][1] <= lvds_vod_swing_clk[1]
>>
>> is always true.
>>
>>>
>>> I think the following should work:
>>>
>>> 	/* artifical values to select the defaults in both cases */
>>> 	u32 lvds_vod_swing_data[2] = { 190000, 330000 };
>>> 	u32 lvds_vod_swing_clk[2] = { 150000, 250000 };
>>
>> This sets the default to 0x0. It should be:
>> u32 lvds_vod_swing_data[2] = { 200000, 372000 };
>> u32 lvds_vod_swing_clk[2] = { 156000, 290000 };
>> This selects the default 0x1 in both cases, if termination is 100 or 200
>> Ohms.
>>
>> Nevertheless I think I got your point. But I would still like to give the
>> user the freedom to only specify one property if maybe connected panel only
>> has limits on data lanes/clock lane.
>> So maybe set the arrays lvds_vod_swing_data/clk to [0, 1000000] if
>> of_property_read_u32_array returns -EINVAL (property does not exist).
>> What do you say?
> 
> After your explanation, I think it might be better to explicitly set the
> value to 0x1, but not at the top of the function, but next to a check
> that both properties are (not) set.

Ok. Will apply this in the next version.
Thanks.

> 
>>
>>>
>>> Yes, they are artificial, as stated in the comment. Yes, I think it's
>>> better than special-casing in the property handling.
>>>
> 

