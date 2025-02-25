Return-Path: <devicetree+bounces-151146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 399DCA44968
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40FAC3A44C0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3BE519A298;
	Tue, 25 Feb 2025 17:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DJATxHVj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1DB1891AA
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740506310; cv=none; b=bSZvF7ltf7Rf1Uw4MZ2Bpc7K3L7WmWp3S+KlZaP9xbRhRZiIZP0O04xSh3PY+bUAHsKdpzS9sKdob7iHeC06TlISAyR+XVEcZ6QD8ow5+eY//naX2QqpFlMEMxyKd4GnJ4hVRv22UloXVV4UgppKT8aLlibP76hs2xAv/4RuYPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740506310; c=relaxed/simple;
	bh=MuemuIVSx7MSh9O/nBP6FH5Y+T4FTJXhoSvtuThWmHA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VVBesAJPi6zHmCNFE/CmWywgbUX7E/WkLaE6EvXpeIlcqM+HbfLyvEWSSf0Ukl3NZCVew/Z7SsVr+jGYi/h+J7ecyDGyxaUlrMJeo8W7vY7xagiIx36MNDrAYZdnaW6KW54QuKDufIxR08rI37L0ApepyEgL4nWvsIpDo4MvIYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DJATxHVj; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54529e15643so41500e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740506307; x=1741111107; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1kr6d/FQy1Jy2g1Mw9U1HLC2PC/Dwa2yo10n3xo8EDY=;
        b=DJATxHVjEoeXm/sAfvAG5zo/FX4CpMHfe+IXZ2c+2YJgOI7BcPe6JRm/4dR+B6Hi68
         AQaBUclztLSmFDySy2GECdwXnQkO3n1sNRbEs06jUzGBEjGBezmKGSeV/DUoXbmSF1h/
         wwnD89CnIP/iAx5UucL0YZV+KV7bKnk1s2ifolNv1SYGPPpw/MrWMTiYzu2Tmwdh1ml6
         sE3rlreRLyEoUR1zYdldHop38PYbQitpRSCgRfpq42zUHcz32bEQ5Qm3izspNlxmABLv
         bnF4Tw3vWSZltLQmnRspWzwgIHIipdDEo/quQp3jyHv9wGORBmlATmiIc03bB7BFWVxT
         adYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740506307; x=1741111107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1kr6d/FQy1Jy2g1Mw9U1HLC2PC/Dwa2yo10n3xo8EDY=;
        b=nBqTdvOmNwyUs45475ksrGJN752es3BEsltQ41pkkloR7H0Fv+26H1A+e6bt7Y603G
         5BElNVtNASRb9oQ3V+zDXJvSKEMk2Ccff7bEvkQG6ZWoRO6aWbsagkljOp5HgXPB7FEn
         /wJij8HGSYoovQxg/cbiouU42vyhI8N/DQEe8jPekNicJgUZbCD1M9tfMFUmt05FMEZd
         1WTdksyB57Lz156Yq0BBVrbw66cD3jiHLpjexDB+Mz4LFlshuTiD8jiRYEC+Y6Ax4Gy4
         QjZRDyUTJDC+YRX3pJ/iOd0O67YT5tHnWQ1nJ/gtR+cInS6uwbdlt8O/N6UWGtrX9BdW
         CjmA==
X-Forwarded-Encrypted: i=1; AJvYcCWueHfihMgI39v/CEPHmSLdMs5v0xFfubTkx2ppshf6ahre+gsEy9NVqS6aB2pQl9/q7Nxc6oPoVLwI@vger.kernel.org
X-Gm-Message-State: AOJu0YzgEGcW/fgxXNpaSVXeXg9vhBS27wHl1X8yfeDuwlZ7j3+CBso6
	nriGm8moc8YUufvqwyxoETIU8LiKNFvKjArXR0D/qNI29F0yvpykoK+FsHjy8R0=
X-Gm-Gg: ASbGncsSYgCymX4nnDqMEa2xNo76M0nPR+colHfNg+wIBZfHIZxTU6wDNlnKnX4udKb
	QqlVfoZ0D0tCCVnxc9S6OeKrl8xUmRFszwQM7DG2/J9afjIP/gVS6gZLV1AowLuXRLTmYgn0nwG
	H0UNHFXxSA3Hmig7QbEn+/Wd/dhmrlpn8AlQCY80ylXT6OrWLsu5MdWiKSL2k5q65CmmBveka6i
	a9L4DYMTlfhemw2EwQ9STqxaI9H0/+1Uva3RyPnRqMM6i6cAiacIL5xc7KfJQv6AXS231/y1GwN
	9OhzNffjV2QcCWzwIR0gP079N53RTBycHafORUDDjCmKaz+uFAnY0In3CW5tIozJe1Db6mZYx9r
	cqZVL0g==
