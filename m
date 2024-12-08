Return-Path: <devicetree+bounces-128259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F29BD9E83B3
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 06:45:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCD1016588E
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 05:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFB7E42AA5;
	Sun,  8 Dec 2024 05:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yODCoYdJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E2D22F11
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 05:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733636716; cv=none; b=XSuLaXR6cfcomM7JwPcc5/r5iomnrMhaGu0Vr34gDIGLO5LD0OPTv08K1zLPutQV9gzowbive4OefgafDCzRNSww/Qd7Grft69vssGt7fmBk3Ar14HNxzY0CoNVFmsrAz8n1i8g8rhn7o9elxp0vBQeDaOUTHOPeCrd1djiYUDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733636716; c=relaxed/simple;
	bh=QeuxdPlZ8A1UtxdrJXK1xYLuQ7YDuNofzqH2sa36Zw4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AQURzfTHXS58jgyWmF+XNjdy7/gvjaxN6++ZZYHQaLa2TFXgAuEy2pz6GP0azqjx/9sqxVqYXWps9cTwX+g5mNHSNYqiYOMZPxNCalqTvqwhX15VOobNgJStfyrDSvVtwlIOLBrJOyTUCfL9wJbhf6oWEefZyMwj9rqnLRvjrjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yODCoYdJ; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ffc76368c6so31411841fa.0
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 21:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733636713; x=1734241513; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7Fle41cIyCa2AFu7iBoMXJgQt0wW2JWBUvbsPg3liEc=;
        b=yODCoYdJfbe/Ukem5+0cHW4sBdN/y/RvfVFVMzuzkiPvsmLt14YCGI4cdrAYw8cwwh
         DnS/FdbrWCTCi8oyoi4DgarBOiW6NqR2Fhi0biz7K8Zv33UQbSVFpGf7Q5wW687KkkB3
         NjMzdozM3j6BmZdE7oxOl5AzEcpeZYLzwNnP9MtFvVlDafA3TbLtowjhkiDNzL+QRG0R
         +nAdPpkfoghSitIkssKcRqFyh5TmUpIqTFWaJuuwjfCCKnZItP1FLRQODA51ED0u1BJt
         u48qFDbasI39L69E+8U7I2zkNqdvrb1ez0Y26IyMHSJVciYAnejTPhSKUwe5p17H9Wrd
         85Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733636713; x=1734241513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Fle41cIyCa2AFu7iBoMXJgQt0wW2JWBUvbsPg3liEc=;
        b=VwSN5RRAPdAr82ib+kDlO9LeAetOLRKr/PHs9y2MVl2u0TtHrohqh3OjhMyqBXUkfe
         LUMRM3thAxu4rtpAzO0Klg4Nhzo8REwXeQPqNj5CJPWukaj+MhZZfOLjY61xVBYhk4/P
         MFsZGi0dDo6TFePWdCXrA9Mscf2lW6dybVCGvFmniaWW1RQ1HfKLqbegD0Bot7TqhL+0
         sWPnf17axKLruEiQKuJSLoQHH9NwidU6wAyGGJ7Es+1C5+ffeWWP6g6Y27YLQ67aHP/S
         fwglCRKddPWr01PU8alFbNHBAy96TfNfNuyWvtl3agnTH8m4FKRwQL25UyNT5x77I4mX
         eCfA==
X-Forwarded-Encrypted: i=1; AJvYcCW5SzpKMPHLyTjGm3gxYxO7AX+hWkJPTl/DvDnO6mD/PNrUL1zeJgh+5UvhJ0cTpqzNT2QBVpW2Hotr@vger.kernel.org
X-Gm-Message-State: AOJu0YzeHFm6Br2xi7nuulIjhVxvgWy4omXnL2o/ar8tZXxy3SwUrsSp
	c3YygY7CP51E+zWCkD8pJqQEZsHQfSuojyGqZFfUrJWonrZPTPuxPs8b/q+XkfA=
