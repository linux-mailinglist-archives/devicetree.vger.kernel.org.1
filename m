Return-Path: <devicetree+bounces-229303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3FFBF5D26
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:38:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E179A4850D2
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82EEA32E681;
	Tue, 21 Oct 2025 10:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fVVVHy8s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4568B32C955
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 10:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761043038; cv=none; b=Sb78QxEmMgqwwQbH4gHPHXKF5Png4vCdngqWzXEyDOZycPWJ32zi3qRPv3OWKb3GHnhMYL1zoqTGVoU3IalAANdObAHCA1PI9RYlgDrXMFXfR6okQjFmdavmytb/0h3m2ZY65RZfgD9d06W0ypbR/3wI/MoAVLxiv8djeGdonO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761043038; c=relaxed/simple;
	bh=q2nB0DwM2YccZrwzAwnGe8JbGMPoOZkWXyOBvo6HqOU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ns7dF8I4NbjXj8VZSLjS8cJMOrraRw6jawXHD/rgLJwTtIC5Iz2ufyb0Z8vUMX2+d5ItYIiGL0ngPZXxLChBKXcd6l/qo7IkoZdf/PnLWY47k1i/uh2GK8YrouRQxfmqr43UvVjE7J6zJ+Y696QiNuCpNImUitIm15mndO4S+X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fVVVHy8s; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-783fa3aa35cso47593287b3.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 03:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761043034; x=1761647834; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ph/ecut6A6hic5K1NGZ8Pu7nJ7zUO/n0Ty1uOi3Gzxk=;
        b=fVVVHy8sLoQob27t0rEA0gaFAsTwrvZWMtiHra06oGlAgVvBRbCvi9Q0R5PsssM2VP
         3opZzsj2yjl4mZN0m0fQOUCFaPGUlU0hdJQVEOAICP/F9edy4PeFxMDNRgqqE+vWlBwq
         gRo4WOltCc2x1w7tzNmnsiUe7DLW4Wk385fOAjvx4xAjIy6N//5jx7kmheOrtwD7tWpE
         2Ptn2+1PdgjD7SRm8u6GwWspp5Qow93y+PUJ1zdNcZ+cXFL0Hl9twy5pncYwDDJCM4IE
         DPQhhySXv3aD4ZgJwdVFZNuZDXb8ihiBpVJW+A5z81zJ6Ce1m/3ygAE/YqYBEV2Yts0D
         y4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761043034; x=1761647834;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ph/ecut6A6hic5K1NGZ8Pu7nJ7zUO/n0Ty1uOi3Gzxk=;
        b=sxBXEDRJBAuGS8QJWGj/998z4+qGqmGzHppVWgvH2ZtfTuowbiNOEF70MO76iHDbOe
         5xyvkb3lymGJJ2dmS6M85xKQw8aitorW6kVEK3dhnGMSsYzAr4Pzb89VBUpT6GPRrxT6
         8VUyvfUtwi+FLZ5oyBRZV6Z+pWo578VX0jONW7YABydcXjCQaEdYkEFnXilynkyw1WLT
         1YaNBkYTEqh2K6wmMw8JtZH/nm3F2KAQAfrG6iNk12QJS63rJdUNmNKh53O3qLJK66pF
         DUGleYjtF8AD0tF50jTAIDynxRnGswACZpO2VyTaV9UXdfNL4m5GVW8uQXFP6ayiTkXj
         JZnA==
X-Forwarded-Encrypted: i=1; AJvYcCXHdGtAkgW7dZvt6eIJ7F5xvosvRMlL6LYvb6aOhz8+9pvIjfexbYF7cSlGfrN8B2wSapB/4mQ8yL3e@vger.kernel.org
X-Gm-Message-State: AOJu0YxhZx6hHtLXOSSbPbhvv14glWj+zOyqQRlsZb9f9C5ffu9t50ji
	Ij1nytG7//i3+h9rQsh2fGun1trv26tIH3rsUjr+/Swq0GuL7HMS1eMwPhK5Jalm0amg7JuKo3R
	CsRz/26wnjETIzOKs50LM/xYYl5bGVPrBkLu11YLKZJNPfagFHIZf
