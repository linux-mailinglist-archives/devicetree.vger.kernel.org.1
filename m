Return-Path: <devicetree+bounces-138739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE38A11F36
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 934A47A2BF1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4720D23F271;
	Wed, 15 Jan 2025 10:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kIda5TE8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041BE1EEA42
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 10:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936646; cv=none; b=L9WziU3ErodkjscGQB0UA0pInD4ek3WoV2MKFb8VUxvBGRSFtNO4S9ajs1nZZEJRCEaEnz5TyIJeUzOooyBd4sNHmhnRoNIfmbpRZNEA4sDWoJsVaJhgY+yb6vomcP0FZ74RnN87W1Vq4aLyrGr43VLLX7PWp7gPpHMzLudoBeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936646; c=relaxed/simple;
	bh=Vts8aji0Ex50TPGXhf8sIPh7B0rC3S22agQ3oVPxtuE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o+Gv4iu1OyF+TDxWIGasrJPGzlIBlAWS1bwPZsLChEjnS9kAtHRmz9aemq6X0rq/G0cntKW6oh9N9g2P6TxG0uIYXLdxSZup4ZLaAaP4bN5KZB5xhv88p6SmHz9Au2dKy5GsuRPXJgkkw5EWHUtvP0nQ2NBNp33IF2g9LHT+yeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kIda5TE8; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3061f1e534bso29257311fa.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 02:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736936642; x=1737541442; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjuDDA/yi8Mfj7zbd5ybLmAd4yGE7SYSfzfs6+hwDoA=;
        b=kIda5TE8wGtKn9sgO95fnAKGDuB7oSsKGCClGjpJHnUjlzKw6Q3iIkmJJlh2Mbb4HC
         jfQcadZP0DYXnJg/WB2/FVDEumIeUFKUhVf7x81q4kUr/I3SMVcp5se0OpUUlpkQMLO7
         P8sgNjgDuq9NHzX71EUZq6vMcNdwIdSAeQ4MBCoqSfIAqDfhFIl3DXhxC/OEki2LKx5y
         BtBgNVr6EIIQs88h8iXmjzsArDmgw30He18Yr4w9UTfG6luyEA5woO7ZhgAt55fMXB4G
         85k3auIfKdQmGMgfdpEy9OfylmnK2/cl0vNYKN+d03IHdqy8yPBhCSHWEIPolQypsJeD
         7I3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736936642; x=1737541442;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjuDDA/yi8Mfj7zbd5ybLmAd4yGE7SYSfzfs6+hwDoA=;
        b=NFwq9XKYerf2xDWb5EhgUdhoUWBMeyj5YVFxnI2MJbqwzfGzF4dZqVDgoHeamJn+g6
         KZBzDEM+JpTdVAdFt3+oOX3Y/E1IA3KtHDeN8up7fdPElZbsSToJUl3TonBdHlBZiVD9
         NvVfyaMgVIEWr2RQqjk+R/cu3yuT+6qcPl9zAEw0+EgPPFt18Mvf/zmjTDPxMoSritg2
         P7cHHtliZRbtmgox+peXXsDmppZHt2wfqyX6q7CaZ+H2Rxvm5NYKZejT9DTmSx2kNKDz
         5Tc7DW05mKs8Se6FH0x4lwz/nKiJMkPIKjJvRR8n7d1Udj/UvQveXv4fTJ3hYbCJmeh1
         2qMA==
X-Forwarded-Encrypted: i=1; AJvYcCUHjGgtVpbTK3RLneOpWaTNfnq47kCA6JjPanuSMInNbYUGLNQTRJDuFaGWascXt7F/R2WASV8klEKv@vger.kernel.org
X-Gm-Message-State: AOJu0YylnY3Hux3/SXnVKb9Y83g+JxKldZ7c8cPRgj3SOyNd2rcJXCgS
	1LLx7bYDKynH8VXYZU/T6aFq7LUFWgRZmo83jGqmxJyuTy86HBrDMPdxxENR3Q5hOxpp8ZTdBQ9
	a9Eh4/mJu/CCrOzqj6EeeLkaFF3R5lJuXcF3RaA==
