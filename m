Return-Path: <devicetree+bounces-5657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 691FC7B736A
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 23:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B86FE280D01
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 21:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD1F3D974;
	Tue,  3 Oct 2023 21:35:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456613CD13
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 21:35:47 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D069AC
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 14:35:44 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-59f55c276c3so17609097b3.2
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 14:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696368943; x=1696973743; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bF0aYOcoMf9rPH3g55u0RWHI7WsxvJIiVWdU/+/T55k=;
        b=VsprLvDb0FvCYPhlskaWElRisr0MWzFuWsSe6m63e5xVtKFk9ObPtRoQZw+jGT4kK3
         YmtPGIaLdGVdGxI/BhK/KsdvccD1YYsyPNZvQ+odDwiVAgb3PBAMa5DhB7zNX1b5jKW1
         vNrjFAvGYIN4RqTU4b0s7b5AgRk8BYMYIrmMQ94p3MD/SftI4pzKkMWlvPRbEANmyOQy
         +8Q+QsVVD1xWb6CQvh2uyJxHSrj8O1uJnKmom1pti6CczgcwdoEfvx/YkYXvvLkVCydq
         djCilV9JspVburWCJbiKpwmGV0/9EgDWx2Npgp/JwHSJOke+izAuT2F/jCqLukZvPGZs
         KEjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696368943; x=1696973743;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bF0aYOcoMf9rPH3g55u0RWHI7WsxvJIiVWdU/+/T55k=;
        b=xViW6PJQ2kP6tM3IwfVh5rJ6PpRw0jbGHK5pKeNff5lerWEsR5YSBduUgeKK3T2fKj
         S5h9UNgpsOmpdT+HgXr4eUkC95G7Z1i1S2bo7HPnWfxkhD8ijqUjcyySg9+jSEpM6dr5
         gFHrgSTbcuTxOJ5jfA0kacobsWi2aRrGf6rx++c7f8DHTeoG2jJv0oSkBfjDjTChh/40
         /1ZDdyCNpWxBob5q3k8UO9jtvivf8q5/Y9ZIytI1Br/mT7itTxilc1dHM2OcaEBQMr4+
         Nol57fLnrXqeFNmrvpX9ydhp/JR0Sm0nesxGtX4fzOfs3BC5Z/paYlKspxd29/hDUizA
         jluQ==
X-Gm-Message-State: AOJu0Yw8ykio0ycTphF78Yrff6cfw9NMrDWVHnfWBS5FdkfRr8xIwyA8
	Mfb40k91c6DPBKdFTopsGCIguIv3s3FoYojjSinvpA==
X-Google-Smtp-Source: AGHT+IF+tUq0KHnbFgxuGuGi05A2qba5BC/fL/Qmnp+jwic+YKB44FmDueY9GWvgpZEKJzvcO75DqZC/oHuaGbcTsMo=
X-Received: by 2002:a81:6057:0:b0:57a:f72:ebf8 with SMTP id
 u84-20020a816057000000b0057a0f72ebf8mr857633ywb.28.1696368943566; Tue, 03 Oct
 2023 14:35:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002021602.260100-1-takahiro.akashi@linaro.org> <20231002021602.260100-4-takahiro.akashi@linaro.org>
In-Reply-To: <20231002021602.260100-4-takahiro.akashi@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Oct 2023 23:35:31 +0200
Message-ID: <CACRpkdZojfC2qr7gfzL9fj=DEYJcuPR=a1+zVWTMysK9BH_m_Q@mail.gmail.com>
Subject: Re: [RFC 3/4] gpio: scmi: add SCMI pinctrl based gpio driver
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 2, 2023 at 4:17=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> SCMI pin control protocol supports not only pin controllers, but also
> gpio controllers by design. This patch includes a generic gpio driver
> which allows consumer drivers to access gpio pins that are handled
> through SCMI interfaces.
>
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>

I would write a bit that this is intended for SCMI but it actually
is a GPIO front-end to any pin controller that supports the
necessary pin config operations.

>  drivers/gpio/gpio-scmi.c | 154 +++++++++++++++++++++++++++++++++++++++

So I would name it gpio-by-pinctrl.c
(clear and hard to misunderstand)

> +config GPIO_SCMI

GPIO_BY_PINCTRL

> +       tristate "GPIO support based on SCMI pinctrl"

"GPIO support based on a pure pin control back-end"

> +       depends on OF_GPIO

Skip this, let's use device properties instead. They will anyways just tran=
slate
to OF properties in the OF case.

> +       depends on PINCTRL_SCMI
> +       help
> +         Select this option to support GPIO devices based on SCMI pin
> +         control protocol.

"GPIO devices based solely on pin control, specifically pin configuration, =
such
as SCMI."

> +#include <linux/of.h>

Use #include <linux/property.h> so we remove reliance on OF.

> +#include "gpiolib.h"

Why?

> +static int scmi_gpio_get_direction(struct gpio_chip *chip, unsigned int =
offset)

Rename all functions pinctrl_gpio_*

