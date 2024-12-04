Return-Path: <devicetree+bounces-126929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 122849E394D
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 12:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D37FA168EBB
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE23B1B3945;
	Wed,  4 Dec 2024 11:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="cE2j7htD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632ED1ABEDC
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 11:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733313271; cv=none; b=YB0alWkE21NYzq2drubfEb8vTtbk1+57Td/wwK8ihbuMqEFTqTW+83gjGo/kwqwk4LIWfacM8TaZq+1624WDnRk+rWzoVUv2rdULD0pBi90cHrOqj+urneT4fu+2Yr1xrPBAQQiqE0KsAnkShux9ic22sRsvxvozG+LAu7sYQ14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733313271; c=relaxed/simple;
	bh=xD6rA0HebJRzBuAKP+mZdufFn4gVhzxzz3XUxT5RSvU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kkrqIk/SOKDJPCAY8O3w7xmR5qb36v1pFQKkvUcqNbzj1vw99+4eMTUx0KPVY86EBPy8A3EQo0Pks/frZIMB8+Vs3oMeO+inAnTpBaRWhHgFkvt9YH7HDKapKHZwf45ziz2liWOkdZr/JqyjBP80ocisIqApfk8idFhywxMW6rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=cE2j7htD; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A7A313F1CE
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 11:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1733313267;
	bh=ZZ0KuXCkwVIsgqmnVBvqG5NLt7HlyOEZfYjDmvMmLyo=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=cE2j7htDZmzYRn/9l8iH9MpxMb3IOgJbLcUThR98BK2dp7k4pF3LmwKwTRYjTD1Mn
	 NUrJrzyYZWmCdK++u9IZxEPK1HOS0MYfQreY1udJKZNnyeXpYunLzPwCXgskpex/nC
	 B19q95phFHFI0R/7agXn63GrACzyHF7dPQv/+7YsWUiOOM3AavDsP0GOrRgJyBYS7H
	 JPLXrhvZ6ZtggToMUfaTV2T3DFG93PeGhxiG80C3Vn/cl/1nFs+G7mD6H+PGMOr6N2
	 BdrSYxDgYDTyQroUCSaJqRNcOfrHXVgjeo7K9YWkzDePP7Xnr+yyU69O6exk0Ww/2H
	 wJJyE0saQgGTg==
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-29e522438cdso3349485fac.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 03:54:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733313266; x=1733918066;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZZ0KuXCkwVIsgqmnVBvqG5NLt7HlyOEZfYjDmvMmLyo=;
        b=JWWklZEmdP8Osfcg/saNWs6FXTDJ0r8CiRYUVDjyc9vq9+BKtVVYjfvF6LqzgkoiYx
         933pSPBEPpPlircw5yaLPU1rSoZnY/sHjcw2yjPIr0cuB02B0z28EcqVbFEEZ7CrKanb
         OA97jzfHfAcyRTw/JpJEN2sl6XeNdWxpM3ZfZP1JbVyqJryPzpIxhn4vK10C/smpyOv0
         Tb8vFGv9DeaSDmLdi8UHv7QNc9YtUhI2nYq/wnZqp2Z6VUgfrdrePg9CowPJiCLbs3cG
         iPeOdA11rSC+kOn8ClU0vz0mUbJZEvbN2ITCd8Zbf1q65GI4kRN0QZSQ5uU3C1rNmjrv
         jAAA==
X-Forwarded-Encrypted: i=1; AJvYcCXw7gkAs+2ie6b/Xpr7yTKCQd8PTQVBYGsjnpD9eB5Q43S5fjWjR6HlcAqaq/Tilj+xiC9LDm0ilO53@vger.kernel.org
X-Gm-Message-State: AOJu0YwCVMTe7zP1C2SXeEcGG90Y2NU5ZGfiYVje9jE9tkAlIyFbkWZ9
	0wt4x0xRSpSr90QSnfZqtNawpXTASMXNJjfwKEor9AWS8at2zr4IE8OobfFSxmEqwu+0sjQb4M/
	4Y9dQyvyGt9Dr/otNSA1XkrBxdBF7xyS9j+KPcv/IoqbGIJ05bbVl8BYKGZUqfZ2ft0vcKuPia2
	FKBVPNpSMi6YSkhEhICiPxn1jYQfyablpm+cKCQ1BZW5GSRkXvcA==
X-Gm-Gg: ASbGnctkk8Oyk4y7PJnU+GcFDnYURksGnGBntp647PsZaoK7YIJgZpnz4GNZuuA/KNi
	+VGZddWbX3TCitUblWolW2y6ZbkIfyn35Sn8Y5VFjjfKmyY4ZhImDG3Jghmts
X-Received: by 2002:a05:6870:96a7:b0:29e:509c:3711 with SMTP id 586e51a60fabf-29e88611583mr5475021fac.15.1733313266399;
        Wed, 04 Dec 2024 03:54:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwNtBRj1a6Oig1wQNPMOX7J3gElLahKM+e/WFt9W2DcJnKUJX69cF+v6/fGKa1JigCuGVZtni+R40UsicskUU=
X-Received: by 2002:a05:6870:96a7:b0:29e:509c:3711 with SMTP id
 586e51a60fabf-29e88611583mr5475008fac.15.1733313266148; Wed, 04 Dec 2024
 03:54:26 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 4 Dec 2024 03:54:25 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241126143125.9980-2-heylenay@4d2.org>
