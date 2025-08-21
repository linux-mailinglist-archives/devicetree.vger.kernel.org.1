Return-Path: <devicetree+bounces-207572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F49B2FF51
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 17:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE5B43AC8C1
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA82C334723;
	Thu, 21 Aug 2025 15:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="U+5Vjhae"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704EA2253A1
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 15:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755791072; cv=none; b=DUrb5KWqv2vxS3NNtUby0EpUd3LXFAmGNTnX1dNiAJyS57E1sMwDtQODnrrsqug3u6aPAjeYOQF6gdk9cXVFTPCjFjjl6WfBGQOV8a05xYP88jpOwkAv0CWiWo+20PwThU6EalPJABPMDrZCFU7ujx/SKpBPJ10Xot+jaKsCwPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755791072; c=relaxed/simple;
	bh=62ckJ46h0Fb4OVQznEilS++/hmqrlDt2VjnpZgweDXY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i87mpkSJeQaC2nJK8TytrPmLAUWjz+jOKhkouhCbcWjh1im0Gg1SdBtW4LopBkXGmcvWfNge3TkEK+YZYBJbSX8QZCCZZtsdmRpfFzk7+4ZHE65jmBO7p4yvFj3+W6E55uePDHO1dWSNYv5jAOT7e5bzfz154L6n1i7FV7y61lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=U+5Vjhae; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-61a893d5226so1787743a12.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1755791069; x=1756395869; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zHCWS+VC8+WEk/JMgYPWwAOlmhPKHDkBf3YM/7KG1cc=;
        b=U+5Vjhae5BScQbV7ZLth92obhDTvfwP6SPafXwhXBCGuZi+vLTS0pWiCNdxsdmirIX
         t7DIZ3rhJ5svU5pcKS+PJTl4W3dvTDyk8HjEAp6grWvwmFUToMsxO1qI/+Pj/AV687gw
         a7NXu0s9EPkq9WvcOva/hntHqLGIUh/CtV4QwjD0Li+NxTAI6i5CUBHU4xgZjaX4xZ//
         NbyFTSIdm4zShascuCrSY2h0vxNDUsKiraDrNLkKwcIGlOiMR5eGvE7xKkO1369YQk2g
         csrWVO33v21deg2zwxx5/KiT798hwlLEIpHBfPWy3t21V4A1apxzOk7jueUzkgoJhsCB
         hbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755791069; x=1756395869;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zHCWS+VC8+WEk/JMgYPWwAOlmhPKHDkBf3YM/7KG1cc=;
        b=vGPpFBP51iQeKfmcD2ZKgwKYbMQk/MZHcI2a5wqCNd+gD6tvMGdvoQsTD9iPMllebx
         byH1smnriEr3UCEd+nfykKhQLdqTmA9DBTL06Krx/o3oMTeEA0rPV2KK4E5HCTxdhF6l
         GtQC0RmoKo49zPlCGAnr370bh+sAxmPGVKxQofiop0xyFdWvsjnj/MeDCN5EAx4MVznN
         odjk2zECDLZA73v9J+ALeKwwclFWZeT9EqV5Fjmvim05BWLaq6rBdcA2cPX3mOdzHvug
         7vxTxhgwPBnLYL9oIDMzyj0VLbSfKJmp0pbnliEEM7Kqtb+MWhWGhEjUwdCOLRDcKPFo
         C5gA==
X-Forwarded-Encrypted: i=1; AJvYcCWyVT+onlEAI0BxRF4vWe9isokHeqUKRoxhqaUoOY4ykwCssj6BM8DzYmPffz58ZsyDC0rSdfuFYvkm@vger.kernel.org
X-Gm-Message-State: AOJu0YzHvxdRQExpnGs4bz5wc58nLHvqQGBZ6v4qKtpHs3eRqOF5iWvY
	QopUdwh6dfa2vGZBF+KlWDm6ElADXBZfwwuPz8PfubD0DZQe+G3LD3IzxTZNa8V4pBM=
X-Gm-Gg: ASbGncsMU7/xLhZRLrhc0+VlAXjALvOgAzO3s9S9nzqPzBrSxvuXiooROe2RvsyG25z
	S931gLTfzVszOykKyf2x2nt5jNaWCpBjf7UHqENgJu/7nWR1WEzjQmKq8CmnW/95jyCUYQ33e2k
	WsSHm4Ka2lN3oceRhvZvwtcGCEGX/mDVlSaLHrtqNgt33o0EpDgBQwViKVXFO1WAgfYUe2jSt0n
	fa28vOPwsUSJWvLKA5AJ7YXtUkIFltzHVRXATBT60tLe110RLOCufi7uU8dTFg4jYL31r0MJIt3
	P0Xkjdg9oJGOF0JqxoiW6JeM9XL1K1mgWBW5MPqeUX6601pHgtW/3KAuMJ+E07mHl7oax4FT18d
	1MNX+QB2fn3ZMobW7UITKvASgHShbZo2sDC5nADQoe0/Dn+TG8J4ibdRk6IZX
