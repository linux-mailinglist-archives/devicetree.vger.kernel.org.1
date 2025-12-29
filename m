Return-Path: <devicetree+bounces-250111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE12CE64F8
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:40:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5C6F4300E7BE
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5C0B27FD43;
	Mon, 29 Dec 2025 09:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gpwtjptd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D39B2248A0
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767001230; cv=none; b=D/axYWlFC6eJ/eXPYKMiW89yJAjsUv0tP4jUkpoZg1JcQmMaEx6+NH2HI4ZHWGiHkHaPMluMApN9MX5izaAuFE7hKwxxnrj7rQkC6DY77dW4OqZHop62d2BAtQ+P1S9UvdhJBv5OJXLAt73Dg0/5oMJ3hkSuEybsdLEUvCk7Y7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767001230; c=relaxed/simple;
	bh=WnJ2tC4zepAuYUdnYjJVNb6K4dEj4f7sCT4B+Rwp7bg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EX+uYTfFSIISDxJUwaU+gVaNoukjCfavTPY5GognUn+KdFacpqFtfQHZIomKJsmIKfB4Fhn18Bvkt/s5MGEiOE2TY400rnZ2ebWR7d2JkMzwSgvYy00w8XQVnHqq+RWlKKGUviWv6fke68kM68LKePQLWGFBdjI6MhrlNu6Fr4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gpwtjptd; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b728a43e410so1676046866b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767001227; x=1767606027; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sIiSQ+H4iozlL1RZCBDSnCB5yNmXDQlTJYU7HFVKRIA=;
        b=GpwtjptdlnY9m9B51e7YR6fpVRodCfgZtoYdEGds8KBvwBpic4ViyoPV9VYFvGKK0n
         RH+QXo3k/3MPNyk8uvjmxxA339iFl0g7hMwpoUemJibiU4rSknVUt7noLcyTyFZ5iGGn
         rKQPVQkdH5a57jhmos/0kCckxDSfFoFkhwKW9rfTGNf0LPEcSvbBCHbAzo2xwFyA/a4M
         xw9cBf30lQ5Skf/QrXL5jxgl0mESz+scC3uTQXUeeQiq3B/YAcjJ0bEiKGieWNweTkTW
         UBLPeK0eUME4sm/0t6YGLEYoJgCK5B04VozxFa+t0JlCswWqOFQcajavITCnXtyUzQDH
         HsRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767001227; x=1767606027;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sIiSQ+H4iozlL1RZCBDSnCB5yNmXDQlTJYU7HFVKRIA=;
        b=ME34OXK500MtHRHUnSvr7lf2tn8QRWNvH1/4GCAcK7vQd4fT4O/bg9KErWv4I5gLu7
         /gVLKbaWe/fSRrw1b/pAvxbKfjiY9RhV9/nfG6hDRJmCq0QN5ifq7Z+wENxemRjTFQwm
         wxv5ce/qKY47A5qp2e0H7MspBmWy5C1X5BGDULRWhY193eA1W9lha03UM3NhqMRQXY1n
         U13k2iR8YEBxnhLS+8KBqeq3Lf8/eLNpSVaQFLITinnpDc714NB4Gd8FKx04xX3tnpO7
         sj2TjADS7cC1UovtJJUpDWU9ru8ysxvpwsBwV8kVv4jb++tT7z2iLRB2r6nP68/Tg6fC
         9QWw==
X-Forwarded-Encrypted: i=1; AJvYcCUA9ZR3t5eRS4uwG1N56p1wByOn7hJRXUpiTvKvddcjHsXeB0cC1OUK3j1qa9KBooCNqEjodVGoZcdM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrdr0pTsWbWBpk5KvsNK3WvFncFOJD2nbcqH//MoLD8Q2bYe96
	KCrTirDgoltt1RFgY7arloBy5eGNDiyvU98ZAQRpc0Y0HV1u6eciQDiif8yNXzxzPKZkajzGyDv
	amMyAW9s5KR6X5FBSz3GNhIGn0JuA0x4=
X-Gm-Gg: AY/fxX4sa8d2CKyE72alus5NakQjSqyT2GI38SEn7IDzofuBEyHfOqSvaNShU9QmzyB
	MVf1rbj86n37v5qpPoNo/o49wGHEDHfIb9C/IUc442OHLRk91+y7nlNWqwxPdzuEBvAl31/H+tn
	Cx686jPxLGmUHZqzFE7sfxBWqOCCmNWb7U6coff0Ffit1oXTb5x+FFkLzbksbxuOgTMuyAJw5us
	x4w8+17Xy65zFwOJtI06yT2NkQihzsNm4QdwUpfC8JdupexrS1i4pBemwhGJcAYp0exudZre1OK
	ll7Ew1sQ5PjpyTtJWHZPuU/tEucrnP1hoZe5SGGYkNCEwlWC5lHLZFKu1NhT0otCoLY2S9M=
