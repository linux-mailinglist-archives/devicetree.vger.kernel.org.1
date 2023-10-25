Return-Path: <devicetree+bounces-11863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE07A7D6DC0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:56:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3AD8EB20BAF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DEB628DC9;
	Wed, 25 Oct 2023 13:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="JpBe8hHI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4F71172D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:56:05 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF34213A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:56:00 -0700 (PDT)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 02D233FADE
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698242157;
	bh=8jUYXakwcmpvzH8PmeG3Y7UMAo6JMFS5DVVxv1I4OoM=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=JpBe8hHIcv08fxOUYN4dia2C+bTvwhsJ7ffJPCm0hFTw7VGgt9KGIJCr43jebdG5s
	 Fs3+rxaffE5UnjEdqPJLwIW7hVU0Q+CQQqy+0PAUlJl+KY98Uhkq32RDIXGCIepSde
	 dZxJZqPzmt8Kx6Jo2ZZ/15L2FuN/ARsH/CL4ba7RbIIoTxQTJZ7sEXFF2H8p/ckbXx
	 zs+YNoj0RlEKs97b75Cf0xJzGTkuEB0AKZr7JOZeAsPi0xUB+TzeHhNeQqaqmsOlrM
	 phC8xLtOIfhfr5K6OTedQ/CJFdnFWhCYQO8c9dTfjn8Ka4W9JZVexxz0LpLJhQyPDr
	 VscvgxlRHqWVg==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cc25beccaso72533611cf.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698242152; x=1698846952;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8jUYXakwcmpvzH8PmeG3Y7UMAo6JMFS5DVVxv1I4OoM=;
        b=ordKBqu/v58ErPi3NUgou2D1YN6PSoLuME5CrdCnLMYKD5k01+seSFjMGkAzMC2NwR
         EG6hZts5pcZ351vp2hdLfRlR9qSHiDj/lAyipl9rATa2VxbmWbVqgxHyBIASNQP+M4fR
         7p0pf8dXJDWpJSIzcjpONnVLBJe06UH13M9FsbiGCpJKNXeouXXMSWCjRTjneM6XnEo6
         TQihOfB/5SowPLIy0g0k5CtYSK83vFIKt1FIf8U0IsZsqAfHE4nppnoLW+RbHmC/R6Fi
         uoGoRgfdDKUzd9bzj43C+a20XYNBGxEBzgy/PfuS+ursIp/F1NzsBf/YgX4If1s9xjPJ
         5UUA==
X-Gm-Message-State: AOJu0YwLcPQBYUjnxIYq9Rv9r2NxYMK83BJ42UC98rmBMXdownyZqo7a
	GG4Voq4K4dkNwGPA6xuoYqISM/onwQAykW4n9ZvJsyuiqJslyftMn6RZa155Y81UF7pzIWo9YgB
	AYr2Buj7pjL7815zPJT7/SwcmXhntQ+sNQjwBL/CZ8u0pvxYwpU/tvFQ=
X-Received: by 2002:a05:622a:304:b0:412:2ad4:da05 with SMTP id q4-20020a05622a030400b004122ad4da05mr18627186qtw.38.1698242152576;
        Wed, 25 Oct 2023 06:55:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuFogkRC2VGL1iMTQK1TXLhTrjVZCCxCMNG5s+2V56sGcKhP3BgdngrqxgI1IfJHvTcyTcfvRIrayXiU+rfvg=
X-Received: by 2002:a05:622a:304:b0:412:2ad4:da05 with SMTP id
 q4-20020a05622a030400b004122ad4da05mr18627147qtw.38.1698242152257; Wed, 25
 Oct 2023 06:55:52 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 06:55:51 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231025103957.3776-5-keith.zhao@starfivetech.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com> <20231025103957.3776-5-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 25 Oct 2023 06:55:51 -0700
Message-ID: <CAJM55Z9+rxzmhosfgZrJHfnjNrhSkm5AaARu4qX3669EXOAU1Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] drm/vs: Register DRM device
To: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, 
	Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, 
	Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, 
	Jack Zhu <jack.zhu@starfivetech.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, 
	Changhuang Liang <changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

