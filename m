Return-Path: <devicetree+bounces-33212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC5A832923
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 12:44:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 553942861F7
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 488CF4EB5B;
	Fri, 19 Jan 2024 11:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vrUSiG8X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1965F4EB27
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 11:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705664660; cv=none; b=C5niEMTAb/gjMn3eqgwfWm3Zo4Z6JPYukHJiUeGxTQnifWSPRUX+sMKWO1iC5vmO0UjDNDy0q9Wnw52czVQyHcm3hEXpUE6z8Q/sgvF86Mm9seBQ4ixxl2Jf9St9X+CIZdo5/i9lsr8Mg08KVFgNSA0kI75bSLH/Zo4pJK5vdxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705664660; c=relaxed/simple;
	bh=mF60unASc9afNmxL5MQ70oM6hhUep/SyqH/G62XJCf8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BWsX3gDxPP2Yg4lSF30MFFFERx+Xh9jsUHXCtADFKTDmhuxFAQtvdDjQn/HuqlLWmuAGg4Z0iLtIINKwAHR8qTiGvxOzh9O5OVHvXsz8p/U+QGGKuN2vQKSrPgP9n9ZoAFuGNr5PIx540lCZ2h/DHHDNjVhp5oOI9+OKTJu4s2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vrUSiG8X; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5f0c0ca5ef1so6710347b3.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 03:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705664657; x=1706269457; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7PYEUA5mJ1YHKP7Oh2k+8QM8qEV8euCh8GWXE3TNoB4=;
        b=vrUSiG8X6y2nyb8wJ/5fl4d1HcuQ4PpMDtcN4csrE1uYZUG9NedGC4FkK1ZttBbWl7
         aQoXmACmGrZibxVy+bnQyplWI+Ex0A7Y1KHZB467EjVzbow94PvPmEhyOPzkvpKH8r82
         nEmRX5N+hsVXcq/I3dkfjA2wJVI8nkFR7bKRADsIXVUj1Fdxk3fRhjrAUamBej73hn4o
         8moKLWNL7JRzgxuwSSDD25bKJVdvyhEOt1BZIZeun0coKD7iwhLILXfvwvbxvd9fkovY
         M4Bt7KROeGxJyseAm+jjAbsEaLujqjK5j8GPLKqntAVyb5XYPdlp6RpJsXFsDTz2R9y+
         Wxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705664657; x=1706269457;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7PYEUA5mJ1YHKP7Oh2k+8QM8qEV8euCh8GWXE3TNoB4=;
        b=wRBCcb6+0cbbPXYOwnwGOsO5suEWjYfkh65en3v+7si0X5J5IHlWiGD4RT1NZd2PYg
         BHQ4/xoB3/bSF7gzksKj7idTzhSGCUAF8b2qUux/E4cOC3Si6gYcifdTU1Fh8YakErqX
         mrYla52gU7r47es1Z7Zbl5OuMdnYrRupNtBYc0JoLI99m0xuRHvCidCqChNrFOwMi5iQ
         CU6XnYmYb5Uh1uE1x1PMzjGEWVulqdgUWp1wcQ8bQdXqMLhLGwZ/My0QIvizamz7GUR3
         +q32P2/2tC59wEWNIOMB6lARXbMgZkzhSQQedzIjd6RgPRHdlXuCM8HM2RJK8IykoUIB
         QgGA==
X-Gm-Message-State: AOJu0YwjyDz381qpt/tQhyRQUJgc2ou9Ctvz/I+NDY3BuAVKEpjNqlzT
	rkE787O2TMFNI+o+oayI1TuiyQYqg6L/ft1qBG0Gdm2vXh7B9xML8ajN3+Q7fLDnVOn4g/wKh7B
	Kgw0YowaiiSei3YGkQ8AUpl/NX1Qg+8n3+eUqhA==
X-Google-Smtp-Source: AGHT+IGqbqkbD6fW2EN1HO1MGH2/vvyUfQeHRTCzzVMdlXs43kYw3d6/IF14jXMxWRFgoIamJCPu3Y40u2FVCUSmQSY=
X-Received: by 2002:a81:720b:0:b0:5d7:a3f:fce3 with SMTP id
 n11-20020a81720b000000b005d70a3ffce3mr2262644ywc.8.1705664657042; Fri, 19 Jan
 2024 03:44:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240119104550.140061-1-angelogioacchino.delregno@collabora.com> <20240119104550.140061-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240119104550.140061-3-angelogioacchino.delregno@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 19 Jan 2024 13:44:06 +0200
Message-ID: <CAA8EJprroFtKvCeZtP_FySr5d6v4dogYQKFQvzPJLpwWBuMrKw@mail.gmail.com>
Subject: Re: [PATCH 2/2] usb: typec: mux: Add ITE IT5205 Alternate Mode
 Passive MUX driver
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	heikki.krogerus@linux.intel.com, matthias.bgg@gmail.com, 
	neil.armstrong@linaro.org, andersson@kernel.org, nathan@kernel.org, 
	luca.weiss@fairphone.com, tianping.fang@mediatek.com, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 19 Jan 2024 at 12:46, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The ITE IT5202 is a USB Type-C Alternate Mode Passive MUX, used for
