Return-Path: <devicetree+bounces-56563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0F6899C5D
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 14:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D1511C221B3
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 12:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7940E16C6BE;
	Fri,  5 Apr 2024 12:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="OzJOKNFi"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A1B16C6B7;
	Fri,  5 Apr 2024 12:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712318812; cv=none; b=gIuGYq0jfEZlTlIOp8ZavyP2Z9seLhuW1cVPTNQX+SprPegOQ/iHuoj1qQnJr9Z8LOtAW0tJVb6TwTkUtc7Tc9oIw+BqERTE7f4hRV44OYwWAa0CuUDq9flp+3L7vZcgVujH6+TiV9EptNoXaz9Mv5ViEORXhYMY/EijOgXxRFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712318812; c=relaxed/simple;
	bh=8udbtc3zbmiq/sV8nsHuH04X2jwirz+XbUgbxkncsxU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qcckco0F3Ydx7jLSvROBNmq6jiay4u+mSyJmxnqUDURiAqd6cxDjIfQmTfOzktJU0mCTKSox1kj7qSRoXGk3HkTgkaF5GuTlfvm93ElGcBhxS0OnkE64K4/7ht4oJE1x/Ky7sxmUtZtQidgQapY+/Nw8POF4YDgmzIcpHp4sFHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=OzJOKNFi; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [192.168.88.20] (91-154-34-181.elisa-laajakaista.fi [91.154.34.181])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D7D1F8E1;
	Fri,  5 Apr 2024 14:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1712318769;
	bh=8udbtc3zbmiq/sV8nsHuH04X2jwirz+XbUgbxkncsxU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OzJOKNFiXmMCqPsGl4NC1Hk/6/jFuH1paLdQ5qhv1urzKyWMsgPVlRNdPNMiAThtE
	 B3W/952ZOqopPtOFloFBqq5poU+mb//eAnVV6ig+VZiEF/3kInpe7DMDJSjPrRghZp
	 C8U5wP6hN65HwWYooVa9FqtZdgkiptQxNur1PYKY=
Message-ID: <8891d988-9646-45a0-8bd5-68814a3f08d3@ideasonboard.com>
Date: Fri, 5 Apr 2024 15:06:44 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/9] drm: xlnx: zynqmp_dpsub: Set layer mode during
 creation
To: Anatoliy Klymenko <anatoliy.klymenko@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michal Simek <michal.simek@amd.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20240321-dp-live-fmt-v3-0-d5090d796b7e@amd.com>
 <20240321-dp-live-fmt-v3-1-d5090d796b7e@amd.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Content-Language: en-US
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <20240321-dp-live-fmt-v3-1-d5090d796b7e@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/03/2024 22:43, Anatoliy Klymenko wrote:
> Set layer mode of operation (live or dma-based) during layer creation.
> 
> Each DPSUB layer mode of operation is defined by corresponding DT node port
> connection, so it is possible to assign it during layer object creation.
> Previously it was set in layer enable functions, although it is too late
> as setting layer format depends on layer mode, and should be done before
> given layer enabled.
> 
> Signed-off-by: Anatoliy Klymenko <anatoliy.klymenko@amd.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>   drivers/gpu/drm/xlnx/zynqmp_disp.c | 20 ++++++++++++++++----
>   drivers/gpu/drm/xlnx/zynqmp_disp.h | 13 +------------
>   drivers/gpu/drm/xlnx/zynqmp_dp.c   |  2 +-
>   drivers/gpu/drm/xlnx/zynqmp_kms.c  |  2 +-
>   4 files changed, 19 insertions(+), 18 deletions(-)

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

  Tomi

