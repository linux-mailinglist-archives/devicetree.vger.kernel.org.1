Return-Path: <devicetree+bounces-230031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BC7BFF0F1
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 37FDA352753
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 519152741D1;
	Thu, 23 Oct 2025 04:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OmW0jC/A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110242472A6
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761192281; cv=none; b=LZnEdcZ5nGFXk+RppeBkQxNy6UgrGmcAE3chV7OqB7P9XDrZniEWXl+ngHSY+VZS/GlU+znz3dri5pw2dYouKsH0wX1QxD1tnOfc6oM1GlddGZdpojOHXCfS+bjzhOujLuRhKaYXq5EusSneQhyIzfC8zQhY7o3iAiSf/zJNIOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761192281; c=relaxed/simple;
	bh=VbiuVZ6RBebsfqyvVJ5Ds+gMyCUnbR04fiSy1wFclDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NuF+vFWMxW3Zf4Z68SAPlnJ7roakOdrXfOu4uzbZpFkhyzqftPqGA7Z4uLrSISkf3vJgvEDPqdOqGi0FDwEhSceKdYXWUHMl5L76tZHZT4X+huJgjBU4UAS+KtdK5N0JvcscQiNIzv5AzlZGHmzUZ5mHxSKx6noSozg3p1cZREU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OmW0jC/A; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-63c0eb94ac3so605020a12.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 21:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761192277; x=1761797077; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HHSZMDPvtfAX1xsUrEgKm9tbChBih95VIvPG69sbWIA=;
        b=OmW0jC/A2MeYOY+X11md1QEu+nxH9C3QMEqvjPZhMsD75B+NMNBbOG8wacwpZiwVcB
         02fWGea9YivvrVZEyvx8HGKXKwFitZMeh8XkpyGtmGHmlN4jXTfkYdIfTlbdqYQGXIA5
         4mNBsXNh3mxBt36wxXmx6rSkfBT1voaHThz4p7SnNV/vSW97yOIJxdiwiO+Goct2ae0S
         ozBJPki4wpY8/7ie62wJCz48Y3odP6wjeLbmGCw4ey4XQHQ2X4z4s1Nf1qjWx0pWn0kR
         CZq6SPZyZZHEsD837ZGKK5Cs9riXpgY7gv5gM6n9ODGwMAGsXVMoGLGxpTNBDt0ORuXi
         DzvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761192277; x=1761797077;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HHSZMDPvtfAX1xsUrEgKm9tbChBih95VIvPG69sbWIA=;
        b=X952g+CN03WLsL4V2Cq5nX6AWngTOxh00wcGgF/w7CIMZ/rkqcmT+lFhSWgUY82JVX
         wFKlhkCGb5VduyGvrBgg1GjKrALUpQpim3IZX7YyS05iDgvWBf6GskvwvtktQtaymiPV
         T+uZJHoKWflwXRZVdkT3/i2UjzZtIPTzyIYP2X4Zr2F/pgZycxwxp1w0DrDVg1QStyG3
         lPGpDlSqmqmxEomjaZdjriRkIrBqLoYRpAG/IDy2uEOWT6yb8sq29tulibOphT85N0r5
         yt9P5c9wqihy1crUNILya1g0ybQYOo7ZCUn0pOaMjhyaEM/rSyrTXzQJC+iUr7qApyxu
         JVmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUL7DAH5TxSvrsiW03IMuNi24aJhC08gpCL0Ee8sJJiBufGP/WE3qc9ylAx8FNbzyyaJb1Rya+fX2X@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3JHhhoryOS9vVQqs/pzyqMb1vZesBw7y5prCFrWTGy+TUAV0/
	Cqau/asHYNq37gBmggjcLos1LC0aL8jHNgv5cLgusYQhADqIZ9XdflvFzgqkzceBbuY=
