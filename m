Return-Path: <devicetree+bounces-155257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 795C2A56099
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 07:05:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E1AD3B4330
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF9E0190482;
	Fri,  7 Mar 2025 06:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wvauGQrJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7BE18DB3A
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 06:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741327521; cv=none; b=YliM0WhM5WW8Fzc9+odCpgJhHGr2ekgp8Mc2+T8p3C0fKmPnjrxYbtEyi3jBtB+LIlbzbMq1aQLK1DgOjaEp48cxLcyNXj1vnrjPVIPjSdzb0xc0r+vQdbBUHJo5tJjUpldBA9byvJMFZA4Rz7grYAXhT4qubfkpFRN3NaMq+WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741327521; c=relaxed/simple;
	bh=wnRTivR2CEwuOfE5uAItz46Kr2oPXmzc94dqGmAFEUs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H91p2hV9L0dgfESHnsniqSHs3NeMooHoVec04aySJo3b6xDWzlJkoiUlQ7hABr2VgOKgd8qVIm9PU0fBnQYgpeLoy4ba/YgbTZKy/5veeOgZjUU89S8SlM2FIe42qUM8MxPbvRFAGovPFk01ZGpdoKiimgliVBUiC/yxuMGRLq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wvauGQrJ; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30bef9b04adso11019941fa.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 22:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741327518; x=1741932318; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oQxWHUkgzXFo3DC5BqgaBEvfW4iqfmaghFAvNLTV6rc=;
        b=wvauGQrJ4rU/FVMMdlEomzwvBzApL+4fs+wD6EzRk3qaD0jbXLM0rGDTSYM1I9V8Pz
         7juAKr3MMNkEtXjW7PhL03Q/B3CkSFxtTDlN8Rb8OhLl5zAJN/Luxd14zxt94GYgtQ2a
         0Vw/ylsx/6heGIOaREeUG8eha0WeykYkPxQgN9vOZKWO++NNOzTV2MQoi0ZVey/KTzMB
         6lxqWhbs+C6iEBhPhCsZ1eISRbrr/4AXgCA9G99u0Az+H1D3oXTIpdM5L8asRowDL5x+
         /cknD6jsv6e2WXnyMwGbA/gsbXmt2hze02ODj1nWl2lDOrfHWPnzvRFWXBHDKtT+mUkD
         OuSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741327518; x=1741932318;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQxWHUkgzXFo3DC5BqgaBEvfW4iqfmaghFAvNLTV6rc=;
        b=KHDEhGyfjOf3SB6v8u8pTApGCFYqAePIoiwVcFpRS9vYr05C8Q7FV6DdDYhm/I9TKB
         ycfdVpRfMY+EK/MiODOtO5VA0t9JnJIgK8hCCzqFLWuyqNvq9zNZlfRpAD1lAHWf9/dU
         aptQ5vDsTJZAE2v34QwV1DY5PJGayFMAAQ3oRYmZh/VII3qp2pM4cglv/ILo8XsLMjsr
         Jp+UvuP/FjKIq8dfiPNToMSGoCR4WbcnHJJcy9XjnAsaYLrk3kMD7n9u8AXW/GsO2Lrl
         6hRMo5kpf2tRGEzVoapcfjScYH2Yk5hLZT1LeyfnZCClv6f0D/ytrbf0I1Q2WqOb30U4
         1NFA==
X-Forwarded-Encrypted: i=1; AJvYcCWxSgf+sII+6rlD2D07WP42zLPwknGk641q84knB5x7pHMrHwEaW4Q3naq6kc+n8pReQ9f+Spbpmwiy@vger.kernel.org
X-Gm-Message-State: AOJu0YyGGcq6jjuzZ7WLAwZYa/MFH5JAyhun9xZnAi5cR3WSWIz7W0zx
	QjRncjJE3qrsDc/z3pZZ2T5xrkAmQTPsyMbpX6YyTtfmE00WluDz8BV39RrtSf8=
X-Gm-Gg: ASbGnctjav+3uho8bK62+Sp9oKUVDR5E5P6imgXZcO6ySt1oNHcfEaA+9fbaqgASwZn
	OmpChD4Ob+t6iusJHmieYR4AWxiptQWBMrV9N9ZHhZDRj0naxDSIznjm+Stnb6PlnwrRZ7q4KYL
	SaWzjiX4esjmdvPbZMmputH3/n5l8o7a92HuwTfCPdXb7FTa7UBWEwtT7law8WKwxype0wErJmb
	9nDplRqCWPAYJP9Xgr7EMx72whdwAs3c7ykbFw+rd6rHFwk98KHcyEwWisDolbanpzRjO54rIJe
	ArEkBeBRY2hjuW4lCBlM52b1DLseLG2y7IesV0GNy2r0pLq7oZvzZr9i4vTj5dvtaoBmRxXwlGh
	nsYZjCabSV8pcL9l+Px1QvEw1
