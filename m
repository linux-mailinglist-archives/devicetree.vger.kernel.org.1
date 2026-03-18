Return-Path: <devicetree+bounces-277055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLEDFz9oumnnWAIAu9opvQ
	(envelope-from <devicetree+bounces-277055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:54:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5662B8862
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:54:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 708F73030E96
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0122A39184D;
	Wed, 18 Mar 2026 08:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="2LsqgJO9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130B336AB6E
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773823937; cv=none; b=EHrZ0mMdyQrD7I/D6GEj4EfkLgu6HN6Iobd2SIAOd0NDsmKKXkuN0NPIds1p9cHJRXYHB5QL3A1Fi+Jz/NzDyEHbbbVCZM96U5rPCwNOY/Z94skVBT5jKEPLVWKTR5dnxFthhWvAtdDGkifo5zY5qSQPkrZHfReK2tTIfNiZ9ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773823937; c=relaxed/simple;
	bh=9fpamoudnXy3M4dHBCHFeTPRyc7L3lzExzn+kqja54A=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=ZQLF8OHwEfMLecC0i7an8Kkp+V8gsiHiW9Rt/Zz68Kuy0eMA71IxSOMbr2AvBgnIPLDDsDHL76qt+PmWPJdspU/lj8mJhgCw+B/EDsJ4t+dBo6LLU2dOJpinXfc1TWx+mYL1pV6tXJ4rLEITKilOsPVY/CHKGHv/TXCV72zjZWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=2LsqgJO9; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 52D3B4E426E5;
	Wed, 18 Mar 2026 08:52:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1FF976004F;
	Wed, 18 Mar 2026 08:52:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5CD1E104506C1;
	Wed, 18 Mar 2026 09:52:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773823933; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=nT0Hf9Q9SP5IQGF+baESZbBfkIQwTmW8dv27L7iwgeE=;
	b=2LsqgJO9mmywmuu+OZIQWEmwa9aPtAMPTrwKG7bGoN5bV+/zhTYajELNrPnKUD64igN24M
	2G5NuTm6Ghia91FARpBn73xewOOhT5+NwMmlSVYdLu/UM6/pn23wP/oHh8R8sMmkZzA9kO
	Fab49tsKAwf6PoEflO4Igf4p/vLTuzagTJH3fJfhpOqIUifSXbz+EdTVdRB0HKgmPa113Y
	z1OftieVu4yAmcpkhPJEPP2pkarYESUtft8jshwsRBs47hVtrIIvjJcBEQx6L3vpoiolq6
	b8XgizJPYNlO9cprRBlYtnkzwW2oFgdUwGKoSMuuh9uBwsjytAQ8vcC1C8Eqew==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 18 Mar 2026 09:52:08 +0100
Message-Id: <DH5S3RB2XZ31.3C994FZK5U4OV@bootlin.com>
Subject: Re: [PATCH v2 2/2] drm: bridge: ti-sn65dsi83: Add support for
 dual-link LVDS video mode
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <marex@denx.de>, <valentin@compulab.co.il>,
 <philippe.schenker@toradex.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
To: <tessolveupstream@gmail.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <20260312043743.261475-3-tessolveupstream@gmail.com>
 <DH0X6JQP0ZIW.3F4LJLIEMWH8M@bootlin.com>
 <9a9e13a5-411a-40bc-b52f-4345e7f6b92e@gmail.com>
In-Reply-To: <9a9e13a5-411a-40bc-b52f-4345e7f6b92e@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,linaro.org,kernel.org];
	TAGGED_FROM(0.00)[bounces-277055-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid,bootlin.com:url]
X-Rspamd-Queue-Id: AB5662B8862
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Sudarshan,

