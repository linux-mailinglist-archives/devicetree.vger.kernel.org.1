Return-Path: <devicetree+bounces-121073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 416979C51DF
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 10:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DC061F24096
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 09:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F292123D4;
	Tue, 12 Nov 2024 09:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="ZpBIhayu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D60E212194
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 09:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731403363; cv=none; b=TJqs/75KTvXupT4Xs/Xwl0f7bWddlfKPPI99WaByWA8TddibT6kIOXytbAiVZZFVK3rvHOaZq3lj9otKFeN4hAjrW6WoW08KQp0xIhY8Wu3r+JTtwkyBaW5et449uPCQbdP6GNJzeQeWU+FPfjIFpNYXvzu5eMGeSsxVWO5NWv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731403363; c=relaxed/simple;
	bh=PQop9UWE0g9UaBXzYBUWiq0voC+EnYNiox/fbGZZvlc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IaSvam2PZFJPtuhr7dLISpGyWxg0u08VcwV/VAT/FYE1CtEHZmifmDf0l9gUZDJEUvQv+GudobIUAfyoLsr4RCGBiQpllQeGPNRgHAOy+WZyIk1euX9EC6yLJfw45L7hgEEcr0N9YY6ma9bAqKuvNB18S52CDTVIyEzPkHJ5r1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=ZpBIhayu; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-20c77459558so49117305ad.0
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 01:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1731403358; x=1732008158; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hpVqwRBEvMEtedxfTPzGqP78gTKUWfltqg2sr669R3o=;
        b=ZpBIhayu8ommCpnbCsfNYcxGSj1wKXDdCJVZlF2gjsa4ikWtMnw3m+qrWetaJVAQEa
         9Jj//QFFPOMpNUxjWcimVTdhb95CsDmh2Tz7Km/YE5hs6J94KaEmpzmyFOpTRDiad8/M
         5DpxxJIP9mhv0S/DmjBGr2ss2PFfoXwEnkrxxOYnMdtzhRbbh2ipVf4NO0wOToEG3HeF
         fRNHkzwDzxJ4aWh1tuOZcXshOsb65FNPYrFHnyBIWY+FdRIbRRz9gJyTB2MmsrijOyHj
         tuxyMsm1lOSNS/XEw8f+mM9l3wQZEeozqxLm4FUSGEvnDEp45/8B6FSEJ9FvgMzFBi1x
         E4Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731403358; x=1732008158;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hpVqwRBEvMEtedxfTPzGqP78gTKUWfltqg2sr669R3o=;
        b=M9WoJtONkn+ilUKbkBYmLKlTiJcOgD0Dir9I3o+/BkOhviZ09TACqmWZUea1Yq/Ifu
         LmbY3RPSTFfg0stRDgHBDUj1kQ0baLiLlTjRU60wJp5b6Npbgq8uwtA+H1KDBA10Ws+0
         qjWylwsOdOy7LXsjKECRSg8N7gVT0MLhTTN4YQiwJZIxQDH2kmRpYd0YEMV7JyWteCGq
         KQyQRkJmuOuytOOOno0Pl2GmG0kaQERCDAbSFQgmWoxfe762tEcWH5OuO0SNY/IkzG1Q
         kKL3A2NpxqHwU65d2KBpuhVz1EQ+ShTP4IMSTkKPAHA6x4vteSK/abuRkDw65gPPCmNK
         AQgg==
X-Forwarded-Encrypted: i=1; AJvYcCW3UnKDpBbF5PwOh7hm/2ThwzkzJiWTxm9pLp3Kzk4IBlXBrIJdo6+BMfHEMf7IPEE+3S+BztWEiDln@vger.kernel.org
X-Gm-Message-State: AOJu0YxkLGzlvaDQP73rTkj0z56UAr7G/dmOymtVjE0Fre0iw7PPYhfg
	dnXqmoLCB02EuQoXZFm8M5SbM4Lt8KQ5tM61j38UrZPAtZwxN0SKqbwdU/siWRDbFw+SLqf2wDJ
	iv07ux5nIfMCT14LSKYLpGD49RzpaIfMRgDiheA==
X-Google-Smtp-Source: AGHT+IFEuT4OaKTYPcygVxvzJgOkfREdZ4PCH6MzBHNFPLFjhiYTSZiEiAfCNly2qOA4r+TXSnVpFx/EJSwnx/S1coY=
X-Received: by 2002:a17:90a:e7d0:b0:2d8:dd14:79ed with SMTP id
 98e67ed59e1d1-2e9e4c9e8cbmr2703389a91.31.1731403358150; Tue, 12 Nov 2024
 01:22:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241007035235.2254138-1-ryan_chen@aspeedtech.com>
 <20241007035235.2254138-3-ryan_chen@aspeedtech.com> <9717830f-0efe-4921-81ab-40fa0cb143e9@9elements.com>
 <OS8PR06MB7541AA299ABFBB5A2AA1CDC5F2592@OS8PR06MB7541.apcprd06.prod.outlook.com>
In-Reply-To: <OS8PR06MB7541AA299ABFBB5A2AA1CDC5F2592@OS8PR06MB7541.apcprd06.prod.outlook.com>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Tue, 12 Nov 2024 14:52:26 +0530
Message-ID: <CABqG17hHnibPcpYehsSUm87vhS6_bSv7PObyh9p2W5gYWnaKQA@mail.gmail.com>
Subject: Re: [PATCH v15 2/3] i2c: aspeed: support AST2600 i2c new register
 mode driver
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: "brendan.higgins@linux.dev" <brendan.higgins@linux.dev>, 
	"benh@kernel.crashing.org" <benh@kernel.crashing.org>, "joel@jms.id.au" <joel@jms.id.au>, 
	"andi.shyti@kernel.org" <andi.shyti@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"andrew@codeconstruct.com.au" <andrew@codeconstruct.com.au>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	"andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Ryan,

On Tue, 12 Nov 2024 at 12:30, Ryan Chen <ryan_chen@aspeedtech.com> wrote:
>
> > Subject: Re: [PATCH v15 2/3] i2c: aspeed: support AST2600 i2c new register
> > mode driver
> >
> > Hi Ryan,
> >
> > I've tested the driver changes in my machine based on "SOC: AST2600-A3".
> >
> > I faced some issue testing the driver.
> > While the driver functions correctly in
> > Normal mode, I encountered issues when attempting to run it in DMA and
> > BUFF modes. Given the instability in these modes, I suspect there may be
> > misconfigurations in my device tree setup.
> >
> > Could you please provide a sample configuration for the device tree that would
> > ensure stable operation of the driver in both DMA and BUFF modes?
> >
> You may refer the following dtsi.
> https://github.com/AspeedTech-BMC/linux/blob/aspeed-master-v6.6/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi#L1334-L1357
That worked for me. Thanks a ton :)

