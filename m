Return-Path: <devicetree+bounces-91008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F789476ED
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 10:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 393FFB21999
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 08:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99EF14A639;
	Mon,  5 Aug 2024 08:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZXXjgvqI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13EC14900E
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 08:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722845484; cv=none; b=GlHFFGQx2eGFejGgpGcu70i1D3G+xFL1UhyTe8k2CMFYgcIpZKkHfR5FV84KVGTeIgL9x/1/uZzOfcEyrYgdgiKV0swVhl0GqBgCyozyMu9VLBYsqJXItNqR3DWc89GnFVVBjAbWKuFfxDe2plzPr9K49KH5H6JCYn+6oePGE7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722845484; c=relaxed/simple;
	bh=OGaVx+qMhZ0b7otpK3O02Kw7IL7OQu7ghb0iUPKBQPk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K4N/5q0uphpcXvF4d4JaeQwLbd/dcqGb5hYiR+Av9UYKvvzECws3Ea4pvVNgYjSFerocpwdsie7lKr3iuqyfrBhH984wbC0KtfxoGRHv8yVMWV51Rt8riVxvMqTWo2NnjUO7lOXEhmzSmhgkBT+zp63VKU0yNNR4Crl4a6iRLPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZXXjgvqI; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52efa9500e0so11911702e87.3
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 01:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722845481; x=1723450281; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OGaVx+qMhZ0b7otpK3O02Kw7IL7OQu7ghb0iUPKBQPk=;
        b=ZXXjgvqIc5ePHCwNR8+DkTdAWjGsWOTN2rGFbNRBQbEZEExu2gDdX2Hj+sKMNZdHuo
         oJvb0U4F+aEo7QvSAale5n1Ixh2eeTUAhoqNu1DQ8kPIVCXE+Tc6NInk9GJ1TIEgqchS
         efs7VeT8zgMAaA4zKbn27VXl2e+rFIkZoPHxr/jRbcNss+cRx8Vg0iAdz1ryTKBfcoss
         txQdAQKbQK9UOTScsYSPqHY40TaeKVo+ActZy8DzdVO6E2+UhfJUlx0XDhIkuy2m1w7V
         qeXoCvKApuSqAIE0+sPWsNxDNIri15pJi1oyZ21aSBNyk/NOic5tsjwJT12A40JUG2ft
         TT+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722845481; x=1723450281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OGaVx+qMhZ0b7otpK3O02Kw7IL7OQu7ghb0iUPKBQPk=;
        b=fe0QPKgldhUZvbML6nNBgLDH+ddpmZ8+KbqsYKLDzjBhySL+IODtKqdj2XX9IVQHht
         04vD0Fr9nFS5sFOBRiBXwTSZRr+Uzs7W/emUZoew+Ff/dG9fMm0TesrUh8xVAmitKXI/
         DxxKeDr7msKO930mkOaU0lmfp/699fLc90XLG/fA+2fyVjxZ93DNgnk5Ltzz9TG4ftQk
         TPxIFtah/8BCZ0nZhLfcluZKK+fOIjvOgYwxkdeV7VH+9RXoiAtrQ0/sc/ZEoKINjsQL
         Hc3tyLLJjhlC2mpLeon2JZ6ZyeRhpodHVkkJQJavXVzAbAaR8J1K5NI2hpgkrbs1L9as
         aqfg==
X-Forwarded-Encrypted: i=1; AJvYcCUCvmtdRSw7kb08CxcY4yx0rF5tTyqfEGLi34cp0/KfZ02PXRHdLrgj5rIfTSJrDfZjqr4JoXa8Tk03jk58wULGhQc/MD3OFcYNCw==
X-Gm-Message-State: AOJu0Yzdk5fAC/QYiULm2gruaGz7OjOpZBGpyUnwDgZb2zyvQ01YvDkv
	lMR/wNdqE/nKng/m/Librwk+0B7B/lXjH7DjD9ZPcM8PaXquzQpI3f/mSS4y5spRvCxAJ8oO/NV
	o8s43Yay6T4Q0jaM6hJJcAad3O4XI3U0RZZ6fFw==
X-Google-Smtp-Source: AGHT+IEexVYi+TyR4tI+GJL56PCbzdQ1IM0K1XkXHiZ4BaBgjJiBD9SkZedwISuAdeYS+5aa+vlh1tFok3PdTds2jiQ=
X-Received: by 2002:a05:6512:32c5:b0:52e:95dd:a8ed with SMTP id
 2adb3069b0e04-530bb385320mr8050795e87.35.1722845480886; Mon, 05 Aug 2024
 01:11:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240723-supervise-drown-d5d3b303e7fd@wendy> <20240723-handoff-race-33160609553f@wendy>
In-Reply-To: <20240723-handoff-race-33160609553f@wendy>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2024 10:11:09 +0200
Message-ID: <CACRpkdYdxdLG8=_Xd7HLwQ5+pxwGw6Xte7=UNbknB8HR474bcQ@mail.gmail.com>
Subject: Re: [RFC v7 5/6] gpio: mpfs: pass gpio line number as irq data
To: Conor Dooley <conor.dooley@microchip.com>
Cc: linux-kernel@vger.kernel.org, conor@kernel.org, 
	Marc Zyngier <maz@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor,

thanks for your patch!

On Tue, Jul 23, 2024 at 1:28=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:

> Since the interrupt mux is going to provide us a 1:1 mapping for
> interrupts, and it is no longer correct to hit all of the set bits in
> the interrupt handler, store the GPIO that "owns" an interrupt in its
> data pointer, so that we can determine which bit to clear.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

I don't quite get this, the irqchip of the GPIO is clearly hard-coded
hierarchical, then why don't you:

select IRQ_DOMAIN_HIERARCHY

And use e.g. girq->child_to_parent_hwirq() to handle the
hierarchy?

See drivers/gpio/gpio-ixp4xx.c for a simple example of a hierarchical
GPIO interrupt controller.

Yours,
Linus Walleij

