Return-Path: <devicetree+bounces-276123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8O3xIL3st2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:42:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA62298D5B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E045A3087059
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9569338F659;
	Mon, 16 Mar 2026 11:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="D/NZ4Sa6"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5724A38F25F;
	Mon, 16 Mar 2026 11:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773660974; cv=pass; b=mZCw8YQHOEf9NWu62Ps2J/0x6gMRFKybIXSz6RivjdUQdRyfRk0RIxgOHJAfJZHYvautgnfvnt01BRszkh9TnSdOPPCJkNlTmZBwibgCJbC2sS8lWTgWEhUFjr8cYZzOfD9cpLkvGdDoQ6SBQtYdIFt+ypcnE97lxetwT4AbeDI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773660974; c=relaxed/simple;
	bh=m1BSGgsTAn/0KmN1Fe/56yNJwBKeX8ixvZN7npqPDB8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QFg7ZxLm+xEFXdvUKHC+CuD7YsJ6vKaHSQRMEJMbkr9Wght4k08kWvIh434e/39sHKHpSV3Ppyrf4QkJOI7BqUg2dZ6X24HO/62UaPkQI/48ESdaqrNbsuuJvw5/ikxZqjFLWW+HTPnyvjsMeC19G0jArdHUEKcuZKm91XZQJAc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b=D/NZ4Sa6; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1773660934; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=G3xW+OBU2n1UtF7tIuvVvbRZftYRL3d52z3iM+YrUlgdad53aBJWdVMNDN3iY3hTJp/ZotQwruNnnpJy+6g3KNyL3xIBPaN2z93euUPehLwfewjaJ2HXAMq102tJUaRTZoX4Rsz9htqj9vQFFfr8+Rd89tZR7xEq4cCKJeZo9Vc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773660934; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NWuMfeb2/4fn9JWrO+GHwtoIDUvcuX2oMLSAsprenVc=; 
	b=BAS/iMv0vMb/He6HewFGGyg6r9uJwMbRuGBZcX+qGRE6z1BQGre+30WsGZpegoUqm6xnd0z+TfdRZqjUBj9ZV35cSbWU6tlaurmGr+wgUcgw+ia37MSJwfDQabNIpWGBQUySS1vqYQUems0QAVUl8yCSDyZpUIOjG/VqI7SxV+I=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773660934;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=NWuMfeb2/4fn9JWrO+GHwtoIDUvcuX2oMLSAsprenVc=;
	b=D/NZ4Sa6LRtelzMRTiiO8lwaBxltSKv99C1UyuCki6/3zq0Lomt6SHpWfdGgTkip
	6qvCzOQLfJLafBBOzQLwVR9BIEDszjCvfKkXG2gQvyrJNEQKgT5UESUCsNzJrL5Ivze
	DFgljv3NAsymuaU9/44F4sJmX7+yolFrWahGpUZY=
Received: by mx.zohomail.com with SMTPS id 1773660933750222.17226611988713;
	Mon, 16 Mar 2026 04:35:33 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, alchark@gmail.com,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 luca.ceresoli@bootlin.com, dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 4/4] drm/rockchip: analogix_dp: Add support for RK3576
Date: Mon, 16 Mar 2026 12:35:24 +0100
Message-ID: <6140062.MhkbZ0Pkbq@workhorse>
In-Reply-To: <20260310105307.309765-5-damon.ding@rock-chips.com>
References:
 <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-5-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	CTE_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276123-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,60hz:email,collabora.com:dkim,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EDA62298D5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, 10 March 2026 11:53:07 Central European Standard Time Damon Ding wrote:
> RK3576 integrates the Analogix eDP 1.3 TX controller IP and the HDMI/eDP
> TX Combo PHY based on a Samsung IP block - both of which are the same as
> those on RK3588.
> 
> The patch currently adds only the basic support, specifically RGB output
> up to 4K@60Hz, without the tests for audio, PSR and other eDP 1.3 specific
> features.
> 
> In additon, the newly added clock 'hclk' is the video datapath clock,
> which must be enabled during probing for RK3576 eDP controller.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 832e9766bef0..4f8511636cdf 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -71,6 +71,7 @@ struct rockchip_dp_device {
>  
>  	struct clk               *pclk;
>  	struct clk               *grfclk;
> +	struct clk               *hclk;
>  	struct regmap            *grf;
>  	struct reset_control     *rst;
>  	struct reset_control     *apbrst;
> @@ -327,6 +328,11 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>  		return dev_err_probe(dev, PTR_ERR(dp->pclk),
>  				     "failed to get pclk property\n");
>  
> +	dp->hclk = devm_clk_get_optional_enabled(dev, "hclk");
> +	if (IS_ERR(dp->hclk))
> +		return dev_err_probe(dev, PTR_ERR(dp->hclk),
> +				     "failed to get hclk property\n");
> +
>  	dp->rst = devm_reset_control_get(dev, "dp");
>  	if (IS_ERR(dp->rst))
>  		return dev_err_probe(dev, PTR_ERR(dp->rst),
> @@ -514,6 +520,14 @@ static const struct rockchip_dp_chip_data rk3288_dp[] = {
>  	{ /* sentinel */ }
>  };
>  
> +static const struct rockchip_dp_chip_data rk3576_edp[] = {
> +	{
> +		.chip_type = RK3576_EDP,
> +		.reg = 0x27dc0000,
> +	},
> +	{ /* sentinel */ }
> +};
> +
>  static const struct rockchip_dp_chip_data rk3588_edp[] = {
>  	{
>  		.edp_mode = GRF_REG_FIELD(0x0000, 0, 0),
> @@ -531,6 +545,7 @@ static const struct rockchip_dp_chip_data rk3588_edp[] = {
>  static const struct of_device_id rockchip_dp_dt_ids[] = {
>  	{.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
>  	{.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
> +	{.compatible = "rockchip,rk3576-edp", .data = &rk3576_edp },
>  	{.compatible = "rockchip,rk3588-edp", .data = &rk3588_edp },
>  	{}
>  };
> 

Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Kind regards,
Nicolas Frattaroli