X-Gm-Gg: ASbGncteRebBo3Ps5thTcQjCmP81CniZ249bclpaabwMemwNgOcTGGb0E2DIL8F57fi
	lmLfkbLJmIjrGKnlsoMBYhQRBCCrdemJe9FdeuKPYXDSqu7OHGj4EZTWX8slEjXPgSyA0Gieb12
	J4Ism/uyW69CusMrmCnVJzTKZD6lD1agHSRJdzxArX3KfWMI6kQXWCm00pFoN409qhHZlNqU1r1
	JKhHnKoprOOlGERHj3B87y62LTB2yRuRGPIbRW4lSkyW94BaT9i6rMVKuy5Xt/67dF8fNFJ
X-Google-Smtp-Source: AGHT+IFNWe0p4ctoYWfajWc50aGmHTb0xLSf46n4ozIzG6IhVoLkeVF1uvz+zd4LTY4qziEKltpM47W2yp2BVV5LtGg=
X-Received: by 2002:a05:690e:1c1d:b0:63f:2123:f966 with SMTP id
 956f58d0204a3-63f2123f9b3mr679700d50.69.1761043034054; Tue, 21 Oct 2025
 03:37:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015071420.1173068-1-herve.codina@bootlin.com> <20251015071420.1173068-3-herve.codina@bootlin.com>
In-Reply-To: <20251015071420.1173068-3-herve.codina@bootlin.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 21 Oct 2025 12:36:38 +0200
X-Gm-Features: AS18NWAASdG0xF_SzF3JiceFgjGSp70iEL12-_KJqlp8PTGQyhYi7YmRbNtNg04
Message-ID: <CAPDyKFqKfCTab2OcY9Sj9xS949o+y5PpJvO0CP80eV2qr-0sdg@mail.gmail.com>
Subject: Re: [PATCH v4 02/29] driver core: Rename get_dev_from_fwnode()
 wrapper to get_device_from_fwnode()
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

On Wed, 15 Oct 2025 at 09:16, Herve Codina <herve.codina@bootlin.com> wrote:
>
> get_dev_from_fwnode() calls get_device() and so it acquires a reference
> on the device returned.
>
> In order to be more obvious that this wrapper is a get_device() variant,
> rename it to get_device_from_fwnode().
>
> Suggested-by: Mark Brown <broonie@kernel.org>
> Link: https://lore.kernel.org/lkml/CAGETcx97QjnjVR8Z5g0ndLHpK96hLd4aYSV=iEkKPNbNOccYmA@mail.gmail.com/
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Saravana Kannan <saravanak@google.com>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe


