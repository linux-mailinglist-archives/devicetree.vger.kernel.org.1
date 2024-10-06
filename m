Return-Path: <devicetree+bounces-108186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CED991F76
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 17:41:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D272CB215E1
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 15:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4810187334;
	Sun,  6 Oct 2024 15:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FdGI/gJL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C445A186E5E
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 15:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728229257; cv=none; b=T3lBQB3PCOHDfNoH4InHUY0UBOzx/pUWj0fhipwwz7yI7y8Z3y4AhAXcwQXtxw1sATTWOil1WNfLUIXJDOMdv1UlWmJaoJZGAW7DottgBWrBbB2uXm2R893S4xTQtePxbATNgh5HKwEyu/mlrZ80ObebHgNwASqU/Nxg+Ud75s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728229257; c=relaxed/simple;
	bh=5XFYMErm3QXNEO9vBjIy4AHRtZyoY/zPDUyXNpRYd5g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hNQHHKfdPlKSP8MLvou/4vqT31y9/SoSgcuEWUMV3RRgoKvh3LKI7jyDoKPOT+wR3OGsLckAYKqEbGpK5r2t/2E4S+J7KcOo2WKhmoyX1O9vNTRbu6pIzTlys+uo0+5oMAAlxNos7Ar1R01gnrcdpJEFg6kIoCzMjGGqX1UhhMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FdGI/gJL; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so4733949e87.0
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 08:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728229254; x=1728834054; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jSmehFWc7/bcBeNT0rRBaJEH2Iq/p0DWIkRHV7KN3Tw=;
        b=FdGI/gJLBWilIKbQ7RcvWFQQ2kOdiAVFPT+ZKgDRQ9Qr96zXFtbbkAVMQioyVvbs7u
         tEhFk5gifqMXgcxO+1VT1RTuZF5FjWNkobA2HzToFbo0+f7kc2pJQp5/8qAp1IC85LEa
         BDQepa+R0nWkNa2BtmZ2e0SIe78916OIaKI45Kfh8AlPqz/BYxrfqYV7TlL1EMK3OHjM
         hJkDNmWZKJ5uQpmUJtAOcnNb1pNZXkxYMx1ti7Pr+CKKkPVyAMz0g5m0HGwAmN5+eGKa
         Ar3bGcEO6Fizbcl3IRrPfjAz+bVtqngLgLk0aFeHLTC9dOJCNgpYjujxjFLuPofxEWe1
         pgew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728229254; x=1728834054;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSmehFWc7/bcBeNT0rRBaJEH2Iq/p0DWIkRHV7KN3Tw=;
        b=fEGOdNu5yDmoJfaMOUJcTjEgcWRunyeHwbdxY4Pxc8oZ46Vy+TrjIzKOuVDOgRTl9I
         F7rSvgS9BUTrSo5UWChAawOqfxk4r899s1GJuIo9efxMidWtFJS5V2GYpAQlhzbfy7aB
         b0Z5NiMt4n844n4lXebs9NR1zwWsfgY9o7RIuTMKjCkKGCO/B8KRkjM6Vh+Mg/d6F2+k
         mBmDzRClD3kR4nQdAfXwtLyuS7QR0XOV/9MS7E8F/P8okR+GM3hL6WuJbVWzNOFysSD+
         5EALiHGkDW8wsz2+tOFHoCgFbEppjg3vgBK0jp88nIBS3I+oWZXVGz45XJz1SHRIeVKa
         e4cg==
X-Forwarded-Encrypted: i=1; AJvYcCUxHwbcAgWFOTK1SPXAMvbdyAj/DR2aJtzfeIhnFxfL/HkeksIIsoz66+K3d5g4mgz4oAvZyJeiElVb@vger.kernel.org
X-Gm-Message-State: AOJu0YwXH0hRYHBeDS38TdVlJgdgmGXrK8xX3EvkQvwWN5l9zyrjj8HQ
	mtWVppyGm6v5Glhu5mQbvShBZAexB5xYRog+NmBvC6ALWIezT+0FjaiRK4TYbZw=
