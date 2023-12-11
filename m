Return-Path: <devicetree+bounces-24012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7959480D49F
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:52:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A97BF1C21765
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C17484EB4C;
	Mon, 11 Dec 2023 17:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEzttKnD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5ACD4E633
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 17:51:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DDC9C433BA;
	Mon, 11 Dec 2023 17:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702317092;
	bh=KHMh/NBx+V9FvchM6XxlPhtECkX5wYvdlSDH+eZVU08=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hEzttKnDkrXNAEagjD5WXl80DgU5a9fgE8TAygVuTVZ3vhHzBPcwXNEfM550M0wtL
	 lARFMjm8xVChvr0Bq/aOfG971STwxzTwnujmWFxFyl01DpjCP9LJLK2CyaeJXLQViQ
	 shGdLcnNkbbmSRD/tRn00VdTBqWC+F3xhOzXatbO4caE4XmGSbsKm5PmlNO5vwM0h1
	 kk83EiIxvziQqm3Mj0h3Dh6urtYkMnrpLQzt3RACPeV/n139Vytwn+aOWquOMOycnI
	 EAs33MlTE+6wZ83GmfOkZB44PzyhPExzaHr4RiunGQVti5dMMTMnC9I3GMfacpR/dc
	 bvIGM4XuB+RSA==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50be58a751cso5397183e87.2;
        Mon, 11 Dec 2023 09:51:32 -0800 (PST)
X-Gm-Message-State: AOJu0YzTxddLT/OKWxqx0f9Uyp+3A5QX0hh0dQXxlvC8cIPgyc9Am3xX
	dGrnCYs7zCiV/ZWDR0dYeErn0YfWIAG/B5pPzg==
X-Google-Smtp-Source: AGHT+IHiOu93WfH8l01zI34KfHkSlSHTJ1TyGTYqEU9hCnxbcVeLy8H3RzurBBb95xj/AfU4VIRFAO3HNR8zgtbLUTM=
X-Received: by 2002:ac2:4a91:0:b0:50c:11a2:ff38 with SMTP id
 l17-20020ac24a91000000b0050c11a2ff38mr1874745lfp.133.1702317090407; Mon, 11
 Dec 2023 09:51:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201105207.11786-1-tychang@realtek.com> <20231201105207.11786-3-tychang@realtek.com>
In-Reply-To: <20231201105207.11786-3-tychang@realtek.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 11 Dec 2023 11:51:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLg7qRgk_P1FTMVeC3Q-CJHx6WXH4hwnoz_Z2LVO10gTA@mail.gmail.com>
Message-ID: <CAL_JsqLg7qRgk_P1FTMVeC3Q-CJHx6WXH4hwnoz_Z2LVO10gTA@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: realtek: pcie: Add PCIe PHY support for Realtek
 DHC RTD SoCs
To: Tzuyi Chang <tychang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Stanley Chang <stanley_chang@realtek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 1, 2023 at 4:52=E2=80=AFAM Tzuyi Chang <tychang@realtek.com> wr=
ote:
>
> Implement the phy driver to support PCIe PHY for Realtek DHC (Digital Hom=
e
> Center) RTD SoCs.
>
> Signed-off-by: Tzuyi Chang <tychang@realtek.com>
> ---
>  drivers/phy/realtek/Kconfig        |   8 +
>  drivers/phy/realtek/Makefile       |   1 +
>  drivers/phy/realtek/phy-rtk-pcie.c | 738 +++++++++++++++++++++++++++++
>  3 files changed, 747 insertions(+)
>  create mode 100644 drivers/phy/realtek/phy-rtk-pcie.c
>
> diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
> index 75ac7e7c31ae..11c51f3714f1 100644
> --- a/drivers/phy/realtek/Kconfig
> +++ b/drivers/phy/realtek/Kconfig
> @@ -29,4 +29,12 @@ config PHY_RTK_RTD_USB3PHY
>           DWC3 USB IP. This driver will do the PHY initialization
>           of the parameters.
>
> +config PHY_RTD_PCIE
> +       tristate "Realtek RTD PCIe PHY driver"
> +       depends on OF
> +       select GENERIC_PHY
> +       help
> +         Enable this to support the PCIe PHY on Realtek DHC (digital hom=
e center)
> +         RTD series SoCs.
> +
>  endif # ARCH_REALTEK || COMPILE_TEST
> diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
> index ed7b47ff8a26..a1f0ad199476 100644
> --- a/drivers/phy/realtek/Makefile
> +++ b/drivers/phy/realtek/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)      +=3D phy-rtk-usb2.o
>  obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)      +=3D phy-rtk-usb3.o
> +obj-$(CONFIG_PHY_RTD_PCIE)                     +=3D phy-rtk-pcie.o
> diff --git a/drivers/phy/realtek/phy-rtk-pcie.c b/drivers/phy/realtek/phy=
-rtk-pcie.c
> new file mode 100644
> index 000000000000..8ec845890271
> --- /dev/null
> +++ b/drivers/phy/realtek/phy-rtk-pcie.c
> @@ -0,0 +1,738 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Realtek DHC PCIe PHY driver
> + *
> + * Copyright (c) 2023 Realtek Semiconductor Corp.
> + */
> +
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-consumer.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>

You probably don't need this header and the implicit includes it makes
are dropped now in linux-next. Please check what you actually need and
make them explicit.

of_address.h is likely not needed either. Please check.

Rob