X-Gm-Gg: ASbGncua4PIVIs6yepVrJCzOvUiL0ynuOvW7JEUJPXPLJrdnXUV93Wa+g+Z3fklY8Ir
	qA/9/+nGLtiPnck3kEDn8eUa9Q8s30jEu8sutlt0/R5VvOATI7Io+kQ9Qal6Eogqp6QZKucmANU
	FKKg0V28v9wG3STo3cseNn8i3AzchXGFev6bc1Vp8ZWSUYwR1TDprxyHtzdnEJhge8OTwCL342B
	36HkATuclwxGQeWqfUn96PPYXPLJrlHSAES/uu8d2WtAlMkg5pHKoGYQz2JiuhfzpDjLl3LovaW
	aqQJyHCp326uMLa+XRaTlV/i+Wnp94WbXIS/Ymh/GUI8lh1L7PNkTQu7BAwpRtgDyGQDNuwgTbH
	XNE4oXue2a3gg43gOp0UPAgU+/NL9obQQfM6CLHcx6h9YZFYwaFabozk5oHtuKbvbEcR4EoWIwp
	rJ1jDN82i7
X-Google-Smtp-Source: AGHT+IGJiS3xjlcmck6jYeKg58UKDvZ1VJYr2SNmkONX0VTIjq/vCHDBgtScrL9mLTDQswuRHlg1UQ==
X-Received: by 2002:a50:c949:0:b0:637:e271:8071 with SMTP id 4fb4d7f45d1cf-63c1f6d5dd8mr18546472a12.27.1761192276905;
        Wed, 22 Oct 2025 21:04:36 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3ebb3738sm579215a12.3.2025.10.22.21.04.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 21:04:35 -0700 (PDT)
Message-ID: <41dbea85-8aa1-4034-8106-e28c37e398b8@tuxon.dev>
Date: Thu, 23 Oct 2025 07:04:33 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/9] soc: microchip: add mfd drivers for two syscon
 regions on PolarFire SoC
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 pierre-henry.moussay@microchip.com, valentina.fernandezalanis@microchip.com,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251013-album-bovine-faf9f5ebc5d4@spud>
 <20251013-patient-matrimony-6162c8f92e2e@spud>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251013-patient-matrimony-6162c8f92e2e@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Conor,

On 10/13/25 20:45, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> The control-scb and mss-top-sysreg regions on PolarFire SoC both fulfill
> multiple purposes. The former is used for mailbox functions in addition
> to the temperature & voltage sensor while the latter is used for clocks,
> resets, interrupt muxing and pinctrl.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  drivers/soc/microchip/Kconfig               | 13 ++++++
>  drivers/soc/microchip/Makefile              |  1 +
>  drivers/soc/microchip/mpfs-control-scb.c    | 45 +++++++++++++++++++
>  drivers/soc/microchip/mpfs-mss-top-sysreg.c | 48 +++++++++++++++++++++
>  4 files changed, 107 insertions(+)
>  create mode 100644 drivers/soc/microchip/mpfs-control-scb.c
>  create mode 100644 drivers/soc/microchip/mpfs-mss-top-sysreg.c
> 
> diff --git a/drivers/soc/microchip/Kconfig b/drivers/soc/microchip/Kconfig
> index 19f4b576f822..31d188311e05 100644
> --- a/drivers/soc/microchip/Kconfig
> +++ b/drivers/soc/microchip/Kconfig
> @@ -9,3 +9,16 @@ config POLARFIRE_SOC_SYS_CTRL
>  	  module will be called mpfs_system_controller.
>  
>  	  If unsure, say N.
> +
> +config POLARFIRE_SOC_SYSCONS
> +	bool "PolarFire SoC (MPFS) syscon drivers"
> +	default y
> +	depends on ARCH_MICROCHIP
> +	select MFD_CORE
> +	help
> +	  These drivers add support for the syscons on PolarFire SoC (MPFS).
> +	  Without these drivers core parts of the kernel such as clocks
> +	  and resets will not function correctly.
> +
> +	  If unsure, and on a PolarFire SoC, say y.
> +

This empty line could be dropped.

> diff --git a/drivers/soc/microchip/Makefile b/drivers/soc/microchip/Makefile
> index 14489919fe4b..1a3a1594b089 100644
> --- a/drivers/soc/microchip/Makefile
> +++ b/drivers/soc/microchip/Makefile
> @@ -1 +1,2 @@
>  obj-$(CONFIG_POLARFIRE_SOC_SYS_CTRL)	+= mpfs-sys-controller.o
> +obj-$(CONFIG_POLARFIRE_SOC_SYSCONS)	+= mpfs-control-scb.o mpfs-mss-top-sysreg.o
> diff --git a/drivers/soc/microchip/mpfs-control-scb.c b/drivers/soc/microchip/mpfs-control-scb.c
> new file mode 100644
> index 000000000000..d1a8e79c232e
> --- /dev/null
> +++ b/drivers/soc/microchip/mpfs-control-scb.c
> @@ -0,0 +1,45 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/array_size.h>