On Wed Mar 18, 2026 at 6:53 AM CET, tessolveupstream wrote:
>>> +	if (ctx->dual_link_video_mode) {
>>> +		regmap_write(ctx->regmap, REG_RC_LVDS_PLL, 0x05);
>>> +		regmap_write(ctx->regmap, REG_RC_PLL_EN, 0x00);
>>> +		regmap_write(ctx->regmap, REG_DSI_CLK, 0x53);
>>> +		regmap_write(ctx->regmap, REG_LVDS_FMT, 0x6f);
>>> +		regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x00);
>>> +		regmap_write(ctx->regmap,
>>> +			     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_LOW, 0x00);
>>> +		regmap_write(ctx->regmap,
>>> +			     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_HIGH, 0x00);
>>> +		regmap_write(ctx->regmap,
>>> +			     REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW, 0x10);
>>> +		regmap_write(ctx->regmap,
>>> +			     REG_VID_CHA_HORIZONTAL_BACK_PORCH, 0x28);
>>> +		regmap_write(ctx->regmap,
>>> +			     REG_VID_CHA_VERTICAL_BACK_PORCH, 0x00);
>>> +		regmap_write(ctx->regmap,
>>> +			     REG_VID_CHA_HORIZONTAL_FRONT_PORCH, 0x00);
>>> +		regmap_write(ctx->regmap,
>>> +			     REG_VID_CHA_VERTICAL_FRONT_PORCH, 0x00);
>>> +	}
>>
>> I guess these hard-coded values are sepcific to your panel. They must
>> instead be computed based on the timings in order to work for every pane=
l.
>>
>
> The hard-coded values were initially derived from the TI DSI Tuner output
> during our bring-up testing. TI had also mentioned that when PATGEN is
> enabled with dual-LVDS output on the SN65DSI84, the horizontal timings
> must be divided by 2. They also noted that the current driver does not
> appear to divide the horizontal timings when PATGEN is enabled in
> dual-LVDS mode.
>
> Based on that suggestion, we had tried adjusting the horizontal timing
> registers accordingly to match the tuner output.
> Could you please advise how these register values are expected to be
> derived from the mode timings so that they work correctly for different
> panels?

Well, the principle is quite simple:

 1. the panel docs tell you which timings the panel needs, e.g. HBP must be
    10 clock cycles

 2. your panel description in dts or implementation in a panel driver will
    then be written accordingly

 3. the ti-sn65dsi83 driver will receive a struct drm_display_mode* with
    these values

 4. based on those values it sets the registers so the SN65DSI84 uses the
    timings required by the panel (with a bit of math if needed):

	regmap_write(ctx->regmap, REG_VID_CHA_HORIZONTAL_BACK_PORCH,
		     mode->htotal - mode->hsync_end);

Same for all other timings.

Ti is more complicated if more cases need to be handled, such as dual-LVDS,
and the chip documentation is vague about what must be done in those cases.

I suggested next steps to move forward in reply to the cover letter.

>>> @@ -965,9 +1001,15 @@ static int sn65dsi83_host_attach(struct sn65dsi83=
 *ctx)
>>>
>>>  	dsi->lanes =3D dsi_lanes;
>>>  	dsi->format =3D MIPI_DSI_FMT_RGB888;
>>> -	dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>>> -			  MIPI_DSI_MODE_VIDEO_NO_HFP | MIPI_DSI_MODE_VIDEO_NO_HBP |
>>> -			  MIPI_DSI_MODE_VIDEO_NO_HSA | MIPI_DSI_MODE_NO_EOT_PACKET;
>>> +	if (ctx->dual_link_video_mode)
>>> +		dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO;
>>> +	else
>>> +		dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO |
>>> +				  MIPI_DSI_MODE_VIDEO_BURST |
>>> +				  MIPI_DSI_MODE_VIDEO_NO_HFP |
>>> +				  MIPI_DSI_MODE_VIDEO_NO_HBP |
>>> +				  MIPI_DSI_MODE_VIDEO_NO_HSA |
>>> +				  MIPI_DSI_MODE_NO_EOT_PACKET;
>>
>> There is no explanation about this, can you elaborate on why?
>>
>> I'm working on bringing up a dual-LVDS panel on a board with the SN65DSI=
84,
>> and the removing MIPI_DSI_MODE_VIDEO_BURST seems to help, but I still ha=
ve
>> no idea why. Should you have any info, maybe from TI, it would be very
>> interesting.
>>
>
> During our earlier bring-up, TI mentioned that one possible reason for th=
e DSI
> REFCLK not behaving as expected could be that the DSI output is configure=
d in
> burst mode instead of non-burst mode. In burst mode the DSI clock may not=
 be
> continuous, whereas non-burst mode provides a more predictable DSI clock.

Uhm, this is a bit vague. They basically said "burst can be more
problematic than continuous", which is obvious, and "try disabling burst
and see whether it helps" with no explanation on why one works and not the
other. Shoudl you have more info from them you'd be welcome to share it. In
particular, is disabling burst mode specifically related to dual-LVDS, or
just a way to (try to) get rid of some problems without a clear
understanding?

On my side I also have a dual-LVDS panel connected to a SN65DSI84, which
works only by disabling burst mode. I haven't tried upstreaming it because
I don't have an explanation of why it fixes the panel and so I have no idea
how to teach the driver when it should disable burst mode.

Additionally inyour patch you remove many other flags. Any explanation from
those?

Best regards,
Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

