Return-Path: <devicetree+bounces-110078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21902999277
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 21:37:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68A92B23710
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 19:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC81C1CF7D6;
	Thu, 10 Oct 2024 19:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SGOLSQT2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C635419884C
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 19:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728588883; cv=none; b=ki9WJ9qykcYV/F8RvDzCLDhnV9ctpwSQjG+bwE+v39pw1zxUB/6MhvqxOVkefBYyTWlBSNWvSCgxP6VTc78rRvEQgw81WM/j/skuVO/BMSIQyVwMuoTpvkX8kV7I0hAgHIWGfHTpu/9uyduZE+VeS39NuFK+D7buaP3Q7FbOumw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728588883; c=relaxed/simple;
	bh=ZeN5bSUi0fQKL/SQ+c6h3kEmojKWQrnugrTlqOAnHnY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kqjg38Yoe6waeDObx1jHqoZN6jVAvl0FZvix7xQrTd1aPr7F00vCKZ3FqDmoUo3gsxYM8x0fmk5ejV8fvvMNzD3KjFOGHqVt/qYxHqBTUDsNIafskDQuaLCcTru8fjiJhpOynELrwVHDLEdk9Iay1ulXKRqe3XsfF4QhIA54nlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SGOLSQT2; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fac9eaeafcso14842841fa.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 12:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728588879; x=1729193679; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pQq6z3ygsMPz3YqMkjOj9nbopV+BNnluNPMVMs2m49Q=;
        b=SGOLSQT2i7tz2l9ossAFDIOauiT0TZvMKygVgvdyljMbyJACFSMdUgh3tzVDF+0uay
         9GzJW0IRU5WuJvGSDz943CtpLaDeEX1b/q/8TNm3SlykGqdCznxRiW4LJEHjMsMczlhb
         LgiBBLDZ5e81m6k9+/cD4cEbkfVYxh+tkAg4uvENkjyMgv7bUr+BBO1nyrlLTaqWCXJi
         eafs0yQW2ctqmsbGXXAmmP2/LWf8WD9pZPzSzKyZFZybo+4GiTmNuBqCqCqOTTQyi3ly
         3sqGuXtNExudN2Dft6gEgLkRz6E3Ur+xqlOQyKbKWBNI7tc+7ZswMMTz3v2kwvYK9Oz2
         dBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728588879; x=1729193679;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pQq6z3ygsMPz3YqMkjOj9nbopV+BNnluNPMVMs2m49Q=;
        b=YnvBOjEKIH5gdaDoKPD9O62WTHlmdFXJBBUgeeOyIAhfL52Rz7z1VpzMAjn4FlC6D4
         H6EpNbIR8J/Il3ZGPvZPECipg4DkykQpb0CHAViqQNOmhJhx11bg2+8jjkM/W3LakH0A
         rCdgzLkc8Lvz2G3iSf3cwkgTOJ+DlabPc329X9TYUhGw/59NRX3IgMw9WzhDoy0VOIdZ
         xLloewECa8dVLaPFhvb7sik3RG2s1gvQWmrLyJrXYaLqoFShkHsNbBLtWyIE5yRCNcLc
         YdnDPXjRycaaM2oSwxrqympdUOAafLa+E3KD4KEqxYARugTX3CLifTWHw6OqAhAX6Dmz
         BuLg==
X-Forwarded-Encrypted: i=1; AJvYcCXUqp9/3XzVJwb3pc5ISSlUiJAcNEElvQihwiPEE9xTs7J4CvOBUT23w52HcZn0PEZUVnDgsyRgFKwQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzjsEH0L0x5Zbgiie7CRBFUwQ/QvECFluAHEKCagBznGFd/HM0d
	njHXCrd9MUpskyKxtbtcoQW0tIbNGkfB8vDZWQyZrtnokpvxCncNpWaW0TDFrPcU434SDLPd2XQ
	+aQQD7CIIzGwXPZi/y+1Itw2t57wxY7J1oz2r4Q==
