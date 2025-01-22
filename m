Return-Path: <devicetree+bounces-140309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D05A19288
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:31:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EAAF165B47
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90B42135B0;
	Wed, 22 Jan 2025 13:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vv/Y+178"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E2521324E
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737552651; cv=none; b=KJGHl3oNwhaIL3+g9rXmnb6YemARLT/ekOYej0XqZ1bwpfmx7dsLUYKcwWmmpkdZJTPVp7HGdA0aAydL2L5xZXrczw6t6qq3vXQXqQ3TA6loEye9FbPFIZX+ywZGjFHACq26vvj/57mHRsXq2f/3ayVSS5DJfPkEzjvqz8Avf/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737552651; c=relaxed/simple;
	bh=MT1Qd4GfkNXwqWLqiWPdrTymaf6z71RpZBpS8qzx2Bk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MXZD+0JUu1rqfIAPQKnwQfHQnx9SNbVGDBM0wp4SVWON+vvMl81ag9Xf8vrx/j9JfWwfeDvwV/z045hrZQoBx0BmCgb05yVKQGw4RCEb/xB4edwof15NU1v+uLtlGVvdaSuBCXyEzOkPjnX7/H0/CwW5Lk3s50cM/3iAl1SvEpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vv/Y+178; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5401bd6ccadso6910846e87.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 05:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737552648; x=1738157448; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MT1Qd4GfkNXwqWLqiWPdrTymaf6z71RpZBpS8qzx2Bk=;
        b=vv/Y+178v6T/33PtFV1XX+V/CPi6mqf84bJy9c+E1vOtjZQp8QPy9+s7upo8Xw2ViH
         JZ03icyH7aLJjEBJ1VUWjaj5uR6bORmRJmIXpxP1yQ9q1keAiD6WWPAIsDT5mUIUngnr
         8Ms5Kh5OLncFqXSSqTUCGWP54Q8Le2dDiCCgmqjkyGuEfu0MxAOqaqC9cJWWI+7oauv8
         xcnEHzpFNOkDHROQuXAqMiUN90vuD5aBwchQeOtlGDbD0pbhU/LCTlat89sVwzs5gcOy
         5mlYVxK07KatnsL4GDNQ+JtkXl9WjdkHOYjoED/Lp+5TurSuSQoMs5MIccLDqTwzmoAL
         R/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737552648; x=1738157448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MT1Qd4GfkNXwqWLqiWPdrTymaf6z71RpZBpS8qzx2Bk=;
        b=ayPMCNhRuySNhuU9gpWQuyDil7gT9WDFAhyOqSornH3A2Eanx9Toh8vKZDLA3JdPFU
         er75E7hgkB2angmmeuK7tUHQeKoV5sZzTcgaNN+SnM7aiJnLcfzkMA3MeQtFYtJA7rL3
         TrfrViSLUFzBMNWaWh0nlBu1sjIz3Q3U6V6B/fLTej4LyrdsKJLceBMJhDd7qjIFvh/B
         vKRrwX3Vz6jieed54/H3lGzAqT4M8UTKOAws748l+FECiNMPKaK4+1E3pvwNFgEwhplM
         14S0E+CNtVL7vU9ejsFpdnDLCUcdakchjZM+eLCgQgd9jBXKz6UrfljI/IwIS9hKD9TB
         Dltg==
X-Forwarded-Encrypted: i=1; AJvYcCU4S82+JeL8AUrKN5CCbUamG6nzr9J/0IEMnyTctx4h88E0yKVyu1oICl5g/7Agkib0U/QUvwW3r7uJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxrGnuWRK6fiNB3So10xNWAMXD8rmTzxqqemgl5e9ENr5LaTfRO
	MdMYrsfAQHzh6jtI0+KgSX+TeX1WF3UM6pyYzwYBu9QR2HsXoXhjGycJ1ei73quZ4xXLgZFCcFa
	lvyvw6B7CHq+NgFqfsuwyfMq5Z1FWoVnXbF3Njg==
X-Gm-Gg: ASbGnctaH8c2NEqEHGRJJGGilrx7uLL4IOZAxMRzjqLg7d4Oqux/gGSmV1QHMjJAbao
	A+F+LAwaJ1BjLzCAGtuq8ONUH6vVBWROo03pMVyWrQ0bznuksjA==
X-Google-Smtp-Source: AGHT+IGs/n7Ljor2d3ADarC6NG+9NmWSbVqt5BnALy/+iVRtZ9CeuWAGeuayEWCsA+u7d2kSrA4qXict3/8+PKzO1MM=
X-Received: by 2002:a05:6512:ad5:b0:542:8d45:cb3e with SMTP id
 2adb3069b0e04-5439c241016mr8306080e87.18.1737552647836; Wed, 22 Jan 2025
 05:30:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110123923.270626-1-szemzo.andras@gmail.com>
 <20250110123923.270626-4-szemzo.andras@gmail.com> <20250114141954.2785879a@donnerap.manchester.arm.com>
 <CACRpkda0nx3SQtdjmXdCEbVJSWM10TM=p-6JbDjbiYcOSF5PxQ@mail.gmail.com>
 <20250115152635.1b89e7f4@donnerap.manchester.arm.com> <CACRpkdYVTedEon0X-izvaDTGF6yRhD2s=Z6NEM=zBf4vD-T0Pg@mail.gmail.com>
 <20250117145228.2fc8a64e@donnerap.manchester.arm.com>
In-Reply-To: <20250117145228.2fc8a64e@donnerap.manchester.arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 22 Jan 2025 14:30:36 +0100
X-Gm-Features: AbW1kvbmavQU6KJ-WzCpG2eI69ENGFRQZ6H5c_O0ajyC4q6k3ZeKpvUjD-d9bk8
Message-ID: <CACRpkdZ29=mCqLku4Obq+E5j6kS4NZchwCtrTeCt0qUctn6Czg@mail.gmail.com>
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

On Fri, Jan 17, 2025 at 3:52=E2=80=AFPM Andre Przywara <andre.przywara@arm.=
com> wrote:

> That is actually a good argument: At the moment I am happy with my
> proposal (the allwinner,pinmux =3D <number>; property), but that seems li=
ke
> standard #15 then.
> So would biting the bullet and adopting the Apple/STM32 way then be more
> sustainable?

I suppose...

> On the other hand: the allwinner,pinmux solution has the advantage of bei=
ng
> already written and proven working, also it stays very close to the
> existing description/binding - so implementations like U-Boot could just
> keep on using the "function" string.
>
> I am a bit torn here... I don't think I will find the solitude to
> implement this "Apple" approach in the next few weeks.

I think whatever the Allwinner maintainers agree is the best should
be what you go for. It is a lot of hobbyist maintainers in this space
and for them the bar should be lower.

If you have buy-in from the other maintainers, then go for that
solution.

Yours,
Linus Walleij

