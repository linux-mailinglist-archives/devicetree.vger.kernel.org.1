Return-Path: <devicetree+bounces-152662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 715A8A49C18
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 15:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B359E7A701D
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 14:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412FD26FDB4;
	Fri, 28 Feb 2025 14:33:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61CFF26FDB2;
	Fri, 28 Feb 2025 14:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740753219; cv=none; b=M+lhU0imm1eomBk7exz+FuE8Wu/3qSU9vwXHq9MYsHA5P/BS8NGGCT/UBNSOVF4rJ4iUuqxLcJm9yDcdsTFiQr2CMa5N6aFKKG9gsyoCLlHl1JkAJjEMCuyHwf7JUw61Vkm//pWspiR4o2aONmsGeZIdRur2bpsKe7oHXu9QeQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740753219; c=relaxed/simple;
	bh=FQ+6MlUJ0JUYNMzI23swEOO9JD6hoPMF9gUhKJMwyKg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uj/ff9edAgw3Rh7iqJdbR6PZA0cCyr2yEP6CTHVgyyM+p4CjnVUk4bOahJ5Qhdi66TgYVqhi8XsKVhbFw7QyOr7Thpx54EwSsYmbtgPBaZWiyHobDNyZx6EUYCtyuDaS1CsoGMvw4nqQjOG9ycSsV7h/tWACq2kg2i9ulHbVrek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA9311515;
	Fri, 28 Feb 2025 06:33:50 -0800 (PST)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE8513F6A8;
	Fri, 28 Feb 2025 06:33:33 -0800 (PST)
Date: Fri, 28 Feb 2025 14:33:31 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai
 <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 15/15] clk: sunxi-ng: add support for the A523/T527
 PRCM CCU
Message-ID: <20250228143331.42153af3@donnerap.manchester.arm.com>
In-Reply-To: <3136553.CbtlEUcBR6@jernej-laptop>
References: <20250214125359.5204-1-andre.przywara@arm.com>
	<20250214125359.5204-16-andre.przywara@arm.com>
	<3136553.CbtlEUcBR6@jernej-laptop>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 18 Feb 2025 21:42:06 +0100
Jernej =C5=A0krabec <jernej.skrabec@gmail.com> wrote:

Hi,