> diff --git a/drivers/gpu/drm/xlnx/zynqmp_disp.c b/drivers/gpu/drm/xlnx/zynqmp_disp.c
> index 8a39b3accce5..e6d26ef60e89 100644
> --- a/drivers/gpu/drm/xlnx/zynqmp_disp.c
> +++ b/drivers/gpu/drm/xlnx/zynqmp_disp.c
> @@ -64,6 +64,16 @@
>   
>   #define ZYNQMP_DISP_MAX_NUM_SUB_PLANES			3
>   
> +/**
> + * enum zynqmp_dpsub_layer_mode - Layer mode
> + * @ZYNQMP_DPSUB_LAYER_NONLIVE: non-live (memory) mode
> + * @ZYNQMP_DPSUB_LAYER_LIVE: live (stream) mode
> + */
> +enum zynqmp_dpsub_layer_mode {
> +	ZYNQMP_DPSUB_LAYER_NONLIVE,
> +	ZYNQMP_DPSUB_LAYER_LIVE,
> +};
> +
>   /**
>    * struct zynqmp_disp_format - Display subsystem format information
>    * @drm_fmt: DRM format (4CC)
> @@ -902,15 +912,12 @@ u32 *zynqmp_disp_layer_drm_formats(struct zynqmp_disp_layer *layer,
>   /**
>    * zynqmp_disp_layer_enable - Enable a layer
>    * @layer: The layer
> - * @mode: Operating mode of layer
>    *
>    * Enable the @layer in the audio/video buffer manager and the blender. DMA
>    * channels are started separately by zynqmp_disp_layer_update().
>    */
> -void zynqmp_disp_layer_enable(struct zynqmp_disp_layer *layer,
> -			      enum zynqmp_dpsub_layer_mode mode)
> +void zynqmp_disp_layer_enable(struct zynqmp_disp_layer *layer)
>   {
> -	layer->mode = mode;
>   	zynqmp_disp_avbuf_enable_video(layer->disp, layer);
>   	zynqmp_disp_blend_layer_enable(layer->disp, layer);
>   }
> @@ -1134,6 +1141,11 @@ static int zynqmp_disp_create_layers(struct zynqmp_disp *disp)
>   		layer->id = i;
>   		layer->disp = disp;
>   		layer->info = &layer_info[i];
> +		/* For now assume dpsub works in either live or non-live mode for both layers.
> +		 * Hybrid mode is not supported yet.
> +		 */
> +		layer->mode = disp->dpsub->dma_enabled ? ZYNQMP_DPSUB_LAYER_NONLIVE
> +						       : ZYNQMP_DPSUB_LAYER_LIVE;
>   
>   		ret = zynqmp_disp_layer_request_dma(disp, layer);
>   		if (ret)
> diff --git a/drivers/gpu/drm/xlnx/zynqmp_disp.h b/drivers/gpu/drm/xlnx/zynqmp_disp.h
> index 123cffac08be..9b8b202224d9 100644
> --- a/drivers/gpu/drm/xlnx/zynqmp_disp.h
> +++ b/drivers/gpu/drm/xlnx/zynqmp_disp.h
> @@ -42,16 +42,6 @@ enum zynqmp_dpsub_layer_id {
>   	ZYNQMP_DPSUB_LAYER_GFX,
>   };
>   
> -/**
> - * enum zynqmp_dpsub_layer_mode - Layer mode
> - * @ZYNQMP_DPSUB_LAYER_NONLIVE: non-live (memory) mode
> - * @ZYNQMP_DPSUB_LAYER_LIVE: live (stream) mode
> - */
> -enum zynqmp_dpsub_layer_mode {
> -	ZYNQMP_DPSUB_LAYER_NONLIVE,
> -	ZYNQMP_DPSUB_LAYER_LIVE,
> -};
> -
>   void zynqmp_disp_enable(struct zynqmp_disp *disp);
>   void zynqmp_disp_disable(struct zynqmp_disp *disp);
>   int zynqmp_disp_setup_clock(struct zynqmp_disp *disp,
> @@ -62,8 +52,7 @@ void zynqmp_disp_blend_set_global_alpha(struct zynqmp_disp *disp,
>   
>   u32 *zynqmp_disp_layer_drm_formats(struct zynqmp_disp_layer *layer,
>   				   unsigned int *num_formats);
> -void zynqmp_disp_layer_enable(struct zynqmp_disp_layer *layer,
> -			      enum zynqmp_dpsub_layer_mode mode);
> +void zynqmp_disp_layer_enable(struct zynqmp_disp_layer *layer);
>   void zynqmp_disp_layer_disable(struct zynqmp_disp_layer *layer);
>   void zynqmp_disp_layer_set_format(struct zynqmp_disp_layer *layer,
>   				  const struct drm_format_info *info);
> diff --git a/drivers/gpu/drm/xlnx/zynqmp_dp.c b/drivers/gpu/drm/xlnx/zynqmp_dp.c
> index 1846c4971fd8..04b6bcac3b07 100644
> --- a/drivers/gpu/drm/xlnx/zynqmp_dp.c
> +++ b/drivers/gpu/drm/xlnx/zynqmp_dp.c
> @@ -1295,7 +1295,7 @@ static void zynqmp_dp_disp_enable(struct zynqmp_dp *dp,
>   	/* TODO: Make the format configurable. */
>   	info = drm_format_info(DRM_FORMAT_YUV422);
>   	zynqmp_disp_layer_set_format(layer, info);
> -	zynqmp_disp_layer_enable(layer, ZYNQMP_DPSUB_LAYER_LIVE);
> +	zynqmp_disp_layer_enable(layer);
>   
>   	if (layer_id == ZYNQMP_DPSUB_LAYER_GFX)
>   		zynqmp_disp_blend_set_global_alpha(dp->dpsub->disp, true, 255);
> diff --git a/drivers/gpu/drm/xlnx/zynqmp_kms.c b/drivers/gpu/drm/xlnx/zynqmp_kms.c
> index db3bb4afbfc4..43bf416b33d5 100644
> --- a/drivers/gpu/drm/xlnx/zynqmp_kms.c
> +++ b/drivers/gpu/drm/xlnx/zynqmp_kms.c
> @@ -122,7 +122,7 @@ static void zynqmp_dpsub_plane_atomic_update(struct drm_plane *plane,
>   
>   	/* Enable or re-enable the plane if the format has changed. */
>   	if (format_changed)
> -		zynqmp_disp_layer_enable(layer, ZYNQMP_DPSUB_LAYER_NONLIVE);
> +		zynqmp_disp_layer_enable(layer);
>   }
>   
>   static const struct drm_plane_helper_funcs zynqmp_dpsub_plane_helper_funcs = {
> 


