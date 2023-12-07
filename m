Return-Path: <devicetree+bounces-22794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3B0808CF4
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 17:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9C7D1C209F9
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2FF04654C;
	Thu,  7 Dec 2023 16:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSoaGx3L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A064652B
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 16:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0D36C433C7;
	Thu,  7 Dec 2023 16:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701965643;
	bh=0t/eBv95Pg8oVbfN+OcqNWdQmDY6gQl2gRnvLvTEUt0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SSoaGx3LQmdlvJ1siocln3lh9sMW1Rqfgf/ARQZ4m8c3U7ltSlmR/I1HmiZLu1U4G
	 t9Q6oZz5g6ZmIF31e0Ouv1cMYSBFE0Fd4cJWohWWJDG0EyQ3pbxxokvwcIhEdF8Zkq
	 CPdSnQaaf0SmScf7E+V1oSUak+bW9FiB3kxI9eNyKwsw1e2ZoZjww532xcKrG+GVUU
	 3yDT+bxbkPErsY0ouSpqSxzrV+MB/0pe02F9QX6ZkiQn6RwMPF/LHc7PSs+ElIgxTZ
	 cDJNSilb44uQHm/EBR6nYQCUFHWNb4Yq7bnGLCZonRfQX5U2kBhVmarlv5JGKQ7Af7
	 QpA6R2NNxvo5Q==
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
Subject: Re: [PATCH v2 10/10] drm/bridge: tc358775: Configure hs_rate and lp_rate
Date: Thu,  7 Dec 2023 17:13:52 +0100
Message-Id: <20231207161352.2634438-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202075514.44474-11-tony@atomide.com>
References: <20231202075514.44474-11-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

> The hs_rate and lp_rate may be used by the dsi host for timing
> calculations. The tc358775 has a maximum bit rate of 1 Gbps/lane,
> tc358765 has maximurate of 800 Mbps per lane.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
> --- a/drivers/gpu/drm/bridge/tc358775.c
> +++ b/drivers/gpu/drm/bridge/tc358775.c
> @@ -636,6 +636,11 @@ static int tc_attach_host(struct tc_data *tc)
>  	dsi->format = MIPI_DSI_FMT_RGB888;
>  	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>  		MIPI_DSI_MODE_LPM;
> +	if (tc->type == TC358765)
> +		dsi->hs_rate = 800000000;

It's not clear to me whether this is the data rate or the frequency. From
the kernel doc:

 * @hs_rate: maximum lane frequency for high speed mode in hertz, this should
 * be set to the real limits of the hardware, zero is only accepted for
 * legacy drivers

The tc358775 datasheet lists 1Gbps per lane, which corresponds to a 500MHz DSI
clock frequency. Not sure how that would correspond to the "maximum lane
frequency" above. I guess the wording of the comment is just misleading and
the value is the data rate of the lane.

> +	else
> +		dsi->hs_rate = 1000000000;
> +	dsi->lp_rate = 10000000;

That I didn't found in the datasheet. Just a T_min_rx (minimum pulse width
response) which is 20ns. But there are no more details on this.

-michael