References: <20241126143125.9980-2-heylenay@4d2.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 4 Dec 2024 03:54:25 -0800
Message-ID: <CAJM55Z88=jq4brJeDuXF37yAHqQKCCs7L8gVOdHQhjVT7r-eZA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Add clock controller support for Spacemit K1
To: Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Haylen Chu <heylenay@outlook.com>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Inochi Amaoto <inochiama@outlook.com>, Chen Wang <unicornxdotw@foxmail.com>, 
	Jisheng Zhang <jszhang@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Haylen Chu wrote:
> The clock tree of Spacemit K1 is managed by several independent
> controllers in different SoC parts. In this series, all clock hardwares
> in APBS, MPMU, APBC and APMU, are implemented. With some changes to UART
> driver, CPU cores and UARTs could be brought up (see below). More clocks
> will be implemented later soon.
>
> No device tree changes are included since Spacemit K1 UART needs two
> clocks to operate, but for now the driver gets only one. I would like to
> defer the changes until this is resolved.

Hi,

Do you have a git tree with these dt changes though? It's impossible to test
this patchset without them.

/Emil

>
> This driver has been tested on BananaPi-F3 board and successfully
> brought up I2C, RTC, mmc and ethernet controllers. A clock tree dump
> could be obtained here[1].
>
> [1]: https://gist.github.com/heylenayy/ebc6316692dd3aff56575dbf0eb4f1a9
>
> Link: https://developer.spacemit.com/documentation?token=LCrKwWDasiJuROkVNusc2pWTnEb
>
> Changed from v2
> - dt-binding fixes
> - misc improvements in code
> - drop unnecessary spinlock in the driver
> - implement missing bus clocks
> - Link to v2: https://lore.kernel.org/all/SEYPR01MB4221829A2CD4D4C1704BABD7D7602@SEYPR01MB4221.apcprd01.prod.exchangelabs.com/
>
> Changed from v1
> - add SoC prefix (k1)
> - relicense dt-binding header
> - misc fixes and style improvements for dt-binding
> - document spacemit,k1-syscon
> - implement all APBS, MPMU, APBC and APMU clocks
> - code cleanup
> - Link to v1: https://lore.kernel.org/all/SEYPR01MB4221B3178F5233EAB5149E41D7902@SEYPR01MB4221.apcprd01.prod.exchangelabs.com/
>
> Haylen Chu (3):
>   dt-bindings: clock: spacemit: Add clock controllers of Spacemit K1 SoC
>   dt-bindings: soc: spacemit: Add spacemit,k1-syscon
>   clk: spacemit: Add clock support for Spacemit K1 SoC
>
>  .../bindings/clock/spacemit,k1-ccu.yaml       |   57 +
>  .../soc/spacemit/spacemit,k1-syscon.yaml      |   86 +
>  drivers/clk/Kconfig                           |    1 +
>  drivers/clk/Makefile                          |    1 +
>  drivers/clk/spacemit/Kconfig                  |   20 +
>  drivers/clk/spacemit/Makefile                 |    5 +
>  drivers/clk/spacemit/ccu-k1.c                 | 1747 +++++++++++++++++
>  drivers/clk/spacemit/ccu_common.h             |   62 +
>  drivers/clk/spacemit/ccu_ddn.c                |  146 ++
>  drivers/clk/spacemit/ccu_ddn.h                |   85 +
>  drivers/clk/spacemit/ccu_mix.c                |  296 +++
>  drivers/clk/spacemit/ccu_mix.h                |  336 ++++
>  drivers/clk/spacemit/ccu_pll.c                |  198 ++
>  drivers/clk/spacemit/ccu_pll.h                |   80 +
>  include/dt-bindings/clock/spacemit,k1-ccu.h   |  246 +++
>  15 files changed, 3366 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/spacemit,k1-ccu.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
>  create mode 100644 drivers/clk/spacemit/Kconfig
>  create mode 100644 drivers/clk/spacemit/Makefile
>  create mode 100644 drivers/clk/spacemit/ccu-k1.c
>  create mode 100644 drivers/clk/spacemit/ccu_common.h
>  create mode 100644 drivers/clk/spacemit/ccu_ddn.c
>  create mode 100644 drivers/clk/spacemit/ccu_ddn.h
>  create mode 100644 drivers/clk/spacemit/ccu_mix.c
>  create mode 100644 drivers/clk/spacemit/ccu_mix.h
>  create mode 100644 drivers/clk/spacemit/ccu_pll.c
>  create mode 100644 drivers/clk/spacemit/ccu_pll.h
>  create mode 100644 include/dt-bindings/clock/spacemit,k1-ccu.h
>
>
> base-commit: 2d5404caa8c7bb5c4e0435f94b28834ae5456623
> prerequisite-patch-id: 47dcf6861f7d434d25855b379e6d7ef4ce369c9c
> prerequisite-patch-id: 77787fe82911923aff15ccf565e8fa451538c3a6
> prerequisite-patch-id: b0bdb1742d96c5738f05262c3b0059102761390b
> prerequisite-patch-id: 3927d39d8d77e35d5bfe53d9950da574ff8f2054
> prerequisite-patch-id: a98039136a4796252a6029e474f03906f2541643
> prerequisite-patch-id: c95f6dc0547a2a63a76e3cba0cf5c623b212b4e6
> prerequisite-patch-id: 66e750e438ee959ddc2a6f0650814a2d8c989139
> prerequisite-patch-id: 29a0fd8c36c1a4340f0d0b68a4c34d2b8abfb1ab
> prerequisite-patch-id: 0bdfff661c33c380d1cf00a6c68688e05f88c0b3
> prerequisite-patch-id: 99f15718e0bfbb7ed1a96dfa19f35841b004dae9
> --
> 2.47.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

