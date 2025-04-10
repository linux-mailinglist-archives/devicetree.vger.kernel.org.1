Return-Path: <devicetree+bounces-165210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D7AA83B63
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 09:37:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E71318842BF
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 07:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B0C1F1932;
	Thu, 10 Apr 2025 07:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9k1URoY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CF61D90AD;
	Thu, 10 Apr 2025 07:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744270581; cv=none; b=YSLjhXyn0/zc91fTqdwOsPbaibm0qh5+feNnNiCDqFuC3U1XHuWg5MBDsIFpNFsUSCfG3gEUzWE7MNLzKOTaDlZMqvFb6P+8FNXk1HUQVndSavFkWrwHFArcPLXbLjrB/DrzBlDXlOm0Xid5oByqmFWFza5A7RauhtxYOZ7MKng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744270581; c=relaxed/simple;
	bh=/NFqkxxxqXaQUxSCOyIdp5ab20f0TbRcKSw1DXoIYm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fcMTee2aJIsd5ZAoIVhG7WdC+GLWT3+HWNEUgbrKfCiTXoOIJJ9MmhooIPpwEJJeRhDYsNskdv9RYHmZyNm6UjVwHJ8J2lOZLsPNXafkVsRLK9vUJ1UNAosIrN5/04dP/RUbddcZEY8jpm/5TSMtT6FgbXukyGi792FNSiTGw20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9k1URoY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 168D5C4CEDD;
	Thu, 10 Apr 2025 07:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744270580;
	bh=/NFqkxxxqXaQUxSCOyIdp5ab20f0TbRcKSw1DXoIYm8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n9k1URoYtnKtpMy8mnGxEgMifeE86DAUptIfA9GB4IvU1HWlmNEsvu3kI9rdNDJZG
	 iVOmZ6NZV4pajZXkSaz+efbKwONru8Fha5S/Hc34E9NLsdOaD0OjsWb7mrwJifksdh
	 qW9AqfsabQuR8g7t7u6NPKdQmPWOXvSyDJSloLwDCVlSjQTmjByAedPQZiRrxYKjzP
	 Jun0UoxLWfqzBZQoLii/CvTlimvujBvxl/CdlEU8snBoyx4i9LcpS9+1MnFju2ppNe
	 cQWUsTbvkxrR9U5Il97R+sYb5AZMI/qE0TxKhY/VUdsmtXxciisjWH+o7WHbSeNIu5
	 8DndnNPunyQJQ==
Date: Thu, 10 Apr 2025 09:36:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nipun Gupta <nipun.gupta@amd.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org, 
	conor+dt@kernel.org, ogabbay@kernel.org, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	derek.kiernan@amd.com, dragan.cvetic@amd.com, arnd@arndb.de, praveen.jain@amd.com, 
	harpreet.anand@amd.com, nikhil.agarwal@amd.com, srivatsa@csail.mit.edu, code@tyhicks.com, 
	ptsm@linux.microsoft.com, herbert@gondor.apana.org.au, davem@davemloft.net, 
	linux-crypto@vger.kernel.org
Subject: Re: [PATCH v2 2/3] accel/amdpk: add driver for AMD PKI accelerator
Message-ID: <20250410-sly-inventive-squirrel-ddecbc@shite>
References: <20250409173033.2261755-1-nipun.gupta@amd.com>
 <20250409173033.2261755-2-nipun.gupta@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250409173033.2261755-2-nipun.gupta@amd.com>

On Wed, Apr 09, 2025 at 11:00:32PM GMT, Nipun Gupta wrote:
> The AMD PKI accelerator driver provides a accel interface to interact
> with the device for offloading and accelerating asymmetric crypto
> operations.
> 

For me this is clearly a crypto driver and you are supposed to:
1. Cc crypto maintaners,
2. Put it actually into crypto and use crypto API.


Limited review follows.

> Signed-off-by: Nipun Gupta <nipun.gupta@amd.com>
> ---
> 
> Changes RFC->v2:
> - moved from misc to accel
> - added architecture and compile test dependency in Kconfig
> - removed sysfs (and added debugfs in new patch 3/3)
> - fixed platform compat
> - removed redundant resource index 1 configuration (which was there in
>   RFC patch)
> 
>  MAINTAINERS                     |   2 +
>  drivers/accel/Kconfig           |   1 +
>  drivers/accel/Makefile          |   1 +
>  drivers/accel/amdpk/Kconfig     |  18 +
>  drivers/accel/amdpk/Makefile    |   8 +
>  drivers/accel/amdpk/amdpk_drv.c | 736 ++++++++++++++++++++++++++++++++
>  drivers/accel/amdpk/amdpk_drv.h | 271 ++++++++++++
>  include/uapi/drm/amdpk.h        |  49 +++
>  8 files changed, 1086 insertions(+)
>  create mode 100644 drivers/accel/amdpk/Kconfig
>  create mode 100644 drivers/accel/amdpk/Makefile
>  create mode 100644 drivers/accel/amdpk/amdpk_drv.c
>  create mode 100644 drivers/accel/amdpk/amdpk_drv.h
>  create mode 100644 include/uapi/drm/amdpk.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 11f8815daa77..cdc305a206aa 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1161,6 +1161,8 @@ L:	dri-devel@lists.freedesktop.org
>  S:	Maintained
>  T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
>  F:	Documentation/devicetree/bindings/accel/amd,versal-net-pki.yaml
> +F:	drivers/accel/amdpk/
> +F:	include/uapi/drm/amdpk.h
> 
>  AMD PMC DRIVER
>  M:	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>
> diff --git a/drivers/accel/Kconfig b/drivers/accel/Kconfig
> index 5b9490367a39..5632c6c62c15 100644
> --- a/drivers/accel/Kconfig
> +++ b/drivers/accel/Kconfig
> @@ -28,5 +28,6 @@ source "drivers/accel/amdxdna/Kconfig"
>  source "drivers/accel/habanalabs/Kconfig"
>  source "drivers/accel/ivpu/Kconfig"
>  source "drivers/accel/qaic/Kconfig"
> +source "drivers/accel/amdpk/Kconfig"

