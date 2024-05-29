Return-Path: <devicetree+bounces-70538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B63558D3A16
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 16:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E76881C20CED
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29F716E89A;
	Wed, 29 May 2024 14:58:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D871667EA
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 14:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716994727; cv=none; b=LWAvOyeWxBkR8FsDPdnGjjbI5XlQ+DV4SYLDnTDpssfZ70ULadd/QUCddfXuEd2a4puDz0Zcz/0uMdyZsd+IpGEaHWA6wcEOY4ij5G7IwIh35Q34RBROUQhKQGCl8YwcEHt1AcfeTz4ojPHDpwsnRNJ/0SOBi7zPXlFfavxX9FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716994727; c=relaxed/simple;
	bh=D/KHEOSbPCLIuOq8sWS35ux5QKqBNifC402qQ1qcCiE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GYejWbnc17oMMRUxoq9b5CEH8qOz/cBKkykbLkwCm9JoT1sThodLDHEnO1seule7hIIl88gmWdhVh4LHIeyVJvFjd+Q57gnMaOnN4CMRzydQhs8LyZBL2NG3LI26zmcfR08Rv4tk3VpqhzVO7O1aywQa/ZXRUXsajjTpqe8SSIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKkx-00038v-2U; Wed, 29 May 2024 16:58:23 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKkw-003Te0-F8; Wed, 29 May 2024 16:58:22 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sCKkw-000Da6-1F;
	Wed, 29 May 2024 16:58:22 +0200
Message-ID: <52baeec98214106ca406dd190e1b7eecd73fe255.camel@pengutronix.de>
Subject: Re: [PATCH v2 07/12] drm/imx: ldb: switch to drm_panel_bridge
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
Date: Wed, 29 May 2024 16:58:22 +0200
In-Reply-To: <20240331-drm-imx-cleanup-v2-7-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
	 <20240331-drm-imx-cleanup-v2-7-d81c1d1c1026@linaro.org>
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
>  drivers/gpu/drm/imx/ipuv3/Kconfig   |  2 ++
>  drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 44 ++++++++++++-------------------=
------
>  2 files changed, 16 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/imx/ipuv3/Kconfig b/drivers/gpu/drm/imx/ipuv=
3/Kconfig
> index bacf0655ebaf..4e41611c8532 100644
> --- a/drivers/gpu/drm/imx/ipuv3/Kconfig
> +++ b/drivers/gpu/drm/imx/ipuv3/Kconfig
> @@ -28,7 +28,9 @@ config DRM_IMX_LDB
>  	tristate "Support for LVDS displays"
>  	depends on DRM_IMX && MFD_SYSCON
>  	depends on COMMON_CLK
> +	depends on DRM_BRIDGE

To avoid hiding the DRM_IMX_LDB option for legacy configurations with
DRM_BRIDGE disabled, it would be better to select DRM_BRIDGE here
instead.

>  	select DRM_PANEL

And this shouldn't be necessary anymore.

regards
Philipp

