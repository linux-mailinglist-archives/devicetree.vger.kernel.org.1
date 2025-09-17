Return-Path: <devicetree+bounces-218439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD69EB8010A
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:37:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D4921C07E37
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B6132EF667;
	Wed, 17 Sep 2025 14:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C3UUbFRm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED06291C07
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758119591; cv=none; b=bDawpaschhUDUBub8WX6HVXJ+DNG0mtZZtzuWBZgRr4YmoqV1eM04YcqoTltja7CTZYkktwQ/OWXknEeeKPh1It1nZmkaXPUg4iLqjb3+YEaNzeElNZbC3OaYmQlZwYfkB/lrWAvavR30LdiDnkI5cOabLQdWXZThlKNZFwJJj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758119591; c=relaxed/simple;
	bh=RKaFL/f/x+BpU4Xk7oekVWLIrBOIODf0tIBd2+YRAto=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IqaNEqSVWcCoeg9LcYGEiw2jrvKHWNgShoYU+hHf2aMwAuVBgnpRLPgZlsl9yBSHIo053levYu+56v85j3PtKw5alpDEy4rJGdCZybCbRBNiGTMPJoCP6j+GkotpT6et345HiURY46sC6ipoXMIVunfPgnwk2UHZz95+Xq8vflc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C3UUbFRm; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e931c71a1baso6456240276.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 07:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758119588; x=1758724388; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cjiYB/uowYFXiRivyJJw9KQxslDZjaml/1h2OkBzYY8=;
        b=C3UUbFRm3acP+0gd7vxBXz6Z3ef402pRo2XadWFzpB/mpXuKLW7vRWbB4zfivlFst8
         GoFZp1CMYZq2QABwCDUoiOSiBoZr10VhVEneXxJPE6qF7z8tJSamZikSv2lyZRwq34i8
         WnSbeTp9SjJ+zGRONoG3aiK0lATCddxAxq6ypvl9zWUwTUCTxj+IoJDZwAex5ACmyGdB
         l4aEfSz0+2npRMBWyEz7AHjfwhcvD/ioeyfpfBktFQE+sDh6dM/iNu3MIoCCXpmWOp5u
         BxOWT6HUdbUBzBO7QgWUWG6Pr3QtzNoSjAfRk+X7xQiUEo5bNCB3O9uYHiLHsg+AcmUJ
         FJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758119588; x=1758724388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cjiYB/uowYFXiRivyJJw9KQxslDZjaml/1h2OkBzYY8=;
        b=DWtMY2vVnrlCP7fWuqsyIQ8rmn/1TUqCY926h1V1GZBSV9VUqznUVj7p3k4Fu1Icws
         zwru2EcBXzz3kUbRo8JSXfLvDBnjcNpnwUmLpt4pP+TJ7frxN+4U4wXxjnhJEnZK44+E
         jSgWOy+VU5DfQi1W1uGE3kiIX8vgcQtB7vPnCxy7d5QYcupuU2dRZQUvIMY2u00laFa5
         SAwlGolLwAV9NUybT/PlFQqNUuxQ/QtOSEgNylQXk0yXv6bF4kCZOkkrl5O2WJevbWYk
         vaOCkBn50l7ZPfMj94W9QeopXF7fBvEuybGVvW5MUP4EK9jrDpu4JLv7O4mmzHLYN3of
         D7mw==
X-Forwarded-Encrypted: i=1; AJvYcCX8fvR2lgfpLipjDlGsPmOha1YvK17e+hZ+WZlU4tiJ+f/VwCrYv88WehTul3fqLql3b9Gl54bcR87N@vger.kernel.org
X-Gm-Message-State: AOJu0YzT2aCFMmEORguP14lKxZzgQX3ynvVOthdYGG6SvrvWj1nhPN6b
	k9A00zH9OxT1Cv0hP9wQEuRsRmJw+rkuZcm9b7QVsJsoFsAZj4mgwldp5sLHTaf18eI+XOPRAzk
	fdUPbL0Wrnaz61A+ChJ+nRzt57ILOmu3X0YIUn8KAIQ==
X-Gm-Gg: ASbGncvIqURXW2t5OIgyv5bOnSH8w6LfeyUgh+dnBIyzpSfjKkRU7BVn9c1bAgZKLRr
	1q/5qaIf+oNVsuq+jUYusb2of91XxAOnhDIBq6d7IsyXV5xTU4QL4cc5aTph8E7tm6oj73nHUmQ
	pxPNk9210stqzS2t9eEDBvkYFXOu8Wfa4f38rFqSlY5JR19DtnnMtjB5Sf0Rw0I1WQFABIY4GrQ
	/0FCu0I
