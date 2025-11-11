Return-Path: <devicetree+bounces-237145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B02CC4D555
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:11:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2CAD188666F
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE70A350A39;
	Tue, 11 Nov 2025 11:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t2U03Uqd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1DC34DB53
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762859136; cv=none; b=s6NYKU6cfG+J10TAfjIm3+lNUO5k1g4I1NYubkgDtTyJfUafxIctoFS7ucqg03zNFhBpkV7CqZHf9JrOGEVMKADm4NnZF9vu8L6nea3zGpRuzjrJLwkPKOK/IwzPB/uKrWWdAb5kjbuS0TQiTnECoqUWRhFfzA9lmjT1aaAp1Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762859136; c=relaxed/simple;
	bh=y66FBoc++SpxBI6FGW3rQvdUsLlCBgJvq0+SdEPQo6c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ox2J5rR6kQ1q4QemjGb/+n1al7wuT7XO1mf03sXD99YQK46Cur8TByp/Y1T8PHwXFwMH7AuPeUjEsdJEiSYz7FPgbwCibiZM+hHlMLX3Y93RDbVcKAJzrYrhkVlfjKR+822h2yH0zPDvtfSLqerL9x4Zv+/xb3rzG0GccDQumQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t2U03Uqd; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-57bd482dfd2so3538665e87.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 03:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762859133; x=1763463933; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UoH9aK6siRf3TzdqpyJR1VLqiWASMeAZ3/LGdDhqFC8=;
        b=t2U03Uqd0W5wrdgeVXLyZTIJSUjjteG7dhXJWun9YrX0wu0qAoiYI+4QhGxgwfRWjX
         ww4hCZvw21l1WoZBlnjqbWuR6JnMkbQo1cBoTafKte/tCU2skdHAUH/qy0i/ELkJh87b
         bsBgbHI7c444CG9XRIyLNGH1yYJpojLrTCK5MvNGq2IkDF0wvojxsaX594xLpNGtvOQd
         c2kZD2fLjDjWdA47fFdqDpjHxdBKY5kBAlro/E/VCQhOxkWKUS3JtSrg0wBuhe28mvca
         jarhx25cA/3iPm+J/RQMrqf/EMIaLcMQ3Df2EJv1twmuRi67nZa4jsaAVsPgrTSxXkCS
         5g2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762859133; x=1763463933;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UoH9aK6siRf3TzdqpyJR1VLqiWASMeAZ3/LGdDhqFC8=;
        b=G3z88b1pj9Qnf2OO6fN6BSvOWrBFkAkNVbtID32p328AHDqYkSBwCp6MmdvlBG0Tcn
         xiBOjoUzCH/3YeZP7aFwCb7OooQBLKBhG5zZd9Baf7uvH7hekTh10gHz/vmXT5ePhPOk
         y49mblJdNUzljzXyFJ3D+tBQv5R1ESCXZ0L20lOAhauYiSNRfGQ8CmozXHoomxTc4gFE
         VHWZ98ez9s+N7rpbzjKO9OAINQZ61CoTQoPq46bBi2VmsAqHmsnZrPwCsKVt4AZFTrQ0
         m/CZ/HNEpSkEkc8E6s5xtrzIz3oCkqTSVqnaPkzpL1b2Lo5M6HbNmyETipXd2AStIqyL
         KLSg==
X-Forwarded-Encrypted: i=1; AJvYcCWCng58rqEPQO0f7f7TJWPCtWDPXFF1tebjWKmt7clE/2LPEFzpiwr7PoGfXgDt7EtoqeyQ7lZdCiuF@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjffu9HCfdcoWiN3/z4OvrHAnJNb2/RmhrIyTFlK5QQqREB2tw
	8VS6UwfDQdB1l8i6jIdNunKeJbsQsGA+qBJnZOKgzcOnXkhvW6Hdd3IWPHYuDusDuRZm/gu6dFA
	IGz4dvEj+lTYZNXe3ZR0nqFhPxbgvh0R7dJRKubR61w==
X-Gm-Gg: ASbGnct6HKWAz/q96PftGeeRPmBjZKu3LnMUpd1xXE4nBUCc1XFgqtMy5PYjnW/bgdQ
	trud9ZqXWHCqA2JNZ4mHS8q0UTdORxacJZkHZ2dWrmdg2Rfe4aUFp/fvbQ48c1ipILNJZyTpUB8
	wuU8cyLf0wWfQslJ2ep2QjG/fl1aWGcmss15QuyH+b7VhW0gI/oFiVhFtlkp8dJ/yC1pIqChtT8
	P0AukZSlyAmMrmXRzzJFZBPzmAowDTXtNVxVnBHuopfewbCzVwn6GNpcvKw
