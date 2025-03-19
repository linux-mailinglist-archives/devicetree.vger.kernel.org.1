Return-Path: <devicetree+bounces-158899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A52E8A687D8
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6827A3A86A7
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 09:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EEFC252910;
	Wed, 19 Mar 2025 09:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GfwgYd7l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5839730100;
	Wed, 19 Mar 2025 09:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742376308; cv=none; b=Xf/Jg/vEUqStNlX5Tq9h4D6OtllZMIJIGQk3u7S9DelcFeG7hh6lYuqGBgMNCQ8Ow7cuGlBx+F9FOovIliOjGPkgct0Iw19Qt6ug7J3zLtyaLaUbdeopc7EQoRA6ja3ldq4MdxtayesHke1U3OM9rczK1Rhd1I2Jout73zNKp68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742376308; c=relaxed/simple;
	bh=rx1ieQ0qM19daaTSV+IxW0yuthluXQK3oCRlrmklKeo=;
	h=Message-ID:Date:From:To:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LOyDgkGKt8HpoQdQrOICCUFDNTmMun+YOnqCplpS9HsQTxjMgvcpSYvBWQLcLjU2J4/AP/hZsS3NtdoqyS3y1sFdZz0AcmPIcxabGmtqgVbX3s9Bgqjme2SvgawLUzC4hqFCisQKYmnwxz3sbI8RX6Wu1BziAYlPIkWrZwuabjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GfwgYd7l; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43948f77f1aso30950725e9.0;
        Wed, 19 Mar 2025 02:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742376305; x=1742981105; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=gK5En8938hA0dBzE+wi5xD1hnVJ2lUwNPVsZrJARpB8=;
        b=GfwgYd7l2ylgtu6/DHF2tOAX7zW7ltH9Q2TyCl+Vyv8iJTUC/LYkum5zbKjEOmZ14B
         guMMKm2EDv+wQR2J/jmypbwa1qlFm2mpVv9XydT7InZvpNm2Wsf0Id3cEYjuo8c9I81s
         oqyZhDV2okJpbzTLlwoIsC248T+ZBWCT3RK79fMg/6rgdBFZa3+Nh3QXsdhY+/cijqy+
         /nJvcD9mj+pkyrNLVcX08+IX/NcfRxIvkw8klPnBM+FTy0Fy83diHfCstfB/cTg5U9bG
         nCyABGEWf4SQnmDVgDMbBTKHpXbV4/4Pu6Nfp9CUk/aJpxCsfdr13My7z7zxkhZXLzSJ
         4B2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742376305; x=1742981105;
        h=in-reply-to:content-disposition:mime-version:references:subject:to
         :from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gK5En8938hA0dBzE+wi5xD1hnVJ2lUwNPVsZrJARpB8=;
        b=DWT5LzMwYQznLEkAnMTPaCJYjHbosUxD8JH6v0NxtO14qYKOVlzMNThh9TyQGXJtOg
         ffI8CiU8tji6TDqdBFgtbKrnjt4MKPzG/0HHM9y3PVnO7X+t4Ut2StT41py13qp64HPo
         ntObkSFIYWqTMGBifh8dgEWOZmuY8nMvYcoLa2BRBoo1qW0dNxX/8g4oj4MhybXzV/CM
         SIbMzF5y6pW7pwxauXFOnaRmsbHfvuboXRf+akJOudx8bZje3snN2u8oRGGXT4gEIxTk
         thA774/R8JVnUr3eTIdhLJsnK90OP7Gj47/oUcY6loOcOqMj91OK/+gqImAeEh9SKphB
         dBpA==
