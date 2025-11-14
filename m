Return-Path: <devicetree+bounces-238543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0F3C5C372
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:20:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 54C9D4F98AC
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F143016FC;
	Fri, 14 Nov 2025 09:12:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875052FCC1E
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763111537; cv=none; b=auJwgi+hKi4jiJIz5Kd/PILXjVbCy2NLm5TEWDk1s8z0UOtAoSqJNPL5qOHw76DmcGZMHAdlXkvMuAEtUpKrnT7a83GGiyeybo5It8TSWLaQJsYVPbOoZJwHg5MDMgVGk/NGLGkcGXfp84JLdrG+zMGzpN/sMs9lwXmJVHWJ2mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763111537; c=relaxed/simple;
	bh=6lZcA5s325b3JaYAV6k1Lpy8uNvHDPn6vlQjTmP5MHM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l0DHRiwLz7yb26vyRkuKjGH9m+JMViX2YmF9sXdxLUa9VH2PrIU2Wum+JCu7ovKKqBDs4vbcF7wq5GzKy/L2fkPSSGNhugKc5Hwg9XTQUBUEcRhC96tSFv18w0G8qa3dq9BNw7ahlf/UiOBRM5kliPF6vkI+et+dDkuZ0On2aoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-937262a397eso509842241.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:12:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763111534; x=1763716334;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gv3Uev07oiPCCagTwkGrE74OxJVh/RcOn9HWVQLzIzM=;
        b=QLj65Wil+8nVcVnGtO+WdMFWeBDPr439qb0qjLDYwMvDGVah0jn50nRT82ZZEqjDu9
         GRbj4eR4EQ/6+Me4cEm4H3qVk6OpRkO+AsjuOcvUriMWde6kYp4splVq6vnht1hrIBBW
         ghm8qVoKtDE6Q7C4qhAuKR8UXCxHJ13ULSUj4zMyixfn7RadNT6IopYUHwGRFKoLdFF4
         zdgyLqXGtQe+2yJEy+QHmKl8KAeO7x2QJr4oP34gtAjgYKSqgIAj5FvPmgRxrGyHCIgr
         LgdXYykwHrzBJ8Q/Byiihanf4VM4rlh/pd7Injd9BKbfHvWHtsp1KFO7oYgXQgTReV+E
         D4zQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSS4FyvqAjpqun9bWOTKA7aHpP2J/h6kGK92CLzQVx5couAA1a0TB/tXP/zhOrQ9bn4PqY3hU645fp@vger.kernel.org
X-Gm-Message-State: AOJu0YyyFNTpfTG8Ae2BQaz7fnPOhr/UfHJz08xLIlp31OReFbotgqdo
	5Xy4RXqzaGdWA1U8onCRsfM07quxwOZi12JCWcpKvgsqxoNZQoSjU/ZJh0cQfRi7
X-Gm-Gg: ASbGncuDX6UfNFpsUg4sXpsd4K4D6sAxljXrt8jXko8pTzIdDj7vrZRalfVcWhkV9rV
	uSft8GbHf8DyovQ0IQ6kbHkvP5BSH6nKbMdJgGdvVNwtdBUjoLln6iILjx6ciI0aiZexx+82NiJ
	sy6IU+nqHxz/qUkdbSAAZIl0NKSU3+Z6RWX+h/cPGH1iNlHOOFnqjphBBB9elR8ZDEQ6nKURv6A
	2pomlS4WYZa55DnG7aMs0Uo4ZrqjmUQuBf3AcoFO64MJlrk/PdWu5Gfrlo9NXCjpjZJJG+6VJwA
	qY8aK6II7p+U2tDgURJYHAqDvq1uawaZAPAe0LxYyrrM06tLUFDHPcsqUMjmMzaBGMZbLD/0BQr
	Ty9nEjl2rsKPjIRLcN5x/LBKCs1N3VIPaRV8CjTiAJzMnHwjhdHdW5QpvHyxZYN6Q/Fq5hrgNbh
	Jz5bg1ceeHx9qqaLZpvbmvvG1ZUWsjAwKIvTvjCBgRK+m5oe7+H9LN
X-Google-Smtp-Source: AGHT+IHA6Ow0/Z8T6V/ufAPsMBdDuOrSohDyg11VYJG3GUDblvT0Ol7EwAiuGXWfTfzvLOjNRWNT8w==
X-Received: by 2002:a05:6102:2924:b0:5d7:dec5:b6a7 with SMTP id ada2fe7eead31-5dfc54fee8emr938580137.7.1763111533573;
        Fri, 14 Nov 2025 01:12:13 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f331034sm1497086e0c.3.2025.11.14.01.12.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 01:12:12 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dbddd71c46so650115137.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:12:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXYlL70X8LKSHYkX3nePqrpHQlM+XaVYtYshEpV5CJzNJL7XorWg/MreDoK/nCvTxKqvQAEJ6KdXUqQ@vger.kernel.org
X-Received: by 2002:a05:6102:2b8c:b0:5db:27b9:c20b with SMTP id
 ada2fe7eead31-5dfc5b6dee9mr1034309137.34.1763111532050; Fri, 14 Nov 2025
 01:12:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027123601.77216-1-herve.codina@bootlin.com> <20251027123601.77216-7-herve.codina@bootlin.com>
In-Reply-To: <20251027123601.77216-7-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 14 Nov 2025 10:12:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXOC1mRU161697uzeyQhGGoSUJ78RwUQx0sux0b32e8tw@mail.gmail.com>
X-Gm-Features: AWmQ_bnE7cyD8HOjUEBb9GnZU2_7AmUXi8_jlBj6QbgjeCbjQVJHA15hzW0yJVo
Message-ID: <CAMuHMdXOC1mRU161697uzeyQhGGoSUJ78RwUQx0sux0b32e8tw@mail.gmail.com>
Subject: Re: [PATCH v6 6/8] dt-bindings: soc: renesas: Add the Renesas RZ/N1
 GPIO Interrupt Multiplexer
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@google.com>, 
	Serge Semin <fancer.lancer@gmail.com>, Phil Edworthy <phil.edworthy@renesas.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Pascal Eberhard <pascal.eberhard@se.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Oct 2025 at 13:36, Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:
> On the Renesas RZ/N1 SoC, GPIOs can generate interruptions. Those
> interruption lines are multiplexed by the GPIO Interrupt Multiplexer in
> order to map 32 * 3 GPIO interrupt lines to 8 GIC interrupt lines.
>
> The GPIO interrupt multiplexer IP does nothing but select 8 GPIO
> IRQ lines out of the 96 available to wire them to the GIC input lines.
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.com>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

