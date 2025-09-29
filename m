Return-Path: <devicetree+bounces-222474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6526EBA95EB
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BDE93AE6C4
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE06D306D4B;
	Mon, 29 Sep 2025 13:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="SBq24Yem"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1B81D7999
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759153144; cv=none; b=YUcUIcmH+lToz/0uMgp7kFHFglXyKyaB2PN6Np2SacWLwAFMNIGurVZv25XgDx6+kV0UpdSEsnfMHdXLbUq94CjT0lRWXrV9YtNnRcsjNZ+1IEvvn5P4KqN0sYf3YSG9eBjUhfNNIZIrQ/52fCqUNe5/g6MlzweRMrP2EVRHSCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759153144; c=relaxed/simple;
	bh=GxXuokvAtnmaEn8/rpv/3ncdXcd1Q0lWARJXebhbVec=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XoRdSkeBntAJIcdLghnB0JkTfyst2a+tUaRn36dSpYlcXYtMys54Oj5aqluS5n42MpqZO0fIp4I8mHlyxam90b7qBOxq9Wwvg/jPCB7KANfiUtfXiXPTXp5T8p97NhGSDFpr5ES4Nt6WAk0znz2MbG7xQ11IOGtbbZbewaFQWNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=SBq24Yem; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-57bd482dfd2so5343290e87.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1759153140; x=1759757940; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lS3eioe7CJxJtEOaOrkwbEIXaTQ8eyc+tHV3n/WSLDQ=;
        b=SBq24YemD4/gv34QddNWJHg8+QrZBNpA4TgEzRHKaL1VFQy/6i17n36ZmzZIE6SRr/
         /CAVzqH2nwq8ZvdqBsyb60OGsHPQgw2EVI7aeM3TbKMDh5LMjUhHN8nSFO7sCb8dHQ31
         mg7PJZniOXrO/Ca0Wn4qPYC/lNDFmxdHBdY2OSW1c+IdHtvFaKXeLB2stFZORr6izkdV
         uT30AbZib6PzfHIM2BzGnlZM2ou15fmy8HdgKri3c7KVFHH7ApWUefOKeJzwvQzxkDc1
         g2ZyqeXga9VoLZlSGfIMWlsKQGZ2ANjFdj9FVN4TicgZVtI0/uABG18r0GyAPc96SurB
         F0rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759153140; x=1759757940;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lS3eioe7CJxJtEOaOrkwbEIXaTQ8eyc+tHV3n/WSLDQ=;
        b=Hj01FDuDIRco7kwUU/MYTSU982KwSaV9aCwT7DeWZIX2DaDw70gQGvD3Zfl3UyXHvl
         gnpiCcSQ5Rcle8aXYcuR5iekMpii2FOfu4DAiXKRa61f2YTalQ2qshRRxz6+BZ/8bA6v
         1N6A3xaq8P061xlydri1NZTzxe6UaQqKpwmjc+HSvPrPch0dHd6qOfW8aqj2yNce90Y9
         m6Yaz79UgcV7va3N6eGTwX5vj6ZekOlSOh85fsVoosW5vNxO2AArQfesqtjQwkk2vZh2
         IK3nOIL/NbkvEVX7iaBdG+vYNLsejYThgeITBsBx3ZNKCgXP5ibj8jY8G4DI5GAtUiVy
         tUBg==
X-Forwarded-Encrypted: i=1; AJvYcCXxGTRBVl1Ae/GvIAC13/ntUDZxPHGrthfAozpqpA9qFrZllj5S2cFi5KzEa8gUSnnU78+QwQchjqV4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7t/hBM3WY+stMIcwosIXjNcKAUVfptFdDo7A6PvHrfAdYx7JJ
	uCXW8R/2JSn/F9RWi7tvmImZN8SfPN/uzx/5IyXHqV6Dqcu0pdsqQZuRq1WymfVEk5DbnwSeEDk
	XTykNQlnhPHzUKCbREhpDpR5LaxmD7V5yyhD1S1U5SA==
X-Gm-Gg: ASbGncvxkIob6JLwbSx78QGn/Gmaj/5+3vml6p4N9AIREBGQB7fiVF0DfWvAbxvghl1
	0eoTO/V6ADbqbgC+EeFqY02lU/QAuCioTxFfzy+HdoygniZYgwA44Hytik2IFoLj+u8dzFEEpDP
	k2atvy2bUeUxVWIHHEsIshq7gNpXeQJUoHlTL2IBdJP74CkpsSOFVlM+yC0xZOPS5kz80XxefWD
	8kpuPNi8NSRYExGPFIRz8oSqBtPjGrLsBOv8WVS6OC7lfdc0Q==
X-Google-Smtp-Source: AGHT+IHLESQnR0/a1ubhbqVngyqF+al2NcCLg3vZTZL0h+Zy9+UoR6X6WZWMygoXEdkq7/GVTWvNW8rTouhIyIVhB38=
X-Received: by 2002:a05:6512:6192:b0:55f:4c1d:47f3 with SMTP id
 2adb3069b0e04-582d39b5bc6mr5014386e87.28.1759153138685; Mon, 29 Sep 2025
 06:38:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926133018.3071446-1-viken.dadhaniya@oss.qualcomm.com> <20250926133018.3071446-6-viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <20250926133018.3071446-6-viken.dadhaniya@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 29 Sep 2025 15:38:47 +0200
