Return-Path: <devicetree+bounces-229306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C4BF5D6B
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B57A8487008
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA1D32F75A;
	Tue, 21 Oct 2025 10:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OV4FJNFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF7732E698
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 10:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761043049; cv=none; b=k/J9pv1V+vmYRLd4M3BDcgiW/ityt4dpXb+IbZSXRnd/XMnkr7vzdTXLAZXS4fnfZkHnaKbG6lRthB/vqUqndkclM3b3uNUDZTGJnPR1w1TPsTlzOGnee7sufDT97C3iewD0IrDGOB6Y83DCRcfmkTeWt/unbytLDN2XMmRFaDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761043049; c=relaxed/simple;
	bh=G8bIrdKOREeaQWFYl+BVblIyK/tNvhnzk9i8+sGZ5Dk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d6dOpnECPj9ue2gsE6d3KpZQz+ZyA94bbWhYi4DoGFD3tD0NX2lqoz1vhC39yhjAE0E1hQhdeiVaWNJHqXjsyzXUVk1SrVK9DLfx/9LlyDtw6ffDUt0eGhlMoTI98UTVy+h4MKc6YIgozbFIJlEpxWdMHCDE5+WZ6quc7ZaI+Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OV4FJNFQ; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-63e1591183bso4310054d50.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 03:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761043046; x=1761647846; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=du/uiA2g0ruAK2UrT7r+xEuTy7bML0SpAVcY8ooVq04=;
        b=OV4FJNFQ1uapnGqxwNArp1c3sMnou9Gn5Mulg7FgaRBpu3ejO833yxc66+0QPR5qku
         aA6EtTV2yORIXSU8/KOKiCgkLr08ed7m+oB3VG68OcVm4IkfQWuf0NSFnvDvBvHYEmGO
         s7eoCUGrMzgib3JPXWKNfiFjGSXvsakVOwKCpyf53cvuthskb+tI6l295G2g2M067qv0
         G6+Xk1iy4eqtknYhBYxWVNcWvuKiCEb1jHN6XCahAmWGOYfMn+CWYLTXienvZkfJa3Lm
         e+zGW8er2mG1JDxIljGhsR0OOWqP1w+F6NtkkmNhuPT00c+L0r+NcJ0Wx1GHFOjnhc7B
         L2yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761043046; x=1761647846;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=du/uiA2g0ruAK2UrT7r+xEuTy7bML0SpAVcY8ooVq04=;
        b=D5G9eqeaPP+f3zMOl2cANdJHAV/xrcAIhFsWyU0Dz/3avdwRXU6UB10wRbW1kmWRz1
         EWkRG6vhVVTKEQFDXzhULalnrz8mDLKp5Qo5kjoG1c4/RUO/gmyaPHpZvtn5lfAPKzA5
         VWlXuCQ+rrQ2rEr91omhu/JnkjhAa5xQ8CrzyRjj6i+ZyY43oJGZCwSceaAfHY/8YnAr
         c9yTjua0Mmx3uO61jcfsKGVk0lO2PFLRuXEl9vDaIobd7NUbl5gXUaAeVpWJwrn7lpAc
         1z6AAf8btzrh3bhZpUooOHUbuG1miGypxcyxUiQZM82xV2FJfHryUcTihIo4+GO99OY3
         HmqA==
X-Forwarded-Encrypted: i=1; AJvYcCVNir3DzljDvZyZTqWJwtqfcHz9SXGrXC3+v9Olbgn0DJeBrgoDbkF/Suv0LeBiVaLa/oXjhtXIBO2D@vger.kernel.org
X-Gm-Message-State: AOJu0YxuZCKXVgGu0KwHKUGjxzOlaOb4Kv35PKPg0lxLCiTm00OVrtC2
	Vi7MrGxbK6dBTR1LfMOZPXex8VILJwqVnOMdyjfQqTlwy4lKwcxw6v5a66awSemBr+iWrhls2t9
	sKeVRFbL3SYNRxCkLUrOISiJPMRCqX+QDHxGcdrHnHA==
