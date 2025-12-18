Return-Path: <devicetree+bounces-247959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DA0CCD33A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:38:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9A12301EFB3
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 18:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78FD12F3638;
	Thu, 18 Dec 2025 18:37:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52B729DB88
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 18:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766083077; cv=none; b=ddXT78oyrL42Px8wd7Kzywmc9pGANAl/wuARMcP7VoySZYo01W5lCrpleak1XGXaVZ9Dl9e0rUyWr3v2zVqJANviZ12wYbTiIKGzek+k67sZ6ECuRyEZwA4O63g6SMIDm9Gr/21YM/Zx+uYdktYp1B/Qpn4auoyuYMPD/Ona8VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766083077; c=relaxed/simple;
	bh=0OhEslZjp+aTkNYgZvD96zEORwlOpU29eBj68fD9rdM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nV8pRZGcqjF4yZec/VPSd3LhYgJ0baHuNCXRICkzcLOM1D6nbUejsSGQzGoIXaZLNGHEXQ1NGK+it4sOL5fSXxnDDfTQxZh9z+TOlteyl5pq7FltldZwF6NZrlBRBUzEkJ9kijFq0vDwGJcn2QH+TLo8E+Ql4cGmDxS94Nzx0co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b219b2242so529388e0c.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:37:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766083075; x=1766687875;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NzQKpj+K5xZCnwXpy+92eyq9yIgTThbDeKk8EFe1x70=;
        b=KuzcZY1q3234NikuffFgV5+dUx/ThH+0UB9h81r8GFfHPGngaWh/1rnrLyTxIoX5hm
         UPjnTublKwqZpwesuOSjJxppf1bb+79LDxRA8dflxE2hgeTkWLXst1gWwi4T0yIgDcZu
         lYLxiyA1tuiaOQjNuF4rIT3pWY4Ule9o94Js+ISBHMrnOQf/4uNtStI0bA9EcNcqdgny
         /Id/ljyHZrpK5OLv8660s3Omes8MIksA1lUTjtMxeFLrIapoZyhJMnKjBxM/5p5nao6r
         ewwMdVANMnA0MwrKNh6NHfhT0AQ8iJRWtR68ix01Xy2/AgmpjdGQTeV/99VYHFOvvle6
         yFBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcumpOWFDzri7mSgvjPB+FV7n/qv0rSC36DlC5jErdLsioBAbRyqn2Q/Fte4BfiMbdvZWwgAamtQfR@vger.kernel.org
X-Gm-Message-State: AOJu0YwXsmlYilU0vHr0YkqXZkc/TUxoaPdUPco6X7pfHfOK1tCxvgKf
	HfhIlCJ4AeHCSxtEX5R08/2K1wmZc589gqkXm4yvRGWUt7qTmIUtsv/lCQBZyab1
X-Gm-Gg: AY/fxX6EUzecUJS6dL7e7MbzvmT1kw9c4eqIoR3T6d2I2sxwhClFqAqvtLr6WRErT3F
	zhkHKcdywZPAtmaTsPSCe0hHwR7un82Vg/6e3Qyjs6948/Srpxk8b4DHXz8VlU1G/tic/gKZcQD
	tEm1x8uSOJYq214wErColAk5QRXOT9Nvhq9B2Gii72d4onJI/8AFwUy8T3TiFEL/n0ApWmCDk9v
	45/GJMiJCY80jSKjXjvPGijN//m6f2UFwDqkkuY4uUWetZt0315hdO8nr0x0VQ+EBH33ubSIn04
	FRz4SLHkH5cPv4MOeIOl3w+nrjGi/AEjNeStIUffrGFPzXDHLpMoj3Ou/kNbAlbsvsvBaUiCXld
	/ZbCm7Ub4HwycMuwP+MtX/CX+N6X1aFFrX4F0Frhrazhvd1pU+H7iDhv475JIWB8DcHTYqVRDo0
	aWdRPKbaW8lCI/Tgl2qVtZ0RO29WJoeFHtOo7q8TntZx5OGM0q