X-Google-Smtp-Source: AGHT+IFkZiLMnr50CeQ1O4yRkma5Tp7W/uLXb3QVZ0YS6vC4SBgPLtDI8Wk1eXrn9vUKVkhHURYlWyAkxblzklx1FOI=
X-Received: by 2002:a05:6512:ad1:b0:594:2e42:d49a with SMTP id
 2adb3069b0e04-5945f1671bbmr3110517e87.21.1762859132818; Tue, 11 Nov 2025
 03:05:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031160710.13343-1-antoniu.miclaus@analog.com>
 <20251031160710.13343-3-antoniu.miclaus@analog.com> <CACRpkdYdtcnxyP4xVsqVK+geurEOEURqZO5eLC96YMqh1sE5Sw@mail.gmail.com>
 <3ead5d7aa5e6be2b6df3bb91b35fec37e23353f3.camel@gmail.com>
In-Reply-To: <3ead5d7aa5e6be2b6df3bb91b35fec37e23353f3.camel@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 11 Nov 2025 12:05:19 +0100
X-Gm-Features: AWmQ_blU6j3_M21L61Yu-JWVhmaHhxtwDX6YhKqEeSy_5sEpbKXDc7z5UbWQeFg
Message-ID: <CACRpkdZf9D2PH5AR46Pwi8UoyfwumKS4P3ncJ=RN4iu_cJzZ5w@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: adg1712: add driver support
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: Antoniu Miclaus <antoniu.miclaus@analog.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 10, 2025 at 1:32=E2=80=AFPM Nuno S=C3=A1 <noname.nuno@gmail.com=
> wrote:
> On Mon, 2025-11-10 at 11:30 +0100, Linus Walleij wrote:
> > Hi Antoniu,
> >
> > thanks for your patch!
> >
> > On Fri, Oct 31, 2025 at 5:08=E2=80=AFPM Antoniu Miclaus
> > <antoniu.miclaus@analog.com> wrote:
> >
> > > Add driver support for the ADG1712, which contains four independent
> > > single-pole/single-throw (SPST) switches and operates with a
> > > low-voltage single supply range from +1.08V to +5.5V or a low-voltage
> > > dual supply range from =C2=B11.08V to =C2=B12.75V.
> > >
> > > Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> >
> > So tying into the binding discussion:
> >
> > GPIO means "general purpose input/output".
> >
> > I am really confused as whether this is:
> >
> > - General purpose - seems to be for the purpose of switching
> >   currents and nothing else.
> >
> > - Input/Output - It's switching something else and not inputting
> >   or outputting anything and this makes the driver look strange.
> >
> >
>
> Not the first time a part like this pops up [1]. At the time, the final
> conclusion was to go with gpiolib. Naturally you can think otherwise now =
:)

I think we might wanna go with gpiolib for the Linux internals, maybe
we want to add some kind of awareness or flag in gpiolib that this is
a switch and not an output we can control the level of?

I could think of this:

- Make .get() and .set() in struct gpio_chip return -ENOTIMP
  no getting and setting these "lines" because we really cannot
  control that, these lines will have the level of whatever is on
  the line we are switching.

- Implement .set_config() and implement the generic pin
  control property PIN_CONFIG_OUTPUT_ENABLE as 1
  to switch "on" and 0 for switch "off".
  See include/linux/pinctrl/pinconf-generic.h

This makes it possible to use the gpiolib in a way that is
non-ambiguous.

We might want to add consumer helpers in
include/linux/gpio/consumer.h such as:

#include <linux/pinctrl/pinconf-generic.h>

int gpiod_switch_enable(struct gpio_desc *desc)
{
   unsigned long cfg =3D pinconf_to_config_packed(PIN_CONFIG_OUTPUT_ENABLE,=
 1);

   return gpiod_set_config(desc, cfg);
}

int gpiod_switch_disable(struct gpio_desc *desc)
{
   unsigned long cfg =3D pinconf_to_config_packed(PIN_CONFIG_OUTPUT_ENABLE,=
 0);

   return gpiod_set_config(desc, cfg);
}

See e.g. rtd_gpio_set_config() in drivers/gpio/gpio-rtd.c for
an example of how the GPIO driver can unpack and handle
generic .set_config() options like this.

The binding however needs to be something separate like a proper switch bin=
ding
I think or we will confuse other operating systems.

Yours,
Linus Walleij

