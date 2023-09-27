Return-Path: <devicetree+bounces-3736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8A47AFF97
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:14:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id DF3261C2074F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:14:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 387CB208A3;
	Wed, 27 Sep 2023 09:14:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9149C290B
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:14:06 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A392CC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:14:03 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-31f71b25a99so10486537f8f.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695806042; x=1696410842; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=RsG+xQ5K7+BJbzhMgY+2l7hI3HJGu/U8Llgo7kKe+d0=;
        b=mQOK3pCoptalgz2S20iQDY2VGKjXNZEQX+zrOD8+N6MEKZamCDpiaVUjTmaP1kxKqX
         VdKum8TmiaRHjPIxzT6N9LsW7IoHs+rXELyVh6kzrELPX5sji0n0GjESMeWYjMrkjKj7
         +ETeo7l4Qhi6qjuce/AbDoXB6IGYyX05XgEEW/GO3D9RuGHAYAgynzM7o0oVlChEGLfO
         n+6Gpq3A6ZMT4UEVd/VBS33T6IhbHQTGrgEBauKRxsfDZTrdLX8NeZ59TgHDDIQWsh7Q
         0o9he6bPLjwpfiXYWZ0PWAes1B7QkXFmK36vKZIsw9+LQZYPm/+FMf4X/yclkW8Q/7wk
         sVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695806042; x=1696410842;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RsG+xQ5K7+BJbzhMgY+2l7hI3HJGu/U8Llgo7kKe+d0=;
        b=Xjdj7wC8ZAu/RXow8QQNUu+eg6YuR52vNY7R/R4eRdx/O7gIAjK+3dNBozvJTz8mkV
         N92d1tuvTqLaFtj139ZRYX4x8lDHQ48935FUx/ef1RK13fspZOw4ukj+k8Wz6g1nfFnZ
         j7tinsI9jAIM8xeEhMqemw52/z4cFIhuQaCv3rOdV/UXigyitQ3Vp+nYhivVdLyQyq1A
         MqzYZUokwVFDyCeV6IIkviO1PbjVY3r/OU6vT/1O+hVB2EGLVXqcEtUAyC8C4Hfc5aEW
         /MWm5SZYZI87eJNoC0wdPzd/zAf8wk2eeGyQ4IZQQ2YXppKzLQ9QLSPG/6rmH9kT/Ijk
         WhrA==
X-Gm-Message-State: AOJu0Ywf7e0CvJCsPKeoAj4C9S9g9dHlHmG16SlR1Cp9Uc6v8TbMFrwF
	45r9+1Jf/6D043HL+XKeZnCz1g==
X-Google-Smtp-Source: AGHT+IE/QudZMKsR1NKWpqHhMWhm3ezMdiqFVqImn30dFuRULpbJwjQjX4JFMweOsN/FbuuxDCxHsg==
X-Received: by 2002:adf:e9c1:0:b0:31f:fa61:961b with SMTP id l1-20020adfe9c1000000b0031ffa61961bmr1201054wrn.66.1695806041834;
        Wed, 27 Sep 2023 02:14:01 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:99be:56aa:a730:ad2d])
        by smtp.gmail.com with ESMTPSA id c17-20020adfe751000000b00317909f9985sm16482378wrn.113.2023.09.27.02.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:14:01 -0700 (PDT)
References: <20230904075504.23263-1-yu.tu@amlogic.com>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Yu Tu <yu.tu@amlogic.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen  Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof  Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Martin  Blumenstingl
 <martin.blumenstingl@googlemail.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: kelvin.zhang@amlogic.com, qi.duan@amlogic.com
Subject: Re: [PATCH V11 0/4] Add S4 SoC PLLs and Peripheral clock
Date: Wed, 27 Sep 2023 11:13:32 +0200
In-reply-to: <20230904075504.23263-1-yu.tu@amlogic.com>
Message-ID: <1jmsx8kmg7.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Mon 04 Sep 2023 at 15:55, Yu Tu <yu.tu@amlogic.com> wrote:

> 1. Add S4 SoC PLLs and Peripheral clock controller dt-bindings.
> 2. Add PLLs and Peripheral clock controller driver for S4 SOC.
>
> Yu Tu (4):
>   dt-bindings: clock: document Amlogic S4 SoC PLL clock controller
>   dt-bindings: clock: document Amlogic S4 SoC peripherals clock
>     controller
>   clk: meson: S4: add support for Amlogic S4 SoC PLL clock driver
>   clk: meson: S4: add support for Amlogic S4 SoC peripheral clock
>     controller
>
> V10 -> V11:
> 1. Change patch 0001/0002 dt-bindings tag. Suggested by Krzysztof.
> 2. Change patch 0002 dt-bindings added minItems. Suggested by Jerome.
> 3. Change patch 0004 added clock ".flags = 0" and comment. Suggested by Jerome.
>
> V9 -> V10:
> 1. Change the relevant S4 CLK patch based on Neil's recently modified
> patch.
> 2. Change patch 0003/0004 clocks comment, format and clock flags suggested
> by Jerome.
>
> V8 -> V9: Add patch 0001/0002 dt-bindings tag. Suggested by Krzysztof.
> V7 -> V8:
> 1. Change patch 0001/0002 dt-bindings title description, remove "meson".
> Suggested by Dmitry, Neil.
> 2. Change patch 0003/0004 clocks comment, format and clock flags suggested by
> Dmitry, Neil, Jerome.
>
> V6 -> V7: Change send patch series as well change format and clock flags
> suggested by Jerome. Change dt-bindings suggested by Krzysztof.
> V5 -> V6: Change send patch series, as well change format and clock flags.
> V4 -> V5: change format and clock flags and adjust the patch series
> as suggested by Jerome.
> V3 -> V4: change format and clock flags.
> V2 -> V3: Use two clock controller.
> V1 -> V2: Change format as discussed in the email.
>
> Link:https://lore.kernel.org/linux-amlogic/20230822082750.27633-1-yu.tu@amlogic.com/
>
>  .../clock/amlogic,s4-peripherals-clkc.yaml    |   96 +
>  .../bindings/clock/amlogic,s4-pll-clkc.yaml   |   49 +
>  drivers/clk/meson/Kconfig                     |   23 +
>  drivers/clk/meson/Makefile                    |    2 +
>  drivers/clk/meson/s4-peripherals.c            | 3813 +++++++++++++++++
>  drivers/clk/meson/s4-peripherals.h            |   57 +
>  drivers/clk/meson/s4-pll.c                    |  867 ++++
>  drivers/clk/meson/s4-pll.h                    |   38 +
>  .../clock/amlogic,s4-peripherals-clkc.h       |  236 +
>  .../dt-bindings/clock/amlogic,s4-pll-clkc.h   |   43 +
>  10 files changed, 5224 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,s4-peripherals-clkc.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,s4-pll-clkc.yaml
>  create mode 100644 drivers/clk/meson/s4-peripherals.c
>  create mode 100644 drivers/clk/meson/s4-peripherals.h
>  create mode 100644 drivers/clk/meson/s4-pll.c
>  create mode 100644 drivers/clk/meson/s4-pll.h
>  create mode 100644 include/dt-bindings/clock/amlogic,s4-peripherals-clkc.h
>  create mode 100644 include/dt-bindings/clock/amlogic,s4-pll-clkc.h
>
>
> base-commit: 41680df0975e04b959a28bf6ab85fd6a307ae0ea

Applied.
Thx.