Regards,
Naresh
>
> > Thank you for your support.
> >
> > Regards,
> > Naresh
> >
> >
> > On 07-10-2024 09:22:34, Ryan Chen wrote:
> > > Add i2c new register mode driver to support AST2600 i2c new register
> > > mode. AST2600 i2c controller have legacy and new register mode. The
> > > new register mode have global register support 4 base clock for scl
> > > clock selection, and new clock divider mode. The new register mode
> > > have separate register set to control i2c controller and target. This
> > > patch is for i2c controller mode driver.
> > >
> > > Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> > > ---
> > >   drivers/i2c/busses/Kconfig       |   11 +
> > >   drivers/i2c/busses/Makefile      |    1 +
> > >   drivers/i2c/busses/i2c-ast2600.c | 1032
> > ++++++++++++++++++++++++++++++
> > >   3 files changed, 1044 insertions(+)
> > >   create mode 100644 drivers/i2c/busses/i2c-ast2600.c
> > >
> > > diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> > > index a22f9125322a..abfb027350d4 100644
> > > --- a/drivers/i2c/busses/Kconfig
> > > +++ b/drivers/i2c/busses/Kconfig
> > > @@ -410,6 +410,17 @@ config I2C_ALTERA
> > >       This driver can also be built as a module.  If so, the module
> > >       will be called i2c-altera.
> > >
> > > +config I2C_AST2600
> > > +   tristate "Aspeed I2C v2 Controller"
> > > +   depends on ARCH_ASPEED || COMPILE_TEST
> > > +   select I2C_SMBUS
> > > +   help
> > > +     If you say yes to this option, support will be included for the
> > > +     Aspeed I2C controller with new register set.
> > > +
> > > +     This driver can also be built as a module.  If so, the module
> > > +     will be called i2c-ast2600.
> > > +
> > >   config I2C_ASPEED
> > >     tristate "Aspeed I2C Controller"
> > >     depends on ARCH_ASPEED || COMPILE_TEST diff --git
> > > a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile index
> > > 78d0561339e5..5665b60b1566 100644
> > > --- a/drivers/i2c/busses/Makefile
> > > +++ b/drivers/i2c/busses/Makefile
> > > @@ -39,6 +39,7 @@ obj-$(CONFIG_I2C_POWERMAC)        += i2c-powermac.o
> > >   obj-$(CONFIG_I2C_ALTERA)  += i2c-altera.o
> > >   obj-$(CONFIG_I2C_AMD_MP2) += i2c-amd-mp2-pci.o
> > i2c-amd-mp2-plat.o
> > >   obj-$(CONFIG_I2C_ASPEED)  += i2c-aspeed.o
> > > +obj-$(CONFIG_I2C_AST2600)  += i2c-ast2600.o
> > >   obj-$(CONFIG_I2C_AT91)            += i2c-at91.o
> > >   i2c-at91-objs                     := i2c-at91-core.o i2c-at91-master.o
> > >   ifeq ($(CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL),y)
> > > diff --git a/drivers/i2c/busses/i2c-ast2600.c
> > > b/drivers/i2c/busses/i2c-ast2600.c
> > > new file mode 100644
> > > index 000000000000..17ba0ee77c27
> > > --- /dev/null
> > > +++ b/drivers/i2c/busses/i2c-ast2600.c
> > > @@ -0,0 +1,1032 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/*
> > > + * ASPEED AST2600 new register set I2C controller driver
> > > + *
> > > + * Copyright (C) ASPEED Technology Inc.
> > > + */
> > > +#include <asm/unaligned.h>
> > > +#include <linux/array_size.h>
> > > +#include <linux/bits.h>
> > > +#include <linux/clk.h>
> > > +#include <linux/completion.h>
> > > +#include <linux/delay.h>
> > > +#include <linux/dma-mapping.h>
> > > +#include <linux/err.h>
> > > +#include <linux/i2c.h>
> > > +#include <linux/i2c-smbus.h>
> > > +#include <linux/interrupt.h>
> > > +#include <linux/io.h>
> > > +#include <linux/minmax.h>
> > > +#include <linux/mfd/syscon.h>
> > > +#include <linux/module.h>
> > > +#include <linux/platform_device.h>
> > > +#include <linux/property.h>
> > > +#include <linux/regmap.h>
> > > +#include <linux/reset.h>
> > > +#include <linux/slab.h>
> > > +#include <linux/string_helpers.h>
> > > +
> > > +#define AST2600_I2CG_ISR                   0x00
> > > +#define AST2600_I2CG_SLAVE_ISR             0x04
> > > +#define AST2600_I2CG_OWNER         0x08
> > > +#define AST2600_I2CG_CTRL          0x0C
> > > +#define AST2600_I2CG_CLK_DIV_CTRL  0x10
> > > +
> > > +#define AST2600_I2CG_SLAVE_PKT_NAK BIT(4)
> > > +#define AST2600_I2CG_M_S_SEPARATE_INTR     BIT(3)
> > > +#define AST2600_I2CG_CTRL_NEW_REG  BIT(2)
> > > +#define AST2600_I2CG_CTRL_NEW_CLK_DIV      BIT(1)
> > > +#define AST2600_GLOBAL_INIT        \
> > > +   (AST2600_I2CG_CTRL_NEW_REG |
> > AST2600_I2CG_CTRL_NEW_CLK_DIV)
> > > +/*
> > > + * APB clk : 100Mhz
> > > + * div     : scl           : baseclk [APB/((div/2) + 1)] : tBuf [1/bclk * 16]
> > > + * I2CG10[31:24] base clk4 for i2c auto recovery timeout counter
> > > +(0xC6)
> > > + * I2CG10[23:16] base clk3 for Standard-mode (100Khz) min tBuf 4.7us
> > > + * 0x3c : 100.8Khz : 3.225Mhz                                        : 4.96us
> > > + * 0x3d : 99.2Khz  : 3.174Mhz                                        : 5.04us
> > > + * 0x3e : 97.65Khz : 3.125Mhz                                        : 5.12us
> > > + * 0x40 : 97.75Khz : 3.03Mhz                                         : 5.28us
> > > + * 0x41 : 99.5Khz  : 2.98Mhz                                         : 5.36us (default)
> > > + * I2CG10[15:8] base clk2 for Fast-mode (400Khz) min tBuf 1.3us
> > > + * 0x12 : 400Khz   : 10Mhz                                           : 1.6us
> > > + * I2CG10[7:0] base clk1 for Fast-mode Plus (1Mhz) min tBuf 0.5us
> > > + * 0x08 : 1Mhz             : 20Mhz                                           : 0.8us
> > > + */
> > > +#define I2CCG_DIV_CTRL 0xC6411208
> > > +
> > > +/* 0x00 : I2CC Controller/Target Function Control Register  */
> > > +#define AST2600_I2CC_FUN_CTRL              0x00
> > > +#define AST2600_I2CC_SLAVE_ADDR_RX_EN              BIT(20)
> > > +#define AST2600_I2CC_MASTER_RETRY_MASK             GENMASK(19, 18)
> > > +#define AST2600_I2CC_MASTER_RETRY(x)               (((x) & GENMASK(1, 0))
> > << 18)
> > > +#define AST2600_I2CC_BUS_AUTO_RELEASE              BIT(17)
> > > +#define AST2600_I2CC_M_SDA_LOCK_EN                 BIT(16)
> > > +#define AST2600_I2CC_MULTI_MASTER_DIS              BIT(15)
> > > +#define AST2600_I2CC_M_SCL_DRIVE_EN                        BIT(14)
> > > +#define AST2600_I2CC_MSB_STS                               BIT(9)
> > > +#define AST2600_I2CC_SDA_DRIVE_1T_EN               BIT(8)
> > > +#define AST2600_I2CC_M_SDA_DRIVE_1T_EN             BIT(7)
> > > +#define AST2600_I2CC_M_HIGH_SPEED_EN               BIT(6)
> > > +/* reserver 5 : 2 */
> > > +#define AST2600_I2CC_SLAVE_EN                      BIT(1)
> > > +#define AST2600_I2CC_MASTER_EN                     BIT(0)
> > > +
> > > +/* 0x04 : I2CC Controller/Target Clock and AC Timing Control Register #1 */
> > > +#define AST2600_I2CC_AC_TIMING             0x04
> > > +#define AST2600_I2CC_TTIMEOUT(x)                   (((x) & GENMASK(4, 0))
> > << 24)
> > > +#define AST2600_I2CC_TCKHIGHMIN(x)                 (((x) & GENMASK(3, 0))
> > << 20)
> > > +#define AST2600_I2CC_TCKHIGH(x)                    (((x) & GENMASK(3, 0)) << 16)
> > > +#define AST2600_I2CC_TCKLOW(x)                     (((x) & GENMASK(3, 0)) << 12)
> > > +#define AST2600_I2CC_THDDAT(x)                     (((x) & GENMASK(1, 0)) << 10)
> > > +#define AST2600_I2CC_TOUTBASECLK(x)                        (((x) & GENMASK(1,
> > 0)) << 8)
> > > +#define AST2600_I2CC_TBASECLK(x)                   ((x) & GENMASK(3, 0))
> > > +
> > > +/* 0x08 : I2CC Controller/Target Transmit/Receive Byte Buffer Register */
> > > +#define AST2600_I2CC_STS_AND_BUFF          0x08
> > > +#define AST2600_I2CC_TX_DIR_MASK                   GENMASK(31, 29)
> > > +#define AST2600_I2CC_SDA_OE                                BIT(28)
> > > +#define AST2600_I2CC_SDA_O                         BIT(27)
> > > +#define AST2600_I2CC_SCL_OE                                BIT(26)
> > > +#define AST2600_I2CC_SCL_O                         BIT(25)
> > > +
> > > +#define AST2600_I2CC_SCL_LINE_STS                  BIT(18)
> > > +#define AST2600_I2CC_SDA_LINE_STS                  BIT(17)
> > > +#define AST2600_I2CC_BUS_BUSY_STS                  BIT(16)
> > > +
> > > +#define AST2600_I2CC_GET_RX_BUFF(x)                        (((x) >> 8) &
> > GENMASK(7, 0))
> > > +
> > > +/* 0x0C : I2CC Controller/Target Pool Buffer Control Register  */
> > > +#define AST2600_I2CC_BUFF_CTRL             0x0C
> > > +#define AST2600_I2CC_GET_RX_BUF_LEN(x)      (((x) & GENMASK(29,
> > 24)) >> 24)
> > > +#define AST2600_I2CC_SET_RX_BUF_LEN(x)             (((((x) - 1) & GENMASK(4,
> > 0)) << 16) | BIT(0))
> > > +#define AST2600_I2CC_SET_TX_BUF_LEN(x)             (((((x) - 1) & GENMASK(4,
> > 0)) << 8) | BIT(0))
> > > +#define AST2600_I2CC_GET_TX_BUF_LEN(x)      ((((x) & GENMASK(12,
> > 8)) >> 8) + 1)
> > > +
> > > +/* 0x10 : I2CM Controller Interrupt Control Register */
> > > +#define AST2600_I2CM_IER                   0x10
> > > +/* 0x14 : I2CM Controller Interrupt Status Register   : WC */
> > > +#define AST2600_I2CM_ISR                   0x14
> > > +
> > > +#define AST2600_I2CM_PKT_TIMEOUT                   BIT(18)
> > > +#define AST2600_I2CM_PKT_ERROR                     BIT(17)
> > > +#define AST2600_I2CM_PKT_DONE                      BIT(16)
> > > +
> > > +#define AST2600_I2CM_BUS_RECOVER_FAIL              BIT(15)
> > > +#define AST2600_I2CM_SDA_DL_TO                     BIT(14)
> > > +#define AST2600_I2CM_BUS_RECOVER                   BIT(13)
> > > +#define AST2600_I2CM_SMBUS_ALT                     BIT(12)
> > > +
> > > +#define AST2600_I2CM_SCL_LOW_TO                    BIT(6)
> > > +#define AST2600_I2CM_ABNORMAL                      BIT(5)
> > > +#define AST2600_I2CM_NORMAL_STOP                   BIT(4)
> > > +#define AST2600_I2CM_ARBIT_LOSS                    BIT(3)
> > > +#define AST2600_I2CM_RX_DONE                       BIT(2)
> > > +#define AST2600_I2CM_TX_NAK                                BIT(1)
> > > +#define AST2600_I2CM_TX_ACK                                BIT(0)
> > > +
> > > +/* 0x18 : I2CM Controller Command/Status Register   */
> > > +#define AST2600_I2CM_CMD_STS               0x18
> > > +#define AST2600_I2CM_PKT_ADDR(x)                   (((x) & GENMASK(6, 0))
> > << 24)
> > > +#define AST2600_I2CM_PKT_EN                                BIT(16)
> > > +#define AST2600_I2CM_SDA_OE_OUT_DIR                        BIT(15)
> > > +#define AST2600_I2CM_SDA_O_OUT_DIR                 BIT(14)
> > > +#define AST2600_I2CM_SCL_OE_OUT_DIR                        BIT(13)
> > > +#define AST2600_I2CM_SCL_O_OUT_DIR                 BIT(12)
> > > +#define AST2600_I2CM_RECOVER_CMD_EN                        BIT(11)
> > > +
> > > +#define AST2600_I2CM_RX_DMA_EN                     BIT(9)
> > > +#define AST2600_I2CM_TX_DMA_EN                     BIT(8)
> > > +/* Command Bit */
> > > +#define AST2600_I2CM_RX_BUFF_EN                    BIT(7)
> > > +#define AST2600_I2CM_TX_BUFF_EN                    BIT(6)
> > > +#define AST2600_I2CM_STOP_CMD                      BIT(5)
> > > +#define AST2600_I2CM_RX_CMD_LAST                   BIT(4)
> > > +#define AST2600_I2CM_RX_CMD                                BIT(3)
> > > +
> > > +#define AST2600_I2CM_TX_CMD                                BIT(1)
> > > +#define AST2600_I2CM_START_CMD                     BIT(0)
> > > +
> > > +/* 0x1C : I2CM Controller DMA Transfer Length Register      */
> > > +#define AST2600_I2CM_DMA_LEN               0x1C
> > > +/* Tx Rx support length 1 ~ 4096 */
> > > +#define AST2600_I2CM_SET_RX_DMA_LEN(x)     ((((x) & GENMASK(11, 0))
> > << 16) | BIT(31))
> > > +#define AST2600_I2CM_SET_TX_DMA_LEN(x)     (((x) & GENMASK(11, 0))
> > | BIT(15))
> > > +
> > > +/* 0x20 : I2CS Target Interrupt Control Register   */
> > > +#define AST2600_I2CS_IER                   0x20
> > > +/* 0x24 : I2CS Target Interrupt Status Register     */
> > > +#define AST2600_I2CS_ISR                   0x24
> > > +
> > > +#define AST2600_I2CS_ADDR_INDICATE_MASK    GENMASK(31, 30)
> > > +#define AST2600_I2CS_SLAVE_PENDING                 BIT(29)
> > > +
> > > +#define AST2600_I2CS_WAIT_TX_DMA                   BIT(25)
> > > +#define AST2600_I2CS_WAIT_RX_DMA                   BIT(24)
> > > +
> > > +#define AST2600_I2CS_ADDR3_NAK                     BIT(22)
> > > +#define AST2600_I2CS_ADDR2_NAK                     BIT(21)
> > > +#define AST2600_I2CS_ADDR1_NAK                     BIT(20)
> > > +
> > > +#define AST2600_I2CS_ADDR_MASK                     GENMASK(19, 18)
> > > +#define AST2600_I2CS_PKT_ERROR                     BIT(17)
> > > +#define AST2600_I2CS_PKT_DONE                      BIT(16)
> > > +#define AST2600_I2CS_INACTIVE_TO                   BIT(15)
> > > +
> > > +#define AST2600_I2CS_SLAVE_MATCH                   BIT(7)
> > > +#define AST2600_I2CS_ABNOR_STOP                    BIT(5)
> > > +#define AST2600_I2CS_STOP                          BIT(4)
> > > +#define AST2600_I2CS_RX_DONE_NAK                   BIT(3)
> > > +#define AST2600_I2CS_RX_DONE                       BIT(2)
> > > +#define AST2600_I2CS_TX_NAK                                BIT(1)
> > > +#define AST2600_I2CS_TX_ACK                                BIT(0)
> > > +
> > > +/* 0x28 : I2CS Target CMD/Status Register   */
> > > +#define AST2600_I2CS_CMD_STS               0x28
> > > +#define AST2600_I2CS_ACTIVE_ALL                    GENMASK(18, 17)
> > > +#define AST2600_I2CS_PKT_MODE_EN                   BIT(16)
> > > +#define AST2600_I2CS_AUTO_NAK_NOADDR               BIT(15)
> > > +#define AST2600_I2CS_AUTO_NAK_EN                   BIT(14)
> > > +
> > > +#define AST2600_I2CS_ALT_EN                                BIT(10)
> > > +#define AST2600_I2CS_RX_DMA_EN                     BIT(9)
> > > +#define AST2600_I2CS_TX_DMA_EN                     BIT(8)
> > > +#define AST2600_I2CS_RX_BUFF_EN                    BIT(7)
> > > +#define AST2600_I2CS_TX_BUFF_EN                    BIT(6)
> > > +#define AST2600_I2CS_RX_CMD_LAST                   BIT(4)
> > > +
> > > +#define AST2600_I2CS_TX_CMD                                BIT(2)
> > > +
> > > +#define AST2600_I2CS_DMA_LEN               0x2C
> > > +#define AST2600_I2CS_SET_RX_DMA_LEN(x)     (((((x) - 1) & GENMASK(11, 0))
> > << 16) | BIT(31))
> > > +#define AST2600_I2CS_SET_TX_DMA_LEN(x)     ((((x) - 1) & GENMASK(11, 0))
> > | BIT(15))
> > > +
> > > +/* I2CM Controller DMA Tx Buffer Register   */
> > > +#define AST2600_I2CM_TX_DMA                        0x30
> > > +/* I2CM Controller DMA Rx Buffer Register  */
> > > +#define AST2600_I2CM_RX_DMA                        0x34
> > > +/* I2CS Target DMA Tx Buffer Register   */
> > > +#define AST2600_I2CS_TX_DMA                        0x38
> > > +/* I2CS Target DMA Rx Buffer Register   */
> > > +#define AST2600_I2CS_RX_DMA                        0x3C
> > > +
> > > +#define AST2600_I2CS_ADDR_CTRL             0x40
> > > +
> > > +#define    AST2600_I2CS_ADDR3_MASK         GENMASK(22, 16)
> > > +#define    AST2600_I2CS_ADDR2_MASK         GENMASK(14, 8)
> > > +#define    AST2600_I2CS_ADDR1_MASK         GENMASK(6, 0)
> > > +
> > > +#define AST2600_I2CM_DMA_LEN_STS           0x48
> > > +#define AST2600_I2CS_DMA_LEN_STS           0x4C
> > > +
> > > +#define AST2600_I2C_GET_TX_DMA_LEN(x)              ((x) & GENMASK(12, 0))
> > > +#define AST2600_I2C_GET_RX_DMA_LEN(x)        (((x) & GENMASK(28,
> > 16)) >> 16)
> > > +
> > > +/* 0x40 : Target Device Address Register */
> > > +#define AST2600_I2CS_ADDR3_ENABLE                  BIT(23)
> > > +#define AST2600_I2CS_ADDR3(x)                      ((x) << 16)
> > > +#define AST2600_I2CS_ADDR2_ENABLE                  BIT(15)
> > > +#define AST2600_I2CS_ADDR2(x)                      ((x) << 8)
> > > +#define AST2600_I2CS_ADDR1_ENABLE                  BIT(7)
> > > +#define AST2600_I2CS_ADDR1(x)                      (x)
> > > +
> > > +#define I2C_TARGET_MSG_BUF_SIZE            256
> > > +
> > > +#define AST2600_I2C_DMA_SIZE               4096
> > > +
> > > +#define CONTROLLER_TRIGGER_LAST_STOP
> >       (AST2600_I2CM_RX_CMD_LAST | AST2600_I2CM_STOP_CMD)
> > > +#define TARGET_TRIGGER_CMD (AST2600_I2CS_ACTIVE_ALL |
> > AST2600_I2CS_PKT_MODE_EN)
> > > +
> > > +#define AST_I2C_TIMEOUT_CLK                0x2
> > > +
> > > +enum xfer_mode {
> > > +   BYTE_MODE,
> > > +   BUFF_MODE,
> > > +   DMA_MODE,
> > > +};
> > > +
> > > +struct ast2600_i2c_bus {
> > > +   struct i2c_adapter      adap;
> > > +   struct device           *dev;
> > > +   void __iomem            *reg_base;
> > > +   struct regmap           *global_regs;
> > > +   struct reset_control    *rst;
> > > +   struct clk              *clk;
> > > +   struct i2c_timings      timing_info;
> > > +   struct completion       cmd_complete;
> > > +   struct i2c_msg          *msgs;
> > > +   u8                      *controller_dma_safe_buf;
> > > +   dma_addr_t              controller_dma_addr;
> > > +   u32                     apb_clk;
> > > +   u32                     timeout;
> > > +   int                     irq;
> > > +   int                     cmd_err;
> > > +   int                     msgs_index;
> > > +   int                     msgs_count;
> > > +   int                     controller_xfer_cnt;
> > > +   size_t                  buf_index;
> > > +   size_t                  buf_size;
> > > +   enum xfer_mode          mode;
> > > +   bool                    multi_master;
> > > +   /* Buffer mode */
> > > +   void __iomem            *buf_base;
> > > +   struct i2c_smbus_alert_setup    alert_data;
> > > +};
> > > +
> > > +static u32 ast2600_select_i2c_clock(struct ast2600_i2c_bus *i2c_bus)
> > > +{
> > > +   unsigned long base_clk[16];
> > > +   int baseclk_idx = 0;
> > > +   int divisor = 0;
> > > +   u32 clk_div_reg;
> > > +   u32 scl_low;
> > > +   u32 scl_high;
> > > +   u32 data;
> > > +
> > > +   regmap_read(i2c_bus->global_regs, AST2600_I2CG_CLK_DIV_CTRL,
> > > +&clk_div_reg);
> > > +
> > > +   for (int i = 0; i < ARRAY_SIZE(base_clk); i++) {
> > > +           if (i == 0)
> > > +                   base_clk[i] = i2c_bus->apb_clk;
> > > +           else if (i < 5)
> > > +                   base_clk[i] = (i2c_bus->apb_clk * 2) /
> > > +                      (((clk_div_reg >> ((i - 1) * 8)) & GENMASK(7, 0)) + 2);
> > > +           else
> > > +                   base_clk[i] = base_clk[4] >> (i - 5);
> > > +
> > > +           if ((base_clk[i] / i2c_bus->timing_info.bus_freq_hz) <= 32) {
> > > +                   baseclk_idx = i;
> > > +                   divisor = DIV_ROUND_UP(base_clk[i],
> > i2c_bus->timing_info.bus_freq_hz);
> > > +                   break;
> > > +           }
> > > +   }
> > > +   baseclk_idx = min(baseclk_idx, 15);
> > > +   divisor = min(divisor, 32);
> > > +   scl_low = min(divisor * 9 / 16 - 1, 15);
> > > +   scl_high = (divisor - scl_low - 2) & GENMASK(3, 0);
> > > +   data = (scl_high - 1) << 20 | scl_high << 16 | scl_low << 12 | baseclk_idx;
> > > +   if (i2c_bus->timeout) {
> > > +           data |= AST2600_I2CC_TOUTBASECLK(AST_I2C_TIMEOUT_CLK);
> > > +           data |= AST2600_I2CC_TTIMEOUT(i2c_bus->timeout);
> > > +   }
> > > +
> > > +   return data;
> > > +}
> > > +
> > > +static u8 ast2600_i2c_recover_bus(struct ast2600_i2c_bus *i2c_bus) {
> > > +   u32 state = readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF);
> > > +   int ret = 0;
> > > +   u32 ctrl;
> > > +   int r;
> > > +
> > > +   dev_dbg(i2c_bus->dev, "%d-bus recovery bus [%x]\n",
> > > +i2c_bus->adap.nr, state);
> > > +
> > > +   ctrl = readl(i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +
> > > +   /* Disable controller */
> > > +   writel(ctrl & ~(AST2600_I2CC_MASTER_EN | AST2600_I2CC_SLAVE_EN),
> > > +          i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +
> > > +   writel(readl(i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL) |
> > AST2600_I2CC_MASTER_EN,
> > > +          i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +
> > > +   reinit_completion(&i2c_bus->cmd_complete);
> > > +   i2c_bus->cmd_err = 0;
> > > +
> > > +   /* Check 0x14's SDA and SCL status */
> > > +   state = readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF);
> > > +   if (!(state & AST2600_I2CC_SDA_LINE_STS) && (state &
> > AST2600_I2CC_SCL_LINE_STS)) {
> > > +           writel(AST2600_I2CM_RECOVER_CMD_EN, i2c_bus->reg_base +
> > AST2600_I2CM_CMD_STS);
> > > +           r = wait_for_completion_timeout(&i2c_bus->cmd_complete,
> > i2c_bus->adap.timeout);
> > > +           if (r == 0) {
> > > +                   dev_dbg(i2c_bus->dev, "recovery timed out\n");
> > > +                   writel(ctrl, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +                   return -ETIMEDOUT;
> > > +           } else if (i2c_bus->cmd_err) {
> > > +                   dev_dbg(i2c_bus->dev, "recovery error\n");
> > > +                   ret = -EPROTO;
> > > +           }
> > > +   }
> > > +
> > > +   /* Recovery done */
> > > +   state = readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF);
> > > +   if (state & AST2600_I2CC_BUS_BUSY_STS) {
> > > +           dev_dbg(i2c_bus->dev, "Can't recover bus [%x]\n", state);
> > > +           ret = -EPROTO;
> > > +   }
> > > +
> > > +   /* restore original controller setting */
> > > +   writel(ctrl, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +   return ret;
> > > +}
> > > +
> > > +static int ast2600_i2c_setup_dma_tx(u32 cmd, struct ast2600_i2c_bus
> > > +*i2c_bus) {
> > > +   struct i2c_msg *msg = &i2c_bus->msgs[i2c_bus->msgs_index];
> > > +   int xfer_len;
> > > +   int ret;
> > > +
> > > +   cmd |= AST2600_I2CM_PKT_EN;
> > > +   xfer_len = msg->len - i2c_bus->controller_xfer_cnt;
> > > +   if (xfer_len > AST2600_I2C_DMA_SIZE)
> > > +           xfer_len = AST2600_I2C_DMA_SIZE;
> > > +   else if (i2c_bus->msgs_index + 1 == i2c_bus->msgs_count)
> > > +           cmd |= AST2600_I2CM_STOP_CMD;
> > > +
> > > +   if (cmd & AST2600_I2CM_START_CMD) {
> > > +           cmd |= AST2600_I2CM_PKT_ADDR(msg->addr);
> > > +           i2c_bus->controller_dma_safe_buf =
> > i2c_get_dma_safe_msg_buf(msg, 1);
> > > +           if (!i2c_bus->controller_dma_safe_buf)
> > > +                   return -ENOMEM;
> > > +           i2c_bus->controller_dma_addr =
> > > +                   dma_map_single(i2c_bus->dev,
> > i2c_bus->controller_dma_safe_buf,
> > > +                                  msg->len, DMA_TO_DEVICE);
> > > +           ret = dma_mapping_error(i2c_bus->dev,
> > i2c_bus->controller_dma_addr);
> > > +           if (ret) {
> > > +                   i2c_put_dma_safe_msg_buf(i2c_bus->controller_dma_safe_buf,
> > msg, false);
> > > +                   i2c_bus->controller_dma_safe_buf = NULL;
> > > +                   return ret;
> > > +           }
> > > +   }
> > > +
> > > +   if (xfer_len) {
> > > +           cmd |= AST2600_I2CM_TX_DMA_EN | AST2600_I2CM_TX_CMD;
> > > +           writel(AST2600_I2CM_SET_TX_DMA_LEN(xfer_len - 1),
> > > +                  i2c_bus->reg_base + AST2600_I2CM_DMA_LEN);
> > > +           writel(i2c_bus->controller_dma_addr +
> > i2c_bus->controller_xfer_cnt,
> > > +                  i2c_bus->reg_base + AST2600_I2CM_TX_DMA);
> > > +   }
> > > +
> > > +   writel(cmd, i2c_bus->reg_base + AST2600_I2CM_CMD_STS);
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int ast2600_i2c_setup_buff_tx(u32 cmd, struct ast2600_i2c_bus
> > > +*i2c_bus) {
> > > +   struct i2c_msg *msg = &i2c_bus->msgs[i2c_bus->msgs_index];
> > > +   u32 wbuf_dword;
> > > +   int xfer_len;
> > > +   int i;
> > > +
> > > +   cmd |= AST2600_I2CM_PKT_EN;
> > > +   xfer_len = msg->len - i2c_bus->controller_xfer_cnt;
> > > +   if (xfer_len > i2c_bus->buf_size)
> > > +           xfer_len = i2c_bus->buf_size;
> > > +   else if (i2c_bus->msgs_index + 1 == i2c_bus->msgs_count)
> > > +           cmd |= AST2600_I2CM_STOP_CMD;
> > > +
> > > +   if (cmd & AST2600_I2CM_START_CMD)
> > > +           cmd |= AST2600_I2CM_PKT_ADDR(msg->addr);
> > > +
> > > +   if (xfer_len) {
> > > +           cmd |= AST2600_I2CM_TX_BUFF_EN | AST2600_I2CM_TX_CMD;
> > > +           /*
> > > +            * The controller's buffer register supports dword writes only.
> > > +            * Therefore, write dwords to the buffer register in a 4-byte aligned,
> > > +            * and write the remaining unaligned data at the end.
> > > +            */
> > > +           for (i = 0; i < xfer_len; i += 4) {
> > > +                   int xfer_cnt = i2c_bus->controller_xfer_cnt + i;
> > > +
> > > +                   switch (min(xfer_len - i, 4) % 4) {
> > > +                   case 1:
> > > +                           wbuf_dword = msg->buf[xfer_cnt];
> > > +                           break;
> > > +                   case 2:
> > > +                           wbuf_dword = get_unaligned_le16(&msg->buf[xfer_cnt]);
> > > +                           break;
> > > +                   case 3:
> > > +                           wbuf_dword = get_unaligned_le24(&msg->buf[xfer_cnt]);
> > > +                           break;
> > > +                   default:
> > > +                           wbuf_dword = get_unaligned_le32(&msg->buf[xfer_cnt]);
> > > +                           break;
> > > +                   }
> > > +                   writel(wbuf_dword, i2c_bus->buf_base + i);
> > > +           }
> > > +           writel(AST2600_I2CC_SET_TX_BUF_LEN(xfer_len),
> > > +                  i2c_bus->reg_base + AST2600_I2CC_BUFF_CTRL);
> > > +   }
> > > +
> > > +   writel(cmd, i2c_bus->reg_base + AST2600_I2CM_CMD_STS);
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int ast2600_i2c_setup_byte_tx(u32 cmd, struct ast2600_i2c_bus
> > > +*i2c_bus) {
> > > +   struct i2c_msg *msg = &i2c_bus->msgs[i2c_bus->msgs_index];
> > > +   int xfer_len;
> > > +
> > > +   xfer_len = msg->len - i2c_bus->controller_xfer_cnt;
> > > +
> > > +   cmd |= AST2600_I2CM_PKT_EN;
> > > +
> > > +   if (cmd & AST2600_I2CM_START_CMD)
> > > +           cmd |= AST2600_I2CM_PKT_ADDR(msg->addr);
> > > +
> > > +   if ((i2c_bus->msgs_index + 1 == i2c_bus->msgs_count) &&
> > > +       ((i2c_bus->controller_xfer_cnt + 1) == msg->len))
> > > +           cmd |= AST2600_I2CM_STOP_CMD;
> > > +
> > > +   if (xfer_len) {
> > > +           cmd |= AST2600_I2CM_TX_CMD;
> > > +           writel(msg->buf[i2c_bus->controller_xfer_cnt],
> > > +                  i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF);
> > > +   }
> > > +
> > > +   writel(cmd, i2c_bus->reg_base + AST2600_I2CM_CMD_STS);
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int ast2600_i2c_setup_dma_rx(struct ast2600_i2c_bus *i2c_bus)
> > > +{
> > > +   struct i2c_msg *msg = &i2c_bus->msgs[i2c_bus->msgs_index];
> > > +   int xfer_len;
> > > +   u32 cmd;
> > > +   int ret;
> > > +
> > > +   cmd = AST2600_I2CM_PKT_EN | AST2600_I2CM_PKT_ADDR(msg->addr)
> > |
> > > +         AST2600_I2CM_START_CMD | AST2600_I2CM_RX_DMA_EN;
> > > +
> > > +   if (msg->flags & I2C_M_RECV_LEN) {
> > > +           xfer_len = 1;
> > > +   } else if (msg->len > AST2600_I2C_DMA_SIZE) {
> > > +           xfer_len = AST2600_I2C_DMA_SIZE;
> > > +   } else {
> > > +           xfer_len = msg->len;
> > > +           if (i2c_bus->msgs_index + 1 == i2c_bus->msgs_count)
> > > +                   cmd |= CONTROLLER_TRIGGER_LAST_STOP;
> > > +   }
> > > +   writel(AST2600_I2CM_SET_RX_DMA_LEN(xfer_len - 1),
> > i2c_bus->reg_base + AST2600_I2CM_DMA_LEN);
> > > +   i2c_bus->controller_dma_safe_buf = i2c_get_dma_safe_msg_buf(msg,
> > 1);
> > > +   if (!i2c_bus->controller_dma_safe_buf)
> > > +           return -ENOMEM;
> > > +   i2c_bus->controller_dma_addr =
> > > +           dma_map_single(i2c_bus->dev, i2c_bus->controller_dma_safe_buf,
> > > +                          msg->len, DMA_FROM_DEVICE);
> > > +   ret = dma_mapping_error(i2c_bus->dev, i2c_bus->controller_dma_addr);
> > > +   if (ret) {
> > > +           i2c_put_dma_safe_msg_buf(i2c_bus->controller_dma_safe_buf,
> > msg, false);
> > > +           i2c_bus->controller_dma_safe_buf = NULL;
> > > +           return ret;
> > > +   }
> > > +   writel(i2c_bus->controller_dma_addr, i2c_bus->reg_base +
> > > +AST2600_I2CM_RX_DMA);
> > > +
> > > +   writel(cmd, i2c_bus->reg_base + AST2600_I2CM_CMD_STS);
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int ast2600_i2c_setup_buff_rx(struct ast2600_i2c_bus *i2c_bus)
> > > +{
> > > +   struct i2c_msg *msg = &i2c_bus->msgs[i2c_bus->msgs_index];
> > > +   int xfer_len;
> > > +   u32 cmd;
> > > +
> > > +   cmd = AST2600_I2CM_PKT_EN | AST2600_I2CM_PKT_ADDR(msg->addr)
> > |
> > > +         AST2600_I2CM_START_CMD | AST2600_I2CM_RX_BUFF_EN;
> > > +
> > > +   if (msg->flags & I2C_M_RECV_LEN) {
> > > +           dev_dbg(i2c_bus->dev, "smbus read\n");
> > > +           xfer_len = 1;
> > > +   } else if (msg->len > i2c_bus->buf_size) {
> > > +           xfer_len = i2c_bus->buf_size;
> > > +   } else {
> > > +           xfer_len = msg->len;
> > > +           if (i2c_bus->msgs_index + 1 == i2c_bus->msgs_count)
> > > +                   cmd |= CONTROLLER_TRIGGER_LAST_STOP;
> > > +   }
> > > +   writel(AST2600_I2CC_SET_RX_BUF_LEN(xfer_len), i2c_bus->reg_base +
> > > +AST2600_I2CC_BUFF_CTRL);
> > > +
> > > +   writel(cmd, i2c_bus->reg_base + AST2600_I2CM_CMD_STS);
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int ast2600_i2c_setup_byte_rx(struct ast2600_i2c_bus *i2c_bus)
> > > +{
> > > +   struct i2c_msg *msg = &i2c_bus->msgs[i2c_bus->msgs_index];
> > > +   u32 cmd;
> > > +
> > > +   cmd = AST2600_I2CM_PKT_EN | AST2600_I2CM_PKT_ADDR(msg->addr)
> > |
> > > +         AST2600_I2CM_START_CMD | AST2600_I2CM_RX_CMD;
> > > +
> > > +   if (msg->flags & I2C_M_RECV_LEN) {
> > > +           dev_dbg(i2c_bus->dev, "smbus read\n");
> > > +   } else if (i2c_bus->msgs_index + 1 == i2c_bus->msgs_count) {
> > > +           if (msg->len == 1)
> > > +                   cmd |= CONTROLLER_TRIGGER_LAST_STOP;
> > > +   }
> > > +
> > > +   writel(cmd, i2c_bus->reg_base + AST2600_I2CM_CMD_STS);
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int ast2600_i2c_do_start(struct ast2600_i2c_bus *i2c_bus) {
> > > +   struct i2c_msg *msg = &i2c_bus->msgs[i2c_bus->msgs_index];
> > > +
> > > +   /* send start */
> > > +   dev_dbg(i2c_bus->dev, "[%d] %s %d byte%s %s 0x%02x\n",
> > > +           i2c_bus->msgs_index, str_read_write(msg->flags & I2C_M_RD),
> > > +           msg->len, str_plural(msg->len),
> > > +           msg->flags & I2C_M_RD ? "from" : "to", msg->addr);
> > > +
> > > +   i2c_bus->controller_xfer_cnt = 0;
> > > +   i2c_bus->buf_index = 0;
> > > +
> > > +   if (msg->flags & I2C_M_RD) {
> > > +           if (i2c_bus->mode == DMA_MODE)
> > > +                   return ast2600_i2c_setup_dma_rx(i2c_bus);
> > > +           else if (i2c_bus->mode == BUFF_MODE)
> > > +                   return ast2600_i2c_setup_buff_rx(i2c_bus);
> > > +           else
> > > +                   return ast2600_i2c_setup_byte_rx(i2c_bus);
> > > +   } else {
> > > +           if (i2c_bus->mode == DMA_MODE)
> > > +                   return
> > ast2600_i2c_setup_dma_tx(AST2600_I2CM_START_CMD, i2c_bus);
> > > +           else if (i2c_bus->mode == BUFF_MODE)
> > > +                   return ast2600_i2c_setup_buff_tx(AST2600_I2CM_START_CMD,
> > i2c_bus);
> > > +           else
> > > +                   return
> > ast2600_i2c_setup_byte_tx(AST2600_I2CM_START_CMD, i2c_bus);
> > > +   }
> > > +}
> > > +
> > > +static int ast2600_i2c_irq_err_to_errno(u32 irq_status) {
> > > +   if (irq_status & AST2600_I2CM_ARBIT_LOSS)
> > > +           return -EAGAIN;
> > > +   if (irq_status & (AST2600_I2CM_SDA_DL_TO |
> > AST2600_I2CM_SCL_LOW_TO))
> > > +           return -EBUSY;
> > > +   if (irq_status & (AST2600_I2CM_ABNORMAL))
> > > +           return -EPROTO;
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static void ast2600_i2c_controller_package_irq(struct ast2600_i2c_bus
> > > +*i2c_bus, u32 sts) {
> > > +   struct i2c_msg *msg = &i2c_bus->msgs[i2c_bus->msgs_index];
> > > +   u32 cmd = AST2600_I2CM_PKT_EN;
> > > +   int xfer_len;
> > > +   int i;
> > > +
> > > +   sts &= ~AST2600_I2CM_PKT_DONE;
> > > +   writel(AST2600_I2CM_PKT_DONE, i2c_bus->reg_base +
> > AST2600_I2CM_ISR);
> > > +   switch (sts) {
> > > +   case AST2600_I2CM_PKT_ERROR:
> > > +           i2c_bus->cmd_err = -EAGAIN;
> > > +           complete(&i2c_bus->cmd_complete);
> > > +           break;
> > > +   case AST2600_I2CM_PKT_ERROR | AST2600_I2CM_TX_NAK: /* a0 fix for
> > issue */
> > > +           fallthrough;
> > > +   case AST2600_I2CM_PKT_ERROR | AST2600_I2CM_TX_NAK |
> > AST2600_I2CM_NORMAL_STOP:
> > > +           i2c_bus->cmd_err = -ENXIO;
> > > +           complete(&i2c_bus->cmd_complete);
> > > +           break;
> > > +   case AST2600_I2CM_NORMAL_STOP:
> > > +           /* write 0 byte only have stop isr */
> > > +           i2c_bus->msgs_index++;
> > > +           if (i2c_bus->msgs_index < i2c_bus->msgs_count) {
> > > +                   if (ast2600_i2c_do_start(i2c_bus)) {
> > > +                           i2c_bus->cmd_err = -ENOMEM;
> > > +                           complete(&i2c_bus->cmd_complete);
> > > +                   }
> > > +           } else {
> > > +                   i2c_bus->cmd_err = i2c_bus->msgs_index;
> > > +                   complete(&i2c_bus->cmd_complete);
> > > +           }
> > > +           break;
> > > +   case AST2600_I2CM_TX_ACK:
> > > +   case AST2600_I2CM_TX_ACK | AST2600_I2CM_NORMAL_STOP:
> > > +           if (i2c_bus->mode == DMA_MODE)
> > > +                   xfer_len =
> > AST2600_I2C_GET_TX_DMA_LEN(readl(i2c_bus->reg_base +
> > > +                                                     AST2600_I2CM_DMA_LEN_STS));
> > > +           else if (i2c_bus->mode == BUFF_MODE)
> > > +                   xfer_len =
> > AST2600_I2CC_GET_TX_BUF_LEN(readl(i2c_bus->reg_base +
> > > +                                                      AST2600_I2CC_BUFF_CTRL));
> > > +           else
> > > +                   xfer_len = 1;
> > > +
> > > +           i2c_bus->controller_xfer_cnt += xfer_len;
> > > +
> > > +           if (i2c_bus->controller_xfer_cnt == msg->len) {
> > > +                   if (i2c_bus->mode == DMA_MODE) {
> > > +                           dma_unmap_single(i2c_bus->dev,
> > i2c_bus->controller_dma_addr,
> > > +                                            msg->len, DMA_TO_DEVICE);
> > > +
> >       i2c_put_dma_safe_msg_buf(i2c_bus->controller_dma_safe_buf,
> > > +                                                    msg, true);
> > > +                           i2c_bus->controller_dma_safe_buf = NULL;
> > > +                   }
> > > +                   i2c_bus->msgs_index++;
> > > +                   if (i2c_bus->msgs_index == i2c_bus->msgs_count) {
> > > +                           i2c_bus->cmd_err = i2c_bus->msgs_index;
> > > +                           complete(&i2c_bus->cmd_complete);
> > > +                   } else {
> > > +                           if (ast2600_i2c_do_start(i2c_bus)) {
> > > +                                   i2c_bus->cmd_err = -ENOMEM;
> > > +                                   complete(&i2c_bus->cmd_complete);
> > > +                           }
> > > +                   }
> > > +           } else {
> > > +                   if (i2c_bus->mode == DMA_MODE)
> > > +                           ast2600_i2c_setup_dma_tx(0, i2c_bus);
> > > +                   else if (i2c_bus->mode == BUFF_MODE)
> > > +                           ast2600_i2c_setup_buff_tx(0, i2c_bus);
> > > +                   else
> > > +                           ast2600_i2c_setup_byte_tx(0, i2c_bus);
> > > +           }
> > > +           break;
> > > +   case AST2600_I2CM_RX_DONE:
> > > +   case AST2600_I2CM_RX_DONE | AST2600_I2CM_NORMAL_STOP:
> > > +           /* do next rx */
> > > +           if (i2c_bus->mode == DMA_MODE) {
> > > +                   xfer_len =
> > AST2600_I2C_GET_RX_DMA_LEN(readl(i2c_bus->reg_base +
> > > +                                                               AST2600_I2CM_DMA_LEN_STS));
> > > +           } else if (i2c_bus->mode == BUFF_MODE) {
> > > +                   xfer_len =
> > AST2600_I2CC_GET_RX_BUF_LEN(readl(i2c_bus->reg_base +
> > > +                                                                AST2600_I2CC_BUFF_CTRL));
> > > +                   for (i = 0; i < xfer_len; i++)
> > > +                           msg->buf[i2c_bus->controller_xfer_cnt + i] =
> > > +                                   readb(i2c_bus->buf_base + 0x10 + i);
> > > +           } else {
> > > +                   xfer_len = 1;
> > > +                   msg->buf[i2c_bus->controller_xfer_cnt] =
> > > +                           AST2600_I2CC_GET_RX_BUFF(readl(i2c_bus->reg_base +
> > > +                                                AST2600_I2CC_STS_AND_BUFF));
> > > +           }
> > > +
> > > +           if (msg->flags & I2C_M_RECV_LEN) {
> > > +                   msg->len = min_t(unsigned int, msg->buf[0],
> > I2C_SMBUS_BLOCK_MAX);
> > > +                   msg->len += ((msg->flags & I2C_CLIENT_PEC) ? 2 : 1);
> > > +                   msg->flags &= ~I2C_M_RECV_LEN;
> > > +           }
> > > +           i2c_bus->controller_xfer_cnt += xfer_len;
> > > +
> > > +           if (i2c_bus->controller_xfer_cnt == msg->len) {
> > > +                   if (i2c_bus->mode == DMA_MODE) {
> > > +                           dma_unmap_single(i2c_bus->dev,
> > i2c_bus->controller_dma_addr,
> > > +                                            msg->len, DMA_FROM_DEVICE);
> > > +
> >       i2c_put_dma_safe_msg_buf(i2c_bus->controller_dma_safe_buf,
> > > +                                                    msg, true);
> > > +                           i2c_bus->controller_dma_safe_buf = NULL;
> > > +                   }
> > > +
> > > +                   i2c_bus->msgs_index++;
> > > +                   if (i2c_bus->msgs_index == i2c_bus->msgs_count) {
> > > +                           i2c_bus->cmd_err = i2c_bus->msgs_index;
> > > +                           complete(&i2c_bus->cmd_complete);
> > > +                   } else {
> > > +                           if (ast2600_i2c_do_start(i2c_bus)) {
> > > +                                   i2c_bus->cmd_err = -ENOMEM;
> > > +                                   complete(&i2c_bus->cmd_complete);
> > > +                           }
> > > +                   }
> > > +           } else {
> > > +                   /* next rx */
> > > +                   cmd |= AST2600_I2CM_RX_CMD;
> > > +                   if (i2c_bus->mode == DMA_MODE) {
> > > +                           cmd |= AST2600_I2CM_RX_DMA_EN;
> > > +                           xfer_len = msg->len - i2c_bus->controller_xfer_cnt;
> > > +                           if (xfer_len > AST2600_I2C_DMA_SIZE) {
> > > +                                   xfer_len = AST2600_I2C_DMA_SIZE;
> > > +                           } else {
> > > +                                   if (i2c_bus->msgs_index + 1 == i2c_bus->msgs_count)
> > > +                                           cmd |= CONTROLLER_TRIGGER_LAST_STOP;
> > > +                           }
> > > +                           writel(AST2600_I2CM_SET_RX_DMA_LEN(xfer_len - 1),
> > > +                                  i2c_bus->reg_base + AST2600_I2CM_DMA_LEN);
> > > +                           writel(i2c_bus->controller_dma_addr +
> > i2c_bus->controller_xfer_cnt,
> > > +                                  i2c_bus->reg_base + AST2600_I2CM_RX_DMA);
> > > +                   } else if (i2c_bus->mode == BUFF_MODE) {
> > > +                           cmd |= AST2600_I2CM_RX_BUFF_EN;
> > > +                           xfer_len = msg->len - i2c_bus->controller_xfer_cnt;
> > > +                           if (xfer_len > i2c_bus->buf_size) {
> > > +                                   xfer_len = i2c_bus->buf_size;
> > > +                           } else {
> > > +                                   if (i2c_bus->msgs_index + 1 == i2c_bus->msgs_count)
> > > +                                           cmd |= CONTROLLER_TRIGGER_LAST_STOP;
> > > +                           }
> > > +                           writel(AST2600_I2CC_SET_RX_BUF_LEN(xfer_len),
> > > +                                  i2c_bus->reg_base + AST2600_I2CC_BUFF_CTRL);
> > > +                   } else {
> > > +                           if ((i2c_bus->msgs_index + 1 == i2c_bus->msgs_count) &&
> > > +                               ((i2c_bus->controller_xfer_cnt + 1) == msg->len)) {
> > > +                                   cmd |= CONTROLLER_TRIGGER_LAST_STOP;
> > > +                           }
> > > +                   }
> > > +                   writel(cmd, i2c_bus->reg_base + AST2600_I2CM_CMD_STS);
> > > +           }
> > > +           break;
> > > +   default:
> > > +           dev_dbg(i2c_bus->dev, "unhandled sts %x\n", sts);
> > > +           break;
> > > +   }
> > > +}
> > > +
> > > +static int ast2600_i2c_controller_irq(struct ast2600_i2c_bus
> > > +*i2c_bus) {
> > > +   u32 sts = readl(i2c_bus->reg_base + AST2600_I2CM_ISR);
> > > +   u32 ctrl;
> > > +
> > > +   sts &= ~AST2600_I2CM_SMBUS_ALT;
> > > +
> > > +   if (AST2600_I2CM_BUS_RECOVER_FAIL & sts) {
> > > +           writel(AST2600_I2CM_BUS_RECOVER_FAIL, i2c_bus->reg_base +
> > AST2600_I2CM_ISR);
> > > +           ctrl = readl(i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +           writel(0, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +           writel(ctrl, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +           i2c_bus->cmd_err = -EPROTO;
> > > +           complete(&i2c_bus->cmd_complete);
> > > +           return 1;
> > > +   }
> > > +
> > > +   if (AST2600_I2CM_BUS_RECOVER & sts) {
> > > +           writel(AST2600_I2CM_BUS_RECOVER, i2c_bus->reg_base +
> > AST2600_I2CM_ISR);
> > > +           i2c_bus->cmd_err = 0;
> > > +           complete(&i2c_bus->cmd_complete);
> > > +           return 1;
> > > +   }
> > > +
> > > +   i2c_bus->cmd_err = ast2600_i2c_irq_err_to_errno(sts);
> > > +   if (i2c_bus->cmd_err) {
> > > +           writel(AST2600_I2CM_PKT_DONE, i2c_bus->reg_base +
> > AST2600_I2CM_ISR);
> > > +           complete(&i2c_bus->cmd_complete);
> > > +           return 1;
> > > +   }
> > > +
> > > +   if (AST2600_I2CM_PKT_DONE & sts) {
> > > +           ast2600_i2c_controller_package_irq(i2c_bus, sts);
> > > +           return 1;
> > > +   }
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static irqreturn_t ast2600_i2c_bus_irq(int irq, void *dev_id) {
> > > +   struct ast2600_i2c_bus *i2c_bus = dev_id;
> > > +
> > > +   return IRQ_RETVAL(ast2600_i2c_controller_irq(i2c_bus));
> > > +}
> > > +
> > > +static int ast2600_i2c_controller_xfer(struct i2c_adapter *adap,
> > > +struct i2c_msg *msgs, int num) {
> > > +   struct ast2600_i2c_bus *i2c_bus = i2c_get_adapdata(adap);
> > > +   unsigned long timeout;
> > > +   int ret;
> > > +
> > > +   if (!i2c_bus->multi_master &&
> > > +       (readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF) &
> > AST2600_I2CC_BUS_BUSY_STS)) {
> > > +           ret = ast2600_i2c_recover_bus(i2c_bus);
> > > +           if (ret)
> > > +                   return ret;
> > > +   }
> > > +
> > > +   i2c_bus->cmd_err = 0;
> > > +   i2c_bus->msgs = msgs;
> > > +   i2c_bus->msgs_index = 0;
> > > +   i2c_bus->msgs_count = num;
> > > +   reinit_completion(&i2c_bus->cmd_complete);
> > > +   ret = ast2600_i2c_do_start(i2c_bus);
> > > +   if (ret)
> > > +           goto controller_out;
> > > +   timeout = wait_for_completion_timeout(&i2c_bus->cmd_complete,
> > i2c_bus->adap.timeout);
> > > +   if (timeout == 0) {
> > > +           u32 ctrl = readl(i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +
> > > +           dev_dbg(i2c_bus->dev, "timeout isr[%x], sts[%x]\n",
> > > +                   readl(i2c_bus->reg_base + AST2600_I2CM_ISR),
> > > +                   readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF));
> > > +           writel(0, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +           writel(ctrl, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +
> > > +           if (i2c_bus->multi_master &&
> > > +               (readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF) &
> > > +               AST2600_I2CC_BUS_BUSY_STS))
> > > +                   ast2600_i2c_recover_bus(i2c_bus);
> > > +
> > > +           ret = -ETIMEDOUT;
> > > +   } else {
> > > +           ret = i2c_bus->cmd_err;
> > > +   }
> > > +
> > > +   dev_dbg(i2c_bus->dev, "bus%d-m: %d end\n", i2c_bus->adap.nr,
> > > +i2c_bus->cmd_err);
> > > +
> > > +controller_out:
> > > +   if (i2c_bus->mode == DMA_MODE) {
> > > +           kfree(i2c_bus->controller_dma_safe_buf);
> > > +           i2c_bus->controller_dma_safe_buf = NULL;
> > > +   }
> > > +
> > > +   return ret;
> > > +}
> > > +
> > > +static void ast2600_i2c_init(struct ast2600_i2c_bus *i2c_bus) {
> > > +   struct platform_device *pdev = to_platform_device(i2c_bus->dev);
> > > +   u32 fun_ctrl = AST2600_I2CC_BUS_AUTO_RELEASE |
> > > +AST2600_I2CC_MASTER_EN;
> > > +
> > > +   /* I2C Reset */
> > > +   writel(0, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +
> > > +   i2c_bus->multi_master = device_property_read_bool(&pdev->dev,
> > "multi-master");
> > > +   if (!i2c_bus->multi_master)
> > > +           fun_ctrl |= AST2600_I2CC_MULTI_MASTER_DIS;
> > > +
> > > +   /* Enable Controller Mode */
> > > +   writel(fun_ctrl, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +   /* disable target address */
> > > +   writel(0, i2c_bus->reg_base + AST2600_I2CS_ADDR_CTRL);
> > > +
> > > +   /* Set AC Timing */
> > > +   writel(ast2600_select_i2c_clock(i2c_bus), i2c_bus->reg_base +
> > > +AST2600_I2CC_AC_TIMING);
> > > +
> > > +   /* Clear Interrupt */
> > > +   writel(GENMASK(27, 0), i2c_bus->reg_base + AST2600_I2CM_ISR); }
> > > +
> > > +static u32 ast2600_i2c_functionality(struct i2c_adapter *adap) {
> > > +   return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL |
> > > +I2C_FUNC_SMBUS_BLOCK_DATA; }
> > > +
> > > +static const struct i2c_algorithm i2c_ast2600_algorithm = {
> > > +   .xfer = ast2600_i2c_controller_xfer,
> > > +   .functionality = ast2600_i2c_functionality, };
> > > +
> > > +static int ast2600_i2c_probe(struct platform_device *pdev) {
> > > +   struct device *dev = &pdev->dev;
> > > +   struct ast2600_i2c_bus *i2c_bus;
> > > +   struct resource *res;
> > > +   u32 global_ctrl;
> > > +   int ret;
> > > +
> > > +   i2c_bus = devm_kzalloc(dev, sizeof(*i2c_bus), GFP_KERNEL);
> > > +   if (!i2c_bus)
> > > +           return -ENOMEM;
> > > +
> > > +   i2c_bus->reg_base = devm_platform_ioremap_resource(pdev, 0);
> > > +   if (IS_ERR(i2c_bus->reg_base))
> > > +           return PTR_ERR(i2c_bus->reg_base);
> > > +
> > > +   i2c_bus->rst = devm_reset_control_get_shared(dev, NULL);
> > > +   if (IS_ERR(i2c_bus->rst))
> > > +           return dev_err_probe(dev, PTR_ERR(i2c_bus->rst), "Missing reset
> > > +ctrl\n");
> > > +
> > > +   reset_control_deassert(i2c_bus->rst);
> > > +
> > > +   i2c_bus->global_regs =
> > > +           syscon_regmap_lookup_by_phandle(dev_of_node(dev),
> > "aspeed,global-regs");
> > > +   if (IS_ERR(i2c_bus->global_regs))
> > > +           return PTR_ERR(i2c_bus->global_regs);
> > > +
> > > +   regmap_read(i2c_bus->global_regs, AST2600_I2CG_CTRL, &global_ctrl);
> > > +   if ((global_ctrl & AST2600_GLOBAL_INIT) != AST2600_GLOBAL_INIT) {
> > > +           regmap_write(i2c_bus->global_regs, AST2600_I2CG_CTRL,
> > AST2600_GLOBAL_INIT);
> > > +           regmap_write(i2c_bus->global_regs, AST2600_I2CG_CLK_DIV_CTRL,
> > I2CCG_DIV_CTRL);
> > > +   }
> > > +
> > > +   i2c_bus->dev = dev;
> > > +   i2c_bus->mode = BUFF_MODE;
> > > +
> > > +   if (device_property_read_bool(dev, "aspeed,enable-dma"))
> > > +           i2c_bus->mode = DMA_MODE;
> > > +
> > > +   if (i2c_bus->mode == BUFF_MODE) {
> > > +           i2c_bus->buf_base =
> > devm_platform_get_and_ioremap_resource(pdev, 1, &res);
> > > +           if (IS_ERR(i2c_bus->buf_base))
> > > +                   i2c_bus->mode = BYTE_MODE;
> > > +           else
> > > +                   i2c_bus->buf_size = resource_size(res) / 2;
> > > +   }
> > > +
> > > +   /*
> > > +    * i2c timeout counter: use base clk4 1Mhz,
> > > +    * per unit: 1/(1000/4096) = 4096us
> > > +    */
> > > +   ret = device_property_read_u32(dev, "i2c-scl-clk-low-timeout-us",
> > &i2c_bus->timeout);
> > > +   if (!ret)
> > > +           i2c_bus->timeout /= 4096;
> > > +
> > > +   init_completion(&i2c_bus->cmd_complete);
> > > +
> > > +   i2c_bus->irq = platform_get_irq(pdev, 0);
> > > +   if (i2c_bus->irq < 0)
> > > +           return i2c_bus->irq;
> > > +
> > > +   platform_set_drvdata(pdev, i2c_bus);
> > > +
> > > +   i2c_bus->clk = devm_clk_get(i2c_bus->dev, NULL);
> > > +   if (IS_ERR(i2c_bus->clk))
> > > +           return dev_err_probe(i2c_bus->dev, PTR_ERR(i2c_bus->clk), "Can't
> > > +get clock\n");
> > > +
> > > +   i2c_bus->apb_clk = clk_get_rate(i2c_bus->clk);
> > > +
> > > +   i2c_parse_fw_timings(i2c_bus->dev, &i2c_bus->timing_info, true);
> > > +
> > > +   /* Initialize the I2C adapter */
> > > +   i2c_bus->adap.owner = THIS_MODULE;
> > > +   i2c_bus->adap.algo = &i2c_ast2600_algorithm;
> > > +   i2c_bus->adap.retries = 0;
> > > +   i2c_bus->adap.dev.parent = i2c_bus->dev;
> > > +   device_set_node(&i2c_bus->adap.dev, dev_fwnode(dev));
> > > +   i2c_bus->adap.algo_data = i2c_bus;
> > > +   strscpy(i2c_bus->adap.name, pdev->name);
> > > +   i2c_set_adapdata(&i2c_bus->adap, i2c_bus);
> > > +
> > > +   ast2600_i2c_init(i2c_bus);
> > > +
> > > +   ret = devm_request_irq(dev, i2c_bus->irq, ast2600_i2c_bus_irq, 0,
> > > +                          dev_name(dev), i2c_bus);
> > > +   if (ret < 0)
> > > +           return dev_err_probe(dev, ret, "Unable to request irq %d\n",
> > > +i2c_bus->irq);
> > > +
> > > +   writel(AST2600_I2CM_PKT_DONE | AST2600_I2CM_BUS_RECOVER,
> > > +          i2c_bus->reg_base + AST2600_I2CM_IER);
> > > +
> > > +   ret = devm_i2c_add_adapter(dev, &i2c_bus->adap);
> > > +   if (ret)
> > > +           return ret;
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static void ast2600_i2c_remove(struct platform_device *pdev) {
> > > +   struct ast2600_i2c_bus *i2c_bus = platform_get_drvdata(pdev);
> > > +
> > > +   /* Disable everything. */
> > > +   writel(0, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> > > +   writel(0, i2c_bus->reg_base + AST2600_I2CM_IER); }
> > > +
> > > +static const struct of_device_id ast2600_i2c_bus_of_table[] = {
> > > +   {
> > > +           .compatible = "aspeed,ast2600-i2cv2",
> > > +   },
> > > +   {}
> > > +};
> > > +MODULE_DEVICE_TABLE(of, ast2600_i2c_bus_of_table);
> > > +
> > > +static struct platform_driver ast2600_i2c_bus_driver = {
> > > +   .probe = ast2600_i2c_probe,
> > > +   .remove = ast2600_i2c_remove,
> > > +   .driver = {
> > > +           .name = KBUILD_MODNAME,
> > > +           .of_match_table = ast2600_i2c_bus_of_table,
> > > +   },
> > > +};
> > > +
> > > +module_platform_driver(ast2600_i2c_bus_driver);
> > > +
> > > +MODULE_AUTHOR("Ryan Chen <ryan_chen@aspeedtech.com>");
> > > +MODULE_DESCRIPTION("ASPEED AST2600 I2C Controller Driver");
> > > +MODULE_LICENSE("GPL");
>