X-Google-Smtp-Source: AGHT+IED1hWcCeHXvhrOOaWQDFBeYJ8VVokXsyvCf0G2Z/auFpwjr2Ct+ZnZjqRb4qd4Agm8Z+fuqw==
X-Received: by 2002:a05:6512:3c88:b0:52e:9f6b:64 with SMTP id 2adb3069b0e04-539ab86b7d3mr3927537e87.34.1728229253784;
        Sun, 06 Oct 2024 08:40:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539afec8255sm553939e87.83.2024.10.06.08.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 08:40:53 -0700 (PDT)
Date: Sun, 6 Oct 2024 18:40:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] usb: typec: Add support for Parade PS8830 Type-C
 Retimer
Message-ID: <af5tlrvbceo6gsatkfj4oitznznscxkt7d5lie5mdvu5wky3t3@sktfucncdjnn>
References: <20241004-x1e80100-ps8830-v2-0-5cd8008c8c40@linaro.org>
 <20241004-x1e80100-ps8830-v2-2-5cd8008c8c40@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004-x1e80100-ps8830-v2-2-5cd8008c8c40@linaro.org>

On Fri, Oct 04, 2024 at 04:57:38PM GMT, Abel Vesa wrote:
> The Parade PS8830 is a Type-C muti-protocol retimer controlled over I2C.
> It provides both altmode and orientation handling.
> 
> Add a driver with support for the following modes:
>  - DP 4lanes
>  - DP 2lanes + USB3
>  - USB3
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/usb/typec/mux/Kconfig  |  10 +
>  drivers/usb/typec/mux/Makefile |   1 +
>  drivers/usb/typec/mux/ps8830.c | 424 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 435 insertions(+)
> 
> diff --git a/drivers/usb/typec/mux/Kconfig b/drivers/usb/typec/mux/Kconfig
> index ce7db6ad30572a0a74890f5f11944fb3ff07f635..48613b67f1c5dacd14d54baf91c3066377cf97be 100644
> --- a/drivers/usb/typec/mux/Kconfig
> +++ b/drivers/usb/typec/mux/Kconfig
> @@ -56,6 +56,16 @@ config TYPEC_MUX_NB7VPQ904M
>  	  Say Y or M if your system has a On Semiconductor NB7VPQ904M Type-C
>  	  redriver chip found on some devices with a Type-C port.
>  
> +config TYPEC_MUX_PS8830
> +	tristate "Parade PS8830 Type-C retimer driver"
> +	depends on I2C
> +	depends on DRM || DRM=n
> +	select DRM_AUX_BRIDGE if DRM_BRIDGE && OF
> +	select REGMAP_I2C
> +	help
> +	  Say Y or M if your system has a Parade PS8830 Type-C retimer chip
> +	  found on some devices with a Type-C port.
> +
>  config TYPEC_MUX_PTN36502
>  	tristate "NXP PTN36502 Type-C redriver driver"
>  	depends on I2C
> diff --git a/drivers/usb/typec/mux/Makefile b/drivers/usb/typec/mux/Makefile
> index bb96f30267af05b33b9277dcf1cc0e1527d2dcdd..4b23b12cfe45a0ff8a37f38c7ba050f572d556e7 100644
> --- a/drivers/usb/typec/mux/Makefile
> +++ b/drivers/usb/typec/mux/Makefile
> @@ -6,5 +6,6 @@ obj-$(CONFIG_TYPEC_MUX_PI3USB30532)	+= pi3usb30532.o
>  obj-$(CONFIG_TYPEC_MUX_INTEL_PMC)	+= intel_pmc_mux.o
>  obj-$(CONFIG_TYPEC_MUX_IT5205)		+= it5205.o
>  obj-$(CONFIG_TYPEC_MUX_NB7VPQ904M)	+= nb7vpq904m.o
> +obj-$(CONFIG_TYPEC_MUX_PS8830)		+= ps8830.o
>  obj-$(CONFIG_TYPEC_MUX_PTN36502)	+= ptn36502.o
>  obj-$(CONFIG_TYPEC_MUX_WCD939X_USBSS)	+= wcd939x-usbss.o
> diff --git a/drivers/usb/typec/mux/ps8830.c b/drivers/usb/typec/mux/ps8830.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..58990f7860bf77ec12d00f0d3df3a40735bbf9d8
> --- /dev/null
> +++ b/drivers/usb/typec/mux/ps8830.c
> @@ -0,0 +1,424 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Parade PS8830 usb retimer driver
> + *
> + * Copyright (C) 2024 Linaro Ltd.
> + */
> +
> +#include <drm/bridge/aux-bridge.h>
> +#include <linux/clk.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/usb/typec_altmode.h>
> +#include <linux/usb/typec_dp.h>
> +#include <linux/usb/typec_mux.h>
> +#include <linux/usb/typec_retimer.h>
> +
> +struct ps8830_retimer {
> +	struct i2c_client *client;
> +	struct gpio_desc *reset_gpio;
> +	struct regmap *regmap;
> +	struct typec_switch_dev *sw;
> +	struct typec_retimer *retimer;
> +	struct clk *xo_clk;
> +	struct regulator *vdd_supply;
> +	struct regulator *vdd33_supply;
> +	struct regulator *vdd33_cap_supply;
> +	struct regulator *vddat_supply;
> +	struct regulator *vddar_supply;
> +	struct regulator *vddio_supply;
> +
> +	struct typec_switch *typec_switch;
> +	struct typec_mux *typec_mux;
> +
> +	struct mutex lock; /* protect non-concurrent retimer & switch */
> +
> +	enum typec_orientation orientation;
> +	unsigned long mode;
> +	int cfg[3];
> +};
> +
> +static void ps8830_write(struct ps8830_retimer *retimer, int cfg0, int cfg1, int cfg2)
> +{
> +	if (cfg0 == retimer->cfg[0] &&
> +	    cfg1 == retimer->cfg[1] &&
> +	    cfg2 == retimer->cfg[2])
> +		return;
> +
> +	retimer->cfg[0] = cfg0;
> +	retimer->cfg[1] = cfg1;
> +	retimer->cfg[2] = cfg2;
> +
> +	regmap_write(retimer->regmap, 0x0, cfg0);
> +	regmap_write(retimer->regmap, 0x1, cfg1);
> +	regmap_write(retimer->regmap, 0x2, cfg2);
> +}