X-Gm-Gg: ASbGncuJ16hHje8MaznU35umd/E8kBdxfesgXYYyZzL9d3+fZODlfC0E5OneH1N8Ta+
	69Ug/P9KzKLmICN4OuiwFclgXSONSLVp6jNb8695mWyPjsWx2+hy3WCfVWThBc7fX0irf+nR8in
	s/3YM2mmHk9Y5FEYpKuqGx/GxSIh8c5S46eMSOI7+3g5nXt07Q7Hl/mPNUDA8RRz2MsX22xgmaV
	fB9nMV84NRB5w9Q89o/wpT2Q+z6/6WUmTCJcjhuJcwDeT40JbCBuu+9uKm1sIKGtv422vAnRHHW
	Xz5wsBDTkqqQb1X+bIAMp9dbf5yh8g==
X-Google-Smtp-Source: AGHT+IGC5Xjo5gGspPBZLcvyJdqkRcpNB6yRjkeLampG39JkgzJPFZHmnBF0RK4tynS4xq4+GDxksQ==
X-Received: by 2002:a05:651c:210f:b0:300:25f6:9b3d with SMTP id 38308e7fff4ca-3002f677456mr19192501fa.10.1733636712711;
        Sat, 07 Dec 2024 21:45:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-301f2e48b01sm2611731fa.31.2024.12.07.21.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2024 21:45:11 -0800 (PST)
Date: Sun, 8 Dec 2024 07:45:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Stephen Boyd <swboyd@chromium.org>, 
	Chandan Uddaraju <chandanu@codeaurora.org>, Guenter Roeck <groeck@chromium.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>, 
	Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 18/45] drm/msm/dp: add support to send ACT packets for MST
Message-ID: <qhvaqqzam3ru74r3ydfxyachedsgizilnx4op4bt73ie72pmhy@g4oedv27jp4q>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-18-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-18-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:49PM -0800, Abhinav Kumar wrote:
> Whenever virtual channel slot allocation changes, the DP
> source must send the action control trigger sequence to notify
> the sink about the same. This would be applicable during the
> start and stop of the pixel stream. Add the infrastructure
> to be able to send ACT packets for the DP controller when
> operating in MST mode.
> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_catalog.c | 21 +++++++++++++++++++++
>  drivers/gpu/drm/msm/dp/dp_catalog.h |  4 ++++
>  drivers/gpu/drm/msm/dp/dp_ctrl.c    | 36 ++++++++++++++++++++++++++++++++++--
>  drivers/gpu/drm/msm/dp/dp_ctrl.h    |  3 ++-
>  drivers/gpu/drm/msm/dp/dp_display.c |  6 +++++-
>  drivers/gpu/drm/msm/dp/dp_display.h |  1 +
>  drivers/gpu/drm/msm/dp/dp_reg.h     |  3 +++
>  7 files changed, 70 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.c b/drivers/gpu/drm/msm/dp/dp_catalog.c
> index e6f6edf617898241c74580eb0ae6bc58f06a154f..88d6262a972ef2d30c467ef5ff5c58ef3299ae7d 100644
> --- a/drivers/gpu/drm/msm/dp/dp_catalog.c
> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.c
> @@ -1078,6 +1078,27 @@ void msm_dp_catalog_panel_disable_vsc_sdp(struct msm_dp_catalog *msm_dp_catalog)
>  	msm_dp_catalog_panel_update_sdp(msm_dp_catalog);
>  }
>  
> +void msm_dp_catalog_trigger_act(struct msm_dp_catalog *msm_dp_catalog)
> +{
> +	struct msm_dp_catalog_private *catalog;
> +
> +	catalog = container_of(msm_dp_catalog, struct msm_dp_catalog_private, msm_dp_catalog);
> +
> +	msm_dp_write_link(catalog, REG_DP_MST_ACT, 0x1);
> +
> +	/* make sure ACT signal is performed */
> +	wmb();
> +}
> +
> +bool msm_dp_catalog_read_act_complete_sts(struct msm_dp_catalog *msm_dp_catalog)
> +{
> +	struct msm_dp_catalog_private *catalog;
> +
> +	catalog = container_of(msm_dp_catalog, struct msm_dp_catalog_private, msm_dp_catalog);
> +
> +	return msm_dp_read_link(catalog, REG_DP_MST_ACT);
> +}
> +

