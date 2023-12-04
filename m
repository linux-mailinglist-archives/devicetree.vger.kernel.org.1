Return-Path: <devicetree+bounces-21353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C94C48034EF
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F18B1F20FF0
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6214224B5C;
	Mon,  4 Dec 2023 13:30:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ACBEB2
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 05:30:52 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rA92A-00058F-SP; Mon, 04 Dec 2023 14:30:50 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rA925-00DWy9-50; Mon, 04 Dec 2023 14:30:45 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rA925-000Gqm-0E;
	Mon, 04 Dec 2023 14:30:45 +0100
Message-ID: <12c6097a723b9208f6da89207867b32102237fbc.camel@pengutronix.de>
Subject: Re: [v3 3/6] drm/vs: Register DRM device
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Keith Zhao <keith.zhao@starfivetech.com>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Cc: mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
 krzysztof.kozlowski+dt@linaro.org, william.qiu@starfivetech.com, 
 xingyu.wu@starfivetech.com, paul.walmsley@sifive.com,
 aou@eecs.berkeley.edu,  palmer@dabbelt.com,
 shengyang.chen@starfivetech.com, jack.zhu@starfivetech.com, 
 changhuang.liang@starfivetech.com, maarten.lankhorst@linux.intel.com, 
 suijingfeng@loongson.cn
Date: Mon, 04 Dec 2023 14:30:44 +0100
In-Reply-To: <20231204123315.28456-4-keith.zhao@starfivetech.com>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
	 <20231204123315.28456-4-keith.zhao@starfivetech.com>
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

Hi Keith,

On Mo, 2023-12-04 at 20:33 +0800, Keith Zhao wrote:
> Implement drm device registration interface
>=20
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
[...]
> diff --git a/drivers/gpu/drm/verisilicon/Kconfig b/drivers/gpu/drm/verisi=
licon/Kconfig
> new file mode 100644
> index 000000000000..e10fa97635aa
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/Kconfig
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0
> +config DRM_VERISILICON
> +	tristate "DRM Support for VeriSilicon"
> +	depends on DRM
> +	select DRM_KMS_HELPER
> +	select DRM_GEM_DMA_HELPER
> +	select CMA
> +	select DMA_CMA
> +	help
> +	  Choose this option if you have a VeriSilicon soc chipset.

This seems a bit generic. Doesn't the VeriSilicon display controller IP
used on JH7110 have a product name?

