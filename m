Return-Path: <devicetree+bounces-183849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4420AD2201
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 17:13:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 164A23B22C8
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 15:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0319A1BD9F0;
	Mon,  9 Jun 2025 15:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="mI8Wwy1W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339CA19E97C
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 15:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749481706; cv=none; b=I/ET9HICJfcrwHanIevuIAs1FBiG9Tege3qQ7AFEsNbp5NFi35D4P4A+RbHiANezJHdeiXLjU843NP4nuMkk1erC/k26tYncZMZn0T7RPbq3YQhbDZnO9nNqTPVXveXa1d4fzHwImtJXW28dauUakqvbM8jD7Uc5lRGHqlcU0WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749481706; c=relaxed/simple;
	bh=0Xe0eY9ltM9JA/g6k+HjMgjHmlrR1XxJ2AAtueBFYsQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R4fKU9Jfg7nW5xsgdF3w1yB7ny+/24MoQOzWlkNvsB2zzvNZGHnW1MGnouyalAKaFYmuLgbke7tSfP0uIPCe5eR6l2K5geM1yjD0egiUzLGLqOifaBAurp8kGwO0XNSlLqbEBm/RM0f+1AZpjG92pZHAneNwRZVZKT+BUeMwSeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=mI8Wwy1W; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e81749142b3so3825367276.3
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 08:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749481704; x=1750086504; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x+smXdzbnTzkipKZ/URNR/f2iTlhGoSY2Qlkjkw+Pk8=;
        b=mI8Wwy1WMmCoJZDv/R0mEqSJtmkDX6FtEWzxzHBVqWJg+lPN8gctQJGHnK/ygv7XZ8
         Sn6BTw2E4q/d3S1bGx5mk4s3X7yHP7mBHW0uivTT87LAXKNO4dcXxLebtuDrVfMuWMtp
         op/VXO16BW50uOXsCYJ8qWsi5+6ZDDeHY3mHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749481704; x=1750086504;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x+smXdzbnTzkipKZ/URNR/f2iTlhGoSY2Qlkjkw+Pk8=;
        b=r8T5RpvmOXXkkIFzgvOk3UuWeFIINB4GhQckebBSAxscVtKCwabVCZ+BoB+D2YM1aq
         bsuJjjTtF1ffWmErRkQXVDLVY+2Vw+9/IA4DO0lUriydZ6zAzg1zwmUxQ214w5Gt+JtT
         y5ARAwOvwGP9uh+Yuymx64JIziKsgnI1el5gArj5h5jEEtjSDnTQg6UFE+GORMP9tMcs
         3JApG6mrrztrMy7uYbVA7paSZLXoGtkvqTFoihrJQtNVVZm4/oq8Ef95TqgXmlds7hLl
         HSwnlTn5GH4/3yb+2hcJYTgqthWQYsnBVXt7y1QI/EDWM+kCTrfdEk+0fT71/lW/5PUd
         9LiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcGXEIsXkxNev9HLr5BwFmQzT4MhfqY/GHnWYDfq6zaCuoXOzC1V0Js7lZtC+aZU1+k/bl32Sn8DJS@vger.kernel.org
X-Gm-Message-State: AOJu0YxWdIRUkjLMreaNqnNWEc2N5N3hS4sqcglN4o60tAkt06R7RjKr
	HkihZKVWJiJ6B1ISPT3jLGcpkXba+Erj6x8jBPYshEytNYSmMRIFBO6LJkBJqRGSaI8U6Y3C45k
	q+a1Iu45OWNBUr58Ws1KFdoS81kQNlDeoKsHNjxODyw==
X-Gm-Gg: ASbGncveGhCW3jSXR4/nfV5hnhSglI3RyrQpXiKGLNfmkZcrg7WDEKQAPMNoeY5RVDg
	DagPld32wYAM1wKLoqJjaj/1mw6YvpVZfOm3bOcRQzZAhjOqMF9qiWSW7gUbI94IWkF7GrY4RxE
	Y7ix4RGLlSN1/2LjWhT9Q8jfcTrWp6Iw==
