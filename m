Return-Path: <devicetree+bounces-211929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD82B4156C
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 08:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 051CE1B20080
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 06:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD262D978D;
	Wed,  3 Sep 2025 06:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fdzZTuYk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690C92D9494
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 06:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756882047; cv=none; b=dSHwQD2WuD+6ASOZzvb8dV5zsLa4hvI7mvMx1Fhb5t+UyZpBE284r+pLb8YBlsBDvgZtnZdUaNpmQoVWnoVX2ugHr4/1mL1OLT5o4RcFvFIV1FGY90hJ/ZYKV4jQ3JIt9c3bj0HMvKB9KlVOk12JjVbuFT76LYrVHSg5C2MSV04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756882047; c=relaxed/simple;
	bh=JPf9MBwFsXDqpcdtjQzlVagg9Dgm72GKmuu+o+i6Jps=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JzjJSa0wqb3W7IQJXmzibV6j9a4UZHVc8bqdpXxD7xSEyC6IiJhMOEAg+NwoCPxGqPyLp2mNnmAiRG6PjuP7aai/ESVD2M8DZ3otlDA6e6mrJGqBEAfQ+Na46zMaN4DVBKTzqSG2Zh4HnxCxB8HQ6VO+oWFWcDM4WHq+VloBUBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fdzZTuYk; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55f7b6e4145so2737074e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 23:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756882043; x=1757486843; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JPf9MBwFsXDqpcdtjQzlVagg9Dgm72GKmuu+o+i6Jps=;
        b=fdzZTuYkF29QgBigJfqqWon5n83S460gZRV2f4jgqqMtXu/gzDeqg+NYLgPQ0RV38P
         Sk/Jako15oRICnUN33bJMaU1upbbGzl3acZCpyGWq1NP56J4hY38LB9F9wkMgJuv5bR5
         OOFIq3ZOdI3Hb4toCnPk9ls5Jt5jswt2WXIrFoRtz3i/ZvkQp0aKas+BS5k50Vc8XLvh
         MhUvkvcLieCyIPaaZvTUu9zsK0eaJxlocxMgEqvisIEgL1DfJXauJAislBcZbusE5JcC
         sGBwcDp/0bfqxQjB4ucerRbjw+pJJvi5YnVOqGjmbTfM4u0RQV33fizl8MW0mIYGRT+W
         surg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756882043; x=1757486843;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JPf9MBwFsXDqpcdtjQzlVagg9Dgm72GKmuu+o+i6Jps=;
        b=hEc8XdaJDZ4NZzNk4VyGZTLmH49Xej6R+kD8lCbW9yC7gILaawV1lD9Y13Yj1Ex3S3
         Wl68HBwEyyK/O+lpcxqaKvWrcJhTKpX5N9JnwB/pJJ6cGMGBWGrJ4EyfZK6iMUPuVELM
         9UF0jkMAaPClxjlJp0HZ/8RT65AISsg8ascOAUxLCz89XPlJ95EzWLxPQtX3hf5ik7Gf
         UuzHStkEOq5fmQxRU6duGPOqlme3Mujj9SmefxlCi4HUXfoLO7ZTIV5gUoodTUNyHJFs
         TQ//tTIRAQGibYlx+7BBz5i9HWWOKyZPl4YrCYF4Lby/wQBZi8y86VpU13228X1o4oHd
         vorg==
X-Forwarded-Encrypted: i=1; AJvYcCUNFIVN3COvpRHwOGlkv2bdPjMlUjo3CNOhl4kUn8iGb3PDsQFUoDI5MFyKssDTgy/1Sy8R0XMAeOSQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwgFCRZiT7bDct3IqtuimfFXX5+4IiyWbs4TMToP1qETRgTu2ep
	i1C9iZChai1OlcUibikwbaxzQ92vLOxZEtgF+Yyv5f2vRZCBi1tnLUnny/VyjkxM+a5tKQXi7Fs
	P2eVmkoP8z07hDpInJE7+ZGuhCWKINyejIv9ttH875Q==
X-Gm-Gg: ASbGnct3SHXvn+ycd3T/dyRFYb54VFzRbQxcyC1oQjTVgr+i9ybmB35wkp43/SP2vkh
	sjBIaC88eIYvUK32cYw3w2HU1bKM2UHrTZtz4I5Y2x8IweQs2j4b0rVCcmIo7TyzJ65nS+pPE3N
	DqF8VceTfCZqMv7BSVFYiSIDH5vXPH+htWyEpkblfAvM1o4Q2fUKsbyCuV6TQvsXmqailu+4YdN
	7EYHePhw7DaFkGcYg==
X-Google-Smtp-Source: AGHT+IG4YC4WaIVhdE/SO0C9kkujplv36YQBR7QppVwWs93lEzjQRfRa2semDZGhdaQs2p7GqIs9i0ivFJhWbHX0Rek=
X-Received: by 2002:a05:6512:2508:b0:55f:4b53:6fc3 with SMTP id
 2adb3069b0e04-55f708b1a85mr4516238e87.16.1756882043464; Tue, 02 Sep 2025
 23:47:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756813980.git.mazziesaccount@gmail.com>
 <08929460fe11dd0b749c50a72a634423f13f4104.1756813980.git.mazziesaccount@gmail.com>
 <CACRpkdbOhm4PawYZUxU1SMi8WGr-LxhR1jhSVPDvPh3TTp8SWQ@mail.gmail.com> <ffef0fa6-45e4-467b-b264-1df15754d213@gmail.com>
In-Reply-To: <ffef0fa6-45e4-467b-b264-1df15754d213@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Sep 2025 08:47:11 +0200
X-Gm-Features: Ac12FXz2kUTuIK7Qu_UhO-ePUCmnG1GuzLVWHurE-uLTn1uN0blwAJJV5wrS6c4
Message-ID: <CACRpkdbPzq6yKMHJXaFmXZSsttUkt5OAKRTSc_pjLwZZiZr7Gw@mail.gmail.com>
Subject: Re: [PATCH 2/3] iio: adc: Support ROHM BD79112 ADC/GPIO
To: Matti Vaittinen <mazziesaccount@gmail.com>, Michael Walle <mwalle@kernel.org>
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

On Wed, Sep 3, 2025 at 7:23=E2=80=AFAM Matti Vaittinen <mazziesaccount@gmai=
l.com> wrote:

> Anyways, fast-forward to this day, I don't see it handling valid_mask. I
> think it is a must for this device/driver, where pins can be either
> GPIOs or ADC inputs.

Why not just add a .init_valid_mask() to
struct gpio_regmap_config so it can just pass that
down to its gpio_chip?

OK I don't want to load you with too much extra work for
the driver, but it seems such a small thing for a blocker,
and Michael who wrote the library is really helpful
with extending the code, so consider it!

Yours,
Linus Walleij