Looks like this one can be dropped or maybe you want to use
ARRAY_SIZE(mpfs_control_scb_devs) as 4th argument of mfd_add_devices().

> +#include <linux/of.h>
> +#include <linux/of_address.h>

Looks like this one can be dropped.

> +#include <linux/mfd/core.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/of_platform.h>

Same with this one?

> +#include <linux/platform_device.h>
> +
> +static const struct mfd_cell mpfs_control_scb_devs[] = {
> +	{ .name = "mpfs-tvs", },

I think you can use:

MFD_CELL_NAME("mpfs-tvs")

> +};
> +
> +static int mpfs_control_scb_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	int ret;
> +
> +	ret = mfd_add_devices(dev, PLATFORM_DEVID_NONE, mpfs_control_scb_devs,
> +			      1, NULL, 0, NULL);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

You can use directly:

	return mfd_add_device(...);

> +}
> +
> +static const struct of_device_id mpfs_control_scb_of_match[] = {
> +	{.compatible = "microchip,mpfs-control-scb", },

This looks un-documented.

> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mpfs_control_scb_of_match);
> +
> +static struct platform_driver mpfs_control_scb_driver = {
> +	.driver = {
> +		.name = "mpfs-control-scb",
> +		.of_match_table = mpfs_control_scb_of_match,
> +	},
> +	.probe = mpfs_control_scb_probe,
> +};
> +module_platform_driver(mpfs_control_scb_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Conor Dooley <conor.dooley@microchip.com>");
> +MODULE_DESCRIPTION("PolarFire SoC control scb driver");
> diff --git a/drivers/soc/microchip/mpfs-mss-top-sysreg.c b/drivers/soc/microchip/mpfs-mss-top-sysreg.c
> new file mode 100644
> index 000000000000..9b2e7b84cdba
> --- /dev/null
> +++ b/drivers/soc/microchip/mpfs-mss-top-sysreg.c
> @@ -0,0 +1,48 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/array_size.h>

Looks like this one can be dropped or maybe you want to use
ARRAY_SIZE(mpfs_mss_top_sysreg_devs) as 4th argument of mfd_add_devices()

> +#include <linux/of.h>
> +#include <linux/of_address.h>

Unused?

> +#include <linux/mfd/core.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/of_platform.h>

Unused?

> +#include <linux/platform_device.h>
> +
> +static const struct mfd_cell mpfs_mss_top_sysreg_devs[] = {
> +	{ .name = "mpfs-reset", },

MFD_CELL_NAME() ?

> +};
> +
> +static int mpfs_mss_top_sysreg_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	int ret;
> +
> +	ret = mfd_add_devices(dev, PLATFORM_DEVID_NONE, mpfs_mss_top_sysreg_devs,
> +			      1, NULL, 0, NULL);
> +	if (ret)
> +		return ret;
> +
> +	if (devm_of_platform_populate(dev))
> +		dev_err(dev, "Error populating children\n");

Is it OK return 0 above if there are failures here?

> +
> +	return 0;
> +}
> +
> +static const struct of_device_id mpfs_mss_top_sysreg_of_match[] = {
> +	{.compatible = "microchip,mpfs-mss-top-sysreg", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mpfs_mss_top_sysreg_of_match);
> +
> +static struct platform_driver mpfs_mss_top_sysreg_driver = {
> +	.driver = {
> +		.name = "mpfs-mss-top-sysreg",
> +		.of_match_table = mpfs_mss_top_sysreg_of_match,
> +	},
> +	.probe = mpfs_mss_top_sysreg_probe,
> +};
> +module_platform_driver(mpfs_mss_top_sysreg_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Conor Dooley <conor.dooley@microchip.com>");
> +MODULE_DESCRIPTION("PolarFire SoC mss top sysreg driver");