X-Google-Smtp-Source: AGHT+IGWeHbdh3O/z4F1SRgYEltcGRfcEHSD7V4hOn6ole1VQ4KjcZtPvIWPOt0TiMXPWHw0tvG0AyUJrHsqEFKBpiA=
X-Received: by 2002:a05:6902:1546:b0:e7d:8eee:ae8f with SMTP id
 3f1490d57ef6-e81a22b0e19mr21079312276.19.1749481704110; Mon, 09 Jun 2025
 08:08:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com> <174948105106.2282643.172324663412189128.robh@kernel.org>
In-Reply-To: <174948105106.2282643.172324663412189128.robh@kernel.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Mon, 9 Jun 2025 17:08:12 +0200
X-Gm-Features: AX0GCFu7PzsfDvF842eUkzXyordNhd1acsYRKIzmAppp3qtvrKjzob8AA4_bZEY
Message-ID: <CABGWkvpv-0QjAgz_j3QMJvSO0gpzxY07GpkT0SWL1zEY0Y_ufg@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] Support Engicam MicroGEA boards
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>, Andreas Kemnade <andreas@kemnade.info>, 
	Peng Fan <peng.fan@nxp.com>, Russell King <linux@armlinux.org.uk>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Marek Vasut <marex@denx.de>, 
	Dmitry Baryshkov <lumag@kernel.org>, Stefan Eichenberger <stefan.eichenberger@toradex.com>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, Eric Biggers <ebiggers@google.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Fabio Estevam <festevam@denx.de>, 
	Matteo Lisi <matteo.lisi@engicam.com>, 
	Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>, 
	Primoz Fiser <primoz.fiser@norik.com>, Max Merchel <Max.Merchel@ew.tq-group.com>, 
	Michael Walle <mwalle@kernel.org>, Tim Harvey <tharvey@gateworks.com>, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	Markus Niebel <Markus.Niebel@tq-group.com>, linux-amarula@amarulasolutions.com, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Francesco Dolcini <francesco.dolcini@toradex.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Mon, Jun 9, 2025 at 5:01=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
>
> On Mon, 09 Jun 2025 12:15:33 +0200, Dario Binacchi wrote:
> > The series adds support for Engicam MicroGEA boards:
> >
> > - BMM
> > - RMM
> > - GTW
> >
> > based on MicroGEA-MX6UL SoM.
> >
> > Changes in v2:
> > - Change local-mac-address to 00 00 00 00 00 00. The actual value will
> >   be set by the bootloader. The previous one was assigned to Freescale
> >   Semiconductor.
> > - Move iomuxc and iomuxc_snvs nodes to the end of the DTS files.
> > - Drop an extra blank line from the DTS file.
> >
> > Dario Binacchi (10):
> >   dt-bindings: arm: fsl: support Engicam MicroGEA BMM board
> >   ARM: dts: imx6ul: support Engicam MicroGEA-MX6UL SoM
> >   ARM: dts: imx6ul: support Engicam MicroGEA BMM board
> >   ARM: imx_v6_v7_defconfig: cleanup mxs_defconfig
> >   ARM: imx_v6_v7_defconfig: select CONFIG_INPUT_PWM_BEEPER
> >   dt-bindings: arm: fsl: support Engicam MicroGEA RMM board
> >   ARM: dts: imx6ul: support Engicam MicroGEA RMM board
> >   dt-bindings: arm: fsl: support Engicam MicroGEA GTW board
> >   ARM: dts: imx6ul: support Engicam MicroGEA GTW board
> >   ARM: imx_v6_v7_defconfig: select CONFIG_USB_HSIC_USB3503
> >
> >  .../devicetree/bindings/arm/fsl.yaml          |   9 +
> >  arch/arm/boot/dts/nxp/imx/Makefile            |   3 +
> >  .../nxp/imx/imx6ull-engicam-microgea-bmm.dts  | 305 +++++++++++++++
> >  .../nxp/imx/imx6ull-engicam-microgea-gtw.dts  | 163 ++++++++
> >  .../nxp/imx/imx6ull-engicam-microgea-rmm.dts  | 362 ++++++++++++++++++
> >  .../dts/nxp/imx/imx6ull-engicam-microgea.dtsi |  96 +++++
> >  arch/arm/configs/imx_v6_v7_defconfig          |  27 +-
> >  7 files changed, 944 insertions(+), 21 deletions(-)
> >  create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-=
bmm.dts
> >  create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-=
gtw.dts
> >  create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-=
rmm.dts
> >  create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.=
dtsi
> >
> > --
> > 2.43.0
> >
> > base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> > branch: imx6ull-engicam-microgea
> >
> >
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi.

