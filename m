Return-Path: <devicetree+bounces-19209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 911FD7FA058
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:09:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B44A281338
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3C02CCB2;
	Mon, 27 Nov 2023 13:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WF3aHs9x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA69A1096D
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 13:09:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4DBEC433C8;
	Mon, 27 Nov 2023 13:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701090592;
	bh=hn/nFHNO6noKdfVoji+3Pl4wibL57tAHB+fliYROVyo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WF3aHs9x4Zc+rvOcto/hyfmdkfCLu4mkpGnvsot5LqHStGLJXV2YGthyyjWPWydaF
	 EPx9fNHCDB5VetZoQUV1E+DL5rXKphgK3XpslUjwKKLn28XqZxuI/aQhbQ7Ri7RRFm
	 2PPBhuxJveF630ObsUgIV1NonaQyMtjyeUPAc/pVmDadgkn37HrBF/ogD+SjGdT0oo
	 p7SmQMSh9PifltgDbHigHW2lMP6IRrmrG8lYNYz4CcKg63Mh0cZk5nFktUgdz5JGnP
	 D0zErqbReW7XpK37axw4glPw+vjXbFrI6r4zgB9QXkzWq5EpN30/Q7OuWU/40pDTGg
	 FgoJOfIFIGAdg==
From: Michael Walle <mwalle@kernel.org>
To: tony@atomide.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	maarten.lankhorst@linux.intel.com,
	merlijn@wizzup.org,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	pavel@ucw.cz,
	philipp@uvos.xyz,
	rfoss@kernel.org,
	sam@ravnborg.org,
	simhavcs@gmail.com,
	sre@kernel.org,
	tzimmermann@suse.de,
	Michael Walle <mwalle@kernel.org>
Subject: Re: [PATCH 2/6] drm/bridge: tc358775: Fix getting dsi host data lanes
Date: Mon, 27 Nov 2023 14:09:41 +0100
Message-Id: <20231127130941.2154871-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231126163247.10131-2-tony@atomide.com>
References: <20231126163247.10131-2-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

> The current code assume hardcoded dsi host endpoint 1, which may not
> be the case. Let's fix that and simplify the code by getting the dsi
> endpoint with of_graph_get_remote_endpoint() that does not assume any
> endpoint numbering.
> 
> Fixes: b26975593b17 ("display/drm/bridge: TC358775 DSI/LVDS driver")
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
> --- a/drivers/gpu/drm/bridge/tc358775.c
> +++ b/drivers/gpu/drm/bridge/tc358775.c
> @@ -528,25 +528,17 @@ tc_mode_valid(struct drm_bridge *bridge,
>  static int tc358775_parse_dt(struct device_node *np, struct tc_data *tc)
>  {
>  	struct device_node *endpoint;
> -	struct device_node *parent;
>  	struct device_node *remote;
>  	int dsi_lanes = -1;
>  
> -	/*
> -	 * To get the data-lanes of dsi, we need to access the dsi0_out of port1
> -	 *  of dsi0 endpoint from bridge port0 of d2l_in
> -	 */
>  	endpoint = of_graph_get_endpoint_by_regs(tc->dev->of_node,
>  						 TC358775_DSI_IN, -1);
>  	if (endpoint) {
> -		/* dsi0_out node */
> -		parent = of_graph_get_remote_port_parent(endpoint);
> +		/* Get the configured data lanes on the dsi host side */
> +		remote = of_graph_get_remote_endpoint(endpoint);
>  		of_node_put(endpoint);
> -		if (parent) {
> -			/* dsi0 port 1 */
> -			dsi_lanes = drm_of_get_data_lanes_count_ep(parent, 1, -1, 1, 4);
> -			of_node_put(parent);
> -		}
> +		dsi_lanes = drm_of_get_data_lanes_count(remote, 1, 4);

I actually have the same fix, but with one additional detail, which I'm
unsure about though: This looks at the data-lanes property of the *remote*
endpoint whereas other bridge drivers (see tc358767, ti-sn65dsi83, lt8912b,
anx7625) look at the local endpoint and I'm not sure what is correct.

-michael

