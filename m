Return-Path: <devicetree+bounces-130257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8409EE65D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21CAC16078E
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 12:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCAA211A1E;
	Thu, 12 Dec 2024 12:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="gy2FgI5l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0623211719
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 12:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734005427; cv=none; b=Cmzar2+Q9EwJm2GrTjytBkkkVMGy5evtRLa68RlSh9DCRvRZldaaZwFudOL70cNJjbIqO28d/vBSRPfXdb5M3Ss9d12/g2oFYoT4TeT+m2kW86YUsW6wugq9nTK0lCtZtM6PBER0z1ROqSlySIR5FrNvhtEuX8hT4s+fzRjcoPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734005427; c=relaxed/simple;
	bh=AMW/smttD5DM+TEyVgjK/6RSodpY1Y8V3+XGCUxRgO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M6wrrJzsYD4vro9Quf8ihrRsd6CUozXGybExBucvtZdRNy0hNBZ1XAEGCMQm2xLFjBNBRwITFXcFxHDKtiHg2WMPqYJTQm7n5/b8HgR/6KzAu0n/iWscLuJy2cSc6+u1qZVWle1dW38F0SYl4ioOs9qxBZ7zsOUXt+38biavzuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=gy2FgI5l; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 513A51047DC21;
	Thu, 12 Dec 2024 13:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1734005422;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z5uxgXWeF42zSM0+xNA+3NBRH5J4QrQYZwCAA7BDALo=;
	b=gy2FgI5lpHsWE3+7vNVtxxA5uAGq8cXGIdI5oKNzA5t3PLoTd42ckYDJaq46Wcyc6B3sAh
	qL1fifSXfWtMbwMdqjxS4nf+ehx+0l+ZyzHr4gx2biYq4C5osLSwDtHAHBRxTCZFEOY4iZ
	pzY+e+2yo03CFBn0w+jcd/zup3yjMqUhDarZ3h8/iwu47JSnOWuUN3aZdqLj2/o22CJyFB
	QM8xH1eKR6DbeC1jclRJRQfQi7ntgUrcShNePdgHb5jTNih4q2so6Twp+kdKzEXKAl+46k
	SAtrmyeWRYae1JwqEiAGl8V8p45aWOpzeg0MDXbUhR38aYZUW9EVmAX6vDx4aQ==
Message-ID: <1d10a13c-edc5-4efc-8de5-95fe08b11cf6@denx.de>
Date: Thu, 12 Dec 2024 13:09:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/panel: simple: add Multi-Inno Technology
 MI0700A2T-30
To: dri-devel@lists.freedesktop.org
Cc: Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org
References: <20241125013413.160725-1-marex@denx.de>
 <20241125013413.160725-2-marex@denx.de>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20241125013413.160725-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3

On 11/25/24 2:33 AM, Marek Vasut wrote:
> Add Multi-Inno Technology MI0700A2T-30 7" 800x480 LVDS panel support.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 30 ++++++++++++++++++++++++++++
>   1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 06381c6282097..4e2582e1a2bd1 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3222,6 +3222,33 @@ static const struct panel_desc mitsubishi_aa084xe01 = {
>   	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
>   };
>   
> +static const struct display_timing multi_inno_mi0700a2t_30_timing = {
> +	.pixelclock = { 26400000, 33000000, 46800000 },
> +	.hactive = { 800, 800, 800 },
> +	.hfront_porch = { 16, 204, 354 },
> +	.hback_porch = { 46, 46, 46 },
> +	.hsync_len = { 1, 6, 40 },
> +	.vactive = { 480, 480, 480 },
> +	.vfront_porch = { 7, 22, 147 },
> +	.vback_porch = { 23, 23, 23 },
> +	.vsync_len = { 1, 3, 20 },
> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> +		 DISPLAY_FLAGS_DE_HIGH,
> +};
> +
> +static const struct panel_desc multi_inno_mi0700a2t_30 = {
> +	.timings = &multi_inno_mi0700a2t_30_timing,
> +	.num_timings = 1,
> +	.bpc = 6,
> +	.size = {
> +		.width = 153,
> +		.height = 92,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct display_timing multi_inno_mi0700s4t_6_timing = {
>   	.pixelclock = { 29000000, 33000000, 38000000 },
>   	.hactive = { 800, 800, 800 },
> @@ -4905,6 +4932,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "mitsubishi,aa084xe01",
>   		.data = &mitsubishi_aa084xe01,
> +	}, {
> +		.compatible = "multi-inno,mi0700a2t-30",
> +		.data = &multi_inno_mi0700a2t_30,
>   	}, {
>   		.compatible = "multi-inno,mi0700s4t-6",
>   		.data = &multi_inno_mi0700s4t_6,

Anything I need to do /wrt this patch ?

