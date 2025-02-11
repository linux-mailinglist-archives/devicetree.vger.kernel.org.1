Return-Path: <devicetree+bounces-145499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6140A317F6
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 22:43:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 382AC1884784
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 21:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 722552676C2;
	Tue, 11 Feb 2025 21:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="hMohn1eI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D73826A09B
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 21:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739310004; cv=none; b=lhxQ+Fs3unb7+6JWcEmeOxBvJy/xD/aLqsUtXC41v9qoUIKh3Fc8lrOiCs7EppgKbjXMVkXSVV0nKrVsgHi37HjqusPyBaMjCPXXhahbOwGwjkWOGtmQbxX9xr5ob8T+tZy18m193uUUtbdKePG332031JIeeBia8QlTwTfwB8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739310004; c=relaxed/simple;
	bh=SANU0BrMOhvgUcFbhERA5VsjNc7QlsEXzNUfGidoPpA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fblvySTbwteCPwFk8Q3gJ5rZy2bCeG/x8uTe7M7JZMDIZmjLtOFHJyTcok3ghgjdOS3RkxpJ2sqqh/PBDROY09Bfm1NiLt4Z5gptSm7kL5X+v7rrQh4S7w1z3tlKEqjuUDAPzBZK3g4IJTJV7vtDFP9f70bDqYk+GOIkEaWwkH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=hMohn1eI; arc=none smtp.client-ip=209.85.166.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-3ce7c4115e8so673065ab.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 13:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1739309999; x=1739914799; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=78O7TMqoQ0a8qnormPJGoxZHCjWRs4snYGkIDDo2YT0=;
        b=hMohn1eI/9nABBdT9mCVCdi5ltC0FuRweNjT20x+Os4Y9px0QrPY6DZksKy+LNOq3Z
         ekIEaSxuI598p03omMSNbRNcEeCOm1DIi7Q3CasO/816cczETEuT8dSkB28niO26w0ZA
         Jv1JE2PVJKsY2LptK8IIHI+UYJ6Bb5ShaeWak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739309999; x=1739914799;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=78O7TMqoQ0a8qnormPJGoxZHCjWRs4snYGkIDDo2YT0=;
        b=Zf/OzjcbRJ+WQiL110Qk2HOhXNBnqI6nIPKi2D8q6tKy+hCoGk6hilTUQsY+uJLz9I
         zTy+J4FfSS6CJQ5nTKN9rVNq46rUsIqSd+AGotnmeMCUZ4SdQXIpE0XJGE6V1XvP6mO5
         PCASSi/CGJIfftjHaWAi2CHMgv3Avl+9q8EsynXSpnbDid23ehl1sbMHqh6ftlyki/vb
         8RB6mc/nW2vw6Mmf7M6u8XciY8oFXp5EfO650U1KotU9YEjv4HOEWhCN7PccqVoV2KhZ
         54k9JfYcwXmYs58pMZBCK/divXVabugdCIQieUHPypgbDY92AcPwPJb95RP7iFu3F7dj
         UcVw==
X-Forwarded-Encrypted: i=1; AJvYcCUv66+dzaV/gapL0U77DKTCM6Bo1/9yIIYsLPHc5prBl6HIyoJdzlO2C56xD8oCp3lnHDE3RmrhnJJW@vger.kernel.org
X-Gm-Message-State: AOJu0YxUSK00DxSQ1ukSy1oJ8MhKi6+bWG+XgU4ClGrhDl8WKXVtWs6A
	xz16/eBqPcvYrykdEcEpILBrytYpeMc7K9VwhYD7/Bh9vmumKYJmoBBt9t07Pg==
X-Gm-Gg: ASbGncvzmLgO//HGEOwO1F3iCsTWy9R+eZH2Qsti5OKeLtDbwHzZlvcw3bYHglrEGBP
	Cj2NspKAGRJXegqiwglGaz/i1U5pnvOmEJmzHe7NHJRd0Q7qLj0KxUmsexDR4F8sD0Y5A14zmsx
	gyY031v+ZHYvQIUfdpJmvqyxomDD3UZx2w7NsiSSP0F/j3/uDSuocFLgtss7PZI7qHHaKgFh6VY
	sVYmBTnOYfQYOPFZ5ugAT6u9uPlpaxouCe6RwCO1WH2/idAU1WQXwCs6uZIg+hYYbpu2laPrdL/
	hC3uytqzkXT1ZE4xA1MdJYFU4vXgpMMUtcFk+naw2yFPcJEzgQ==
X-Google-Smtp-Source: AGHT+IHJ9jpHs3aOWU8/tqla2Fi6IrqjD2v5oYxB1spNdJgcfuYhDBiGylqpBBCo/++1sRUGBLSBSA==
X-Received: by 2002:a05:6e02:1846:b0:3d1:5037:c97a with SMTP id e9e14a558f8ab-3d16f405ca1mr41169255ab.3.1739309999250;
        Tue, 11 Feb 2025 13:39:59 -0800 (PST)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.googlemail.com with ESMTPSA id 8926c6da1cb9f-4ece2fb2c56sm2196015173.0.2025.02.11.13.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 13:39:58 -0800 (PST)
