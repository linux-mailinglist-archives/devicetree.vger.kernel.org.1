Return-Path: <devicetree+bounces-240127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DA1C6D9F9
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 7AE692D917
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FC6A335BB2;
	Wed, 19 Nov 2025 09:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JifxLllR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D564308F0C
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763543613; cv=none; b=meJbFEJAmZJCqB4fgARDeEUneZt27JghO84m5ZKxkKAFdHZXYHwwgM8QzSQzoeDOqlNghfe88VK5tJ68Fl/JX42aGiY+SaNZ5xRh2phHZKjhuilSVsl7l4RHrdWQwQodLyJmVhAPQ7LZLAhzNayHIeImfrgfXCL5FOqlMTyIwFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763543613; c=relaxed/simple;
	bh=qGa6obvFqIKbQVGEu+FGZTJ+R+chI3xR4ysDJDTEp1I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=otaSt44fUxQ6Syu7qWgrXYYO7tBCCtckIEBiOjWrJyF+CIMlhYlSETI50DAJGgkGSbPS4sN489jwpne2FBd++qse527ZBzCVjGyCbajgXoNC53wZZV9MzoeyH5zBuyOqfwHsWo80B0Tt/EROrzQhfAPPEHFKYXQVC0YXvnuqcHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JifxLllR; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-594285c6509so6818066e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 01:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763543608; x=1764148408; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0J1JKE0aezaTk7YL5x9auhCAR6Yuw+pFDajDahgAlD0=;
        b=JifxLllRExMiqRqMOfDDgMcsabW46GmVq/QpgLGXQncI/tI+yHrqD8wc7uD/I4mPN8
         V5+wvFVTK99e0XEY+e7IO8wHvG5BEh5FiDOROgalWU83FcGRSPdzlKMGufbIwqtC5MbE
         hTAhNTYXOX6q8/QZFXnlAFDTjq1XMaf24cunJYUXrcN1AaSOiUZdMWwy95/EVsethHiK
         SihnWG26qOgOq3aSFc/Ku4PelAF3jz8cs01fniId6uMyWDD0nNoUqJCkTaLiQdFR5JpK
         ZCx3X0AvDMcLpv/7+xuJobEAGJtoV2mXrYkaUMG9OnH6dWhyLybN0PNcM3FoCUgfJtMx
         6DuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763543608; x=1764148408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0J1JKE0aezaTk7YL5x9auhCAR6Yuw+pFDajDahgAlD0=;
        b=E5JbsR8uS99ida62bMvYc/V5T9djGn5evY73BAf/TBdFnqtzns3ozFLZ4aur/gpAJw
         trqRal4XJ/XTIZ3v6uQ2YtKPrdyRtlhL9hVjOqwf1OOlZRa/+xX9HSPlFZeqP9oakOGx
         P/cT/Hoph1Q1jOh041t5bZGU2SljLapVyln3DqcmfkNbwz4rDJI0/EWg557a1eszAG5T
         houC1shUTy0PrzgtbYFdrP8+5y9Iq1vYkbsIexvECyyIPWStXuK0XfH5EB2SZgH37orh
         jSTpPySESKhc8xFlERQMe97EmSEFX1Y/F3ydUqsZCfeAX2vmUHQ498bwYyKzq6OSKavg
         6HPg==
X-Forwarded-Encrypted: i=1; AJvYcCWoo1TylE1YSz737clUdHk22PBvOPTKg/t2w2AvQFelfMFhjnZkocCmhjJM6jRlFXEuwmRO9vxqaNgv@vger.kernel.org
X-Gm-Message-State: AOJu0YxQR6rvRJ09GsSzEcGwlaDQNRnukcwAB/E8JqyXUHLW0d6V4xWE
	kRJIMJf7lc6GD+HTGDIFm80FuGpObMCQa2/SRsUADtUsaR7J6zGKMCdIJwNN2Nd7y0uNBf0e7Z4
	Ht2xv3LXCIrz4Phi8jm9ryFb4QTFa4nBUrJ+t1xScJg==
X-Gm-Gg: ASbGnctuAWFxQ1LXmcpfwHv30jaPRUM5KU9PGi8781M5Ipw07QqrG8n7Rx3HSH46ih1
	odefsO8MAK/AUy0MldCYLaceyGXw9eUz/KWSWXtcgCo4Zz9ReRpvG1e068UUklTc7vIzAMNrgaP
	NBr7t3kHOsaNnPEvSHA0QaRLCoBeyQyvGutGA0k3JSdoAbk3M0WeSEOvkZiFG2QtMrU8rLLoVPA
	cYrUR2b84kC//G/IQ0cufQ79eNWIT3qxBo/QbZsNqz9KWGvQdGEqAvEyJxp10GemTehahH9k7lw
	zKPmMQ==
X-Google-Smtp-Source: AGHT+IEOI5iZEjfO9VJo0Kz3Z09YGBxN9hO26vkpOzJXesVSVACehf+X9YKlHf0uT5YA8Z7B6Zpf7wlHpLU/JSp1No0=
X-Received: by 2002:a05:6512:b87:b0:595:7df4:6930 with SMTP id
 2adb3069b0e04-5958419f6c0mr6943714e87.8.1763543608340; Wed, 19 Nov 2025
 01:13:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-lantern-sappy-bea86ff2a7f4@spud> <20251112-reappear-margarita-83b9d6c04dd6@spud>
In-Reply-To: <20251112-reappear-margarita-83b9d6c04dd6@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 10:13:16 +0100
X-Gm-Features: AWmQ_bkrfiDYfimx03_4hHPW7_c-dWF0WPsMlwXx16TGGTPqPEZMNW6kc49N4bE
Message-ID: <CACRpkdbXrq=9xWBCg3iOX1JySAu+xs+G9dDUYphEqeN2-M9tuQ@mail.gmail.com>
Subject: Re: [RFC v1 1/4] dt-bindings: pinctrl: document polarfire soc mssio
 pin controller
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor,

On Wed, Nov 12, 2025 at 3:33=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> +examples:
> +  - |
> +    pinctrl@204 {
> +      compatible =3D "microchip,mpfs-pinctrl-mssio";
> +      reg =3D <0x204 0x7c>;
> +
> +      irkd_sd_cfg: irkd-sd-cfg {
> +        sd-10ma-pins {
> +          pins =3D <0>, <1>, <2>, <3>, <4>, <5>, <8>, <9>, <10>, <11>, <=
12>, <13>;
> +          function =3D "sd";
> +          bias-pull-up;
> +          drive-strength =3D <10>;
> +        };
> +
> +        sd-8ma-pins {
> +          pins =3D <6>, <7>;
> +          function =3D "sd";
> +          bias-pull-up;
> +          drive-strength =3D <8>;
> +        };
> +      };
> +    };

This looks good to me and you sure know how to do syntax
so I don't even need to check that part.

These bindings are fine.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

