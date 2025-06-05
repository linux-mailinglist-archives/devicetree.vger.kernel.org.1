Return-Path: <devicetree+bounces-183046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF40CACF019
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 15:16:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44D223A5503
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 13:16:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6531321ADC5;
	Thu,  5 Jun 2025 13:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="WqCsjrL/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01A838FB9
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 13:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749129409; cv=none; b=XX7k6NGzZDDDU+PPaxxL6Sy9sOnwSbEOqHyucWVoUsO2tN8FCoeQ3qWzggi3+/QB6GGRCmeD+N44qakZZuCy+S1Pz4TIeBh6SjnixOpSmXWyKIirnNWnK71uffeaKtpULXVPFM16q/NjDAMIL9xfGiwOEpx1ce9rdDYufr2aXBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749129409; c=relaxed/simple;
	bh=k0Hbyy3QvPmBEmGfE+iw2klZZIGcUzF4JX5g7Ivo23Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZorkJCX/W/vjqhuLrcbOhSuVkJwd64Fie3sDgqvkw3JW++GifW3hUgmANkOIdevslQXS3MhYwN+qQTRLshXEaNCLpr6IznWcG8ZzFSUDZP9JFIp7dzIQD358Dk0qRtBJhTJ2VnQQKMhTHzGOLtyagvnxUEbWr1Wg6bSTZ//sTkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=WqCsjrL/; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54b09cb06b0so1154406e87.1
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 06:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1749129406; x=1749734206; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LxXez72tmox59Cq75Oo66zXwfJ67mOMcPg20hwp9f4M=;
        b=WqCsjrL/PINi7XA3g9VTu//V5gowv4RCHLjliivBp/UCZElsxBvTrQDRoE4oFskZqG
         Fsclrv6k6VUHvlmLszGfItAYZq9/r/cjuu0FGKnjvKmTc07epoAa8R0qzxPObcnZrRbd
         d1tKwphqo32XgMBhlSnMBlRYQ0ouQeP3aL0OzNdeHGZKj7tK6/Zbnw/5YNaFxNl5Lz8M
         j5kXfgruW2JIWl35alN4saTsSds8ipV/p31Iru8w0gQPm4eQifeYaz1pFjujn7LVvP34
         aVn0ZXJFEiTtmILWKSH7sRKbyRuDvENHy6Rj453IKWtjnxZaWcJD8Jq4bOU9OuLpjib+
         9lew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749129406; x=1749734206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LxXez72tmox59Cq75Oo66zXwfJ67mOMcPg20hwp9f4M=;
        b=KQT0KVfJDn5JWM3DJlAXCrE8jzJX3znnhneLe/sALE5dSd7gYlaPGXB/TikvL3BM0P
         DoPUkEJQdi3XAMSp4siA4erbVjphNAnCHLS4n8kpb8jr8DJsKNuyFa37/EM/T6ROzY0U
         QycL1kpfGzh1h52pOy9iLCiZRzr+33rqrkG5QjjSdjrT9w029TVAMAjjsjC7a4NjNRTT
         v4U/sYO3FsJQNqeeMVoITpRBRFl5lArPkSHCpjoc3e0f27ecBvKsJEFBrOpWlxceeMtt
         D5Vps+vgsn2902JmqsdOe5833NBUn7TXTYXczK7AudJIY4JuiFspVoCnkcP1L2A+4iru
         D1mw==
X-Forwarded-Encrypted: i=1; AJvYcCWG/kR7JgXCefBQXIR3hfzTpY0z8R9pAXzjDu5NgVK/tUPb+n5pWhCTNzf+6+HSolem5mO+uwKjOdSv@vger.kernel.org
X-Gm-Message-State: AOJu0YwguZIdsF9yYKRi+5XLmKOe5U2XbkREcRiFCa411sMtYB1kajbL
	h8rcJXYec8mZHNeWFgMeqFuC4eGifOUv70oDisuyco4JMd98DC4kwBUqC4IdPnyMlz7fccB+Buh
	qEwvsruMS7ZhIulxwE5vGV2ZmUVdrlqO9gsgUWEeY/A==
X-Gm-Gg: ASbGncvLgc8Kk4kOzMGPi+5APJXjBz/jRa6kEdZ/i0F+3bvN7HTpeGayTY7yw0Lvrjq
	8p59+pc/dCyeQhIZlK0EKiMBhIJYUZdhxQDsUx+HPaUy5J3KrnWoVyeec5hez4ttZ64Pek5CCgV
	2S41EWa730NhMLSUFSIV4C6ihAi5D1UjZML1JbPq6Dgj6FqU2aQIXKPS7xhURCZGo=
X-Google-Smtp-Source: AGHT+IG1FLIfsa6ezMp3MccDVHC5XAJOHj0QyInfJVqCTEun1SDxwdcWFvKFJCuA2PNkGlpvqJmb88wRcDaLGqLLsh0=
X-Received: by 2002:a05:6512:10ce:b0:553:37e7:867c with SMTP id
 2adb3069b0e04-55356df2a9emr2071437e87.50.1749129405586; Thu, 05 Jun 2025
 06:16:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250528-hdp-upstream-v4-0-7e9b3ad2036d@foss.st.com> <CACRpkdZ2NUfcn7O7tKSFDyAr8Hni3pvpTN6QpOz7N3J+EsFdLg@mail.gmail.com>
In-Reply-To: <CACRpkdZ2NUfcn7O7tKSFDyAr8Hni3pvpTN6QpOz7N3J+EsFdLg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 5 Jun 2025 15:16:34 +0200
X-Gm-Features: AX0GCFt62eNdDo8nSZ5fnuh_lgkPFAVa1oZqnviWb6rgA9ggBUhsLTEWXYkHUBU
Message-ID: <CAMRc=Mddp=rmogziQ2XrzsO-TiRh9A5U3v8UxJqz_so1otPMLw@mail.gmail.com>
Subject: Re: [PATCH v4 0/9] Introduce HDP support for STM32MP platforms
To: Linus Walleij <linus.walleij@linaro.org>
Cc: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 5, 2025 at 3:04=E2=80=AFPM Linus Walleij <linus.walleij@linaro.=
org> wrote:
>
> On Wed, May 28, 2025 at 3:33=E2=80=AFPM Cl=C3=A9ment Le Goffic
> <clement.legoffic@foss.st.com> wrote:
>
> > Cl=C3=A9ment Le Goffic (9):
> >       gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip
> >       dt-bindings: pinctrl: stm32: Introduce HDP
> >       pinctrl: stm32: Introduce HDP driver
> >       MAINTAINERS: add Cl=C3=A9ment Le Goffic as STM32 HDP maintainer
>
> Can I apply the driver and bindings patches 1-4 separately
> from the rest of the series?
>
> >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp13
> >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp15
> >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp25
> >       ARM: dts: stm32: add alternate pinmux for HDP pin and add HDP pin=
ctrl node
> >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp157c-dk2=
 board
>
> Or does it need to be merged along with these?
>

Would you mind me taking patch 1/9 through the GPIO tree as I'll have
some gpio-mmio rework going on next cycle? I will then send you an
immutable tag to pull.

Bartosz