[...]
> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.c b/drivers/gpu/drm/veris=
ilicon/vs_drv.c
> new file mode 100644
> index 000000000000..4fb1f29ef84b
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_drv.c
> @@ -0,0 +1,316 @@
> +// SPDX-License-Identifier: GPL-2.0
[...]
> +static void vs_drm_device_release_clocks(void *res)
> +{
> +	struct vs_drm_device *priv =3D res;
> +	unsigned int i;
> +
> +	reset_control_bulk_assert(priv->nrsts, priv->rst_vout);
> +
> +	for (i =3D 0; i < priv->clk_count; ++i) {
> +		if (priv->clks[i]) {
> +			clk_disable_unprepare(priv->clks[i]);
> +			clk_put(priv->clks[i]);
> +		}
> +	}

Why not use the bulk API for clk as well?

[...]
> +static int vs_drm_device_init_clocks(struct vs_drm_device *priv)
> +{
> +	struct drm_device *dev =3D &priv->base;
> +	struct platform_device *pdev =3D to_platform_device(dev->dev);
> +	struct device_node *of_node =3D pdev->dev.of_node;
> +	struct clk *clock;
> +	unsigned int i;
> +	int ret;
> +
> +	if (dev_get_platdata(&pdev->dev) || !of_node)
> +		return 0;
> +
> +	priv->nrsts =3D ARRAY_SIZE(priv->rst_vout);
> +	for (int i =3D 0; i < priv->nrsts; ++i)
> +		priv->rst_vout[i].id =3D vout_resets[i];
> +	ret =3D devm_reset_control_bulk_get_shared(dev->dev, priv->nrsts,
> +						 priv->rst_vout);

I would request resets and clocks in _probe().

If component_bind_all() returns -EPROBE_DEFER because of a still
missing DSI panel backlight or similar, this doesn't have to be done
multiple times.

> +	if (ret) {
> +		drm_err(dev, "Failed to get reset controls\n");
> +		return ret;
> +	}
> +
> +	priv->clk_count =3D of_clk_get_parent_count(of_node);
> +	if (!priv->clk_count)
> +		return 0;
> +
> +	priv->clks =3D drmm_kzalloc(dev, priv->clk_count * sizeof(priv->clks[0]=
),
> +				  GFP_KERNEL);
> +	if (!priv->clks)
> +		return -ENOMEM;
> +
> +	for (i =3D 0; i < priv->clk_count; ++i) {
> +		clock =3D of_clk_get(of_node, i);
> +		if (IS_ERR(clock)) {
> +			ret =3D PTR_ERR(clock);
> +			if (ret =3D=3D -EPROBE_DEFER)
> +				goto err;
> +			drm_err(dev, "clock %u not found: %d\n", i, ret);
> +			continue;
> +		}
> +		ret =3D clk_prepare_enable(clock);
> +		if (ret) {
> +			drm_err(dev, "failed to enable clock %u: %d\n",
> +				i, ret);
> +			clk_put(clock);
> +			continue;
> +		}
> +		priv->clks[i] =3D clock;
> +	}
> +
> +	ret =3D reset_control_bulk_deassert(priv->nrsts, priv->rst_vout);
> +	if (ret)
> +		return ret;

This should goto err, otherwise clocks are left enabled.

> +
> +	return devm_add_action_or_reset(&pdev->dev,
> +					vs_drm_device_release_clocks,
> +					priv);
> +
> +err:
> +	while (i) {
> +		--i;
> +		if (priv->clks[i]) {
> +			clk_disable_unprepare(priv->clks[i]);
> +			clk_put(priv->clks[i]);
> +		}
> +	}
> +	return ret;
> +}
> +
> +static int vs_drm_bind(struct device *dev)
> +{
> +	struct platform_device *pdev =3D to_platform_device(dev);
> +	struct vs_drm_device *priv;
> +	int ret;
> +	struct drm_device *drm_dev;
> +
> +	/* Remove existing drivers that may own the framebuffer memory. */
> +	ret =3D drm_aperture_remove_framebuffers(&vs_drm_driver);
> +	if (ret)
> +		return ret;
> +
> +	priv =3D devm_drm_dev_alloc(dev, &vs_drm_driver, struct vs_drm_device, =
base);
> +	if (IS_ERR(priv))
> +		return PTR_ERR(priv);
> +
> +	priv->pitch_alignment =3D 64;

Why is this a variable instead of a constant?

> +	ret =3D dma_set_coherent_mask(priv->base.dev, DMA_BIT_MASK(40));
> +	if (ret)
> +		return ret;
> +
> +	drm_dev =3D &priv->base;
> +	platform_set_drvdata(pdev, drm_dev);
> +
> +	ret =3D vs_drm_device_init_clocks(priv);
> +	if (ret)
> +		return ret;
> +
> +	vs_mode_config_init(drm_dev);
> +
> +	/* Now try and bind all our sub-components */
> +	ret =3D component_bind_all(dev, drm_dev);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
> +	if (ret)
> +		return ret;

Missing component_unbind_all(), see below.

> +
> +	drm_mode_config_reset(drm_dev);
> +
> +	drm_kms_helper_poll_init(drm_dev);
> +
> +	ret =3D drm_dev_register(drm_dev, 0);
> +	if (ret)
> +		return ret;

Missing drm_kms_helper_poll_fini(), see below.

> +
> +	drm_fbdev_generic_setup(drm_dev, 32);
> +
> +	return 0;

Here I'd expect an error path calling drm_kms_helper_poll_fini() and
component_unbind_all() as appropriate.


regards
Philipp

