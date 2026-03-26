Return-Path: <devicetree+bounces-281184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCBwDEAhxWmC7AQAu9opvQ
	(envelope-from <devicetree+bounces-281184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 13:06:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 956AF334ED7
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 13:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E2F23115ED8
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 11:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8090C3F8DE0;
	Thu, 26 Mar 2026 11:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9C2ASmk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79DE3F7A80;
	Thu, 26 Mar 2026 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774526334; cv=none; b=W6Qz+g4hGtuE1AddvLz9m/sQMEnr4vTs3FiVDsMUUtCSA5QggCujetFSdwCFBSXXXWgl8iqBuvEUIGN72s2DABy+W3TwkhAKhPiKpJGSt+Ha5rEhfoIFtg+4vJ1F4wiUbxiU0hgMOM85jWmG9MF8uaknz8OjTV3d+t4wbPLqjvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774526334; c=relaxed/simple;
	bh=aJGxEH6abHvJG1/YDdFthINX7UFKbe9YYLe2cTfN8JY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GPVN0IVrTE+u0Ipj5zNvmFy7lRO5yUgMewKR6kYDq/rA+zk/sKvMAX86ueNXYZMENn9u+imAMGlroYiOGYyBsDqvGyG59V9HTZub5W4mvwqnHM8/9Qalh6Ny5CEJWwU1ItH7oKfc/uLEO9YqjOlH0QqMfMD8UJol+ZzsFfrSgNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9C2ASmk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E35DDC2BC87;
	Thu, 26 Mar 2026 11:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774526333;
	bh=aJGxEH6abHvJG1/YDdFthINX7UFKbe9YYLe2cTfN8JY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M9C2ASmkZQq9/XXTxASyRFE2mDv8+QRWNRzMnAxtFGkmxxmXOG715QRrpk7d5LWxa
	 rEwXdG2HIq9A6WJhnkFUIP5XyFxn1M9NnDAGI64PZSAZ8LTDOeFCe5ngVISffDQqC3
	 QaIarLkfwyKLHu925Gp0U25INxQXe6DhyFfWSPr307g0L/NTtbzYcWonkVzyS6YFRH
	 jLfwGaba45JnpYQWAl1aDqdOdNoub28c979w9F09Tb8mWSwisMo27EYZht5ZXOictm
	 bW0uTgP1Fgdmi92+wVK+t8y772/64rw2uOxwCYPgj0bQdkUWRDzKsrTCepNNcYCCZg
	 0QcoLRTXjpAUA==
Date: Thu, 26 Mar 2026 11:58:48 +0000
From: Lee Jones <lee@kernel.org>
To: Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, broonie@kernel.org,
	Frank.Li@nxp.com, lgirdwood@gmail.com, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, aman.kumarpandey@nxp.com
Subject: Re: [PATCH v7 4/7] mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub
 and on-die regulator
Message-ID: <20260326115848.GL1141718@google.com>
References: <20260319112441.3888957-1-lakshay.piplani@nxp.com>
 <20260319112441.3888957-5-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260319112441.3888957-5-lakshay.piplani@nxp.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281184-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email]
X-Rspamd-Queue-Id: 956AF334ED7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026, Lakshay Piplani wrote:

> From: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> 
> Add core MFD support for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
> family of multiport I3C hub devices. These devices connect to a host via
> I3C/I2C/SMBus and expose multiple downstream target ports.
> 
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
> 
> ---
> Changes in v7:
>  - Use new config I3C_OR_I2C
> 
> Changes in v6:
>  - No change
> 
> Changes in v5:
>  - Corrected the ordering in the Makefile and Kconfig for MFD_P3H2X4X
>  - Updated dev_err_probe() for regmap_init failure.
>  - Updated module description
> 
> Changes in v4:
>  - Split the driver into three separate patches(mfd, regulator and I3C hub)
>  - Added support for NXP P3H2x4x MFD functionality
> ---
> ---

One is enough.

>  MAINTAINERS                 |   2 +
>  drivers/mfd/Kconfig         |  13 ++++
>  drivers/mfd/Makefile        |   1 +
>  drivers/mfd/p3h2840.c       | 125 ++++++++++++++++++++++++++++++++++++
>  include/linux/mfd/p3h2840.h |  27 ++++++++
>  5 files changed, 168 insertions(+)
>  create mode 100644 drivers/mfd/p3h2840.c
>  create mode 100644 include/linux/mfd/p3h2840.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c72976dbdf31..4f67fe64c833 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19101,6 +19101,8 @@ L:	linux-kernel@vger.kernel.org
>  L:	linux-i3c-owner@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
> +F:	drivers/mfd/p3h2840.c
> +F:	include/linux/mfd/p3h2840.h
>  
>  NXP PF5300/PF5301/PF5302 PMIC REGULATOR DEVICE DRIVER
>  M:	Woodrow Douglass <wdouglass@carnegierobotics.com>
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 7192c9d1d268..14f4736683a1 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -617,6 +617,19 @@ config MFD_MX25_TSADC
>  	  i.MX25 processors. They consist of a conversion queue for general
>  	  purpose ADC and a queue for Touchscreens.
>  
> +config MFD_P3H2X4X