> ---
>  drivers/base/core.c     | 18 +++++++++---------
>  drivers/pmdomain/core.c |  4 ++--
>  include/linux/device.h  |  2 +-
>  3 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index 3c533dab8fa5..334f5a4fbb9e 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -1888,7 +1888,7 @@ static bool fwnode_init_without_drv(struct fwnode_handle *fwnode)
>         if (!(fwnode->flags & FWNODE_FLAG_INITIALIZED))
>                 return false;
>
> -       dev = get_dev_from_fwnode(fwnode);
> +       dev = get_device_from_fwnode(fwnode);
>         ret = !dev || dev->links.status == DL_DEV_NO_DRIVER;
>         put_device(dev);
>
> @@ -1957,7 +1957,7 @@ static struct device *fwnode_get_next_parent_dev(const struct fwnode_handle *fwn
>         struct device *dev;
>
>         fwnode_for_each_parent_node(fwnode, parent) {
> -               dev = get_dev_from_fwnode(parent);
> +               dev = get_device_from_fwnode(parent);
>                 if (dev) {
>                         fwnode_handle_put(parent);
>                         return dev;
> @@ -2013,8 +2013,8 @@ static bool __fw_devlink_relax_cycles(struct fwnode_handle *con_handle,
>                 goto out;
>         }
>
> -       sup_dev = get_dev_from_fwnode(sup_handle);
> -       con_dev = get_dev_from_fwnode(con_handle);
> +       sup_dev = get_device_from_fwnode(sup_handle);
> +       con_dev = get_device_from_fwnode(con_handle);
>         /*
>          * If sup_dev is bound to a driver and @con hasn't started binding to a
>          * driver, sup_dev can't be a consumer of @con. So, no need to check
> @@ -2153,7 +2153,7 @@ static int fw_devlink_create_devlink(struct device *con,
>         if (sup_handle->flags & FWNODE_FLAG_NOT_DEVICE)
>                 sup_dev = fwnode_get_next_parent_dev(sup_handle);
>         else
> -               sup_dev = get_dev_from_fwnode(sup_handle);
> +               sup_dev = get_device_from_fwnode(sup_handle);
>
>         if (sup_dev) {
>                 /*
> @@ -2222,7 +2222,7 @@ static void __fw_devlink_link_to_consumers(struct device *dev)
>                 bool own_link = true;
>                 int ret;
>
> -               con_dev = get_dev_from_fwnode(link->consumer);
> +               con_dev = get_device_from_fwnode(link->consumer);
>                 /*
>                  * If consumer device is not available yet, make a "proxy"
>                  * SYNC_STATE_ONLY link from the consumer's parent device to
> @@ -5279,7 +5279,7 @@ void device_set_node(struct device *dev, struct fwnode_handle *fwnode)
>  EXPORT_SYMBOL_GPL(device_set_node);
>
>  /**
> - * get_dev_from_fwnode - Obtain a reference count of the struct device the
> + * get_device_from_fwnode - Obtain a reference count of the struct device the
>   * struct fwnode_handle is associated with.
>   * @fwnode: The pointer to the struct fwnode_handle to obtain the struct device
>   * reference count of.
> @@ -5297,11 +5297,11 @@ EXPORT_SYMBOL_GPL(device_set_node);
>   * This is possible since struct fwnode_handle has its own reference count and
>   * hence can out-live the struct device it is associated with.
>   */
> -struct device *get_dev_from_fwnode(struct fwnode_handle *fwnode)
> +struct device *get_device_from_fwnode(struct fwnode_handle *fwnode)
>  {
>         return get_device((fwnode)->dev);
>  }
> -EXPORT_SYMBOL_GPL(get_dev_from_fwnode);
> +EXPORT_SYMBOL_GPL(get_device_from_fwnode);
>
>  int device_match_name(struct device *dev, const void *name)
>  {
> diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
> index 61c2277c9ce3..5a7822de5d8a 100644
> --- a/drivers/pmdomain/core.c
> +++ b/drivers/pmdomain/core.c
> @@ -2678,7 +2678,7 @@ int of_genpd_add_provider_simple(struct device_node *np,
>         genpd->dev.of_node = np;
>
>         fwnode = of_fwnode_handle(np);
> -       dev = get_dev_from_fwnode(fwnode);
> +       dev = get_device_from_fwnode(fwnode);
>         if (!dev && !genpd_is_no_sync_state(genpd)) {
>                 genpd->sync_state = GENPD_SYNC_STATE_SIMPLE;
>                 device_set_node(&genpd->dev, fwnode);
> @@ -2753,7 +2753,7 @@ int of_genpd_add_provider_onecell(struct device_node *np,
>                 data->xlate = genpd_xlate_onecell;
>
>         fwnode = of_fwnode_handle(np);
> -       dev = get_dev_from_fwnode(fwnode);
> +       dev = get_device_from_fwnode(fwnode);
>         if (!dev)
>                 sync_state = true;
>         else
> diff --git a/include/linux/device.h b/include/linux/device.h
> index b031ff71a5bd..d8906136c086 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -1090,7 +1090,7 @@ void device_set_node(struct device *dev, struct fwnode_handle *fwnode);
>  int device_add_of_node(struct device *dev, struct device_node *of_node);
>  void device_remove_of_node(struct device *dev);
>  void device_set_of_node_from_dev(struct device *dev, const struct device *dev2);
> -struct device *get_dev_from_fwnode(struct fwnode_handle *fwnode);
> +struct device *get_device_from_fwnode(struct fwnode_handle *fwnode);
>
>  static inline struct device_node *dev_of_node(struct device *dev)
>  {
> --
> 2.51.0
>

