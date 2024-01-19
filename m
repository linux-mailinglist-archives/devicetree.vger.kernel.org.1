Return-Path: <devicetree+bounces-33140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A0C832618
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37CFD285B65
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 09:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65CC01DDC3;
	Fri, 19 Jan 2024 09:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WONBx0ye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B3F1E896
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 09:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705654968; cv=none; b=sqboGhqPzSRGababzqMoSBAYp7EbWxssGD4wmiP6bfvqdh+FNFf+7szpfYXJC1Loor7mxZcfs/tlCX1y/rk3Bk51sV9YbERpKOC7N193mvb95CK2EJjNplMhIg97O1WiGGDRwttb8niCQawBE+IfnOakzirYLuT7bxc+TBFNXPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705654968; c=relaxed/simple;
	bh=lOoZ5uIL1BqcoJqAFT0gF4hhM+tlUGk5b5N66uLo8Rc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tMdIo9NVe0hhqHKpUgIVR/7XNpmzHNUsJdPVIM+aMwhFCXhQP2tnsJ2jNEv1tS/ixFVKmgLyFZmngjhD6bIFr0xJ+/GdpXS8mhJvFbQbrmWkxgEvWZEBhoL6vDXYaVUE/IxR7bl/uUnQs+7a3UUo6BoXUYHmYUPVaGt3JGAdgdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WONBx0ye; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5ff88cbbcceso4978837b3.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 01:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705654966; x=1706259766; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vXly0SHrTSjZSuXQftpHAjjIbPZkzzkklwoOCCBALEY=;
        b=WONBx0ye2AI7HV2E3qYiAayqbw5VFhhNchQu0VedOwZjWMsJ/HjJ9KyiNDGZp3JCLc
         lUrbsUUjI7i9193HhDFwbFbcw+7/wjM097QopAfvb+0KWOdkQkKC1M4zAPEte5IvCVAK
         0zYPoc07JtzgVm0cc+jps8UulPAr28Gxmh0p3Rzoc43SYDtcmdIKSFMgYkCKOJGPJ7aE
         xT3/jOdVLbnA4h8Y6NkXU5ITfyq5AnAdk53NxjmY+EEE7q2usrWrL3l21Va9C8umLAU5
         R4x4hCl5mz1MqSRmPQX2TLgXBu7ElhqrxeWZ74ZAON3yFWo77IpPVrfhIgEYPwnKIzNy
         1pwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705654966; x=1706259766;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vXly0SHrTSjZSuXQftpHAjjIbPZkzzkklwoOCCBALEY=;
        b=GaVS1cHZK+oWKxNOCJwsrEH7nuQQxZNG6U9dYtqVo8sWsNcsb861j4KlO+d31jqn0n
         1BkVpi05hCI36QlCbDQhKCY4Menc8JLS+yIYeK42ps+2XRdFqLSEbSpBUW4VLF5LgUaw
         awegmHVsIRAMhSH0JIUTnGso2VhqW7YnnXpakwFYjhKSUFp43hfcheecuJllRkPM0zZ6
         iMk/ER7AiLalHvYwBxHQPijimsefeM+bindIKpFw8bLm8Ds1q0IfqXtEoAgVxLwHCGPq
         q5SuglMGiUhf+ZSnpW2394qrbhPTJMjRGbc7ZRr5/EHpO+RPuSb0+zv5XxlvhEcuIzvU
         H/gg==
X-Gm-Message-State: AOJu0Yz+Y90QhIBA8mIrhgw8ZBowwtvVSo14jsRThPuFubRA82/qEXZb
	qevtMEHYPAvwzVhpcMsUuKFRsjxlwEszdFO/i/zS3V4OVvT7e1rf+uLhjhHl02bErKJ0fykOiFj
	md6ApkwA2DlD6TVou35DQksJ7uA29crhy4i4qxQ==
X-Google-Smtp-Source: AGHT+IGH1HSlU2Qbeu2oYJg1QQ66XV+gD85BDZ/Gx+YWlz8o2e1bGKpsP6SO+/FVBt2P1/njmI/71ZCnpvbytP0Ju9U=
X-Received: by 2002:a81:6941:0:b0:5ff:50c2:e120 with SMTP id
 e62-20020a816941000000b005ff50c2e120mr2342756ywc.36.1705654964498; Fri, 19
 Jan 2024 01:02:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240118-ktd2801-v2-0-425cf32e0769@skole.hr> <20240118-ktd2801-v2-2-425cf32e0769@skole.hr>
In-Reply-To: <20240118-ktd2801-v2-2-425cf32e0769@skole.hr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 19 Jan 2024 10:02:33 +0100
Message-ID: <CACRpkdaUvmmbGUyQ-L_u8c73=Oz+qE88GXd1=cUY7r+PPttJbw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] backlight: Add Kinetic KTD2801 driver
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>, 
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Helge Deller <deller@gmx.de>, Karel Balej <balejk@matfyz.cz>, ~postmarketos/upstreaming@lists.sr.ht, 
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Duje,

thanks for your patch!

On Thu, Jan 18, 2024 at 6:33=E2=80=AFPM Duje Mihanovi=C4=87 <duje.mihanovic=
@skole.hr> wrote:

> Add driver for the Kinetic KTD2801 backlight driver.>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>

Add some commit message?

> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/of.h>

I don't think you need <linux/of.h>, the compatible table works without
that (is in the device driver core).

> +/* These values have been extracted from Samsung's driver. */
> +#define KTD2801_EXPRESSWIRE_DETECT_DELAY_US    150
> +#define KTD2801_EXPRESSWIRE_DETECT_US          270
> +#define KTD2801_LOW_BIT_HIGH_TIME_US           5
> +#define KTD2801_LOW_BIT_LOW_TIME_US            (4 * KTD2801_HIGH_BIT_LOW=
_TIME_US)
> +#define KTD2801_HIGH_BIT_LOW_TIME_US           5
> +#define KTD2801_HIGH_BIT_HIGH_TIME_US          (4 * KTD2801_HIGH_BIT_LOW=
_TIME_US)
> +#define KTD2801_DATA_START_US                  5
> +#define KTD2801_END_OF_DATA_LOW_US             10
> +#define KTD2801_END_OF_DATA_HIGH_US            350
> +#define KTD2801_PWR_DOWN_DELAY_US              2600
> +
> +#define KTD2801_DEFAULT_BRIGHTNESS     100
> +#define KTD2801_MAX_BRIGHTNESS         255
> +
> +struct ktd2801_backlight {
> +       struct backlight_device *bd;
> +       struct gpio_desc *gpiod;
> +       bool was_on;
> +};
> +
> +static int ktd2801_update_status(struct backlight_device *bd)
> +{
> +       struct ktd2801_backlight *ktd2801 =3D bl_get_data(bd);
> +       u8 brightness =3D (u8) backlight_get_brightness(bd);
> +
> +       if (backlight_is_blank(bd)) {
> +               gpiod_set_value(ktd2801->gpiod, 0);
> +               udelay(KTD2801_PWR_DOWN_DELAY_US);

That's 2600 us, a pretty long delay in a hard loop or delay timer!

Can you use usleep_range() instead, at least for this one?

> +       for (int i =3D 0; i < 8; i++) {
> +               u8 next_bit =3D (brightness & 0x80) >> 7;

I would just:

#include <linux/bits.h>

bool next_bit =3D !!(brightness & BIT(7));

Yours,
Linus Walleij