Message-ID: <4658f274-5df6-4055-82db-118217f28447@ieee.org>
Date: Tue, 11 Feb 2025 15:39:57 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] i2c: spacemit: add support for SpacemiT K1 SoC
To: Troy Mitchell <troymitchell988@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-riscv@lists.infradead.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241125-k1-i2c-master-v4-0-0f3d5886336b@gmail.com>
 <20241125-k1-i2c-master-v4-2-0f3d5886336b@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20241125-k1-i2c-master-v4-2-0f3d5886336b@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/25/24 12:49 AM, Troy Mitchell wrote:
> From: Troy Mitchell <troymitchell988@gmail.com>
> 
> This patch introduces basic I2C support for the SpacemiT K1 SoC,
> utilizing interrupts for transfers.
> 
> The driver has been tested using i2c-tools on a Bananapi-F3 board,
> and basic I2C read/write operations have been confirmed to work.
> 
> Signed-off-by: Troy Mitchell <TroyMitchell988@gmail.com>

This is a very detailed review.  My hope is that this helps
get this driver ready for acceptance more quickly.

> ---
>   drivers/i2c/busses/Kconfig  |  19 ++
>   drivers/i2c/busses/Makefile |   1 +
>   drivers/i2c/busses/i2c-k1.c | 655 ++++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 675 insertions(+)
> 
> diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> index 6b3ba7e5723a..91630f55667f 100644
> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -779,6 +779,25 @@ config I2C_JZ4780
>   
>   	 If you don't know what to do here, say N.
>   
> +config I2C_K1
> +	tristate "Spacemit K1 I2C adapter"
> +	depends on ARCH_SPACEMIT || COMPILE_TEST
> +	depends on OF
> +	help
> +	  This option enables support for the I2C interface on the Spacemit K1
> +	  platform.
> +
> +	  If you enable this configuration, the kernel will include support for
> +	  the I2C adapter specific to the Spacemit K1 platform. This driver ca
> +	  be used to manage I2C bus transactions, which are necessary for
> +	  interfacing with I2C peripherals such as sensors, EEPROMs, and other
> +	  devices.
> +
> +	  This driver can also be compiled as a module. If you choose to build
> +	  it as a module, the resulting kernel module will be named `i2c-k1`.
> +	  Loading this module will enable the I2C functionality for the K1
> +	  platform dynamically, without requiring a rebuild of the kernel.
> +
>   config I2C_KEBA
>   	tristate "KEBA I2C controller support"
>   	depends on HAS_IOMEM
> diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
> index ecc07c50f2a0..9744b0e58598 100644
> --- a/drivers/i2c/busses/Makefile
> +++ b/drivers/i2c/busses/Makefile
> @@ -76,6 +76,7 @@ obj-$(CONFIG_I2C_IMX)		+= i2c-imx.o
>   obj-$(CONFIG_I2C_IMX_LPI2C)	+= i2c-imx-lpi2c.o
>   obj-$(CONFIG_I2C_IOP3XX)	+= i2c-iop3xx.o
>   obj-$(CONFIG_I2C_JZ4780)	+= i2c-jz4780.o
> +obj-$(CONFIG_I2C_K1)		+= i2c-k1.o
>   obj-$(CONFIG_I2C_KEBA)		+= i2c-keba.o
>   obj-$(CONFIG_I2C_KEMPLD)	+= i2c-kempld.o
>   obj-$(CONFIG_I2C_LPC2K)		+= i2c-lpc2k.o
> diff --git a/drivers/i2c/busses/i2c-k1.c b/drivers/i2c/busses/i2c-k1.c
> new file mode 100644
> index 000000000000..5812296bfc32
> --- /dev/null
> +++ b/drivers/i2c/busses/i2c-k1.c
> @@ -0,0 +1,655 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2024 Troy Mitchell <troymitchell988@gmail.com>
> + */
> +
> + #include <linux/clk.h>
> + #include <linux/i2c.h>
> + #include <linux/iopoll.h>
> + #include <linux/module.h>
> + #include <linux/of_address.h>
> + #include <linux/platform_device.h>
> +
> +/* spacemit i2c registers */

These are good register descriptions.

> +#define ICR          0x0		/* Control Register */
> +#define ISR          0x4		/* Status Register */
> +#define ISAR         0x8		/* Slave Address Register */

You never set the slave address register.  Is there any reason to?

> +#define IDBR         0xc		/* Data Buffer Register */

You never use the next three registers.  You could simplify things
by only defining them when support is added for them in the driver.

> +#define ILCR         0x10		/* Load Count Register */
> +#define IWCR         0x14		/* Wait Count Register */
> +#define IRST_CYC     0x18		/* Bus reset cycle counter */
> +#define IBMR         0x1c		/* Bus monitor register */

You do not implement any FIFO functionality currently.  I think
you can simply omit the following register definitions until
they are actually needed.

> +#define IWFIFO       0x20		/* Write FIFO Register */
> +#define IWFIFO_WPTR  0x24		/* Write FIFO Write Pointer Register */
> +#define IWFIFO_RPTR  0x28		/* Write FIFO Read Pointer Register */
> +#define IRFIFO       0x2c		/* Read FIFO Register */
> +#define IRFIFO_WPTR  0x30		/* Read FIFO Write Pointer Register */
> +#define IRFIFO_RPTR  0x34		/* Read FIFO Read Pointer Register */
> +
> +/* register ICR fields */

