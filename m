Return-Path: <devicetree+bounces-127878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C69E6950
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48061166C74
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261491DBB3A;
	Fri,  6 Dec 2024 08:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gr1z7RLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE361B532F
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 08:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733475095; cv=none; b=dom6oQkrYdV1nHnRUBH4elA3ITBLEFBJJ1FdCWvBGIy9bUW/8+U0aMu8Wg87B87jbH9HOf56SEivi/KOpDJCk4ZdPM3FhLtPcvqiTOSF+Yl8PHCTQpiDawheetN6bt4ilhfhA+9Ss4yMgmZyNiSikoTDItoVj3AlAz7oquqlff0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733475095; c=relaxed/simple;
	bh=ZitxD7loxsqizBdmvPd0FzEMPOpMpauHOyzg3T56HOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q6uMYV5xwRxPnMU0GSRZP4Lp4f9uV1ZimgS+d/vMDstvmnODTlhjGTChtUIYjrNVVYZx3yijjEwND5QiOgAuwIrEYoPCA6sXjhlq6kHTLFjYfSz6hbh4UMW/CGVtRb4J9dObIcx+CpKqLDv+W/cwfaQjIKVHp/lKfttgP6Omn4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gr1z7RLR; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53e0844ee50so1932037e87.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 00:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733475091; x=1734079891; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWBX1bs+iy55emzBKbojkLtAmT1gtlPvb/CKsCaSB7Q=;
        b=Gr1z7RLRqqS2BUPjxob/jQvaGCH45TXnF6L7vohKKOfaor5dK4NLt61Y9sAvSf637Y
         ol4B8RdS73Xsh5M/obLCffQ5iy2pk+G2irsT9EmmsiJiHmlaug750sibWJdmIxcImk03
         9FlXUsSHnJXGmWDAdjXzAVCPJwHnmJUtpvnMEQyessVp8Uuucqdup8jp2j38Oi1v1Tqe
         zkQ+KjqzBLIJC7Wms8hAjX240P9alCoSdHCcGyAbyEJdcjtpkdWbclYwl65ytiCn+X0K
         zFEuA0x2D56yrOfKLxPaHm/mvETQPfVzzPQjhDrupx1SqQvNAG3YDEkmQheb6ba3dvA+
         PcKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733475091; x=1734079891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWBX1bs+iy55emzBKbojkLtAmT1gtlPvb/CKsCaSB7Q=;
        b=Xf9SgjummvTmclt38synwoA6Y4D4iz9eEns1DKA6TJoGCkav6u26HEFzM8acNBQCWE
         IYIxO2PmWf7OEHCaX6SP4uB+wCLPusixffoDvmrskyu1RcpN2L3Z0gerjkwCZAve4RWj
         93A+hmow4gAEMjqYjgdYAeair2amYsfHpHLeVLWS0LKiv3ENHXKue9iMjmKBNC/tvYh1
         7BdWA6/Gs4kcQl2T4myoN+gpoUVmOQI/at7OnkSnOp1d9pqRxzrTlLgkolupBX6Td5hd
         fbb+YlAsR/K2qQqDBdZr0MTG2YADgmG9rjc40gIymkTRYwDj9tEDPoCorKebh7ZZcSFG
         EN8g==
X-Forwarded-Encrypted: i=1; AJvYcCUGpiUbCeZOJLzIFkl/N+/b8dcG2YT9Z6mdwc3zBR29JhbWnsq0NkrpglfcZN25adFL/xhTYQuEvTJS@vger.kernel.org
X-Gm-Message-State: AOJu0YxYpj7WOXGvp6FkxeVxCBcLqGeN4+RboPlM9k+g0Q0hBg4wwJqK
	uSsKm+ARZtpg0i3qLpw+0dj6Ixv++idqE8VTj6Y17ZjDC7vQ+0NeK7Z7+01MDTQ=
X-Gm-Gg: ASbGncu9mrfgIKXmvwyhCpHOuBmuEgL/9PGT7jakt7Ig7A/sIWV7dDh27GfHsJDZmWr
	8qUipU6gCakSVAUg28fthTGvcurhKvCUsm/75+bpVU2jnpo+VslLQUZPLu7ZU/wZc1XCnG911/g
	1OuDs64N/ZHq6dMM0eA44nH1sRLwHeMDr0YSS+LYCKcaviCtJHD/Fx2d/XewLpzlKSP0Xu61c25
	1kiPodQR332QLhiUvxZVXOo8WQwWRFS19HxLJuWNBIxT6T4s+4u5LJ569LcFmu1E2tdLyyARg4K
	leD9VPqh3cAT8fhDdU2CxqXNl90wBw==
X-Google-Smtp-Source: AGHT+IG7K+8pO9XWmqftdiowiVqy5iu4YcxeozZAlByNHWqu9xY6PzbGFMUJZK1MaeFk29r2ZsG3OQ==
X-Received: by 2002:a05:6512:4024:b0:53e:1c89:1bb1 with SMTP id 2adb3069b0e04-53e2c2b9eaamr622234e87.16.1733475091210;
        Fri, 06 Dec 2024 00:51:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229ca205sm440371e87.242.2024.12.06.00.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 00:51:29 -0800 (PST)
Date: Fri, 6 Dec 2024 10:51:27 +0200
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
Subject: Re: [PATCH 04/45] drm/msm/dp: split msm_dp_panel_read_sink_caps()
 into two parts
Message-ID: <osctzl3bgutcjt3hjvgxaq64imn2i67hagqm5slfozf33tnj66@5hlfmqmt7if5>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-4-f8618d42a99a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205-dp_mst-v1-4-f8618d42a99a@quicinc.com>

