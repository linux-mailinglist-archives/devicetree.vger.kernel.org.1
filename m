Return-Path: <devicetree+bounces-115462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 342DB9AFA2D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 08:40:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8540282DD2
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 06:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E3D19B59F;
	Fri, 25 Oct 2024 06:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JlHhTt9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A07E18C935
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 06:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729838402; cv=none; b=JQBypy0e0eXqDHXrHuIeiydsjbAwhiU19McHrIS7GIUAtbp73/BWHNR07nt5GZJFojQeCVb2v1J0JK4/VQM95PgOvjQXw/CfGQFJzZ2Uts42qkzZ1aG1IhCVHML6IxQgQ2BViXENAAPOME6UkDDWC34VpSNcMcqZ4XP3Tv91oTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729838402; c=relaxed/simple;
	bh=vvNeUBceby2LkjeytOXgOCzY+ewoI+Yt1QSkzCdkeTQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M2qH48Vd9DqiWTBzcDAp/5LVyvNLxPele8mB3TkwhPp3V0kw42+hIHWGKoiFpMKHB5/CrqoVQk0s26wH4/H17KpKA6ZbADveDPMm2ttmLfwrtC4spiMXAG1INcIkIATophyo1ePbXyhK11XBDpgYaKTnz9NSTibgD0qLr93CPlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JlHhTt9i; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539fe76e802so2125542e87.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 23:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729838398; x=1730443198; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cBTuSfKMwpmHgJlpGmRTFa3GtgGOzkEl+PqDUCX14JU=;
        b=JlHhTt9ia6FyFZxgQkIHW8QgnjMdEBsfhnIU2naidwmYBoUt7zCQN4T+Y/XvMCbpP0
         GZLvPA7dFD96RmDTwfigWsbA2Gkj+KjXwmh2ptpa8Evm/Qx7PUEMZar72Q9ftfM7c65l
         fvTGp9OWDgEkxke2h/t3LjPkWM/qBfH4tNo0rjNCUfjf4IMgDkKmRsDHrS9S65X43Uu4
         PU85GWDKDzk/qwCVTLhs254+TfopZgciYo7aeolwiPxunOMVu3BAXOGM/UoL6KLnSZuy
         AEZmOI+KwRPRqr6pj8HgK3/ne1jKAqmBnxdvU/WRWDnc2XYsGQYkm9rRt2ml8xVzHaGB
         XJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729838398; x=1730443198;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cBTuSfKMwpmHgJlpGmRTFa3GtgGOzkEl+PqDUCX14JU=;
        b=QmG2M1N+g+2DGaO9sAVotc5rjVFyXRtSevqtPpZ5/iZRphGBkG9daf3VaskkQx2C+T
         ju4k/8P8OiwIyihdujDIKmWlL8k+kqFpRpI3yiYbdJmgtrW1NAL2hqpzFgrc/34qpZfv
         +Mh2w0/MeXz8e3qONBvENhkK1WHMTp2Tik4zWgwvTV6/NaiLFpOf11rx0gPOpMPk3JFI
         0XWvxiPpaNzmR2EzZ3Wz94d8E/eFa0DgxmFF+QYOI6e84c+3WdTAHEe0y5BH13IvZ7tL
         IDrzsoF6yDUshTFESu7hESCMTUogeFkXW9Os01GymvN7uk0fxxUp/TSMDGPXGr/u1AT2
         ki/A==
X-Forwarded-Encrypted: i=1; AJvYcCWK0gw6UFTfDjou5W9/5x76bevo96E9Yw0xfoI6WPkvE7RNfisVieatiH08xwTeMMMIjchWadCuNEac@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+QyVobRqg8pDh0b+xnNomeN4AKvEeRq1VG9Cdud7DOVXz/bbl
	wbTpwfZBdUDmIZ0ZqAYE+6rPIEif6iOgFrgiU9qi5+l0cqAvfzFIZSx314qxKco=
X-Google-Smtp-Source: AGHT+IGkjnVZ3Ubnw9yW+YH3VlW13l86h86MFbTJUKG0oDr1/YC+rV98IHDNH0U8PjgYky6NyZRJxA==
X-Received: by 2002:ac2:4e05:0:b0:535:82eb:21d1 with SMTP id 2adb3069b0e04-53b1a375c16mr4426940e87.57.1729838398360;
        Thu, 24 Oct 2024 23:39:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1f317bsm71393e87.286.2024.10.24.23.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 23:39:56 -0700 (PDT)
