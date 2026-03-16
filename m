Return-Path: <devicetree+bounces-276116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MK8AL2rmt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:15:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34544298912
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EC1C8301A287
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415AA276038;
	Mon, 16 Mar 2026 11:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="FPZG0d9U"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAD024DD17;
	Mon, 16 Mar 2026 11:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659745; cv=pass; b=VR+tM/j7fQkWxJCaKmqLcONv3njd0qfdqq9mUBazZE0qPXC32bzMJo3hI1jeuZeIdx+UXlHm9qor/3ZeuKdMR1C0S7ICwz01tUqTmSN82axOjA226hlSPJ0QDpVMfcfTiRHAp07VKhvC7vp5oFoycN+wYP3GSDlSXK6cSODopGs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659745; c=relaxed/simple;
	bh=ZkrnP86qeIsGl6wTQWYTjPQJcBFKEybKbsBca0Y87yc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KT5eZsXi+krATV/KfH7FgSyyV2MQyvfRGl/tg3BR4BjW652U4HRnV+sAbT72BqyfEXRW0ccP/zVm8eZkJ9XuJszK0E0Uzszen1dkpTBvbpFPnFZpAvYvp5qmv5CCZSxAVmoEz03j8fV+AF1jSHEfYK5IpVtOBwcnu3D6oRynltI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b=FPZG0d9U; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1773659687; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UIej3PgOTkE/n0d+iLhvO9KUEiB24mLjI5T3L8rccNLAyjrayVNy8Aw0GeSTmgMPA68EXjupr5mrY8JaIsmw27IaWeATHFfYPAFqIrCh+nM3maDlIYuf8fIQ06Y/Vkp9l8E5WIfTUs3OU16oTagb2sSEhfrcm/esDoQertxM7Io=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773659687; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=XlhrKy1qO5Y7JTYOOoPiFnrf+Gaw2TCJw74PIWbx0L8=; 
	b=GHJL5UhzMhaI4sJ/M2v+eF4cfdijD4SFjKwqah2FRjP9h/z1zw2QMf9fj98FRyyGfo3LH8PCo1xWQF8j2EeKQ0LopTyqkGzgSvdHumi+9YnmRzB5LQeaczuGyYgmdJY/3gCNT68jyY6In18UbnM7WRUY7rUMGkP+ZShY2bE1rgU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773659687;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=XlhrKy1qO5Y7JTYOOoPiFnrf+Gaw2TCJw74PIWbx0L8=;
	b=FPZG0d9UCoj7VXzxtKmvxxFQxaF9k8mtZY+xQj9wmcNo5ZR3YeOZ0v/MSQDEG4e/
	uo+DFdjh4U8fl2V0BoI81dK5Xu0NTrMpgb8RMITuxhj8KJz8j88FHgNWCMwF0qOxFfQ
	9yuJEN5GQKJ2HcVlyUA0Yk+HsIxrGRCSHTTnxhhU=
Received: by mx.zohomail.com with SMTPS id 177365968484917.368603781984916;
	Mon, 16 Mar 2026 04:14:44 -0700 (PDT)
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
Subject: Re: [PATCH v1 3/4] drm/bridge: analogix_dp: Add support for RK3576
Date: Mon, 16 Mar 2026 12:14:37 +0100
Message-ID: <2032185.PYKUYFuaPT@workhorse>
In-Reply-To: <20260310105307.309765-4-damon.ding@rock-chips.com>
References:
 <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-4-damon.ding@rock-chips.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276116-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:dkim]
X-Rspamd-Queue-Id: 34544298912
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, 10 March 2026 11:53:06 Central European Standard Time Damon Ding wrote:
> Expand enum analogix_dp_devtype with RK3576_EDP, and add max_link_rate
> and max_lane_count configs for it.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 1 +
>  include/drm/bridge/analogix_dp.h                   | 3 ++-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index fe7158d9edde..c4e49e8186ab 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1248,6 +1248,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>  		video_info->max_link_rate = 0x0A;
>  		video_info->max_lane_count = 0x04;
>  		break;
> +	case RK3576_EDP:
>  	case RK3588_EDP:
>  		video_info->max_link_rate = 0x14;
>  		video_info->max_lane_count = 0x04;
> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
> index 854af692229b..d1a6e6d44a2b 100644
> --- a/include/drm/bridge/analogix_dp.h
> +++ b/include/drm/bridge/analogix_dp.h
> @@ -16,12 +16,13 @@ enum analogix_dp_devtype {
>  	EXYNOS_DP,
>  	RK3288_DP,
>  	RK3399_EDP,
> +	RK3576_EDP,
>  	RK3588_EDP,
>  };
>  
>  static inline bool is_rockchip(enum analogix_dp_devtype type)
>  {
> -	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
> +	return type == RK3288_DP || type == RK3399_EDP || type == RK3576_EDP || type == RK3588_EDP;

I think we can make this easier to read with a switch statement. In
a separate patch, we may also want to rename `is_rockchip` to
`analogix_dp_is_rockchip`, as e.g. rockchip_drm_vop.c and exynos_dp.c
both include his header file as well.

Switch statement would make the function look something like:

static inline bool is_rockchip(enum analogix_dp_devtype type)
{
	switch (type) {
	case RK3288_DP:
	case RK3399_EDP:
	case RK3576_EDP:
	case RK3588_EDP:
		return true;
	default:
		return false;
	}
}

Kind regards,
Nicolas Frattaroli

>  }
>  
>  struct analogix_dp_plat_data {
> 