On Thu, Dec 05, 2024 at 08:31:35PM -0800, Abhinav Kumar wrote:
> In preparation of DP MST where link caps are read for the
> immediate downstream device and the edid is read through
> sideband messaging, split the msm_dp_panel_read_sink_caps() into
> two parts which read the link parameters and the edid parts
> respectively.

As you are touching this part, could you please refactor the code
instead by dropping the msm_dp_panel->drm_edid? There should be no need
to store EDID in the panel structure.

> 
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c |  6 +++++-
>  drivers/gpu/drm/msm/dp/dp_panel.c   | 25 +++++++++++++++++--------
>  drivers/gpu/drm/msm/dp/dp_panel.h   |  5 ++++-
>  3 files changed, 26 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index be26064af9febf4f4761e21ea7db85ab1ac66081..052db80c6a365f53c2c0a37d3b69ea2b627aea1f 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -372,7 +372,11 @@ static int msm_dp_display_process_hpd_high(struct msm_dp_display_private *dp)
>  	const struct drm_display_info *info = &connector->display_info;
>  	int rc = 0;
>  
> -	rc = msm_dp_panel_read_sink_caps(dp->panel, connector);
> +	rc = msm_dp_panel_read_link_caps(dp->panel, connector);
> +	if (rc)
> +		goto end;
> +
> +	rc = msm_dp_panel_read_edid(dp->panel, connector);
>  	if (rc)
>  		goto end;
>  
> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.c b/drivers/gpu/drm/msm/dp/dp_panel.c
> index 5d7eaa31bf3176566f40f01ff636bee64e81c64f..d277e9b2cbc03688976b6aa481ee724b186bab51 100644
> --- a/drivers/gpu/drm/msm/dp/dp_panel.c
> +++ b/drivers/gpu/drm/msm/dp/dp_panel.c
> @@ -108,8 +108,8 @@ static u32 msm_dp_panel_get_supported_bpp(struct msm_dp_panel *msm_dp_panel,
>  	return min_supported_bpp;
>  }
>  
> -int msm_dp_panel_read_sink_caps(struct msm_dp_panel *msm_dp_panel,
> -	struct drm_connector *connector)
> +int msm_dp_panel_read_link_caps(struct msm_dp_panel *msm_dp_panel,
> +				struct drm_connector *connector)

This function doesn't require connector anymore.

>  {
>  	int rc, bw_code;
>  	int count;
> @@ -150,8 +150,19 @@ int msm_dp_panel_read_sink_caps(struct msm_dp_panel *msm_dp_panel,
>  
>  	rc = drm_dp_read_downstream_info(panel->aux, msm_dp_panel->dpcd,
>  					 msm_dp_panel->downstream_ports);
> -	if (rc)
> -		return rc;
> +	return rc;
> +}
> +
> +int msm_dp_panel_read_edid(struct msm_dp_panel *msm_dp_panel, struct drm_connector *connector)
> +{
> +	struct msm_dp_panel_private *panel;
> +
> +	if (!msm_dp_panel || !connector) {
> +		DRM_ERROR("invalid input\n");
> +		return -EINVAL;
> +	}

Neither panel nor connector can be NULL here, please drop.

> +
> +	panel = container_of(msm_dp_panel, struct msm_dp_panel_private, msm_dp_panel);
>  
>  	drm_edid_free(msm_dp_panel->drm_edid);
>  
> @@ -163,13 +174,11 @@ int msm_dp_panel_read_sink_caps(struct msm_dp_panel *msm_dp_panel,
>  		DRM_ERROR("panel edid read failed\n");
>  		/* check edid read fail is due to unplug */
>  		if (!msm_dp_catalog_link_is_connected(panel->catalog)) {
> -			rc = -ETIMEDOUT;
> -			goto end;
> +			return -ETIMEDOUT;
>  		}
>  	}
>  
> -end:
> -	return rc;
> +	return 0;
>  }
>  
>  u32 msm_dp_panel_get_mode_bpp(struct msm_dp_panel *msm_dp_panel,
> diff --git a/drivers/gpu/drm/msm/dp/dp_panel.h b/drivers/gpu/drm/msm/dp/dp_panel.h
> index 0e944db3adf2f187f313664fe80cf540ec7a19f2..7a38655c443af597c84fb78c6702b2a3ef9822ed 100644
> --- a/drivers/gpu/drm/msm/dp/dp_panel.h
> +++ b/drivers/gpu/drm/msm/dp/dp_panel.h
> @@ -59,7 +59,10 @@ void msm_dp_panel_dump_regs(struct msm_dp_panel *msm_dp_panel);
>  int msm_dp_panel_read_sink_caps(struct msm_dp_panel *msm_dp_panel,
>  		struct drm_connector *connector);
>  u32 msm_dp_panel_get_mode_bpp(struct msm_dp_panel *msm_dp_panel, u32 mode_max_bpp,
> -			u32 mode_pclk_khz);
> +			      u32 mode_pclk_khz);
> +int msm_dp_panel_read_link_caps(struct msm_dp_panel *dp_panel,
> +				struct drm_connector *connector);
> +int msm_dp_panel_read_edid(struct msm_dp_panel *dp_panel, struct drm_connector *connector);
>  int msm_dp_panel_get_modes(struct msm_dp_panel *msm_dp_panel,
>  		struct drm_connector *connector);
>  void msm_dp_panel_handle_sink_request(struct msm_dp_panel *msm_dp_panel);
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

