Return-Path: <devicetree+bounces-100272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8340A96D020
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:11:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B58DA1C2290D
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F8AA192B79;
	Thu,  5 Sep 2024 07:11:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998D8188A37
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 07:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725520275; cv=none; b=thiKjxmoIV6vHW62a5QWGoeeEFbCMkd2/v56F7wTo/K1a1LWIiliqnx6rOoIO6r5VGMd8O2uk3i6+/433RxSVPHMJG9bgufj3j/kXXCNzED7DLGVKeaDVBGIpft1L78UEbFirg9LrY0AE2dNJtQXKPoMMPpIolG8+9Ev07tGSec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725520275; c=relaxed/simple;
	bh=RgJEml5hu5SSXojD1nCIyf2PpwF864B7WXZRWFZa1ys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=njWvd+APE9VYin/WlYlST/Nsn37zPkTf9Eqx2iVn/8vTPCbwZTC/jTlEEeKtaeAEYNLVW2ofDIY9G7hH/U4VIyCfk6uhHYJhWffe4NJYE8YdT8UoBR5wUeaHUY0Z92+dtURyQWmfLrvFemzYqplekE0vccW+kSofnSdr8blm8Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sm6dw-0002sW-V8; Thu, 05 Sep 2024 09:11:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sm6dt-005e23-37; Thu, 05 Sep 2024 09:10:57 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sm6ds-0085D2-38;
	Thu, 05 Sep 2024 09:10:56 +0200
Date: Thu, 5 Sep 2024 09:10:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: detlev.casanova@collabora.com, sjoerd@collabora.com,
	sebastian.reichel@collabora.com, heiko@sntech.de,
	hjc@rock-chips.com, cristian.ciocaltea@collabora.com,
	mripard@kernel.org, dri-devel@lists.freedesktop.org,
	krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 05/11] drm/rockchip: vop2: Introduce vop hardware
 version
Message-ID: <ZtlZgKcDQFF_WnCn@pengutronix.de>
References: <20240904120238.3856782-1-andyshrk@163.com>
 <20240904120238.3856782-6-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240904120238.3856782-6-andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Andy,

On Wed, Sep 04, 2024 at 08:02:32PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> There is a version number hardcoded in the VOP VERSION_INFO
> register, and the version number increments sequentially based
> on the production order of the SOC.
> 
> So using this version number to distinguish different VOP features
> will simplify the code.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Introduce vop hardware version
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c |  7 ++++---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 11 +++++++++++
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c |  3 +++
>  3 files changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> index 9b269f6e576e..871d9bcd1d80 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> @@ -13,6 +13,15 @@
>  #include "rockchip_drm_drv.h"
>  #include "rockchip_drm_vop.h"
>  
> +#define VOP2_VERSION(major, minor, build)	((major) << 24 | (minor) << 16 | (build))
> +
> +/* The new SOC VOP version is bigger than the old */
> +#define VOP_VERSION_RK3568	VOP2_VERSION(0x40, 0x15, 0x8023)
> +#define VOP_VERSION_RK3588	VOP2_VERSION(0x40, 0x17, 0x6786)
> +#define VOP_VERSION_RK3528	VOP2_VERSION(0x50, 0x17, 0x1263)
> +#define VOP_VERSION_RK3562	VOP2_VERSION(0x50, 0x17, 0x4350)
> +#define VOP_VERSION_RK3576	VOP2_VERSION(0x50, 0x19, 0x9765)

What about the RK3566? Does it have the same version code as the RK3568?

This new version field replaces the soc_id mechanism we had before to
99%. You keep the soc_id around just for distinguishing between RK3566
and RK3568. It would be nice to fully replace it.

I see that the VOP_VERSION_RK* numbers are the same as found in the
VOP2_SYS_VERSION_INF registers. On the other hand you never read the
value from the register which make the VOP_VERSION_RK* just arbitrary
numbers. Wouldn't it be possible to make something up for RK3566, like
VOP2_VERSION(0x40, 0x15, 0x8022) to get rid of the soc_id thingy?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

