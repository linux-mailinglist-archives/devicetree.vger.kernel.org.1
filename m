Return-Path: <devicetree+bounces-70540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A62C18D3A18
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 16:58:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42E211F279D8
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C283D17B51F;
	Wed, 29 May 2024 14:58:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3E716A379
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 14:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716994729; cv=none; b=eHgMr91EmuHQxAvA7oWsWewOXk5wDbrAHBgBxm1zAhhq0RwCsGi2z39M3Dw7nmrRtCWwbYyQQOZM0SLaJzkkwzoF/cyONZJctFk8bmkqYMQ00/yJwIfM/zwkRQQUIvrc4fWhLu/LI7D9t+/pW/Kacam9FcTCMcJ9zpB+0JPqG1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716994729; c=relaxed/simple;
	bh=6xi2NBW8ZjzgMEJ2xLYuRhqr318m3e8Up2+gITmbGAU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FuJURjC5y6rZnGC7aYbVJq8G5k7L3j4/Y1Y4o7yZjFE6UWjux6T88iNZddcNERMZRt1otPa6By/sP2geostkJs+5iSjvB1GcPm2yBu/QEgwjrxLcuS/hlML5VSmXte9eugOgwsexEVqo7ofAsTLWMZ4DB4CKfUJNBB7ovxz7XOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKku-00037W-O1; Wed, 29 May 2024 16:58:20 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKkt-003Tdu-M0; Wed, 29 May 2024 16:58:19 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKkt-000DZi-1v;
	Wed, 29 May 2024 16:58:19 +0200
Message-ID: <5174c0495000d5c1637aaa40a97badd1e9b3775b.camel@pengutronix.de>
Subject: Re: [PATCH v2 08/12] drm/imx: parallel-display: switch to
 drm_panel_bridge
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>,  Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Date: Wed, 29 May 2024 16:58:19 +0200
In-Reply-To: <20240331-drm-imx-cleanup-v2-8-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
	 <20240331-drm-imx-cleanup-v2-8-d81c1d1c1026@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On So, 2024-03-31 at 23:29 +0300, Dmitry Baryshkov wrote:
> Defer panel handling to drm_panel_bridge, unifying codepaths for the
> panel and bridge cases.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/imx/ipuv3/Kconfig            |  2 ++
>  drivers/gpu/drm/imx/ipuv3/parallel-display.c | 35 +++++++---------------=
------
>  2 files changed, 10 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/imx/ipuv3/Kconfig b/drivers/gpu/drm/imx/ipuv=
3/Kconfig
> index 4e41611c8532..8aaf2441bcef 100644
> --- a/drivers/gpu/drm/imx/ipuv3/Kconfig
> +++ b/drivers/gpu/drm/imx/ipuv3/Kconfig
> @@ -13,6 +13,8 @@ config DRM_IMX_PARALLEL_DISPLAY
>  	tristate "Support for parallel displays"
>  	select DRM_PANEL

This shouldn't be necessary anymore either.

>  	depends on DRM_IMX
> +	depends on DRM_BRIDGE

I'd prefer this to select DRM_BRIDGE.

> +	select DRM_PANEL_BRIDGE
>  	select VIDEOMODE_HELPERS
> =20
>  config DRM_IMX_TVE
> diff --git a/drivers/gpu/drm/imx/ipuv3/parallel-display.c b/drivers/gpu/d=
rm/imx/ipuv3/parallel-display.c
> index 4d17fb96e77c..b7743b30475a 100644
> --- a/drivers/gpu/drm/imx/ipuv3/parallel-display.c
> +++ b/drivers/gpu/drm/imx/ipuv3/parallel-display.c

You can drop the "#include <drm/panel.h>".


regards
Philipp