X-Google-Smtp-Source: AGHT+IF+DgFNPkINf3LkL7IgAP5Ss98RBe1Y/rMetdZObpY5qXdwT+IPbDR+z8ZQU1FR4VUuazyt9Qi1KWf67/a6B60=
X-Received: by 2002:a17:906:c154:b0:b72:5e2c:9e97 with SMTP id
 a640c23a62f3a-b8037051e8cmr3016256966b.36.1767001227274; Mon, 29 Dec 2025
 01:40:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223155534.220504-1-maxime.chevallier@bootlin.com> <20251223155534.220504-3-maxime.chevallier@bootlin.com>
In-Reply-To: <20251223155534.220504-3-maxime.chevallier@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 29 Dec 2025 11:39:51 +0200
X-Gm-Features: AQt7F2ow0LXkeOk1f5InDRvxm9TqnTni9CKevOTaW_8CqwwHCYej-mmXag9PBLs
Message-ID: <CAHp75VdtPnDABykge4z2=74zPhGQbfZkiQR30QPvyam4eYE83Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] iio: adc: add driver for Texas Instruments TLA2528 adc
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, nuno.sa@analog.com, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marcelo Schmitt <marcelo.schmitt@analog.com>, Matti Vaittinen <mazziesaccount@gmail.com>, 
	Antoniu Miclaus <antoniu.miclaus@analog.com>, Angelo Dureghello <adureghello@baylibre.com>, 
	Tobias Sperling <tobias.sperling@softing.com>, Eason Yang <j2anfernee@gmail.com>, 
	Marilene Andrade Garcia <marilene.agarcia@gmail.com>, 
	Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>, duje@dujemihanovic.xyz, 
	herve.codina@bootlin.com, Rodolfo Giometti <giometti@enneenne.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 5:55=E2=80=AFPM Maxime Chevallier
<maxime.chevallier@bootlin.com> wrote:
>
> This adds a new driver for the TI TLA2528 ADC chip. It ha 8 12-bit
> channels, that can also be configured as 16-bit averaging channels.
>
> Add a very simple driver for it, allowing reading raw values for each
> channel.

...

> +#include <linux/delay.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/regulator/consumer.h>

Follow IWYU. Here are missing headers, such as bits.h, mutex.h, types.h.

...

> +       case IIO_CHAN_INFO_SCALE:
> +               *val =3D tla2528->vref_uv / 1000;

(MICRO/MILLI) ?

> +               *val2 =3D 12;
> +
> +               return IIO_VAL_FRACTIONAL_LOG2;



> +       tla2528->vref_uv =3D devm_regulator_get_enable_read_voltage(&clie=
nt->dev,
> +                                                                 "vref")=
;

With

  struct device *dev =3D &client->dev;

at the top of the function this will be one line and others also can
be shortened.

> +       if (tla2528->vref_uv < 0)
> +               return tla2528->vref_uv;

...

> +       /* Set all inputs as analog */
> +       ret =3D tla2528_write_reg(tla2528->client, TLA2528_PIN_CFG_ADR, 0=
x00);

Why not simply use the "client"?

> +       if (ret < 0)
> +               return ret;
> +
> +       ret =3D tla2528_write_reg(tla2528->client, TLA2528_DATA_CFG_ADR,
> +                               TLA2528_DATA_CFG_APPEND_STATUS);
> +       if (ret < 0)
> +               return ret;
> +
> +       /* Set manual mode */
> +       ret =3D tla2528_write_reg(tla2528->client, TLA2528_SEQUENCE_CFG_A=
DR, 0x00);
> +       if (ret < 0)
> +               return ret;

Ditto.

...

> +static const struct i2c_device_id tla2528_id[] =3D {
> +       { "tla2528", 0 },

No ', 0' part.

> +       { }
> +};

...

> +static const struct of_device_id tla2528_of_match[] =3D {
> +       { .compatible =3D "ti,tla2528", },

No inner comma.

> +       {  },

No trailing comma.

> +};

--=20
With Best Regards,
Andy Shevchenko