Yes, these warnings are generated by included .dtsi files and also appear i=
n
other boards that have already been merged into mainline.
IMHO I have already addressed and fixed the warnings introduced by my board=
s
during the tests executed before submitting the series.

Thanks and regards,
Dario

> Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>
>
> This patch series was applied (using b4) to base:
>  Base: using specified base-commit 19272b37aa4f83ca52bdf9c16d5d81bdd13544=
94
>
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>
> New warnings running 'make CHECK_DTBS=3Dy for arch/arm/boot/dts/nxp/' for=
 20250609101637.2322809-1-dario.binacchi@amarulasolutions.com:
>
> arch/arm/boot/dts/nxp/imx/imx6ull-colibri-aster.dtb: cpu@0 (arm,cortex-a7=
): Unevaluated properties are not allowed ('fsl,soc-operating-points', 'soc=
-supply' were unexpected)
>         from schema $id: http://devicetree.org/schemas/arm/cpus.yaml#
> arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dtb: cpu@0 (arm,co=
rtex-a7): Unevaluated properties are not allowed ('fsl,soc-operating-points=
', 'soc-supply' were unexpected)
>         from schema $id: http://devicetree.org/schemas/arm/cpus.yaml#
> arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dtb: nand-controll=
er@1806000 (fsl,imx6q-gpmi-nand): Unevaluated properties are not allowed ('=
nand-ecc-mode', 'nand-ecc-step-size', 'nand-ecc-strength', 'nand-on-flash-b=
bt' were unexpected)
>         from schema $id: http://devicetree.org/schemas/mtd/gpmi-nand.yaml=
#
> arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dtb: cpu@0 (arm,co=
rtex-a7): Unevaluated properties are not allowed ('fsl,soc-operating-points=
', 'soc-supply' were unexpected)
>         from schema $id: http://devicetree.org/schemas/arm/cpus.yaml#
> arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dtb: nand-controll=
er@1806000 (fsl,imx6q-gpmi-nand): Unevaluated properties are not allowed ('=
nand-ecc-mode', 'nand-ecc-step-size', 'nand-ecc-strength', 'nand-on-flash-b=
bt' were unexpected)
>         from schema $id: http://devicetree.org/schemas/mtd/gpmi-nand.yaml=
#
> arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-gtw.dtb: cpu@0 (arm,co=
rtex-a7): Unevaluated properties are not allowed ('fsl,soc-operating-points=
', 'soc-supply' were unexpected)
>         from schema $id: http://devicetree.org/schemas/arm/cpus.yaml#
> arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-gtw.dtb: nand-controll=
er@1806000 (fsl,imx6q-gpmi-nand): Unevaluated properties are not allowed ('=
nand-ecc-mode', 'nand-ecc-step-size', 'nand-ecc-strength', 'nand-on-flash-b=
bt' were unexpected)
>         from schema $id: http://devicetree.org/schemas/mtd/gpmi-nand.yaml=
#
>
>
>
>
>


--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

