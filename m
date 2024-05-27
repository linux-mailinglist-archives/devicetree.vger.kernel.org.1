Return-Path: <devicetree+bounces-69498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 016918D000E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:32:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 793141F2374D
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A59A15E5C6;
	Mon, 27 May 2024 12:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wZ94hEaj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAEE415E5BB
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716813125; cv=none; b=alq/EdfNlEYYqSU8yrDseoN3wXNgL/OX5kgRA+fNT5tU+92QmXb8TsdjJyD98GYHzivtUfMyzNs5+7qMODfF3tOooGv8/OZSFMDn+f1sNO/fdpECMXlED5ZKgz0gi52PA8o3LkBJ7tYtLRr5HY9HXx2qgxwMfYvUdM2czetsk50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716813125; c=relaxed/simple;
	bh=goUxZvIFN/u5EojLxx/8XlvUz1D2u0hDwKrpvKzzkOs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sSerbxXxSke+4qvZ7VyN48pxVEik+EFjTIz8Tp6k3IxMV7YkJaoDpV1EheiEu9JT7SfCwdhOavhpuhOuoEo87qEeaX7HEAD8n2Cx0RP/xedkl7xTifLraGinQAcs50ztT4CadXxlzTbdIEwAXpmmy0HN/clsPYpnvU+vLO9axd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wZ94hEaj; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-df4e40a3cb6so5583571276.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716813123; x=1717417923; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZJDUGLRRsJ0ivWLRLg9qi0jczqwj4hSiWcWfn/3vXsg=;
        b=wZ94hEajKDOzWeuapHy1qeDKauQ3cUi6oHej+izwLshEw04NdiqxOfcM8rn/7mDDaw
         luIlup2tPLkqBB+xgwqO8CcaPSPBJQZNgSFcygE8ndGjNVzhiw8qQ416IN3uRG9ofXqY
         lFhsKcYYMOTwSrlN+ia10Qwo+RRaj/qQzEBJOvoCfQyL6pOL2lzdunEbZE0jz5NGu/L8
         +iGLQoWpeTsmHqurEbPNfWNNUoGTU1AG/un6olg3skM9S+v2dDhJSxpv2UcROFJqTDBj
         6jlC7T+hYXYhKUUk9aIxcSJfqaSwCxOQSMUhhSXrgxWPgdssj5o8vZ5HxFAmAHGyw9Ab
         tR6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716813123; x=1717417923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZJDUGLRRsJ0ivWLRLg9qi0jczqwj4hSiWcWfn/3vXsg=;
        b=byTKrrf3f/rbnzx3M/35tDcgn5cqOXdiU5AEUFLc+3tdnkthpp7gbmKlWdxeM5W39i
         UFfl7VwCQVOj5faxIO3LLkOLt+X3SM/GLLfm+aVZZVezUK414dGxKuS6IFqfSZ6gNal1
         BqKdDzUQq6041O5xxKt0m7Fr5ZL/VQKlQOXorWv24Zr5LDdCjT7jVzTMlSWm58h7D6HY
         8QMv3zzUsBqGgBl9u9GYkXIjDWpdC6lGxcsE44haqEen+iClgcKBt4osnXGASx6HL6TN
         NbeHcoKE55Rm1qSJSdrzINGrRJEfg/4bICmL19xxRyitF9lecxXI7KmU6OlizWCWdflE
         zBww==
X-Forwarded-Encrypted: i=1; AJvYcCU6bPW7mMAj6S0btXqBcWbSyY/92/KireKG7GuKtqX38so39N0DvUFxmAvvm1t0+KcRpIZVrMCvaVaXeHcrBXv4yWbpX72QwXXiWw==
X-Gm-Message-State: AOJu0YyCFUu38aPuKqXj4aPnlQfu9ejJu89y2YEbDCyuT1JYfQbDMtc7
	QV8ZlpJ7ztvHqh2Fh1K8yu1QL9x+yMTmGgJ98ohmSvZI+h03UWX5h8FoGArlGvjF7g7jZauu/AH
	7sVVDqjRS+78BUk6OAGFZDgor/Pkz+phHb1Koqw==
X-Google-Smtp-Source: AGHT+IFbWEK6qKocYhw6f8EvHhlrGAgfVZ6YKjWo+tvRZyGR5zLrpIUyxn/pC4oFmBGHvnvExLlnPLbfXeXIcI3u80E=
X-Received: by 2002:a25:abeb:0:b0:df7:69a2:f823 with SMTP id
 3f1490d57ef6-df77215546amr9090048276.7.1716813122592; Mon, 27 May 2024
 05:32:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240503111436.113089-1-yuklin.soo@starfivetech.com> <20240503111436.113089-7-yuklin.soo@starfivetech.com>
In-Reply-To: <20240503111436.113089-7-yuklin.soo@starfivetech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 14:31:51 +0200
Message-ID: <CACRpkdajd1WkzscPiZL8JKvf10VHy5ppYjy-zAOaNTh0cFXtbQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 6/7] gpiolib: enable GPIO interrupt to wake up a
 system from sleep
To: Alex Soo <yuklin.soo@starfivetech.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Hal Feng <hal.feng@starfivetech.com>, 
	Ley Foon Tan <leyfoon.tan@starfivetech.com>, 
	Jianlong Huang <jianlong.huang@starfivetech.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Drew Fustini <drew@beagleboard.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2024 at 1:15=E2=80=AFPM Alex Soo <yuklin.soo@starfivetech.co=
m> wrote:

> Add function gpiochip_wakeup_irq_setup() to configure and enable a
> GPIO pin with interrupt wakeup capability according to user-defined
> wakeup-gpios property in the device tree. Interrupt generated by
> toggling the logic level (rising/falling edge) on the specified
> GPIO pin can wake up a system from sleep mode.
>
> Signed-off-by: Alex Soo <yuklin.soo@starfivetech.com>

This is a very helpful patch I think.

I'm looking forward to the next iteration.

> @@ -1045,8 +1047,15 @@ int gpiochip_add_data_with_key(struct gpio_chip *g=
c, void *data,
>                 if (ret)
>                         goto err_remove_irqchip;
>         }
> +
> +       ret =3D gpiochip_wakeup_irq_setup(gc);
> +       if (ret)
> +               goto err_remove_device;

Do we have any in-tree drivers that do this by themselves already?

In that case we should convert them to use this function in the same
patch to avoid regressions.

> +static irqreturn_t gpio_wake_irq_handler(int irq, void *data)
> +{
> +       struct irq_data *irq_data =3D data;

I'm minimalist so I usually just call the parameter "d" instead of "data"
and irq_data I would call *id but it's your pick.

> +
> +       if (!irq_data || irq !=3D irq_data->irq)
> +               return IRQ_NONE;
> +
> +       return IRQ_HANDLED;

Please add some debug print:

struct gpio_chip *gc =3D irq_data->chip_data;

chip_dbg(gc, "GPIO wakeup on IRQ %d\n", irq);

The rest looks good to me (after fixing Andy's comments!)

I would perhaps put some
debug print that "GPIO wakeup enabled at offset %d" in the
end as well, so people can easily follow this in the debug prints.

Yours,
Linus Walleij

