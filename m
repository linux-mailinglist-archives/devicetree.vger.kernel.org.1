Return-Path: <devicetree+bounces-226387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E63EBD8268
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:23:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 565533E83D7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 08:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B806330F55C;
	Tue, 14 Oct 2025 08:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d5F/ktAF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC1230F527
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760430201; cv=none; b=jAFdmlOjE5AOhXl6KYZEvOgWr7g3iTWfCSu/8ZXRzu70mtJ0gdNUgIzyfygnYWCXyeRDpyBP3OAddt4jNLPbqqU509oUmQXoidwm7J78LLUTcg2hh/w/PXGLpU3NoBhfPKKHJw2zZuA5LNC6xPThV73cKVWMd8FrT+8h9yRURzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760430201; c=relaxed/simple;
	bh=QpLLN7omLU7FVeu70pu6uFOP+AtOBErrgm75t8rLSRw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NmndY+RgJOVAUDlbhJLEt2tLfJPPXFxF1DbilLO6RY8fs3stTUZEUkR/W0WEHeX0IgRJ3FgQdZfbJTciTdz0Ca5grajOjku4GbR5ueJv4qQiqtGaPP49aS3x+oajbHMXrmbvmxhVlyn8w0imtQLYjwxkcMPXQIASHzfkCB4PcUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d5F/ktAF; arc=none smtp.client-ip=74.125.224.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-63bbf5f77daso4988437d50.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 01:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760430199; x=1761034999; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y9TclHM+FlxL8k/EdZlfp0sKQpkcWovBD/evGnk/JRY=;
        b=d5F/ktAFXiAlca/nL4hv1iOe9/I8zrpQX5eD+YjxQvMcYsXB3gO0yt6NdWCwZZ1Q8f
         YGm/uQWNq9Z302yY+mMQLJSQTzyTGw64d4voZuBwYDnLfJjZ/9ZYGSzDaRVh1Oihsyvh
         8oKbrs+cvUN7M5292eAW5DZCwfjbkCyQXaGP/YhGeWcgOw4qkwYQ815xURYyl2yt/suN
         XZtcl4QSVC7UHy9+ml8+wKOZ5EGmBnY0j9EpKCpNTrYcnDyF2qc766x2kqReFaBw0Zo7
         yOZp27Y1L9JGsiD2XKQhRQdoRk8SF2q0YzB3vHEjTo0/lrv5Tv+y87v8+kcC5qHSnvJ0
         5IcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760430199; x=1761034999;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y9TclHM+FlxL8k/EdZlfp0sKQpkcWovBD/evGnk/JRY=;
        b=qXYI3YC4t65tm0dCIHgb/i3UIWoXF39aOjy9JIyb1xhEbCucshMNnzVOzs94Fl7ZVo
         /o+M249spCFRy3MBtAFwilcEI/OmcOOnp5IJ4iAqxqILsgcCV3pFUKJxNuVhuXP/qi0U
         6txq82NjbjoKjlgVZ3Wxk79VYKhjKrmPSff7+zgs3pvooR0h6mZ1lUOf/HM8qasXP026
         7MLPBtlaLzOa5td4RuxfWJTH5h32tcq0w+npmnSdGukeEZu6MjTNHIP4QCwF3kqibc6v
         esBPjDsAMgZx66xjf/IAIZUpWoLc2JkZdmrbBfqkcStuoJRzBmLXZmf/ND8IVsfB7uV9
         s0cw==
X-Forwarded-Encrypted: i=1; AJvYcCVzolx4tqoY0VvZ8OnUiNzl1ps+yufimyW6vFVZNxhae9TenZQnw8hdk9meCF/2SbejLmiX6GTKu+VY@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ/yeZL1hOUtKAZu7yAcoyEOL1tRWXfth2mIPON8JqhNeyZ8Gv
	RThHjqYP9X6epOghb3swOAlQgtqczoN+dfftB/XIUVStIk04WnV80T15AeEWjg6khFgSzwTHArW
	KdiPx21MOO9BHCOSHn0gpjgJzSU5JUqymo3uvik3oBQ==
