Return-Path: <devicetree+bounces-225978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B76ABD2A33
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:50:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1392C4F0C74
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2379D304BB8;
	Mon, 13 Oct 2025 10:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dIbJQqA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38D33043AE
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760352573; cv=none; b=U/dGhHqzMIr1nS2NPHGlcXdS0L/3oa1VtF4uvH8khXqxTmW88MhpQfzdkNCC7NaHlQqmCrpd9E90Dk6bhPJ/Cb1lL+VD56p9kPc/mRTJfnlU2Nb2u8eSIvmaTik91uQreI9qsG6aS/sTwSPuPikGGhrlrRBvpcekQh2+J3UGFJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760352573; c=relaxed/simple;
	bh=OBRTBgdQa0ezTgOG0fekcSASOaIs/eav1o10bLNrjYg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mMiR/ZdsQuA5eXVOhn3STB+d+CbcTVTO8PU2y3hejuQ1kSDu4wSG5kCKPTQqcUP6RVJxYtle93cG2y4Qx3YrCbasV6tSxY383mx1vwSqEv8kzynKdOsVsrOUdpaC9PK7bHURnCXqGVMnjhYSDsYTSgn3Fs3Dc+HCDb4JjSp2DVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dIbJQqA3; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3682ac7f33fso47053931fa.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760352559; x=1760957359; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OBRTBgdQa0ezTgOG0fekcSASOaIs/eav1o10bLNrjYg=;
        b=dIbJQqA3hv0qH5S8ffwtW5xd5mp3nBvNThC5DatwFba/UINk/1v+qPAEDYGVm9zCy/
         xk9aAmgF30hBHLUwOGGiqQ4t5ysmrvL/VVRJ4msftFxWNNZoYlHfqXRYePlhJkWgQ+Iz
         XeCa+cGGrlndMAxORngQjOLKggc1Pgz2W9uN2GsleeNeXFfCuQQOqwCriEBIqAfoVF8M
         /KGLseoR13gLcvq8NCJdutHcIVIyTNWLgnGtrljn+TR9sjb3oKNgq/BFXl2RsR2zgKhi
         F28rGpqYQygsoV4x1oFDUSDUa1kZDDdYZfnJ55GUQOL0LielO0oqaaxCHwgeOS+0jCkt
         9epA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760352559; x=1760957359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OBRTBgdQa0ezTgOG0fekcSASOaIs/eav1o10bLNrjYg=;
        b=HdVothDWNxJdslF1gSYhDAugD/rvU5PAe66kYJms4Uyc5mbtsSA425nvLETy9GuLxn
         0by9Svoarxz0LyEF1FwWU6/ebB8MD7BUB+nXJPvYN+xPCtDIGBboSr5pmMd9hxqaoH7C
         ul4ZLsKAKai/DYE2Su1hss+PJ8Jz0rOTQmP4H0taflQ+s8ync/bfks1J9/FFtCO2lBiH
         +D1xR7J1Esm+6xpxqm/FbUyAaM1nfzat6xeTpOXN7IPHOR5lK6mM5EYKkIVITdN82+tu
         sLzLYVDedb1jYuHtucCjg/de3ey8OjtjYxsCtN9fWSwROC7AIDcCxOxiWL6RSvE095mb
         SAMQ==
X-Forwarded-Encrypted: i=1; AJvYcCURhGt+RXpZ14yG5aifVVAVdoI78ExC7KvGErAHZltPaRFq4xMusS3WNx0fasW59tJhEPaGk5/Ekfvo@vger.kernel.org
X-Gm-Message-State: AOJu0YwWc64GOX1bHUINma7EQNwBB5WJRLjom50Xe2Bkt3tz0LOZfl5o
	dOGO8sotCZjqGU4Q85rwac0mGAuUL0mR7qEgYxmPmeUUZIuNj66mAPmUMeOA00BNQMNUPPFHqRm
	aPeCvfzJUX/G94t4Us4HqOOHxiwiintl6zFZReGbeqw==
