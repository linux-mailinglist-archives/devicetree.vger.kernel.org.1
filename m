Return-Path: <devicetree+bounces-44681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B0E85F445
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C703E1F2580F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE62A36AED;
	Thu, 22 Feb 2024 09:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ELLxwsP/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97922BB18
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708593956; cv=none; b=qKZcERbP8+h4L/jb049ql5FZSyLQrDyeGBJtHUB35NzRz2+Irtbp49nQ1IHraCtJU0B4XklMIjPBmiqoHEgkJdtOROLRvSUv+7pLQrciEMXTqn3h9MtO1gJKpmSn+fXNsgtVfl24TTss7c6djw1ZtXNfPuQoZ1N+Tzu4s5F7Syg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708593956; c=relaxed/simple;
	bh=bc42IU2aBhbKPyzJUIKJv5Nl5EvNwIhq3abioen6DWY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gGIrVa4SKPJBy98Rj0UEefZwsP3D8s+MFIJLw5svHbhTgGUjxnGT2adwqAsaBk0q8A5f8QQg884p7G2qvCurJDlXHn4ncapAUpv5HdEC3V8m6O44rU2DVeXaGBNCk1o2I7B1JvF6jFyeT3QdRQsbC1VsYncBokMKFxcyU3uKiGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ELLxwsP/; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d21cdbc85bso21464771fa.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708593953; x=1709198753; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CXa26b/do4x6rjZVpwya8dphZV/GXKaMCMBGS7MKkmE=;
        b=ELLxwsP/ICiDr8kd3L0kGOCMI8u7/yTPNew38MBMbSbNJR06hMDOv/NkP+rg4TWc6+
         OL2rWG0Ex+gnXTh8syaUeDoWC9MxwkvE1rcICe0JLvG0MMBd8CykBGTZjUBW5QMR8w6s
         OrouzLJQViWVSur/vwkFG6CW097K79nGSvSTvVs/7Y9ygvlH28iG7PTCupSsRB7R47x+
         SSCojSGY0XaUlUi8Sf7ADGTTGl4dweHPYRz4Pe1QJZ9MxjqPc1Oeq5AQaa3hHLFUCnQH
         OE6iVqUwtiCgLc+9uhDyQKlPu4qh917aGNdeYDYdNdspU5UIUdg/BcWeP10Em+pDCvt7
         FRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708593953; x=1709198753;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CXa26b/do4x6rjZVpwya8dphZV/GXKaMCMBGS7MKkmE=;
        b=aBesftTnNArh6692wezCEBIINZl3jioNjvVUTXXjriE5/Qyn10RY/EkeDITTzLFy40
         TT8JunORTTLo7JPzc935LohC+aqoc6llnZ/lRJ0V6LVAegO08MjwhpXtnLN/GnAMcq0P
         KsIaOikMMG5JFm/I9HhgD6sa3xM5dTr9QMxi0Jua7yypj2BmcP7eQGrmDl526GrWJvGl
         fvB4xoUCjToPjHu6rjPEYQ+9kzWQ+7fO/yw2i/PkD8H+VTgyVzDAdJwJ4d/dKQqp8A4S
         yp7y7+8MI+AVNmjM+F4RK94odGP4G5pgKCdmtGx2IIS0tGLbdkuF2wGZXCIisYTyp0jT
         038g==
X-Forwarded-Encrypted: i=1; AJvYcCWKjbaHl2MhZZKQg3oClUifACI04gVynL5F7mcsgm7kXnIzxC2B+81jpungTjYxJlBUOFkQS3UKKE1hYP27lHpvhno7QH2eR+6C3Q==
X-Gm-Message-State: AOJu0Yx512zqI49CGQ+/A5sw7U1hJvFTDs9cbUl++XBx/DjWE09dMAzg
	gExVWdIVUX5C3nzSzaGW6024ExK82dDelYimbqhMUIolW7fD03BlhtUYOSOKH46xqVbumdLa8hg
	m0HgdiyEP9NqCVq0MLbPokHPQnoS8JNFcnmxT/Q==
X-Google-Smtp-Source: AGHT+IGlGxBEhsTqo9FqHO/379rXbEug7N4jBXFhG8qz1xaYzSc7MzoS2sjWb05IeCm3cpmisGgHr2G8p7weBLGns/o=
X-Received: by 2002:a05:651c:1426:b0:2d2:2b84:763c with SMTP id
 u38-20020a05651c142600b002d22b84763cmr8288472lje.10.1708593952748; Thu, 22
 Feb 2024 01:25:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-2-apatel@ventanamicro.com> <87il2jih04.ffs@tglx>
In-Reply-To: <87il2jih04.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 22 Feb 2024 14:55:41 +0530
Message-ID: <CAK9=C2V_SVWTuV_Yap_=X5RwgctUs7eWHGXSp8KFUz3bWNf9JQ@mail.gmail.com>
Subject: Re: [PATCH v13 01/13] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
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

On Tue, Feb 20, 2024 at 3:39=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Tue, Feb 20 2024 at 11:37, Anup Patel wrote:
> > The PLIC driver does not require very early initialization so let
> > us convert it into a platform driver.
>
> s/let us convert/convert/
>
> Please us passive voice and imperative mood all over the changelogs. No
> we/us, let....

Okay, I will update.

>
> > As part of the conversion, the PLIC probing undergoes the following
> > changes:
> > 1. Use dev_info(), dev_err() and dev_warn() instead of pr_info(),
> >    pr_err() and pr_warn()
> > 2. Use devm_xyz() APIs wherever applicable
> > 3. PLIC is now probed after CPUs are brought-up so we have to
> >    setup cpuhp state after context handler of all online CPUs
> >    are initialized otherwise we see crash on multi-socket systems
>
> This patch is really doing too many things at once, which makes it hard
> to review. Can you split this into digestable pieces please?

Sure, I will split this into smaller granular patches.

>
> >               if (unlikely(err))
> > -                     pr_warn_ratelimited("can't find mapping for hwirq=
 %lu\n",
> > +                     dev_warn_ratelimited(handler->priv->dev,
> > +                                     "can't find mapping for hwirq %lu=
\n",
> >                                       hwirq);
>
> Nit. Please use brackets around the condition. See:
>
> https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#bracke=
t-rules
>
> for reasoning.

Okay, I will update.

Regards,
Anup

