Return-Path: <devicetree+bounces-134745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFFC9FE68D
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:35:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA92D188236E
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746191A3BD8;
	Mon, 30 Dec 2024 13:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aLwDPkUN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F15198E91
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 13:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735565741; cv=none; b=pDXSo3aKPMA/JgbILCtJnTcM3LOX6YG8HEf5Ioqy5cD9/Pwl1YOGHKroXj6Pl/oHDD1QIUham6199YEwowEf9yLSwcqT7nRe/im596cWt6P/xgTVC3qeRryuLcE2e5VLzTIq2CkBr9UG7zhq7UVpoFBH6UHFYipBBBXpv+eslR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735565741; c=relaxed/simple;
	bh=GSFBmUjah0vvOA/YDhWZSFLH7EwY2stR7NjQ6ebE9G4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B0R6E1EcrbOJ64pVtovLPyEjYdxA0w6+H8YliMBzmMapwjjoIr2V9i5YxuEHDJfEEww1LBqux7Qmc2yo3IgCbTAPKErOjMrm5ls3ptvKMur2J+jEogrlWerUlNcPfqfqPvlXuichwzpOfqjvwYqpGwTdvm4yrC03ft9ZnHLOhkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aLwDPkUN; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so14209489e87.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 05:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735565738; x=1736170538; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q5prvbL4qVVxyUau/62tjpzq6Xjuv+m8EjzcAcEKEz4=;
        b=aLwDPkUNR8GZ5mZmZ8IWq6yWWot0PpzWDgzOsnwmNbRCdCf13QahkT6OQMl/doehzF
         12J+D51MaZ6V8X/5PKxsC/RM1c5HlVas9mWc3GWEmtu45QlcG9mh+SDS2frt74G2rOgk
         SxVAAvLBm/+E4eKIQjPEV06fSKjgD85T/icbBjZ4QhGrKIwVe4LUUa2laSyBkMuXl1ap
         6td78lEDsnNEWbh8UQ/ejD/l2J05PuC/cTPsrPqlnUkV3UsXgEni9hMyOlFrSZV4wQow
         QCINVfQEokwpBFVf4raxS3exIGi5k+KF3XJ5/1z0pSko7X/EzLEE7aYXNIvPs0KU12pV
         6wVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735565738; x=1736170538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5prvbL4qVVxyUau/62tjpzq6Xjuv+m8EjzcAcEKEz4=;
        b=qwhGOK8obKpiNBlddufroX0e23KZCaWQtmZ1oVdegSPrOq6t6qWrWLtPtdHET33VQR
         ATQKXEczez/3Um2ZAkmYMzLPiPW9LsBAqJEvlwSY7yE3xtdpEN9QJyhvzz5rvxNos8iA
         aPzuL5bLAR37rTR5v2S3IDfC6TViPg+gsTcaATUmrUfgb3Waam8HK69h6TcvqXLcowkS
         f4RpBYw/7TC9lr2CAYSrYwGVzCJtbk+MYhCmKZxE9XiNeM+c/omcL1rwddvkQiChYLpP
         JBByXO7ZsAHFRFiKYWxJ9b3oQEWElo8Sx7/vNe0nrgSH1dT/jlu66foXwfEoEIJSEV7G
         6umg==
X-Forwarded-Encrypted: i=1; AJvYcCXUNX9CZGtydpna3OmZ2brGsuRazbdZRUt7I6rgu/kOAZF/s8vJDRwh2MTHx4/aS2nLDHHe3djD2boF@vger.kernel.org
X-Gm-Message-State: AOJu0YxGybd0NC+va4pxXaix4re3EuZQGi996SCV9FKmyVQMkOvM9fyD
	dMmNdHY9JjXIyYzIq0WJQENRUgIt5bfbRINyPDR5io5FE5YUDckhb1e7BYBr7gY=
X-Gm-Gg: ASbGnctOYHX5m9UDUFsTSu6qEKTM/n/ascLovcxrXSpc6W3Y/+qR1wEqA85hOpOHvdM
	TnL+AoZdntFDomnzECYGa2i6iLRLMsg1OiUjSog4z5OahdHgWknAwmuwkjCW+NpXyOB/yjONU35
	skFXBIeRnh2xXAt2bD6PY0E2F77yKNuE4vRE0wGuB902ItuUIq6XekQh1AjPf3q85sfPUgt7MTT
	7jgssPiE0matsGa85II6Q9FJM0JlqrOPTVqtAW06keMYMNVP8XFzD0Ta5CnyljqZHr+jC1m2s4y
	45uq9R+adr+N9Qj+sjZ4oc/mi32c8nM9UeIF
X-Google-Smtp-Source: AGHT+IGYRhZnLXNmLM+FMzz0ZpamPsZkQchJSYMBUnIzcz5KdEvg8k8tQLs0cvWfBZIvHDrkMU6Dow==
X-Received: by 2002:a05:6512:3ca8:b0:542:2a20:e694 with SMTP id 2adb3069b0e04-5422a20e73dmr10688219e87.20.1735565737587;
        Mon, 30 Dec 2024 05:35:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5423e0662e3sm1661166e87.188.2024.12.30.05.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 05:35:36 -0800 (PST)
Date: Mon, 30 Dec 2024 15:35:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 13/17] drm/bridge: analogix_dp: Convert
 &analogix_dp_device.aux into a pointer
Message-ID: <e52pbjnusvuoqiyoorjr5msrfmgeqs2jt5sk6zcesvzy7cszzk@fzrtpsjoklgu>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-14-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-14-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:09PM +0800, Damon Ding wrote:
> With the previous patch related to the support of getting panel from
> the DP AUX bus, the &analogix_dp_device.aux can be obtained from the
> &analogix_dp_plat_data.aux.
> 
> Furthermore, the assignment of &analogix_dp_plat_data.connector is
> intended to obtain the pointer of struct analogix_dp_device within the
> analogix_dpaux_transfer() function.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 92 ++++++++++---------
>  .../drm/bridge/analogix/analogix_dp_core.h    |  2 +-
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  2 +-
>  3 files changed, 50 insertions(+), 46 deletions(-)
> 

[...]

> @@ -1127,6 +1128,7 @@ static int analogix_dp_bridge_attach(struct drm_bridge *bridge,
>  
>  	if (!dp->plat_data->skip_connector) {
>  		connector = &dp->connector;
> +		dp->plat_data->connector = &dp->connector;
>  		connector->polled = DRM_CONNECTOR_POLL_HPD;
>  
>  		ret = drm_connector_init(dp->drm_dev, connector,
> @@ -1535,7 +1537,9 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>  static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>  				       struct drm_dp_aux_msg *msg)
>  {
> -	struct analogix_dp_device *dp = to_dp(aux);
> +	struct analogix_dp_plat_data *plat_data = to_pdata(aux);
> +	struct drm_connector *connector = plat_data->connector;
> +	struct analogix_dp_device *dp = to_dp(connector);

I see that Analogix DP driver doesn't support
DRM_BRIDGE_ATTACH_NO_CONNECTOR, but at the same time I don't think this
is the step in the right direction. Instead please keep the AUX bus on
the Analogix side and add an API to go from struct drm_dp_aux to struct
analogix_dp_plat_data. Then your done_probing() callback can use that
function.

>  	int ret;
>  
>  	pm_runtime_get_sync(dp->dev);
> 

-- 
With best wishes
Dmitry