X-Gm-Gg: ASbGncvdSpVUykDlMinm+jRcNMLR69p9RDUNhzVqqzeEX0oQ2FkNRJb8rIv5HiqEP4V
	x5j5mBtdFdfigSLaqmc0g6dUrr1k3glOhZQMLbnJUIhWWJw6RU0tiJWM1soHgJJL9SVqDO37ho3
	lyofqUI/xdoNFWXaAi7LsBFZqN2vhS39tnpLNsWZDyGlHflD5B+0u7Vhqy4Hs6QDnTflXeNKm85
	7OxwaO8+j3+9p0346qFlvcd37yvgQ==
X-Google-Smtp-Source: AGHT+IFOq8r2+x8j+n2o4YPgt0yqTqrdILP4XzCLFJtq6Qxm8iqZG0/oseSlJ2uW/NV8gJqb/q55XZ6vH5Q9BXkHEkY=
X-Received: by 2002:a2e:a54a:0:b0:373:c272:d986 with SMTP id
 38308e7fff4ca-375f526e5b0mr67942651fa.17.1760352558762; Mon, 13 Oct 2025
 03:49:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922152640.154092-1-herve.codina@bootlin.com>
 <20250922152640.154092-8-herve.codina@bootlin.com> <CACRpkdZPURiag1cUQZ319_QA83u+qOCSRALxpe10_+cTcevy+Q@mail.gmail.com>
 <20251001174205.71a08017@bootlin.com>
In-Reply-To: <20251001174205.71a08017@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 12:49:06 +0200
X-Gm-Features: AS18NWCu7OuRtExFxAHo2mGL4pkxRIov06rPInvhQDpr6xWeLGLTOcCLnJNvizg
Message-ID: <CACRpkdZ1qg6ecA5DyVEGUHQxLh0SnC=GC5JZdevT99YVWU0ypA@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] soc: renesas: Add support for Renesas RZ/N1 GPIO
 Interrupt Multiplexer
To: Herve Codina <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 5:42=E2=80=AFPM Herve Codina <herve.codina@bootlin.c=
om> wrote:
> On Wed, 1 Oct 2025 13:08:57 +0200
> Linus Walleij <linus.walleij@linaro.org> wrote:

> I don't see how IRQ_DOMAIN_HIERARCHY would help.
>
> The irq-mux only muxes irq signal without performing any operations usual=
ly
> done by an interrupt controller.
>
> That's why I used interrupt-map in the irq-mux.
>
> The only information needed by the irq-mux is the interrupt line muxing t=
hat
> needs to be applied. This information is available in the interrupt-map.
>
> If we introduce IRQ_DOMAIN_HIERARCHY, either it is done at gpio controlle=
r
> level to route gpio interrupts to GIC interrupts and, in that case, the
> irq-mux is skipped and cannot apply the muxing.

I meant to introduce the muxing code directly into the
GPIO driver instead of using a separate muxing driver,
using the struct gpio_irq_chip supplanted by IRQ_DOMAIN_HIERARCHY.

Are these IRQ lines ever muxed for anything else than
GPIO? In that case go ahead with this solution, I guess.
But the title of your patch seems to suggest it is
only used by GPIO.

If it is only used for GPIO, why make it a separate
driver instead of just putting the muxing into the
GPIO driver?

> Or it is introduced at irq-mux level and irq-mux need to be an interrupt
> controller but is component is not an interrupt controller.

It is a hierarchy, as all interrupts are routed through
it. Just becaus you don't have to ACK every IRQ in the
hierarchy doesn't mean it's not a hierarchy.

> Maybe I missed some points or I misunderstood the purpose of
> IRQ_DOMAIN_HIERARCHY.
>
> Can you give me some details on how IRQ_DOMAIN_HIERARCHY should be
> used in my case?

The gpio_irq_chip ->child_to_parent_hwirq() is called
as part of the translation of each IRQ and in this callback
you can set up your mux. You can return
negative if you run out of muxable GPIO lines.
This means the irqdomain hierarchy fits as abstraction
for this usecase.

Yours,
Linus Walleij