X-Google-Smtp-Source: AGHT+IF2M6+RABGzsFZDYjodg6A087UWlGM875oBqCovBVShv1w/Fk6PCjDOVKZn+xDtdWRUVI3AEw==
X-Received: by 2002:a05:6402:d0d:b0:61a:9385:c78b with SMTP id 4fb4d7f45d1cf-61bf8950eacmr2157884a12.38.1755791068524;
        Thu, 21 Aug 2025 08:44:28 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a755d9ccasm5617045a12.4.2025.08.21.08.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 08:44:28 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 21 Aug 2025 17:46:21 +0200
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com, wahrenst@gmx.net,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH v3 2/3] pinctrl: bcm: Add STB family pin controller driver
Message-ID: <aKc_TdJarQBiFMI_@apocalypse>
References: <cover.1754922935.git.andrea.porta@suse.com>
 <bb746d2fd50ecbb9963438fae8601c2e4901a126.1754922935.git.andrea.porta@suse.com>
 <CACRpkdaH8sxQQFmx9-Gzc6ybJ_AFvLUCk=MiS=0KiB4VhZhXaw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdaH8sxQQFmx9-Gzc6ybJ_AFvLUCk=MiS=0KiB4VhZhXaw@mail.gmail.com>

Hi Linus,

On 11:37 Tue 19 Aug     , Linus Walleij wrote:
> Hi Andrea/Ivan,
> 
> thanks for your patch!
> 
> I'll make a bit of detailed review below, the big question I have
> is if it is possible to split the files a bit, like:
> 
> pinctrl-brcmstb.c  <- STB core
> pinctrl-brcmstb.h  <- STB API
> pinctrl-brcmstb-bcm2717.c <- All BCM2712 specifics

I'm trying to find a suitable way to do that. The difficulty is
that AFAIK this is the only chipset using this driver so I'm
not sure what parts are generic and what are specific to BCM2712.
I'll do my best.

> 
> This would make it easier to reuse the base file with other STB
> chips, right?

Sure, provided we have a clear separation of common vs specific,
like stated above.