The descriptions below are also good.  Maybe be consistent
with your capitalization in comments?  (Though I suppose
the capitalization above is to explain the name of the
register.)

> +#define CR_START        BIT(0)		/* start bit */
> +#define CR_STOP         BIT(1)		/* stop bit */
> +#define CR_ACKNAK       BIT(2)		/* send ACK(0) or NAK(1) */
> +#define CR_TB           BIT(3)		/* transfer byte bit */
> +#define CR_TXBEGIN      BIT(4)		/* transaction begin */
> +#define CR_FIFOEN       BIT(5)		/* enable FIFO mode */
> +#define CR_GPIOEN       BIT(6)		/* enable GPIO mode for SCL in HS */
> +#define CR_DMAEN        BIT(7)		/* enable DMA for TX and RX FIFOs */
> +#define CR_MODE_FAST    BIT(8)		/* bus mode (master operation) */
> +#define CR_MODE_HIGH    BIT(9)		/* bus mode (master operation) */
> +#define CR_UR           BIT(10)		/* unit reset */
> +#define CR_RSTREQ       BIT(11)		/* i2c bus reset request */
> +#define CR_MA           BIT(12)		/* master abort */
> +#define CR_SCLE         BIT(13)		/* master clock enable */
> +#define CR_IUE          BIT(14)		/* unit enable */

/* Bit 15 is reserved */

> +#define CR_HS_STRETCH   BIT(16)		/* I2C hs stretch */

/* Bit 17 is reserved */

Actually, why is the CURSRC_FIX_BYPASS bit (17) not defined?

For the *IE symbols that follow, why not use *_IE as the spec
does?

> +#define CR_ALDIE        BIT(18)		/* enable arbitration interrupt */
> +#define CR_DTEIE        BIT(19)		/* enable tx interrupts */
> +#define CR_DRFIE        BIT(20)		/* enable rx interrupts */
> +#define CR_GCD          BIT(21)		/* general call disable */
> +#define CR_BEIE         BIT(22)		/* enable bus error ints */
> +#define CR_SADIE        BIT(23)		/* slave address detected int enable */
> +#define CR_SSDIE        BIT(24)		/* slave STOP detected int enable */
> +#define CR_MSDIE        BIT(25)		/* master STOP detected int enable */
> +#define CR_MSDE         BIT(26)		/* master STOP detected enable */
> +#define CR_TXDONEIE     BIT(27)		/* transaction done int enable */
> +#define CR_TXEIE        BIT(28)		/* transmit FIFO empty int enable */
> +#define CR_RXHFIE       BIT(29)		/* receive FIFO half-full int enable */
> +#define CR_RXFIE        BIT(30)		/* receive FIFO full int enable */
> +#define CR_RXOVIE       BIT(31)		/* receive FIFO overrun int enable */
> +
> +/* register ISR fields */

/* Bits 0-12 are reserved */

> +#define SR_RWM          BIT(13)		/* read/write mode */
> +#define SR_ACKNAK       BIT(14)		/* ACK/NACK status */
> +#define SR_UB           BIT(15)		/* unit busy */
> +#define SR_IBB          BIT(16)		/* i2c bus busy */
> +#define SR_EBB          BIT(17)		/* early bus busy */
> +#define SR_ALD          BIT(18)		/* arbitration loss detected */
> +#define SR_ITE          BIT(19)		/* tx buffer empty */
> +#define SR_IRF          BIT(20)		/* rx buffer full */
> +#define SR_GCAD         BIT(21)		/* general call address detected */
> +#define SR_BED          BIT(22)		/* bus error no ACK/NAK */
> +#define SR_SAD          BIT(23)		/* slave address detected */
> +#define SR_SSD          BIT(24)		/* slave stop detected */

/* Bit 25 is reserved */

> +#define SR_MSD          BIT(26)		/* master stop detected */
> +#define SR_TXDONE       BIT(27)		/* transaction done */
> +#define SR_TXE          BIT(28)		/* tx FIFO empty */
> +#define SR_RXHF         BIT(29)		/* rx FIFO half-full */
> +#define SR_RXF          BIT(30)		/* rx FIFO full */
> +#define SR_RXOV         BIT(31)		/* RX FIFO overrun */
> +
> +/* register ILCR fields */

Please use GENMASK(hi, lo) to define these fields, and all other
similar fields below.

> +#define LCR_SLV         0x000001FF	/* SLV: bit[8:0] */

#define LCR_SLV		GENMASK(8, 0)	/* Standard-mode load value */

You actually never touch the ILCR register.  (Perhaps you should
do that at startup time.)  Until you do, I suggest you just remove
these definitions; they simply add space and apparent complexity
to the driver.

> +#define LCR_FLV         0x0003FE00	/* FLV: bit[17:9] */
> +#define LCR_HLVH        0x07FC0000	/* HLVH: bit[26:18] */
> +#define LCR_HLVL        0xF8000000	/* HLVL: bit[31:27] */
> +

You never touch the IWCR register, so I suggest you omit the
definition of its fields.

> +/* register IWCR fields */
> +#define WCR_COUNT       0x0000001F	/* COUNT: bit[4:0] */
> +#define WCR_COUNT1      0x000003E0	/* HS_COUNT1: bit[9:5] */
> +#define WCR_COUNT2      0x00007C00	/* HS_COUNT2: bit[14:10] */
> +
> +/* register IBMR fields */
> +#define BMR_SDA         BIT(0)		/* SDA line level */
> +#define BMR_SCL         BIT(1)		/* SCL line level */
> +