> muxing the SBU lines of a Type-C port with DisplayPort altmode and
> also providing an orientation switch.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/usb/typec/mux/Kconfig  |  10 ++
>  drivers/usb/typec/mux/Makefile |   1 +
>  drivers/usb/typec/mux/it5205.c | 292 +++++++++++++++++++++++++++++++++
>  3 files changed, 303 insertions(+)
>  create mode 100644 drivers/usb/typec/mux/it5205.c
>
> diff --git a/drivers/usb/typec/mux/Kconfig b/drivers/usb/typec/mux/Kconfig
> index d2cb5e733e57..399c7b0983df 100644
> --- a/drivers/usb/typec/mux/Kconfig
> +++ b/drivers/usb/typec/mux/Kconfig
> @@ -36,6 +36,16 @@ config TYPEC_MUX_INTEL_PMC
>           control the USB role switch and also the multiplexer/demultiplexer
>           switches used with USB Type-C Alternate Modes.
>
> +config TYPEC_MUX_IT5205
> +       tristate "ITE IT5205 Type-C USB Alt Mode Passive MUX driver"
> +       depends on I2C
> +       select REGMAP_I2C
> +       help
> +         Driver for the ITE IT5205 Type-C USB Alternate Mode Passive MUX
> +         which provides support for muxing DisplayPort and sideband signals
> +         on a common USB Type-C connector.
> +         If compiled as a module, the module will be named it5205.
> +
>  config TYPEC_MUX_NB7VPQ904M
>         tristate "On Semiconductor NB7VPQ904M Type-C redriver driver"
>         depends on I2C
> diff --git a/drivers/usb/typec/mux/Makefile b/drivers/usb/typec/mux/Makefile
> index 57dc9ac6f8dc..bb96f30267af 100644
> --- a/drivers/usb/typec/mux/Makefile
> +++ b/drivers/usb/typec/mux/Makefile
> @@ -4,6 +4,7 @@ obj-$(CONFIG_TYPEC_MUX_FSA4480)         += fsa4480.o
>  obj-$(CONFIG_TYPEC_MUX_GPIO_SBU)       += gpio-sbu-mux.o
>  obj-$(CONFIG_TYPEC_MUX_PI3USB30532)    += pi3usb30532.o
>  obj-$(CONFIG_TYPEC_MUX_INTEL_PMC)      += intel_pmc_mux.o
> +obj-$(CONFIG_TYPEC_MUX_IT5205)         += it5205.o
>  obj-$(CONFIG_TYPEC_MUX_NB7VPQ904M)     += nb7vpq904m.o
>  obj-$(CONFIG_TYPEC_MUX_PTN36502)       += ptn36502.o
>  obj-$(CONFIG_TYPEC_MUX_WCD939X_USBSS)  += wcd939x-usbss.o
> diff --git a/drivers/usb/typec/mux/it5205.c b/drivers/usb/typec/mux/it5205.c
> new file mode 100644
> index 000000000000..99203b8a086d
> --- /dev/null
> +++ b/drivers/usb/typec/mux/it5205.c
> @@ -0,0 +1,292 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ITE IT5205 Type-C USB alternate mode passive mux
> + *
> + * Copyright (c) 2020 MediaTek Inc.
> + * Copyright (c) 2024 Collabora Ltd.
> + *                    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> + *
> + */
> +#include <linux/i2c.h>
> +#include <linux/kernel.h>
> +#include <linux/delay.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/mutex.h>
> +#include <linux/of_platform.h>
> +#include <linux/regmap.h>
> +#include <linux/usb/typec.h>
> +#include <linux/usb/typec_mux.h>
> +#include <linux/usb/typec_dp.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/gpio.h>
> +#include <linux/usb/tcpm.h>

I'd say, it is a usual custom to sort this list.

[skipped]

> +
> +static int it5205_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
> +{
> +       struct it5205 *it = typec_mux_get_drvdata(mux);
> +       u8 val;
> +
> +       switch (state->mode) {
> +       case TYPEC_STATE_USB:
> +               val = IT5205_USB;
> +               break;
> +       case TYPEC_DP_STATE_C:
> +               fallthrough;
> +       case TYPEC_DP_STATE_E:
> +               val = IT5205_DP;
> +               break;
> +       case TYPEC_DP_STATE_D:
> +               val = IT5205_DP_USB;
> +               break;
> +       case TYPEC_STATE_SAFE:
> +               fallthrough;
> +       default:
> +               val = 0;
> +               break;
> +       }

Please add a check for state->altmode. All states at TYPEC_STATE_MODAL
and above (which includes TYPEC_DP_STATE_[CDE]) are only relevant with
connection to the particular typec->altmode SVID.

> +
> +       return regmap_update_bits(it->regmap, IT5205_REG_MUXCR,
> +                                 IT5205_DP_USB_CTRL_MASK, val);
> +}
> +
> +static irqreturn_t it5205_irq_handler(int irq, void *data)
> +{
> +       struct it5205 *it = data;
> +       int ret;
> +       u32 val;
> +
> +       ret = regmap_read(it->regmap, IT5205_REG_ISR, &val);
> +       if (ret)
> +               return IRQ_NONE;
> +
> +       if (val & IT5205_ISR_CSBU_OVP) {
> +               dev_warn(&it->client->dev, "Overvoltage detected!\n");

Will it cut the voltage automatically?

> +
> +               /* Reset CSBU */
> +               regmap_update_bits(it->regmap, IT5205_REG_CSBUSR,
> +                                  IT5205_CSBUSR_SWITCH, 0);
> +               regmap_update_bits(it->regmap, IT5205_REG_CSBUSR,
> +                                  IT5205_CSBUSR_SWITCH, IT5205_CSBUSR_SWITCH);
> +       }
> +
> +       return IRQ_HANDLED;
> +}

The rest LGTM


-- 
With best wishes
Dmitry