Hopefully after [1] this becomes inline in the corresponding dp_ctrl
functions.

[1] https://patchwork.freedesktop.org/patch/626816/?series=141074&rev=2

>  void msm_dp_catalog_panel_tpg_enable(struct msm_dp_catalog *msm_dp_catalog,
>  				struct drm_display_mode *drm_mode)
>  {
> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.h b/drivers/gpu/drm/msm/dp/dp_catalog.h
> index c020b7cfa008241e937f6a53764b136431f1dbd9..c91c52d40209b8bcb63db9c0256f6ef721dace8a 100644
> --- a/drivers/gpu/drm/msm/dp/dp_catalog.h
> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.h
> @@ -135,4 +135,8 @@ void msm_dp_catalog_audio_config_sdp(struct msm_dp_catalog *catalog);
>  void msm_dp_catalog_audio_init(struct msm_dp_catalog *catalog);
>  void msm_dp_catalog_audio_sfe_level(struct msm_dp_catalog *catalog, u32 safe_to_exit_level);
>  
> +/* DP MST APIs */
> +void msm_dp_catalog_trigger_act(struct msm_dp_catalog *dp_catalog);
> +bool msm_dp_catalog_read_act_complete_sts(struct msm_dp_catalog *dp_catalog);
> +
>  #endif /* _DP_CATALOG_H_ */
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> index ba39b009032dd6f5cb708988963cd6acb6838e4a..2bfe2aac3c02b02b12713dbd98e79ed4a75b85d0 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
> @@ -97,6 +97,8 @@ struct msm_dp_ctrl_private {
>  
>  	bool core_clks_on;
>  	bool link_clks_on;
> +
> +	bool mst_active;
>  	bool stream_clks_on[DP_STREAM_MAX];
>  };
>  
> @@ -1625,6 +1627,26 @@ static int msm_dp_ctrl_deinitialize_mainlink(struct msm_dp_ctrl_private *ctrl)
>  	return 0;
>  }
>  
> +int msm_dp_ctrl_mst_send_act(struct msm_dp_ctrl *msm_dp_ctrl)
> +{
> +	struct msm_dp_ctrl_private *ctrl;
> +	bool act_complete;
> +
> +	ctrl = container_of(msm_dp_ctrl, struct msm_dp_ctrl_private, msm_dp_ctrl);
> +
> +	msm_dp_catalog_trigger_act(ctrl->catalog);
> +	msleep(20); /* needs 1 frame time */
> +
> +	act_complete = msm_dp_catalog_read_act_complete_sts(ctrl->catalog);
> +
> +	if (!act_complete)
> +		DRM_ERROR("mst ACT trigger complete SUCCESS\n");
> +	else
> +		drm_dbg_dp(ctrl->drm_dev, "mst ACT trigger complete failed\n");
> +
> +	return 0;
> +}
> +
>  static int msm_dp_ctrl_link_maintenance(struct msm_dp_ctrl_private *ctrl)
>  {
>  	int ret = 0;
> @@ -1643,6 +1665,9 @@ static int msm_dp_ctrl_link_maintenance(struct msm_dp_ctrl_private *ctrl)
>  
>  	msm_dp_catalog_ctrl_state_ctrl(ctrl->catalog, DP_STATE_CTRL_SEND_VIDEO);
>  
> +	if (ctrl->mst_active)
> +		msm_dp_ctrl_mst_send_act(&ctrl->msm_dp_ctrl);
> +
>  	ret = msm_dp_ctrl_wait4video_ready(ctrl);
>  end:
>  	return ret;
> @@ -1745,7 +1770,7 @@ static int msm_dp_ctrl_process_phy_test_request(struct msm_dp_ctrl_private *ctrl
>  	msm_dp_ctrl_stream_clk_off(&ctrl->msm_dp_ctrl, msm_dp_panel);
>  	msm_dp_ctrl_off_link(&ctrl->msm_dp_ctrl);
>  
> -	ret = msm_dp_ctrl_on_link(&ctrl->msm_dp_ctrl);
> +	ret = msm_dp_ctrl_on_link(&ctrl->msm_dp_ctrl, ctrl->mst_active);
>  	if (ret) {
>  		DRM_ERROR("failed to enable DP link controller\n");
>  		return ret;
> @@ -1825,7 +1850,7 @@ static bool msm_dp_ctrl_channel_eq_ok(struct msm_dp_ctrl_private *ctrl)
>  	return drm_dp_channel_eq_ok(link_status, num_lanes);
>  }
>  
> -int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl)
> +int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl, bool mst_active)
>  {
>  	int rc = 0;
>  	struct msm_dp_ctrl_private *ctrl;
> @@ -1844,6 +1869,7 @@ int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl)
>  	rate = ctrl->panel->link_info.rate;
>  	pixel_rate = ctrl->panel->msm_dp_mode.drm_mode.clock;
>  
> +	ctrl->mst_active = mst_active;
>  	msm_dp_ctrl_core_clk_enable(&ctrl->msm_dp_ctrl);
>  
>  	if (ctrl->link->sink_request & DP_TEST_LINK_PHY_TEST_PATTERN) {
> @@ -2035,6 +2061,9 @@ int msm_dp_ctrl_on_stream(struct msm_dp_ctrl *msm_dp_ctrl, struct msm_dp_panel *
>  
>  	msm_dp_catalog_ctrl_state_ctrl(ctrl->catalog, DP_STATE_CTRL_SEND_VIDEO);
>  
> +	if (ctrl->mst_active)
> +		msm_dp_ctrl_mst_send_act(msm_dp_ctrl);
> +
>  	ret = msm_dp_ctrl_wait4video_ready(ctrl);
>  	if (ret)
>  		return ret;
> @@ -2104,6 +2133,8 @@ void msm_dp_ctrl_off_link(struct msm_dp_ctrl *msm_dp_ctrl)
>  
>  	msm_dp_catalog_ctrl_mainlink_ctrl(ctrl->catalog, false);
>  
> +	ctrl->mst_active = false;
> +
>  	dev_pm_opp_set_rate(ctrl->dev, 0);
>  	msm_dp_ctrl_link_clk_disable(&ctrl->msm_dp_ctrl);
>  
> @@ -2264,6 +2295,7 @@ struct msm_dp_ctrl *msm_dp_ctrl_get(struct device *dev, struct msm_dp_link *link
>  	ctrl->catalog  = catalog;
>  	ctrl->dev      = dev;
>  	ctrl->phy      = phy;
> +	ctrl->mst_active = false;
>  
>  	ret = msm_dp_ctrl_clk_init(&ctrl->msm_dp_ctrl);
>  	if (ret) {
> diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.h b/drivers/gpu/drm/msm/dp/dp_ctrl.h
> index d422fd683b65d6f5e459710d0327e472a12c30b0..81c05b1b2baac63e1f1888f3f517e62a98e230a7 100644
> --- a/drivers/gpu/drm/msm/dp/dp_ctrl.h
> +++ b/drivers/gpu/drm/msm/dp/dp_ctrl.h
> @@ -17,7 +17,7 @@ struct msm_dp_ctrl {
>  
>  struct phy;
>  
> -int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl);
> +int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl, bool mst_active);
>  int msm_dp_ctrl_on_stream(struct msm_dp_ctrl *msm_dp_ctrl, struct msm_dp_panel *msm_dp_panel);
>  int msm_dp_ctrl_prepare_stream_on(struct msm_dp_ctrl *dp_ctrl, bool force_link_train);
>  void msm_dp_ctrl_off_link_stream(struct msm_dp_ctrl *msm_dp_ctrl);
> @@ -46,5 +46,6 @@ void msm_dp_ctrl_clear_vsc_sdp_pkt(struct msm_dp_ctrl *msm_dp_ctrl,
>  				   struct msm_dp_panel *msm_dp_panel);
>  void msm_dp_ctrl_psm_config(struct msm_dp_ctrl *msm_dp_ctrl);
>  void msm_dp_ctrl_reinit_phy(struct msm_dp_ctrl *msm_dp_ctrl);
> +int msm_dp_ctrl_mst_send_act(struct msm_dp_ctrl *ctrl);
>  
>  #endif /* _DP_CTRL_H_ */
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index 5fa6c003cf6c51eae77573549a555a00dc33f476..e19860ef3493fb100afbf04b09d14a136fd6b887 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -370,6 +370,7 @@ static int msm_dp_display_process_hpd_high(struct msm_dp_display_private *dp)
>  	struct drm_connector *connector = dp->msm_dp_display.connector;
>  	const struct drm_display_info *info = &connector->display_info;
>  	int rc = 0;
> +	struct msm_dp *dp_display = &dp->msm_dp_display;
>  
>  	rc = msm_dp_panel_read_link_caps(dp->panel, connector);
>  	if (rc)
> @@ -399,7 +400,7 @@ static int msm_dp_display_process_hpd_high(struct msm_dp_display_private *dp)
>  	msm_dp_link_psm_config(dp->link, &dp->panel->link_info, false);
>  
>  	msm_dp_link_reset_phy_params_vx_px(dp->link);
> -	rc = msm_dp_ctrl_on_link(dp->ctrl);
> +	rc = msm_dp_ctrl_on_link(dp->ctrl, dp_display->mst_active);
>  	if (rc) {
>  		DRM_ERROR("failed to complete DP link training\n");
>  		goto end;
> @@ -1628,6 +1629,9 @@ void msm_dp_display_atomic_disable(struct msm_dp *dp)
>  	msm_dp_display = container_of(dp, struct msm_dp_display_private, msm_dp_display);
>  
>  	msm_dp_ctrl_push_idle(msm_dp_display->ctrl);
> +
> +	if (dp->mst_active)
> +		msm_dp_ctrl_mst_send_act(msm_dp_display->ctrl);
>  }
>  
>  static void msm_dp_display_unprepare(struct msm_dp_display_private *dp)
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.h b/drivers/gpu/drm/msm/dp/dp_display.h
> index 8ce8ba254b1bfe5b4c000df83eceef5823772780..38ca25491b1ccfd95e027a9c8f659abb3cd576d3 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.h
> +++ b/drivers/gpu/drm/msm/dp/dp_display.h
> @@ -22,6 +22,7 @@ struct msm_dp {
>  	bool audio_enabled;
>  	bool power_on;
>  	bool prepared;
> +	bool mst_active;
>  	unsigned int connector_type;
>  	bool is_edp;
>  	bool internal_hpd;
> diff --git a/drivers/gpu/drm/msm/dp/dp_reg.h b/drivers/gpu/drm/msm/dp/dp_reg.h
> index 6c534fde6034fced2cb428e9a29de31ed5c5fcc4..46400973eb499066e9e805b16df759b1db34cf22 100644
> --- a/drivers/gpu/drm/msm/dp/dp_reg.h
> +++ b/drivers/gpu/drm/msm/dp/dp_reg.h
> @@ -330,6 +330,9 @@
>  #define REG_DP_PHY_AUX_BIST_CFG			(0x00000050)
>  #define REG_DP_PHY_AUX_INTERRUPT_STATUS         (0x000000BC)
>  
> +/* DP MST related registers */
> +#define REG_DP_MST_ACT                          (0x00000500)

This looks completely out of place.

> +
>  /* DP HDCP 1.3 registers */
>  #define DP_HDCP_CTRL                                   (0x0A0)
>  #define DP_HDCP_STATUS                                 (0x0A4)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