X-Google-Smtp-Source: AGHT+IGyifGpWSr0YeYJccygHZx8wogjTtIdHs8BjgcDv1Mpm1Bo7mysvA9kng/S9MYyz/KXngH8Zg==
X-Received: by 2002:a05:6122:552:b0:559:6788:7b55 with SMTP id 71dfb90a1353d-5615b75247amr271859e0c.3.1766083074641;
        Thu, 18 Dec 2025 10:37:54 -0800 (PST)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d066ddcsm8505e0c.9.2025.12.18.10.37.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 10:37:54 -0800 (PST)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-93f523bba52so549270241.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:37:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXaxEZ9AM4sLmE1gTCrmplUqqDg+R9hKtHXTxbsgSdRtAT+ISiDSr+HRVycP+pe7+aRwT0SFEUHRqlK@vger.kernel.org
X-Received: by 2002:a05:6102:510a:b0:5e0:d009:e4d7 with SMTP id
 ada2fe7eead31-5eb0237d823mr1577578137.1.1766083073953; Thu, 18 Dec 2025
 10:37:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217080843.70621-1-shorne@gmail.com> <20251217080843.70621-5-shorne@gmail.com>
In-Reply-To: <20251217080843.70621-5-shorne@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Dec 2025 19:37:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXG2HQ8e+Hx1CUBus_VYKmx4fEeDRH+sDXmaQQANTraBg@mail.gmail.com>
X-Gm-Features: AQt7F2rcVD25xb8nrGQqVpj5b8hg3KTWDJWwSSU46X3JARvL_KWM_hi9moWh8eY
Message-ID: <CAMuHMdXG2HQ8e+Hx1CUBus_VYKmx4fEeDRH+sDXmaQQANTraBg@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] openrisc: dts: Split simple smp dts to dts and dtsi
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonas Bonn <jonas@southpole.se>, 
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>, Masahiro Yamada <masahiroy@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Stafford,

On Wed, 17 Dec 2025 at 09:23, Stafford Horne <shorne@gmail.com> wrote:
> Split out the common memory, CPU and PIC definitions of the simple SMP
> system to a DTSI file which we will later use for our De0 Nano multicore
> board device tree.  We also take this opportunity to swich underscores
> to dashes as that seems to be the more common convention for DTS files.
>
> Signed-off-by: Stafford Horne <shorne@gmail.com>

Thanks for your patch!

> --- /dev/null
> +++ b/arch/openrisc/boot/dts/simple-smp.dts
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/dts-v1/;
> +
> +#include "simple-smp.dtsi"
> +
> +/ {
> +       model = "Simple SMP Board";
> +};
> +
> +&cpu0 {
> +       clock-frequency = <20000000>;
> +};
> +
> +&cpu1 {
> +       clock-frequency = <20000000>;
> +};
> +
> +&serial0 {
> +       clock-frequency = <20000000>;
> +};
> +
> +&enet0 {

Alphabetical sort order?

> +       status = "okay";
> +};
> diff --git a/arch/openrisc/boot/dts/simple_smp.dts b/arch/openrisc/boot/dts/simple-smp.dtsi
> similarity index 90%
> rename from arch/openrisc/boot/dts/simple_smp.dts
> rename to arch/openrisc/boot/dts/simple-smp.dtsi
> index 71af0e117bfe..2013fd3e7a18 100644
> --- a/arch/openrisc/boot/dts/simple_smp.dts
> +++ b/arch/openrisc/boot/dts/simple-smp.dtsi
> @@ -1,4 +1,3 @@
> -/dts-v1/;
>  / {
>         compatible = "opencores,or1ksim";
>         #address-cells = <1>;
> @@ -22,15 +21,13 @@ memory@0 {
>         cpus {
>                 #address-cells = <1>;
>                 #size-cells = <0>;

Missing blank line.

> -               cpu@0 {
> +               cpu0: cpu@0 {
>                         compatible = "opencores,or1200-rtlsvn481";
>                         reg = <0>;
> -                       clock-frequency = <20000000>;
>                 };

Likewise.

> -               cpu@1 {
> +               cpu1: cpu@1 {
>                         compatible = "opencores,or1200-rtlsvn481";
>                         reg = <1>;
> -                       clock-frequency = <20000000>;
>                 };
>         };
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