X-Gm-Features: AS18NWD_GBLBSuJOCDUvB8CFJ5kgAQoSfaG5MkJKwxnsUJToXX1xfdnUToRgKxs
Message-ID: <CAMRc=Md2pW1YBNk1PLV+A6rHET4WbHDQf9P_Y4FeoVAgVsxUEA@mail.gmail.com>
Subject: Re: [PATCH v5 5/6] can: mcp251xfd: add gpio functionality
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com, 
	mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linus.walleij@linaro.org, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com, 
	Gregor Herburger <gregor.herburger@ew.tq-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 26, 2025 at 3:30=E2=80=AFPM Viken Dadhaniya
<viken.dadhaniya@oss.qualcomm.com> wrote:
>
> From: Gregor Herburger <gregor.herburger@ew.tq-group.com>
>
> The mcp251xfd devices allow two pins to be configured as gpio. Add this
> functionality to driver.
>
> Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
> Tested-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---
>  drivers/net/can/spi/mcp251xfd/Kconfig         |   1 +
>  .../net/can/spi/mcp251xfd/mcp251xfd-core.c    | 172 ++++++++++++++++++
>  drivers/net/can/spi/mcp251xfd/mcp251xfd.h     |   2 +
>  3 files changed, 175 insertions(+)
>
> diff --git a/drivers/net/can/spi/mcp251xfd/Kconfig b/drivers/net/can/spi/=
mcp251xfd/Kconfig
> index 877e4356010d..7c29846e6051 100644
> --- a/drivers/net/can/spi/mcp251xfd/Kconfig
> +++ b/drivers/net/can/spi/mcp251xfd/Kconfig
> @@ -5,6 +5,7 @@ config CAN_MCP251XFD
>         select CAN_RX_OFFLOAD
>         select REGMAP
>         select WANT_DEV_COREDUMP
> +       select GPIOLIB
>         help
>           Driver for the Microchip MCP251XFD SPI FD-CAN controller
>           family.
> diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c b/drivers/net=
/can/spi/mcp251xfd/mcp251xfd-core.c
> index ea41f04ae1a6..88035d4404b5 100644
> --- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
> +++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
> @@ -1797,6 +1797,172 @@ static int mcp251xfd_register_check_rx_int(struct=
 mcp251xfd_priv *priv)
>         return 0;
>  }
>
> +static const char * const mcp251xfd_gpio_names[] =3D { "GPIO0", "GPIO1" =
};
> +
> +static int mcp251xfd_gpio_request(struct gpio_chip *chip, unsigned int o=
ffset)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +       u32 pin_mask =3D MCP251XFD_REG_IOCON_PM(offset);
> +       int ret;
> +
> +       if (priv->rx_int && offset =3D=3D 1) {
> +               netdev_err(priv->ndev, "Can't use GPIO 1 with RX-INT!\n")=
;
> +               return -EINVAL;
> +       }
> +
> +       ret =3D pm_runtime_resume_and_get(priv->ndev->dev.parent);
> +       if (ret)
> +               return ret;
> +
> +       return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
> +                                 pin_mask, pin_mask);
> +}
> +
> +static void mcp251xfd_gpio_free(struct gpio_chip *chip, unsigned int off=
set)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +
> +       pm_runtime_put(priv->ndev->dev.parent);
> +}
> +
> +static int mcp251xfd_gpio_get_direction(struct gpio_chip *chip,
> +                                       unsigned int offset)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +       u32 mask =3D MCP251XFD_REG_IOCON_TRIS(offset);
> +       u32 val;
> +       int ret;
> +
> +       ret =3D regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
> +       if (ret)
> +               return ret;
> +
> +       if (mask & val)
> +               return GPIO_LINE_DIRECTION_IN;
> +
> +       return GPIO_LINE_DIRECTION_OUT;
> +}
> +
> +static int mcp251xfd_gpio_get(struct gpio_chip *chip, unsigned int offse=
t)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +       u32 mask =3D MCP251XFD_REG_IOCON_GPIO(offset);
> +       u32 val;
> +       int ret;
> +
> +       ret =3D regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
> +       if (ret)
> +               return ret;
> +
> +       return !!(mask & val);
> +}
> +
> +static int mcp251xfd_gpio_get_multiple(struct gpio_chip *chip, unsigned =
long *mask,
> +                                      unsigned long *bit)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +       u32 val;
> +       int ret;
> +
> +       ret =3D regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
> +       if (ret)
> +               return ret;
> +
> +       *bit =3D FIELD_GET(MCP251XFD_REG_IOCON_GPIO_MASK, val) & *mask;
> +
> +       return 0;
> +}
> +
> +static int mcp251xfd_gpio_direction_output(struct gpio_chip *chip,
> +                                          unsigned int offset, int value=
)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +       u32 dir_mask =3D MCP251XFD_REG_IOCON_TRIS(offset);
> +       u32 val_mask =3D MCP251XFD_REG_IOCON_LAT(offset);
> +       u32 val;
> +
> +       if (value)
> +               val =3D val_mask;
> +       else
> +               val =3D 0;
> +
> +       return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
> +                                 dir_mask | val_mask, val);
> +}
> +
> +static int mcp251xfd_gpio_direction_input(struct gpio_chip *chip,
> +                                         unsigned int offset)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +       u32 dir_mask =3D MCP251XFD_REG_IOCON_TRIS(offset);
> +
> +       return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
> +                                 dir_mask, dir_mask);
> +}
> +
> +static int mcp251xfd_gpio_set(struct gpio_chip *chip, unsigned int offse=
t, int value)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +       u32 val_mask =3D MCP251XFD_REG_IOCON_LAT(offset);
> +       u32 val;
> +       int ret;
> +
> +       if (value)
> +               val =3D val_mask;
> +       else
> +               val =3D 0;
> +
> +       ret =3D regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON, va=
l_mask, val);
> +       if (ret)
> +               dev_err(&priv->spi->dev, "Failed to set GPIO %u: %d\n", o=
ffset, ret);

