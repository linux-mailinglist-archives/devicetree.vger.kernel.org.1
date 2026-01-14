Return-Path: <devicetree+bounces-254997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FBBD1E373
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:49:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E2D8304D198
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC7439446E;
	Wed, 14 Jan 2026 10:47:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2B0395267
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387636; cv=none; b=kz5S1kyD36GtNTQSH4MT7F7LvNVb8WKpfSAxxO23T6l3fQ/LwSEeRAqTN3cTC6nooVzYd2FbHpA13ZuYO14cmCe8jHb32VkSp6Hsnx4/HzfyO1lzh15FWufLNnxb2s939ajKlKpq1j3WNuhhh9ho2XN13UMf8+lfiP+azENIk98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387636; c=relaxed/simple;
	bh=l7Vms44D7cdWM2JTmvA6ZUvD6bdQNJphB0NNGZJgeu0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tJ+LERbT92Tz2o+tBOZx+BUV4BEU6OOsAYHJU7LQOG4y+1yHgnSsTLY5LOBNN/tJLKmHTDqZ+CiyAkDTtTMdW2C2ag+SeJ0MXWLXworZnMRZa58bIOs2ojuNddmc5NIlhLSpbhxI0WdDpDDSMUODO9QWHiKn7mqKK0iv0AFOWyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5635f3eff8aso1710405e0c.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:47:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768387627; x=1768992427;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eqj4xnVKq5dPU3hM1G946buXrOEhzZ5Yj8GNkLNrprY=;
        b=ctcGHDvlsAnEPVIoPEiRrxQtN44n9g5pjuPlvmY6mbDz4nUYYugO4JVzY1eGE8VMNs
         OFyXiKgkfcpUpfTYqSjKnevLm9ENgGfSucX4uw1lTjVrypkS+DVgNqd2jBojI92+JcNm
         NKRiRurgCDy2AnGR0IbVQFZ8LrOen1rs1X+T54UoJGu1IJ055HgNAhSF1CkHIuSnRl6g
         NYk6VRa8ZHoSYOPzROjkP19B+81duqi2TdGb1gk0ZTzxpzLHVxAXRwMXmh+Pzp3KVziQ
         w6MaVv15iMSquIOZU31Q+yxZrrh4bAD9sD+3C+Dwj4RwLyKwF9tYzInmzu1xYSHGpOyI
         mzHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXahEaZ5ff6nXV1Wm8+KFyH8jdJ1txAtyeQniq/+Z2QUo02WIK42XKJN+Ys09sFYm0Zarxkz0Yvk4eX@vger.kernel.org
X-Gm-Message-State: AOJu0YyvGxSneUkZJd6vdXdmq4CixFHS6qYpf7IRX8eevHqWjEUYVgWV
	K0MAos5X16b6y4PIKie7leaDw2AvtRxrJ6MTms1EyNHTi0uOWPIfcdYCOyHYVFlt
X-Gm-Gg: AY/fxX4XEQpkw2BUPzW/EABHYQID4SytfkPZVfzEvTlwP+ZDhFXQ6Fif2J+y4tYY7LM
	kixUJR5IUlRI8ErQF7Lr+6Ccqn/p5xyOZ3VM5KQKftprxWmagXkAavIHDS7HoPXDUtN7zLGB74N
	weLa7CGdHg9CkHRHAzDCk4ehW0O0pHz1C86lBx9hT19c02yT6SukbsFfInc+6A3R14hJgzFQVAU
	60s3ZBcehPmHEr1HhdJRXMsy7i60ap1KoOxKO9YpWV+ve76TqecHJ3VzMo987CRdV42IFeGvCo1
	mK7QoruI4B9NPbymdbHw4rbIpt4KQ7gu/OisqERQCDHWQxejCeF6nBVs5rGpRItU7Cl1ajVxCHk
	BqU4910rXVEWhjpAOnFZaEQCn3NyT0mvtqFYPGSZn8Hc61rUwA1UCQMjPSZmqIIJ+jEOEE2Kyd4
	9omInEraZr6EaxcFdMiQQuz9rtWAXuc/szjX7szTx/wx8W3i+q1zeRr1IZruA=
X-Received: by 2002:a05:6123:2e6:b0:563:72d8:ea6 with SMTP id 71dfb90a1353d-563a0a208ddmr801565e0c.10.1768387627377;
        Wed, 14 Jan 2026 02:47:07 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5637f6ce00esm10326443e0c.0.2026.01.14.02.47.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:47:07 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9412edb5defso2382199241.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:47:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVJreckMaRkQdhSaoNzVQKuCTk8YVInWRxp7Kqus14uTUAI91gGTqgLND5asw7iiFC5oznvQyOxrlKT@vger.kernel.org
X-Received: by 2002:a05:6102:6ca:b0:5ee:a094:d4d2 with SMTP id
 ada2fe7eead31-5f17f415847mr755513137.1.1768387626957; Wed, 14 Jan 2026
 02:47:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114093938.1089936-1-herve.codina@bootlin.com> <aWdp_jMVUBN04is3@ninjato>
In-Reply-To: <aWdp_jMVUBN04is3@ninjato>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 11:46:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWkGevDsBuUs1k=r5yeKJZHvs93b2SDfPwKoF4fFr-3Ow@mail.gmail.com>
X-Gm-Features: AZwV_Qhqb9GutQaQvQYv5ThIdOZpT1v0OWVzDimT8VJV3ZwAupoboLFYD3l7moY
Message-ID: <CAMuHMdWkGevDsBuUs1k=r5yeKJZHvs93b2SDfPwKoF4fFr-3Ow@mail.gmail.com>
Subject: Re: [PATCH v8 0/8] gpio: renesas: Add support for GPIO and related
 interrupts in RZ/N1 SoC
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Jan 2026 at 11:03, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> > Rob, Thomas, this series is blocked waiting for your feedback and your
> > acks if you are okay.
>
> This was a little hidden between the other text, so let me emphasize
> that these acks are needed. The other option is to send the irq stuff
> and the SoC stuff seperately.

The irq and SoC stuff depend on the of stuff, so doing so would
delay the former by one cycle.

On IRC, Rob sort of agreed to option A from my proposal (see v7 cover
letter):

  A. Rob takes the first two patches, and provides an immutable branch.
     Then Thomas takes the irqchip patches, and I take the rest.

Unfortunately that part hasn't happened yet...

Meanwhile, I'm queuing the DTS patches for v6.20 anyway, as they
have no dependencies.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