Keith Zhao wrote:
> Implement drm device registration interface
>
> Thomas Zimmermann wrote:
> You are replacing almost all of the GEM DMA object's helper code.
> Either inherit directly from drm_gem_object drop the dependency entirely,
> or you could try to fit your code into GEM DMA as well
>
> Eventually I found an answer and it was DRM_GEM_DMA_DRIVER_OPS_WITH_DUMB_CREATE
> After I adapt this interface, the custom gem logic interfaces can be deleted.
> It's a big shocking, clap!
>
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>  drivers/gpu/drm/Kconfig                  |   2 +
>  drivers/gpu/drm/Makefile                 |   1 +
>  drivers/gpu/drm/verisilicon/Kconfig      |  15 ++
>  drivers/gpu/drm/verisilicon/Makefile     |   7 +
>  drivers/gpu/drm/verisilicon/vs_drv.c     | 227 +++++++++++++++++++++++
>  drivers/gpu/drm/verisilicon/vs_drv.h     |  27 +++
>  drivers/gpu/drm/verisilicon/vs_modeset.c |  36 ++++
>  drivers/gpu/drm/verisilicon/vs_modeset.h |  10 +
>  include/uapi/drm/vs_drm.h                |  50 +++++
>  9 files changed, 375 insertions(+)
>  create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
>  create mode 100644 drivers/gpu/drm/verisilicon/Makefile
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.h
>  create mode 100644 include/uapi/drm/vs_drm.h
>
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index afb3b2f5f..9ede80ef9 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -363,6 +363,8 @@ source "drivers/gpu/drm/solomon/Kconfig"
>
>  source "drivers/gpu/drm/sprd/Kconfig"
>
> +source "drivers/gpu/drm/verisilicon/Kconfig"
> +
>  config DRM_HYPERV
>  	tristate "DRM Support for Hyper-V synthetic video device"
>  	depends on DRM && PCI && MMU && HYPERV
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 7a09a89b4..6db3bc397 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -194,3 +194,4 @@ obj-y			+= gud/
>  obj-$(CONFIG_DRM_HYPERV) += hyperv/
>  obj-y			+= solomon/
>  obj-$(CONFIG_DRM_SPRD) += sprd/
> +obj-$(CONFIG_DRM_VERISILICON) += verisilicon/
> diff --git a/drivers/gpu/drm/verisilicon/Kconfig b/drivers/gpu/drm/verisilicon/Kconfig
> new file mode 100644
> index 000000000..3a361f8c8
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/Kconfig
> @@ -0,0 +1,15 @@
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
> +	  This driver provides VeriSilicon kernel mode
> +	  setting and buffer management. It does not
> +	  provide 2D or 3D acceleration.
> +
> +
> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> new file mode 100644
> index 000000000..7d3be305b
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/Makefile
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +vs_drm-objs := vs_drv.o \
> +		vs_modeset.o
> +
> +obj-$(CONFIG_DRM_VERISILICON) += vs_drm.o
> +

Git complains about trailing whitespace and trailing newlines in this patch.
Here one of the instances.

> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.c b/drivers/gpu/drm/verisilicon/vs_drv.c
> new file mode 100644
> index 000000000..da7698c3d
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_drv.c
> @@ -0,0 +1,227 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#include <linux/component.h>
> +#include <linux/pm_runtime.h>
> +
> +#include <drm/drm_aperture.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_crtc_helper.h>
> +#include <drm/drm_fb_helper.h>
> +#include <drm/drm_fbdev_generic.h>
> +#include <drm/drm_file.h>
> +#include <drm/drm_gem_dma_helper.h>
> +#include <drm/drm_module.h>
> +#include <drm/drm_of.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_vblank.h>
> +
> +#include "vs_drv.h"
> +#include "vs_modeset.h"
> +
> +#define DRV_NAME	"verisilicon"
> +#define DRV_DESC	"Verisilicon DRM driver"
> +#define DRV_DATE	"20230516"
> +#define DRV_MAJOR	1
> +#define DRV_MINOR	0
> +
> +static int vs_gem_dumb_create(struct drm_file *file, struct drm_device *dev,
> +			      struct drm_mode_create_dumb *args)
> +{
> +	struct vs_drm_device *priv = to_vs_drm_private(dev);
> +
> +	unsigned int pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
> +
> +	if (args->bpp % 10)
> +		args->pitch = ALIGN(pitch, priv->pitch_alignment);
> +	else
> +		/* for costum 10bit format with no bit gaps */
> +		args->pitch = pitch;
> +
> +	return drm_gem_dma_dumb_create_internal(file, dev, args);
> +}
> +
> +DEFINE_DRM_GEM_FOPS(vs_drm_fops);
> +
> +static struct drm_driver vs_drm_driver = {
> +	.driver_features	= DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_GEM,
> +
> +	DRM_GEM_DMA_DRIVER_OPS_WITH_DUMB_CREATE(vs_gem_dumb_create),
> +
> +	.fops			= &vs_drm_fops,
> +	.name			= DRV_NAME,
> +	.desc			= DRV_DESC,
> +	.date			= DRV_DATE,
> +	.major			= DRV_MAJOR,
> +	.minor			= DRV_MINOR,
> +};
> +
> +static int vs_drm_bind(struct device *dev)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct vs_drm_device *priv;
> +	int ret;
> +	struct drm_device *drm_dev;
> +
> +	/* Remove existing drivers that may own the framebuffer memory. */
> +	ret = drm_aperture_remove_framebuffers(&vs_drm_driver);
> +	if (ret)
> +		return ret;
> +
> +	priv = devm_drm_dev_alloc(dev, &vs_drm_driver, struct vs_drm_device, base);
> +	if (IS_ERR(priv))
> +		return PTR_ERR(priv);
> +
> +	priv->pitch_alignment = 64;
> +
> +	ret = dma_set_coherent_mask(priv->base.dev, DMA_BIT_MASK(40));
> +	if (ret)
> +		return ret;
> +
> +	drm_dev = &priv->base;
> +	platform_set_drvdata(pdev, drm_dev);
> +
> +	vs_mode_config_init(drm_dev);
> +
> +	/* Now try and bind all our sub-components */
> +	ret = component_bind_all(dev, drm_dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
> +	if (ret)
> +		return ret;
> +
> +	drm_mode_config_reset(drm_dev);
> +
> +	drm_kms_helper_poll_init(drm_dev);
> +
> +	ret = drm_dev_register(drm_dev, 0);
> +	if (ret)
> +		return ret;
> +
> +	drm_fbdev_generic_setup(drm_dev, 32);
> +
> +	return 0;
> +}
> +
> +static void vs_drm_unbind(struct device *dev)
> +{
> +	struct drm_device *drm_dev = dev_get_drvdata(dev);
> +
> +	drm_dev_unregister(drm_dev);
> +	drm_kms_helper_poll_fini(drm_dev);
> +	component_unbind_all(drm_dev->dev, drm_dev);
> +}
> +
> +static const struct component_master_ops vs_drm_ops = {
> +	.bind = vs_drm_bind,
> +	.unbind = vs_drm_unbind,
> +};
> +
> +static struct platform_driver *drm_sub_drivers[] = {
> +
> +};
> +
> +static struct component_match *vs_drm_match_add(struct device *dev)
> +{
> +	struct component_match *match = NULL;
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(drm_sub_drivers); ++i) {
> +		struct platform_driver *drv = drm_sub_drivers[i];
> +		struct device *p = NULL, *d;
> +
> +		while ((d = platform_find_device_by_driver(p, &drv->driver))) {
> +			put_device(p);
> +
> +			component_match_add(dev, &match, component_compare_dev, d);
> +			p = d;
> +		}
> +		put_device(p);
> +	}
> +
> +	return match ? match : ERR_PTR(-ENODEV);
> +}
> +
> +static int vs_drm_platform_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct component_match *match;
> +
> +	match = vs_drm_match_add(dev);
> +	if (IS_ERR(match))
> +		return PTR_ERR(match);
> +
> +	return component_master_add_with_match(dev, &vs_drm_ops, match);
> +}
> +
> +static int vs_drm_platform_remove(struct platform_device *pdev)
> +{
> +	component_master_del(&pdev->dev, &vs_drm_ops);
> +	return 0;
> +}
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int vs_drm_suspend(struct device *dev)
> +{
> +	return drm_mode_config_helper_suspend(dev_get_drvdata(dev));
> +}
> +
> +static int vs_drm_resume(struct device *dev)
> +{
> +	drm_mode_config_helper_resume(dev_get_drvdata(dev));
> +
> +	return 0;
> +}
> +#endif
> +
> +static SIMPLE_DEV_PM_OPS(vs_drm_pm_ops, vs_drm_suspend, vs_drm_resume);
> +
> +static const struct of_device_id vs_drm_dt_ids[] = {
> +	{ .compatible = "starfive,display-subsystem", },
> +	{ },
> +};
> +
> +MODULE_DEVICE_TABLE(of, vs_drm_dt_ids);
> +
> +static struct platform_driver vs_drm_platform_driver = {
> +	.probe = vs_drm_platform_probe,
> +	.remove = vs_drm_platform_remove,
> +
> +	.driver = {
> +		.name = DRV_NAME,
> +		.of_match_table = vs_drm_dt_ids,
> +		.pm = &vs_drm_pm_ops,
> +	},
> +};
> +
> +static int __init vs_drm_init(void)
> +{
> +	int ret;
> +
> +	ret = platform_register_drivers(drm_sub_drivers, ARRAY_SIZE(drm_sub_drivers));
> +	if (ret)
> +		return ret;
> +
> +	ret = drm_platform_driver_register(&vs_drm_platform_driver);
> +	if (ret)
> +		platform_unregister_drivers(drm_sub_drivers, ARRAY_SIZE(drm_sub_drivers));
> +
> +	return ret;
> +}
> +
> +static void __exit vs_drm_fini(void)
> +{
> +	platform_driver_unregister(&vs_drm_platform_driver);
> +	platform_unregister_drivers(drm_sub_drivers, ARRAY_SIZE(drm_sub_drivers));
> +}
> +
> +module_init(vs_drm_init);
> +module_exit(vs_drm_fini);
> +
> +MODULE_DESCRIPTION("VeriSilicon DRM Driver");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.h b/drivers/gpu/drm/verisilicon/vs_drv.h
> new file mode 100644
> index 000000000..369ad22d6
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_drv.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#ifndef __VS_DRV_H__
> +#define __VS_DRV_H__
> +
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_gem.h>
> +#include <drm/drm_managed.h>
> +
> +/*@pitch_alignment: buffer pitch alignment required by sub-devices.*/
> +struct vs_drm_device {
> +	struct drm_device base;
> +	unsigned int pitch_alignment;
> +};
> +
> +static inline struct vs_drm_device *
> +to_vs_drm_private(const struct drm_device *dev)
> +{
> +	return container_of(dev, struct vs_drm_device, base);
> +}
> +
> +#endif /* __VS_DRV_H__ */
> diff --git a/drivers/gpu/drm/verisilicon/vs_modeset.c b/drivers/gpu/drm/verisilicon/vs_modeset.c
> new file mode 100644
> index 000000000..151272067
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_modeset.c
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#include <linux/module.h>
> +
> +#include <drm/drm_damage_helper.h>
> +#include <drm/drm_fb_helper.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
> +
> +#include "vs_modeset.h"
> +
> +static const struct drm_mode_config_funcs vs_mode_config_funcs = {
> +	.fb_create			 = drm_gem_fb_create,
> +	.atomic_check		 = drm_atomic_helper_check,
> +	.atomic_commit		 = drm_atomic_helper_commit,
> +};
> +
> +static struct drm_mode_config_helper_funcs vs_mode_config_helpers = {
> +	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
> +};
> +
> +void vs_mode_config_init(struct drm_device *dev)
> +{
> +	drm_mode_config_init(dev);
> +	dev->mode_config.fb_modifiers_not_supported = false;
> +
> +	dev->mode_config.min_width  = 0;
> +	dev->mode_config.min_height = 0;
> +	dev->mode_config.max_width  = 4096;
> +	dev->mode_config.max_height = 4096;
> +
> +	dev->mode_config.funcs = &vs_mode_config_funcs;
> +	dev->mode_config.helper_private = &vs_mode_config_helpers;
> +}
> diff --git a/drivers/gpu/drm/verisilicon/vs_modeset.h b/drivers/gpu/drm/verisilicon/vs_modeset.h
> new file mode 100644
> index 000000000..ebfe6d612
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_modeset.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2020 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#ifndef __VS_FB_H__
> +#define __VS_FB_H__
> +
> +void vs_mode_config_init(struct drm_device *dev);
> +#endif /* __VS_FB_H__ */
> diff --git a/include/uapi/drm/vs_drm.h b/include/uapi/drm/vs_drm.h
> new file mode 100644
> index 000000000..96b7fc95d
> --- /dev/null
> +++ b/include/uapi/drm/vs_drm.h
> @@ -0,0 +1,50 @@
> +/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
> +/*
> + * Copyright (C) 2020 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#ifndef __VS_DRM_H__
> +#define __VS_DRM_H__
> +
> +#include "drm.h"
> +
> +enum drm_vs_degamma_mode {
> +	VS_DEGAMMA_DISABLE = 0,
> +	VS_DEGAMMA_BT709 = 1,
> +	VS_DEGAMMA_BT2020 = 2,
> +};
> +
> +enum drm_vs_sync_dc_mode {
> +	VS_SINGLE_DC = 0,
> +	VS_MULTI_DC_PRIMARY = 1,
> +	VS_MULTI_DC_SECONDARY = 2,
> +};
> +
> +enum drm_vs_mmu_prefetch_mode {
> +	VS_MMU_PREFETCH_DISABLE = 0,
> +	VS_MMU_PREFETCH_ENABLE = 1,
> +};
> +
> +struct drm_vs_watermark {
> +	__u32 watermark;
> +	__u8 qos_low;
> +	__u8 qos_high;
> +};
> +
> +struct drm_vs_color_mgmt {
> +	__u32 colorkey;
> +	__u32 colorkey_high;
> +	__u32 clear_value;
> +	bool  clear_enable;
> +	bool  transparency;
> +};
> +
> +struct drm_vs_roi {
> +	bool enable;
> +	__u16 roi_x;
> +	__u16 roi_y;
> +	__u16 roi_w;
> +	__u16 roi_h;
> +};
> +
> +#endif /* __VS_DRM_H__ */
> --
> 2.34.1
>