X-Google-Smtp-Source: AGHT+IGkHEvgIIfbZAqOgHLpKus9PcVasPLlY5V6IFk/rGEQb+8IEPE9UGG2WuATzUd3x9e1FtOaEw==
X-Received: by 2002:a05:6512:3ba1:b0:545:31d8:f384 with SMTP id 2adb3069b0e04-546e418d42emr8418369e87.10.1740506306966;
        Tue, 25 Feb 2025 09:58:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514f4ce7sm230452e87.159.2025.02.25.09.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 09:58:26 -0800 (PST)
Date: Tue, 25 Feb 2025 19:58:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org, 
	andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org, 
	konradybcio@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com, 
	quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 10/11] drm/bridge: anx7625: update bridge_ops and sink
 detect logic
Message-ID: <ne35ljkudi5jta2cby7fgjzqsd5sjpwcjpwhv6kmedq6nomho5@txynsflvtc6f>
References: <20250225121824.3869719-1-quic_amakhija@quicinc.com>
 <20250225121824.3869719-11-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225121824.3869719-11-quic_amakhija@quicinc.com>

On Tue, Feb 25, 2025 at 05:48:23PM +0530, Ayushi Makhija wrote:
> The anx7625_link_bridge() checks if a device is a not a panel
> bridge and add DRM_BRIDGE_OP_HPD and DRM_BRIDGE_OP_DETECT to
> the bridge operations. However, on port 1 of the anx7625
> bridge, any device added is always treated as a panel
> bridge, preventing connector_detect function from being
> called. To resolve this, instead of just checking if it is a
> panel bridge, we should verify the type of panel bridge
> whether it is a DisplayPort or eDP panel. If the panel
> bridge is of the DisplayPort type, we should add
> DRM_BRIDGE_OP_HPD or DRM_BRIDGE_OP_DETECT to the bridge
> operations.
> 
> In the anx7625_sink_detect(), the device is checked to see
> if it is a panel bridge, and it always sends a "connected"
> status to the connector. When adding the DP port on port 1 of the
> anx7625, it incorrectly treats it as a panel bridge and sends an
> always "connected" status. Instead of checking the status on the
> panel bridge, it's better to check the hpd_status for connectors
> like DisplayPort. This way, it verifies the hpd_status variable
> before sending the status to the connector.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> index d2655bf46842..9b6303267924 100644
> --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> @@ -1814,9 +1814,6 @@ static enum drm_connector_status anx7625_sink_detect(struct anx7625_data *ctx)
>  
>  	DRM_DEV_DEBUG_DRIVER(dev, "sink detect\n");
>  
> -	if (ctx->pdata.panel_bridge)
> -		return connector_status_connected;
> -
>  	return ctx->hpd_status ? connector_status_connected :
>  				     connector_status_disconnected;
>  }
> @@ -2596,9 +2593,10 @@ static int anx7625_link_bridge(struct drm_dp_aux *aux)
>  	platform->bridge.of_node = dev->of_node;
>  	if (!anx7625_of_panel_on_aux_bus(dev))
>  		platform->bridge.ops |= DRM_BRIDGE_OP_EDID;
> -	if (!platform->pdata.panel_bridge)
> -		platform->bridge.ops |= DRM_BRIDGE_OP_HPD |
> -					DRM_BRIDGE_OP_DETECT;
> +	if (!platform->pdata.panel_bridge ||
> +	    platform->pdata.panel_bridge->type == DRM_MODE_CONNECTOR_DisplayPort) {

This is incorrect, because there can be other kinds of bridges in the DP
chain. I think it's better to check for !eDP instead.

> +		platform->bridge.ops |= DRM_BRIDGE_OP_HPD | DRM_BRIDGE_OP_DETECT;
> +	}
>  	platform->bridge.type = platform->pdata.panel_bridge ?
>  				    DRM_MODE_CONNECTOR_eDP :
>  				    DRM_MODE_CONNECTOR_DisplayPort;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

