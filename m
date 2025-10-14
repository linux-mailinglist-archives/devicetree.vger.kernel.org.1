Return-Path: <devicetree+bounces-226564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC13BD9AD6
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1B5FB355826
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 13:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87E9316194;
	Tue, 14 Oct 2025 13:20:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04354316186
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 13:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760448002; cv=none; b=N+8rek6tpno+0/yhFrrrAEHBA6au0OiAxtF2E5ZAbSTAsKLyCQwQnD0frXZ9MQL5snmVHsKKAPxRX0S5XCJEvJMwHtwaOW+oMc+gUvtTrYx0ewTjhuHo/Ej4Jaxy3nu5I2+gqsXGirewEWR6bHYD1eAOnMqBij5gWCf/+DVmvKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760448002; c=relaxed/simple;
	bh=aSDd+KL4NOTNpSwWZ1vV1gh67WYD6fXPWRozSjlK8ZE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U88UaEGaDCHFBnCzpD14Y8DpwoCXb3Hh9XKvJPHvI2K8Hs+wQByfrW+WzwikxRtC9S8jYy+kvJofLbbl3EnZT5ZiYb6NCheykmYUgUn3lRHXOQfXfKvudgSmdE4h0xBWPXXPfQFkkqDiq7te+IMUKM/lcDZ+iDMqeFmdBv6Xurs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-8fea25727a9so1357659241.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 06:20:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760448000; x=1761052800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Njz6v4Ye7icNa6eer5LCY0z/OUSx/xsBh5FobUmXyGU=;
        b=uPRKELQzsXkLGyYqEVNgnSxF4RcopRYESvMhv0/09ywzZdx3njlqjsfMUSIu/HT2p3
         jAjOX1tF4LUk++pRscYPjrVL2n8uNrAYeyxXlig2YCg7OYu/UCusUFYnsErA1SZXPCYV
         W2HdZWG+2hcYu1VSh5j3uyEmxkPJaHwBFRJeJcqDp0vrimYmdAUQQMcgxxv7hzHev9u3
         gPuG8k1MvZWrXXp4d1zammC3OJwxPv+0071xnRNqWvtFMke0wkCGx7nJPvvcdWPcel7/
         YBwqXMe665IDMYgtsD243GTL8HwbhdamGX+i/TN3rAtfOwcpi/ry88h8ohdAaTl6jRkE
         lCWw==
X-Forwarded-Encrypted: i=1; AJvYcCUfQN7M0hnOptIVN3wOw/REaEIDx6nDqDVR4G9LK7v8QAY1pvABsX8kMi3nWfEJn56V14xyhewPZ96k@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzphuc8lHQBTirwjx6rWqEKargdg4g7Qfm9bACA40Jg4hd0U94
	EAccL0XnHfrKEm83O3Y20z7ahzkwQAdjigBtNmdX5AiohLLzkjjlYpfG1D7xTdVf
X-Gm-Gg: ASbGncsjF5+BatG4XGh2LPYYMDt630L4MiD0s3Y1hVB3swrD5AE9/b9GNlYq+AzMHou
	NPrjsGUTx1MpRhZxkh5P6O1FSoM0PGZYI29N6rNGFDv9neQvFjxUa21N3egBEMjbN+dENG52ur3
	Em3sJPrfi+P7+KhN/8scYcycOntM0XSG1qnTWZrhqwj8ypE+fInyFQoRzXXZfeZTodCPn3CgFZ5
	5/4DTEdpmh+d0QNVEY+7CPm72LmrFThvvLjvint40Xw7CX1UxD8OhRXqdLQxNS/QbFEXbCBEM9r
	8J8LLePwEa781Rg2ZqJUqGPQIKQ/ndEF0iJfOw8eV3MnA4EAvAYenVlKLW1aklnPU+5+C/VATnS
	mnSsDWtlTtA7QOvAAxIi0OsukGDbgvhOdHnSvanhsNS9nc8KVXByQBXAHoKGxXsCSv+WrtriZBr
	cNsTFhWa8=
X-Google-Smtp-Source: AGHT+IHOE4j1oSsKZCbApSq6GALRHhvhoyO55zxf7hvCpWfCmhMnYPDV/gO5HEOfjgL9E3Z7fb5+Jg==
X-Received: by 2002:a05:6102:41a4:b0:59c:4925:eba3 with SMTP id ada2fe7eead31-5d5e23de45fmr8881601137.34.1760447999647;
        Tue, 14 Oct 2025 06:19:59 -0700 (PDT)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5fc4e9e4csm4408700137.0.2025.10.14.06.19.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 06:19:58 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-930ae1c6d05so1363942241.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 06:19:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV+HXxu5oeyRicd0JfHPKQMHoy9nwVUvlEQR5uRjnsy5cvgF4Bc2Spp5gtynWJ8a7pw+udXyG1q/Ly4@vger.kernel.org
X-Received: by 2002:a05:6102:6ca:b0:5d5:f6ae:38de with SMTP id
 ada2fe7eead31-5d5f6ae3c7cmr5745861137.41.1760447998299; Tue, 14 Oct 2025
 06:19:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918104009.94754-1-herve.codina@bootlin.com> <20250918104009.94754-8-herve.codina@bootlin.com>
In-Reply-To: <20250918104009.94754-8-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 14 Oct 2025 15:19:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWNErzjfqXXgJZOn2viPYmGeuJekY_WLDeK6vzYZzdJmA@mail.gmail.com>
X-Gm-Features: AS18NWCbANtqchYIwTz4iekVik6u-ZIED4wJm4rfdVFvh3ZW_Tu4x1cmyNlu-78
Message-ID: <CAMuHMdWNErzjfqXXgJZOn2viPYmGeuJekY_WLDeK6vzYZzdJmA@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] soc: renesas: Add support for Renesas RZ/N1 GPIO
 Interrupt Multiplexer
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Thu, 18 Sept 2025 at 12:40, Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:
> On the Renesas RZ/N1 SoC, GPIOs can generate interruptions. Those
> interruption lines are multiplexed by the GPIO Interrupt Multiplexer in
> order to map 32 * 3 GPIO interrupt lines to 8 GIC interrupt lines.
>
> The GPIO interrupt multiplexer IP does nothing but select 8 GPIO
> IRQ lines out of the 96 available to wire them to the GIC input lines.
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.co=
m>

Thanks for your patch!

> --- /dev/null
> +++ b/drivers/soc/renesas/rzn1_irqmux.c

> +static const struct of_device_id irqmux_of_match[] =3D {
> +       { .compatible =3D "renesas,rzn1-gpioirqmux", },
> +       { /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, irq_mux_of_match);
                           ^^^^^^^^^^^^^^^^
                           irqmux_of_match

Interestingly, this built fine for me before, presumably until commit
5ab23c7923a1d2ae ("modpost: Create modalias for builtin modules")
in v6.18-rc1.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

