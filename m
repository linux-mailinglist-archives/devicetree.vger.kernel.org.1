Return-Path: <devicetree+bounces-43480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A85B085A76C
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 16:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C83D01C2160A
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE26A383AC;
	Mon, 19 Feb 2024 15:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="m7vj9A4f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88B5F3B18D
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 15:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708356855; cv=none; b=YAzbWPcar6OfXcR4Wrlv3GCA4fp7rltd69QXWH9KjFxwmsngyb/7cu2YEZTHY7/nunK/KB8kVAnVSvbmjQwxG3lZpRVnJ5z0iRlhfvTOIzA91tuWiXd+JJR8CC+bLVjJXaBvWztGRLAII7SeGy7QlaVtu+dCoC/ZOH1wIHxsh/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708356855; c=relaxed/simple;
	bh=OFg9oqTwcZyyxLA+PL9UVn1Rcz+N4HoQ9s8zDEcli2A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LyAiyXCQZgyn3DFNZniMf+U91nfCxRzoDY+LOTUv27DZUEh9NinAoxnzehJ9qbKxiVqmvs/DJ+1+b4fNBeEQ0T6g9uZBaLc+akdgR7YREYezpLF5ZqJBguSjB47sKDY9dvHFjx+npg0ovubH82oWOGcuyIftktfyrKmvv60YihU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=m7vj9A4f; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2184133da88so2629993fac.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 07:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708356846; x=1708961646; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IvVPolj8oeG4AKFrK8d+pLPilaj1PpVh47xpBNRxg+w=;
        b=m7vj9A4f5LEzjmiSmDA/WYeQCusxwYIQiuPFw5YyE7Zsjs1qW5UoGBphfd/0GbHN7x
         beNs5yZ9h2EVHeAfxQLvUn7cqQvZuMWq9aEjZe4a0ojsXnvjxVzdn4XwPKUxatoR25bo
         CRqnlACzqTcmZANl0jr/CnK0S0gI7EflsuCP6LindZOlboJHu/cHTvMH6FlCHqT3qNTG
         2DEdDC7VY1mN7rXlrTIZgvdWUEnXTzx5Rj31bjNyiPSzpIh+9jxmumangJTvPwWAyBsY
         NZuiruElBb13g0vl4AM6T3nHDGhrTSxwWT+rSiQPImMOe44BUU+EIXhFPUg1k4R7D6vp
         spFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708356846; x=1708961646;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IvVPolj8oeG4AKFrK8d+pLPilaj1PpVh47xpBNRxg+w=;
        b=bRUBltKyOhfLdVGOM1frOj4Q7OR1YvGTCWoZHkFQwj4pnyyVNaY6js4OC+9PHdufHN
         kjcxl24ssqvhGKjOdyptpuovwj5ki3OTS7K/+r4atJgqHkMF5oIP2EO3Js+0hHLck4AR
         KxwKke1plwVEG2QjRkVk+k/5yCb0MQkxWzpARlXmrclmy+ssbZzbuejQl78q3oW844Uz
         2OSyex3ma2CPYlRfaOQ8wMByiSZS0isZ7OuaaijnVULCyE0es/01x0xWqPu4oh0nKkkR
         4YEZX3sC/WC5Oj+GZHd8ED/r9gDV49Jn2NrefyDaMu0CnFCDPxamjquO7iPy+Wuo0sun
         i+Ig==
X-Forwarded-Encrypted: i=1; AJvYcCU+dNVpVOaVmYuYT0cmzqZ5iyN1s9Hu/N1uaUTptLKr9DJlQzEV5ZJkIF9nJkdKXdNqUQ/beztzelI9Swla11xpbV3I5vHTbbItQQ==
X-Gm-Message-State: AOJu0Yw/kNECV9VK+AcoHCSHkJLLMlpA9ZjRN9rYQzmQ7V+FmPkHRZvj
	3Ug22GwjJ+aCHuvcVIF+Gs5sOz1SVDrFTXbk/Np6NlIw5eGbo1X6KlRHoHkOtsPFXkXhoXLY5Gm
	MVXntfSHn4xS9Q+CUrzGgEbp8AoYVoADKW34Swg==
X-Google-Smtp-Source: AGHT+IH6wgFWgrzdMctoV3icDI335MC/CdaUuFj+nGvrkX8vJ7pjFLlj1xEDLlkiBRM39lL8enM+OZmAUPyDNuGbujs=
X-Received: by 2002:a05:6870:d24b:b0:21f:a33:e48f with SMTP id
 h11-20020a056870d24b00b0021f0a33e48fmr444912oac.11.1708356846558; Mon, 19 Feb
 2024 07:34:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com>
 <20240214-mbly-gpio-v1-5-f88c0ccf372b@bootlin.com> <e031566a85ae0da0ee71dffba5d87c6414ef83e1.camel@pengutronix.de>
In-Reply-To: <e031566a85ae0da0ee71dffba5d87c6414ef83e1.camel@pengutronix.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 19 Feb 2024 16:33:55 +0100
Message-ID: <CAMRc=Me-oEx9S0w=XhwC4MzV9uzV0o0HnWBfNSstcqg5jpXyZg@mail.gmail.com>
Subject: Re: [PATCH 05/23] gpio: nomadik: extract GPIO platform driver from drivers/pinctrl/nomadik/
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 15, 2024 at 11:03=E2=80=AFAM Philipp Zabel <p.zabel@pengutronix=
.de> wrote:
>
> On Mi, 2024-02-14 at 17:23 +0100, Th=C3=A9o Lebrun wrote:
> [...]
> > diff --git a/drivers/gpio/gpio-nomadik.c b/drivers/gpio/gpio-nomadik.c
> > new file mode 100644
> > index 000000000000..e39477e1a58f
> > --- /dev/null
> > +++ b/drivers/gpio/gpio-nomadik.c
> > @@ -0,0 +1,660 @@
> [...]
> > +static int nmk_gpio_probe(struct platform_device *dev)
> > +{
> [...]
> > +     ret =3D gpiochip_add_data(chip, nmk_chip);
>
> Use devm_gpiochip_add_data() to cleanup on unbind, before nmk_chip goes
> away. Or make the driver un-unbindable via suppress_bind_attrs. In that
> case you could drop devm_ prefixes everywhere for consistency.
>

No! Why? What about error paths in probe() where you want to undo everythin=
g?

Bart

> regards
> Philipp