> +{
> +       unsigned long config;
> +
> +       config =3D PIN_CONFIG_OUTPUT_ENABLE;
> +       if (pinctrl_gpio_get_config(chip->gpiodev->base + offset, &config=
))
> +               return -1;

Probably you want to return the error code from pinctrl_gpio_get_config()
rather than -1? (same below).

> +       if (config)
> +               return GPIO_LINE_DIRECTION_OUT;
> +
> +       config =3D PIN_CONFIG_INPUT_ENABLE;
> +       if (pinctrl_gpio_get_config(chip->gpiodev->base + offset, &config=
))
> +               return -1;
> +       if (config)
> +               return GPIO_LINE_DIRECTION_IN;

I would actually not return after checking PIN_CONFIG_OUTPUT_ENABLE.
I would call *both* something like:

int ret;
bool  out_en, in_en;

config =3D PIN_CONFIG_OUTPUT_ENABLE;
ret =3D pinctrl_gpio_get_config(chip->gpiodev->base + offset, &config);
if (ret)
    return ret;
/* Maybe check for "not implemented" error code here and let that pass
 * setting out_en =3D false; not sure. Maybe we should mandate support
 * for this.
 */
out_en =3D !!config;
config =3D PIN_CONFIG_INPUT_ENABLE;
ret =3D pinctrl_gpio_get_config(chip->gpiodev->base + offset, &config);
if (ret)
    return ret;
in_en =3D !!config;

/* Consistency check - in theory both can be enabled! */
if (in_en && !out_en)
    return GPIO_LINE_DIRECTION_IN;
if (!in_en && out_en)
    return GPIO_LINE_DIRECTION_OUT;
if (in_en && out_en) {
    /*
     * This is e.g. open drain emulation!
     * In this case check @PIN_CONFIG_DRIVE_OPEN_DRAIN
     * if this is enabled, return GPIO_LINE_DIRECTION_OUT,
     * else return an error. (I think.)
     */
}

/* We get here for (!in_en && !out_en) */
return -EINVAL;

> +static int scmi_gpio_get(struct gpio_chip *chip, unsigned int offset)
> +{
> +       unsigned long config;
> +
> +       /* FIXME: currently, PIN_CONFIG_INPUT not defined */
> +       config =3D PIN_CONFIG_INPUT;
> +       if (pinctrl_gpio_get_config(chip->gpiodev->base + offset, &config=
))
> +               return -1;
> +
> +       /* FIXME: the packed format not defined */
> +       if (config >> 8)
> +               return 1;
> +
> +       return 0;
> +}

Proper error code instead of -1 otherwise looks good!

> +static void scmi_gpio_set(struct gpio_chip *chip, unsigned int offset, i=
nt val)

static int?

> +{
> +       unsigned long config;
> +
> +       config =3D PIN_CONF_PACKED(PIN_CONFIG_OUTPUT, val & 0x1);

No need to add & 0x01, the gpiolib core already does this.

> +       pinctrl_gpio_set_config(chip->gpiodev->base + offset, config);

return pinctrl_gpio_set_config(); so error is propagated.

> +static u16 sum_up_ngpios(struct gpio_chip *chip)
> +{
> +       struct gpio_pin_range *range;
> +       struct gpio_device *gdev =3D chip->gpiodev;
> +       u16 ngpios =3D 0;
> +
> +       list_for_each_entry(range, &gdev->pin_ranges, node) {
> +               ngpios +=3D range->range.npins;
> +       }

This works but isn't really the intended use case of the ranges.
Feel a bit uncertain about it, but I can't think of anything better.
And I guess these come directly out of SCMI so it's first hand
information about all GPIOs.

> +static int scmi_gpio_probe(struct platform_device *pdev)
> +{
> +       struct device *dev =3D &pdev->dev;
> +       struct device_node *parent_np;

Skip (not used)

> +       /* FIXME: who should be the parent */
> +       parent_np =3D NULL;

Skip (not used)

> +       priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +       if (!priv)
> +               return -ENOMEM;
> +
> +       chip =3D &priv->chip;
> +       chip->label =3D dev_name(dev);
> +       chip->parent =3D dev;

This is the actual parent, which is good enough?

> +       chip->base =3D -1;
> +
> +       chip->request =3D gpiochip_generic_request;
> +       chip->free =3D gpiochip_generic_free;
> +       chip->get_direction =3D scmi_gpio_get_direction;
> +       chip->direction_input =3D scmi_gpio_direction_input;
> +       chip->direction_output =3D scmi_gpio_direction_output;

Add:
chip->set_config =3D gpiochip_generic_config;

which in turn becomes just pinctrl_gpio_set_config(), which
is what we want.

The second cell in two-cell GPIOs already supports passing
GPIO_PUSH_PULL, GPIO_OPEN_DRAIN, GPIO_OPEN_SOURCE,
GPIO_PULL_UP, GPIO_PULL_DOWN, GPIO_PULL_DISABLE,
which you can this way trivially pass down to the pin control driver.

NB: make sure the scmi pin control driver returns error for
unknown configs.

> +static int scmi_gpio_remove(struct platform_device *pdev)
> +{
> +       struct scmi_gpio_priv *priv =3D platform_get_drvdata(pdev);
> +
> +       gpiochip_remove(&priv->chip);

You are using devm_* to add it so this is not needed!

Just drop the remove function.

> +static const struct of_device_id scmi_gpio_match[] =3D {
> +       { .compatible =3D "arm,scmi-gpio-generic" },

"pin-control-gpio" is my suggestion for this!

I hope this helps.

Yours,
Linus Walleij