X-Gm-Gg: ASbGncv1VnpBl2UACBBAfN1THAA6FCfKghx70TsB93fefDXKTdG2battXuyuuDDWsBx
	H1Bk3d82ChMW8Oxm6YzeufeKJkt+M4zB3fAce1iTbxYSV0Ji8hpNU3c9S4H3jqm+AcBd1B+EIoJ
	+ndkCcn1qsSQDCq3nTZVSDxRTUkNo48ZrWsxNKIa8UrsnMWPFI2RsKaGfygUwxCik9XRpQH7JM4
	It3/KxcWCyaWBa/rjP4UC6zgPFE9meLUMBXsHClwYxkHrXYTmG0KvrAHO/l1w==
X-Google-Smtp-Source: AGHT+IFFOhRKu4kQW/XKD1Pm8VUPug9hRZQumhyHTlK9vebZPyquvLC0TgCPXJX5yR8+F8jVszRXlOsVXxUxv7obTms=
X-Received: by 2002:a05:690e:4090:b0:63e:3e77:a7c4 with SMTP id
 956f58d0204a3-63e3e77a7fdmr3660188d50.1.1761043045615; Tue, 21 Oct 2025
 03:37:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015071420.1173068-1-herve.codina@bootlin.com> <20251015071420.1173068-10-herve.codina@bootlin.com>
In-Reply-To: <20251015071420.1173068-10-herve.codina@bootlin.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 21 Oct 2025 12:36:49 +0200
X-Gm-Features: AS18NWAi-o77CPd71JT42D3mLl8vqFN7eYPAV53oOUDllJc5eKGrXIzOLUEhLMM
Message-ID: <CAPDyKFrkJp4Ny1kUoWy6LHmv6zCOGK-jVEYk95s2ayhqEbDOpw@mail.gmail.com>
Subject: Re: [PATCH v4 09/29] drivers: core: Use fw_devlink_set_device()
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Peter Rosin <peda@axentia.se>, 
	Arnd Bergmann <arnd@arndb.de>, Saravana Kannan <saravanak@google.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, David Rhodes <david.rhodes@cirrus.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Jonathan Cameron <jonathan.cameron@huawei.com>, 
	Dave Jiang <dave.jiang@intel.com>, Alison Schofield <alison.schofield@intel.com>, 
	Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>, 
	Dan Williams <dan.j.williams@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Wolfram Sang <wsa@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-sound@vger.kernel.org, 
	patches@opensource.cirrus.com, linux-gpio@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-cxl@vger.kernel.org, 
	Allan Nielsen <allan.nielsen@microchip.com>, Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 15 Oct 2025 at 09:18, Herve Codina <herve.codina@bootlin.com> wrote:
>
> The code set directly fwnode->dev field.
>
> Use the dedicated fw_devlink_set_device() helper to perform this
> operation.
>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe


> ---
>  drivers/base/core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index 3e81b1914ce5..9da630d75d17 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -3739,7 +3739,7 @@ int device_add(struct device *dev)
>          * device and the driver sync_state callback is called for this device.
>          */
>         if (dev->fwnode && !dev->fwnode->dev) {
> -               dev->fwnode->dev = dev;
> +               fw_devlink_set_device(dev->fwnode, dev);
>                 fw_devlink_link_device(dev);
>         }
>
> @@ -3899,7 +3899,7 @@ void device_del(struct device *dev)
>         device_unlock(dev);
>
>         if (dev->fwnode && dev->fwnode->dev == dev)
> -               dev->fwnode->dev = NULL;
> +               fw_devlink_set_device(dev->fwnode, NULL);
>
>         /* Notify clients of device removal.  This call must come
>          * before dpm_sysfs_remove().
> --
> 2.51.0
>

