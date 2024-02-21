Return-Path: <devicetree+bounces-44354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E4C85DAC6
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:34:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 522621C23030
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F337E767;
	Wed, 21 Feb 2024 13:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mG/CWUvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8127BAF7
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 13:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708522372; cv=none; b=k6uBm4cOcZkuMjcQrVnWPLedP4P27/0bLqx1Y506I7Vf0NQD69HKEmS2VSx3riCjxdSNTbCnybNJbEuKYYKHaUt815Je1xfRktfouozcNx4Ogc5CI0iIy9XrWDb9/XOlbAzujkRQcjKdqwrag4s2gSETZDnP1erGybnI5nFomsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708522372; c=relaxed/simple;
	bh=ZbI0MILS9TFkjD/F/sXV6t3q0IBlyywvLRdUA8lQU9U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fjYZCZf05Gah0/Zu1rZ10ra6XFEL5qzp3zhzliRivL3H54ID+kA1GSn3QWNpiGg9TC5RuWiFdBJN5OVg7VlG+zITNFfI4pgWRLOo7jh5f6EUFnnavYNlhbmMNM5LcPTHJ0JO8v4bRDMS0pEqJAUc10QieBEL9rMVyOvBxQgI/RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mG/CWUvm; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-511976c126dso870039e87.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 05:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708522368; x=1709127168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TfWb8XMWz9JE2jfcdSXO3QFdpoEmfn/qndzXSrmaboY=;
        b=mG/CWUvm+9eVfROf5Lcx99E6ib8zLczkZHbeV2uqjZZEq2Bi79+KIW9CYsDoggRrtf
         dhbbH59YNL8OxXwAg960DttmyLoboACQe7kf+K76nVuc2yFIAdM/ge9Yc5gVD78M2NCm
         s2M2zT0tGUA8Z2Syi/80fbyrdh0LEVJIkqtg9x0LDAjW7u54gFW1kTCzpQSl57HlK6ig
         vnXxRlrr9u8sLLEYiwMqK0R9x7kTtg6Itj0fJSADkSYtdM69y5Xf4riZJniOoU50/8JS
         AC0K736UElO4SMs06O5UKLfITwc0+K+PwkgxX7TNBgIj0vmzGumxVTeFXB+Wqs1yAHh9
         xDRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708522368; x=1709127168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TfWb8XMWz9JE2jfcdSXO3QFdpoEmfn/qndzXSrmaboY=;
        b=Q4/IbZh0oK/qERd7ma4dRWAoLe0s1HFN6fUYnmu+9mk/IrcdBPtIrjDam5f1hAK0yB
         Ch7zsI8rFXU+2hLUonaO3Pni6oDrHyTPoc/XP2rbk/sWbf6xiJ0t95A5zsv/1SyHRx05
         ZRL+y2WUfwti9W16xwnfl4kucPuGWIEBl97WkMs1x0ggJs+9wkT8CMBAwZv7N8/TVVjP
         ffS4P+ByuYdnyGDYJicU12QihIJIuYqm1x9nNm+37raCKPiG23jhGLklH9vJ5D5RiBjM
         npxTYbyEx0Wm30pvoSpKdd/Nr0zNt5TsTBgyPfCwodbuZAqfF1kF28qBF4zdW7Lxm5sl
         sy2w==
X-Forwarded-Encrypted: i=1; AJvYcCVP8Co1aP3NlOpEvsCHL1i6aWvQE/eRjNEX2wHttscxlkTcURPD431nuoFB8iE3F61DwCDWwR6Pu6Mpx4vJhbi62DNZtvpcSqbMMw==
X-Gm-Message-State: AOJu0YzlW7ARtS+Ujh4OKe6+XHCWIEjtqS7gVXDzJWq5hUib4pZ7FFiQ
	XyLdZsO9IsNx0g7bdQ/+6cMyQihc2AOZJZHKX1XAI5s8KuhzAkemWkBVSrF4qOBPL+3ZkDf6AWd
	zk+ZT97GqkEWpSatYFRvsPtX8kqQgSmkVpM/f/Q==
X-Google-Smtp-Source: AGHT+IGrWHp9dA4CgYAReiZvpVC3h4faMXExc5Y/Zw6gft716uhzwJCrU7dCwfSI/yjSEz/SSOSoFux6n+RH0LjfsSw=
X-Received: by 2002:a05:6512:3089:b0:512:ada6:f218 with SMTP id
 z9-20020a056512308900b00512ada6f218mr8741526lfd.59.1708522368449; Wed, 21 Feb
 2024 05:32:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-4-apatel@ventanamicro.com> <87cysrigud.ffs@tglx>
In-Reply-To: <87cysrigud.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 21 Feb 2024 19:02:37 +0530
Message-ID: <CAK9=C2VwFJG0XDkDt5zrUT-xYatZ7V7vRwvV=bhLx0P73RzzAw@mail.gmail.com>
Subject: Re: [PATCH v13 03/13] irqchip/riscv-intc: Add support for RISC-V AIA
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 3:43=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Tue, Feb 20 2024 at 11:37, Anup Patel wrote:
>
> > The RISC-V advanced interrupt architecture (AIA) extends the per-HART
> > local interrupts in following ways:
> > 1. Minimum 64 local interrupts for both RV32 and RV64
> > 2. Ability to process multiple pending local interrupts in same
> >    interrupt handler
> > 3. Priority configuration for each local interrupts
> > 4. Special CSRs to configure/access the per-HART MSI controller
> >
> > We add support for #1 and #2 described above in the RISC-V intc
> > driver.
>
> S/We add/Add/

Okay, I will update.

>
> > +static asmlinkage void riscv_intc_aia_irq(struct pt_regs *regs)
> > +{
> > +     unsigned long topi;
> > +
> > +     while ((topi =3D csr_read(CSR_TOPI)))
> > +             generic_handle_domain_irq(intc_domain,
> > +                                       topi >> TOPI_IID_SHIFT);
>
> Please let it stick out. You got 100 characters. All over the place.

Okay, I will update.

Regards,
Anup

