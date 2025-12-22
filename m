Return-Path: <devicetree+bounces-248827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B99CD6120
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:56:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03B77301F8CB
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 350CC2BD5A7;
	Mon, 22 Dec 2025 12:55:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF412C08C2
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 12:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408159; cv=none; b=MsWAjtGhv66YxfVk3/JKOPgN2odhad699IgLAs4s8leddXVJD1ta1sIKm0Ip3yu/YEPumtALEY9cZhDZAF4poDdwBmT04ELw+LAudl2nmR72fAJcCLFb+/VqohIFFqczWnuDP/bvhk2lnoqBALTJbBw/MIWVps1gUPisHkEP6J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408159; c=relaxed/simple;
	bh=Xp2JxaURk7cqCR/j5M2KjzDOwxRykTFTwS1VU/qCsh8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RbRzxGOZbpYjqAkKGJNHzLP8uqlzTVmldfbZpXcMH1AYD/bP6tVdAr7x/SGaPD9Y36JEh5T890TNoE0lLzZXIyV8d36MOGvgQb75XeBiLKmc7rCJOebCP4XeM9slo/dZpgxiZME/9mlkC65TA8PQfiJr8+2Bgj6ng9KvLxdSuhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-4503ee5c160so2359308b6e.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 04:55:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408156; x=1767012956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VgM9E2RUaWwSmEYTs8cEM73rjhci1votspeG4LjZ3Jk=;
        b=Iobqh2LNN3eB5K93xDEGE1j5l8FdhoRiqv3qHGSV9OYRxMR/qWfSZZ3VRrkm26Ufhk
         Y7wihxGql3pzFWrtbfYJgPavrVWo30qlvAFqcF5HtSsmmqc1w8r6LBODv5n7y/l1ikm2
         aVity3xXQmU/v49ZaFwJ30dHkNo4x9QOlp6UuZzLNoFHpkssLlEmb7lTq9AsIHTiH49J
         P9HQkrAheCBy/v5JihdxybV8vnqUFInItV6hGuIOuPojrlXXsaFZEqC+kblhS9aNR38C
         G0FqQzaJaNy8Rtuc61FlT+jPU0MlNdW6hM1TGUxgprQYAHjY0FeYf8Q0uhipTUee5SGV
         fZKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDNaCfAfiKTlCgLnxvrvridr5++J8nbjOwCGNTbFzj3GpBvp6zjQp0C25sVxbnqzGjxJ1YGOYDBlPR@vger.kernel.org
X-Gm-Message-State: AOJu0YwaNsThJtTinjd2oKd89ddkHUEuq4zX23VebHVj3Ta/qzrWcu5j
	8LmGcKgHqpDpphxlrS0MIfVBrQaImqBdBWWfrhVHHhgnvumA2nShubPWmAoC9ghk
X-Gm-Gg: AY/fxX5CXCUEaZqgRawdohijfYHbhWKTNL/AZWgB2mXCGb8K2WT5/aBQ5vwom4s+J5F
	+UdGlXgVRGEi2XKCx7ZkklDAVXiVkoijUIHWgAsKYgxGGyQ9ix5g2NAM/Yalhu9uqiYzA1tHXUx
	e+fuqdEJ/jDwrgM7Ke1vpftmL5T23sbWM7cH0x7x9KhUfh9rrGTXcjg+WZ9pxD81TRhkdONu4Ji
	O03KEM9kYp5dovAY9q2vylZTAnRqtbVJH6Kntk4Bh01HJ5lTPftyPq1kQVyv6HAU7O/KNtw2QXL
	PqBVPOM4N0MUwa9rAcR6FxENqDVaLYJBGcnrEIZJ0ngyUhz/ww95hzRr2JYn+idNG10ObK2TrAe
	6aVkshopXUimZwHDmrludnafJ1rqGb/2kT/noLWCVoY4kMGE+wPHwEW2AdhylGemJk3AYt2ovFB
	Vgbof5O2K0n1kzW72V/K7W0v5QIGqKzJj/Qr+t4u5zL2hBEUIeJXVF
X-Google-Smtp-Source: AGHT+IHZROzRx7BqTF11eNmu5Dn37xRW0aKOKfuIZxLrO9NQ6AmvQ5MwHgJ/NuClEwZIWhJQB7lNRA==
X-Received: by 2002:a05:6808:2e4d:b0:44d:bc43:11a4 with SMTP id 5614622812f47-457b2061dafmr5454613b6e.4.1766408156258;
        Mon, 22 Dec 2025 04:55:56 -0800 (PST)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com. [209.85.167.169])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3fdaa931b0esm6730630fac.8.2025.12.22.04.55.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 04:55:55 -0800 (PST)
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-450b5338459so2318909b6e.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 04:55:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWBy8QL3/NIexCPPH/cit9aLz4up7dTgEg/4exTU/w0+ze14OjHzXMptPz4dOQX+E5dSFAJII6BZqhk@vger.kernel.org
X-Received: by 2002:a05:6122:a04:b0:55b:180f:fed6 with SMTP id
 71dfb90a1353d-5615be677b9mr2876994e0c.13.1766407711710; Mon, 22 Dec 2025
 04:48:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251219-schneider-6-19-rc1-qspi-v1-0-8ad505173e44@bootlin.com> <20251219-schneider-6-19-rc1-qspi-v1-7-8ad505173e44@bootlin.com>
In-Reply-To: <20251219-schneider-6-19-rc1-qspi-v1-7-8ad505173e44@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 13:48:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVBwZW1JCrtpYe7mc55FzEv0BZOWC5NNNVejxXSzDLCpQ@mail.gmail.com>
X-Gm-Features: AQt7F2orBW9lxEBIu81Xb5vtVrPMESy_KNg1aazPhtOsl5NUSmaZ5WtqS55gX-s
Message-ID: <CAMuHMdVBwZW1JCrtpYe7mc55FzEv0BZOWC5NNNVejxXSzDLCpQ@mail.gmail.com>
Subject: Re: [PATCH 07/13] spi: cadence-qspi: Fix probe error path and remove
To: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Vaishnav Achath <vaishnav.a@ti.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Santhosh Kumar K <s-k6@ti.com>, Pratyush Yadav <pratyush@kernel.org>, 
	Pascal Eberhard <pascal.eberhard@se.com>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Miquel,

On Fri, 19 Dec 2025 at 20:23, Miquel Raynal (Schneider Electric)
<miquel.raynal@bootlin.com> wrote:
> The probe has been modified by many different users, it is hard to track
> history, but for sure its current state is partially broken. One easy
> rule to follow is to drop/free/release the resources in the opposite
> order they have been queried.
>
> Fix the labels, the order for freeing the resources, and add the
> missing DMA channel step. Replicate these changes in the remove path as
> well.
>
> Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>

Thanks for your patch!

> --- a/drivers/spi/spi-cadence-quadspi.c
> +++ b/drivers/spi/spi-cadence-quadspi.c

> @@ -1995,7 +1995,7 @@ static int cqspi_probe(struct platform_device *pdev)
>         ret = cqspi_setup_flash(cqspi);
>         if (ret) {
>                 dev_err(dev, "failed to setup flash parameters %d\n", ret);
> -               goto probe_setup_failed;
> +               goto disable_controller;

FTR, this conflicts with commit 9f0736a4e136a6eb ("spi: cadence-quadspi:
Parse DT for flashes with the rest of the DT parsing") in spi/for-next.

>         }
>
>         host->num_chipselect = cqspi->num_chipselect;

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

