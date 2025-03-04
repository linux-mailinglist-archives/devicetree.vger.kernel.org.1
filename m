Return-Path: <devicetree+bounces-153684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D5FA4D81B
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:26:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF74E16E2A6
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F00571FE45C;
	Tue,  4 Mar 2025 09:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="H8jehxoa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB001FDE02
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 09:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741080321; cv=none; b=N3ij+kLKlR54PxOosj1O+EvPbKWqUpeE9F62TPJTYFLRGJFnpcig7sBB0poUhUznvVysHfzdNNF1AfgMvACdRcgd0nK3smkFqRjU7ohaZKyaS7tSxDT7qnR2kYP2cz5RLWtVVsYXBnseZR7SV/gusM5ZTJQqxbrNhqiui1HH7aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741080321; c=relaxed/simple;
	bh=xRC63YN3+rHHCv+C8M4xBY81AdOzVX+WwK/6KZrNcDs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W7bH/ZuVifZJoFhNPiEUaJ/1//llD3Wu5spPJ7OVdlydtdVgk2FqBxYJBfffcqSdx8VTUY+CR+IMmYQ6Fa+l33EXHMId3GDinpgqUKdhOCMB/Qg39q+kw+W6qQKVUcDShQDi42pq/jCRj2ga01ET6axRBDLfqbB7waHwXksk14U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=H8jehxoa; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3078fb1fa28so47265551fa.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 01:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741080315; x=1741685115; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WNHGZZAfC/OeouxLYsdw1LTwRghW2GqRfwvXDc9ArBc=;
        b=H8jehxoaGE94GBwzsL2Jg+wwXvOwmQ79qqLwyyCfZkfIgEAPLg0xuq0Tr/DfO+azFS
         6Uz1OFtDbhSK/+3iNWPeFr8fusAE0uP5BRTBi3E1pG7eQ1OzoWZ0+7oAuT+tLZe1bBC0
         i3ijAKjGQikQGwZaxW1LsnB9n4A1nDwP1VkFXg6vDrOE9qPPm6MCoIzLsTok3N7oTIar
         OZCtRy5rAyKjc4PD6OSarw1qKtR88tQNlq++7CidnoYzev7/2uIu2bB87veuAYDgxvna
         oOw4h+DOYbA2HrdRVI3xW4+XqPVaABCiaDd1o/6QLxbEvS06M3l3K8BtQKWfCFm+Pxpk
         LyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741080315; x=1741685115;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WNHGZZAfC/OeouxLYsdw1LTwRghW2GqRfwvXDc9ArBc=;
        b=JumziVncVsqdPvSMPWcbdhmj6cynt4TWp3qZOcD0aQk1ev+5zWEtY4nGylMEvmSz26
         NYAhKwlkp/FdaqFMKjX+gGnFMRCTmaJVDDdOqT9YwRcxIZvIzlyDbyNVjI6wpCCP33Tc
         6ziJYS/h+RRvo2o2n5iwt/xFXDci8m3lqzRAa6mSym4rNnJe4rd/0RKL/mYyrfGOXPp/
         1MTcCyaKajv/1bnHwXzra5Y3uw06KqTZO8B+5o4mf1mTfbO+hF3oG+3Pya5jKughkErv
         2WfLMcc1Djcavpo0R8AZ+G03xva1E5aU8Xeb+VbwEAZUM9PqE2zmrsBIa9Y1hQvIOGfs
         /7Yg==
X-Forwarded-Encrypted: i=1; AJvYcCXyy21zPgUd77d0YVmpXzqaJfou7iVjLOivFrXucO+is6cqRKe8cCj1SVVU+EOMWi/tW4HMr6cUNzjj@vger.kernel.org
X-Gm-Message-State: AOJu0YwnWRtlHyWFKG5pS4acKFYH01qSQtTY8D3EelYTrx7JVunwNFJS
	OzF3cpKET5B51YgOB8Ngjg6FBWDKX3lQapK/8IDTqhJRFxUyNuTww2Ptnw9gRLeZnFPTluGmuSb
	4mNCcuYMhiN6KrTz60845fHfGBajSCVZMCDV39w==
X-Gm-Gg: ASbGncss6qimP+EYlQ+QDBc6gRDmJtc1VW6SRAn0a9Z/UGjBsupLieEDjuVAiu41Tu/
	tg+pMW/hDKmaHDTZoAPrnxWKbgWxjm4ZURzpEs11y2C2FqpuHc4pbbCBLU+vk4EMW6DP7ez8pi6
	xsGLbetPRvPpHL6KQ645dN8A13Zw==
X-Google-Smtp-Source: AGHT+IGBR2saDF3QQilBjubdBkLz9GIwt81EvLWpbxtqjDwEqBVukkswrlVo60Wa8sQgAwNowo9qt17F/oOZ+WCjClQ=
X-Received: by 2002:a2e:9c92:0:b0:308:e803:1180 with SMTP id
 38308e7fff4ca-30b9344cee6mr42882981fa.31.1741080315257; Tue, 04 Mar 2025
 01:25:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1740993491.git.mazziesaccount@gmail.com> <e71c63c2f61135f9a8c7884525aab2c48f1e84c2.1740993491.git.mazziesaccount@gmail.com>
