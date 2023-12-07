Return-Path: <devicetree+bounces-22780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B738808B8F
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:15:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C1A01C20958
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22CCF446D6;
	Thu,  7 Dec 2023 15:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrAl/U7l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0582A4439F
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 15:14:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E485EC433C8;
	Thu,  7 Dec 2023 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701962099;
	bh=kzMOr7V9gX3Dg3V/1bzEx7CSqNcckGh18xs8/WVR7kk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WrAl/U7luNdzg4httNKR/ztsEt9oueWv2ai3MuXcALw+U+MGNGEkpLGZLxt80ft23
	 yheAy5jZYGfipUnzeDbtWRcfyHJhxKU2znzv8He/l3H3pdcsoKTgowci1odYqwdcwd
	 hCxIFe2iHPXhRftNSSbDfDuGGw/tzawza5jWkmiVhWWHQxL2oStmXXorMo5OtaqBSo
	 a2bO2E9dvM9OtqpQFo8theaYIi9qb6Lrb0Gsfbd08apmPxNGUaarV9FsIoDr0ZTy+Q
	 ijDGyjO5dGxqKjCRrEaa52QVGp+zcRaI06uG6FueUsm/Dn6Gj3uMm3Wl3FC44vEMPh
	 jY9bZESeMZuyA==
From: Michael Walle <mwalle@kernel.org>
To: tony@atomide.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	krzysztof.kozlowski+dt@linaro.org,
	maarten.lankhorst@linux.intel.com,
	merlijn@wizzup.org,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	pavel@ucw.cz,
	philipp@uvos.xyz,
	rfoss@kernel.org,
	robh+dt@kernel.org,
	sam@ravnborg.org,
	simhavcs@gmail.com,
	sre@kernel.org,
	tzimmermann@suse.de,
	Michael Walle <mwalle@kernel.org>
Subject: Re: [PATCH v2 06/10] drm/bridge: tc358775: Get bridge data lanes instead of the DSI host lanes
Date: Thu,  7 Dec 2023 16:14:46 +0100
Message-Id: <20231207151446.2633981-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202075514.44474-7-tony@atomide.com>
References: <20231202075514.44474-7-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

> The current code assumes the data-lanes property is configured on the
> DSI host side instead of the bridge side, and assumes DSI host endpoint 1.
> 
> Let's standardize on what the other bridge drivers are doing and parse the
> data-lanes property for the bridge. Only if data-lanes property is not found,
> let's be nice and also check the DSI host for old dtb in use and warn.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 25 +++++++++++--------------
>  1 file changed, 11 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
> --- a/drivers/gpu/drm/bridge/tc358775.c
> +++ b/drivers/gpu/drm/bridge/tc358775.c
> @@ -525,27 +525,24 @@ tc_mode_valid(struct drm_bridge *bridge,
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
> -	if (endpoint) {
> -		/* dsi0_out node */
> -		parent = of_graph_get_remote_port_parent(endpoint);
> -		of_node_put(endpoint);
> -		if (parent) {
> -			/* dsi0 port 1 */
> -			dsi_lanes = drm_of_get_data_lanes_count_ep(parent, 1, -1, 1, 4);
> -			of_node_put(parent);
> -		}
> +	dsi_lanes = drm_of_get_data_lanes_count(endpoint, 1, 4);
> +
> +	/* Quirk old dtb: Use data lanes from the DSI host side instead of bridge */
> +	if (dsi_lanes == -EINVAL || dsi_lanes == -ENODEV) {
> +		remote = of_graph_get_remote_endpoint(endpoint);
> +		dsi_lanes = drm_of_get_data_lanes_count(remote, 1, 4);
> +		of_node_put(remote);
> +		if (dsi_lanes >= 1)
> +			dev_warn(tc->dev, "missing dsi-lanes property for the bridge\n");

It wasn't obvious what this warning should tell me at first. Maybe
add something like ". Falling back to the property of the remote
endpoint". A little verbose, maybe you could come up with a more
dense wording.

In any case,

Reviewed-by: Michael Walle <mwalle@kernel.org>

-michael

