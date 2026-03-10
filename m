Return-Path: <devicetree+bounces-273378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJoiJhvir2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:19:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FDA24831F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:19:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD40030C3A9F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A733543CEDF;
	Tue, 10 Mar 2026 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YeY9ghDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0186D43C07F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133696; cv=none; b=NLj8I1TXCzw13oQJJZza/kvszcmjZY0+8EYvuOmvR0QXiBDwpJYjHJAFBnF15x4vX2/jzrwbXc9/Fh0+5NFu4Sk4Fnr3HVLxMzYlmSuVKzJaLAsYcARNW+62MJ+1uO37xALbYhG48l08iUnGMwDM94OtniuH6L/N2kaWFiF2DEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133696; c=relaxed/simple;
	bh=EMBzIkkC+QKJ8BCDrXQDoN7RU2Zm0FBEOSod4C9knFg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mrg65fFZY9YVWRrLX+SQ5GVesDSSQhcDLWZliw9AiT0df63r5jrTZd3uv1ApxrP3xOWfoxLIZkEiUqKoaREdXDb2FZMp398S3wwxftWuyEHQUwlycZ+XOTuC6rkdKCmyg69Mn1C/bpwm6esjbhSc49UpkQ5QNP2k6ZzGxRHLV7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YeY9ghDR; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso11232585e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773133693; x=1773738493; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+FnCkCWYP7bCBRmbZ74BO4qxUQPGxQbMvawa68kFQD0=;
        b=YeY9ghDRdUZ0/CUd+LwSUrDetHt7LS6MGe9k6hDduRw3nT1cEPCl4/7mvUxi38vKEJ
         SRGIjKqreKPkksqnHCEu7icNEFZhSu47lP/hSje+UqkfWKa5dvEu3cwWV4S/gV3PA3wl
         +uX3qVW4OkILYXwqkH7K5DaREETEYrot5LUNbJka9SQrsuI3Vc1u4EH4oDdVVwwTtU0P
         u3q29MGb03FqOu78Kv0Hss9a0s1laj/YAKXVx5MTFC6Tbbjp1qYmZR8IwXWVfUt+aH8e
         kRHHpr6DZ5qb4vKlg2NSVP3JmN1rtaM4zET6gQcj14Nf00PppEa3fM6eP+baMC1LZ1cZ
         P/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773133693; x=1773738493;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+FnCkCWYP7bCBRmbZ74BO4qxUQPGxQbMvawa68kFQD0=;
        b=RZHAaUUnUoE+vUXfLysRAtpocWY59oDq6Vc/kH/Q225wCqgLGTkhyfO67eNCycufIF
         T1R/4ED079hFGvCGV2FJhAuL8/BkPmF2Kgb3k7wkCi/BvL2QsC275gtsUzN4+OYc+hrA
         R/Gq57IQyY1d7AfqDXB6VsYIVBJqY5WGgc43k3zjdXxc4/u5ry629Maw18cdaP7y2tuA
         H9CCf+YDV9J/AGkLtLjpaWeRKE7dAtCTM2O+fZEXGQiF2/D2Eu4aMDAbaWotBF+jl8C6
         AfURMevyAPtQTDBz0euarMgksaGxox7qQ76nCZ1dfuBsolx9wwvNGgrE8EU70Zb3839t
         1I+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUirgG5PSvQB9VQKG8cBQEhPk1v3Zi36/usRoFsjIUtMJHadDXpTYzlKyDbxeNkMmkPfpHe9vUWuAJV@vger.kernel.org
X-Gm-Message-State: AOJu0YwVyKaJ8NgkJDOY9/q+eUTamaONZY1SWbM8erqs4YzDhRobwjOm
	nYfY9X5JrZheDh5tRcMjz7Go+uqeI430Dos/8+B28flkTrgzcegcdtRg
