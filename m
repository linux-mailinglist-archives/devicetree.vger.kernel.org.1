Return-Path: <devicetree+bounces-19239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE01C7FA1F6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:04:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8F3E28149B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E93F30F83;
	Mon, 27 Nov 2023 14:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AC194EF5
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 06:04:35 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDq-0006aQ-Qa; Mon, 27 Nov 2023 15:04:26 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDq-00BxON-Ad; Mon, 27 Nov 2023 15:04:26 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDq-0046wg-7w; Mon, 27 Nov 2023 15:04:26 +0100
Date: Mon, 27 Nov 2023 15:04:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com, chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 03/12] drm/rockchip: vop2: set half_block_en bit in
 all mode
Message-ID: <20231127140426.GD977968@pengutronix.de>
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125413.3454489-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122125413.3454489-1-andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Wed, Nov 22, 2023 at 08:54:13PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> At first we thought the half_block_en bit in AFBCD_CTRL register
> only work in afbc mode. But the fact is that it control the line
> buffer in all mode(afbc/tile/line), so we need configure it in
> all case.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
> 
> (no changes since v1)
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 25 ++++++++++++++------
>  1 file changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 57784d0a22a6..639dfebc6bd1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -521,6 +521,18 @@ static bool rockchip_vop2_mod_supported(struct drm_plane *plane, u32 format,
>  	return vop2_convert_afbc_format(format) >= 0;
>  }
>  
> +/*
> + * 0: Full mode, 16 lines for one tail
> + * 1: half block mode, 8 lines one tail
> + */
> +static bool vop2_half_block_enable(struct drm_plane_state *pstate)
> +{
> +	if (pstate->rotation & (DRM_MODE_ROTATE_270 | DRM_MODE_ROTATE_90))
> +		return false;
> +	else
> +		return true;
> +}
> +
>  static u32 vop2_afbc_transform_offset(struct drm_plane_state *pstate,
>  				      bool afbc_half_block_en)
>  {
> @@ -1144,6 +1156,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  	bool rotate_90 = pstate->rotation & DRM_MODE_ROTATE_90;
>  	struct rockchip_gem_object *rk_obj;
>  	unsigned long offset;
> +	bool half_block_en;
>  	bool afbc_en;
>  	dma_addr_t yrgb_mst;
>  	dma_addr_t uv_mst;
> @@ -1236,6 +1249,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  	dsp_info = (dsp_h - 1) << 16 | ((dsp_w - 1) & 0xffff);
>  
>  	format = vop2_convert_format(fb->format->format);
> +	half_block_en = vop2_half_block_enable(pstate);
>  
>  	drm_dbg(vop2->drm, "vp%d update %s[%dx%d->%dx%d@%dx%d] fmt[%p4cc_%s] addr[%pad]\n",
>  		vp->id, win->data->name, actual_w, actual_h, dsp_w, dsp_h,
> @@ -1243,6 +1257,9 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  		&fb->format->format,
>  		afbc_en ? "AFBC" : "", &yrgb_mst);
>  
> +	if (vop2_cluster_window(win))
> +		vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, half_block_en);
> +
>  	if (afbc_en) {
>  		u32 stride;
>  
> @@ -1283,13 +1300,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  		vop2_win_write(win, VOP2_WIN_AFBC_UV_SWAP, uv_swap);
>  		vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
>  		vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 0);
> -		if (pstate->rotation & (DRM_MODE_ROTATE_270 | DRM_MODE_ROTATE_90)) {
> -			vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, 0);
> -			transform_offset = vop2_afbc_transform_offset(pstate, false);
> -		} else {
> -			vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, 1);
> -			transform_offset = vop2_afbc_transform_offset(pstate, true);
> -		}
> +		transform_offset = vop2_afbc_transform_offset(pstate, half_block_en);
>  		vop2_win_write(win, VOP2_WIN_AFBC_HDR_PTR, yrgb_mst);
>  		vop2_win_write(win, VOP2_WIN_AFBC_PIC_SIZE, act_info);
>  		vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, transform_offset);
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

