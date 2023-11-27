Return-Path: <devicetree+bounces-19277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2088B7FA4BB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:30:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D06E7281652
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3DC328BA;
	Mon, 27 Nov 2023 15:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 559501A1;
	Mon, 27 Nov 2023 07:29:56 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7dYQ-0003UD-D8; Mon, 27 Nov 2023 16:29:46 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 s.hauer@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 10/12] drm/rockchip: vop2: Add support for rk3588
Date: Mon, 27 Nov 2023 16:29:45 +0100
Message-ID: <4788319.uZKlY2gecq@diego>
In-Reply-To: <20231122125544.3454918-1-andyshrk@163.com>
References:
 <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125544.3454918-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andy,

Am Mittwoch, 22. November 2023, 13:55:44 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> VOP2 on rk3588:
> 
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> 4 4K Esmart windows with line RGB/YUV support
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - add rk3588_ prefix for functions which are rk3588 only
> - make some calculation as fixed value and keep calculation formula as
>   comment
> - check return value for some cru calculation functions.
> - check return value for syscon_regmap_lookup_by_phandle
> - add NV20/NV30 for esmart plane
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 381 ++++++++++++++++++-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  66 ++++
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 221 +++++++++++
>  3 files changed, 660 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 4bcc405bcf11..9eecbe1f71f9 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c

> @@ -271,9 +282,12 @@ static bool vop2_cluster_window(const struct vop2_win *win)
>  static void vop2_cfg_done(struct vop2_video_port *vp)
>  {
>  	struct vop2 *vop2 = vp->vop2;
> +	u32 val;
> +
> +	val = BIT(vp->id) | (BIT(vp->id) << 16) |
> +		RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN;
>  
> -	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE,
> -			BIT(vp->id) | RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN);
> +	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE, val);

I don't fully understand that code:
(1) the write mask is also present on the rk3568, so should this change
    be a separate patch with a fixes tag?
(2) RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN does not contain the part for
    the write-mask

	#define RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN     BIT(15)

    why is this working then?

>  }
>  
>  static void vop2_win_disable(struct vop2_win *win)

[...]

> @@ -1298,7 +1346,11 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 1);
>  		vop2_win_write(win, VOP2_WIN_AFBC_FORMAT, afbc_format);
>  		vop2_win_write(win, VOP2_WIN_AFBC_UV_SWAP, uv_swap);
> -		vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
> +		if (vop2->data->soc_id == 3566 || vop2->data->soc_id == 3568)
> +			vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
> +		else
> +			vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 1);
> +

I think this at least warrants a comment, what is happening here. Also,
can you already see how future vop2-users are behaving - aka are all new
socs in the "else" part of the conditional, or would a switch-case better
represent future socs?


>  		vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 0);
>  		transform_offset = vop2_afbc_transform_offset(pstate, half_block_en);
>  		vop2_win_write(win, VOP2_WIN_AFBC_HDR_PTR, yrgb_mst);


> @@ -1627,9 +1937,17 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>  	drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mask) {
>  		struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
>  
> -		rk3568_set_intf_mux(vp, rkencoder->crtc_endpoint_id, polflags);
> +		/*
> +		 * for drive a high resolution(4KP120, 8K), vop on rk3588/rk3576 need
> +		 * process multi(1/2/4/8) pixels per cycle, so the dclk feed by the
> +		 * system cru may be the 1/2 or 1/4 of mode->clock.
> +		 */
> +		clock = vop2_set_intf_mux(vp, rkencoder->crtc_endpoint_id, polflags);
>  	}
>  
> +	if (!clock)
> +		return;
> +

hmm, shouldn't the check for the validity of a mode happen before
atomic_enable is run? So this shouldn't error out in the middle of the
function?


>  	if (vcstate->output_mode == ROCKCHIP_OUT_MODE_AAAA &&
>  	    !(vp_data->feature & VOP_FEATURE_OUTPUT_10BIT))
>  		out_mode = ROCKCHIP_OUT_MODE_P888;


Thanks
Heiko



