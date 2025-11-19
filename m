Return-Path: <devicetree+bounces-240198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A08F4C6E61F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3A878384F78
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 241C5357A32;
	Wed, 19 Nov 2025 12:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JYKm0mVl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3254357726
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 12:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763554124; cv=none; b=nnG+aBN9TIihD4WVDEIFfdby45B8w+1K1f4WnLHuiSUCZAeXXhkXgD6x1i1c30r5TUhATw1Ltw0OU6w015ohc7Bmhu4k4SZijmc6LNyJqBOInxiE0Bmy26fp4idEbAeGW0eCgkx+5ejD7LA4oyIbTc8G6CNlZUUk/FURoruPRWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763554124; c=relaxed/simple;
	bh=ByPytVwOkYKXwrFR1eX0Dldo7i7jLrts7cxdQE5Z9vk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r4zPmF6xAzyb4eWL28CTrIKxMx9JpQT9guBEl+d4gItSeASpXEB2X4WHy6+qkrS6hvYItm8J8hO2RAnohjRrPmPeCNXUSS50TQZgER2hdFpetvkUZo8YFa6C1kcwqqocGyZyYhGWzVOb021W/4mA+9jrdb/vrRqx5F5nCJn38TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JYKm0mVl; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-594516d941cso6277309e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 04:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763554120; x=1764158920; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CupoU1rlidvFb//Su+E+dztn1SFhUsAToU3niKlBzQ8=;
        b=JYKm0mVlg6+ec++5MJet+Xvn+rifA14fPQ3FvzJYrVmx5neVFa5Dc7VvERasG0hAYL
         n6jYLAENl0DLA5RXOUK2KxrboyEuL071DzJtKh6tS9b5Mao94iY2X6AP5/doyoBzwZfb
         YOGlpaTc+YvbXJ63Ru58x6oYX+XqJsVOeLLFYb35i82D7nmPcvRT7BJa/Ow1lB0JakYI
         irXSXuDVBJC0oqq4n3Fu1h8o9t6a2jRgiJ1OOb+lwAKFy+55i1+pPSrtHRVOH5vJvjtF
         v0Qh+FishrztkiWHnNOJVXh3PxDRZPgBGvORFExZ1Z0u1fCGOM8GaNd9MQArVSibZFJ9
         yD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763554120; x=1764158920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CupoU1rlidvFb//Su+E+dztn1SFhUsAToU3niKlBzQ8=;
        b=ulfNRlXi90YGdVM9foiV8xP+v0eXZO/m08heRtIj1uQ/TH6XXYUyolvfzZfgosWWTm
         /K1zOU5n2vKctmlDdpl1qJW4pTikJ6Hx3L7W/9PP2/141mEc8WeCYiox/cpht6yPioYO
         KmsLvS7Fy6IpN06jvsW4Q1eX+3BfK9vj2hUpFqOZ3nNM5x6RJcMhHavRSH5qBcagtAoa
         d+hDkcPT36kA6Ea5xEs8+8iJeVDtds5YqDdOHIWH0j5stNjBxpSwHsYksj/E4igfCkJp
         rvaaj+pDeUHNGD94PHN+QselYGbFBk0od+w8GXm2MfrlDPLmY5H1vkTscfXvvJBEEKCw
         IC4w==
X-Forwarded-Encrypted: i=1; AJvYcCXW/HC7fG9pvPBYPBv4xoccOjFQClkWSvkHGmPSlZydjz47BXAKT9BeYA3Q3MhJ1KbW7yxivk5NGc1C@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9E2ujDjtMoIqpZLhNhwSHPxm+MM9Jg1cH49PWSkW27Aaumakf
	VtfVf43NYyUrfRDxObsiA12qonmRYk6KePo0JGTtmSnRSDoR7KNIH+KZKfXcCf672EBactsAC/w
	3FcsX8MqERz/RC6iRHQmDfVV+Y3W6Y6hr1w42fzktIA==
