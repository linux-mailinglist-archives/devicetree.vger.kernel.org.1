Return-Path: <devicetree+bounces-186189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E36CDADAA35
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 10:05:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D4BE188EF34
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 08:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328032063F3;
	Mon, 16 Jun 2025 08:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="JJefz5RG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1571FFC74
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 08:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750061127; cv=none; b=A3S886u4AMYNy3jbkIdiFEM7iv7Qnq+Ek+35r36e1bLsmXV38rgmRkY0xsM1bs7WVrLge1KMH856upJncdeK6J3jX1OdGiR5wtKy5guB1quVgoWWqseajYtSFiBX0h0z8tD68N39swzP81em6MSjytQx+thbcVTOlYiaphroyb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750061127; c=relaxed/simple;
	bh=nyf2g989nH7J3pvCSN0gr3wDLJxFEUoowOZ4vMGp6J8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iVyaDPmhAjkzuHjx2+7HLt0oqQruemQd+bQOXSKQSt6kmExk+iANINXkOfvucpPAiqPgPZj8jSKiLKpt3psR07wuqF0bY7SYXgkGWVetoKo8QoIWUmG0yqdlH/0FkeSf9s9GumNgfRLMHPuY+z5lrjqJ3hiMVGX5WJ+Cc+/tWEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=JJefz5RG; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54b10594812so4157930e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 01:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750061123; x=1750665923; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywH8Dejsdq3x0VdIrtMd2wFdmECbqVFAg+zOSDofJ2s=;
        b=JJefz5RGZlrQY03Wq03TJ94YFJyignEWyGXHKpL+FwbygEHUAj9a3rxUI9EhYnTHyQ
         wAyDY7n45nN0vHunGupFGfpKW1RXIrMYZa0uQ6brESkicX6ngQFf+mW+tTX67My81c7V
         0qYpUlrs2TPt3I8tQxTV0ko+1218f/64A9QvZ44h4hW4Fnmiy5yVv0nFDUA7TOj0gz5t
         1a7twkvo3jWhrGqPbQ8DUrkziGQeMeySx95fpptSTlMJAwTW+BHDPxY4FSpQPCWzFMkC
         cOPETOxTx2QcvGBu6FTWIvgda9ggHLXmZgxFYoUtkrzHYWWRHti3EStFHzYiRemKgrIP
         ZHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750061123; x=1750665923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ywH8Dejsdq3x0VdIrtMd2wFdmECbqVFAg+zOSDofJ2s=;
        b=BMtt8Ngb4RVDY1CbpHDPaDQj/LSUd6y7lgaEJZqH+n+XRQ8F/ci+Bdd9RRyAGj7UDD
         7OBIh28UvIcRaZ82wj7UJFSnVJGVxieSI/PbcZzUKirXrQC1WgCuXtohCxA7tU/Qobow
         ex5Xmeery3RER0ahbUWm8s00pBX12JYow1BkqITP7JnQ/6XOwMEIJHfvHbGFZmi3OSgG
         0JzX7RecA2JUH0TZrbK7/Ip3NsiMZdDjzgbnhMHL1HjTuYis4ndh2NpODjypxbr5CuuA
         w31ANE6IojVgmRGuW/TaOU+0BxT1OcYR/7NpEn+gwJoJU4AkbWniZFTg0DGC49nPDxFu
         eIPw==
X-Forwarded-Encrypted: i=1; AJvYcCUbxTU9if/jtVBGNlXpmRF/jWs6Xnjfxouj/K7P8QTmqmV+Y4kAlw6WaRu6fTYvo55DrrUQSsqkEKkg@vger.kernel.org
X-Gm-Message-State: AOJu0YzdT5VLiAAW7cvZjmPmswSLcA80AbtX4qrhK5huRrL5wQYWByMC
	IF1ZH0R9b6IdBe33yTIJ0k5YEQolxCGchpThEhi+EYjX0U2YyDuN/sfmIBDuy0LDMuMogahO5f9
	LqdNlOLRxa2raH8GUV0x4MyAw1tCUX+/NN1l6WA0uLg==
X-Gm-Gg: ASbGnctAT3BFnapQ6+gGy9ZlOAFU/JyXQDHaaJXxZz8j+uWMhQQ0L4DSGzl/fGZ+GmN
	jTdXtDUC2vlrDe4jLnQ9M/6zJKIRjtC9nWVIN/S6kZ+UUAyUweQOMbXoPE8GkqgVR3UfR6ckBDd
	24414pzp/pXLt3ELRAyjlA8zy1MfqKCT1V2y3iiOYdFieXjuTdk+WTjQxmo8k2ohnyNuQHjRjkR
	DM=
X-Google-Smtp-Source: AGHT+IHui39rGOe78ZVv1GL/qozjTCuN+gIRPTaD2LzbbRuwGK+ExSJGXv1lf4f3l/OzpiTJL7GG+3gb2jdEJtZBUck=
X-Received: by 2002:a05:6512:3e07:b0:553:2fa8:8405 with SMTP id
 2adb3069b0e04-553b6f4f34bmr2175898e87.56.1750061123552; Mon, 16 Jun 2025
 01:05:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613-hdp-upstream-v5-0-6fd6f0dc527c@foss.st.com>
In-Reply-To: <20250613-hdp-upstream-v5-0-6fd6f0dc527c@foss.st.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 16 Jun 2025 10:05:12 +0200
X-Gm-Features: AX0GCFsKseF3x4tMXUWhM7GW0aQJySrNOOS0VJu19t9Ohnme0LPMU6-HMe9h4i0
Message-ID: <CAMRc=MeTmwgbHv9R_=GFmjkAV4Nvc-SeSCOz1k6pnGUrF+R9Mg@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] Introduce HDP support for STM32MP platforms
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
	Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 12:16=E2=80=AFPM Cl=C3=A9ment Le Goffic
<clement.legoffic@foss.st.com> wrote:
>
> This patch series introduces the Hardware Debug Port (HDP) support for
> STM32MP platforms.
>
> It includes updates to the mmio gpio driver, the addition of device tree
> bindings, the HDP driver, and updates to the device tree files for
> STM32MP13, STM32MP15,
> and STM32MP25 SoCs.
> The series also updates the MAINTAINERS file to include myself as the
> maintainer for the STM32 HDP driver and adds the necessary
> pinmux configurations for HDP pins on STM32MP157C-DK2 as example.
>
> Signed-off-by: Cl=C3=A9ment Le Goffic <clement.legoffic@foss.st.com>
> ---

[snip]

> ---
> Cl=C3=A9ment Le Goffic (9):
>       gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip
>       dt-bindings: pinctrl: stm32: Introduce HDP
>       pinctrl: stm32: Introduce HDP driver
>       MAINTAINERS: add Cl=C3=A9ment Le Goffic as STM32 HDP maintainer
>       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp13
>       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp15
>       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp25
>       ARM: dts: stm32: add alternate pinmux for HDP pin and add HDP pinct=
rl node
>       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp157c-dk2 b=
oard
>

Patches 1-4 and 5-9 can go upstream independently. I suggest taking
patch 1/9 through the GPIO tree and providing an immutable tag to
Linus to take patches 2-4 through the pinctrl tree. Linus: are you OK
with that?

Bart

