Return-Path: <devicetree+bounces-24002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE47580D419
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46057B2151B
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B3D4E60D;
	Mon, 11 Dec 2023 17:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fELCK3KF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B98F4E601
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 17:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5D83C433C7
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 17:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702316280;
	bh=RM8J1fRi5eccOG6cdSuf5vFHLYEKAAR1q1WmQ5fdUhY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fELCK3KFxdx7lldkj0syY4n+7+IDCHwjtiPgP5xMXa2bHBSTKY7CadJq201kwooIR
	 Z2NW07VXANkVno35IBshrqMGzavOdfd2Tw8Fl9v9jWh7Sdp1Ox1Qo4mtBa8QJUeicy
	 o+s+e7ws1pUuChnQmHWFifemr+GWEyKOgFDtK9505wPwIYiGTSjSHfIzgz5tKF4emt
	 xjVPIpifsqPgRq7rjoEin8t9Ce90DY2EC/n3aT3ny65UlbuvlmU10uWk0z8uOVYkBm
	 xJuHibsxMSZtlvEZ72m+jQeB3zoHCZgRlFsagl6TADc55/zbwIy9sE4QXFZFy2MiAU
	 EiObRtnLwmlVg==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2c9f413d6b2so59155521fa.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 09:38:00 -0800 (PST)
X-Gm-Message-State: AOJu0YzfGU0xvrtN2GEt62BYogJKx5j+paJaPwtZvwUnL9z/PInXwn3x
	LwQNPX+09TpkxQHQl5PYp+0h2pdCsmaHRfTpVw==
X-Google-Smtp-Source: AGHT+IGU6zc/IkMGLCnjAcu3MrW8oETYAeR1jpLpwg1PYbcbe672FORhlQSw1Oenjd6QCwC10tnJtiMkcqHDuwRnSog=
X-Received: by 2002:a05:6512:3441:b0:50b:c977:106a with SMTP id
 j1-20020a056512344100b0050bc977106amr1180039lfr.51.1702316279139; Mon, 11 Dec
 2023 09:37:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920171009.3193296-1-l.stach@pengutronix.de> <20230920171009.3193296-2-l.stach@pengutronix.de>
In-Reply-To: <20230920171009.3193296-2-l.stach@pengutronix.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 11 Dec 2023 11:37:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJmyeFNpRt9bkjzXJ+w3WED4eLokmzdfP4fR=9dZGr1QA@mail.gmail.com>
Message-ID: <CAL_JsqJmyeFNpRt9bkjzXJ+w3WED4eLokmzdfP4fR=9dZGr1QA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Liu Ying <victor.liu@nxp.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Adam Ford <aford173@gmail.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Richard Leitner <richard.leitner@skidata.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, patchwork-lst@pengutronix.de, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, Sandor Yu <sandor.yu@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 12:10=E2=80=AFPM Lucas Stach <l.stach@pengutronix.d=
e> wrote:
>
> This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
> full timing generator and can switch between different video sources. On
> the i.MX8MP however the only supported source is the LCDIF. The block
> just needs to be powered up and told about the polarity of the video
> sync signals to act in bypass mode.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Marek Vasut <marex@denx.de> (v1)
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de> (v2)
> ---
>  drivers/gpu/drm/bridge/imx/Kconfig           |   7 +
>  drivers/gpu/drm/bridge/imx/Makefile          |   1 +
>  drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c | 206 +++++++++++++++++++
>  3 files changed, 214 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
>
> diff --git a/drivers/gpu/drm/bridge/imx/Kconfig b/drivers/gpu/drm/bridge/=
imx/Kconfig
> index 9fae28db6aa7..3a4e663d922a 100644
> --- a/drivers/gpu/drm/bridge/imx/Kconfig
> +++ b/drivers/gpu/drm/bridge/imx/Kconfig
> @@ -3,6 +3,13 @@ if ARCH_MXC || COMPILE_TEST
>  config DRM_IMX_LDB_HELPER
>         tristate
>
> +config DRM_IMX8MP_HDMI_PVI
> +       tristate "Freescale i.MX8MP HDMI PVI bridge support"
> +       depends on OF
> +       help
> +         Choose this to enable support for the internal HDMI TX Parallel
> +         Video Interface found on the Freescale i.MX8MP SoC.
> +
>  config DRM_IMX8QM_LDB
>         tristate "Freescale i.MX8QM LVDS display bridge"
>         depends on OF
> diff --git a/drivers/gpu/drm/bridge/imx/Makefile b/drivers/gpu/drm/bridge=
/imx/Makefile
> index 8e2ebf3399a1..be9b4f9adb50 100644
> --- a/drivers/gpu/drm/bridge/imx/Makefile
> +++ b/drivers/gpu/drm/bridge/imx/Makefile
> @@ -1,4 +1,5 @@
>  obj-$(CONFIG_DRM_IMX_LDB_HELPER) +=3D imx-ldb-helper.o
> +obj-$(CONFIG_DRM_IMX8MP_HDMI_PVI) +=3D imx8mp-hdmi-pvi.o
>  obj-$(CONFIG_DRM_IMX8QM_LDB) +=3D imx8qm-ldb.o
>  obj-$(CONFIG_DRM_IMX8QXP_LDB) +=3D imx8qxp-ldb.o
>  obj-$(CONFIG_DRM_IMX8QXP_PIXEL_COMBINER) +=3D imx8qxp-pixel-combiner.o
> diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c b/drivers/gpu/d=
rm/bridge/imx/imx8mp-hdmi-pvi.c
> new file mode 100644
> index 000000000000..5ccd70c98187
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c
> @@ -0,0 +1,206 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +/*
> + * Copyright (C) 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
> + */
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_crtc.h>
> +#include <linux/bitfield.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>

You probably don't need this header and the implicit includes it makes
are dropped now in linux-next. Please check what you actually need and
make them explicit.

Rob