X-Gm-Gg: ASbGncvGAbxdW8aDGzxQUN6RTd0ircDGl9KvAVIwcszOJUDMB1LLeYtsXg8ZPoup4bF
	flKrSp3iRB8Rajo9XJ+AVAXN/2GkMhz0+ZrAIDGXCGyryMLzr0YVIRfPjl1CxhZjJ9WiE5RFtyf
	SxLDkzY/3jTAkcpVgME1RgwhMNPcLkGGW36S9mVar/eDJ4nGPrQgo/dW3HtYPaFXKn0OTEKnttf
	LrE92FtWsIXtb8PUOjcYPEP2qACG50BANVZKzYNeO4Vi3zt7RI+MFVPwANDCLarAbu8h54=
X-Google-Smtp-Source: AGHT+IFciWtpr9shGuhQdJuvFO1JoD1hUUOxBDCbMz3L6aCSp3UqpGOGtGjUFPTd2WWaTP0bbFJs9Iywa/nFQqCmxUg=
X-Received: by 2002:a05:6512:1508:20b0:595:9195:3390 with SMTP id
 2adb3069b0e04-595919534dbmr3250626e87.5.1763554119994; Wed, 19 Nov 2025
 04:08:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-lantern-sappy-bea86ff2a7f4@spud> <20251112-improving-tassel-06c6301b3e23@spud>
In-Reply-To: <20251112-improving-tassel-06c6301b3e23@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 13:08:26 +0100
X-Gm-Features: AWmQ_bl8GTS1pxmVH4FYnWu6Hvd-wjg97P1oQPtijz6Z6iNATfFpYwFKIsJIGZQ
Message-ID: <CACRpkdYQ2PO0iysd4L7Qzu6UR1ysHhsUWK6HWeL8rJ_SRqkHYA@mail.gmail.com>
Subject: Re: [RFC v1 2/4] pinctrl: add polarfire soc mssio pinctrl driver
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor,

took a quick look at this!

On Wed, Nov 12, 2025 at 3:33=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> +#include "linux/dev_printk.h"

Weird but it's RFC so OK :)

> +#define MPFS_PINCTRL_LOCKDOWN (PIN_CONFIG_END + 1)
> +#define MPFS_PINCTRL_CLAMP_DIODE (PIN_CONFIG_END + 2)
> +#define MPFS_PINCTRL_IBUFMD (PIN_CONFIG_END + 3)

Yeah this should work for custom props.

> +struct mpfs_pinctrl_drive_strength {
> +       u8 ma;
> +       u8 val;
> +};
> +
> +static struct mpfs_pinctrl_drive_strength mpfs_pinctrl_drive_strengths[8=
] =3D {
> +       { 2,   2 },
> +       { 4,   3 },
> +       { 6,   4 },
> +       { 8,   5 },
> +       { 10,  6 },
> +       { 12,  7 },
> +       { 16, 10 },
> +       { 20, 12 },
> +};

I would probably assign field explicitly with C99 syntax, but no
hard requirement.

{ .ma =3D 2, .val =3D 2 }

BTW you can see clearly that each setting activates
another driver stage in the silicon, each totempole giving
2 mA.

> +static const struct pinconf_generic_params mpfs_pinctrl_custom_bindings[=
] =3D {
> +       { "microchip,bank-lockdown", MPFS_PINCTRL_LOCKDOWN, 1 },
> +       { "microchip,clamp-diode", MPFS_PINCTRL_CLAMP_DIODE, 1 },
> +       { "microchip,ibufmd", MPFS_PINCTRL_IBUFMD, 0x0 },
> +};

I take it these have proper documentation in the DT bindings, so users know
exactly what they do.

