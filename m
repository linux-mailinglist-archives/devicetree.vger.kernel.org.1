Return-Path: <devicetree+bounces-112124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA2B9A119B
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 20:32:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9DD71F24E02
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 18:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF56018C33E;
	Wed, 16 Oct 2024 18:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MnS5GF3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCCE18BB89
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 18:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729103533; cv=none; b=Fpevgp3Ym/DJDD5EvRYiov0O9psTTwLhiWTPohIOOzSq1kvsg5zfMqEzlouCy5v21oKWPJpzMkQjOixiNu+q+4k7xJoHB4KgHZRtJQ1Jx/O9Ezpuy7wQLAJNCB6MUrg4SRvkrj/+OESYa9iFd8QJ3vnHTyBF1WXr7KAL9LPaPPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729103533; c=relaxed/simple;
	bh=zLO6aZwyUl+3LfycLrqZXToqmieLhN3tIxuDQ8INOFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LecT23+1oPayJfqeZPaPZRxqw6UX04ZJx7TvNldds+0oAUtQtvL3Z8eR1dR4uihnwWyx/+29dqKxVq0yxEisiJskMaH7DoLVYJhZLl5CZbwuUwdQIm3sAwwpmuiILTjI1gIpWE1yDHeKOHvdiO81OEtFKiGRzgBIto3c+fF2DwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MnS5GF3A; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso2209621fa.2
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 11:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729103530; x=1729708330; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zLO6aZwyUl+3LfycLrqZXToqmieLhN3tIxuDQ8INOFU=;
        b=MnS5GF3AOVtkeqhyOUF58roJxmRo2C1LWSeb3GfYEHRs1hRF64Ovsuk1ky+yQsOM8W
         hOYLASn+bUMTXQNUmBeQtzqaWtrmCxR5wJ7umrB7rt4RUBUo7LOVL9QBrt6wstsLcKrV
         zr7PadkX17k4zqLlpLpaBT38+rxwrEa/gB4TBLZp+Lnp+LBlNZoC/j/18qK/kpkvNE8W
         vw6PMSREUHhntyT3WGSsPd2KjeSFc8nBaytHgMI9LiWhtEJZJ7bzXS3WWkHpXk7liLRV
         dVsNkoMPx388J7jlp/ulyCPKgj9hrDmtb7pv39czD4Lo+51YvQ2/B2mVyiq7TqMz/nJg
         fiFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729103530; x=1729708330;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zLO6aZwyUl+3LfycLrqZXToqmieLhN3tIxuDQ8INOFU=;
        b=C9M3px/NdMOI65VsFHYHO9Y9YTPlvZaBtlVQA62+Kb7zb8sD0nkO93c8y5C1uyKV1p
         QKCr/65pUBXtoMOepl3rNrzmtOGNTlEyAgDJNfwjsXLry3QZQ3EmEc3C1adqbN4jK0NT
         vsh5UXNEzPydLSDc7zHpjRuEY5p3T6+VAlOZQEWEUAcTG7i/KY5zmkKlE3IpI8cmHW/m
         7D+iMdzVR+pdMGK5zLYz7Xt4AZ1eGjAseYOzk3sm5CO67WhWnf67SYP+YGsUV0exuZjt
         bsf8dkIaOH9uOHt8O5RK+d3qZOJDqae/ULqPSmHWExrtm7IMOYvw7CMLRbV702o7RyiZ
         oqxA==
X-Forwarded-Encrypted: i=1; AJvYcCXrBVUZBsie64uC9yfcvfRHqjopDk/3wqlruh7mBVPmxzNrrP8xH+lRVNR8yONR4nfcpa3MuDxjOIFd@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5croP/CAFsSjT/j1n/EnmzBQLqFH/QHLworL5KVCFYs/m5UIw
	gm9/ugsUKc0p5FfRkp/VLrx2dezgOCHwzPcuOmPg7dDXMacmUH8/JrHWAjlfEtZaaigq0XPvfor
	J10Gzz+U/m/FbiJzzISWvgu9KZ57SSoCuNuV/Tg==
X-Google-Smtp-Source: AGHT+IHpAeDWCA8i/8V+jXTEhlCjTBpvAe50DUbf+6GO3QbkdbjrySiEqxkK4J1c1Y+WN39i8NFPotc1h2p87Pt9UM4=
X-Received: by 2002:a2e:be9c:0:b0:2fa:c5d9:105b with SMTP id
 38308e7fff4ca-2fb3f16fabcmr118616141fa.2.1729103530208; Wed, 16 Oct 2024
 11:32:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241016-gpio-ngpios-v1-0-f16cf154f715@linaro.org>
 <20241016-gpio-ngpios-v1-1-f16cf154f715@linaro.org> <CAL_JsqK-Nd6izk6RFf4NyoOCkobDwye+QPsRKHBDwovxO9NTDQ@mail.gmail.com>
In-Reply-To: <CAL_JsqK-Nd6izk6RFf4NyoOCkobDwye+QPsRKHBDwovxO9NTDQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 20:31:58 +0200
Message-ID: <CACRpkdYipbtgW1odod288fEV33SqoJo8vcN7=c+tSRUsR4dE6Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio-mmio: Add ngpios property
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2024 at 5:47=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
> On Wed, Oct 16, 2024 at 2:21=E2=80=AFAM Linus Walleij <linus.walleij@lina=
ro.org> wrote:
> >
> > This adds the ngpios property to MMIO GPIO. We restrict the
> > property to 1..63 since there is no point in 0 GPIO lines and
> > we support up to 64bits wide registers for now.
>
> Why does it need to be restricted? Is something bad going to happen if
> for some reason someone tries to control a non-existent GPIO?

Unlikely. But the biggest inconvenience is that non-existing GPIO lines
gets exposed to userspace which causes confusion. It's a bit like
saying you have 32 harddisks on your system just because the register
has 32 bits.

> If there
> is, maybe there should be a specific compatible as the h/w is not so
> generic.

The gpio-mmio is quite generic, it's the most generic GPIO
driver we have.

The ngpios property is also generic, it is in:
Documentation/devicetree/bindings/gpio/gpio.txt
(commit aacaffd1d9a6f8e2c7369d83c21d41c3b53e2edc)

At the time (2015) I just documented the already widespread use
of this property.

It is also reflected in several of the new yaml bindings, a git grep
ngpios will show you.

Yours,
Linus Walleij