X-Gm-Gg: ASbGncvLs+WYvgXhDFM8zoHRNYXlnH4vucIb3OFmdlV7Bv/fNukfLoJpqn00OfTwLP8
	lv8xc7zDpKTy5b6P4H10R9cLVHoqjvWPm0it2iyDLp7fZo9+OY62NPnekc8chvQWqfSr9apkcaq
	MUHrYMp80zdkqLoao91Ocfpl/d3TvO3059GC4DVXc9giUsmscxHP6rAnEb1HoP+Q+tPYE9M16ER
	vSt+mjAvQY+oL3C+7qV+Epk+HCe6AFCg4FDSHrY
X-Google-Smtp-Source: AGHT+IGUPFI5jCPwxpBaBsUtA4t105DOhgNvQsDGVLBIPQELjrZFFsrZcl9lsa37EFuLVIbBf5ZvE7ZH81SU0iQy1BA=
X-Received: by 2002:a05:690e:424d:b0:5fc:5d98:3478 with SMTP id
 956f58d0204a3-63ccb7fabcfmr16158005d50.7.1760430198919; Tue, 14 Oct 2025
 01:23:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009223501.570949-1-jelonek.jonas@gmail.com> <20251009223501.570949-2-jelonek.jonas@gmail.com>
In-Reply-To: <20251009223501.570949-2-jelonek.jonas@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 10:23:06 +0200
X-Gm-Features: AS18NWBS0RiqVLOn6OGw-S2jkVsKedTw5UCNSQ2_7gUR2ne-WB-LpCsCs8TF6SE
Message-ID: <CACRpkdb6bTFbTtNsO59GXFa9eMK9x=+BGK5Vx4bKv62wxiSpiw@mail.gmail.com>
Subject: Re: [RFC PATCH v1 1/2] dt-bindings: gpio: add gpio-split controller
To: Jonas Jelonek <jelonek.jonas@gmail.com>, Peter Rosin <peda@axentia.se>, 
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonas,

thanks for your patch!

Including Peter Rosin (the gpio-mux author) and Geert Uytterhoeven
on this review, as they have worked with similar stuff. Please include
them on future postings. The result definitely need Peters ack before
we can merge it.

On Fri, Oct 10, 2025 at 12:35=E2=80=AFAM Jonas Jelonek <jelonek.jonas@gmail=
.com> wrote:

> Add dt-schema for a virtual gpio-split controller which exposes virtual
> GPIOs for a shared GPIO controlled by a multiplexer, e.g. a gpio-mux.
>
> The gpio-split controller is a gpio-controller, thus has mostly the same
> semantics. However, it requires a mux-control to be specified upon which
> it will operate.
>
> Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>

So if I understand it correctly this models a 1-to-many input-only
GPIO multiplexer, we need an illustration such as

        +----- A
IN     /
<-----o------- B
    / |\
    | | +----- C
    | |  \
    | |   +--- D
    | |
   M1 M0

MUX CONTROL

 M1 M0   INPUT
  0  0   A
  0  1   B
  1  0   C
  1  1   D

Is this correct? In that case include something like this
verbatim in the bindings (feel free to copy/modify this)
as it makes it much easier to understand what is going on.

That's a very minimal example of a way to turn 3 GPIO
lines into 4 GPIO lines, which is a bit crazy but I'm not
the one to tell vendors what to do :D

> +  mux-controls:
> +    maxItems: 1

So this needs a description, it is a phandle to the
gpio multiplexer (reference /schemas/mux/gpio-mux.yaml
explicitly!) used by the splitter.

You should also in the same patch add an example to
/schemas/mux/gpio-mux.yaml showing how this is used
to muliplex GPIOs so people find this new usecase easily.

> +  shared-gpio:
> +    description:
> +      GPIO that is shared by the virtual GPIOs and controlled via the mu=
x.

So this one is shared one-to-many, and I think the bindings
overall makes sense.

Maybe "gpio-split" is a bit ambiguous?
We have io-channel-mux, so what about "gpio-line-mux"
simply?

The fact that GPIO lines are used to do the muxing is just
a detail since a mux is an abstract concept, it could have
just as well been muxed with some I2C device for example.

Yours,
Linus Walleij