X-Gm-Gg: ATEYQzy9e5OkmA6oFvlUBDCm5BoWEHfCYDBXPtC1CgxIpnaE6V5Uj0Zr+hGvABfq1li
	TBQ/YMGjsdaIy2N3IkhiXBTlL1qF51RZuRkYMRjIGPtZ5D8rHZ8bsdkRwfEqYTqddq05XeZoOF0
	r6bE7mAWxSPHv0FyviUWxwpfXx0J5qqiEOPPINB6LKiUSW4Z+bLSJZfWUDAIHclm6zNb/UzR0A1
	8Wwh1Y50li47DIu1JvMH5bY/v+TsCbxepWOs1FugLoL2SKWrrKhmamo9xGK+RrpR6RUHCogzyLi
	3dsojopoyS07MBJXkasgsn9sRaZEUw/byYw8exkNhz3yzD/baKhxeu4ECq2te2peEFzUy5gog7C
	Y8uY/XDxYsRemqb3QNkVcwivwslppzXO4P4eaq6hKrvTGeWDGekf4hClMhbY3HcXdVznlGAwBJi
	K22Zbmh0JNOn3F/LN60C/kyVsWHkHzwUTrLOIBjTF4jWFnX5Hy6JdgwT7trXuDZaVDZnuZxMeV3
	pXxvjWsfdAPMbs56qPV6AjxW+Debx0eX0jZUw1RvD9qroUz3Louj7NWHf8FU/0+7w==
