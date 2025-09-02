Return-Path: <devicetree+bounces-211864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC1DB4100B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 00:35:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 335FA543B6A
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 22:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29E28274B2E;
	Tue,  2 Sep 2025 22:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IT38p7dH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D4E259C98
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 22:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756852498; cv=none; b=Kl8EKkSiksrRT7awmsQUEnTq3f9jqDyrce8+4aJYVKPoDbmMo0XOzHkLSvXksrhiPCNb1H+YPgA1gUYIqb4Iux+tz6ptB6PFN3UjF8diV/u8t17nVZOujPjRe8y5cKFW1ItMadfr7gpNajW4cZejCBZFGiHrfgxwrJUUj+pkis8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756852498; c=relaxed/simple;
	bh=PomjEsa2ynkd2EI144eBsQyzbG/mpcXlqstgq4F0VNw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YRUajRBOEWuwwimaBMvTvVeANWNs6FzE2k6Hll8EJJ+ykIJXx+aHOD4FH1+Y9ucN66uV3+lhQsE1Jnyrhu5WhgNts2Gq/AznMzxJEyO7dysFYmXE3bWju/Zlpd9Mqt3mAZrJsZmP0XUwOw4lA+WUDZffrXmHT7ZjnIs4q5Wr28E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IT38p7dH; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55f68d7a98aso4280400e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 15:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756852494; x=1757457294; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uv1np2co4BxenZ2lkYtx1AoXECQL4RlUiMKoQcFJHCg=;
        b=IT38p7dHBsd5s7Hyf3HwncXBqCsjG7PnzoxP/Ukbw4H/aC8yCa0/bWzpEAwSfY7AWb
         vgubDW2qdVCLAs5qkUhWdn6UwaVvNRyLDM1YyaEvLp+5e3mhzEfowCQpWhFJd1wTxYZW
         Q3dvWcO3Cpc6kWkSw8lXoVf8Ga4aDa9x9vdZrTTyJU2+m04XCc1rOwTuqXzwsGFA2t+d
         96sf3Ssrz0ssIUvDlM96caH53T2il0hP5gMMhEr7DqwGwB8kUDfI3vuWdAMmWDlCDnRf
         mh6Cx1E163GlCT7KjTp5C+C+ZD+hAdQ96heb1fqRm1cLxAbqmscZ1RG+n9b0MuFkXIZz
         tvOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756852494; x=1757457294;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uv1np2co4BxenZ2lkYtx1AoXECQL4RlUiMKoQcFJHCg=;
        b=Tujj/wDFhtdr7bw4kJl/iOfdCD7WFrULxcKYQbi+mSQjfvsXGHtjJr1FYHLQrwkzTT
         /9/vVb9mQCxbjrnTTaG8FCmayXx8gGft3dSfDA6xOeE7I6X6noujlLY/DtERYaj65AVt
         gIvTCn1uQmCqzkCHjHdw1B5zpaQ+Bn1ftKEEa+Yc3yq7+NtWOr7Iv+86sd2sj2nz7Yy4
         bLWuAfkAAMTA1LLMj3qjha9HmPhSF1Rvg9BLqNhJ/Ug8lhRyIf+D6OGJxr1wEy6s1WCF
         RygvU/AsDyTYskwC5KQTOxY9wwZbAUd4dSoV4c99eya5eK/ytECX+nuoMGBRlF/MBs+B
         KjRg==
X-Forwarded-Encrypted: i=1; AJvYcCXTE0JPTFUmsXHRVFPip9jEECB8gFvijAUi3Tr015hDP4fOIC4hA/EaOU9Y3CsQ5mnDTmhGC0tdS2qz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5D+w7DTsejhbSL8WEeAC+6MVjXXtgMULxH+QPVZQkDDZEm3rF
	d+XMkvKkzWgMpYZeqmVNPxEWKeEWcbyR0PE0NmpVPJubcWxQXoh1xx+8OSmHK3HfiTbocaUby5P
	ex2RRouwnjLE5Je9lS+2CqGafgr7nm+4dkwMKPgAcKg==
