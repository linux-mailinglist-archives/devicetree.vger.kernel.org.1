Return-Path: <devicetree+bounces-36984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D592843679
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B030F1C21A51
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 06:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1291A3E46B;
	Wed, 31 Jan 2024 06:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="hiiMiM5O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50B13E477
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 06:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706681713; cv=none; b=JCVTNN20W91VOJu7YZk0XY1LjdK0Who9Cons+8265AjFlFVkJ3o1iNbLNBIh5C+f4PsCQtbjgetshcfP1SlntwXwfOie8v9qdAob6R3A/+zJ0iC9wzW9+2P8v2xg+KOgdGwAMMQnTT5NjAPg0QuAibiEUG+jyXUEAOt+0gsDUQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706681713; c=relaxed/simple;
	bh=2yPSLwDIVXISiz850jNswuJMbHS4Z6UYnk6bKNxSsGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cNLoUi++2OcPqyFTqFeaISwCnwoQDfdH62E9RDMR8pi3sK3po2ywy56kDfLOgkEF0PbD5uYLGZrZwLwn9sMBPs6i+3RXhvetgpM0TGFc5gB4tqg52vcalutxTOyL4stW1BArl0nd1XKHYBVU5CZB5UVeS/Y+wnCEazmgMJ90cZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=hiiMiM5O; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id C72DB60416;
	Wed, 31 Jan 2024 06:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1706681704;
	bh=2yPSLwDIVXISiz850jNswuJMbHS4Z6UYnk6bKNxSsGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hiiMiM5OZoROWd6k7SN0rkmCACBj/yZ25OihprOZDTsxfQJAVKRDX5wv9QRB2uGdH
	 Pv8yplmE9sewWWTOfW2yB13kUuEujbqnp1pMfLt0RyJtBEizx/KfpnukvN2FX2lv06
	 Wh3uSKUJId/u+XENV2YTOI07H8lwC/Hjkdn5gtzmiHcEdKfyX3xfvqKZ8dBpnvuq1Y
	 jRA4n/XnEazH12EbMFzyQtJs6NyTz0/C62poin32e9nnB8Qucv2I2P0UHFREMgDsyx
	 Zmi2Pm05JoxFfDgNq9VufCPnPpiVin0sYUwuwaecgnpMdPFT5lZzfvJ80zYVhrHIXE
	 mJNFfrq1W0E9Q==
Date: Wed, 31 Jan 2024 08:14:09 +0200
From: Tony Lindgren <tony@atomide.com>
To: Michael Walle <mwalle@kernel.org>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
	andrzej.hajda@intel.com, conor+dt@kernel.org, daniel@ffwll.ch,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com, jernej.skrabec@gmail.com,
	jonas@kwiboo.se, krzysztof.kozlowski+dt@linaro.org,
	maarten.lankhorst@linux.intel.com, merlijn@wizzup.org,
	mripard@kernel.org, neil.armstrong@linaro.org, pavel@ucw.cz,
	philipp@uvos.xyz, rfoss@kernel.org, robh+dt@kernel.org,
	sam@ravnborg.org, simhavcs@gmail.com, sre@kernel.org,
	tzimmermann@suse.de
Subject: Re: [PATCH v2 10/10] drm/bridge: tc358775: Configure hs_rate and
 lp_rate
Message-ID: <20240131061409.GU31612@atomide.com>
References: <20231202075514.44474-11-tony@atomide.com>
 <20231207161352.2634438-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231207161352.2634438-1-mwalle@kernel.org>

* Michael Walle <mwalle@kernel.org> [231207 16:14]:
> > The hs_rate and lp_rate may be used by the dsi host for timing
> > calculations. The tc358775 has a maximum bit rate of 1 Gbps/lane,
> > tc358765 has maximurate of 800 Mbps per lane.
> > 
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> >  drivers/gpu/drm/bridge/tc358775.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
> > --- a/drivers/gpu/drm/bridge/tc358775.c
> > +++ b/drivers/gpu/drm/bridge/tc358775.c
> > @@ -636,6 +636,11 @@ static int tc_attach_host(struct tc_data *tc)
> >  	dsi->format = MIPI_DSI_FMT_RGB888;
> >  	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> >  		MIPI_DSI_MODE_LPM;
> > +	if (tc->type == TC358765)
> > +		dsi->hs_rate = 800000000;
> 
> It's not clear to me whether this is the data rate or the frequency. From
> the kernel doc:
> 
>  * @hs_rate: maximum lane frequency for high speed mode in hertz, this should
>  * be set to the real limits of the hardware, zero is only accepted for
>  * legacy drivers
> 
> The tc358775 datasheet lists 1Gbps per lane, which corresponds to a 500MHz DSI
> clock frequency. Not sure how that would correspond to the "maximum lane
> frequency" above. I guess the wording of the comment is just misleading and
> the value is the data rate of the lane.

Yeah seems we're using the data rate of a lane in in hertz and then the
host drivers adapt for the double data rate. Or at least that's my
understanding.. Hopefully we don't have different assumptions in the
host drivers.

> > +	else
> > +		dsi->hs_rate = 1000000000;
> > +	dsi->lp_rate = 10000000;
> 
> That I didn't found in the datasheet. Just a T_min_rx (minimum pulse width
> response) which is 20ns. But there are no more details on this.

I think the low power data rate might be specified in the mipi dsi spec.
Maybe somebody familiar with the spec can confirm it.

Regards,

Tony

