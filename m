Return-Path: <devicetree+bounces-8323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 532F57C7A91
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 01:45:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE5C9B20855
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 23:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927892B5F6;
	Thu, 12 Oct 2023 23:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG2EZ8Ch"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723BF2C855
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 23:45:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3051C433C7;
	Thu, 12 Oct 2023 23:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697154346;
	bh=tEqTqQdErxc85MNvTcwntt3VToH19q1ySiOXAqVp1bo=;
	h=In-Reply-To:References:Subject:From:List-Id:Cc:To:Date:From;
	b=GG2EZ8ChFoHokrcV6Aa/yS5dZwQ6qftFITMB/sAiBFdWBKu1rphruGzmWTSfihORm
	 ug7zJ5TbSJ3viAbSO12SAVv8hCpfBfXlL5GSv+pGs3W7WaN+WInSdJsFpF32dJUSfy
	 kBzle2OTVVao82RAf0QsU+LASfe8pvPYj2HUlnpm/NniYTezqOBCVoNGG5tdaS4TK5
	 /awHz9XUs1EIvahj2SquYubqoe/nUXWuzwC6YzOEJh8hh85zJgtsH4moR4BvsHWB+3
	 bBvmtIaFdEO6l6Vxa4S8nzgVx9TodDgQjo8Kgp6H5la1PXIzyfdhwSEEsGWEmR2rSK
	 AGL6KPYmJNpog==
Message-ID: <27e5de286fd0c209fc0540df7f77355b.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231011184823.443959-19-peter.griffin@linaro.org>
References: <20231011184823.443959-1-peter.griffin@linaro.org> <20231011184823.443959-19-peter.griffin@linaro.org>
Subject: Re: [PATCH v3 18/20] arm64: dts: google: Add initial Oriole/pixel 6 board support
From: Stephen Boyd <sboyd@kernel.org>
List-Id: <soc.lore.kernel.org>
Cc: peter.griffin@linaro.org, tudor.ambarus@linaro.org, andre.draszik@linaro.org, semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org, kernel-team@android.com, linux-serial@vger.kernel.org
To: Peter Griffin <peter.griffin@linaro.org>, arnd@arndb.de, catalin.marinas@arm.com, conor+dt@kernel.org, cw00.choi@samsung.com, gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org, linux@roeck-us.net, mturquette@baylibre.com, olof@lixom.net, robh+dt@kernel.org, s.nawrocki@samsung.com, tomasz.figa@gmail.com, will@kernel.org, wim@linux-watchdog.org
Date: Thu, 12 Oct 2023 16:45:44 -0700
User-Agent: alot/0.10

Quoting Peter Griffin (2023-10-11 11:48:21)
> diff --git a/arch/arm64/boot/dts/google/gs101-oriole.dts b/arch/arm64/boo=
t/dts/google/gs101-oriole.dts
> new file mode 100644
> index 000000000000..3bebca989d34
> --- /dev/null
> +++ b/arch/arm64/boot/dts/google/gs101-oriole.dts
> @@ -0,0 +1,79 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Oriole Device Tree
> + *
> + * Copyright 2021-2023 Google,LLC
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include "gs101-pinctrl.h"
> +#include "gs101.dtsi"
> +
> +/ {
> +       model =3D "Oriole";
> +       compatible =3D "google,gs101-oriole", "google,gs101";
> +
> +       chosen {
> +               bootargs =3D "earlycon=3Dexynos4210,mmio32,0x10A00000 con=
sole=3DttySAC0";
> +       };
> +
> +       gpio-keys {
> +               compatible =3D "gpio-keys";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&key_voldown &key_volup &key_power>;

When a phandle starts an array presumably the next element after it is
some cell or "argument" for that phandle. In this case, &key_voldown
doesn't have any cells (there isn't a #pinctrl-cells property) so we
typically write it like this

		pinctrl-0 =3D <&key_voldown>, <&key_volup>, <&key_power>;

so that the reader doesn't think the phandles are related. In the DTB
nothing is different from how you have it in this patch. This is a super
nitpick!

