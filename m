Return-Path: <devicetree+bounces-19233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 097C47FA139
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B75A8281672
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E72D2FE0C;
	Mon, 27 Nov 2023 13:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="hSFC4/U4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19F6AC3
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 05:41:01 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 1C4CB604AC;
	Mon, 27 Nov 2023 13:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701092461;
	bh=5anW9CqulIPzphyCFeqF9JxMOsTBzuZMj1q71pQ7lV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hSFC4/U4hY3Xo6C8TViAAXv35nVJXtdvFlWTx/+1HC4wIGw6FGmHVI+dJBnh41crm
	 OY8q0ehJJQwos9i1wm0p3+CCsyx2o5tKb5RFcqbL3Zx9lUUOmQ+z0E9bWtTrQTY6J0
	 hIv1I+oxXDvjPZGbIPqSLQdGA78nvMQlMD0GrrLPTmOQcrow8b0c0FDZOlmTUSomWp
	 46rQzrBVoMFv7cF/HHHyffhlhEh0z3SWOVCr+zZKa8CnEk9WZXF+M1Wy96kqe1DTNh
	 fvrfRKErAETcvnW9jRqCUAsXdAPaHSUMSF1eodi4bCMYgRTImizkcau7mMy8V6iFNq
	 j+jIXnNNt0LTA==
Date: Mon, 27 Nov 2023 15:40:16 +0200
From: Tony Lindgren <tony@atomide.com>
To: Michael Walle <mwalle@kernel.org>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
	andrzej.hajda@intel.com, daniel@ffwll.ch,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com, jernej.skrabec@gmail.com,
	jonas@kwiboo.se, maarten.lankhorst@linux.intel.com,
	merlijn@wizzup.org, mripard@kernel.org, neil.armstrong@linaro.org,
	pavel@ucw.cz, philipp@uvos.xyz, rfoss@kernel.org, sam@ravnborg.org,
	simhavcs@gmail.com, sre@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH 3/6] drm/bridge: tc358775: Add jeida-24 support
Message-ID: <20231127134016.GG5166@atomide.com>
References: <20231126171837.GK5169@atomide.com>
 <20231127132525.2156089-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127132525.2156089-1-mwalle@kernel.org>

* Michael Walle <mwalle@kernel.org> [231127 13:25]:
> > The jeida-24 register values are the default hardware settings, but they
> > not listed in the driver. Let's add them.
> 
> jeida-24 and jeida-18 should have the same mapping, jeida-18 is broken in
> this driver. could you test this patch:

Yes great works for me with the tc358765 patches:

Tested-by: Tony Lindgren <tony@atomide.com>

> --snip--
> 
> From 46da1d76d4908e5879ed746cce1faeacd69c432e Mon Sep 17 00:00:00 2001
> From: Michael Walle <mwalle@kernel.org>
> Date: Wed, 4 Oct 2023 13:52:57 +0200
> Subject: [PATCH] drm/bridge: tc358775: fix support for jeida-18 and jeida-24
> 
> The bridge always uses 24bpp internally. Therefore, for jeida-18
> mapping we need to discard the lowest two bits for each channel and thus
> starting with LV_[RGB]2. jeida-24 has the same mapping but uses four
> lanes instead of three, with the forth pair transmitting the lowest two
> bits of each channel. Thus, the mapping between jeida-18 and jeida-24
> is actually the same, except that one channel is turned off (by
> selecting the RGB666 format in VPCTRL).
> 
> While at it, remove the bogus comment about the hardware default because
> the default is overwritten in any case.
> 
> Tested with a jeida-18 display (Evervision VGG644804).
> 
> Fixes: b26975593b17 ("display/drm/bridge: TC358775 DSI/LVDS driver")
> Signed-off-by: Michael Walle <mwalle@kernel.org>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 21 +++++++++------------
>  1 file changed, 9 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
> index 90a89d70d832..592c69c2aedc 100644
> --- a/drivers/gpu/drm/bridge/tc358775.c
> +++ b/drivers/gpu/drm/bridge/tc358775.c
> @@ -454,10 +454,6 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
>  	dev_dbg(tc->dev, "bus_formats %04x bpc %d\n",
>  		connector->display_info.bus_formats[0],
>  		tc->bpc);
> -	/*
> -	 * Default hardware register settings of tc358775 configured
> -	 * with MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA jeida-24 format
> -	 */
>  	if (connector->display_info.bus_formats[0] ==
>  		MEDIA_BUS_FMT_RGB888_1X7X4_SPWG) {
>  		/* VESA-24 */
> @@ -468,14 +464,15 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
>  		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_B6, LVI_B7, LVI_B1, LVI_B2));
>  		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B3, LVI_B4, LVI_B5, LVI_L0));
>  		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_R6));
> -	} else { /*  MEDIA_BUS_FMT_RGB666_1X7X3_SPWG - JEIDA-18 */
> -		d2l_write(tc->i2c, LV_MX0003, LV_MX(LVI_R0, LVI_R1, LVI_R2, LVI_R3));
> -		d2l_write(tc->i2c, LV_MX0407, LV_MX(LVI_R4, LVI_L0, LVI_R5, LVI_G0));
> -		d2l_write(tc->i2c, LV_MX0811, LV_MX(LVI_G1, LVI_G2, LVI_L0, LVI_L0));
> -		d2l_write(tc->i2c, LV_MX1215, LV_MX(LVI_G3, LVI_G4, LVI_G5, LVI_B0));
> -		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_L0, LVI_L0, LVI_B1, LVI_B2));
> -		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B3, LVI_B4, LVI_B5, LVI_L0));
> -		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_L0));
> +	} else {
> +		/* JEIDA-18 and JEIDA-24 */
> +		d2l_write(tc->i2c, LV_MX0003, LV_MX(LVI_R2, LVI_R3, LVI_R4, LVI_R5));
> +		d2l_write(tc->i2c, LV_MX0407, LV_MX(LVI_R6, LVI_R1, LVI_R7, LVI_G2));
> +		d2l_write(tc->i2c, LV_MX0811, LV_MX(LVI_G3, LVI_G4, LVI_G0, LVI_G1));
> +		d2l_write(tc->i2c, LV_MX1215, LV_MX(LVI_G5, LVI_G6, LVI_G7, LVI_B2));
> +		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_B0, LVI_B1, LVI_B3, LVI_B4));
> +		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B5, LVI_B6, LVI_B7, LVI_L0));
> +		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_R0));
>  	}
>  
>  	d2l_write(tc->i2c, VFUEN, VFUEN_EN);
> -- 
> 2.39.2
> 