X-Received: by 2002:a05:600c:1e86:b0:483:5310:dc67 with SMTP id 5b1f17b1804b1-4852695b81cmr240917065e9.20.1773133692873;
        Tue, 10 Mar 2026 02:08:12 -0700 (PDT)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([137.71.226.102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48543a40efesm13873675e9.24.2026.03.10.02.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:08:12 -0700 (PDT)
Date: Tue, 10 Mar 2026 10:08:09 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org, 
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org, Frank.Li@nxp.com, 
	lgirdwood@gmail.com, vikash.bansal@nxp.com, priyanka.jain@nxp.com, 
	aman.kumarpandey@nxp.com
Subject: Re: [PATCH v6 4/7] mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub
 and on-die regulator
Message-ID: <jceqgjsppjtxrayvexznjxu7aedm6w3nvc6xdifet4uo4n35xj@lb3jxtfdo7rp>
References: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
 <20260310065727.3759342-4-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310065727.3759342-4-lakshay.piplani@nxp.com>
X-Rspamd-Queue-Id: 13FDA24831F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273378-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email,carnegierobotics.com:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 12:27:24PM +0530, Lakshay Piplani wrote:
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
>  MAINTAINERS                 |   2 +
>  drivers/mfd/Kconfig         |  12 ++++
>  drivers/mfd/Makefile        |   1 +
>  drivers/mfd/p3h2840.c       | 126 ++++++++++++++++++++++++++++++++++++
>  include/linux/mfd/p3h2840.h |  28 ++++++++
>  5 files changed, 169 insertions(+)
>  create mode 100644 drivers/mfd/p3h2840.c
>  create mode 100644 include/linux/mfd/p3h2840.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 06b803d6f45d..cc33c6c300e4 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19114,6 +19114,8 @@ L:	linux-kernel@vger.kernel.org
>  L:	linux-i3c-owner@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
> +F:	drivers/mfd/p3h2840.c
> +F:	include/linux/mfd/p3h2840.h
>  
>  NXP PF5300/PF5301/PF5302 PMIC REGULATOR DEVICE DRIVER
>  M:	Woodrow Douglass <wdouglass@carnegierobotics.com>
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 7192c9d1d268..645a8e4e62b6 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -617,6 +617,18 @@ config MFD_MX25_TSADC
>  	  i.MX25 processors. They consist of a conversion queue for general
>  	  purpose ADC and a queue for Touchscreens.
>  
> +config MFD_P3H2X4X
> +       tristate "NXP P3H2X4X I3C Hub Device"
> +       depends on I3C
> +       select MFD_CORE
> +       select REGMAP_I3C
> +       help
> +         Enable Support for NXP P3H244x/P3H284x I3C HUB device using I3C/I2c
> +         communication interface.
> +
> +         This driver provides support for I3C Hub and regulator, additional
> +         drivers must be enabled in order to use the functionality of the device.
> +
Hi Aman, our CI/CD is failing with

  arm-linux-ld: drivers/mfd/p3h2840.o: in function `p3h2x4x_device_probe_i2c':
  P3h2840.c:(.text+0x40): undefined reference to `__devm_regmap_init_i2c'

And indeed

  $ find . -name 'regmap*.o'
    ./drivers/base/regmap/regmap.o
    ./drivers/base/regmap/regmap-i3c.o

It infers the systems based on the KConfig+Makefile
I suggest adding select REGMAP_I2C, since your driver does call i2c
regmap methods (line 67), outside the regmap i3c umbrella.

Also, which drivers must be enabled to use the functionality?

Thanks,
Jorge

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
> +obj-$(CONFIG_MFD_P3H2X4X) 	+= p3h2840.o
>  obj-$(CONFIG_MFD_PF1550)	+= pf1550.o
>  
>  obj-$(CONFIG_MFD_NCT6694)	+= nct6694.o
> diff --git a/drivers/mfd/p3h2840.c b/drivers/mfd/p3h2840.c
> new file mode 100644
> index 000000000000..774fbb67b025
> --- /dev/null
> +++ b/drivers/mfd/p3h2840.c
> @@ -0,0 +1,126 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2025 NXP
> + * P3H2x4x i3c hub and regulator device.
> + */
> +
> +#include <linux/i3c/master.h>
> +#include <linux/i2c.h>
> +#include <linux/mfd/core.h>
> +#include <linux/mfd/p3h2840.h>
> +#include <linux/regmap.h>
> +
> +static const struct mfd_cell p3h2x4x_devs[] = {
> +	{
> +		.name = "p3h2x4x-regulator",
> +	},
> +	{
> +		.name = "p3h2x4x-i3c-hub",
> +	},
> +};
> +
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
> +
> +	p3h2x4x->regmap = devm_regmap_init_i3c(i3cdev, &p3h2x4x_regmap_config);
> +	if (IS_ERR(p3h2x4x->regmap))
> +		return dev_err_probe(&i3cdev->dev, PTR_ERR(p3h2x4x->regmap),
> +				     "Failed to register I3C HUB regmap\n");
> +
> +	p3h2x4x->is_p3h2x4x_in_i3c = true;
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
> +
> +	p3h2x4x->regmap = devm_regmap_init_i2c(client, &p3h2x4x_regmap_config);
> +	if (IS_ERR(p3h2x4x->regmap))
> +		return dev_err_probe(&client->dev, PTR_ERR(p3h2x4x->regmap),
> +				     "Failed to register I3C HUB regmap\n");
> +
> +	p3h2x4x->is_p3h2x4x_in_i3c = false;
> +	p3h2x4x->i2c_client = client;
> +
> +	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
> +				   p3h2x4x_devs, ARRAY_SIZE(p3h2x4x_devs),
> +				   NULL, 0, NULL);
> +	if (ret)
> +		return dev_err_probe(&client->dev, ret, "Failed to add sub devices\n");
> +
> +	return 0;
> +}
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
> +static struct i3c_driver p3h2x4x_i3c = {
> +	.driver = {
> +		.name = "p3h2x4x_i3c_drv",
> +	},
> +	.probe = p3h2x4x_device_probe_i3c,
> +	.id_table = p3h2x4x_i3c_ids,
> +};
> +
> +static struct i2c_driver p3h2x4x_i2c = {
> +	.driver = {
> +		.name = "p3h2x4x_i2c_drv",
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
> +MODULE_DESCRIPTION("P3H2x4x I3C HUB multi function driver");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/mfd/p3h2840.h b/include/linux/mfd/p3h2840.h
> new file mode 100644
> index 000000000000..9ed2a0d0564e
> --- /dev/null
> +++ b/include/linux/mfd/p3h2840.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2025 NXP
> + * This header file contain private Reg address and its bit mapping etc.
> + */
> +
> +#ifndef _LINUX_MFD_P3H2840_H
> +#define _LINUX_MFD_P3H2840_H
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
> +	struct i2c_client *i2c_client;
> +	struct regmap *regmap;
> +	bool is_p3h2x4x_in_i3c;
> +};
> +#endif /* _LINUX_MFD_P3H2840_H */
> -- 
> 2.25.1
> 

