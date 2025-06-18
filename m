Return-Path: <devicetree+bounces-186935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 20919ADE2FE
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 07:24:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 797407A9622
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 164711F473C;
	Wed, 18 Jun 2025 05:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="WJXMWXOH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C64A1FAC23
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750224259; cv=none; b=rZ1R8UxxWoOgMHhdb85cyfEpQH2JbcW5p778VhLkzDfBnTWuq2vhfp1JkeL1LOlkR5knvG0sFk439YAsjvtejjDM1jpdwp0NN9gq2xQhS3yORrEMTWEg6XviOwEqE/pFPfUY1W6jTxUapwxj4YWh5bor/YAhJ7wMst10IcYvbzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750224259; c=relaxed/simple;
	bh=CjftUrHfuTNnLmkXf91akeBADK/18bO2WwdPuXaL3V8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aUVg7JKIzlQF3Wg9Xeq13xLwZswROkCP1FTR1YUac0Qs+CoEWjySKIIb5S7vuW2YGXLBLwAxneEJYRdL3W0R1sfnCs3775eNWFSPWmTVSSymObcVngy53mVNMX81wBpDLcglZwI68lxTWfBuwV+cPG+Q+pMUL5rGVfyNof21Lrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=WJXMWXOH; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54e98f73850so6132572e87.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 22:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750224255; x=1750829055; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Z4TSLN8JZPIMvLRhF9VLnkxWZBX3eFV9ERu7o6ArDg=;
        b=WJXMWXOHm/s4/nSrJXVlhkMhDNznxmdjWA2qdr59YKj5gsW8m96PrRbxTCnN/xH5qU
         r7BO5sl5xBYIwElh1Wjk6ABH0hKnP37PKJEqrTxLbFpXw6P3v9PCHCqWE7oo+Pj0de6V
         vPyIu0+zZllELc2w3aFHaxr2t3ddp0iYO0vXbfCWBI3gURRZv7QTbWFT9owlc7NrB368
         nggVODsa2loHMzLRrns72tsNiPzhkTxxwJIeXpQX0/CzqP+yJounHlOcAgIA0CdIe3AE
         hc3shf8r//Og+dI+yvlhpzbtQtd/Spzc078HjPTvi+mLe2zCeL1u2MyNx6tRLcsMbyGE
         iS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750224255; x=1750829055;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Z4TSLN8JZPIMvLRhF9VLnkxWZBX3eFV9ERu7o6ArDg=;
        b=C/fZn47X+8r3vQTrP/yB70l9aiKBcjWGHO0G8jHQNvVwMZegTT2r9gtMqCI43svldG
         BmqOdpSBG/+ODO7lYdD48RAz6HAEP8drSy+qVaDD8U7hcQnoCOEnztszegH4eduqSLBx
         UYs6UGEbmI4kMjZE+vKdRdJfiAVeppxvoret//C4JnLsQ/Z+Bt3THXy/Kvn8Ri9406UQ
         TqH4SOrsi99MC3xVgJea4nuWty1T5Xa2NTbH7+srM5Xfb9KJRovpwKxOjO/gH5d/z24o
         1Lrom0KU4XaJwukCpDq/f2THO7TrY8D4ggBkagtgGP9NEg8ZXWq2mCb+eoxeSSBK/Get
         v1+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUPwBaHtxlmVtpKTzJO1PxL95YBZpeUKUjGKwNQSWxftUwg7ihlwxtHemVTqCvVoJG08mTK3461omIO@vger.kernel.org
X-Gm-Message-State: AOJu0YyQdAfPsMOqV0fbUvjAjZBzF0h27D7XvSVzq/pzOqYi5y1OEaRb
	rKLwYTV6oYawxkO8NuQIWrUUGevpXXFkuaRccT3mWxjUZ3wgB+mS2CGPjiFgyyIlxJ2+P2U4NzM
	OCv2fmJU6Aa7lhapqjof7RUolbD4U/j6OAjfTloPpzw==
X-Gm-Gg: ASbGnctMW/lH9sJj8zZNVJJj6MJISNwMLqWG2FvoFQVP4H+3+3KHuT+aEwSWuWl0xTL
	P1tThcr8mA7Qj3NefsG/Vgl0Mr9V8ZHLdEhWNoQ0C76DFTRxrYd6QTBnG8PQfQfctP/bzgUJsCj
	nyIquyqypUbifT21zqxx4YNto22/Mm78SM9Ui98NyYTw==
X-Google-Smtp-Source: AGHT+IFwL9G1DHBfI/lVr74bMBkL3ROv8/Gb0OUH3lB+sHfgk3+LXmQwxwY2JVd0OZNae9e8E+jgY8I9Gk7tR0VNm6E=
X-Received: by 2002:a05:6512:3b0f:b0:553:abbb:c530 with SMTP id
 2adb3069b0e04-553b6f49986mr4356712e87.56.1750224255114; Tue, 17 Jun 2025
 22:24:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611062238.636753-1-apatel@ventanamicro.com>
 <20250611062238.636753-13-apatel@ventanamicro.com> <87ldpvirl2.ffs@tglx>
In-Reply-To: <87ldpvirl2.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 18 Jun 2025 10:54:02 +0530
X-Gm-Features: AX0GCFuqAwxb7NkJo6ROc36kRxrpGi8zqYIq4k-XKsi8PzPM1EcP4vkMM19V2qo
Message-ID: <CAK9=C2UCpth4GQ_q2OMwndBeZKf9e_bsoHXaKJW0cNzTWggNUg@mail.gmail.com>
Subject: Re: [PATCH v5 12/23] irqchip: Add driver for the RPMI system MSI
 service group
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Len Brown <lenb@kernel.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Atish Patra <atish.patra@linux.dev>, Andrew Jones <ajones@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 9:03=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Wed, Jun 11 2025 at 11:52, Anup Patel wrote:
> > +     ret =3D rpmi_sysmsi_set_msi_target(priv, hwirq, msg);
> > +     if (ret) {
> > +             dev_warn(priv->dev, "Failed to set target for hwirq %lu (=
error %d)\n",
> > +                      hwirq, ret);
>
> Just let stick it out. You have 100 characters ...

Okay, I will update.

>
> > +     }
> > +}
>
> Other than that:
>
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
>
> under the assumption that this goes all through either the RISC-V or the
> mailbox tree.
>

IMO, this series should go through the RISC-V tree but I am fine
with the mailbox tree as well.

Best Regards,
Anup