X-Gm-Gg: ASbGnct3FejDIoGJ3eD2Y5J4rFgUTyyAPbelI6v/CmigfP2t8pWTru0uH91nmlHpPhx
	9RAIwqs7eCU5Ozc454QEQqAsiiO4WCza6FEj2syacBkL8TmdQDAFGRv3bGDLWQPIzgRD/GuukXl
	atGdpIRr7vKQX2tSh1W2CkrgslGF2k4b2LlDSkOsGB3n4IEANV98ystQCLw5d/65mmF58bpKJrn
	VnTc1i3zYWO885Mpw==
X-Google-Smtp-Source: AGHT+IEbVKAOQryz9CrqNq7YcXzlpDT55WpLV4Pq/JU+VDEnMJqD76HOFqaphWJLzyhwBNusCAX6nEmEoRl+spA7PsI=
X-Received: by 2002:a05:6512:671c:b0:55f:3f06:8109 with SMTP id
 2adb3069b0e04-55f70567d33mr2752382e87.0.1756852494394; Tue, 02 Sep 2025
 15:34:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756813980.git.mazziesaccount@gmail.com> <08929460fe11dd0b749c50a72a634423f13f4104.1756813980.git.mazziesaccount@gmail.com>
In-Reply-To: <08929460fe11dd0b749c50a72a634423f13f4104.1756813980.git.mazziesaccount@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Sep 2025 00:34:43 +0200
X-Gm-Features: Ac12FXwccgG1c1zxMfMi_u39Y9mfSKE-cELflVFk4_pUUqqBRe8DG-VpxisYs9Q
Message-ID: <CACRpkdbOhm4PawYZUxU1SMi8WGr-LxhR1jhSVPDvPh3TTp8SWQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] iio: adc: Support ROHM BD79112 ADC/GPIO
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Marcelo Schmitt <marcelo.schmitt@analog.com>, 
	Javier Carrasco <javier.carrasco.cruz@gmail.com>, 
	Tobias Sperling <tobias.sperling@softing.com>, Antoniu Miclaus <antoniu.miclaus@analog.com>, 
	Trevor Gamblin <tgamblin@baylibre.com>, Esteban Blanc <eblanc@baylibre.com>, 
	Ramona Alexandra Nechita <ramona.nechita@analog.com>, 
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>, Hans de Goede <hansg@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matti,

On Tue, Sep 2, 2025 at 2:24=E2=80=AFPM Matti Vaittinen <mazziesaccount@gmai=
l.com> wrote:

> The ROHM BD79112 is an ADC/GPIO with 32 channels. The channel inputs can
> be used as ADC or GPIO. Using the GPIOs as IRQ sources isn't supported.
>
> The ADC is 12-bit, supporting input voltages up to 5.7V, and separate I/O
> voltage supply. Maximum SPI clock rate is 20 MHz (10 MHz with
> daisy-chain configuration) and maximum sampling rate is 1MSPS.
>
> The IC does also support CRC but it is not implemented in the driver.
>
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>

> +static int bd79112_gpio_dir_get(struct gpio_chip *gc, unsigned int offse=
t)
> +static int bd79112_gpio_get(struct gpio_chip *gc, unsigned int offset)
> +static int bd79112_gpio_set(struct gpio_chip *gc, unsigned int offset,
> +                           int value)
> +static int bd79112_gpio_set_multiple(struct gpio_chip *gc, unsigned long=
 *mask,
> +                                    unsigned long *bits)
> +static int bd79112_gpio_dir_set(struct bd79112_data *data, unsigned int =
offset,
> +                               int dir)
> +static int bd79112_gpio_input(struct gpio_chip *gc, unsigned int offset)
> +static int bd79112_gpio_output(struct gpio_chip *gc, unsigned int offset=
,
> +                              int value)

This looks like it could use

select GPIO_REGMAP

#include <linux/gpio/regmap.h>

struct gpio_regmap_config config =3D {};

etc. Did you check out the GPIO_REGMAP
helper library? It can work wonders to reduce code
footprint, just git grep and look a bit at what the drivers
using it does.

Yours,
Linus Walleij