In-Reply-To: <e71c63c2f61135f9a8c7884525aab2c48f1e84c2.1740993491.git.mazziesaccount@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 4 Mar 2025 10:25:03 +0100
X-Gm-Features: AQ5f1JpLki6dbkM9Ig67nt3sfSzm1pr_ewW2yyuU-GO1iNjarygbWgXgDim39ws
Message-ID: <CAMknhBGQaqFZJsPAoauZL4S5MYtN05EOQ-BO2vw5gH+Z2RLOhw@mail.gmail.com>
Subject: Re: [PATCH v5 03/10] iio: adc: add helpers for parsing ADC nodes
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Hugo Villeneuve <hvilleneuve@dimonoff.com>, Nuno Sa <nuno.sa@analog.com>, 
	Javier Carrasco <javier.carrasco.cruz@gmail.com>, Guillaume Stols <gstols@baylibre.com>, 
	Dumitru Ceclan <mitrutzceclan@gmail.com>, Trevor Gamblin <tgamblin@baylibre.com>, 
	Matteo Martelli <matteomartelli3@gmail.com>, Alisa-Dariana Roman <alisadariana@gmail.com>, 
	Ramona Alexandra Nechita <ramona.nechita@analog.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 3, 2025 at 12:32=E2=80=AFPM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:
>
> There are ADC ICs which may have some of the AIN pins usable for other
> functions. These ICs may have some of the AIN pins wired so that they
> should not be used for ADC.
>
> (Preferred?) way for marking pins which can be used as ADC inputs is to
> add corresponding channels@N nodes in the device tree as described in
> the ADC binding yaml.
>
> Add couple of helper functions which can be used to retrieve the channel
> information from the device node.
>
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
>
> ---
> Revision history:
> v4 =3D> v5:
> - Inline iio_adc_device_num_channels()
> - Fix Indenting function parameters
> - Combine the max channel ID checks.
> v3 =3D> v4:
>  - Drop diff-channel support
>  - Drop iio_adc_device_channels_by_property()
>  - Add IIO_DEVICE namespace
>  - Move industrialio-adc.o to top of the Makefile
>  - Some styling as suggested by Andy
>  - Re-consider included headers
> v2 =3D> v3: Mostly based on review comments by Jonathan
>  - Support differential and single-ended channels
>  - Rename iio_adc_device_get_channels() as
>    iio_adc_device_channels_by_property()
>  - Improve spelling
>  - Drop support for cases where DT comes from parent device's node
>  - Decrease loop indent by reverting node name check conditions
>  - Don't set 'chan->indexed' by number of channels to keep the
>    interface consistent no matter how many channels are connected.
>  - Fix ID range check and related comment
> RFC v1 =3D> v2:
>  - New patch
> ---
>  drivers/iio/adc/Kconfig            |  3 ++
>  drivers/iio/adc/Makefile           |  2 +
>  drivers/iio/adc/industrialio-adc.c | 82 ++++++++++++++++++++++++++++++
>  include/linux/iio/adc-helpers.h    | 27 ++++++++++
>  4 files changed, 114 insertions(+)
>  create mode 100644 drivers/iio/adc/industrialio-adc.c
>  create mode 100644 include/linux/iio/adc-helpers.h
>
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index 849c90203071..37b70a65da6f 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -6,6 +6,9 @@
>
>  menu "Analog to digital converters"
>
> +config IIO_ADC_HELPER
> +       tristate
> +
>  config AB8500_GPADC
>         bool "ST-Ericsson AB8500 GPADC driver"
>         depends on AB8500_CORE && REGULATOR_AB8500
> diff --git a/drivers/iio/adc/Makefile b/drivers/iio/adc/Makefile
> index ee19afba62b7..1c410f483029 100644
> --- a/drivers/iio/adc/Makefile
> +++ b/drivers/iio/adc/Makefile
> @@ -3,6 +3,8 @@
>  # Makefile for IIO ADC drivers
>  #
>
> +obj-$(CONFIG_IIO_ADC_HELPER) +=3D industrialio-adc.o
> +
>  # When adding new entries keep the list in alphabetical order
>  obj-$(CONFIG_AB8500_GPADC) +=3D ab8500-gpadc.o
>  obj-$(CONFIG_AD_SIGMA_DELTA) +=3D ad_sigma_delta.o
> diff --git a/drivers/iio/adc/industrialio-adc.c b/drivers/iio/adc/industr=
ialio-adc.c
> new file mode 100644
> index 000000000000..7bdae5330224
> --- /dev/null
> +++ b/drivers/iio/adc/industrialio-adc.c
> @@ -0,0 +1,82 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Helpers for parsing common ADC information from a firmware node.
> + *
> + * Copyright (c) 2025 Matti Vaittinen <mazziesaccount@gmail.com>
> + */
> +
> +#include <linux/device.h>
> +#include <linux/errno.h>
> +#include <linux/export.h>
> +#include <linux/module.h>
> +#include <linux/property.h>
> +#include <linux/types.h>
> +
> +#include <linux/iio/adc-helpers.h>
> +#include <linux/iio/iio.h>
> +
> +/**
> + * devm_iio_adc_device_alloc_chaninfo_se - allocate and fill iio_chan_sp=
ec for ADC
> + *
> + * Scan the device node for single-ended ADC channel information. Channe=
l ID is
> + * expected to be found from the "reg" property. Allocate and populate t=
he
> + * iio_chan_spec structure corresponding to channels that are found. The=
 memory
> + * for iio_chan_spec structure will be freed upon device detach.
> + *
> + * @dev:               Pointer to the ADC device.
> + * @template:          Template iio_chan_spec from which the fields of a=
ll
> + *                     found and allocated channels are initialized.
> + * @max_chan_id:       Maximum value of a channel ID. Use -1 if no check=
ing
> + *                     is required.
> + * @cs:                        Location where pointer to allocated iio_c=
han_spec
> + *                     should be stored.
> + *
> + * Return:     Number of found channels on succes. Negative value to ind=
icate

s/succes/success/

> + *             failure.
> + */
> +int devm_iio_adc_device_alloc_chaninfo_se(struct device *dev,
> +                                         const struct iio_chan_spec *tem=
plate,
> +                                         int max_chan_id,
> +                                         struct iio_chan_spec **cs)
> +{
> +       struct iio_chan_spec *chan_array, *chan;
> +       int num_chan =3D 0, ret;
> +
> +       num_chan =3D iio_adc_device_num_channels(dev);
> +       if (num_chan < 1)
> +               return num_chan;
> +
> +       chan_array =3D devm_kcalloc(dev, num_chan, sizeof(*chan_array),
> +                                 GFP_KERNEL);
> +       if (!chan_array)
> +               return -ENOMEM;
> +
> +       chan =3D &chan_array[0];
> +
> +       device_for_each_child_node_scoped(dev, child) {
> +               u32 ch;
> +
> +               if (!fwnode_name_eq(child, "channel"))
> +                       continue;
> +
> +               ret =3D fwnode_property_read_u32(child, "reg", &ch);
> +               if (ret)
> +                       return ret;
> +
> +               if (max_chan_id !=3D -1 && ch > max_chan_id)
> +                       return -ERANGE;
> +

Should we use return dev_err_probe() on these to help with debugging a bad =
dtb?

> +               *chan =3D *template;
> +               chan->channel =3D ch;
> +               chan++;
> +       }
> +
> +       *cs =3D chan_array;
> +
> +       return num_chan;
> +}
> +EXPORT_SYMBOL_NS_GPL(devm_iio_adc_device_alloc_chaninfo_se, "IIO_DRIVER"=
);

