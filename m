Return-Path: <devicetree+bounces-222923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 791C1BAF786
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:45:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 249C3176F8C
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A2BC26B75C;
	Wed,  1 Oct 2025 07:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="x9fSJzuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D694919F40B
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759304713; cv=none; b=DU3+RYnblkIOx3pyZLIsH213DZcsrE1Hn4giT7rb+xUV2lFGhAQGx0Bh8QTpHI+zk2BDIlQxI8qJyS6y7IG9ngxiQyKZKmfoYn+XJXMY/fEoqXFSvEJWLXOt/WsUhHZMXFpAYIwCX9gVSE1hPbAhzMcRTucH4SWUY+BhUddAWc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759304713; c=relaxed/simple;
	bh=gm2ytgIS3UZc9HpOqeONLn/ri5+xjkdL1nRnbvvmjBU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mHW47FFZdgnBv6Gc3JwxYFVEFnHx2SmEKGPW6HD4LP+X7o4rKVPCLMVuNfKXzqbdqfdAAxeOLkKURRx6JZtIheOdlHBNMabke58sPv/NK2eWi49Y9H60rddtyjgA5OwMz2dA3wUt63kcUHik0irsWuxLJOHd8EZyxGS0Jb3XOCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=x9fSJzuD; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-46e2826d5c6so52703655e9.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759304708; x=1759909508; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qg7VWjS0JkeDUM38Rnu5q8oeFtV0qmFaVpXseuYx1QE=;
        b=x9fSJzuDKtcyHVCx2jVACQazlfc/jcYHr8kxe0KPDITnhQSzB4YwmKVKjOpuXhC9io
         TK+MwDBSMrUXYu3kqfEjST5QAHjPoR3QNiAR7YcTjU0qG9JaslkdOekzWtAKNUb3fKy+
         V+U1xbFuJi+Hg5txDENPnA78f4kxw7YISmtpUlGS3xQArhYQ5tqv27dL+SoglCt1YGRT
         VGieQKefZHJGForAQKGnYBjFl/FCjb/jJXdwL0OW/wtp648z93cK3sTLa17N5Dhgkox6
         QiSKAR9rYZEr47VgLkDNTMccIPrGp0fFUVSvzM5+dNVeMzff6UqlHrPs949xgMZfEsx9
         Zn9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759304708; x=1759909508;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qg7VWjS0JkeDUM38Rnu5q8oeFtV0qmFaVpXseuYx1QE=;
        b=DIuaEN/cLQJzWD+GnQudpx/rw3sSSNNjERkoJ5z4utZV0HCHE40cmG9Pk2yyEp9x+y
         RN8mEGqlrJXGmm7orMJnHevOnNKIh8IESa+WbPMiMFcViNBHNJQJ2PZmOaI36sC0QZJW
         XdaoWm5wxpGx2jZzHZGpFrdD8JL6Q4/WoVDI2fsEKQK907jg7hboaO+CaR1zADRWDCJ0
         CKJi/qZ7uNHyIvaC+uw/sQAb8DLEFNbJHrQT3rCPhNZL1JAJbXM5hdHlO5PZOv7AJ8DC
         3psDh5cfN9hWpt1wxFe78wIq2wasCMLrun77KAK9xKdiq+8pAc3v4ttVgd11YG+2iX8R
         5HGQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2QMP6doHqAQ4sFd1B/+g1mS7LI4q406cZkbSdpIem3bxlcTGLHC7lX9aONVuwMrbwRHHIiwqqdcfC@vger.kernel.org
X-Gm-Message-State: AOJu0YxKkcLXGbOzq0v6nxRH3Y4O/IKuzGa8/sUeiPakKKryoL2wj+O4
	qVTracn7lAgBzf7bHBB/2gTdzDNxeh6rnQOsXYgBBt+Po4mY42YP+jKH21A1ZcQ03k0=
X-Gm-Gg: ASbGncvn0chfwHq6QuV5rKfWPOuIfKJTOFb/O1kL/MWfxAXGfPvz88eZe/gJIlPkRvZ
	apms2F6yzgoROGBkfznzQB1+eTy2Skh8qtHUR05AK5jyIJaUIUg41RghYwvsh87ilQLErBcvLNp
	6pa7lKkcehNEcOWFUFaq3RepFSaJeFH2E+IQHavG3PyhAhmy5q2SzNxTWSF1fTwxlsD9cOczM6/
	XYajoqm+wzEY7eoKvTHx2YJKRbC5Clm0OOa+dN+nOb4R01f7pnB6XBEYmwzbDGHUnn+x1jgf0vo
	d2Xfq3aacKRR7pgj/34gF0iIyb1rrjYdXWSNAqXGvHnu/h+JETaJDYIPO/Wy89TpN1tin0j0S/c
	gj0PmgGCK7NxMInTx73KVNHs+Djy/50YqMATROral6GaTbQ==
X-Google-Smtp-Source: AGHT+IFoRjI2Zw2x09D63Jf0YC7whoQC5cYnsETwVyuJVa3Ra7wHW3S2yFZ3fp1jDTOz8cPlStVCVA==
X-Received: by 2002:a05:600c:6812:b0:45f:2cf9:c229 with SMTP id 5b1f17b1804b1-46e611a1fa9mr20772605e9.0.1759304707793;
        Wed, 01 Oct 2025 00:45:07 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:ec6d:2bf4:7406:4872])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-46e619a6fc8sm26382545e9.13.2025.10.01.00.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 00:45:07 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,  chuan.liu@amlogic.com,
  linux-kernel@vger.kernel.org,  linux-clk@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-amlogic@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  Xianwei Zhao
 <xianwei.zhao@amlogic.com>