Why placing at the end?

> 
>  endif
> diff --git a/drivers/accel/Makefile b/drivers/accel/Makefile
> index a301fb6089d4..caea6d636ac8 100644
> --- a/drivers/accel/Makefile
> +++ b/drivers/accel/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_DRM_ACCEL_AMDXDNA)		+= amdxdna/
>  obj-$(CONFIG_DRM_ACCEL_HABANALABS)	+= habanalabs/
>  obj-$(CONFIG_DRM_ACCEL_IVPU)		+= ivpu/
>  obj-$(CONFIG_DRM_ACCEL_QAIC)		+= qaic/
> +obj-$(CONFIG_DRM_ACCEL_AMDPK)		+= amdpk/

Did you just add it to the end breaking any ordering? Look, there is
already AMD entry in the context.

> diff --git a/drivers/accel/amdpk/Kconfig b/drivers/accel/amdpk/Kconfig
> new file mode 100644
> index 000000000000..c0b459bb66a7
> --- /dev/null
> +++ b/drivers/accel/amdpk/Kconfig
> @@ -0,0 +1,18 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Makefile for AMD PKI accelerator for versal-net
> +#
> +
> +config DRM_ACCEL_AMDPK
> +	tristate "AMD PKI accelerator for versal-net"
> +	depends on DRM_ACCEL
> +	depends on ARM64 || COMPILE_TEST

What do you need from arm64? I don't see it from the code at all.

> +	help
> +	  Enables platform driver for AMD PKI accelerator that are designed
> +	  for high performance Public Key asymmetric crypto operations on AMD
> +	  versal-net.
> +
> +	  If unsure, say N.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called amdpk.

...

> +static void amdpk_remove_device(struct amdpk_dev *pkdev)
> +{
> +	drm_dev_unplug(&pkdev->ddev);
> +	pk_wrreg(pkdev->regs, REG_IRQ_ENABLE, 0);
> +	ida_destroy(&pkdev->avail_queues);
> +}
> +
> +static int amdpk_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct amdpk_dev *pkdev;
> +	struct resource *memres;
> +	int irq, ret;
> +
> +	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> +	if (ret < 0)
> +		return ret;
> +
> +	pkdev = devm_drm_dev_alloc(dev, &amdpk_accel_driver, typeof(*pkdev), ddev);
> +	if (IS_ERR(pkdev))
> +		return PTR_ERR(pkdev);
> +	pkdev->dev = dev;
> +
> +	memres = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	pkdev->regs = devm_ioremap_resource(dev, memres);

Use wrapper for these two.

> +	if (IS_ERR(pkdev->regs))
> +		return PTR_ERR(pkdev->regs);
> +	pkdev->regsphys = memres->start;
> +	platform_set_drvdata(pdev, pkdev);
> +
> +	if (platform_irq_count(pdev) != 1)

Drop, what's the benefit? DT schema ensures you have only one entry.

> +		return -ENODEV;
> +
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0)
> +		return -ENODEV;
> +
> +	ret = drm_dev_register(&pkdev->ddev, 0);
> +	if (ret) {
> +		dev_err(&pdev->dev, "DRM register failed, ret %d", ret);
> +		return ret;
> +	}
> +
> +	return amdpk_create_device(pkdev, dev, irq);
> +}
> +
> +static void amdpk_remove(struct platform_device *pdev)
> +{
> +	struct amdpk_dev *pkdev = platform_get_drvdata(pdev);
> +
> +	amdpk_remove_device(pkdev);
> +}
> +
> +static void amdpk_shutdown(struct platform_device *pdev)
> +{
> +	amdpk_remove(pdev);

I am not sure why this is necessary. Please provide comment WHY you
need it. IOW, why do you need to disable IRQ manually here if the entire
system is shutting down?

> +}
> +
> +static const struct of_device_id amdpk_match_table[] = {
> +	{ .compatible = "amd,versal-net-pki" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, amdpk_match_table);
> +
> +static struct platform_driver amdpk_pdrv = {
> +	.probe = amdpk_probe,
> +	.remove = amdpk_remove,
> +	.shutdown = amdpk_shutdown,
> +	.driver = {
> +		.name = DRIVER_NAME,
> +		.of_match_table = amdpk_match_table,
> +	},
> +};
> +
> +static int __init amdpk_init(void)
> +{
> +	int ret;
> +
> +	ret = platform_driver_register(&amdpk_pdrv);
> +	if (ret) {
> +		pr_err("can't register platform driver\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static void __exit amdpk_exit(void)
> +{
> +	platform_driver_unregister(&amdpk_pdrv);
> +}
> +
> +module_init(amdpk_init);
> +module_exit(amdpk_exit);

Why do you need to open code module_platform_driver?

Best regards,
Krzysztof


