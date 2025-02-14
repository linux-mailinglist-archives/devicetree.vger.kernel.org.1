Return-Path: <devicetree+bounces-146852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FA8A36839
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 23:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 327D83AE8BC
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 22:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD8D31FC0EB;
	Fri, 14 Feb 2025 22:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="J+H356ae"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E8F1953A9;
	Fri, 14 Feb 2025 22:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739571868; cv=none; b=FSOXaCIpdETserHivQNhHBuTos0AGh7RS6isiV7GzAmFu2B+Sge7etIXE6e/EsnjGS6pfqDpm5TvAz8cNcHPPRkO1BQ38qZ1iNiRquazx4X4O3ID9iQwPcwvIi85yzxKTnEYvFJwlM2MOuLm9COXmU5lQro7ftjBLBF7vDJxdhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739571868; c=relaxed/simple;
	bh=zpdzKUjM4S1PhHKJiJ53RHN7PR5ccynfGVewTCW9IMA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qSQFBFoHbnYS07qAG2atrJXuzf7ofpLR58l4vrSh6Fsgr9uWuo/JWllUP9Ncm67udOFLYmAhvgdv15IJVMmtxomWWqFeFJvmJ7SbjJPRw2MKQwyig+IVex7FPkM+AL+pkBpEsOkF/zQ0TwbubMgN35E/5//RdzEXMTSqvxJT+0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=J+H356ae; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=k2vnMCPQOojSTe6uMJg0l2Vez2CaiS93NKFlwUuMrgA=; b=J+H356ae4zUnjMOSGBw1B3YZL7
	/T2/TQgh82Y03mrVH7Xlc4/P5f+G6nyffpsQd00bKp+zPTdNie2VrURG+797OKSxdjvDum5eiC+bs
	qHMk3BxdEHul+ZH7et+bTP4Y+o5gcsLi4SbnU0vuUSF8E7sEBNoQQzIRom+monEH+SLBayf15MBme
	2oMBHqCtLJkrptfSyladSdfbK3AvTfIvTdXdoi5VcHinbIQInl+jGlF+jW/0BesYnZSp4+lrQVfkJ
	IEAHmyvio8ATJxeWo2hzwsGIkT5/AgfdQ1OTp+p/BKxLIAeibHgUhXlnrzFD3LZY8cLnX8IzN/aDf
	oAE+TReg==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tj46c-0003Go-2m; Fri, 14 Feb 2025 23:24:18 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, krzk+dt@kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 derek.foreman@collabora.com, detlev.casanova@collabora.com,
 daniel@fooishbar.org, robh@kernel.org, sebastian.reichel@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject:
 Re: [PATCH v14 04/13] drm/rockchip: vop2: Merge vop2_cluster/esmart_init
 function
Date: Fri, 14 Feb 2025 23:24:17 +0100
Message-ID: <8686639.gsGJI6kyIV@diego>
In-Reply-To: <20250212093530.52961-5-andyshrk@163.com>
References:
 <20250212093530.52961-1-andyshrk@163.com>
 <20250212093530.52961-5-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Am Mittwoch, 12. Februar 2025, 10:34:59 MEZ schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Now these two function share the same logic, the can
> be merged as one.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 42 +++++---------------
>  1 file changed, 11 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index a0d961cb5d21..844df4001159 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2424,18 +2424,18 @@ static int vop2_find_rgb_encoder(struct vop2 *vop2)
>  	return -ENOENT;
>  }
>  
> -static int vop2_cluster_init(struct vop2_win *win)
> +static int vop2_regmap_init(struct vop2_win *win, const struct reg_field *regs,
> +			    int nr_regs)
>  {
>  	struct vop2 *vop2 = win->vop2;
>  	int i;
>  
> -	for (i = 0; i < vop2->data->nr_cluster_regs; i++) {
> +	for (i = 0; i < nr_regs; i++) {
>  		const struct reg_field field = {
> -			.reg = (vop2->data->cluster_reg[i].reg != 0xffffffff) ?
> -				vop2->data->cluster_reg[i].reg + win->offset :
> -				vop2->data->cluster_reg[i].reg,
> -			.lsb = vop2->data->cluster_reg[i].lsb,
> -			.msb = vop2->data->cluster_reg[i].msb
> +			.reg = (regs[i].reg != 0xffffffff) ?
> +				regs[i].reg + win->offset : regs[i].reg,
> +			.lsb = regs[i].lsb,
> +			.msb = regs[i].msb
>  		};
>  
>  		win->reg[i] = devm_regmap_field_alloc(vop2->dev, vop2->map, field);
> @@ -2446,28 +2446,6 @@ static int vop2_cluster_init(struct vop2_win *win)
>  	return 0;
>  };
>  
> -static int vop2_esmart_init(struct vop2_win *win)
> -{
> -	struct vop2 *vop2 = win->vop2;
> -	int i;
> -
> -	for (i = 0; i < vop2->data->nr_smart_regs; i++) {
> -		const struct reg_field field = {
> -			.reg = (vop2->data->smart_reg[i].reg != 0xffffffff) ?
> -				vop2->data->smart_reg[i].reg + win->offset :
> -				vop2->data->smart_reg[i].reg,
> -			.lsb = vop2->data->smart_reg[i].lsb,
> -			.msb = vop2->data->smart_reg[i].msb
> -		};
> -
> -		win->reg[i] = devm_regmap_field_alloc(vop2->dev, vop2->map, field);
> -		if (IS_ERR(win->reg[i]))
> -			return PTR_ERR(win->reg[i]);
> -	}
> -
> -	return 0;
> -}
> -
>  static int vop2_win_init(struct vop2 *vop2)
>  {
>  	const struct vop2_data *vop2_data = vop2->data;
> @@ -2484,9 +2462,11 @@ static int vop2_win_init(struct vop2 *vop2)
>  		win->win_id = i;
>  		win->vop2 = vop2;
>  		if (vop2_cluster_window(win))
> -			ret = vop2_cluster_init(win);
> +			ret = vop2_regmap_init(win, vop2->data->cluster_reg,
> +					       vop2->data->nr_cluster_regs);
>  		else
> -			ret = vop2_esmart_init(win);
> +			ret = vop2_regmap_init(win, vop2->data->smart_reg,
> +					       vop2->data->nr_cluster_regs);

						^^ nr_smart_regs
I think





