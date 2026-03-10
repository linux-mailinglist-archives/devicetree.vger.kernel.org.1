Return-Path: <devicetree+bounces-273382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gG3LCtXhr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:18:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE5D2482AA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:18:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F20043062650
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF5743CEDF;
	Tue, 10 Mar 2026 09:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UgLraUno"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAAE43CEC2
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133917; cv=none; b=Qr8zFyZYVHNtkEXNX3+0+Xfog4ij1qLLXHVIDirL+b8ONoEzvfzXY+vKlARdddE6vaCbweaQQmF1QZ9u1q7vKVbwcdS+ug98prv2GmxeO6ebpKPsCP5e2OeR3v7juyfb+QPEGFUBMuWcR/HB90ZYsRSIVd/4HYoIesPFafv0Phg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133917; c=relaxed/simple;
	bh=H70YKpxspaWLdFIg3PyavPo2DsL/L6IsMxaRGoj15Mw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jey5a2k5n1AzYDjXzjCHQKomuTQbaTsi9knTXkazJJoy+TX0a5JtBxL8YlsthuaINZQXQfZqxMsIp2jQwUl1SdKKVYYR0VZse3RoQgd8jYbamuGXtJQMPqgTC2dwcg3hPy1ShDkOJ0K6koZw6hijlhIxreepiJluI1h0TnnM3oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UgLraUno; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4853f2826f7so16555075e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773133914; x=1773738714; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/BVRqxnHF4XZhg6MFagvA5pNw8KHuNYwkCYalVlxac8=;
        b=UgLraUnoM6gkDcHRuua2lv3JCuBf/DqAEH1Y2kE1Hy12HU/GVYWeliZ1Qu0YIATzPA
         lKQcun2DiOu9rzHcmaXQc+retS8dtYbVABP+rIkZJO4qSLeHqN/xe3+D9eYxOSyB25Tq
         rdA2X2MFs/Puh6J4dijzBiHsRs86ExEbjab6O0Bcy77GLkUkF4hkey3pR9s0d5heQqtM
         x7IT3vD4UFM111cmy194bf5y04wn45TEybeg+Kg0Ac2xXofzagGKjVCcivXu/TlSJEV4
         9KsEeDgnnMFtr9Q8+LWwOfmcw0QcqeBN0N6/Qot1lQAhxXYYHdTOraACpvzWYhDIG0nR
         0U5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773133914; x=1773738714;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/BVRqxnHF4XZhg6MFagvA5pNw8KHuNYwkCYalVlxac8=;
        b=MemMyNqQGImX20SsDdzyQNibUOUAoMUs3McrWQV/UxuYTv2STLWk4qSMvf88pGvZry
         YsmlrtrND1fFdkyFpeWfSxjFmz8ahQ4Zy9VAHeydoO00aXm3u62GmFIibdwsvjvws4lI
         bwA4nkp1apxR2VgLEUctlqdMRUIbptnI7cOfD5W/EyNnUoXfYCdZ+mRfQkvWYJDX60qx
         CzmPtdwVMvAc2X1fu706CdsqDJLyIoD5WW45H8wtec0yAtx2lLQCsvBBzSu9R4pVEg9+
         QM/Cb+9xhVYBAZAkY+oUElgE0Z1T8HMHFGfySXQQ2ah7eNpzpn5u8ygZMifSGyDbASXb
         cRmw==
X-Forwarded-Encrypted: i=1; AJvYcCVIfS/dHue1UZm/UdwJBt9gJjbrFgeTkXnpodaVmWLHd7C6Yp4ozEoim8IGoZMQQcvZ0rNB1pqAlv5V@vger.kernel.org
X-Gm-Message-State: AOJu0YxM1sYSN8FAhOtfah28dI7jteUUZaecE7KjkFTRBV+Q0btcohv1
	xNXeV8g+6AY0MymTK9KkfNnUq7pnrliEi2rv0s9ZsiMxte1j3U9MWD7W
