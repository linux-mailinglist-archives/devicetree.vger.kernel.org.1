Return-Path: <devicetree+bounces-69577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D0D8D0663
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 17:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B0181F238B0
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 084111E868;
	Mon, 27 May 2024 15:40:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DFB1640B
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 15:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716824427; cv=none; b=RiUAjfNCsq9a7KhrWzdBfR2CI2Ty7gm0WaczDHdrdd2AnO7VnQfejchfEzXniPG7xbNGbF99X4ETeta9GG6TICx+Vv0TRYeq8+p/2xHrfNIXylUy4GTkEg+Y2PkoxBRfYQ/YGKGEnGVzDKuEUlP86eV6C/m2jwSdCy5jdu7MU4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716824427; c=relaxed/simple;
	bh=PEP0YuwSoPd8YJAS+tIwbrsSaYGrWZxHl/U3vGZ3I8M=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=TpVC0vUbFoa9Kj0oRJX1bOQxaWi54rgatLE+LaYQtLdksH4v4j3FgWmutU+teiOVo0LLt/9WKsm7PcmigYYtnu/OIG/Hzgci0igRNyOJNq/e+RGpNdnfduqT9QtbU7C7MRR8v8JVdtkUWmjyCW1ERTa934xizODJDVBp8XFbmQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sBcSC-0005Mf-IW; Mon, 27 May 2024 17:40:04 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sBcSB-003D3H-BW; Mon, 27 May 2024 17:40:03 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sBcSB-000EmW-0r;
	Mon, 27 May 2024 17:40:03 +0200
Message-ID: <fbb666b99104241aae09fc5b2ae72433e1249c23.camel@pengutronix.de>
Subject: Re: [PATCH v2 00/12] drm/imx/ipuv3: switch LDB and parallel-display
 driver to use drm_bridge_connector
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
Date: Mon, 27 May 2024 17:40:03 +0200
In-Reply-To: <yh4r2pgdl2m5wp627r35zse3obacmeanin5rjo34f7tctgpix2@dme3vwzaivag>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
	 <yh4r2pgdl2m5wp627r35zse3obacmeanin5rjo34f7tctgpix2@dme3vwzaivag>
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

Hi Dmitry,

On Mi, 2024-04-17 at 00:58 +0300, Dmitry Baryshkov wrote:
> On Sun, Mar 31, 2024 at 11:28:57PM +0300, Dmitry Baryshkov wrote:
> > The IPUv3 DRM i.MX driver contains several codepaths for different
> > usescases: both LDB and paralllel-display drivers handle next-bridge,
> > panel and the legacy display-timings DT node on their own.
> >=20
> > Drop unused ddc-i2c-bus and edid handling (none of the DT files merged
> > upstream ever used these features), switch to panel-bridge driver,
> > removing the need to handle drm_panel codepaths separately and finally
> > switch to drm_bridge_connector, removing requirement for the downstream
> > bridges to create drm_connector on their own.
> >=20
> > This has been tested on the iMX53 with the DPI panel attached to LDB vi=
a
> > LVDS decoder, using all possible usecases (lvds-codec + panel, panel
> > linked directly to LDB node and the display-timings node).
> >=20
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> > Changes in v2:
> > - Fixed drm_bridge_attach flags in imx/parallel-display driver.
> > - Moved the legacy bridge to drivers/gpu/drm/bridge
> > - Added missing EXPORT_SYMBOL_GPL to the iMX legacy bridge
> > - Link to v1: https://lore.kernel.org/r/20240311-drm-imx-cleanup-v1-0-e=
104f05caa51@linaro.org
>=20
> Phillip, Shawn, Sascha, any comments on this patchset?

Sorry for the delay, this all looks sane to me. I can't find any users
of the "edid" and "ddc-i2c-bus" properties either. But let me test on
i.MX6 and with parallel-display as well.

regards
Philipp