> 
> On Mon, Aug 11, 2025 at 4:45 PM Andrea della Porta
> <andrea.porta@suse.com> wrote:
> 
> > +#define FUNC(f) \
> > +       [func_##f] = #f
> > +
> > +#define PIN(i, f1, f2, f3, f4, f5, f6, f7, f8) \
> > +       [i] = { \
> > +               .funcs = { \
> > +                       func_##f1, \
> > +                       func_##f2, \
> > +                       func_##f3, \
> > +                       func_##f4, \
> > +                       func_##f5, \
> > +                       func_##f6, \
> > +                       func_##f7, \
> > +                       func_##f8, \
> > +               }, \
> > +       }
> 
> These macros have a bit too generic names. Prefix with BRCMSTB_* or
> something please.

Ack.

> 
> > +#define MUX_BIT_VALID          0x8000
> > +#define PAD_BIT_INVALID                0xffff
> > +
> > +#define BIT_TO_REG(b)          (((b) >> 5) << 2)
> > +#define BIT_TO_SHIFT(b)                ((b) & 0x1f)
> > +
> > +#define MUX_BIT(muxreg, muxshift) \
> > +       (MUX_BIT_VALID + ((muxreg) << 5) + ((muxshift) << 2))
> > +#define PAD_BIT(padreg, padshift) \
> > +       (((padreg) << 5) + ((padshift) << 1))
> > +
> > +#define GPIO_REGS(n, muxreg, muxshift, padreg, padshift) \
> > +       [n] = { MUX_BIT(muxreg, muxshift), PAD_BIT(padreg, padshift) }
> > +
> > +#define EMMC_REGS(n, padreg, padshift) \
> > +       [n] = { 0, PAD_BIT(padreg, padshift) }
> > +
> > +#define AGPIO_REGS(n, muxreg, muxshift, padreg, padshift) \
> > +       GPIO_REGS(n, muxreg, muxshift, padreg, padshift)
> > +
> > +#define SGPIO_REGS(n, muxreg, muxshift) \
> > +       [(n) + 32] = { MUX_BIT(muxreg, muxshift), PAD_BIT_INVALID }
> > +
> > +#define GPIO_PIN(n)            PINCTRL_PIN(n, "gpio" #n)
> > +#define AGPIO_PIN(n)           PINCTRL_PIN(n, "aon_gpio" #n)
> > +#define SGPIO_PIN(n)           PINCTRL_PIN((n) + 32, "aon_sgpio" #n)
> 
> These are also pretty generically named, but this is OK because they
> don't intrude on the pinctrl namespace as much.

If no one else has something against that, I'll leaving those as they are,
then. 

> 
> > +static inline u32 brcmstb_reg_rd(struct brcmstb_pinctrl *pc, unsigned int reg)
> > +{
> > +       return readl(pc->base + reg);
> > +}
> > +
> > +static inline void brcmstb_reg_wr(struct brcmstb_pinctrl *pc, unsigned int reg,
> > +                                 u32 val)
> > +{
> > +       writel(val, pc->base + reg);
> > +}
> 
> This looks like unnecessary indirection. Can't you just use readl/writel?

Sure, moreover there's just a small bunch of invokation for those functions...

> 
> > +static int brcmstb_pinctrl_fsel_set(struct brcmstb_pinctrl *pc,
> > +                                   unsigned int pin, enum brcmstb_funcs func)
> > +{
> > +       u32 bit = pc->pin_regs[pin].mux_bit, val;
> > +       const u8 *pin_funcs;
> > +       unsigned long flags;
> > +       int fsel;
> > +       int cur;
> > +       int i;
> > +
> > +       if (!bit || func >= func_count)
> > +               return -EINVAL;
> > +
> > +       bit &= ~MUX_BIT_VALID;
> > +
> > +       fsel = BRCMSTB_FSEL_COUNT;
> > +
> > +       if (func >= BRCMSTB_FSEL_COUNT) {
> > +               /* Convert to an fsel number */
> > +               pin_funcs = pc->pin_funcs[pin].funcs;
> > +               for (i = 1; i < BRCMSTB_FSEL_COUNT; i++) {
> > +                       if (pin_funcs[i - 1] == func) {
> > +                               fsel = i;
> > +                               break;
> > +                       }
> > +               }
> > +       } else {
> > +               fsel = (enum brcmstb_funcs)func;
> > +       }
> > +
> > +       if (fsel >= BRCMSTB_FSEL_COUNT)
> > +               return -EINVAL;
> > +
> > +       spin_lock_irqsave(&pc->fsel_lock, flags);
> 
> Please use lock guards instead, we do that in all new code:
> 
> #include <linux/cleanup.h>
> 
> guard(spinlock_irqsave)(&pc->fsel_lock);
> 
> The framework handles the flags variable and the freeing,
> look at other drivers using guard() for guidance.

Ack.

> 
> > +static int brcmstb_pmx_gpio_request_enable(struct pinctrl_dev *pctldev,
> > +                                          struct pinctrl_gpio_range *range,
> > +                                          unsigned int pin)
> > +{
> > +       struct brcmstb_pinctrl *pc = pinctrl_dev_get_drvdata(pctldev);
> > +
> > +       return brcmstb_pinctrl_fsel_set(pc, pin, func_gpio);
> > +}
> > +
> > +static void brcmstb_pmx_gpio_disable_free(struct pinctrl_dev *pctldev,
> > +                                         struct pinctrl_gpio_range *range,
> > +                                         unsigned int offset)
> > +{
> > +       struct brcmstb_pinctrl *pc = pinctrl_dev_get_drvdata(pctldev);
> > +
> > +       /* disable by setting to GPIO */
> > +       (void)brcmstb_pinctrl_fsel_set(pc, offset, func_gpio);
> > +}
> > +
> > +static const struct pinmux_ops brcmstb_pmx_ops = {
> > +       .free = brcmstb_pmx_free,
> > +       .get_functions_count = brcmstb_pmx_get_functions_count,
> > +       .get_function_name = brcmstb_pmx_get_function_name,
> > +       .get_function_groups = brcmstb_pmx_get_function_groups,
> > +       .set_mux = brcmstb_pmx_set,
> > +       .gpio_request_enable = brcmstb_pmx_gpio_request_enable,
> > +       .gpio_disable_free = brcmstb_pmx_gpio_disable_free,
> > +};
> 
> With regards to the GPIO "shotcut" functions:
> please familiarize yourself with Bartosz recent patch set:
> https://lore.kernel.org/linux-gpio/20250815-pinctrl-gpio-pinfuncs-v5-0-955de9fd91db@linaro.org/T/#t
> 
> This makes it possible for the pinctrl core to know about
> functions that are used for GPIO, so you can mark your
> pin controller as "strict". using the new .function_is_gpio()
> callback.
> 
> I plan to merge Bartosz series soon and if your pin controller
> is aware about which functions are GPIO functions, this makes
> things better.

Sure, very nice!

> 
> > +static int brcmstb_pull_config_set(struct brcmstb_pinctrl *pc,
> > +                                  unsigned int pin, unsigned int arg)
> > +{
> > +       u32 bit = pc->pin_regs[pin].pad_bit, val;
> > +       unsigned long flags;
> > +
> > +       if (bit == PAD_BIT_INVALID) {
> > +               dev_warn(pc->dev, "Can't set pulls for %s\n",
> > +                        pc->gpio_groups[pin]);
> > +               return -EINVAL;
> > +       }
> > +
> > +       spin_lock_irqsave(&pc->fsel_lock, flags);
> 
> Use a guard()

Ack.

Many thanks,
Andrea

> 
> Yours,
> Linus Walleij