X-Google-Smtp-Source: AGHT+IGS2APQvJItHsZgLmFWo8W33oL6dWOXuTifkVI2zFj+1cGRJhJN/teqyZE7pKDUwjLhiguAyQ==
X-Received: by 2002:a2e:3803:0:b0:30b:d073:9e7d with SMTP id 38308e7fff4ca-30bf4665dfemr5006821fa.37.1741327517913;
        Thu, 06 Mar 2025 22:05:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be98d08c5sm4360741fa.11.2025.03.06.22.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 22:05:16 -0800 (PST)
Date: Fri, 7 Mar 2025 08:05:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "A. Zini" <alessandro.zini@siemens.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, 
	Andrej Picej <andrej.picej@norik.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/bridge: ti-sn65dsi83: add h/vsync-disable support
Message-ID: <tzrdtqpim2srjl3dihjdyejrwunirq7mbwngyqi3avdtympkjx@2kqsg562fcke>
References: <20250306091133.46888-1-alessandro.zini@siemens.com>
 <20250306091133.46888-3-alessandro.zini@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306091133.46888-3-alessandro.zini@siemens.com>

On Thu, Mar 06, 2025 at 10:11:33AM +0100, A. Zini wrote:
> From: Alessandro Zini <alessandro.zini@siemens.com>
> 
> The h/vsync-disable properties are used to control whether to use or
> not h/vsync signals, by configuring their pulse width to zero.
> 
> This is required on some panels which are driven in DE-only mode but do
> not ignore sync packets, and instead require them to be low-voltage level
> or ground.

If this is required by 'some panels', then it should be a property of
the panel, not by the bridge itself. Can the panel return the mode with
hsync_end = hsync_start and vsync_enc = vsync_start?

> 
> Signed-off-by: Alessandro Zini <alessandro.zini@siemens.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> index 95563aa1b450d..c94ea92159402 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -164,6 +164,8 @@ struct sn65dsi83 {
>  	int				irq;
>  	struct delayed_work		monitor_work;
>  	struct work_struct		reset_work;
> +	bool				hsync_disable;
> +	bool				vsync_disable;
>  };
>  
>  static const struct regmap_range sn65dsi83_readable_ranges[] = {
> @@ -604,10 +606,12 @@ static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
>  	/* 32 + 1 pixel clock to ensure proper operation */
>  	le16val = cpu_to_le16(32 + 1);
>  	regmap_bulk_write(ctx->regmap, REG_VID_CHA_SYNC_DELAY_LOW, &le16val, 2);
> -	le16val = cpu_to_le16(mode->hsync_end - mode->hsync_start);
> +	le16val = cpu_to_le16(ctx->hsync_disable ?
> +		0 : mode->hsync_end - mode->hsync_start);
>  	regmap_bulk_write(ctx->regmap, REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW,
>  			  &le16val, 2);
> -	le16val = cpu_to_le16(mode->vsync_end - mode->vsync_start);
> +	le16val = cpu_to_le16(ctx->vsync_disable ?
> +		0 : mode->vsync_end - mode->vsync_start);
>  	regmap_bulk_write(ctx->regmap, REG_VID_CHA_VSYNC_PULSE_WIDTH_LOW,
>  			  &le16val, 2);
>  	regmap_write(ctx->regmap, REG_VID_CHA_HORIZONTAL_BACK_PORCH,
> @@ -867,6 +871,14 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
>  		}
>  	}
>  
> +	ctx->hsync_disable = false;
> +	if (of_property_present(dev->of_node, "hsync-disable"))
> +		ctx->hsync_disable = true;
> +
> +	ctx->vsync_disable = false;
> +	if (of_property_present(dev->of_node, "vsync-disable"))
> +		ctx->vsync_disable = true;
> +
>  	panel_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 2, 0);
>  	if (IS_ERR(panel_bridge))
>  		return dev_err_probe(dev, PTR_ERR(panel_bridge), "Failed to get panel bridge\n");
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