We can make this less verbose by setting #define
DEFAULT_SYMBOL_NAMESPACE at the start of the file. Then we can just do
EXPORT_SYMBOL_GPL() throughout the rest of the file.

Also, I would prefer if the namespace matched config name (IIO_ADC_HELPER).

> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Matti Vaittinen <mazziesaccount@gmail.com>");
> +MODULE_DESCRIPTION("IIO ADC fwnode parsing helpers");
> diff --git a/include/linux/iio/adc-helpers.h b/include/linux/iio/adc-help=
ers.h
> new file mode 100644
> index 000000000000..403a70b109ec
> --- /dev/null
> +++ b/include/linux/iio/adc-helpers.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +/*
> + * The industrial I/O ADC firmware property parsing helpers
> + *
> + * Copyright (c) 2025 Matti Vaittinen <mazziesaccount@gmail.com>
> + */
> +
> +#ifndef _INDUSTRIAL_IO_ADC_HELPERS_H_
> +#define _INDUSTRIAL_IO_ADC_HELPERS_H_
> +
> +#include <linux/property.h>
> +
> +struct device;
> +struct iio_chan_spec;
> +
> +static inline int iio_adc_device_num_channels(struct device *dev)
> +{
> +       return device_get_child_node_count_named(dev, "channel");
> +}
> +
> +int devm_iio_adc_device_alloc_chaninfo_se(struct device *dev,
> +                                         const struct iio_chan_spec *tem=
plate,
> +                                         int max_chan_id,
> +                                         struct iio_chan_spec **cs);
> +

There are some different opinions on this, but on the last patch I did
introducing a new namespace, the consensus seems to be that putting
the MODULE_IMPORT_NS() in the header file was convenient so that users
of the API don't have to remember to both include the header and add
the import macro.

> +#endif /* _INDUSTRIAL_IO_ADC_HELPERS_H_ */
> --
> 2.48.1
>

