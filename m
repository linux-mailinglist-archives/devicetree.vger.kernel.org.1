Return-Path: <devicetree+bounces-187121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C60DBADEBF8
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:25:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95A711BC0373
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 719DE2E7622;
	Wed, 18 Jun 2025 12:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yQsDrIXy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222102E54B1
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750249275; cv=none; b=YfYVjhmT20gLI118YjY2vIuF4DEKnVj+XUBk7ptkfyXst/lH8SUr3F/l79r90lOzjBNjO9l8W+ltAYJxw4QkfRcKhqAynPil02vIXMQmj0sJB62hnKXYwxWyZ0cI7LNBp7E1EYvvfDLH/POKYeXXiXyGao3HnP3G+6adGHABWEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750249275; c=relaxed/simple;
	bh=b6LBHyIi5e1ZGbbaIWqJEeHGDHa8TD6jbCAi8i0g/oY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E4uaJLmnc3DJ8xxrBPrb9hD/ES0gJxLurg5Ek52t2Exjtrba/hHSYvP/cztF2/FdRwLKF+JmOgt3E0OdzwhjC+1hUHbXPz2HxLGPaFmdmBz4Ob7Pl0mGAa5Q/s4qinb7rxjhntD5xvelh2btajY2sEZZ5dpN5Z27bYdv7EQ6nYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yQsDrIXy; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-32ac42bb4e4so60738261fa.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750249270; x=1750854070; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n761KcazBD8NAVChuciBYR6i+PEWOHat/DvKkhEEUwg=;
        b=yQsDrIXyB7G4LkpsrIocLZHLpqLQw2RFg4qrElRaDYVM2OkHKw5q+z9Wn96k7IVpre
         SZMMquQhjW9CxaXDy+BwvgtpucdsKr6yE9SoQNya1ziolqNT7CjbPOmJNdEu4FkHGmH4
         JXEhmgMzUbj9I12TPMZdsKOKy5RgnOMeQ/v4JaUjC9H4jKbeQPoiaxA2kuG6ReNFWp2G
         zr4igDVs1KyqWS2PQRg4CPW0JW2oTYDlRknI71jn+qmy92OshaOdPcIjYHXzFOGycJcT
         mYk2hQ3KH8lDb5b3oCqMdJ3PjJ+rVoa3/YU63EO87LwQReTkD2NUQT6Pt8mUhFCuoz2K
         PdYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750249270; x=1750854070;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n761KcazBD8NAVChuciBYR6i+PEWOHat/DvKkhEEUwg=;
        b=Rm2K8P9n8OD7CDhGOdjx4MeJPLHokGrz8d197cCDoCX63c68ijx8GTO09x4U8d1+Y3
         R4Mt4WBEFo+FxA1H8yg+SVDp2/O2WfdgOILmrtu+iEe9yfXjVvdTzG563vftr9d8nf+M
         vwertHkSPbkSRq7oTM1hN4YTGkqXz7rRO0xuKy2lH/j30HgFMpHZr+UEkUqwytj62G5H
         EwsYKmBWwgQWw+EyHdEE3CQzwwR9mcST9ivNeBI1ZA+FXiCfRcHG7TiW/8FtrvZKLM8+
         zRSNM+ll8UUEP76KEE3BhBpDHfyFnoTL+JmVvqUqVPvj9w+f6f5gdhlh+LM/V3mvFjHl
         USeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW24bt6xO5wR+NkliL3Mfn9OkJ+62xkg5s9HnQEmAnzZQwmqBu2v6LQKZJGEkT1x3wObfQSCZNHM+l@vger.kernel.org
X-Gm-Message-State: AOJu0YycQy6Gt3V8QLHfSJN/Ki/eZNIhZ15mYNM/ODkFJDMj0nnDFuMa
	b3HGbpNLuSFAjD6a0llNJuYrvxZMZFeXacySKXij7gFWFttSaFLOKJNSlz1z1CvY5uzy9aisA8P
	g+dyM0s0VOryhU553HRLTMSU6N1HZP7gCaEr8KiUuQw==
X-Gm-Gg: ASbGncsCT50MLHzs7ALWr6VjwFeOKEVCwHdJge6HKTQ2AFR3q44k59SSI7hSikROsFO
	O7OaNw1aqt2cPSGXrNP+lvH0/CJ3Wy8xxAolD0pgYSZlcSt8vt0JVxslRhu5v7v/cTSCpBPhrLC
	jMPHEH0DaFCGRk0gke5HZTQuljvRUws2D3l8DAn5EFnDU=
X-Google-Smtp-Source: AGHT+IFxHCRWz//u1od0Lrwty9Yf9DHcSgaAHfAvrbBiimpXB2OEA85EDmSgQGSVRLhnSLdlgZURbr7ybwWz1kTTt2A=
X-Received: by 2002:a2e:a546:0:b0:32a:6312:bfc1 with SMTP id
 38308e7fff4ca-32b4a5a5c86mr42763701fa.24.1750249270277; Wed, 18 Jun 2025
 05:21:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613-hdp-upstream-v5-0-6fd6f0dc527c@foss.st.com> <CAMRc=MeTmwgbHv9R_=GFmjkAV4Nvc-SeSCOz1k6pnGUrF+R9Mg@mail.gmail.com>
In-Reply-To: <CAMRc=MeTmwgbHv9R_=GFmjkAV4Nvc-SeSCOz1k6pnGUrF+R9Mg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 14:20:56 +0200
X-Gm-Features: AX0GCFvzIWiUTEnf7w2o5CriFQLwK7aVK0h_a_ivR8DSarlEz7uy-y-3wDCyAbg
Message-ID: <CACRpkdax9ojguF1SAfiN9iZi=x3VFpCea6KnhzL3JBD9EXZepw@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] Introduce HDP support for STM32MP platforms
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 16, 2025 at 10:05=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.pl=
> wrote:
> On Fri, Jun 13, 2025 at 12:16=E2=80=AFPM Cl=C3=A9ment Le Goffic
> <clement.legoffic@foss.st.com> wrote:
> >
> > This patch series introduces the Hardware Debug Port (HDP) support for
> > STM32MP platforms.
> >
> > It includes updates to the mmio gpio driver, the addition of device tre=
e
> > bindings, the HDP driver, and updates to the device tree files for
> > STM32MP13, STM32MP15,
> > and STM32MP25 SoCs.
> > The series also updates the MAINTAINERS file to include myself as the
> > maintainer for the STM32 HDP driver and adds the necessary
> > pinmux configurations for HDP pins on STM32MP157C-DK2 as example.
> >
> > Signed-off-by: Cl=C3=A9ment Le Goffic <clement.legoffic@foss.st.com>
> > ---
>
> [snip]
>
> > ---
> > Cl=C3=A9ment Le Goffic (9):
> >       gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip
> >       dt-bindings: pinctrl: stm32: Introduce HDP
> >       pinctrl: stm32: Introduce HDP driver
> >       MAINTAINERS: add Cl=C3=A9ment Le Goffic as STM32 HDP maintainer
> >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp13
> >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp15
> >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp25
> >       ARM: dts: stm32: add alternate pinmux for HDP pin and add HDP pin=
ctrl node
> >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp157c-dk2=
 board
> >
>
> Patches 1-4 and 5-9 can go upstream independently. I suggest taking
> patch 1/9 through the GPIO tree and providing an immutable tag to
> Linus to take patches 2-4 through the pinctrl tree. Linus: are you OK
> with that?

Yes go ahead if you want, an immutable branch based on v6.16-rc1
is the best for me, then I pull that in.

I could also just apply it and hope for the best... it usually works.

Yours,
Linus Walleij

