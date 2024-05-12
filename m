Return-Path: <devicetree+bounces-66508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D345E8C363F
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 13:48:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87D292812B8
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 11:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB001E894;
	Sun, 12 May 2024 11:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="0kmb2Owc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D99E1C2AD;
	Sun, 12 May 2024 11:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715514506; cv=none; b=K3FEtln6mvwrem7q/L/lFetuwEjp+FOSj6MRAJO+vaj3XVI1JuYYUqfu7D/+Zes8xYUrMYIjUZeKcenvC1kTXWiCm1spvred+eCr95NOGn5mOi6anfEOO9ieXK1/vptkRkhrD5ICjGNY1Se4FVj8yKW2eSAud1fxcJsy9xhGUEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715514506; c=relaxed/simple;
	bh=a5sdWUu/SAnXiIE5VHIWRL/RhaEuPx+jDaNkfSPfeoc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ctrEt3l1e2cxH619YDOrUZmDtxeeltkcO/u1WluuyYL2Bhc9shxoFCEhKjrk8HTftz1y4T17+gxkiVC4Oi+itMeBp+078N5eUjmedn5vhCWWir03KXKQyYANO9mt3L4QkwfpA+oGPgdsijiumlqaZksU8FZIBQXW+9cIx46gYeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=0kmb2Owc; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from gaggiata.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 7E6081FA0A;
	Sun, 12 May 2024 13:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1715514493;
	bh=h0z00hFgh4UUjW8xjsLXv7Y36CFzGdOnXABZK2z+T8E=;
	h=Received:From:To:Subject;
	b=0kmb2Owch7ccpjr4CzvDlwCyQcDbQL/navgz7mJJnrdKG6zWp+U2OcHP8I9gYZiYy
	 /q2yQCEnsgM/wtoxjQTiK360leWExG3pE0/yLGsAv1VpkR/dVzOe1VC2ZGIjK32m11
	 JBPuTgB+0/yKwNdozsIkoBOLM05koOpaPulZI0iADs5wUc3audNKGVhjiBZLuAhZQR
	 EpMeqq1VlgthSjVSKusPRbgFemA4Li6y1ZSRAXL5J3g7VuR4LfP53suGUkUZ/D9eVu
	 zxqwwsbvrU7fQLX0mFxmeR7yXYx4Gndej8IexOKFtIUC4Cb4WHYAETvp6m3btAKCv8
	 XFbV5taFPx/CQ==
Received: by gaggiata.pivistrello.it (Postfix, from userid 1000)
	id 117787F95F; Sun, 12 May 2024 13:48:13 +0200 (CEST)
Date: Sun, 12 May 2024 13:48:12 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Aradhya Bhatia <a-bhatia1@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Jyri Sarha <jyri.sarha@iki.fi>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	DRI Development List <dri-devel@lists.freedesktop.org>,
	Devicetree List <devicetree@vger.kernel.org>,
	Linux Kernel List <linux-kernel@vger.kernel.org>,
	Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Praneeth Bajjuri <praneeth@ti.com>, Udit Kumar <u-kumar1@ti.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Randolph Sapp <rs@ti.com>, Devarsh Thakkar <devarsht@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>, Jai Luthra <j-luthra@ti.com>
Subject: Re: [PATCH 4/4] drm/tidss: Add OLDI bridge support
Message-ID: <ZkCsfH1qeSsXyQz4@gaggiata.pivistrello.it>
References: <20240511193055.1686149-1-a-bhatia1@ti.com>
 <20240511193055.1686149-5-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240511193055.1686149-5-a-bhatia1@ti.com>

Hello Aradhya, thanks for you patch, I should be able to test your patch on my
hardware in the coming days.

On Sun, May 12, 2024 at 01:00:55AM +0530, Aradhya Bhatia wrote:
> Up till now, the OLDI support in tidss was integrated within the tidss dispc.
> This was fine till the OLDI was one-to-mapped with the DSS video-port (VP).
> The AM62 and AM62P SoCs have 2 OLDI TXes that can support dual-lvds / lvds-clone
> modes.
> 
> Add OLDI TXes as separate DRM bridge entities to better support the new LVDS
> configurations.
> 
> Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
> ---
>  drivers/gpu/drm/tidss/Makefile      |   3 +-
>  drivers/gpu/drm/tidss/tidss_dispc.c |  11 +-
>  drivers/gpu/drm/tidss/tidss_dispc.h |   4 +
>  drivers/gpu/drm/tidss/tidss_drv.c   |  13 +-
>  drivers/gpu/drm/tidss/tidss_drv.h   |   4 +
>  drivers/gpu/drm/tidss/tidss_oldi.c  | 568 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/tidss/tidss_oldi.h  |  73 ++++
>  7 files changed, 673 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/gpu/drm/tidss/tidss_oldi.c
>  create mode 100644 drivers/gpu/drm/tidss/tidss_oldi.h
> 
> diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
> index d15f836dca95..fd90e8498cc2 100644
> --- a/drivers/gpu/drm/tidss/tidss_drv.c
> +++ b/drivers/gpu/drm/tidss/tidss_drv.c
> @@ -23,6 +23,7 @@
>  #include "tidss_drv.h"
>  #include "tidss_kms.h"
>  #include "tidss_irq.h"
> +#include "tidss_oldi.h"
>  
>  /* Power management */
>  
> @@ -140,10 +141,17 @@ static int tidss_probe(struct platform_device *pdev)
>  
>  	spin_lock_init(&tidss->wait_lock);
>  
> +	ret = tidss_oldi_init(tidss);
> +	if (ret) {
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "failed to init OLDI (%d)\n", ret);
> +		return ret;
> +	}