X-Forwarded-Encrypted: i=1; AJvYcCVn81W6+kqYbdOUjbIN6zXSZyfQwYw4qQJoq3j6ypjRGnFyYwfVK1+ihgz22UDJTa0VcMoM8jpu6K6ebB0e@vger.kernel.org, AJvYcCWuZv9ri5y0xjk2CSPxK1zYx5tBn3HbXeWiSJahZCdTww09WChvblj1eWVIqOl2M9dhiEbnCIaWcSlG@vger.kernel.org, AJvYcCXfU071wrV743cZ95ALU2N65nih4tANjPqdq+hkEe2J3S9auTZ44qEIK9AVrNbax5chyc39+PYc@vger.kernel.org
X-Gm-Message-State: AOJu0YwZghhj2lUl1/gzJs66FmLpvIhoCpghTdw68lW3Xw+kbTlEy+eY
	HLBvwdsmj1sZZFUOiW6fbea/Awnki2zkQKZaZop16kA++PVq5kAq
X-Gm-Gg: ASbGncu5R2A6RWxrCpk7aCTCVS8FdMsHDIcEActEoGH2xSBDM7O0/P8Wqu/+TlEc286
	rkk4EdvFwl6HH7xPfvLLwcd1wdYcfqo8v4cGKA5p5bJ4uwzo18TzKrvW6SIXwMXxV4YWze4nnPF
	LRY4h/KojymPrCYx8pNJvBJHYPIaQrSUE/F8WRh0bnJHKjGK2jm/eL5Gery37Nl/27vwCTv1rwU
	UIBWB1djPM8YlWu1uhuaY7leeU9WgRbnXkOEkivqAW15bo4RLzIYmoXe0PtBLXgzPSvS5GnoRoR
	d+/qTsUM3U30WMJ1cy6CHNnzs35PqJNqOuMOM47bifcLjiBhfHkgDMY2CKsLztR/KXSXKJwmzR6
	V
X-Google-Smtp-Source: AGHT+IHtgnB6wAaAUB+8UjYGKzNV76KxfOm+nz2OfLpm7XJRlRBMHiB9AH1bn6wqChPMM7tdakYRzQ==
X-Received: by 2002:a05:600c:1ca1:b0:43c:ea1a:720a with SMTP id 5b1f17b1804b1-43d46b5a82fmr4595085e9.1.1742376304166;
        Wed, 19 Mar 2025 02:25:04 -0700 (PDT)