X-Gm-Gg: ATEYQzyLPLdHvGfE1El3RyB9DrNLNkc06879Kt/2CfOfmx1jHrlP9lPjKl114gr3Gos
	eedoimfJPPMzlXN3RKORyt8VoLykOCpU5ACMBMzxi2ZfNoC8NFf+PPfZ7qZEx+3ClsfwpN7WSpw
	nv6UFLD5fNLQb0nVygd8mRiHNx/W4sqrcZOORSVx30H7BFgUlw6NZINVHNz+fZVy++EXW7Q0X5U
	Hd1xhjkzFQYRtx1jWMoW70rhSVuyC01oGfOgcstOs7LrnsDr8j1t3YdZTukAxnVi1OT16+g1EAI
	qyVmG8xS3a2N5Unq2Gj4gC7/yUw1IyVskj5tRkpB7K9/oqNL/24SwqC4Fu3z9raRO+TTE5QKlYZ
	Y9rItyZ9EVgBdi3PA8JHXHbXER1GEopHudR19NyE0Ql1kcJ9puK55B5Wqodxf/tUWNzgysW7H5Z
	ONf3+1HJsQjfHhlm16ROpD/DtDQsShKTYsb+AvZ9KdQIgToaGa983Lt0XZM0JEaL+B9zKEthV0L
	d83AMuOs9ZIK3JeTVOm1pSkfZb8EsbQd2wUyYbtAnRSFLeHEJxaVUBYicZsVcsqMg==