> +static int mpfs_pinctrl_pin_to_iocfg_reg(unsigned int pin)
> +{
> +       u32 reg =3D MPFS_PINCTRL_IOCFG01_REG;
> +
> +       if (pin >=3D MPFS_PINCTRL_BANK2_START)
> +               reg +=3D MPFS_PINCTRL_INTER_BANK_GAP;
> +
> +       // 2 pins per 32-bit register
> +       reg +=3D (pin / 2) * 0x4;

This is a nice comment, easy to follow the code with small helpful
things like this.

> +static int mpfs_pinctrl_dt_node_to_map(struct pinctrl_dev *pctrl_dev, st=
ruct device_node *np,
> +                                      struct pinctrl_map **maps, unsigne=
d int *num_maps)

I saw in the cover letter that you wanted this to use more generic helpers.

If you see room for improvement of the generic code, do not hesitate.
Doing a new driver is the only time when you actually have all these
details in your head and can create good helpers.

> +       //TODO @Linus, it correct to group these 3? There's no control ov=
er voltage.
> +       case PIN_CONFIG_INPUT_SCHMITT:
> +       case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
> +       case PIN_CONFIG_INPUT_SCHMITT_UV:

Consider not supporting some like PIN_CONFIG_INPUT_SCHMITT_UV
in the bindings if they don't make any sense, and let it just return error
if someone tries to do that.

Isn't PIN_CONFIG_INPUT_SCHMITT_ENABLE the only one that
makes sense for this hardware?

> +static int mpfs_pinctrl_pinconf_generate_config(struct mpfs_pinctrl *pct=
rl, unsigned int pin,
> +                                               unsigned long *configs, u=
nsigned int num_configs,
> +                                               u32 *value)
(...)
> +               case PIN_CONFIG_BIAS_PULL_DOWN:
> +                       //TODO always start from val =3D=3D 0, there's no=
 reason to ever actually
> +                       // clear anything AFAICT. @Linus, does the driver=
 need to check mutual
> +                       // exclusion on these, or can I drop the clearing=
?
> +                       val &=3D ~MPFS_PINCTRL_PULL_MASK;
> +                       val |=3D MPFS_PINCTRL_WPD;
> +                       break;

I was about to say that the core checks that you don't enable pull up
and pull down
at the same time, but apparently that was just a dream I had.

The gpiolib however contains this in gpiod_configure_flags():

        if (((lflags & GPIO_PULL_UP) && (lflags & GPIO_PULL_DOWN)) ||
            ((lflags & GPIO_PULL_UP) && (lflags & GPIO_PULL_DISABLE)) ||
            ((lflags & GPIO_PULL_DOWN) && (lflags & GPIO_PULL_DISABLE))) {
                gpiod_err(desc,
                          "multiple pull-up, pull-down or pull-disable
enabled, invalid configuration\n");
                return -EINVAL;
        }

So there is a precedent for checking this.

So if you patch pinconf-generic.c to disallow this that'd be great, I think
it makes most sense to do this in the core.

> +               case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
> +                       if (!arg)
> +                               break;
> +                       fallthrough;
> +               case PIN_CONFIG_INPUT_SCHMITT:
> +               case PIN_CONFIG_INPUT_SCHMITT_UV:
> +                       //TODO Is it enabled regardless of register setti=
ng, or must it
> +                       // be set for lower voltage IO? Docs are missing,=
 MSS Configurator
> +                       // is not clear. Leaning towards the latter.
> +                       //bank_voltage =3D mpfs_pinctrl_pin_to_bank_volta=
ge(pctrl, pin);
> +                       //if (bank_voltage < MPFS_PINCTRL_LVCMOS25 && !ar=
g) {
> +                       //      dev_err(pctrl->dev,
> +                       //              "schmitt always enabled for 1.2, =
1.5 and 1.8 volt io\n");
> +                       //      return -EINVAL;
> +                       //}
> +                       val |=3D MPFS_PINCTRL_ENHYST;
> +                       break;

See above.

I hope this helps!

Yours,
Linus Walleij