Subject: Re: [PATCH 00/19] clk: amlogic: Add PLLs and peripheral clocks for
 A4 and A5 SoCs
In-Reply-To: <20250930-a4_a5_add_clock_driver-v1-0-a9acf7951589@amlogic.com>
	(Chuan Liu via's message of "Tue, 30 Sep 2025 17:37:13 +0800")
References: <20250930-a4_a5_add_clock_driver-v1-0-a9acf7951589@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 01 Oct 2025 09:45:06 +0200
Message-ID: <1jv7kz3w1p.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Tue 30 Sep 2025 at 17:37, Chuan Liu via B4 Relay <devnull+chuan.liu.amlo=
gic.com@kernel.org> wrote:

> This patch series includes changes related to the PLL and peripheral
> clocks for both the A4 and A5 SoCs.
>
> The patches for A5 were previously submitted up to V3 by Xianwei.
> https://lore.kernel.org/all/20250103-a5-clk-v3-0-a207ce83b9e9@amlogic.com/
> After friendly coordination, I=E2=80=99ve taken over and continued the
> submission as part of this series. The dt-bindings patch retains Rob's
> original "Reviewed-by" tag, and I hope this hasn=E2=80=99t caused any
> additional confusion.

... and yet you restart the versioning of the series making it harder
for people to follow that

>
> Both A4 and A5 belong to the Audio series. Judging by their names, one
> might assume that A5 is an upgrade to A4, but in fact, A5 was released
> a year earlier than A4.
>
> Since there are differences in the PLLs and peripheral clocks between
> the A4 and A5 SoCs (especially the PLL), and taking into account factors
> such as memory footprint and maintainability, this series does not
> attempt to merge the two into a shared driver as was done for
> G12A/G12B/SM1.

... and we end up with 19 patches series while it could be splitted into
manageable series, for each controller of each SoC

>
> This patch series includes all related dt-bindings, driver, and dts
> changes for the PLLs and peripheral clocks. Following our past convention
> for clock-related submissions, the dts changes are placed at the end
> and submitted separately. If this ordering makes it harder for
> maintainers to review or pick patches, please feel free to point it out.
>
> Co-developed-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
> ---
> Chuan Liu (19):
>       dt-bindings: clock: Add Amlogic A4 SCMI clock controller
>       dt-bindings: clock: Add Amlogic A4 PLL clock controller
>       dt-bindings: clock: Add Amlogic A4 peripherals clock controller
>       clk: amlogic: Optimize PLL enable timing
>       clk: amlogic: Correct l_detect bit control
>       clk: amlogic: Fix out-of-range PLL frequency setting
>       clk: amlogic: Add A4 PLL clock controller driver
>       clk: amlogic: Add A4 clock peripherals controller driver
>       arm64: dts: amlogic: A4: Add scmi-clk node
>       arm64: dts: amlogic: A4: Add PLL controller node
>       arm64: dts: amlogic: A4: Add peripherals clock controller node
>       dt-bindings: clock: Add Amlogic A5 SCMI clock controller support
>       dt-bindings: clock: Add Amlogic A5 PLL clock controller
>       dt-bindings: clock: Add Amlogic A5 peripherals clock controller
>       clk: amlogic: Add A5 PLL clock controller driver
>       clk: amlogic: Add A5 clock peripherals controller driver
>       arm64: dts: amlogic: A5: Add scmi-clk node
>       arm64: dts: amlogic: A5: Add PLL controller node
>       arm64: dts: amlogic: A5: Add peripheral clock controller node
>
>  .../clock/amlogic,a4-peripherals-clkc.yaml         | 122 +++
>  .../bindings/clock/amlogic,a4-pll-clkc.yaml        |  61 ++
>  .../clock/amlogic,a5-peripherals-clkc.yaml         | 134 ++++
>  .../bindings/clock/amlogic,a5-pll-clkc.yaml        |  63 ++
>  arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi        |  80 ++
>  arch/arm64/boot/dts/amlogic/amlogic-a5.dtsi        |  87 ++
>  drivers/clk/meson/Kconfig                          |  53 ++
>  drivers/clk/meson/Makefile                         |   4 +
>  drivers/clk/meson/a1-pll.c                         |   1 +
>  drivers/clk/meson/a4-peripherals.c                 | 764 +++++++++++++++=
+++
>  drivers/clk/meson/a4-pll.c                         | 242 ++++++
>  drivers/clk/meson/a5-peripherals.c                 | 883 +++++++++++++++=
++++++
>  drivers/clk/meson/a5-pll.c                         | 476 +++++++++++
>  drivers/clk/meson/clk-pll.c                        |  76 +-
>  drivers/clk/meson/clk-pll.h                        |   2 +
>  .../clock/amlogic,a4-peripherals-clkc.h            | 129 +++
>  include/dt-bindings/clock/amlogic,a4-pll-clkc.h    |  15 +
>  include/dt-bindings/clock/amlogic,a4-scmi-clkc.h   |  42 +
>  .../clock/amlogic,a5-peripherals-clkc.h            | 132 +++
>  include/dt-bindings/clock/amlogic,a5-pll-clkc.h    |  24 +
>  include/dt-bindings/clock/amlogic,a5-scmi-clkc.h   |  44 +
>  21 files changed, 3406 insertions(+), 28 deletions(-)
> ---
> base-commit: 01f3a6d1d59b8e25a6de243b0d73075cf0415eaf
> change-id: 20250928-a4_a5_add_clock_driver-2b7c9d695633
>
> Best regards,

--=20
Jerome