> Dne petek, 14. februar 2025 ob 13:53:59 Srednjeevropski standardni =C4=8D=
as je Andre Przywara napisal(a):
> > The A523/T527 SoCs have clock/reset controls in the PRCM part, like many
> > previous SoCs. For a change, the whole PRCM is documented in the A523
> > manual, including the system bus tree, so we can describe all those
> > clocks correctly based on that. There layout seems to be derived from
> > the H6 and H616 PRCM CCUs, though there are more clocks, and many clocks
> > have subtly changed.
> >=20
> > Describe all the mod and gate clocks, including the three bus clocks
> > (R_AHB, R_APB0, and R_APB1).
> >=20
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  drivers/clk/sunxi-ng/Kconfig             |   5 +
> >  drivers/clk/sunxi-ng/Makefile            |   2 +
> >  drivers/clk/sunxi-ng/ccu-sun55i-a523-r.c | 245 +++++++++++++++++++++++
> >  drivers/clk/sunxi-ng/ccu-sun55i-a523-r.h |  14 ++
> >  4 files changed, 266 insertions(+)
> >  create mode 100644 drivers/clk/sunxi-ng/ccu-sun55i-a523-r.c
> >  create mode 100644 drivers/clk/sunxi-ng/ccu-sun55i-a523-r.h
> >=20
> > diff --git a/drivers/clk/sunxi-ng/Kconfig b/drivers/clk/sunxi-ng/Kconfig
> > index 04efbda847cf9..5830a9d87bf25 100644
> > --- a/drivers/clk/sunxi-ng/Kconfig
> > +++ b/drivers/clk/sunxi-ng/Kconfig
> > @@ -57,6 +57,11 @@ config SUN55I_A523_CCU
> >  	default y
> >  	depends on ARM64 || COMPILE_TEST
> > =20
> > +config SUN55I_A523_R_CCU
> > +	tristate "Support for the Allwinner A523/T527 PRCM CCU"
> > +	default y
> > +	depends on ARM64 || COMPILE_TEST
> > +
> >  config SUN4I_A10_CCU
> >  	tristate "Support for the Allwinner A10/A20 CCU"
> >  	default y
> > diff --git a/drivers/clk/sunxi-ng/Makefile b/drivers/clk/sunxi-ng/Makef=
ile
> > index 01a887f7824bb..82e471036de69 100644
> > --- a/drivers/clk/sunxi-ng/Makefile
> > +++ b/drivers/clk/sunxi-ng/Makefile
> > @@ -34,6 +34,7 @@ obj-$(CONFIG_SUN50I_H6_CCU)	+=3D sun50i-h6-ccu.o
> >  obj-$(CONFIG_SUN50I_H6_R_CCU)	+=3D sun50i-h6-r-ccu.o
> >  obj-$(CONFIG_SUN50I_H616_CCU)	+=3D sun50i-h616-ccu.o
> >  obj-$(CONFIG_SUN55I_A523_CCU)	+=3D sun55i-a523-ccu.o
> > +obj-$(CONFIG_SUN55I_A523_R_CCU)	+=3D sun55i-a523-r-ccu.o
> >  obj-$(CONFIG_SUN4I_A10_CCU)	+=3D sun4i-a10-ccu.o
> >  obj-$(CONFIG_SUN5I_CCU)		+=3D sun5i-ccu.o
> >  obj-$(CONFIG_SUN6I_A31_CCU)	+=3D sun6i-a31-ccu.o
> > @@ -60,6 +61,7 @@ sun50i-h6-ccu-y			+=3D ccu-sun50i-h6.o
> >  sun50i-h6-r-ccu-y		+=3D ccu-sun50i-h6-r.o
> >  sun50i-h616-ccu-y		+=3D ccu-sun50i-h616.o
> >  sun55i-a523-ccu-y		+=3D ccu-sun55i-a523.o
> > +sun55i-a523-r-ccu-y		+=3D ccu-sun55i-a523-r.o
> >  sun4i-a10-ccu-y			+=3D ccu-sun4i-a10.o
> >  sun5i-ccu-y			+=3D ccu-sun5i.o
> >  sun6i-a31-ccu-y			+=3D ccu-sun6i-a31.o
> > diff --git a/drivers/clk/sunxi-ng/ccu-sun55i-a523-r.c b/drivers/clk/sun=
xi-ng/ccu-sun55i-a523-r.c
> > new file mode 100644
> > index 0000000000000..0dafc38370f22
> > --- /dev/null
> > +++ b/drivers/clk/sunxi-ng/ccu-sun55i-a523-r.c
> > @@ -0,0 +1,245 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2024 Arm Ltd.
> > + * Based on the D1 CCU driver:
> > + *   Copyright (c) 2020 huangzhenwei@allwinnertech.com
> > + *   Copyright (C) 2021 Samuel Holland <samuel@sholland.org>
> > + */
> > +
> > +#include <linux/clk-provider.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +
> > +#include "ccu_common.h"
> > +#include "ccu_reset.h"
> > +
> > +#include "ccu_gate.h"
> > +#include "ccu_mp.h"
> > +
> > +#include "ccu-sun55i-a523-r.h"
> > +
> > +static const struct clk_parent_data r_ahb_apb_parents[] =3D {
> > +	{ .fw_name =3D "hosc" },
> > +	{ .fw_name =3D "losc" },
> > +	{ .fw_name =3D "iosc" },
> > +	{ .fw_name =3D "pll-periph" },
> > +	{ .fw_name =3D "pll-audio" }, =20
>=20
> I believe pll-periph has /3 divider and pll-audio x4 multiplier.

Well, it's actually worse, since the audio PLL is the one from the MCU
CCU (PLL_AUDIO1), which we don't support yet.
But those are just the names used in the DT, should they actually reflect
the dividers and multipliers in their string?

> > +};
> > +static SUNXI_CCU_M_DATA_WITH_MUX(r_ahb_clk, "r-ahb",
> > +				 r_ahb_apb_parents, 0x000,
> > +				 0, 5,	/* M */
> > +				 24, 3,	/* mux */
> > +				 0);
> > +
> > +static SUNXI_CCU_M_DATA_WITH_MUX(r_apb0_clk, "r-apb0",
> > +				 r_ahb_apb_parents, 0x00c,
> > +				 0, 5,	/* M */
> > +				 24, 3,	/* mux */
> > +				 0);
> > +
> > +static SUNXI_CCU_M_DATA_WITH_MUX(r_apb1_clk, "r-apb1",
> > +				 r_ahb_apb_parents, 0x010,
> > +				 0, 5,	/* M */
> > +				 24, 3,	/* mux */
> > +				 0);
> > +
> > +static SUNXI_CCU_P_DATA_WITH_MUX_GATE(r_cpu_timer0, "r-timer0",
> > +				      r_ahb_apb_parents, 0x100,
> > +				      1, 3,	/* P */
> > +				      4, 3,	/* mux */
> > +				      BIT(0),
> > +				      0);
> > +static SUNXI_CCU_P_DATA_WITH_MUX_GATE(r_cpu_timer1, "r-timer1",
> > +				      r_ahb_apb_parents, 0x104,
> > +				      1, 3,	/* P */
> > +				      4, 3,	/* mux */
> > +				      BIT(0),
> > +				      0);
> > +static SUNXI_CCU_P_DATA_WITH_MUX_GATE(r_cpu_timer2, "r-timer2",
> > +				      r_ahb_apb_parents, 0x108,
> > +				      1, 3,	/* P */
> > +				      4, 3,	/* mux */
> > +				      BIT(0),
> > +				      0);
> > +
> > +static SUNXI_CCU_GATE_HW(bus_r_timer_clk, "bus-r-timer", &r_ahb_clk.co=
mmon.hw,
> > +			 0x11c, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_twd_clk,	"bus-r-twd", &r_apb0_clk.commo=
n.hw,
> > +			 0x12c, BIT(0), 0);
> > +
> > +static const struct clk_parent_data r_pwmctrl_parents[] =3D {
> > +	{ .fw_name =3D "hosc" },
> > +	{ .fw_name =3D "losc" },
> > +	{ .fw_name =3D "iosc" },
> > +};
> > +static SUNXI_CCU_MUX_DATA_WITH_GATE(r_pwmctrl_clk, "r-pwmctrl",
> > +				  r_pwmctrl_parents, 0x130,
> > +				  24, 1,	/* mux */ =20
>=20
> Mux width is 2.

Thanks, fixed.

>=20
> > +				  BIT(31),
> > +				  0);
> > +static SUNXI_CCU_GATE_HW(bus_r_pwmctrl_clk, "bus-r-pwmctrl",
> > +			 &r_apb0_clk.common.hw, 0x13c, BIT(0), 0);
> > +
> > +/* SPI clock is /M/N (same as new MMC?) */ =20
>=20
> Missing SPI clock (reg 0x150).

