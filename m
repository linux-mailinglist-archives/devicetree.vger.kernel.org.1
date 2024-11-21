Return-Path: <devicetree+bounces-123603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 043F29D566F
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 00:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B89C528236B
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 23:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0C31D042A;
	Thu, 21 Nov 2024 23:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vNkkLBX+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F11955C29
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 23:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732233232; cv=none; b=fYocDJQYQWp4oKl/01p04gosHjelUaVsksG5Gx57uw9qhen/72zwulDu3hJh2Px7PcuW4E1PiTDtZDoNBRyquw7B4BdfI+sD6Y55qezC0szDenJv8S7x+brW0RMQbwDWeGQVUvcmSbOeUED6yVxzquHUKfHctox4yXS88XPXo6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732233232; c=relaxed/simple;
	bh=iRQjNllQOAzzZ/cUbX8ekd1erp5vq0DrBRgI2zgDUPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sPQD5HSdyqCvllMZoNb8JJwq2sXryDdA0YsaGk8HH6mQtWnEcuQXs4BdRplqCXVQbkdz8Fv30bEzmmw7//MruSLj2yYHfGSQ/twSJZyH/3OEQiIIJ/dGfSZzNYPK6nIij0tpYngAqg/1RRyCzz9KWO26ZTSWSmTBNg6/W8br2AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vNkkLBX+; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb4af0b6beso26627571fa.3
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 15:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732233228; x=1732838028; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rW4FHPt7LjmFH4gYgk/9ZboeDDlIoBJNyfpaoR1qrpc=;
        b=vNkkLBX++oLTqOFJLfpe29Jrhgj1M+fUkaAG2EGk3PCgDRzH7yu0/Ce1tNyqU9AfKz
         vYAjG41UrApcEgCoM1KPL0DomobSajG4z+UVu9t3j8ieRowG6fv+Toj2/EMAlM1n5tRc
         Yvo85s52/MhzOVheEbkX5qMHUAUw2VakIFa7aTBH4w34Qp2dRkXt9VJBeCMaAlFC52i2
         DvvPCIKM1/ClFJk2iF/oAHAh1RVFP6xTXTep9FoF7IfCCAt9LQZUriCsDgrKXTH12LaP
         m44hbgQyN7VDshbLAKEgbeoEgoz/WVkglJh3kG7bcat8nfLgmN/GXX7jaKTUnS2D6cfW
         pcAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732233228; x=1732838028;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rW4FHPt7LjmFH4gYgk/9ZboeDDlIoBJNyfpaoR1qrpc=;
        b=RbIpjqFDsTUdmWrnqgjMcjIQ3WzG6ic9sGNxMaFdu+qGT32hd/3LGFelduqfPSrauZ
         LrbMUv7TG6J/2Hey407EWrLloim/Lx1shNydhnousaNNJv0KVYCo8ZCXXzvUhHbDt2MG
         UoHpG20TU5FhGQxJgOxYDNbMAZdUt5dkHqkdJ1WJ3JzwbVC+GQUslAeitz2EPiv220Q4
         JJ4vNtm9AWvipgh2BnKe0l7iLyAoek/kahllHEgkvnoJVbjxvCaq4/gBMUf+iNJpuLwh
         mEed6xCLps1/IcoUu6qxvbTW6KmhyhcouNFCBwXOeJmWElHSk7ILVRavNGZWDF8vEnj1
         O+vQ==
X-Gm-Message-State: AOJu0YzOIb4k37IgxjqbP/YXyxiZxAPf+F6MK48GWrVxznK+uuqtVdbs
	asWKwGo2YgcfQym7qry05cbJSkhglQj4zYrrjhGBEpvaH0Xf7T0cRYd+03ciIHI=
X-Gm-Gg: ASbGncv/FJBxhZnSLHetgFKAQJHXacmuEK0Kig+puVn4nI+QI9sT/GF+EEQkK/dFJck
	fNerUGpZAt142cRpzsf+/+UXXj49pX1psf7ewHIVSY+tbLgu/2fnxeyl41f2S1rsRo2h1asdJIu
	0JmADvInVKci/T5+6pdymxzyeCf3M/YwX9kRhanmOCJkwOu3w3uPezv1lLxbKAGeNGhplE6Zp1R
	/rSAXaCR1u28K4AFYuIpL485se0dJy6ZeDMPC4iutMCNb6bIeI4yjmcrfqy+G/I7KgT64fmSQe+
	v1FA8RmNwCOtL5JOkJRK8tlcKBnf6Q==
X-Google-Smtp-Source: AGHT+IEKFx5rkvWucHRO2zn/USpeu8y9JV60QFsZKo6nRTS2RPOH5OFs4cMCGnsdocitEz0+L01gtg==
X-Received: by 2002:a2e:a58d:0:b0:2fb:6110:c5df with SMTP id 38308e7fff4ca-2ffa716d343mr3992251fa.31.1732233228136;
        Thu, 21 Nov 2024 15:53:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa7587d0esm359121fa.61.2024.11.21.15.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 15:53:46 -0800 (PST)
Date: Fri, 22 Nov 2024 01:53:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: keith zhao <keith.zhao@starfivetech.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	william.qiu@starfivetech.com, xingyu.wu@starfivetech.com, kernel@esmil.dk, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	p.zabel@pengutronix.de, changhuang.liang@starfivetech.com, jack.zhu@starfivetech.com, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/9] drm: bridge: inno-hdmi: add inno bridge driver.
Message-ID: <djnuoqr5mj576xzbhs72vuz6ji4ayluinb4fr257okik2l762x@ocd4cm7f65pl>
References: <20241120061848.196754-1-keith.zhao@starfivetech.com>
 <20241120061848.196754-4-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120061848.196754-4-keith.zhao@starfivetech.com>