MFD_NXP_P3H2X4X

> +       tristate "NXP P3H2X4X I3C Hub Device"
> +       depends on I3C_OR_I2C
> +       select MFD_CORE
> +       select REGMAP_I3C
> +       select REGMAP_I2C
> +       help
> +         Enable Support for NXP P3H244x/P3H284x I3C HUB device using I3C/I2C
> +         communication interface.
> +
> +         This driver provides support for I3C hub and regulator, each subdriver
> +         can be enabled independently depending on the required functionality.
> +
>  config MFD_PF1550
>  	tristate "NXP PF1550 PMIC Support"
>  	depends on I2C=y && OF
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index e75e8045c28a..aaadf50fedf4 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -122,6 +122,7 @@ obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx-core.o
>  obj-$(CONFIG_MFD_MC13XXX_SPI)	+= mc13xxx-spi.o
>  obj-$(CONFIG_MFD_MC13XXX_I2C)	+= mc13xxx-i2c.o
>  
> +obj-$(CONFIG_MFD_P3H2X4X)  	+= p3h2840.o

There is a mismatch in the naming here.

Are we expressing the family or the specific device?

>  obj-$(CONFIG_MFD_PF1550)	+= pf1550.o
>  
>  obj-$(CONFIG_MFD_NCT6694)	+= nct6694.o
> diff --git a/drivers/mfd/p3h2840.c b/drivers/mfd/p3h2840.c
> new file mode 100644
> index 000000000000..65090a09f7c6
> --- /dev/null
> +++ b/drivers/mfd/p3h2840.c
> @@ -0,0 +1,125 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2025 NXP

Needs updating.

Author(s)?

> + * P3H2x4x i3c hub and regulator device.
> + */

Could this comment be a little more descriptive? Something like:

"Core driver for the NXP P3H2x4x family of I3C hubs."

Drop the regular part.

> +#include <linux/i3c/master.h>
> +#include <linux/i2c.h>
> +#include <linux/mfd/core.h>
> +#include <linux/mfd/p3h2840.h>
> +#include <linux/regmap.h>

Please sort your `#include` directives alphabetically.

> +static const struct mfd_cell p3h2x4x_devs[] = {
> +	{
> +		.name = "p3h2x4x-regulator",
> +	},
> +	{
> +		.name = "p3h2x4x-i3c-hub",
> +	},
> +};

MFD_CELL_NAME()

> +static const struct regmap_config p3h2x4x_regmap_config = {
> +	.reg_bits = P3H2x4x_REG_BITS,
> +	.val_bits = P3H2x4x_VAL_BITS,
> +	.max_register = 0xFF,
> +};
> +
> +static int p3h2x4x_device_probe_i3c(struct i3c_device *i3cdev)
> +{
> +	struct p3h2x4x_dev *p3h2x4x;
> +	int ret;
> +
> +	p3h2x4x = devm_kzalloc(&i3cdev->dev, sizeof(*p3h2x4x), GFP_KERNEL);
> +	if (!p3h2x4x)
> +		return -ENOMEM;
> +
> +	i3cdev_set_drvdata(i3cdev, p3h2x4x);

No point in setting this until after its populated.

> +	p3h2x4x->regmap = devm_regmap_init_i3c(i3cdev, &p3h2x4x_regmap_config);
> +	if (IS_ERR(p3h2x4x->regmap))
> +		return dev_err_probe(&i3cdev->dev, PTR_ERR(p3h2x4x->regmap),
> +				     "Failed to register I3C HUB regmap\n");

This error message appears to be a copy-paste from the I2C probe function.
Perhaps a more generic message like "Failed to initialise regmap" would be
more appropriate for both contexts.

> +
> +	p3h2x4x->is_p3h2x4x_in_i3c = true;

This is superfluous.  Just check `p3h2x4x->i3cdev`.

> +	p3h2x4x->i3cdev = i3cdev;
> +
> +	ret = devm_mfd_add_devices(&i3cdev->dev, PLATFORM_DEVID_NONE,
> +				   p3h2x4x_devs, ARRAY_SIZE(p3h2x4x_devs),
> +				   NULL, 0, NULL);
> +	if (ret)
> +		return dev_err_probe(&i3cdev->dev, ret, "Failed to add sub devices\n");
> +
> +	return 0;
> +}
> +
> +static int p3h2x4x_device_probe_i2c(struct i2c_client *client)
> +{
> +	struct p3h2x4x_dev *p3h2x4x;
> +	int ret;
> +
> +	p3h2x4x = devm_kzalloc(&client->dev, sizeof(*p3h2x4x), GFP_KERNEL);
> +	if (!p3h2x4x)
> +		return -ENOMEM;
> +
> +	i2c_set_clientdata(client, p3h2x4x);

As above.

> +	p3h2x4x->regmap = devm_regmap_init_i2c(client, &p3h2x4x_regmap_config);
> +	if (IS_ERR(p3h2x4x->regmap))
> +		return dev_err_probe(&client->dev, PTR_ERR(p3h2x4x->regmap),
> +				     "Failed to register I3C HUB regmap\n");

I2C

> +
> +	p3h2x4x->is_p3h2x4x_in_i3c = false;

As above.

> +	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
> +				   p3h2x4x_devs, ARRAY_SIZE(p3h2x4x_devs),
> +				   NULL, 0, NULL);
> +	if (ret)
> +		return dev_err_probe(&client->dev, ret, "Failed to add sub devices\n");
> +
> +	return 0;
> +}

