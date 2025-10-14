Return-Path: <devicetree+bounces-226393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E7BD835F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65DF33B3B86
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 08:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6DB130F940;
	Tue, 14 Oct 2025 08:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jc40JBjZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E7B30DEAC
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760431048; cv=none; b=Hy4uC0NT5l4LQ4ussAm1lvb+KmuVgGQ2RWemkpWqhj1EQZjqB8B/fuZtyPRaTP/rdFQZ5qaPuybLzPcBu7U+gnYyTKc+rkrAklifj56R5rm797ultHN5BdJjv6EKI7a8Q0InILhTJFUT3E2AI2NQkqJ4KqwWKmxromb1orHa7KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760431048; c=relaxed/simple;
	bh=YDFEfrGJRIl/si0UuJt8TjY5k4mRyPv0QSQBT7wHajk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CFCjlfAg0H5CQbwuVv0VVlVTer9B3ZH/Ayuxh8vH8ZQmq6vHP1q378Dmc+Xgc8vfyViKnJeNPpyAJ5sTGybLYpoQeChGaYFE2WqhOFce/ebCvKGaB4cC9pXj4/raxPYGeo4WjKGtpE5ZZ3vrtK14k9vRGL7HYL34Xuz5hhMg24A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jc40JBjZ; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-74f6974175dso54317747b3.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760431046; x=1761035846; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mB4qV/168U7fLfDDqZVPDjG7BTgjigqZ4ZKms2t42lE=;
        b=jc40JBjZtEHV8PZQr3tuqvwEhcuE3cnMuVnsApsgOVj2npmxkwoN2jyGbSfTBDiUxx
         DowBBWWeUn08U5qBd6d/oBFICSW3gHPMwOrpr4/0UZ8r2VucSGhjk6kExp2n40BT4y7e
         lV5w/dujKvaDL1viuuVfokP/oqQ8HaVwVhVLYcjRWnGlIzZfjZmGH1eC/dGvv9HzHdRi
         sJ3dnv6R0ueJkpjBahWNHHG6U1pvlgstoMWD3grJsl1P7v+LuQ6v6XuTzVByX5/mGEWq
         43o1sE8mrnJtGqPhMtgo2aWFlZHxCjHL03qy8zyoNbs3cFhACU+SoyQrX7jOigs+aa2g
         dnEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760431046; x=1761035846;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mB4qV/168U7fLfDDqZVPDjG7BTgjigqZ4ZKms2t42lE=;
        b=A1lqLXBAI8WgutDeIx2eN/7Tv+nS+BudNZb0baMFPlypjw4TAmQjEz8K/YW4/Wv5+4
         S8ILH1987auuO5J+HQo3D5pk5ngzEjE7sSET2d+Z2IA6tg6/F9Qr/4TRI1Ydicyf+mKE
         djfuX2DD888ubXAPv/0o/cWb65/r0YXweH9LhSJcXJshjI4eO9W45rZ5zUd7LBv+li+S
         XYBwKGT92B+9lxf1QQo1/ktjryZfFZv8opfg4izRnkgm957/E2bf33fjfzf1qsqPi8Yo
         UqckJup8bzUvrVskrN0e5jdg8ogMTcZ/tYVnCpok8X8n17R/45NudwtPZicyz8eMuJKR
         sDQg==
X-Forwarded-Encrypted: i=1; AJvYcCW1XUSBBexDojWCSmQclPoa0uw4s1zeecJxFsRoZIUdGD/+JVY2zXTIBewk+P0qX3ielT19bYlp+i7L@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbz3gyioLtwcmSRGUKxDiEU+p6QuU0Ll+VOFCHUoROhdu5jptZ
	Jk6qPfMy1sYjMozR/onsdArf4OlXO/HE/Ac08HAlEINwq2TsxdzcVb3D++pEo6/ERi/9mVkYDtb
	lugxsxsdsr/9GJFUT5/YJMYBI/+QAyeojN0gmn7kb9A==
X-Gm-Gg: ASbGnctaR5T6QONe1c0A/fUy657r+FSC+eZdhUU56M4VHYk5UiEQ5U85md+tJGsVSRP
	UTHeadBeOSutjxZ/G9vzfYfe47QIt9J292zJleJQH3CiI9ENGp1viYa6InwJSs9Ve893WFfFkTy
	VLGNUNrSPOQ0HjSIU30i+vx6zJJZa97xp7XcmZqrzauFriHU9NyyYE/AIRab0yZhKtvLhT4WwRI
	I148WdRW/VFNULBp4PcAaycs1s69w==
