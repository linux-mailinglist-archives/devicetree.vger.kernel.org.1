Return-Path: <devicetree+bounces-153107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4E6A4B443
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 20:10:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B1603B0E54
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 19:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA0E71E9B14;
	Sun,  2 Mar 2025 19:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="vzRlOXqs"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E242E630;
	Sun,  2 Mar 2025 19:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740942601; cv=none; b=FnnvXPmO/fCbFXNxw+g9dDjJ/q+T8M5DktZvZvuVp5rEWin19P3zg5KbtARnCYFBL5agGwQe89P8+kT5LBX4PV3PquNtd46B1VQSzhKOaqLiC1LQ952akO881PdBOKQg/nNwZGsbRB8WhzIb1g7W4dsxisHevwbb6+t7U0EhXTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740942601; c=relaxed/simple;
	bh=goHEOgt6VKQLca6XUQdBBoD0f7uZKf9N8C9Pj+hERok=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GB9o5wV6NIRaGvpfsHwpZ8KNWcRNo4EkBv9amGTxvCmb0ez9e6Tb8CDElhrwe5wF5R3PrfLzzVmX9pwimLWspdH5nfWoRQxyHq5dl7yL4OkSEEtUf2TYwk9cT4/WAkzJDs1KB8Fg+J7u2XYJ9iRCXAqYL/+mDa50wzZteoBytcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=vzRlOXqs; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1uDnGle22h4BGQTP/aXxCDgxelViDKMg5h+i1dNf/tU=; b=vzRlOXqsyFZrCrhDIO02maxr2m
	omB8tmfEYAsY04MiP87NnpI1TbiyyV8E1x7FLNVfzrIs2UYDSxfpr70QEEzywvjPSTkYLsreROz68
	XLrzItSGERbXNB0qtnKy1nBVCzlBXMDZiBfjnZLT58tw05VyrCa+8BIYd9JXSTFFL456CI2L73fjq
	Jjl5VbLCDLwxoApqRdX/I+Jtq+PT+qGhFNuqNhHYuy5znQM0HnGFPw9gihS7h6HJGdRX0O7YDhqyi
	nfc2TBbQV7JDAIushfCoPTm+0M4oCpnA+01NMcF/KUYAtym3kGlLw0lXrtssdfm5tZExuCYRSRkXr
	pBz1nfFg==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1toohF-0004vx-Im; Sun, 02 Mar 2025 20:09:53 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, krzk+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 derek.foreman@collabora.com, detlev.casanova@collabora.com,
 daniel@fooishbar.org, robh@kernel.org, sebastian.reichel@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v15 13/13] drm/rockchip: vop2: Add support for rk3576
Date: Sun, 02 Mar 2025 20:09:52 +0100
Message-ID: <2764042.X9hSmTKtgW@diego>
In-Reply-To: <20250218112901.34564-1-andyshrk@163.com>
References:
 <20250218112744.34433-1-andyshrk@163.com>
 <20250218112901.34564-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Hi Andy,

Am Dienstag, 18. Februar 2025, 12:28:58 MEZ schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> VOP2 on rk3576:
> Three video ports:
> VP0 Max 4096x2160
> VP1 Max 2560x1600
> VP2 Max 1920x1080
> 
> 2 4K Cluster windows with AFBC/RFBC, line RGB and YUV
> 4 Esmart windows with line RGB/YUV support:
> Esmart0/1: 4K
> Esmart2/3: 2k, or worked together as a single 4K plane at shared
> line buffer mode.
> 
> Compared to the previous VOP, another difference is that each VP
> has its own independent vsync interrupt number.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net> # on RK3568
> Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

some minor style things, but overall looks really good


> @@ -2665,6 +2721,32 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
>  	if (ret)
>  		return ret;
>  
> +	if (vop2->version >= VOP_VERSION_RK3576) {
> +		struct drm_crtc *crtc;
> +
> +		drm_for_each_crtc(crtc, drm) {
> +			struct vop2_video_port *vp = to_vop2_video_port(crtc);
> +			int vp_irq;
> +			const char *irq_name = devm_kasprintf(dev, GFP_KERNEL, "vp%d", vp->id);
> +
> +			if (!irq_name)
> +				return -ENOMEM;
> +
> +			vp_irq = platform_get_irq_byname(pdev, irq_name);
> +			if (vp_irq < 0) {
> +				DRM_DEV_ERROR(dev, "cannot find irq for vop2 vp%d\n", vp->id);

return dev_err_probe

> +				return vp_irq;
> +			}
> +
> +			ret = devm_request_irq(dev, vp_irq, rk3576_vp_isr, IRQF_SHARED, irq_name,
> +					       vp);
> +			if (ret) {
> +				DRM_DEV_ERROR(dev, "request irq for vop2 vp%d failed\n", vp->id);

return dev_err_probe

> +				return ret;
> +			}
> +		}
> +	}
> +
>  	ret = vop2_find_rgb_encoder(vop2);
>  	if (ret >= 0) {
>  		vop2->rgb = rockchip_rgb_init(dev, &vop2->vps[ret].crtc,


> +static void rk3576_vop2_setup_overlay(struct vop2_video_port *vp)
> +{
> +	struct vop2 *vop2 = vp->vop2;
> +	struct drm_crtc *crtc = &vp->crtc;
> +	struct drm_plane *plane;
> +
> +	vp->win_mask = 0;
> +
> +	drm_atomic_crtc_for_each_plane(plane, crtc) {
> +		struct vop2_win *win = to_vop2_win(plane);
> +
> +		win->delay = win->data->dly[VOP2_DLY_MODE_DEFAULT];
> +

nit: we probably don't need this empty line

> +		vp->win_mask |= BIT(win->data->phys_id);
> +
> +		if (vop2_cluster_window(win))
> +			vop2_setup_cluster_alpha(vop2, win);
> +	}
> +
> +	if (!vp->win_mask)
> +		return;
> +
> +	rk3576_vop2_setup_layer_mixer(vp);
> +	vop2_setup_alpha(vp);
> +	rk3576_vop2_setup_dly_for_windows(vp);
> +}


Heiko