X-Google-Smtp-Source: AGHT+IFQl4sxW4LUcoi3bIXsptHrliwBwP5f8RO+yo+IAgyckDyrm2VPVmx1uys1O5NAXNsLjZqsLa4xcMjhuXJl5zs=
X-Received: by 2002:a05:6902:3101:b0:ea4:6:9024 with SMTP id
 3f1490d57ef6-ea5c03aecffmr2119553276.8.1758119587602; Wed, 17 Sep 2025
 07:33:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250913-pxa1908-genpd-v4-0-55e4cf32f619@dujemihanovic.xyz>
In-Reply-To: <20250913-pxa1908-genpd-v4-0-55e4cf32f619@dujemihanovic.xyz>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 17 Sep 2025 16:32:30 +0200
X-Gm-Features: AS18NWB4VWSVduLAS3dHprEYP38MnWvLvmP0MGgnFO0V0b-XHaevM6W4A6ssrDo
Message-ID: <CAPDyKFri+vsC9U7hhPukgWR2sRec5M0i8XtmyA7dVgJ-8Ewe_A@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] Marvell PXA1908 power domains
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Wronek <david@mainlining.org>, Karel Balej <balejk@matfyz.cz>, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	=?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 13 Sept 2025 at 23:16, Duje Mihanovi=C4=87 <dujemihanovic32@gmail.c=
om> wrote:
>
> Hello,
>
> This series implements support for the power domains found in Marvell's
> PXA1908 SoC. The domains control power for the graphics, video and image
> processors along with the DSI PHY.
>
> Signed-off-by: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
> ---
> Changes in v4:
> - Address maintainer comments
> - Rebase on v6.17-rc5
> - Link to v3: https://lore.kernel.org/r/20250829-pxa1908-genpd-v3-0-2aaca=
aaca271@dujemihanovic.xyz
>
> Changes in v3:
> - Move driver back to pmdomain subsystem
> - Instantiate using auxiliary bus
> - Small fixes and refactors
> - Rebase on v6.17-rc3
> - Link to v2: https://lore.kernel.org/r/20250821-pxa1908-genpd-v2-0-eba41=
3edd526@dujemihanovic.xyz
>
> Changes in v2:
> - Move driver to clk subsystem (domains are instantiated by clock
>   driver)
> - Drop power controller schema
> - Drop RFC prefix
> - Rebase on v6.17-rc2
> - Link to v1: https://lore.kernel.org/r/20250806-pxa1908-genpd-v1-0-16409=
309fc72@dujemihanovic.xyz
>
> ---
> Duje Mihanovi=C4=87 (4):
>       dt-bindings: clock: marvell,pxa1908: Add syscon compatible to apmu
>       pmdomain: marvell: Add PXA1908 power domains
>       clk: mmp: pxa1908: Instantiate power driver through auxiliary bus
>       arm64: dts: marvell: pxa1908: Add power domains
>
>  .../devicetree/bindings/clock/marvell,pxa1908.yaml |  30 ++-
>  MAINTAINERS                                        |   4 +
>  .../marvell/mmp/pxa1908-samsung-coreprimevelte.dts |   1 +
>  arch/arm64/boot/dts/marvell/mmp/pxa1908.dtsi       |   5 +-
>  drivers/clk/Kconfig                                |   1 +
>  drivers/clk/mmp/Kconfig                            |  10 +
>  drivers/clk/mmp/Makefile                           |   5 +-
>  drivers/clk/mmp/clk-pxa1908-apmu.c                 |   7 +
>  drivers/pmdomain/Kconfig                           |   1 +
>  drivers/pmdomain/Makefile                          |   1 +
>  drivers/pmdomain/marvell/Kconfig                   |  18 ++
>  drivers/pmdomain/marvell/Makefile                  |   3 +
>  .../pmdomain/marvell/pxa1908-power-controller.c    | 274 +++++++++++++++=
++++++
>  include/dt-bindings/power/marvell,pxa1908-power.h  |  17 ++
>  14 files changed, 369 insertions(+), 8 deletions(-)
> ---
> base-commit: 76eeb9b8de9880ca38696b2fb56ac45ac0a25c6c
> change-id: 20250803-pxa1908-genpd-15918db5260c
>
> Best regards,
> --
> Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>

Patch 1 -> 2 applied for next, thanks!

Note, the DT patch (patch 1) is available on the immutable dt branch
too for clock/soc maintainers to pull, if needed.

Kind regards
Uffe