Why do you loudly complain here but not in other callbacks? I assume
it's because you had a log here in your previous version (the one
rebased on v6.16) and just didn't remove it when you switched to the
new API? Maybe just do `return regmap_update...`?

Otherwise looks good. With that addressed:

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

> +
> +       return ret;
> +}
> +
> +static int mcp251xfd_gpio_set_multiple(struct gpio_chip *chip, unsigned =
long *mask,
> +                                      unsigned long *bits)
> +{
> +       struct mcp251xfd_priv *priv =3D gpiochip_get_data(chip);
> +       u32 val;
> +       int ret;
> +
> +       val =3D FIELD_PREP(MCP251XFD_REG_IOCON_LAT_MASK, *bits);
> +
> +       ret =3D regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
> +                                MCP251XFD_REG_IOCON_LAT_MASK, val);
> +       if (ret)
> +               dev_err(&priv->spi->dev, "Failed to set GPIOs %d\n", ret)=
;
> +
> +       return ret;
> +}
> +
> +static int mcp251fdx_gpio_setup(struct mcp251xfd_priv *priv)
> +{
> +       struct gpio_chip *gc =3D &priv->gc;
> +
> +       if (!device_property_present(&priv->spi->dev, "gpio-controller"))
> +               return 0;
> +
> +       gc->label =3D dev_name(&priv->spi->dev);
> +       gc->parent =3D &priv->spi->dev;
> +       gc->owner =3D THIS_MODULE;
> +       gc->request =3D mcp251xfd_gpio_request;
> +       gc->free =3D mcp251xfd_gpio_free;
> +       gc->get_direction =3D mcp251xfd_gpio_get_direction;
> +       gc->direction_output =3D mcp251xfd_gpio_direction_output;
> +       gc->direction_input =3D mcp251xfd_gpio_direction_input;
> +       gc->get =3D mcp251xfd_gpio_get;
> +       gc->get_multiple =3D mcp251xfd_gpio_get_multiple;
> +       gc->set =3D mcp251xfd_gpio_set;
> +       gc->set_multiple =3D mcp251xfd_gpio_set_multiple;
> +       gc->base =3D -1;
> +       gc->can_sleep =3D true;
> +       gc->ngpio =3D ARRAY_SIZE(mcp251xfd_gpio_names);
> +       gc->names =3D mcp251xfd_gpio_names;
> +
> +       return devm_gpiochip_add_data(&priv->spi->dev, gc, priv);
> +}
> +
>  static int
>  mcp251xfd_register_get_dev_id(const struct mcp251xfd_priv *priv, u32 *de=
v_id,
>                               u32 *effective_speed_hz_slow,
> @@ -1930,6 +2096,12 @@ static int mcp251xfd_register(struct mcp251xfd_pri=
v *priv)
>
>         mcp251xfd_ethtool_init(priv);
>
> +       err =3D mcp251fdx_gpio_setup(priv);
> +       if (err) {
> +               dev_err_probe(&priv->spi->dev, err, "Failed to register g=
pio-controller.\n");
> +               goto out_runtime_disable;
> +       }
> +
>         err =3D register_candev(ndev);
>         if (err)
>                 goto out_runtime_disable;
> diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h b/drivers/net/can/=
spi/mcp251xfd/mcp251xfd.h
> index bd28510a6583..085d7101e595 100644
> --- a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
> +++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
> @@ -15,6 +15,7 @@
>  #include <linux/can/dev.h>
>  #include <linux/can/rx-offload.h>
>  #include <linux/gpio/consumer.h>
> +#include <linux/gpio/driver.h>
>  #include <linux/kernel.h>
>  #include <linux/netdevice.h>
>  #include <linux/regmap.h>
> @@ -676,6 +677,7 @@ struct mcp251xfd_priv {
>
>         struct mcp251xfd_devtype_data devtype_data;
>         struct can_berr_counter bec;
> +       struct gpio_chip gc;
>  };
>
>  #define MCP251XFD_IS(_model) \
> --
> 2.34.1
>

