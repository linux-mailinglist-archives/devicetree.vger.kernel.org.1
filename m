Return-Path: <devicetree+bounces-276929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHUPAM09umlbTQIAu9opvQ
	(envelope-from <devicetree+bounces-276929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:53:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 452672B603F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:53:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2CD3300D96E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB19E313E2B;
	Wed, 18 Mar 2026 05:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FlgcmA9W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5751433688A
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773813193; cv=none; b=o/L6BJi9EVVhLlWGA9ZkYrVspXBniWUYEqwjuJc0YRPjvPCzcVjXEDc7XfouhbjJuxrgofHZteEQgUsWSrUFU/orPi5rbvyKVtq/pNob9snz3keqrrYBrAlQvE0n6qOe7Nwf88P8slNUARSvcujVM08O+Yeehlm5zc/VJQrGqBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773813193; c=relaxed/simple;
	bh=EUn7dZS5nYpUqFb93lfKsh7ushuJFSTPMHGnrJPf+o0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=pXpsZ2/DU4NE8Q1g7h0RujfkXEcgbSJYxItH0d1tBvhYK/GQgyCE5LFRao0t4ca6lbAyLbpI90Srcci5I/5IT+x2rFwRmORoDqLKyPqJdVbOmqy4c1VJ2/XhZbNHUHm+C6n9YqT2azP0OSW+7DPvgl8JP4O3U5MqiJMMuMmUjPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FlgcmA9W; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c6e2355739dso2512211a12.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 22:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773813192; x=1774417992; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bxh7p5ubNM0UPeRub63aEAzjq5cy4XyXQ+j/f8jldew=;
        b=FlgcmA9WAfqArxCgcUIRsJ+a2z7AQkQRFxddHjZWZID9FLvtkEgvj2FqeB/yOggxZy
         FZgmoV+viaHbdoN/q2nO2fjtQIi/e1zLVDx1JG+IeS/ZkXQna27x0aJ4VcB5dypOiDgX
         St9mDb8eBjtIWnsYQvUU0VH8/S1Tf0N/RYLrq6+Ew6fhzOl8ZsogTpAsUskgZHGhJvvM
         1PDbAw4oWOwmpfXEkPnoiQ95URVkhWSY5rQj9Fxqs4Ya4sAzwuRySn46Edc9g83xsAL2
         5U1CsijOghJBJFUlEyPRjZc7GTQLLhJwO9HB6pLOAjxg2/fAkL6QmOVjV8mTGqlO7yP8
         Rz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773813192; x=1774417992;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bxh7p5ubNM0UPeRub63aEAzjq5cy4XyXQ+j/f8jldew=;
        b=VnpYXWh0Y97Mwx2t79/LeZgDLqOcHiiz3+/6PZ4eS5pgA2ge0vdT8X6ahTO+idMekz
         7T8h0UCFyjbHMHC0+3d3IgoDN9GeG5IqaofXuCTeaGvOpEM774iiCxhHUCdy2FqGjevK
         lLJDHLibLJBeh4JrqTPJu1O3MXD5l2LLMMyi0QZiN5051FlRfl48h0CEjtnFWloG6TPn
         xI6R0k75R6tCnE4efRcYs9C8cykXTrI2uslj/fXK0lguEKTdBRmcPiWJjtMpKlw1Xzap
         eO8LUnK5RpTYlujzrVJ3D22noFTUV8osKHXfP6TZPX+mDUGm3o5/QEsS4Num8VEPSABg
         ErFA==
X-Forwarded-Encrypted: i=1; AJvYcCX3ZKYAM9FplGdMSMs7fPgZt1Q6nU+bVKVVDUK7H76V/igrzyw27VRIvpbme1woJ4OOdG3/IDSzfnry@vger.kernel.org
X-Gm-Message-State: AOJu0YwMXiEUZEjFwfGTyCVoa24MzZz61oqSm/t8aDTgbxrvFhb0HbZR
	+BWsLIZETXYxq0567Dqtpeqnu8xXs7CSfWScjogxDYte/CScHYxThzJj
X-Gm-Gg: ATEYQzwxhI9llxuRB/jeasR8KC1l0i4cJYxGNkrMeL9wXBFgC4FfovKzxTz/AEy8ovf
	SYWxHNLPwiyjUYyDw548x8tVBtcQihKxICLnclSrmNIgeta45yviXQxvVzibNo0/rY+9hGrgImw
	DNs/1J7f8ggOthhkSbw8Xj+VZO5MS/75dqDxXZn7SYeYLl39m6dy0hliSQ8wDUY6ViFjVp3mEre
	YcKEd/GYeJueKSjPeGusWe2PxZwT25wY6K++9VcACd4ZsTypm1rUGWZQXyfWUGVnq53ss2SVCTG
	R1JVxxRbj+O1qBjZu+3owzpJl0tmPFzzZKxm7YzkMvf9n1CkFTg8iAAKNmBj8aN+fiMcaUDNvyO
	a+0XnlTtEA5frwn0my2aanbuaUz99jYA6CreAVPu2FodJGaSDGtLl9jCj0WiN2SuduKTgIdnnvH
	LR7mGtq9FdfBrAYmkRVgPlGiPVCN+FXBg=
X-Received: by 2002:a17:902:ea02:b0:2b0:691a:8cba with SMTP id d9443c01a7336-2b06e2da887mr21889105ad.5.1773813191640;
        Tue, 17 Mar 2026 22:53:11 -0700 (PDT)
Received: from [172.16.20.13] ([136.226.252.245])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e431c1asm14023225ad.24.2026.03.17.22.53.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 22:53:11 -0700 (PDT)
Message-ID: <9a9e13a5-411a-40bc-b52f-4345e7f6b92e@gmail.com>
Date: Wed, 18 Mar 2026 11:23:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: tessolveupstream@gmail.com
Subject: Re: [PATCH v2 2/2] drm: bridge: ti-sn65dsi83: Add support for
 dual-link LVDS video mode
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, marex@denx.de,
 valentin@compulab.co.il, philippe.schenker@toradex.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <20260312043743.261475-3-tessolveupstream@gmail.com>
 <DH0X6JQP0ZIW.3F4LJLIEMWH8M@bootlin.com>
Content-Language: en-US
In-Reply-To: <DH0X6JQP0ZIW.3F4LJLIEMWH8M@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276929-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 452672B603F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 12-03-2026 21:17, Luca Ceresoli wrote:
> Hello Sudarshan,
> 
> On Thu Mar 12, 2026 at 5:37 AM CET, Sudarshan Shetty wrote:
>> Some LVDS panels operating in dual-link mode require adjusted
>> horizontal timing parameters when programmed into the SN65DSI84
>> bridge. According to TI documentation, horizontal timing values
>> must be divided by two when operating in dual-link mode. Without
>> this adjustment, the panel may fail to display or produce corrupted
>> output.
>>
>> Add support for an optional DT property "ti,dual-link-video-mode"
>> to enable configuration required for dual-link LVDS operation.
>> These settings ensure correct LVDS output for panels that require
>> this mode of operation.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 52 ++++++++++++++++++++++++---
>>  1 file changed, 48 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>> index f6736b4457bb..9b7d35487bd8 100644
>> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
>> @@ -164,6 +164,7 @@ struct sn65dsi83 {
>>  	int				irq;
>>  	struct delayed_work		monitor_work;
>>  	struct work_struct		reset_work;
>> +	bool				dual_link_video_mode;
> 
> As said in the reply to patch 1, there is already 'bool lvds_dual_link'
> carrying the same info.
> 

okay.
>>  static const struct regmap_range sn65dsi83_readable_ranges[] = {
>> @@ -667,8 +668,43 @@ static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
>>  		     mode->hsync_start - mode->hdisplay);
>>  	regmap_write(ctx->regmap, REG_VID_CHA_VERTICAL_FRONT_PORCH,
>>  		     mode->vsync_start - mode->vdisplay);
>> -	regmap_write(ctx->regmap, REG_VID_CHA_TEST_PATTERN, 0x00);
>>
>> +	/*
>> +	 * In dual-link LVDS mode, the SN65DSI84 requires the horizontal
>> +	 * timing parameters to be adjusted before being programmed into
>> +	 * the device. According to TI documentation, the horizontal timing
>> +	 * values must be divided by two when operating in dual-link mode.
>> +	 * Without this adjustment, the connected panel may fail to light up
>> +	 * or display corrupted output.
>> +	 *
>> +	 * TI also provides recommended register settings for this mode,
>> +	 * which were derived using the TI DSI-Tuner tool. When the optional
>> +	 * DT property "ti,dual-link-video-mode" is present, apply these
>> +	 * configuration settings to ensure correct dual-link LVDS operation.
>> +	 */
>> +	if (ctx->dual_link_video_mode) {
>> +		regmap_write(ctx->regmap, REG_RC_LVDS_PLL, 0x05);
>> +		regmap_write(ctx->regmap, REG_RC_PLL_EN, 0x00);
>> +		regmap_write(ctx->regmap, REG_DSI_CLK, 0x53);
>> +		regmap_write(ctx->regmap, REG_LVDS_FMT, 0x6f);
>> +		regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x00);
>> +		regmap_write(ctx->regmap,
>> +			     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_LOW, 0x00);
>> +		regmap_write(ctx->regmap,
>> +			     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_HIGH, 0x00);
>> +		regmap_write(ctx->regmap,
>> +			     REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW, 0x10);
>> +		regmap_write(ctx->regmap,
>> +			     REG_VID_CHA_HORIZONTAL_BACK_PORCH, 0x28);
>> +		regmap_write(ctx->regmap,
>> +			     REG_VID_CHA_VERTICAL_BACK_PORCH, 0x00);
>> +		regmap_write(ctx->regmap,
>> +			     REG_VID_CHA_HORIZONTAL_FRONT_PORCH, 0x00);
>> +		regmap_write(ctx->regmap,
>> +			     REG_VID_CHA_VERTICAL_FRONT_PORCH, 0x00);
>> +	}
> 
> I guess these hard-coded values are sepcific to your panel. They must
> instead be computed based on the timings in order to work for every panel.
> 

The hard-coded values were initially derived from the TI DSI Tuner output 
during our bring-up testing. TI had also mentioned that when PATGEN is 
enabled with dual-LVDS output on the SN65DSI84, the horizontal timings 
must be divided by 2. They also noted that the current driver does not 
appear to divide the horizontal timings when PATGEN is enabled in 
dual-LVDS mode.

Based on that suggestion, we had tried adjusting the horizontal timing 
registers accordingly to match the tuner output.
Could you please advise how these register values are expected to be 
derived from the mode timings so that they work correctly for different 
panels?
>> +
>> +	regmap_write(ctx->regmap, REG_VID_CHA_TEST_PATTERN, 0x00);
>>  	/* Enable PLL */
>>  	regmap_write(ctx->regmap, REG_RC_PLL_EN, REG_RC_PLL_EN_PLL_EN);
>>  	usleep_range(3000, 4000);
>> @@ -965,9 +1001,15 @@ static int sn65dsi83_host_attach(struct sn65dsi83 *ctx)
>>
>>  	dsi->lanes = dsi_lanes;
>>  	dsi->format = MIPI_DSI_FMT_RGB888;
>> -	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>> -			  MIPI_DSI_MODE_VIDEO_NO_HFP | MIPI_DSI_MODE_VIDEO_NO_HBP |
>> -			  MIPI_DSI_MODE_VIDEO_NO_HSA | MIPI_DSI_MODE_NO_EOT_PACKET;
>> +	if (ctx->dual_link_video_mode)
>> +		dsi->mode_flags = MIPI_DSI_MODE_VIDEO;
>> +	else
>> +		dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
>> +				  MIPI_DSI_MODE_VIDEO_BURST |
>> +				  MIPI_DSI_MODE_VIDEO_NO_HFP |
>> +				  MIPI_DSI_MODE_VIDEO_NO_HBP |
>> +				  MIPI_DSI_MODE_VIDEO_NO_HSA |
>> +				  MIPI_DSI_MODE_NO_EOT_PACKET;
> 
> There is no explanation about this, can you elaborate on why?
> 
> I'm working on bringing up a dual-LVDS panel on a board with the SN65DSI84,
> and the removing MIPI_DSI_MODE_VIDEO_BURST seems to help, but I still have
> no idea why. Should you have any info, maybe from TI, it would be very
> interesting.
> 

During our earlier bring-up, TI mentioned that one possible reason for the DSI 
REFCLK not behaving as expected could be that the DSI output is configured in 
burst mode instead of non-burst mode. In burst mode the DSI clock may not be 
continuous, whereas non-burst mode provides a more predictable DSI clock.
> Luca
> 
> --
> Luca Ceresoli, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com