Received: from Ansuel-XPS. (93-34-90-129.ip49.fastwebnet.it. [93.34.90.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d43f32fcdsm13398905e9.7.2025.03.19.02.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 02:25:03 -0700 (PDT)
Message-ID: <67da8d6f.050a0220.1da33e.3b15@mx.google.com>
X-Google-Original-Message-ID: <Z9qNbYhzlYj5FLNW@Ansuel-XPS.>
Date: Wed, 19 Mar 2025 10:25:01 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Golle <daniel@makrotopia.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: Re: [net-next PATCH 2/6] net: pcs: Implement OF support for PCS
 driver
References: <20250318235850.6411-1-ansuelsmth@gmail.com>
 <20250318235850.6411-3-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318235850.6411-3-ansuelsmth@gmail.com>

On Wed, Mar 19, 2025 at 12:58:38AM +0100, Christian Marangi wrote:
> Implement the foundation of OF support for PCS driver.
> 
> To support this, implement a simple Provider API where a PCS driver can
> expose multiple PCS with an xlate .get function.
> 
> PCS driver will have to call of_pcs_add_provider() and pass the device
> node pointer and a xlate function to return the correct PCS for the
> requested interface and the passed #pcs-cells.
> 
> This will register the PCS in a global list of providers so that
> consumer can access it.
> 
> Consumer will then use of_pcs_get() to get the actual PCS by passing the
> device_node pointer, the index for #pcs-cells and the requested
> interface.
> 
> For simple implementation where #pcs-cells is 0 and the PCS driver
> expose a single PCS, the xlate function of_pcs_simple_get() is
> provided. In such case the passed interface is ignored and is expected
> that the PCS supports any interface mode supported by the MAC.
> 
> For advanced implementation a custom xlate function is required. Such
> function should return an error if the PCS is not supported for the
> requested interface type.
> 
> This is needed for the correct function of of_phylink_mac_select_pcs()
> later described.
> 
> PCS driver on removal should first call phylink_pcs_release() on every
> PCS the driver provides and then correctly delete as a provider with
> the usage of of_pcs_del_provider().
> 
> A generic function for .mac_select_pcs is provided for any MAC driver
> that will declare PCS in DT, of_phylink_mac_select_pcs().
> This function will parse "pcs-handle" property and will try every PCS
> declared in DT until one that supports the requested interface type is
> found. This works by leveraging the return value of the xlate function
> returned by of_pcs_get() and checking if it's an ERROR or NULL, in such
> case the next PCS in the phandle array is tested.
> 
> Some additional helper are provided for xlate functions,
> pcs_supports_interface() as a simple function to check if the requested
> interface is supported by the PCS and phylink_pcs_release() to release a
> PCS from a phylink instance.
> 
> Co-developed-by: Daniel Golle <daniel@makrotopia.org>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  drivers/net/pcs/Kconfig          |   7 ++
>  drivers/net/pcs/Makefile         |   1 +
>  drivers/net/pcs/pcs.c            | 185 +++++++++++++++++++++++++++++++
>  drivers/net/phy/phylink.c        |  21 ++++
>  include/linux/pcs/pcs-provider.h |  46 ++++++++
>  include/linux/pcs/pcs.h          |  62 +++++++++++
>  include/linux/phylink.h          |   2 +
>  7 files changed, 324 insertions(+)
>  create mode 100644 drivers/net/pcs/pcs.c
>  create mode 100644 include/linux/pcs/pcs-provider.h
>  create mode 100644 include/linux/pcs/pcs.h
> 
> diff --git a/drivers/net/pcs/Kconfig b/drivers/net/pcs/Kconfig
> index f6aa437473de..8c3b720de6fd 100644
> --- a/drivers/net/pcs/Kconfig
> +++ b/drivers/net/pcs/Kconfig
> @@ -5,6 +5,13 @@
>  
>  menu "PCS device drivers"
>  
> +config OF_PCS
> +	tristate
> +	depends on OF
> +	depends on PHYLINK
> +	help
> +		OpenFirmware PCS accessors
> +
>  config PCS_XPCS
>  	tristate "Synopsys DesignWare Ethernet XPCS"
>  	select PHYLINK
> diff --git a/drivers/net/pcs/Makefile b/drivers/net/pcs/Makefile
> index 4f7920618b90..29881f0f981f 100644
> --- a/drivers/net/pcs/Makefile
> +++ b/drivers/net/pcs/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # Makefile for Linux PCS drivers
>  
> +obj-$(CONFIG_OF_PCS)		+= pcs.o
>  pcs_xpcs-$(CONFIG_PCS_XPCS)	:= pcs-xpcs.o pcs-xpcs-plat.o \
>  				   pcs-xpcs-nxp.o pcs-xpcs-wx.o
>  
> diff --git a/drivers/net/pcs/pcs.c b/drivers/net/pcs/pcs.c
> new file mode 100644
> index 000000000000..af04a76ef825
> --- /dev/null
> +++ b/drivers/net/pcs/pcs.c
> @@ -0,0 +1,185 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +#include <linux/mutex.h>
> +#include <linux/of.h>
> +#include <linux/phylink.h>
> +#include <linux/pcs/pcs.h>
> +#include <linux/pcs/pcs-provider.h>
> +
> +struct of_pcs_provider {
> +	struct list_head link;
> +
> +	struct device_node *node;
> +	struct phylink_pcs *(*get)(struct of_phandle_args *pcsspec,
> +				   void *data,
> +				   phy_interface_t interface);
> +
> +	void *data;
> +};
> +
> +static LIST_HEAD(of_pcs_providers);
> +static DEFINE_MUTEX(of_pcs_mutex);
> +
> +struct phylink_pcs *of_pcs_simple_get(struct of_phandle_args *pcsspec, void *data,
> +				      phy_interface_t interface)
> +{
> +	struct phylink_pcs *pcs = data;
> +
> +	if (!pcs_supports_interface(pcs, interface))
> +		return ERR_PTR(-EOPNOTSUPP);
> +
> +	return data;
> +}
> +EXPORT_SYMBOL_GPL(of_pcs_simple_get);
> +
> +int of_pcs_add_provider(struct device_node *np,
> +			struct phylink_pcs *(*get)(struct of_phandle_args *pcsspec,
> +						   void *data,
> +						   phy_interface_t interface),
> +			void *data)
> +{
> +	struct of_pcs_provider *pp;
> +
> +	if (!np)
> +		return 0;
> +
> +	pp = kzalloc(sizeof(*pp), GFP_KERNEL);
> +	if (!pp)
> +		return -ENOMEM;
> +
> +	pp->node = of_node_get(np);
> +	pp->data = data;
> +	pp->get = get;
> +
> +	mutex_lock(&of_pcs_mutex);
> +	list_add(&pp->link, &of_pcs_providers);
> +	mutex_unlock(&of_pcs_mutex);
> +	pr_debug("Added pcs provider from %pOF\n", np);
> +
> +	fwnode_dev_initialized(&np->fwnode, true);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(of_pcs_add_provider);
> +
> +void of_pcs_del_provider(struct device_node *np)
> +{
> +	struct of_pcs_provider *pp;
> +
> +	if (!np)
> +		return;
> +
> +	mutex_lock(&of_pcs_mutex);
> +	list_for_each_entry(pp, &of_pcs_providers, link) {
> +		if (pp->node == np) {
> +			list_del(&pp->link);
> +			fwnode_dev_initialized(&np->fwnode, false);
> +			of_node_put(pp->node);
> +			kfree(pp);
> +			break;
> +		}
> +	}
> +	mutex_unlock(&of_pcs_mutex);
> +}
> +EXPORT_SYMBOL_GPL(of_pcs_del_provider);
> +
> +static int of_parse_pcsspec(const struct device_node *np, int index,
> +			    const char *name, struct of_phandle_args *out_args)
> +{
> +	int ret = -ENOENT;
> +
> +	if (!np)
> +		return -ENOENT;
> +
> +	if (name)
> +		index = of_property_match_string(np, "pcs-names", name);
> +
> +	ret = of_parse_phandle_with_args(np, "pcs-handle", "#pcs-cells",
> +					 index, out_args);
> +	if (ret || (name && index < 0))
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static struct phylink_pcs *
> +of_pcs_get_from_pcsspec(struct of_phandle_args *pcsspec,
> +			phy_interface_t interface)
> +{
> +	struct of_pcs_provider *provider;
> +	struct phylink_pcs *pcs = ERR_PTR(-EPROBE_DEFER);
> +
> +	if (!pcsspec)
> +		return ERR_PTR(-EINVAL);
> +
> +	mutex_lock(&of_pcs_mutex);
> +	list_for_each_entry(provider, &of_pcs_providers, link) {
> +		if (provider->node == pcsspec->np) {
> +			pcs = provider->get(pcsspec, provider->data,
> +					    interface);
> +			if (!IS_ERR(pcs))
> +				break;
> +		}
> +	}
> +	mutex_unlock(&of_pcs_mutex);
> +
> +	return pcs;
> +}
> +
> +static struct phylink_pcs *__of_pcs_get(struct device_node *np, int index,
> +					const char *con_id,
> +					phy_interface_t interface)
> +{
> +	struct of_phandle_args pcsspec;
> +	struct phylink_pcs *pcs;
> +	int ret;
> +
> +	ret = of_parse_pcsspec(np, index, con_id, &pcsspec);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	pcs = of_pcs_get_from_pcsspec(&pcsspec, interface);
> +	of_node_put(pcsspec.np);
> +
> +	return pcs;
> +}
> +
> +struct phylink_pcs *of_pcs_get(struct device_node *np, int index,
> +			       phy_interface_t interface)
> +{
> +	return __of_pcs_get(np, index, NULL, interface);
> +}
> +EXPORT_SYMBOL_GPL(of_pcs_get);
> +
> +struct phylink_pcs *of_phylink_mac_select_pcs(struct phylink_config *config,
> +					      phy_interface_t interface)
> +{
> +	int i, count;
> +	struct device *dev = config->dev;
> +	struct device_node *np = dev->of_node;
> +	struct phylink_pcs *pcs = ERR_PTR(-ENODEV);
> +
> +	/* To enable using_mac_select_pcs on phylink_create */
> +	if (interface == PHY_INTERFACE_MODE_NA)
> +		return NULL;
> +
> +	/* Reject configuring PCS with Internal mode */
> +	if (interface == PHY_INTERFACE_MODE_INTERNAL)
> +		return ERR_PTR(-EINVAL);
> +
> +	if (!of_property_present(np, "pcs-handle"))
> +		return pcs;
> +
> +	count = of_count_phandle_with_args(np, "pcs-handle", "#pcs-cells");
> +	if (count < 0)
> +		return ERR_PTR(count);
> +
> +	for (i = 0; i < count; i++) {
> +		pcs = of_pcs_get(np, i, interface);
> +		if (!IS_ERR_OR_NULL(pcs))
> +			return pcs;
> +	}
> +
> +	return pcs;
> +}
> +EXPORT_SYMBOL_GPL(of_phylink_mac_select_pcs);
> diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
> index eef1712ec22c..7f71547e89fe 100644
> --- a/drivers/net/phy/phylink.c
> +++ b/drivers/net/phy/phylink.c
> @@ -1130,6 +1130,27 @@ int phylink_pcs_pre_init(struct phylink *pl, struct phylink_pcs *pcs)
>  }
>  EXPORT_SYMBOL_GPL(phylink_pcs_pre_init);
>  
> +/**
> + * phylink_pcs_release() - release a PCS
> + * @pl: a pointer to &struct phylink_pcs
> + *
> + * PCS provider can use this to release a PCS from a phylink
> + * instance by stopping the attached netdev. This is only done
> + * if the PCS is actually attached to a phylink, otherwise is
> + * ignored.
> + */
> +void phylink_pcs_release(struct phylink_pcs *pcs)
> +{
> +	struct phylink *pl = pcs->phylink;
> +
> +	if (pl) {
> +		rtnl_lock();
> +		dev_close(pl->netdev);
> +		rtnl_unlock();
> +	}
> +}
> +EXPORT_SYMBOL_GPL(phylink_pcs_release);
> +
>  static void phylink_mac_config(struct phylink *pl,
>  			       const struct phylink_link_state *state)
>  {
> diff --git a/include/linux/pcs/pcs-provider.h b/include/linux/pcs/pcs-provider.h
> new file mode 100644
> index 000000000000..0172d0286f07
> --- /dev/null
> +++ b/include/linux/pcs/pcs-provider.h
> @@ -0,0 +1,46 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +#ifndef __LINUX_PCS_PROVIDER_H
> +#define __LINUX_PCS_PROVIDER_H
> +
> +#include <linux/phy.h>
> +
> +/**
> + * of_pcs_simple_get - Simple xlate function to retrieve PCS
> + * @pcsspec: Phandle arguments
> + * @data: Context data (assumed assigned to the single PCS)
> + * @interface: requested PHY interface type for PCS
> + *
> + * Returns the PCS (pointed by data) or an -EOPNOTSUPP pointer
> + * if the PCS doesn't support the requested interface.
> + */
> +struct phylink_pcs *of_pcs_simple_get(struct of_phandle_args *pcsspec, void *data,
> +				      phy_interface_t interface);
> +
> +/**
> + * of_pcs_add_provider - Registers a new PCS provider
> + * @np: Device node
> + * @get: xlate function to retrieve the PCS
> + * @data: Context data
> + *
> + * Register and add a new PCS to the global providers list
> + * for the device node. A function to get the PCS from
> + * device node with the use of phandle args.
> + * To the get function is also passed the interface type
> + * requested for the PHY. PCS driver will use the passed
> + * interface to understand if the PCS can support it or not.
> + *
> + * Returns 0 on success or -ENOMEM on allocation failure.
> + */
> +int of_pcs_add_provider(struct device_node *np,
> +			struct phylink_pcs *(*get)(struct of_phandle_args *pcsspec,
> +						   void *data,
> +						   phy_interface_t interface),
> +			void *data);
> +
> +/**
> + * of_pcs_del_provider - Removes a PCS provider
> + * @np: Device node
> + */
> +void of_pcs_del_provider(struct device_node *np);
> +
> +#endif /* __LINUX_PCS_PROVIDER_H */
> diff --git a/include/linux/pcs/pcs.h b/include/linux/pcs/pcs.h
> new file mode 100644
> index 000000000000..b681bf05ac08
> --- /dev/null
> +++ b/include/linux/pcs/pcs.h
> @@ -0,0 +1,62 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +#ifndef __LINUX_PCS_H
> +#define __LINUX_PCS_H
> +
> +#include <linux/phy.h>
> +#include <linux/phylink.h>
> +
> +static inline bool pcs_supports_interface(struct phylink_pcs *pcs,
> +					  phy_interface_t interface)
> +{
> +	return test_bit(interface, pcs->supported_interfaces);
> +}
> +
> +#ifdef CONFIG_OF_PCS

Will be changed to IS_ENABLED to account for module config.

> +/**
> + * of_pcs_get - Retrieves a PCS from a device node
> + * @np: Device node
> + * @index: Index of PCS handle in Device Node
> + * @interface: requested PHY interface type for PCS
> + *
> + * Get a PCS for the requested PHY interface type from the
> + * device node at index.
> + *
> + * Returns a pointer to the phylink_pcs or a negative
> + * error pointer. Can return -EPROBE_DEFER if the PCS is not
> + * present in global providers list (either due to driver
> + * still needs to be probed or it failed to probe/removed)
> + */
> +struct phylink_pcs *of_pcs_get(struct device_node *np, int index,
> +			       phy_interface_t interface);
> +
> +/**
> + * of_phylink_mac_select_pcs - Generic MAC select pcs for OF PCS provider
> + * @config: phylink config pointer
> + * @interface: requested PHY interface type for PCS
> + *
> + * Generic helper function to get a PCS from a "pcs-handle" OF property
> + * defined in device tree. Each phandle defined in "pcs-handle" will be
> + * tested until a PCS that supports the requested PHY interface is found.
> + *
> + * Returns a pointer to the selected PCS or an error pointer.
> + * Return NULL for PHY_INTERFACE_MODE_NA and a -EINVAL error pointer
> + * for PHY_INTERFACE_MODE_INTERNAL. It can also return -EPROBE_DEFER,
> + * refer to of_pcs_get for details about it.
> + */
> +struct phylink_pcs *of_phylink_mac_select_pcs(struct phylink_config *config,
> +					      phy_interface_t interface);
> +#else
> +static inline struct phylink_pcs *of_pcs_get(struct device_node *np, int index,
> +					     phy_interface_t interface)
> +{
> +	return PTR_ERR(-ENOENT);

Wrong macro for error, will be fixed in v2.

> +}
> +
> +static inline struct phylink_pcs *of_phylink_mac_select_pcs(struct phylink_config *config,
> +							    phy_interface_t interface)
> +{
> +	return PTR_ERR(-EOPNOTSUPP);

Ditto.

> +}
> +#endif
> +
> +#endif /* __LINUX_PCS_H */
> diff --git a/include/linux/phylink.h b/include/linux/phylink.h
> index c187267a15b6..80367d4fbad9 100644
> --- a/include/linux/phylink.h
> +++ b/include/linux/phylink.h
> @@ -695,6 +695,8 @@ void phylink_pcs_change(struct phylink_pcs *, bool up);
>  
>  int phylink_pcs_pre_init(struct phylink *pl, struct phylink_pcs *pcs);
>  
> +void phylink_pcs_release(struct phylink_pcs *pcs);
> +
>  void phylink_start(struct phylink *);
>  void phylink_stop(struct phylink *);
>  
> -- 
> 2.48.1
> 

-- 
	Ansuel