X-Google-Smtp-Source: AGHT+IGzJnKBr8EbYHzKmabwtIiY3NDZ6btpJ38bRunXPDbntBAO6WkgR8iAwZj51AAJj3L9eS8HKDnSVkvHZFdWbzY=
X-Received: by 2002:a05:651c:2126:b0:2fa:e7f2:764b with SMTP id
 38308e7fff4ca-2fb187ac0d8mr49847661fa.33.1728588878809; Thu, 10 Oct 2024
 12:34:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241001-en7581-pinctrl-v5-0-dc1ce542b6c6@kernel.org>
 <20241001-en7581-pinctrl-v5-3-dc1ce542b6c6@kernel.org> <20241002132518.GD7504@google.com>
 <ZwWscWk5axQI9H1t@lore-desk> <20241009104821.GF276481@google.com>
 <20241009105550.GG276481@google.com> <6707a8ec.df0a0220.376450.293e@mx.google.com>
In-Reply-To: <6707a8ec.df0a0220.376450.293e@mx.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 10 Oct 2024 21:34:27 +0200
Message-ID: <CACRpkdanpA-wq0sYv9HRF=uVeAX_mW4LaKhE8i6TgC9+0d7bCg@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] mfd: airoha: Add support for Airoha EN7581 MFD
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sean Wang <sean.wang@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	upstream@airoha.com, benjamin.larsson@genexis.eu, linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2024 at 12:14=E2=80=AFPM Christian Marangi <ansuelsmth@gmai=
l.com> wrote:

> mfd: system-controller@1fbf0200 {

Drop the mfd: thing, you probably don't want to reference the syscon
node directly
in the device tree. If you still give it a label just say
en7581_syscon: system-controller...

>         compatible =3D "syscon", "simple-mfd";
>         reg =3D <0x0 0x1fbf0200 0x0 0xc0>;
>
>         interrupt-parent =3D <&gic>;
>         interrupts =3D <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
>
>         gpio-controller;
>         #gpio-cells =3D <2>;
>
>         interrupt-controller;
>         #interrupt-cells =3D <2>;
>
>         gpio-ranges =3D <&mfd 0 13 47>;

I think you want a separate GPIO node inside the system controller:

  en7581_gpio: gpio {
         compatible =3D "airhoa,en7581-gpio";
         interrupt-parent =3D <&gic>;
         interrupts =3D <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;

         gpio-controller;
         #gpio-cells =3D <2>;

         interrupt-controller;
         #interrupt-cells =3D <2>;

         gpio-ranges =3D <&en7581_pinctrl 0 13 47>;
};

So users pick GPIOs:

foo-gpios =3D <&en7581_gpio ...>;

Notice that the gpio-ranges should refer to the pin controller
node.

>
>         #pwm-cells =3D <3>;

Shouldn't this be inside the pwm node?

         en7581_pwm: pwm {
                 compatible =3D "airoha,en7581-pwm";
                 #pwm-cells =3D <3>;
         };

So PWM users can pick a PWM with pwms =3D <&en7581_pwm ...>;

>         pio: pinctrl {

I would use the label en7581_pinctrl:

>                 compatible =3D "airoha,en7581-pinctrl";
>
>                 mdio_pins: mdio-pins {
>                         mux {
>                                 function =3D "mdio";
>                                 groups =3D "mdio";
>                         };
>
>                         conf {
>                                 pins =3D "gpio2";
>                                 output-high;
>                         };
>                 };
>
>                 pcie0_rst_pins: pcie0-rst-pins {
>                         conf {
>                                 pins =3D "pcie_reset0";
>                                 drive-open-drain =3D <1>;
>                         };
>                 };
>
>                 pcie1_rst_pins: pcie1-rst-pins {
>                         conf {
>                                 pins =3D "pcie_reset1";
>                                 drive-open-drain =3D <1>;
>                         };
>                 };
>         };
>
>         pwm {
>                 compatible =3D "airoha,en7581-pwm";
>         };
> };

This will make subdevices probe and you can put the pure GPIO
driver in drivers/gpio/gpio-en7581.c

Yours,
Linus Walleij