This looks like a reimplementation of regcache. Is it really necessary?

> +
> +static void ps8830_configure(struct ps8830_retimer *retimer, int cfg0, int cfg1, int cfg2)
> +{
> +	/* Write safe-mode config before switching to new config */

Why is this required?

> +	ps8830_write(retimer, 0x1, 0x0, 0x0);
> +
> +	ps8830_write(retimer, cfg0, cfg1, cfg2);
> +}
> +
> +static int ps8380_set(struct ps8830_retimer *retimer)
> +{
> +	int cfg0 = 0x00;
> +	int cfg1 = 0x00;
> +	int cfg2 = 0x00;
> +
> +	if (retimer->orientation == TYPEC_ORIENTATION_NONE ||
> +	    retimer->mode == TYPEC_STATE_SAFE) {
> +		ps8830_write(retimer, 0x1, 0x0, 0x0);
> +		return 0;
> +	}
> +
> +	if (retimer->orientation == TYPEC_ORIENTATION_NORMAL)
> +		cfg0 = 0x01;
> +	else
> +		cfg0 = 0x03;
> +
> +	switch (retimer->mode) {
> +	/* USB3 Only */
> +	case TYPEC_STATE_USB:
> +		cfg0 |= 0x20;
> +		break;
> +

The TYPEC_DP clauses should only be used if state->alt->swid is set to
USB_TYPEC_DP_SID. Other altmodes share id space for their states.

> +	/* DP Only */
> +	case TYPEC_DP_STATE_C:
> +		cfg1 = 0x85;
> +		break;
> +
> +	case TYPEC_DP_STATE_E:
> +		cfg1 = 0x81;
> +		break;
> +
> +	/* DP + USB */
> +	case TYPEC_DP_STATE_D:
> +		cfg0 |= 0x20;
> +		cfg1 = 0x85;
> +		break;

CDE, please.

> +
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	ps8830_configure(retimer, cfg0, cfg1, cfg2);
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