These two probe functions, `p3h2x4x_device_probe_i3c` and
`p3h2x4x_device_probe_i2c`, are almost identical. Could they be refactored
into a single common probe function to reduce code duplication?

The bus-specific wrappers could handle the regmap initialisation and then
call a shared `p3h2x4x_probe(struct device *dev, struct regmap *regmap)`
function.

> +
> +/* p3h2x4x ids (i3c) */
> +static const struct i3c_device_id p3h2x4x_i3c_ids[] = {
> +	I3C_CLASS(I3C_DCR_HUB, NULL),
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(i3c, p3h2x4x_i3c_ids);
> +
> +/* p3h2x4x ids (i2c) */
> +static const struct i2c_device_id p3h2x4x_i2c_id_table[] = {
> +	{ "nxp-i3c-hub" },

This is an MFD core driver, not just a hub driver. Perhaps a more suitable
name would be "p3h2x4x"?

> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(i2c, p3h2x4x_i2c_id_table);
> +
> +static const struct of_device_id  p3h2x4x_i2c_of_match[] = {
> +	{ .compatible = "nxp,p3h2840", },
> +	{ /* sentinel */ }
> +};
> +
> +MODULE_DEVICE_TABLE(of, p3h2x4x_i2c_of_match);

This should be adjacent to the struct above.

> +static struct i3c_driver p3h2x4x_i3c = {
> +	.driver = {
> +		.name = "p3h2x4x_i3c_drv",

"_drv" should be removed.

> +	},
> +	.probe = p3h2x4x_device_probe_i3c,
> +	.id_table = p3h2x4x_i3c_ids,
> +};
> +
> +static struct i2c_driver p3h2x4x_i2c = {
> +	.driver = {
> +		.name = "p3h2x4x_i2c_drv",

As above.

> +		.of_match_table = p3h2x4x_i2c_of_match,
> +	},
> +	.probe =  p3h2x4x_device_probe_i2c,
> +	.id_table = p3h2x4x_i2c_id_table,
> +};
> +
> +module_i3c_i2c_driver(p3h2x4x_i3c, &p3h2x4x_i2c);
> +
> +MODULE_AUTHOR("Aman Kumar Pandey <aman.kumarpandey@nxp.com>");
> +MODULE_AUTHOR("Vikash Bansal <vikash.bansal@nxp.com>");

Stick to having one of these and put two in the header comment.

> +MODULE_DESCRIPTION("P3H2x4x I3C HUB multi function driver");

This could be more precise. How about:

"NXP P3H2x4x I3C Hub core driver"

Drop all mentions of MFD.  It's not a real thing.

> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/mfd/p3h2840.h b/include/linux/mfd/p3h2840.h
> new file mode 100644
> index 000000000000..cba6fa516d1e
> --- /dev/null
> +++ b/include/linux/mfd/p3h2840.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2025 NXP
> + * This header file contain private Reg address and its bit mapping etc.
> + */

The comment is not a complete sentence and states the obvious. Please consider
something more descriptive, for example:

"Register definitions for the NXP P3H2x4x I3C Hub."

> +
> +#ifndef _LINUX_MFD_P3H2840_H
> +#define _LINUX_MFD_P3H2840_H

If the filenames are changed to `p3h2x4x.h` as suggested earlier, this
header guard will need to be updated to `_LINUX_MFD_P3H2X4X_H`.

> +
> +#include <linux/types.h>
> +
> +/* Device Configuration Registers */
> +#define P3H2x4x_DEV_REG_PROTECTION_CODE				0x10
> +#define P3H2x4x_REGISTERS_LOCK_CODE				0x00
> +#define P3H2x4x_REGISTERS_UNLOCK_CODE				0x69
> +#define P3H2x4x_CP1_REGISTERS_UNLOCK_CODE			0x6a
> +
> +/* Reg config for Regmap */
> +#define P3H2x4x_REG_BITS					8
> +#define P3H2x4x_VAL_BITS					8
> +
> +struct p3h2x4x_dev {
> +	struct i3c_device *i3cdev;
> +	struct regmap *regmap;
> +	bool is_p3h2x4x_in_i3c;
> +};

Why are we storing i3c_device, but not i2c_device_id?

-- 
Lee Jones [李琼斯]