On Wed, Nov 20, 2024 at 02:18:42PM +0800, keith zhao wrote:
> move rochchip inno hdmi connector to a newly created directory named
> inno-hdmi.c, and rename rockchip/inno_hdmi.c to
> rockchip/inno_hdmi-rockchip.c
> 
> This patch refines the Innosilicon HDMI architecture by abstracting
> the existing connector into a bridge architecture.
> The drm_bridge_connector_init function is used to create the connector.
> 
> Signed-off-by: keith zhao <keith.zhao@starfivetech.com>
> ---
>  MAINTAINERS                                   |    2 +
>  drivers/gpu/drm/bridge/Kconfig                |    2 +
>  drivers/gpu/drm/bridge/Makefile               |    1 +
>  drivers/gpu/drm/bridge/innosilicon/Kconfig    |    6 +
>  drivers/gpu/drm/bridge/innosilicon/Makefile   |    2 +
>  .../gpu/drm/bridge/innosilicon/inno-hdmi.c    |  376 ++++++
>  .../gpu/drm/bridge/innosilicon/inno-hdmi.h    |   34 +
>  drivers/gpu/drm/rockchip/Kconfig              |    1 +
>  drivers/gpu/drm/rockchip/Makefile             |    2 +-
>  drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c |  690 +++++++++++
>  .../{inno_hdmi.h => inno_hdmi-rockchip.h}     |    0
>  drivers/gpu/drm/rockchip/inno_hdmi.c          | 1025 -----------------
>  include/drm/bridge/inno_hdmi.h                |   56 +
>  13 files changed, 1171 insertions(+), 1026 deletions(-)
>  create mode 100644 drivers/gpu/drm/bridge/innosilicon/Kconfig
>  create mode 100644 drivers/gpu/drm/bridge/innosilicon/Makefile
>  create mode 100644 drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c
>  create mode 100644 drivers/gpu/drm/bridge/innosilicon/inno-hdmi.h
>  create mode 100644 drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c
>  rename drivers/gpu/drm/rockchip/{inno_hdmi.h => inno_hdmi-rockchip.h} (100%)
>  delete mode 100644 drivers/gpu/drm/rockchip/inno_hdmi.c
>  create mode 100644 include/drm/bridge/inno_hdmi.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f787dd625497..7766ee0bdd74 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7439,6 +7439,8 @@ S:	Maintained
>  T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
>  F:	Documentation/devicetree/bindings/display/bridge/innosilicon,inno-hdmi.yaml
>  F:	Documentation/devicetree/bindings/display/starfive/
> +F:	drivers/gpu/drm/bridge/innosilicon/
> +F:	include/drm/bridge/inno_hdmi.h
>  
>  DRM DRIVER FOR SYNAPTICS R63353 PANELS
>  M:	Michael Trimarchi <michael@amarulasolutions.com>
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index 683cb33805b2..37be5dd5213f 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -423,6 +423,8 @@ source "drivers/gpu/drm/bridge/cadence/Kconfig"
>  
>  source "drivers/gpu/drm/bridge/imx/Kconfig"
>  
> +source "drivers/gpu/drm/bridge/innosilicon/Kconfig"
> +
>  source "drivers/gpu/drm/bridge/synopsys/Kconfig"
>  
>  endmenu
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 3daf803ce80b..866d1e0fd8aa 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -41,4 +41,5 @@ obj-$(CONFIG_DRM_ITE_IT66121) += ite-it66121.o
>  obj-y += analogix/
>  obj-y += cadence/
>  obj-y += imx/
> +obj-y += innosilicon/
>  obj-y += synopsys/
> diff --git a/drivers/gpu/drm/bridge/innosilicon/Kconfig b/drivers/gpu/drm/bridge/innosilicon/Kconfig
> new file mode 100644
> index 000000000000..73dbed3b1c4d
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/innosilicon/Kconfig
> @@ -0,0 +1,6 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +config DRM_INNO_HDMI
> +	tristate
> +	help
> +	  Support the common interface which is part of the INNO
> +	  Designware HDMI block.
> diff --git a/drivers/gpu/drm/bridge/innosilicon/Makefile b/drivers/gpu/drm/bridge/innosilicon/Makefile
> new file mode 100644
> index 000000000000..3b3a961ab9fb
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/innosilicon/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_DRM_INNO_HDMI) += inno-hdmi.o
> diff --git a/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c b/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c
> new file mode 100644
> index 000000000000..c26132b41bdf
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/innosilicon/inno-hdmi.c
> @@ -0,0 +1,376 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + *    Zheng Yang <zhengyang@rock-chips.com>
> + *    Yakir Yang <ykk@rock-chips.com>
> + * Copyright (C) StarFive Technology Co., Ltd.
> + */
> +
> +#include <linux/irq.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
> +
> +#include <drm/bridge/inno_hdmi.h>
> +#include <drm/display/drm_hdmi_state_helper.h>
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_edid.h>
> +#include <drm/drm_of.h>
> +#include <drm/drm_print.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_bridge_connector.h>
> +
> +#include "inno-hdmi.h"
> +
> +u8 hdmi_readb(struct inno_hdmi *hdmi, u16 offset)
> +{
> +	return readl_relaxed(hdmi->regs + (offset) * 0x04);
> +}
> +EXPORT_SYMBOL_GPL(hdmi_readb);

Not to mention that hdmi_foo() is too generic. Please use some common
prefix through the file. At least inno_hdmi_foo() will be much better.

-- 
With best wishes
Dmitry