X-Received: by 2002:a05:600c:8b86:b0:485:3473:d4a1 with SMTP id 5b1f17b1804b1-4853473d6dcmr138617465e9.34.1773133913789;
        Tue, 10 Mar 2026 02:11:53 -0700 (PDT)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([137.71.226.102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853a797dbasm73208645e9.7.2026.03.10.02.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:11:53 -0700 (PDT)
Date: Tue, 10 Mar 2026 10:11:50 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org, 
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org, Frank.Li@nxp.com, 
	lgirdwood@gmail.com, vikash.bansal@nxp.com, priyanka.jain@nxp.com, 
	aman.kumarpandey@nxp.com
Subject: Re: [PATCH v6 6/7] i3c: hub: Add support for the I3C interface in
 the I3C hub
Message-ID: <7s2yvczgpyjmgdhyymoxcbumahnh24wwcluhmevkirtbh54x7l@4ckzuzlxrzkj>
References: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
 <20260310065727.3759342-6-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310065727.3759342-6-lakshay.piplani@nxp.com>
X-Rspamd-Queue-Id: BAE5D2482AA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273382-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gastmaier@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,infradead.org:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 12:27:26PM +0530, Lakshay Piplani wrote:
> Add virtual I3C bus support for the hub and provide interface to enable
> or disable downstream ports.
> 
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
> Signed-off-by: Lakshay Piplani <lakshay.piplani@nxp.com>
> 
> ---
> Changes in v6:
>  - Add support for the generic I3C interface in the I3C Hub
> ---
> ---
>  MAINTAINERS             |   3 +
>  drivers/i3c/Kconfig     |  15 ++
>  drivers/i3c/Makefile    |   1 +
>  drivers/i3c/hub.c       | 459 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/i3c/hub.h | 107 ++++++++++
>  5 files changed, 585 insertions(+)
>  create mode 100644 drivers/i3c/hub.c
>  create mode 100644 include/linux/i3c/hub.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2fc44b489ea1..7613b4b59290 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19110,12 +19110,15 @@ F:	drivers/ptp/ptp_netc.c
>  NXP P3H2X4X I3C-HUB DRIVER
>  M:	Vikash Bansal <vikash.bansal@nxp.com>
>  M:	Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> +M:	Lakshay Piplani <lakshay.piplani@nxp.com>
>  L:	linux-kernel@vger.kernel.org
>  L:	linux-i3c-owner@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
> +F:	drivers/i3c/hub.c
>  F:	drivers/mfd/p3h2840.c
>  F:	drivers/regulator/p3h2840_i3c_hub_regulator.c
> +F:	include/linux/i3c/hub.h
>  F:	include/linux/mfd/p3h2840.h
>  
>  NXP PF5300/PF5301/PF5302 PMIC REGULATOR DEVICE DRIVER
> diff --git a/drivers/i3c/Kconfig b/drivers/i3c/Kconfig
> index 30a441506f61..889d781f099b 100644
> --- a/drivers/i3c/Kconfig
> +++ b/drivers/i3c/Kconfig
> @@ -21,4 +21,19 @@ menuconfig I3C
>  
>  if I3C
>  source "drivers/i3c/master/Kconfig"
> +
> +config I3C_HUB
> +	bool "I3C Hub Support"
> +	depends on I3C
> +	help
> +	  Enable support for the I3C interface in hub devices.
> +
> +	  This option adds virtual I3C bus support for hubs by creating
> +	  virtual master controllers for downstream ports and forwarding
> +	  bus operations through the hub device. It also provides an
> +	  interface used by hub drivers to enable or disable downstream
> +	  ports during bus transactions.
> +
> +	  Say Y here if your platform includes an I3C hub device
> +
>  endif # I3C

Hi Aman, the i3c subsytem allows to be compiled as module, why your
driver doesn't (due to bool instead of tristate), this causes, when
I3C is a module:

  arm-linux-ld: drivers/i3c/hub.o: in function `i3c_hub_request_ibi':
  hub.c:(.text+0xec): undefined reference to `i3c_master_direct_attach_i3c_dev'
  ...

Can you force i3c built-in if hub is selected, or allow as a module?

Thanks,
Jorge
> diff --git a/drivers/i3c/Makefile b/drivers/i3c/Makefile
> index 11982efbc6d9..9ddee56a6338 100644
> --- a/drivers/i3c/Makefile
> +++ b/drivers/i3c/Makefile
> @@ -2,3 +2,4 @@
>  i3c-y				:= device.o master.o
>  obj-$(CONFIG_I3C)		+= i3c.o
>  obj-$(CONFIG_I3C)		+= master/
> +obj-$(CONFIG_I3C_HUB)		+= hub.o
> diff --git a/drivers/i3c/hub.c b/drivers/i3c/hub.c
> new file mode 100644
> index 000000000000..9cdea8635327
> --- /dev/null
> +++ b/drivers/i3c/hub.c
> @@ -0,0 +1,459 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2026 NXP
> + * Generic I3C Hub core implementing virtual controller operations.
> + */
> +#include <linux/i3c/device.h>
> +#include <linux/i3c/hub.h>
> +
> +#include "internals.h"
> +
> +/**
> + * i3c_hub_master_bus_init() - Bind controller to hub device
> + * @controller: Virtual controller for a hub port
> + *
> + * Associates the virtual controller with the hub device descriptor so that
> + * transfers are executed through the hub on the parent bus.
> + */
> +static int i3c_hub_master_bus_init(struct i3c_master_controller *controller)
> +{
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_hub *hub;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
> +	hub = hub_controller->hub;
> +
> +	if (!hub->hub_dev)
> +		return -ENODEV;
> +
> +	controller->this = hub->hub_dev->desc;
> +	return 0;
> +}
> +
> +static void i3c_hub_master_bus_cleanup(struct i3c_master_controller *controller)
> +{
> +	controller->this = NULL;
> +}
> +
> +static int i3c_hub_attach_i3c_dev(struct i3c_dev_desc *dev)
> +{
> +	return 0;
> +}
> +
> +static int i3c_hub_reattach_i3c_dev(struct i3c_dev_desc *dev, u8 old_dyn_addr)
> +{
> +	return 0;
> +}
> +
> +static void i3c_hub_detach_i3c_dev(struct i3c_dev_desc *dev)
> +{
> +}
> +
> +/**
> + * i3c_hub_do_daa() - Perform DAA via hub port
> + * @hub: Hub instance
> + * @controller: Virtual controller for a hub port
> + *
> + * Enables the port connection, performs DAA on the parent controller,
> + * then disables the connection.
> + */
> +static int i3c_hub_do_daa(struct i3c_hub *hub,
> +			  struct i3c_master_controller *controller)
> +{
> +	int ret;
> +
> +	if (!hub || !hub->parent)
> +		return -ENODEV;
> +
> +	i3c_hub_enable_port(controller);
> +	ret = i3c_master_do_daa(hub->parent);
> +	i3c_hub_disable_port(controller);
> +
> +	return ret;
> +}
> +
> +static bool i3c_hub_supports_ccc_cmd(struct i3c_hub *hub,
> +				     const struct i3c_ccc_cmd *cmd)
> +{
> +	return i3c_master_supports_ccc_cmd(hub->parent, cmd);
> +}
> +
> +/**
> + * i3c_hub_send_ccc_cmd() - Send CCC through hub port
> + * @hub: Hub instance
> + * @controller: Virtual controller
> + * @cmd: CCC command
> + *
> + * Enables the port connection while issuing CCC on the parent controller.
> + */
> +static int i3c_hub_send_ccc_cmd(struct i3c_hub *hub,
> +				struct i3c_master_controller *controller,
> +				struct i3c_ccc_cmd *cmd)
> +{
> +	int ret;
> +
> +	if (!hub || !hub->parent)
> +		return -ENODEV;
> +
> +	i3c_hub_enable_port(controller);
> +	ret = i3c_master_send_ccc_cmd(hub->parent, cmd);
> +	i3c_hub_disable_port(controller);
> +
> +	return ret;
> +}
> +
> +/**
> + * i3c_hub_master_priv_xfers() - Execute private transfers via hub
> + * @dev: Target device descriptor
> + * @xfers: Transfer array
> + * @nxfers: Number of transfers
> + *
> + * Handles address adjustment and forwards private transfers through the hub
> + * device.
> + */
> +static int i3c_hub_master_priv_xfers(struct i3c_dev_desc *dev,
> +				     struct i3c_xfer *xfers,
> +				     int nxfers,
> +				     enum i3c_xfer_mode mode)
> +{
> +	struct i3c_master_controller *controller = i3c_dev_get_master(dev);
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_dev_desc *hub_dev;
> +	u8 hub_addr, target_addr;
> +	struct i3c_hub *hub;
> +	int ret;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
> +	hub = hub_controller->hub;
> +
> +	if (!hub->hub_dev)
> +		return -ENODEV;
> +
> +	hub_dev = hub->hub_dev->desc;
> +
> +	i3c_hub_enable_port(controller);
> +
> +	hub_addr = hub_dev->info.dyn_addr ?
> +		   hub_dev->info.dyn_addr : hub_dev->info.static_addr;
> +
> +	target_addr = dev->info.dyn_addr ?
> +		      dev->info.dyn_addr : dev->info.static_addr;
> +
> +	if (hub_addr != target_addr) {
> +		hub_dev->info.dyn_addr = target_addr;
> +		ret = i3c_master_reattach_i3c_dev(hub_dev, target_addr);
> +		if (ret)
> +			goto disable;
> +	}
> +
> +	ret = i3c_device_do_xfers(hub->hub_dev, xfers, nxfers, mode);
> +
> +	if (hub_addr != target_addr) {
> +		hub_dev->info.dyn_addr = hub_addr;
> +		ret |= i3c_master_reattach_i3c_dev(hub_dev, hub_addr);
> +	}
> +
> +disable:
> +	i3c_hub_disable_port(controller);
> +	return ret;
> +}
> +
> +static int i3c_hub_attach_i2c_dev(struct i2c_dev_desc *dev)
> +{
> +	return 0;
> +}
> +
> +static void i3c_hub_detach_i2c_dev(struct i2c_dev_desc *dev)
> +{
> +}
> +
> +static int i3c_hub_i2c_xfers(struct i2c_dev_desc *dev,
> +			     struct i2c_msg *xfers, int nxfers)
> +{
> +	return 0;
> +}
> +
> +static int i3c_hub_master_do_daa(struct i3c_master_controller *controller)
> +{
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_hub *hub;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
> +	hub = hub_controller->hub;
> +
> +	return i3c_hub_do_daa(hub, controller);
> +}
> +
> +static int i3c_hub_master_send_ccc_cmd(struct i3c_master_controller *controller,
> +				       struct i3c_ccc_cmd *cmd)
> +{
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_hub *hub;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
> +	hub = hub_controller->hub;
> +
> +	if (!hub->parent)
> +		return -ENODEV;
> +
> +	if (cmd->id == I3C_CCC_RSTDAA(true))
> +		return 0;
> +
> +	return i3c_hub_send_ccc_cmd(hub, controller, cmd);
> +}
> +
> +static bool i3c_hub_master_supports_ccc_cmd(struct i3c_master_controller *controller,
> +					    const struct i3c_ccc_cmd *cmd)
> +{
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_hub *hub;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
> +	hub = hub_controller->hub;
> +
> +	return i3c_hub_supports_ccc_cmd(hub, cmd);
> +}
> +
> +/**
> + * i3c_hub_request_ibi() - Request IBI through parent controller
> + * @desc: Target device descriptor
> + * @req: IBI setup
> + *
> + * Temporarily updates parent controller context to request IBI for a device
> + * connected through the hub.
> + */
> +static int i3c_hub_request_ibi(struct i3c_dev_desc *desc,
> +			       const struct i3c_ibi_setup *req)
> +{
> +	struct i3c_master_controller *controller = i3c_dev_get_master(desc);
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_master_controller *orig_parent;
> +	struct i3c_master_controller *parent;
> +	struct i3c_hub *hub;
> +	int ret;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
> +	hub = hub_controller->hub;
> +
> +	if (!hub->parent)
> +		return -ENODEV;
> +
> +	parent = hub->parent;
> +
> +	orig_parent = i3c_hub_update_desc_parent(&desc->common, parent);
> +
> +	ret = i3c_master_direct_attach_i3c_dev(parent, desc);
> +	if (ret) {
> +		i3c_hub_restore_desc_parent(&desc->common, orig_parent);
> +		return ret;
> +	}
> +
> +	mutex_unlock(&desc->ibi_lock);
> +	kfree(desc->ibi);
> +	desc->ibi = NULL;
> +	ret = i3c_dev_request_ibi_locked(desc, req);
> +	mutex_lock(&desc->ibi_lock);
> +
> +	i3c_hub_restore_desc_parent(&desc->common, orig_parent);
> +
> +	return ret;
> +}
> +
> +static void i3c_hub_free_ibi(struct i3c_dev_desc *desc)
> +{
> +	struct i3c_master_controller *controller = i3c_dev_get_master(desc);
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_master_controller *orig_parent;
> +	struct i3c_master_controller *parent;
> +	struct i3c_hub *hub;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return;
> +
> +	hub = hub_controller->hub;
> +
> +	parent = hub->parent;
> +
> +	i3c_hub_enable_port(controller);
> +
> +	orig_parent = i3c_hub_update_desc_parent(&desc->common, parent);
> +	i3c_master_direct_detach_i3c_dev(desc);
> +	mutex_unlock(&desc->ibi_lock);
> +	i3c_dev_free_ibi_locked(desc);
> +	mutex_lock(&desc->ibi_lock);
> +	i3c_hub_restore_desc_parent(&desc->common, orig_parent);
> +
> +	i3c_hub_disable_port(controller);
> +}
> +
> +/**
> + * i3c_hub_enable_ibi() - Enable IBI via hub port
> + * @desc: Target device descriptor
> + *
> + * Enables port connection and forwards the IBI enable request to the parent
> + * controller.
> + */
> +static int i3c_hub_enable_ibi(struct i3c_dev_desc *desc)
> +{
> +	struct i3c_master_controller *controller = i3c_dev_get_master(desc);
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_master_controller *orig_parent;
> +	struct i3c_master_controller *parent;
> +	struct i3c_hub *hub;
> +	int ret;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
> +	hub = hub_controller->hub;
> +
> +	if (!hub->parent)
> +		return -ENODEV;
> +
> +	parent = hub->parent;
> +
> +	i3c_hub_enable_port(controller);
> +
> +	orig_parent = i3c_hub_update_desc_parent(&desc->common, parent);
> +
> +	down_write(&parent->bus.lock);
> +	mutex_unlock(&desc->ibi_lock);
> +	ret = i3c_dev_enable_ibi_locked(desc);
> +	mutex_lock(&desc->ibi_lock);
> +	up_write(&parent->bus.lock);
> +
> +	i3c_hub_restore_desc_parent(&desc->common, orig_parent);
> +
> +	i3c_hub_disable_port(controller);
> +
> +	return ret;
> +}
> +
> +/**
> + * i3c_hub_disable_ibi() - Disable IBI via hub port
> + * @desc: Target device descriptor
> + *
> + * Enables port connection and forwards the IBI disable request to the parent
> + * controller.
> + */
> +static int i3c_hub_disable_ibi(struct i3c_dev_desc *desc)
> +{
> +	struct i3c_master_controller *controller = i3c_dev_get_master(desc);
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_master_controller *orig_parent;
> +	struct i3c_master_controller *parent;
> +	struct i3c_hub *hub;
> +	int ret;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return -ENODEV;
> +
> +	hub = hub_controller->hub;
> +
> +	if (!hub->parent)
> +		return -ENODEV;
> +
> +	parent = hub->parent;
> +
> +	i3c_hub_enable_port(controller);
> +
> +	orig_parent = i3c_hub_update_desc_parent(&desc->common, parent);
> +
> +	down_write(&parent->bus.lock);
> +	mutex_unlock(&desc->ibi_lock);
> +	ret = i3c_dev_disable_ibi_locked(desc);
> +	mutex_lock(&desc->ibi_lock);
> +	up_write(&parent->bus.lock);
> +
> +	i3c_hub_restore_desc_parent(&desc->common, orig_parent);
> +
> +	i3c_hub_disable_port(controller);
> +
> +	return ret;
> +}
> +
> +static void i3c_hub_recycle_ibi_slot(struct i3c_dev_desc *desc,
> +				     struct i3c_ibi_slot *slot)
> +{
> +}
> +
> +static const struct i3c_master_controller_ops i3c_hub_master_ops_data = {
> +	.bus_init = i3c_hub_master_bus_init,
> +	.bus_cleanup = i3c_hub_master_bus_cleanup,
> +	.attach_i3c_dev = i3c_hub_attach_i3c_dev,
> +	.reattach_i3c_dev = i3c_hub_reattach_i3c_dev,
> +	.detach_i3c_dev = i3c_hub_detach_i3c_dev,
> +	.do_daa = i3c_hub_master_do_daa,
> +	.supports_ccc_cmd = i3c_hub_master_supports_ccc_cmd,
> +	.send_ccc_cmd = i3c_hub_master_send_ccc_cmd,
> +	.i3c_xfers = i3c_hub_master_priv_xfers,
> +	.attach_i2c_dev = i3c_hub_attach_i2c_dev,
> +	.detach_i2c_dev = i3c_hub_detach_i2c_dev,
> +	.i2c_xfers = i3c_hub_i2c_xfers,
> +	.request_ibi = i3c_hub_request_ibi,
> +	.free_ibi = i3c_hub_free_ibi,
> +	.enable_ibi = i3c_hub_enable_ibi,
> +	.disable_ibi = i3c_hub_disable_ibi,
> +	.recycle_ibi_slot = i3c_hub_recycle_ibi_slot,
> +};
> +
> +/**
> + * i3c_hub_init() - Initialize hub context
> + * @hub: Hub instance
> + * @parent: Parent I3C master controller
> + * @ops: Vendor callbacks
> + * @hub_dev: I3C hub device
> + */
> +struct i3c_hub *i3c_hub_init(struct i3c_master_controller *parent,
> +			     const struct i3c_hub_ops *ops,
> +			     struct i3c_device *hub_dev)
> +{
> +	struct i3c_hub *hub;
> +
> +	hub = devm_kzalloc(&hub_dev->dev,
> +			   sizeof(*hub),
> +			   GFP_KERNEL);
> +
> +	if (!hub)
> +		return ERR_PTR(-ENOMEM);
> +
> +	hub->parent = parent;
> +	hub->ops = ops;
> +	hub->hub_dev = hub_dev;
> +
> +	return hub;
> +}
> +EXPORT_SYMBOL_GPL(i3c_hub_init);
> +
> +const struct i3c_master_controller_ops *i3c_hub_master_ops(void)
> +{
> +	return &i3c_hub_master_ops_data;
> +}
> +EXPORT_SYMBOL_GPL(i3c_hub_master_ops);
> +
> +MODULE_AUTHOR("Aman Kumar Pandey <aman.kumarpandey@nxp.com>");
> +MODULE_AUTHOR("Vikash Bansal <vikash.bansal@nxp.com>");
> +MODULE_AUTHOR("Lakshay Piplani <lakshay.piplani@nxp.com>");
> +MODULE_DESCRIPTION("Generic I3C hub support");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/i3c/hub.h b/include/linux/i3c/hub.h
> new file mode 100644
> index 000000000000..b685d4d3cc7e
> --- /dev/null
> +++ b/include/linux/i3c/hub.h
> @@ -0,0 +1,107 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2026 NXP
> + * Generic hub definitions and helper interfaces.
> + */
> +#ifndef _LINUX_I3C_HUB_H
> +#define _LINUX_I3C_HUB_H
> +
> +#include <linux/i3c/master.h>
> +
> +static inline struct i3c_master_controller *
> +i3c_hub_update_desc_parent(struct i3c_i2c_dev_desc *desc,
> +			   struct i3c_master_controller *parent)
> +{
> +	struct i3c_master_controller *orig_parent = desc->master;
> +
> +	desc->master = parent;
> +	return orig_parent;
> +}
> +
> +static inline void
> +i3c_hub_restore_desc_parent(struct i3c_i2c_dev_desc *desc,
> +			    struct i3c_master_controller *parent)
> +{
> +	desc->master = parent;
> +}
> +
> +/**
> + * struct i3c_hub - Generic I3C hub context
> + * @parent: Parent I3C master controller
> + * @ops: Vendor callbacks for port connection control
> + * @hub_dev: I3C device representing the hub on the parent bus
> + */
> +struct i3c_hub {
> +	struct i3c_master_controller *parent;
> +	const struct i3c_hub_ops *ops;
> +	struct i3c_device *hub_dev;
> +};
> +
> +struct i3c_hub_controller {
> +	struct i3c_master_controller *parent;
> +	struct i3c_master_controller controller;
> +	struct i3c_hub *hub;
> +};
> +
> +struct i3c_hub_ops {
> +	void (*enable_port)(struct i3c_master_controller *controller);
> +	void (*disable_port)(struct i3c_master_controller *controller);
> +};
> +
> +/**
> + * i3c_hub_enable_port() - Enable hub connection for a controller
> + * @controller: Virtual controller representing a hub port
> + *
> + * Retrieves hub context from controller drvdata and invokes the vendor
> + * callback to enable the associated port connection.
> + */
> +static inline void i3c_hub_enable_port(struct i3c_master_controller *controller)
> +{
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_hub *hub;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return;
> +
> +	hub = hub_controller->hub;
> +
> +	if (hub && hub->ops && hub->ops->enable_port)
> +		hub->ops->enable_port(controller);
> +}
> +
> +/**
> + * i3c_hub_disable_port() - Disable hub connection for a controller
> + * @controller: Virtual controller representing a hub port
> + *
> + * Retrieves hub context from controller drvdata and invokes the vendor
> + * callback to disable the associated port connection.
> + */
> +static inline void i3c_hub_disable_port(struct i3c_master_controller *controller)
> +{
> +	struct i3c_hub_controller *hub_controller;
> +	struct i3c_hub *hub;
> +
> +	hub_controller = dev_get_drvdata(&controller->dev);
> +	if (!hub_controller || !hub_controller->hub)
> +		return;
> +
> +	hub = hub_controller->hub;
> +
> +	if (hub && hub->ops && hub->ops->disable_port)
> +		hub->ops->disable_port(controller);
> +}
> +
> +/**
> + * i3c_hub_master_ops() - Return virtual controller ops for hub ports
> + *
> + * Provides i3c_master_controller_ops used by controllers created for hub
> + * ports.
> + */
> +const struct i3c_master_controller_ops *i3c_hub_master_ops(void);
> +
> +struct i3c_hub *i3c_hub_init(struct i3c_master_controller *parent,
> +			     const struct i3c_hub_ops *ops,
> +			     struct i3c_device *hub_dev);
> +
> +#endif
> -- 
> 2.25.1
> 