return dev_err_probe()

> diff --git a/drivers/gpu/drm/tidss/tidss_oldi.c b/drivers/gpu/drm/tidss/tidss_oldi.c
> new file mode 100644
> index 000000000000..fd96ca815542
> --- /dev/null
> +++ b/drivers/gpu/drm/tidss/tidss_oldi.c
> @@ -0,0 +1,568 @@

...

> +		ret = drm_of_find_panel_or_bridge(child, OLDI_OURPUT_PORT, -1,
> +						  &panel, &bridge);
> +		if (ret) {
> +			/*
> +			 * Either there was no OLDI sink in the devicetree, or
> +			 * the OLDI sink has not been added yet. In any case,
> +			 * return.
> +			 * We don't want to have an OLDI node connected to DSS
> +			 * but not to any sink.
> +			 */
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(tidss->dev,
> +					"no panel/bridge for OLDI%d. Error %d\n",
> +					oldi_instance, ret);

just dev_err_probe

> +			goto err_put_node;
> +		}

...

> +		if (IS_ERR(oldi->io_ctrl)) {
> +			dev_err(oldi->dev,
> +				"%s: oldi%d syscon_regmap_lookup_by_phandle failed %ld\n",
> +			       __func__, oldi_instance, PTR_ERR(oldi->io_ctrl));
> +			ret = PTR_ERR(oldi->io_ctrl);

dev_err_probe 

> +			goto err_put_node;
> +		}
> +
> +		oldi->s_clk = of_clk_get_by_name(child, "s_clk");
> +		if (IS_ERR(oldi->s_clk)) {
> +			dev_err(oldi->dev,
> +				"%s: oldi%d Failed to get s_clk: %ld\n",
> +				__func__, oldi_instance, PTR_ERR(oldi->s_clk));
> +			ret = PTR_ERR(oldi->s_clk);

dev_err_probe

In general, in this function, sometime you print an error and goto
err_put_node, sometime you just goto err_put_node.  Not sure what's the
rationale on this.

> +			goto err_put_node;
> +		}
> +
> +		/* Register the bridge. */
> +		oldi->bridge.of_node = child;
> +		oldi->bridge.driver_private = oldi;
> +		oldi->bridge.funcs = &tidss_oldi_bridge_funcs;
> +		oldi->bridge.timings = &default_tidss_oldi_timings;
> +
> +		tidss->oldis[tidss->num_oldis++] = oldi;
> +		oldi->tidss = tidss;
> +
> +		drm_bridge_add(&oldi->bridge);
> +	}
> +
> +err_put_node:
> +	of_node_put(child);
> +	of_node_put(oldi_parent);
> +	return ret;
> +}
> diff --git a/drivers/gpu/drm/tidss/tidss_oldi.h b/drivers/gpu/drm/tidss/tidss_oldi.h
> new file mode 100644
> index 000000000000..5ad02ddea11a
> --- /dev/null
> +++ b/drivers/gpu/drm/tidss/tidss_oldi.h
> @@ -0,0 +1,73 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Copyright (C) 2023 - Texas Instruments Incorporated
> + *
> + * Aradhya Bhatia <a-bhati1@ti.com>
> + */
> +
> +#ifndef __TIDSS_OLDI_H__
> +#define __TIDSS_OLDI_H__
> +
> +#include <linux/media-bus-format.h>
> +
> +#include "tidss_drv.h"
> +#include "tidss_dispc.h"
> +
> +struct tidss_oldi;

why do you need this here? 

> +
> +/* OLDI Instances */
> +#define OLDI(n)		n
> +
> +/* OLDI PORTS */
> +#define OLDI_INPUT_PORT		0
> +#define OLDI_OURPUT_PORT	1
> +
> +/* OLDI Config Bits */
> +#define OLDI_ENABLE		BIT(0)
> +#define OLDI_MAP		(BIT(1) | BIT(2) | BIT(3))
> +#define OLDI_SRC		BIT(4)
> +#define OLDI_CLONE_MODE		BIT(5)
> +#define OLDI_MASTERSLAVE	BIT(6)
> +#define OLDI_DEPOL		BIT(7)
> +#define OLDI_MSB		BIT(8)
> +#define OLDI_LBEN		BIT(9)
> +#define OLDI_LBDATA		BIT(10)
> +#define OLDI_DUALMODESYNC	BIT(11)
> +#define OLDI_SOFTRST		BIT(12)
> +#define OLDI_TPATCFG		BIT(13)
> +
> +/* Control MMR Register */
> +
> +/* Register offsets */
> +#define OLDI_PD_CTRL            0x100
> +#define OLDI_LB_CTRL            0x104
> +
> +/* Power control bits */
> +#define OLDI_PWRDN_TX(n)	BIT(n)
> +
> +/* LVDS Bandgap reference Enable/Disable */
> +#define OLDI_PWRDN_BG		BIT(8)
> +
> +#define OLDI_IDLE_CLK_HZ	25000000 /*25 MHz */
this is used only on a single C files, move it there?

I would consider this comment in general for this header file,
from a quick check most of this is used only in tidss_oldi.c.

Francesco