X-Google-Smtp-Source: AGHT+IG+8mwf4OKlBn3bot7TGE30F1MEjsH7uhQxMIRdy8a3JAvRH98VqQB1DV6PJ+zZ+6RTxRH4cDuvVp1uxAB4hMQ=
X-Received: by 2002:a05:690e:d53:b0:63c:f5a6:f2df with SMTP id
 956f58d0204a3-63cf5a7084bmr9159568d50.65.1760431045879; Tue, 14 Oct 2025
 01:37:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009223501.570949-1-jelonek.jonas@gmail.com> <20251009223501.570949-3-jelonek.jonas@gmail.com>
In-Reply-To: <20251009223501.570949-3-jelonek.jonas@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 10:37:10 +0200
X-Gm-Features: AS18NWB-ELwnK9aucNPJedRVrl-QBK4yCisLJagx64N2Yi5AbtMlX8tcPZYUnlA
Message-ID: <CACRpkdbCw1Agnsy-aYPs+2PhQDFjj+=VjmGQBmxuCUfwRuWkfw@mail.gmail.com>
Subject: Re: [RFC PATCH v1 2/2] gpio: add gpio-split driver
To: Jonas Jelonek <jelonek.jonas@gmail.com>, Peter Rosin <peda@axentia.se>, 
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonas,

thanks for your patch!

overall I like the idea and I think we definitely need
something like this.

On Fri, Oct 10, 2025 at 12:35=E2=80=AFAM Jonas Jelonek <jelonek.jonas@gmail=
.com> wrote:

> Add a new driver which allows to split a physical GPIO into multiple
> virtual GPIOs by using a multiplexer.
>
> For now, this doesn't support advanced features like IRQs, just normal
> IN and OUT functionality of GPIOs.
>
> This can help in various usecases. One practical case is the special
> hardware design of the Realtek-based XS1930-10 switch from Zyxel. It
> features two SFP+ ports/cages whose signals are wired to directly to the
> switch SoC. Although Realtek SoCs are short on GPIOs, there are usually
> enough the fit the SFP signals without any hacks.
>
> However, Zyxel did some weird design and connected RX_LOS, MOD_ABS and
> TX_FAULT of one SFP cage onto a single GPIO line controlled by a
> multiplexer (the same for the other SFP cage). The single multiplexer
> controls the lines for both SFP and depending on the state, the
> designated 'signal GPIO lines' are connected to one of the three SFP
> signals.
>
> Because the SFP core/driver doesn't support multiplexer but needs single
> GPIOs for each of the signals, this driver fills the gap between both.
> It registers a gpio_chip, provides multiple virtual GPIOs and sets the
> backing multiplexer accordingly.
>
> Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>

This can be made easier these days, reusing the
forwarder library. I think! Check if I'm right.
Make sure you use kernel v6.18-rc1 as a
baseline for your next patch iteration.

select GPIO_AGGREGATOR

#include <linux/gpio/forwarder.h>

Look into this driver for an example of forwarding
GPIO lines:
drivers/pinctrl/pinctrl-upboard.c

See
commit dca2f73cf19fedd7bc38fa6a0eb50fea63cd0214

Now that is a pin controller so it contains a lot of
irrelevant stuff. Focus on the forwarding part.

This part is maybe the most interesting:

        fwd =3D devm_gpiochip_fwd_alloc(dev, pctrl->pctrl_data->ngpio);

Here ngpio will be 1 for your usecase.

        if (IS_ERR(fwd))
                return dev_err_probe(dev, PTR_ERR(fwd), "Failed to
allocate the gpiochip forwarder\n");

        chip =3D gpiochip_fwd_get_gpiochip(fwd);
        chip->request =3D upboard_gpio_request;
        chip->free =3D upboard_gpio_free;
        chip->get_direction =3D upboard_gpio_get_direction;
        chip->direction_output =3D upboard_gpio_direction_output;
        chip->direction_input =3D upboard_gpio_direction_input;

        ret =3D gpiochip_fwd_register(fwd, pctrl);
        if (ret)
                return dev_err_probe(dev, ret, "Failed to register the
gpiochip forwarder\n");

As you can see you can override request/free/get_direction etc.

In this case you probably don't want to override these functions,
but instead override chip->get and chip->set so that these set
the mux (and delay a bit?) before reading/writing the line.

->get_multiple and ->set_multiple seems hard to implement
and should probably be overridden with functions returning
an error.

> +++ b/drivers/gpio/gpio-split.c

As mentioned I would call this gpio-line-mux.c

Yours,
Linus Walleij