X-Gm-Gg: ASbGncslW31lObpS5o9anV97Hd/J+z2x46kYu5zvomIGJ+XzrxDS75nqli+nLf3duYA
	Nvz6WRAI84BhKpoS6u+IRgRsygn0LsfBnhiaIgw==
X-Google-Smtp-Source: AGHT+IFa4MDYjg2TaeSyPhVd+uFI72e9/zbKAp/MLgh6iKYqJ4fsconYWJROEaljs/Hlt1y7e8hWcLbxXAs4QRl/Z8o=
X-Received: by 2002:a05:651c:546:b0:300:3a15:8f22 with SMTP id
 38308e7fff4ca-305f45a1d53mr103210261fa.21.1736936641947; Wed, 15 Jan 2025
 02:24:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110123923.270626-1-szemzo.andras@gmail.com>
 <20250110123923.270626-4-szemzo.andras@gmail.com> <20250114141954.2785879a@donnerap.manchester.arm.com>
In-Reply-To: <20250114141954.2785879a@donnerap.manchester.arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Jan 2025 11:23:50 +0100
X-Gm-Features: AbW1kvY9UIu_hIL2n2uWJ6IEfQySNpBxaxTILzVXzQ1Bv8Ht8eyLtJ6PcP46pwQ
Message-ID: <CACRpkda0nx3SQtdjmXdCEbVJSWM10TM=p-6JbDjbiYcOSF5PxQ@mail.gmail.com>
Subject: Re: [PATCH 03/12] pinctrl: sunxi: add driver for Allwinner V853.
To: Andre Przywara <andre.przywara@arm.com>
Cc: Andras Szemzo <szemzo.andras@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Maxime Ripard <mripard@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2025 at 3:20=E2=80=AFPM Andre Przywara <andre.przywara@arm.=
com> wrote:
> Andras Szemzo <szemzo.andras@gmail.com> wrote:

> > The V853 family has multiple package variants, from BGA to QFN88.
> > The latter has co-packaged DRAM and fewer pins, and less features (pin =
muxes).
> > All family members can be supported by a single driver, as the availabl=
e pins
> > with allowed muxes is the same across the devices.
>
> It depends a bit on the outcome of the discussion on the A523 pinctrl
> driver [1], but I think we should use the same approach here (and for
> every "new" Allwinner SoC coming up, really): put the pinmux value in the
> DT, and get rid of this entire table altogether:
> [1]
>
> The SoC specific pinctrl driver would then be very small ([2]), so this
> pinctrl support patch here would actually become much smaller.
>
> Just feel a bit sorry for you having created this table, in a tedious and
> eye-straining exercise - been there, done that ;-)

It's pretty stressful for the pin control maintainer as well.

From the subsystems point of view, groups matches to functions by
strings is the best. ("fun1") + ("group1", "group2"):

pio: pinctrl@1c20800 {
                        compatible =3D "allwinner,sun8i-r40-pinctrl";
(...)
                        i2c0_pins: i2c0-pins {
                                pins =3D "PB0", "PB1";
                                function =3D "i2c0";
                        };

abstract, strings, nice. The driver handles the particulars.

That is like so because we are designing for users which are
let's say customization engineers. If these engineers jump from
project to project matching function strings to group strings will
be a common way to set up pins, and easy to understand and
grasp, and it makes the DTS very readable.

Then there are the engineers creating the pin control drivers,
and they want everything to be convinient for *them*, and they
think an opaque hex digit in the DTS is perfect at times, thus
pinmux =3D <0xdeadbeef>;

Mediatek and STM32 made a compromise by using pinmux
and adding some macros to define them so it looks more
pleasant:

      i2c0_pins_a: i2c0-default {
                pins-i2c0 {
                        pinmux =3D <MT7623_PIN_75_SDA0_FUNC_SDA0>,
                                 <MT7623_PIN_76_SCL0_FUNC_SCL0>;
                        bias-disable;
                };
        };

At least the bias control is using strings, this is nice.

So I'm mostly fine with that as well, but it can be pretty
heavy on people coming from the outside, asking us questions
like "on MT7689 how do you mux pin nnnn to function yyy"???
Well I don't know? Some MT7689_PIN* macro I guess?

If it was just strings I would know what the
expected behaviour and looks would be at least, then the driver
could be buggy or missing things but that's clearly cut. That's
why I prefer the strings.

Yours,
Linus Walleij