Here too, I suggest all these FIFO field definitions can be omitted.

> +/* register IWFIFO fields */
> +#define WFIFO_DATA_MSK      0x000000FF  /* data: bit[7:0] */
> +#define WFIFO_CTRL_MSK      0x000003E0  /* control: bit[11:8] */
> +#define WFIFO_CTRL_START    BIT(8)      /* start bit */
> +#define WFIFO_CTRL_STOP     BIT(9)      /* stop bit */
> +#define WFIFO_CTRL_ACKNAK   BIT(10)     /* send ACK(0) or NAK(1) */
> +#define WFIFO_CTRL_TB       BIT(11)     /* transfer byte bit */
> +
> +/* status register init value */
> +#define I2C_INT_STATUS_MASK    0xfffc0000  /* SR bits[31:18] */

Actually, this should be 0xfdff0000, because bit 25 reserved.
I would group this definition with the rest of the ISR field
definitions, above.

Above you use a hex value; below you compute the mask value
to use symbolically.  Do one or the other in both cases.

I'd group the next symbol with the ICR field definitions, above.

This describes all the interrupt-enable bits--except it omits
CR_SADIE and CR_SSDIE.  Maybe add a comment indicating this,
and explaining why.

> +#define I2C_INT_CTRL_MASK      (CR_ALDIE | CR_DTEIE | CR_DRFIE | \
> +				CR_BEIE | CR_TXDONEIE | CR_TXEIE | \
> +				CR_RXHFIE | CR_RXFIE | CR_RXOVIE | \
> +				CR_MSDIE)
> +
> +/* i2c bus recover timeout: us */

What you call "bus recover" is waiting for the bus to be free
before beginning a transfer.  I'm no I2C expert, and maybe this
is a normal term, but "bus busy" timeout would be more meaningful
for me.

> +#define I2C_BUS_RECOVER_TIMEOUT		(100000)

Parentheses are not required around simple constant values.