Date: Fri, 25 Oct 2024 09:39:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] usb: typec: mux: Add support for the TUSB1046
 crosspoint switch
Message-ID: <bgqmq4kehejgud2eymcwusbu6ks4jnaeasr6ad735czxxazyht@ppzrbmce5mog>
References: <20241024-tusb1046-v2-0-d031b1a43e6d@bootlin.com>
 <20241024-tusb1046-v2-2-d031b1a43e6d@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241024-tusb1046-v2-2-d031b1a43e6d@bootlin.com>

On Thu, Oct 24, 2024 at 10:54:17AM +0200, Romain Gantois wrote:
> The TUSB1046-DCI is a USB-C linear redriver crosspoint switch, which can
> mux SuperSpeed lanes from a Type-C connector to a USB3.0 data lane or up to
> 4 display port lanes.
> 
> Add support for driving the TUSB1046 as a Type-C orientation switch and
> DisplayPort altmode multiplexer.
> 
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
> ---
>  MAINTAINERS                      |   7 ++
>  drivers/usb/typec/mux/Kconfig    |   9 ++
>  drivers/usb/typec/mux/Makefile   |   1 +
>  drivers/usb/typec/mux/tusb1046.c | 196 +++++++++++++++++++++++++++++++++++++++
>  4 files changed, 213 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c27f3190737f8b85779bde5489639c8b899f4fd8..c880588b63f27d628edeec09fa7d904eeabbde92 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -24142,6 +24142,13 @@ L:	linux-usb@vger.kernel.org
>  S:	Orphan
>  F:	drivers/usb/typec/tcpm/
>  
> +USB TYPEC TUSB1046 MUX DRIVER
> +M:	Romain Gantois <romain.gantois@bootlin.com>
> +L:	linux-usb@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/usb/ti,tusb1046.yaml
> +F:	drivers/usb/typec/mux/tusb1046.c
> +
>  USB UHCI DRIVER
>  M:	Alan Stern <stern@rowland.harvard.edu>
>  L:	linux-usb@vger.kernel.org
> diff --git a/drivers/usb/typec/mux/Kconfig b/drivers/usb/typec/mux/Kconfig
> index ce7db6ad30572a0a74890f5f11944fb3ff07f635..67381b4ef4f68f4a6e73f157365ee24d0ab7109a 100644
> --- a/drivers/usb/typec/mux/Kconfig
> +++ b/drivers/usb/typec/mux/Kconfig
> @@ -66,6 +66,15 @@ config TYPEC_MUX_PTN36502
>  	  Say Y or M if your system has a NXP PTN36502 Type-C redriver chip
>  	  found on some devices with a Type-C port.
>  
> +config TYPEC_MUX_TUSB1046
> +	tristate "TI TUSB1046 Type-C crosspoint switch driver"
> +	depends on I2C
> +	help
> +	  Driver for the Texas Instruments TUSB1046-DCI crosspoint switch.
> +	  Supports flipping USB-C SuperSpeed lanes to adapt to orientation
> +	  changes, as well as muxing DisplayPort and sideband signals to a
> +	  common Type-C connector.
> +
>  config TYPEC_MUX_WCD939X_USBSS
>  	tristate "Qualcomm WCD939x USBSS Analog Audio Switch driver"
>  	depends on I2C
> diff --git a/drivers/usb/typec/mux/Makefile b/drivers/usb/typec/mux/Makefile
> index bb96f30267af05b33b9277dcf1cc0e1527d2dcdd..60879446da9365183567d3374a2fb7b5171fb3d7 100644
> --- a/drivers/usb/typec/mux/Makefile
> +++ b/drivers/usb/typec/mux/Makefile
> @@ -7,4 +7,5 @@ obj-$(CONFIG_TYPEC_MUX_INTEL_PMC)	+= intel_pmc_mux.o
>  obj-$(CONFIG_TYPEC_MUX_IT5205)		+= it5205.o
>  obj-$(CONFIG_TYPEC_MUX_NB7VPQ904M)	+= nb7vpq904m.o
>  obj-$(CONFIG_TYPEC_MUX_PTN36502)	+= ptn36502.o
> +obj-$(CONFIG_TYPEC_MUX_TUSB1046)	+= tusb1046.o
>  obj-$(CONFIG_TYPEC_MUX_WCD939X_USBSS)	+= wcd939x-usbss.o
> diff --git a/drivers/usb/typec/mux/tusb1046.c b/drivers/usb/typec/mux/tusb1046.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..b4f45c217b59fe033551e8e6379ad2d33ebedbcb
> --- /dev/null
> +++ b/drivers/usb/typec/mux/tusb1046.c
> @@ -0,0 +1,196 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Driver for the TUSB1046-DCI USB Type-C crosspoint switch
> + *
> + * Copyright (C) 2024 Bootlin
> + */
> +
> +#include <linux/bits.h>
> +#include <linux/i2c.h>
> +#include <linux/usb/typec_mux.h>
> +#include <linux/usb/typec_dp.h>
> +#include <linux/usb/typec_altmode.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/err.h>
> +#include <linux/of_device.h>
> +#include <linux/device.h>
> +#include <linux/mutex.h>
> +
> +#define TUSB1046_REG_GENERAL 0xa
> +
> +/* General register bits */
> +#define TUSB1046_GENERAL_FLIPSEL BIT(2)
> +#define TUSB1046_GENERAL_CTLSEL  GENMASK(1, 0)
> +
> +/* Mux modes */
> +#define TUSB1046_CTLSEL_DISABLED          0x0
> +#define TUSB1046_CTLSEL_USB3              0x1
> +#define TUSB1046_CTLSEL_4LANE_DP          0x2
> +#define TUSB1046_CTLSEL_USB3_AND_2LANE_DP 0x3
> +
> +struct tusb1046_priv {
> +	struct i2c_client *client;
> +	struct typec_switch_dev *sw;
> +	struct typec_mux_dev *mux;
> +
> +	/* Lock General register during accesses */
> +	struct mutex general_reg_lock;
> +};
> +
> +static int tusb1046_mux_set(struct typec_mux_dev *mux,
> +			    struct typec_mux_state *state)
> +{
> +	struct tusb1046_priv *priv = typec_mux_get_drvdata(mux);
> +	struct i2c_client *client = priv->client;
> +	struct device *dev = &client->dev;
> +	int mode, val, ret = 0;
> +
> +	if (state->mode >= TYPEC_STATE_MODAL &&
> +	    state->alt->svid != USB_TYPEC_DP_SID)
> +		return -EINVAL;
> +
> +	dev_dbg(dev, "mux mode requested: %lu\n", state->mode);
> +
> +	mutex_lock(&priv->general_reg_lock);
> +
> +	val = i2c_smbus_read_byte_data(client, TUSB1046_REG_GENERAL);
> +	if (val < 0) {
> +		dev_err(dev, "failed to read ctlsel status, err %d\n", val);
> +		ret = val;
> +		goto out_unlock;
> +	}
> +
> +	switch (state->mode) {
> +	case TYPEC_STATE_USB:
> +		mode = TUSB1046_CTLSEL_USB3;
> +		break;
> +	case TYPEC_DP_STATE_C:

These are only valid if you have checked that altmode SVID is a
DisplayPort SVID.

> +	case TYPEC_DP_STATE_E:
> +		mode = TUSB1046_CTLSEL_4LANE_DP;
> +		break;
> +	case TYPEC_DP_STATE_D:
> +		mode = TUSB1046_CTLSEL_USB3_AND_2LANE_DP;
> +		break;
> +	case TYPEC_STATE_SAFE:
> +	default:
> +		mode = TUSB1046_CTLSEL_DISABLED;
> +		break;
> +	}
> +
> +	val &= ~TUSB1046_GENERAL_CTLSEL;
> +	val |= mode;
> +
> +	ret = i2c_smbus_write_byte_data(client, TUSB1046_REG_GENERAL, val);
> +
> +out_unlock:
> +	mutex_unlock(&priv->general_reg_lock);
> +	return ret;
> +}
> +

-- 
With best wishes
Dmitry