I deliberately left that out, since its parent list is annoyingly insane,
and includes that PLL_AUDIO1 which we don't support yet. I reserved a
symbol for it, but was wondering if we could add it later?

Cheers,
Andre

>=20
> > +static SUNXI_CCU_GATE_HW(bus_r_spi_clk, "bus-r-spi",
> > +			 &r_ahb_clk.common.hw, 0x15c, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_spinlock_clk, "bus-r-spinlock",
> > +			 &r_ahb_clk.common.hw, 0x16c, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_msgbox_clk, "bus-r-msgbox",
> > +			 &r_ahb_clk.common.hw, 0x17c, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_uart0_clk, "bus-r-uart0",
> > +			 &r_apb1_clk.common.hw, 0x18c, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_uart1_clk, "bus-r-uart1",
> > +			 &r_apb1_clk.common.hw, 0x18c, BIT(1), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_i2c0_clk, "bus-r-i2c0",
> > +			 &r_apb1_clk.common.hw, 0x19c, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_i2c1_clk, "bus-r-i2c1",
> > +			 &r_apb1_clk.common.hw, 0x19c, BIT(1), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_i2c2_clk, "bus-r-i2c2",
> > +			 &r_apb1_clk.common.hw, 0x19c, BIT(2), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_ppu0_clk, "bus-r-ppu0",
> > +			 &r_apb0_clk.common.hw, 0x1ac, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_ppu1_clk, "bus-r-ppu1",
> > +			 &r_apb0_clk.common.hw, 0x1ac, BIT(1), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_cpu_bist_clk, "bus-r-cpu-bist",
> > +			 &r_apb0_clk.common.hw, 0x1bc, BIT(0), 0);
> > +
> > +static const struct clk_parent_data r_ir_rx_parents[] =3D {
> > +	{ .fw_name =3D "losc" },
> > +	{ .fw_name =3D "hosc" },
> > +};
> > +static SUNXI_CCU_M_DATA_WITH_MUX_GATE(r_ir_rx_clk, "r-ir-rx",
> > +				      r_ir_rx_parents, 0x1c0,
> > +				      0, 5,	/* M */
> > +				      24, 2,	/* mux */
> > +				      BIT(31),	/* gate */
> > +				      0);
> > +static SUNXI_CCU_GATE_HW(bus_r_ir_rx_clk, "bus-r-ir-rx",
> > +			 &r_apb0_clk.common.hw, 0x1cc, BIT(0), 0);
> > +
> > +static SUNXI_CCU_GATE_HW(bus_r_dma_clk, "bus-r-dma",
> > +			 &r_apb0_clk.common.hw, 0x1dc, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_rtc_clk, "bus-r-rtc",
> > +			 &r_apb0_clk.common.hw, 0x20c, BIT(0), 0);
> > +static SUNXI_CCU_GATE_HW(bus_r_cpucfg_clk, "bus-r-cpucfg",
> > +			 &r_apb0_clk.common.hw, 0x22c, BIT(0), 0);
> > +
> > +static struct ccu_common *sun55i_a523_r_ccu_clks[] =3D {
> > +	&r_ahb_clk.common,
> > +	&r_apb0_clk.common,
> > +	&r_apb1_clk.common,
> > +	&r_cpu_timer0.common,
> > +	&r_cpu_timer1.common,
> > +	&r_cpu_timer2.common,
> > +	&bus_r_timer_clk.common,
> > +	&bus_r_twd_clk.common,
> > +	&r_pwmctrl_clk.common,
> > +	&bus_r_pwmctrl_clk.common,
> > +	&bus_r_spi_clk.common,
> > +	&bus_r_spinlock_clk.common,
> > +	&bus_r_msgbox_clk.common,
> > +	&bus_r_uart0_clk.common,
> > +	&bus_r_uart1_clk.common,
> > +	&bus_r_i2c0_clk.common,
> > +	&bus_r_i2c1_clk.common,
> > +	&bus_r_i2c2_clk.common,
> > +	&bus_r_ppu0_clk.common,
> > +	&bus_r_ppu1_clk.common,
> > +	&bus_r_cpu_bist_clk.common,
> > +	&r_ir_rx_clk.common,
> > +	&bus_r_ir_rx_clk.common,
> > +	&bus_r_dma_clk.common,
> > +	&bus_r_rtc_clk.common,
> > +	&bus_r_cpucfg_clk.common,
> > +};
> > +
> > +static struct clk_hw_onecell_data sun55i_a523_r_hw_clks =3D {
> > +	.num	=3D CLK_NUMBER,
> > +	.hws	=3D {
> > +		[CLK_R_AHB]		=3D &r_ahb_clk.common.hw,
> > +		[CLK_R_APB0]		=3D &r_apb0_clk.common.hw,
> > +		[CLK_R_APB1]		=3D &r_apb1_clk.common.hw,
> > +		[CLK_R_TIMER0]		=3D &r_cpu_timer0.common.hw,
> > +		[CLK_R_TIMER1]		=3D &r_cpu_timer1.common.hw,
> > +		[CLK_R_TIMER2]		=3D &r_cpu_timer2.common.hw,
> > +		[CLK_BUS_R_TIMER]	=3D &bus_r_timer_clk.common.hw,
> > +		[CLK_BUS_R_TWD]		=3D &bus_r_twd_clk.common.hw,
> > +		[CLK_R_PWMCTRL]		=3D &r_pwmctrl_clk.common.hw,
> > +		[CLK_BUS_R_PWMCTRL]	=3D &bus_r_pwmctrl_clk.common.hw,
> > +		[CLK_BUS_R_SPI]		=3D &bus_r_spi_clk.common.hw,
> > +		[CLK_BUS_R_SPINLOCK]	=3D &bus_r_spinlock_clk.common.hw,
> > +		[CLK_BUS_R_MSGBOX]	=3D &bus_r_msgbox_clk.common.hw,
> > +		[CLK_BUS_R_UART0]	=3D &bus_r_uart0_clk.common.hw,
> > +		[CLK_BUS_R_UART1]	=3D &bus_r_uart1_clk.common.hw,
> > +		[CLK_BUS_R_I2C0]	=3D &bus_r_i2c0_clk.common.hw,
> > +		[CLK_BUS_R_I2C1]	=3D &bus_r_i2c1_clk.common.hw,
> > +		[CLK_BUS_R_I2C2]	=3D &bus_r_i2c2_clk.common.hw,
> > +		[CLK_BUS_R_PPU0]	=3D &bus_r_ppu0_clk.common.hw,
> > +		[CLK_BUS_R_PPU1]	=3D &bus_r_ppu1_clk.common.hw,
> > +		[CLK_BUS_R_CPU_BIST]	=3D &bus_r_cpu_bist_clk.common.hw,
> > +		[CLK_R_IR_RX]		=3D &r_ir_rx_clk.common.hw,
> > +		[CLK_BUS_R_IR_RX]	=3D &bus_r_ir_rx_clk.common.hw,
> > +		[CLK_BUS_R_DMA]		=3D &bus_r_dma_clk.common.hw,
> > +		[CLK_BUS_R_RTC]		=3D &bus_r_rtc_clk.common.hw,
> > +		[CLK_BUS_R_CPUCFG]	=3D &bus_r_cpucfg_clk.common.hw,
> > +	},
> > +};
> > +
> > +static struct ccu_reset_map sun55i_a523_r_ccu_resets[] =3D {
> > +	[RST_BUS_R_TIMER]	=3D { 0x11c, BIT(16) },
> > +	[RST_BUS_R_TWD]		=3D { 0x12c, BIT(16) },
> > +	[RST_BUS_R_PWMCTRL]	=3D { 0x13c, BIT(16) },
> > +	[RST_BUS_R_SPI]		=3D { 0x15c, BIT(16) },
> > +	[RST_BUS_R_SPINLOCK]	=3D { 0x16c, BIT(16) },
> > +	[RST_BUS_R_MSGBOX]	=3D { 0x17c, BIT(16) },
> > +	[RST_BUS_R_UART0]	=3D { 0x18c, BIT(16) },
> > +	[RST_BUS_R_UART1]	=3D { 0x18c, BIT(17) },
> > +	[RST_BUS_R_I2C0]	=3D { 0x19c, BIT(16) },
> > +	[RST_BUS_R_I2C1]	=3D { 0x19c, BIT(17) },
> > +	[RST_BUS_R_I2C2]	=3D { 0x19c, BIT(18) },
> > +	[RST_BUS_R_PPU1]	=3D { 0x1ac, BIT(17) },
> > +	[RST_BUS_R_IR_RX]	=3D { 0x1cc, BIT(16) },
> > +	[RST_BUS_R_RTC]		=3D { 0x20c, BIT(16) },
> > +	[RST_BUS_R_CPUCFG]	=3D { 0x22c, BIT(16) },
> > +};
> > +
> > +static const struct sunxi_ccu_desc sun55i_a523_r_ccu_desc =3D {
> > +	.ccu_clks	=3D sun55i_a523_r_ccu_clks,
> > +	.num_ccu_clks	=3D ARRAY_SIZE(sun55i_a523_r_ccu_clks),
> > +
> > +	.hw_clks	=3D &sun55i_a523_r_hw_clks,
> > +
> > +	.resets		=3D sun55i_a523_r_ccu_resets,
> > +	.num_resets	=3D ARRAY_SIZE(sun55i_a523_r_ccu_resets),
> > +};
> > +
> > +static int sun55i_a523_r_ccu_probe(struct platform_device *pdev)
> > +{
> > +	void __iomem *reg;
> > +
> > +	reg =3D devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(reg))
> > +		return PTR_ERR(reg);
> > +
> > +	return devm_sunxi_ccu_probe(&pdev->dev, reg, &sun55i_a523_r_ccu_desc);
> > +}
> > +
> > +static const struct of_device_id sun55i_a523_r_ccu_ids[] =3D {
> > +	{ .compatible =3D "allwinner,sun55i-a523-r-ccu" },
> > +	{ }
> > +};
> > +MODULE_DEVICE_TABLE(of, sun55i_a523_r_ccu_ids);
> > +
> > +static struct platform_driver sun55i_a523_r_ccu_driver =3D {
> > +	.probe	=3D sun55i_a523_r_ccu_probe,
> > +	.driver	=3D {
> > +		.name			=3D "sun55i-a523-r-ccu",
> > +		.suppress_bind_attrs	=3D true,
> > +		.of_match_table		=3D sun55i_a523_r_ccu_ids,
> > +	},
> > +};
> > +module_platform_driver(sun55i_a523_r_ccu_driver);
> > +
> > +MODULE_IMPORT_NS("SUNXI_CCU");
> > +MODULE_DESCRIPTION("Support for the Allwinner A523 PRCM CCU");
> > +MODULE_LICENSE("GPL");
> > diff --git a/drivers/clk/sunxi-ng/ccu-sun55i-a523-r.h b/drivers/clk/sun=
xi-ng/ccu-sun55i-a523-r.h
> > new file mode 100644
> > index 0000000000000..d50f46ac4f3fe
> > --- /dev/null
> > +++ b/drivers/clk/sunxi-ng/ccu-sun55i-a523-r.h
> > @@ -0,0 +1,14 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright 2024 Arm Ltd.
> > + */
> > +
> > +#ifndef _CCU_SUN55I_A523_R_H
> > +#define _CCU_SUN55I_A523_R_H
> > +
> > +#include <dt-bindings/clock/sun55i-a523-r-ccu.h>
> > +#include <dt-bindings/reset/sun55i-a523-r-ccu.h>
> > +
> > +#define CLK_NUMBER	(CLK_BUS_R_CPUCFG + 1)
> > +
> > +#endif /* _CCU_SUN55I_A523_R_H */
> >  =20
>=20
>=20
>=20
>=20


