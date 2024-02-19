Return-Path: <devicetree+bounces-43478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 790CB85A756
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 16:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34FCA284318
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E85B1383A4;
	Mon, 19 Feb 2024 15:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="OM3d6rri"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B6F3838A
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 15:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708356441; cv=none; b=mLT5m9CxfZVMjaENHeTwDlGdmivTO5rrN5nBUzHK+cYntM+04PS4nEEzpp87gyVGu2UQDTYmU9aZojMNYUtu2J/hDfHVmB+tO+Is3+Bc8pTKQw8j6bObBsVdIkyV1G+qHQQrE5SEEW0+g1pu24vrk8lE82S2vrsq8Z7kCgC2yYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708356441; c=relaxed/simple;
	bh=djGmhPOvcq9/W1rxe5JJwBiih+Q1MkZoP16CGSmuCPA=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GlE+9vzWkUch7TT2qTTSz5nZUKNcP3kGI5LNzi4EbigXk6xGAOgOH7i0+d5mpGT6SHTK5xlyygtUg/h+aDxX3faDvnQQGDd+96OzUq6iwdw8nQwqm39OBAHgN8ukZuIogqUtOtVLiwaW87leb6AAcDPraWinEXQvqBLhtxOD2Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=OM3d6rri; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B5FC240CBD
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 15:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1708356430;
	bh=z13zQfen5PSic1cbaLHezaNJrnjHHexIGsaUa4HOjMU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=OM3d6rri8VznFPhNITT04nJy9SSdy23B9Bw6/NfYq1r0zBWBvS1kfhlItIXgndH8u
	 sUM1pi1s65X5/rgPDXTzQZiYjhUMDCkAQ2GI6Wo9ZEX+N52aVSOJunJUMC4hTUtN8c
	 nKBjLOHnpMkI/VwADxgRDaLlNdqbjDaYHhCXicPbr7tXN8by7ewmgdEVYMC6ELc11r
	 yHIvYKD7izVqAwYSfGEA85c4AaZIAb3RzE8IyP7KYojLa4NG7nBk0AdA0nxF1g6V4J
	 fZLCExL83m0wZarbZRnDHwWgHJ2V03FxrN4Q+fHr/fTLI4Bbk5PwBzkdZLkbtsDGpL
	 4xKOh2C++ZIcA==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-42dbfd1fe8cso57371061cf.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 07:27:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708356429; x=1708961229;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z13zQfen5PSic1cbaLHezaNJrnjHHexIGsaUa4HOjMU=;
        b=hk4QVt26WlVTBftnQ8htKZRvH8eoqFDsn68EDJVySvN+pWEvop7dXPq4Kgs4allrtd
         kSmlulyuRtGAfqa0q9eQg1HlNrTwaOcwLIZJD954tfS1kT3QSr2L2z41TvTWlE6D7G6n
         d8taD6kmC5kObxXJCZGSg1TEpA5CccwEC6FEunAZcHrd13fAomXSOi9syzGE9LnU9Iko
         Tzz00FBbuV6E6hlFjTZSKkohDVRIv+Opp3J+iezR3azSUurvcTnL6+ZnJew4WycNb2xW
         BsxE64AEsezhP1GHMzgdnhFJkDQYQjkWL5kPnQaCftih1qSPl3aKRpGtRoH7hwzA3Cwk
         un0A==
X-Forwarded-Encrypted: i=1; AJvYcCWR4+s+mPsRVuyGZcvbFz9FtbZ1BhxQwe6mxvv3qrwc2O6o/0vfFeYGStJ5IDzKOxh4vhIQ2Vh2suLKRm8Bk0AhS0I/Y+p7c/EhSw==
X-Gm-Message-State: AOJu0Yy2Qkhbho/EKEl5oVQvuL5SrjuqnUYfkElgjM/l74gwc90b3QIY
	g4OxIs0tMYkgGt+55axj8dQIbdT8zGkEJ1Fp0IljPM7WmE8FtxqROoeb6KK34HKnf6GyysG72Y9
	jaOPHgaVI8bxzu6FxEFfZtAn3mJUNLkP0JZZ8FP9TukEhGLtE+X+YQoDoN3uOQt4DuE9KZyHj/U
	LYJfp9ThbdZ3AUNPZ/Rbdd5T+y9iQCGHWEnRex31hjKXGtKNq/4wAKQLR01w==
X-Received: by 2002:ac8:5f4b:0:b0:42c:51fb:4dd3 with SMTP id y11-20020ac85f4b000000b0042c51fb4dd3mr15231535qta.3.1708356429574;
        Mon, 19 Feb 2024 07:27:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfOvuXhXroNvyMuh8cslUW24quliLM3pW8Lnp0rVnhqXxT2/Q9A4igAn3xd8RWbT/DgE7Dv8c0GASdgeP08PI=
X-Received: by 2002:ac8:5f4b:0:b0:42c:51fb:4dd3 with SMTP id
 y11-20020ac85f4b000000b0042c51fb4dd3mr15231513qta.3.1708356429216; Mon, 19
 Feb 2024 07:27:09 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 19 Feb 2024 07:27:08 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CACRpkdbkfWByoo+i57rr3w7QCyCgbiTbP6e_kT3ZNkiSeYUEoQ@mail.gmail.com>
References: <ZdC_g3U4l0CJIWzh@xhacker> <CAJM55Z-t9e8L2_iFfdbCDpOzi7UxQao6-L6VU_W9OGBciJ46bA@mail.gmail.com>
 <CACRpkdbkfWByoo+i57rr3w7QCyCgbiTbP6e_kT3ZNkiSeYUEoQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 19 Feb 2024 07:27:08 -0800
Message-ID: <CAJM55Z_EDuWQAsXmJaOE8QRxFB=GvGvEFzQcaHdu=8mPHDJFGw@mail.gmail.com>
Subject: Re: commit f34fd6ee1be8 breaks current dwapb gpio DT users
To: Linus Walleij <linus.walleij@linaro.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Jisheng Zhang <jszhang@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Linus Walleij wrote:
> On Sat, Feb 17, 2024 at 6:44=E2=80=AFPM Emil Renner Berthing
> <emil.renner.berthing@canonical.com> wrote:
>
> > --- a/drivers/gpio/gpiolib.c
> > +++ b/drivers/gpio/gpiolib.c
> > @@ -2042,6 +2042,11 @@ EXPORT_SYMBOL_GPL(gpiochip_generic_free);
> >  int gpiochip_generic_config(struct gpio_chip *gc, unsigned int offset,
> >                             unsigned long config)
> >  {
> > +#ifdef CONFIG_PINCTRL
>
> Please do this:
>
> if (IS_ENABLED(CONFIG_PINCTRL) && list_empty(&gc->gpiodev->pin_ranges))
> ...
>
> The ifdef is so ugly.

I agree, but I'm not sure it will work in this case since the pin_ranges
member is only there when CONFIG_PINCTRL=3Dy. That would also explain why
gpiochip_generic_request() and gpiochip_generic_free() use ifdefs.

>
> > +       if (list_empty(&gc->gpiodev->pin_ranges))
> > +               return -ENOTSUPP;
> > +#endif
>
> That looks like a reasonable fix, I try to wrap my head around if it
> would affect
> any users but can't figure it out, we have to test.
>
> Can you please send it as a proper patch? With the above fixed:
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Will do, thanks!

/Emil