This is the only supported frequency, correct?  Is it
simply assumed to be already configured that way?  (This
driver doesn't set it at initialization time.)  Someday
we should set things up explicitly.

The only place the next symbol is used is in computing a
custom timeout period before initiating a transfer.

> +#define I2C_FAST_MODE_FREQ		(400000)
> +
> +enum spacemit_i2c_state {
> +	STATE_IDLE,
> +	STATE_START,
> +	STATE_READ,
> +	STATE_WRITE,
> +};
> +

Don't bother with spacemit_i2c_dir enumeration.  Just define
a Boolean flag in the spacemit_i2c_dev structure that indicates
whether the current transfer mode is read or not (read == true
means the same as dir == DIR_READ).

> +enum spacemit_i2c_dir {
> +	DIR_WRITE,
> +	DIR_READ
> +};
> +
> +/* i2c-spacemit driver's main struct */
> +struct spacemit_i2c_dev {
> +	struct device *dev;
> +	struct i2c_adapter adapt;
> +
> +	/* hardware resources */
> +	void __iomem *base;
> +	int irq;
> +
> +	struct i2c_msg *msgs;
> +	int msg_num;

I don't think there's any need to keep a pointer to the
current message.  It's always i2c->msgs[msg_idx].

> +	struct i2c_msg *cur_msg;
> +
> +	/* index of the current message being processed */
> +	int msg_idx;
> +	u8 *msg_buf;
> +	/* the number of unprocessed bytes remaining in each message  */
> +	size_t unprocessed;
> +
> +	enum spacemit_i2c_state state;
> +	enum spacemit_i2c_dir dir;
> +	struct completion complete;
> +	u32 status;
> +	u32 err;

I think you should remove the "err" field.  It only contains a
subset of what's in the status field.  It's set in the IRQ
handler:
         i2c->status = status;
         i2c->err = status & (SR_BED | SR_RXOV | SR_ALD);
And the only other time either is assigned is when they are
both zeroed in spacemit_i2c_xfer_msg().

> +};
> +
> +static void spacemit_i2c_enable(struct spacemit_i2c_dev *i2c)
> +{
> +	u32 val;
> +
> +	val = readl(i2c->base + ICR);

In every other place you do read/modify/write, you do it with
three lines.  So I suggest you do this here, for consistency:

         val = readl(i2c->base + ICR);
	val |= CR_IUE;
         writel(val, i2c->base + ICR);

> +	writel(val | CR_IUE, i2c->base + ICR);
> +}
> +
> +static void spacemit_i2c_disable(struct spacemit_i2c_dev *i2c)
> +{
> +	u32 val;
> +
> +	val = readl(i2c->base + ICR);
> +	val &= ~CR_IUE;
> +	writel(val, i2c->base + ICR);
> +}
> +
> +static void spacemit_i2c_reset(struct spacemit_i2c_dev *i2c)
> +{
> +	writel(CR_UR, i2c->base + ICR);
> +	udelay(5);

The spec says you should ensure the unit is not busy before
asserting the reset.  It also says you should clear the ISR
register before clearing the ICR here.  (Apparently your code
still works; I'm just reporting what I read.)

> +	writel(0, i2c->base + ICR);
> +}
> +
> +static int spacemit_i2c_handle_err(struct spacemit_i2c_dev *i2c);

Just define i2c_handle_err() here, rather than declaring it
here and defining it later.

The next function only resets the bus if it's not idle (where
"idle" means both SCL and SDA are high).  Based on the name
of the function, I'd expect it to always reset.  In other
words, I'd rather this be named something slightly different,
or have the check of SDA and SCL be done in the caller(s).

> +static void spacemit_i2c_bus_reset(struct spacemit_i2c_dev *i2c)
> +{
> +	u32 status;
> +
> +	/* if bus is locked, reset unit. 0: locked */
> +	status = readl(i2c->base + IBMR);
> +	if ((status & BMR_SDA) && (status & BMR_SCL))
> +		return;
> +
> +	spacemit_i2c_reset(i2c);
> +	usleep_range(10, 20);
> +
> +	/* check scl status again */
> +	status = readl(i2c->base + IBMR);
> +	if (!(status & BMR_SCL))
> +		dev_warn_ratelimited(i2c->dev, "unit reset failed\n");
> +}
> +
> +static int spacemit_i2c_recover_bus_busy(struct spacemit_i2c_dev *i2c)
> +{
> +	int ret = 0;
> +	u32 val;
> +

I think the next 4 lines can be deleted.  The readl_poll_timeout()
immediately does what they do, without delay.

> +	val = readl(i2c->base + ISR);
> +	if (likely(!(val & (SR_UB | SR_IBB))))
> +		return 0;
> +
> +	ret = readl_poll_timeout(i2c->base + ISR, val, !(val & (SR_UB | SR_IBB)),
> +				 1500, I2C_BUS_RECOVER_TIMEOUT);
> +	if (unlikely(ret)) {
> +		spacemit_i2c_reset(i2c);

If readl_poll_timeout() returns non-zero, it is -ETIMEDOUT.
Why change it to -EAGAIN?  (It ultimately gets consumed by
spacemit_i2c_xfer(), which handles -ETIMEDOUT and -EAGAIN
identically.

> +		ret = -EAGAIN;
> +	}
> +
> +	return ret;
> +}
> +
> +static void spacemit_i2c_check_bus_release(struct spacemit_i2c_dev *i2c)
> +{
> +	/* in case bus is not released after transfer completes */

As said by others, you essentially *never* need to specify
likely() or unlikely().  And nowhere in this code are you
running in such a performance-critical way that it matters.

> +	if (unlikely(readl(i2c->base + ISR) & SR_EBB)) {
> +		spacemit_i2c_bus_reset(i2c);
> +		usleep_range(90, 150);
> +	}
> +}
> +
> +static void spacemit_i2c_init(struct spacemit_i2c_dev *i2c)
> +{
> +	u32 val = 0;
> +
> +	/*
> +	 * Unmask interrupt bits for all xfer mode:
> +	 * bus error, arbitration loss detected.
> +	 * For transaction complete signal, we use master stop
> +	 * interrupt, so we don't need to unmask CR_TXDONEIE.
> +	 */
> +	val |= CR_BEIE | CR_ALDIE;

I'd just skip zeroing val above and doing this here:
	val = CR_BEIE | CR_ALDIE;
> +
> +	/*
> +	 * Unmask interrupt bits for interrupt xfer mode:
> +	 * DBR rx full.
> +	 * For tx empty interrupt CR_DTEIE, we only
> +	 * need to enable when trigger byte transfer to start
> +	 * data sending.
> +	 */
> +	val |= CR_DRFIE;
> +
> +	/* set speed bits: default fast mode */
> +	val |= CR_MODE_FAST;
> +
> +	/* disable response to general call */
> +	val |= CR_GCD;
> +
> +	/* enable SCL clock output */
> +	val |= CR_SCLE;
> +
> +	/* enable master stop detected */
> +	val |= CR_MSDE | CR_MSDIE;
> +
> +	writel(val, i2c->base + ICR);
> +}
> +

The following function is used in two places, but I don't think
it really adds any value.  Just open-code the writel() call in
those two spots.

> +static inline void
> +spacemit_i2c_clear_int_status(struct spacemit_i2c_dev *i2c, u32 mask)
> +{
> +	writel(mask & I2C_INT_STATUS_MASK, i2c->base + ISR);
> +}
> +
> +static void spacemit_i2c_start(struct spacemit_i2c_dev *i2c)
> +{
> +	u32 slave_addr_rw, val;

Use a local variable to track the current message.  There's
no need to stash it in the i2c structure.

	struct i2c_msg *cur_msg = i2c->msgs[i2c->msg_idx];
> +
> +	i2c->dir = i2c->cur_msg->flags & I2C_M_RD;

As suggested before, use a Boolean "read" flag instead.

	i2c->read = i2c->cur_msg->flags & I2C_M_RD;

(This doesn't assume I2C_M_RD == DIR_READ either, though
technically I2C_M_RD is guaranteed to be 1...)

> +	i2c->state = STATE_START;
> +
> +	if (i2c->cur_msg->flags & I2C_M_RD)
> +		slave_addr_rw = ((i2c->cur_msg->addr & 0x7f) << 1) | 1;
> +	else
> +		slave_addr_rw = (i2c->cur_msg->addr & 0x7f) << 1;

	slave_addr_rw = (i2c->cur_msg->addr & 0x7f) << 1;
	if (i2c->read)
		slave_addr_rw |= I2C_M_RD;

> +
> +	writel(slave_addr_rw, i2c->base + IDBR);
> +

Put the "send start pulse" comment here, then group the lines
that read/modify/write the register together.

> +	val = readl(i2c->base + ICR);
> +
> +	/* send start pulse */
> +	val &= ~CR_STOP;
> +	val |= CR_START | CR_TB | CR_DTEIE;
> +	writel(val, i2c->base + ICR);
> +}
> +
> +static void spacemit_i2c_stop(struct spacemit_i2c_dev *i2c)
> +{
> +	u32 val;
> +
> +	val = readl(i2c->base + ICR);
> +
> +	val |= CR_STOP | CR_ALDIE | CR_TB;
> +
> +	if (i2c->dir == DIR_READ)
> +		val |= CR_ACKNAK;
> +
> +	writel(val, i2c->base + ICR);
> +}
> +
> +static int spacemit_i2c_xfer_msg(struct spacemit_i2c_dev *i2c)
> +{
> +	unsigned long time_left;
> +
> +	for (i2c->msg_idx = 0; i2c->msg_idx < i2c->msg_num; i2c->msg_idx++) {
> +		i2c->cur_msg = i2c->msgs + i2c->msg_idx;
> +		i2c->msg_buf = i2c->cur_msg->buf;
> +		i2c->err = 0;
> +		i2c->status = 0;
> +		i2c->unprocessed = i2c->cur_msg->len;
> +
> +		reinit_completion(&i2c->complete);
> +
> +		spacemit_i2c_start(i2c);
> +
> +		time_left = wait_for_completion_timeout(&i2c->complete,
> +							i2c->adapt.timeout);
> +		if (unlikely(time_left == 0)) {

		if (!time_left) {

> +			dev_alert(i2c->dev, "msg completion timeout\n");
> +			spacemit_i2c_bus_reset(i2c);
> +			spacemit_i2c_reset(i2c);
> +			return -ETIMEDOUT;
> +		}
> +
> +		if (unlikely(i2c->err))
> +			return spacemit_i2c_handle_err(i2c);
> +	}
> +
> +	return 0;
> +}
> +
> +static int spacemit_i2c_is_last_msg(struct spacemit_i2c_dev *i2c)
> +{

static bool spacemit_i2c_is_last_msg(struct spacemit_i2c_dev *i2c)
{
	if (i2c->msg_idx != i2c->msg_num - 1)
		return false;
	
	if (i2c->read)
		return i2c->unprocessed == 1;

	return !i2c->unprocessed;
}

> +	if (i2c->dir == DIR_READ) {
> +		if (i2c->unprocessed == 1 && i2c->msg_idx == i2c->msg_num - 1)
> +			return 1;
> +	} else if (i2c->dir == DIR_WRITE) {
> +		if (!i2c->unprocessed && i2c->msg_idx == i2c->msg_num - 1)
> +			return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +static void spacemit_i2c_handle_write(struct spacemit_i2c_dev *i2c)
> +{
> +	/* if transfer completes, ISR will handle it */
> +	if (i2c->status & SR_MSD)
> +		return;
> +
> +	if (i2c->unprocessed) {
> +		writel(*i2c->msg_buf++, i2c->base + IDBR);
> +		i2c->unprocessed--;
> +		return;
> +	}
> +
> +	/* STATE_IDLE avoids trigger next byte */
> +	i2c->state = STATE_IDLE;
> +	complete(&i2c->complete);
> +}
> +
> +static void spacemit_i2c_handle_read(struct spacemit_i2c_dev *i2c)
> +{
> +	if (i2c->unprocessed) {
> +		*i2c->msg_buf++ = readl(i2c->base + IDBR);
> +		i2c->unprocessed--;
> +	}
> +
> +	/* if transfer completes, ISR will handle it */
> +	if (i2c->status & (SR_MSD | SR_ACKNAK))
> +		return;
> +
> +	/* it has to append stop bit in icr that read last byte */
> +	if (i2c->unprocessed)
> +		return;
> +
> +	/* STATE_IDLE avoids trigger next byte */
> +	i2c->state = STATE_IDLE;
> +	complete(&i2c->complete);
> +}
> +
> +static void spacemit_i2c_handle_start(struct spacemit_i2c_dev *i2c)
> +{
{
	i2c->state = i2c->read ? STATE_READ : STATE_WRITE;
	if (i2c->state == STATE_WRITE)
		spacemit_i2c_handle_write(i2c);
}

> +	if (i2c->dir == DIR_READ) {
> +		i2c->state = STATE_READ;
> +		return;
> +	}
> +
> +	if (i2c->dir == DIR_WRITE) {
> +		i2c->state = STATE_WRITE;
> +		spacemit_i2c_handle_write(i2c);
> +	}
> +}
> +
> +static int spacemit_i2c_handle_err(struct spacemit_i2c_dev *i2c)
> +{

This function is only called in one place, and in that place
the caller already verified that i2c->err is non-zero.  So
drop the next if statement.

> +	if (!i2c->err)
> +		return 0;
> +
> +	dev_dbg(i2c->dev, "i2c error status: 0x%08x\n",	i2c->status);
> +
> +	if (i2c->err & (SR_BED | SR_ALD))
> +		spacemit_i2c_reset(i2c);
> +
> +	if (i2c->err & (SR_RXOV | SR_ALD))
> +		return -EAGAIN;
> +
> +	return (i2c->status & SR_ACKNAK) ? -ENXIO : -EIO;

No need for parentheses in the above line.

> +}
> +
> +static void spacemit_i2c_err_check(struct spacemit_i2c_dev *i2c)
> +{
> +	u32 val;

Add a blank line here.

Change the logic to:
	if (!i2c->err && !(i2c->status & SR_MSD))
		return;

Then the rest of the function can be shifted out a level.

If you get rid of i2c->err, this can be:
	u32 error = i2c->status & (SR_ALD | SR_BED | SR_MSD | SR_RXOV);

	if (!error)
		return;

> +	/*
> +	 * send transaction complete signal:
> +	 * error happens, detect master stop
> +	 */
> +	if (likely(i2c->err || (i2c->status & SR_MSD))) {
> +		/*
> +		 * Here the transaction is already done, we don't need any
> +		 * other interrupt signals from now, in case any interrupt
> +		 * happens before spacemit_i2c_xfer to disable irq and i2c unit,
> +		 * we mask all the interrupt signals and clear the interrupt
> +		 * status.
> +		 */
> +		val = readl(i2c->base + ICR);
> +		val &= ~I2C_INT_CTRL_MASK;
> +		writel(val, i2c->base + ICR);
> +

Why are *all* interrupt status bits cleared here, rather than
just the ones with bits set in i2c->status?

> +		spacemit_i2c_clear_int_status(i2c, I2C_INT_STATUS_MASK);
> +
> +		i2c->state = STATE_IDLE;
> +		complete(&i2c->complete);
> +	}
> +}
> +
> +static irqreturn_t spacemit_i2c_irq_handler(int irq, void *devid)
> +{
> +	struct spacemit_i2c_dev *i2c = devid;
> +	u32 status, val;
> +
> +	status = readl(i2c->base + ISR);

Is there any reason not to assign i2c->status here?

> +	if (!status)
> +		return IRQ_HANDLED;
> +
> +	i2c->status = status;
> +
> +	i2c->err = status & (SR_BED | SR_RXOV | SR_ALD);

As I said earlier, I think you can simply check these bits in
the status field rather than tracking i2c->err separately.
I think the result will actually be a little simpler.

> +
> +	spacemit_i2c_clear_int_status(i2c, status);
> +
> +	if (unlikely(i2c->err))
> +		goto err_out;
> +
> +	val = readl(i2c->base + ICR);
> +
> +	val &= ~(CR_TB | CR_ACKNAK | CR_STOP | CR_START);
> +	writel(val, i2c->base + ICR);
> +
> +	switch (i2c->state) {
> +	case STATE_START:
> +		spacemit_i2c_handle_start(i2c);
> +		break;
> +	case STATE_READ:
> +		spacemit_i2c_handle_read(i2c);
> +		break;
> +	case STATE_WRITE:
> +		spacemit_i2c_handle_write(i2c);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	if (i2c->state != STATE_IDLE) {
> +		if (spacemit_i2c_is_last_msg(i2c)) {
> +			/* trigger next byte with stop */
> +			spacemit_i2c_stop(i2c);
> +		} else {
> +			/* trigger next byte */
> +			val |= CR_ALDIE | CR_TB;
> +			writel(val, i2c->base + ICR);
> +		}
> +	}
> +
> +err_out:
> +	spacemit_i2c_err_check(i2c);
> +	return IRQ_HANDLED;
> +}
> +
> +static void spacemit_i2c_calc_timeout(struct spacemit_i2c_dev *i2c)
> +{
> +	unsigned long timeout;
> +	int idx = 0, cnt = 0, freq;
> +

This loop counts the number of i2c_msg structs, and adds up
the number of bytes that must be transferred (including the
target address for each) for them all.

> +	while (idx < i2c->msg_num) {
> +		cnt += (i2c->msgs + idx)->len + 1;
> +		idx++;
> +	}
> +
> +	freq = I2C_FAST_MODE_FREQ;

You can just use I2C_FAST_MODE_FREQ below, and get rid of the
local variable.

> +	/*
> +	 * multiply by 9 because each byte in I2C transmission requires
> +	 * 9 clock cycles: 8 bits of data plus 1 ACK/NACK bit.
> +	 */
> +	timeout = cnt * 9 * USEC_PER_SEC / freq;

So now, timeout is the number of microseconds required to transfer
all bits across all messages.

The next line has me confused.

You add half a second, and convert it to jiffies.  (Why add half
a second?)

Then you divide that by the number of messages.  (Why divide by
this?  This timeout applies to the time required to transfer
all message segments in a tranasaction, right.  I.e., the time
required for a call to call spacemit_i2c_xfer()?)

> +
> +	i2c->adapt.timeout = usecs_to_jiffies(timeout + USEC_PER_SEC / 2) / i2c->msg_num;
> +}
> +
> +static int spacemit_i2c_xfer_core(struct spacemit_i2c_dev *i2c)
> +{
> +	int ret;
> +
> +	spacemit_i2c_reset(i2c);
> +
> +	spacemit_i2c_calc_timeout(i2c);
> +
> +	spacemit_i2c_init(i2c);
> +
> +	spacemit_i2c_enable(i2c);
> +	enable_irq(i2c->irq);
> +
> +	/* i2c wait for bus busy */
> +	ret = spacemit_i2c_recover_bus_busy(i2c);
> +	if (unlikely(ret))
> +		return ret;
> +
> +	ret = spacemit_i2c_xfer_msg(i2c);
> +	if (unlikely(ret < 0)) {
> +		dev_dbg(i2c->dev, "i2c transfer error\n");

Put the dev_dbg() call under the next comment.

> +		/* timeout error should not be overridden, and the transfer
> +		 * error will be confirmed by err handle function latter,
> +		 * the reset should be invalid argument error.
> +		 */
> +		if (ret != -ETIMEDOUT)
> +			ret = -EINVAL;
> +	}
> +
> +	return ret;
> +}
> +
> +static int spacemit_i2c_xfer(struct i2c_adapter *adapt, struct i2c_msg msgs[], int num)

Why do you use msgs[] in the prototype rather than *msgs as the
definition of the i2c_algorithm structure does?

> +{
> +	struct spacemit_i2c_dev *i2c = i2c_get_adapdata(adapt);
> +	int ret;
> +
> +	i2c->msgs = msgs;
> +	i2c->msg_num = num;
> +
> +	ret = spacemit_i2c_xfer_core(i2c);
> +	if (likely(!ret))
> +		spacemit_i2c_check_bus_release(i2c);
> +
> +	disable_irq(i2c->irq);
> +
> +	spacemit_i2c_disable(i2c);
> +
> +	if (unlikely((ret == -ETIMEDOUT || ret == -EAGAIN)))
> +		dev_alert(i2c->dev, "i2c transfer failed, ret %d err 0x%x\n", ret, i2c->err);
> +
> +	return ret < 0 ? ret : num;
> +}
> +
> +static u32 spacemit_i2c_func(struct i2c_adapter *adap)
> +{
> +	return I2C_FUNC_I2C | (I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
> +}
> +
> +static const struct i2c_algorithm spacemit_i2c_algo = {
> +	.xfer = spacemit_i2c_xfer,
> +	.functionality = spacemit_i2c_func,
> +};
> +
> +static int spacemit_i2c_probe(struct platform_device *pdev)
> +{
> +	struct spacemit_i2c_dev *i2c;
> +	struct device_node *of_node = pdev->dev.of_node;

	struct device *dev = &pdev->dev;

Then use the local "dev" pointer in all calls below.

> +	struct clk *clk;
> +	int ret = 0;
> +
> +	i2c = devm_kzalloc(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
> +	if (!i2c)
> +		return -ENOMEM;
> +
> +	i2c->dev = &pdev->dev;
> +
> +	i2c->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(i2c->base))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(i2c->base), "failed to do ioremap");
> +
> +	i2c->irq = platform_get_irq(pdev, 0);
> +	if (i2c->irq < 0)
> +		return dev_err_probe(&pdev->dev, i2c->irq, "failed to get irq resource");
> +
> +	ret = devm_request_irq(i2c->dev, i2c->irq, spacemit_i2c_irq_handler,
> +			       IRQF_NO_SUSPEND | IRQF_ONESHOT, dev_name(i2c->dev), i2c);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "failed to request irq");
> +
> +	disable_irq(i2c->irq);
> +
> +	clk = devm_clk_get_enabled(&pdev->dev, NULL);
> +	if (IS_ERR(clk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(clk), "failed to enable clock");
> +
> +	i2c_set_adapdata(&i2c->adapt, i2c);
> +	i2c->adapt.owner = THIS_MODULE;
> +	i2c->adapt.algo = &spacemit_i2c_algo;
> +	i2c->adapt.dev.parent = i2c->dev;
> +	i2c->adapt.nr = pdev->id;
> +
> +	i2c->adapt.dev.of_node = of_node;
> +	i2c->adapt.algo_data = i2c;
> +
> +	strscpy(i2c->adapt.name, "spacemit-i2c-adapter", sizeof(i2c->adapt.name));
> +
> +	init_completion(&i2c->complete);
> +

Set the driver data here so it's fully initialized
before you add it.

					-Alex

> +	ret = i2c_add_numbered_adapter(&i2c->adapt);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "failed to add i2c adapter");
> +
> +	platform_set_drvdata(pdev, i2c);
> +
> +	return 0;
> +}
> +
> +static void spacemit_i2c_remove(struct platform_device *pdev)
> +{
> +	struct spacemit_i2c_dev *i2c = platform_get_drvdata(pdev);
> +
> +	i2c_del_adapter(&i2c->adapt);
> +}
> +
> +static const struct of_device_id spacemit_i2c_of_match[] = {
> +	{ .compatible = "spacemit,k1-i2c", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, spacemit_i2c_of_match);
> +
> +static struct platform_driver spacemit_i2c_driver = {
> +	.probe = spacemit_i2c_probe,
> +	.remove = spacemit_i2c_remove,
> +	.driver = {
> +		.name = "i2c-k1",
> +		.of_match_table = spacemit_i2c_of_match,
> +	},
> +};
> +module_platform_driver(spacemit_i2c_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("I2C bus driver for SpacemiT K1 SoC");
> 


