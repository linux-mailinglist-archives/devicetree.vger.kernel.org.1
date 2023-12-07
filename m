Return-Path: <devicetree+bounces-22774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5E1808B47
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF5D0B20C2B
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3764437D;
	Thu,  7 Dec 2023 15:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lft6Crf0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7282235288
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 15:01:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AB1EC433C8;
	Thu,  7 Dec 2023 15:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701961281;
	bh=H87zHVmCe+jqZ2NARd18JXpG7Y44ERHIWR/UhuPD8do=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lft6Crf045fUHN+P9f0kN+NFh+F4Dn7AEuAhMIl4svHc5TCJORp+pcAc8RriMmRTC
	 6tlfcZebullGTKh0LGVfuKSqTkt+LHsA2PyD8d2/RIZOUfAHaUVhVv1KW+UMeU+34c
	 2NZ5CPVnU7lfbJ9RTjmMAdborks2BoOLqgy2/5pCUPlvQKXKalzmJRJrd4a4fzlwzv
	 RBPrVG5mJCcIw1r/sDanEEsmsXi3MHdXuT1DehMZkkZlgeHmJuOuaWhrplNMdVbV7E
	 s96N6YJr0Pbv3rKsLFq6X9vd/9p68nkthO4/rTNYH0sl9RwydOdBaXrXb47MPRT6zk
	 gucvhLk6EU/+A==
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
Subject: Re: [PATCH v2 07/10] drm/bridge: tc358775: Add burst and low-power modes
Date: Thu,  7 Dec 2023 16:01:04 +0100
Message-Id: <20231207150104.2633528-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202075514.44474-8-tony@atomide.com>
References: <20231202075514.44474-8-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

> Burst and low-power modes are supported both for tc358765 and tc358775.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
> --- a/drivers/gpu/drm/bridge/tc358775.c
> +++ b/drivers/gpu/drm/bridge/tc358775.c
> @@ -619,7 +619,8 @@ static int tc_attach_host(struct tc_data *tc)
>  
>  	dsi->lanes = tc->num_dsi_lanes;
>  	dsi->format = MIPI_DSI_FMT_RGB888;
> -	dsi->mode_flags = MIPI_DSI_MODE_VIDEO;
> +	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		MIPI_DSI_MODE_LPM;

Could you align it with the equal sign of the former line?

Reviewed-by: Michael Walle <mwalle@kernel.org>
Tested-by: Michael Walle <mwalle@kernel.org>

-michael

