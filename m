Return-Path: <devicetree+bounces-218749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0432B83B1B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:09:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFC121C07276
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 09:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E91F2FF16D;
	Thu, 18 Sep 2025 09:09:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71B72FF149
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758186569; cv=none; b=aYJQ+vpdTtgmfQlCiC4mF0nIZyDRgW3gq5IhWpQqfWm9DYDsuC0309LyseVgwo4idkFqk4FQm9T26Wk9bIPixwBftNfLR/N/3L8qGgtJYmz7GEXsgT8NviSAUNufPPVM6IhVIZUSpajIcHVlPR24vBGVOynLbzsbnZ7lyifi5sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758186569; c=relaxed/simple;
	bh=oA78+Hc2QsigW6eOAwWharYmhHBJia9T9YFq3+h/+4Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kfHJBqpoDpbd6dYyD6nPHdueJhD5og5YcOHgvXdsOnIZ7qWwL5+8R3KJFu4buMIZzeBypABrumxeUHQtfDWY7P8WhLSZC9FwKksWh5bez9pbtXnr2LEwc8zwEiPxdAegmntzZg7lVvcwxaZ4HcN0+PH3r05+LdPyKbHK1b2cNVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-8e3239afdf2so503312241.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:09:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758186566; x=1758791366;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BUI3LMEUjKeaMro6VS1cwSeOA9TFMizFtGUUlwJmP8Y=;
        b=SIxQpWgjukFvbh8iN/K6Pl3NBSpRqK8fpc8YMRIjJV13x8+myoKQVs9jhKSYBLAogq
         p4uv7WndEco27oTHzeemPMAA3H2Ac26tP8kZ8lQ6VFHEd6AI4rsp+4KL6FEWRHa27M93
         p7EItjhh1AHJSLYCijsdRisssFy+dFb10y2sAlWqZ6H3//sqXo5iPgVv+8NTdjZHlAU5
         24931AZ0nD+9gnWxEBtPQ1/RxyEDUvj9MH6znwNfL+RasQpzDMFJVWYd7dvkOhHoBhy/
         U3B7SCZ8YYNjPM5Z6HOJyq/VCto9qjrBDFEieCAK8LWcD98sJTmmJ9B4sT8YbrNYsy2j
         LHbw==
X-Forwarded-Encrypted: i=1; AJvYcCU/jJn8+wN9dnt4r+8cK5V+BvvHNaqgdUkbsmWih+fZ9yEN4xm5t/FaixLaKxqa1kcX14o64q5f2gTv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk5/M+NB16hBVbQAXG1uOKq4kxz9OSqCcmTNc6WsTPqDr+cliL
	K6hQPXMCQYHHvgEdLQlO9lQtzDb60F1S3kHvLgi3X9DIadx4LV7JgQkfaxIJV/aX
X-Gm-Gg: ASbGncs52NF0F029nunFUbLMO4xpR/EaBYVxuMrKVzXhDLC7iHWcktyWK5/b8TszSHx
	Lyb0KLaOhnj00nFPdB24LmR9v3qGkte/lrztZpBgKVhvkJVbuRdtvw22AOJ5QcDyMCqxBeMiVEH
	s12emyysZrXAi5px0oxCzBahS3F9lzZPW4XdavElxd0lTEM5b+MTJus1B32PkoverxoP1W9ZbRT
	AdnGoqAmJ1tEnyDB6m/AEFEhF+M747YeQZpn9K4My4NnDYNT5/g45s3/H5bzJACDnm/QnRsUpym
	APqRiIdaejKy+iCmDvCCg2Q5kZW+90NZL88k4//DziDs/1qgBF5PROYMLBYHh4KJBE4Dk4aJl3r
	dzsGZMbful0M9ulGy59EZpQFWWSmsLyAdx5HPXteab8FU2wyR0XtpvZk5wyqNYUvFXvSuETWSjQ
	KGqM8=
X-Google-Smtp-Source: AGHT+IHLGnQdNm+tLmu6JOQrDNIUXHA/oU5RSFaqUZwR1Z79CCjiSGPpo58PUWnmhH1+E7roSSu1iw==
X-Received: by 2002:a05:6102:5a90:b0:522:48fb:9478 with SMTP id ada2fe7eead31-56d69d015d4mr1805785137.28.1758186566451;
        Thu, 18 Sep 2025 02:09:26 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-579dd9085d6sm492998137.4.2025.09.18.02.09.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 02:09:25 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-557a6856135so606477137.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:09:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUeaxG7RyHCaY+Gn/EoIkSyz3NuGJTpG/E8uMKVmgpDpqrqY9KDPlcHA4l/aa5MyYowXaiAqfjmESiL@vger.kernel.org
X-Received: by 2002:a05:6102:6c7:b0:4fb:fc47:e8c2 with SMTP id
 ada2fe7eead31-56d5088a6e8mr1645890137.9.1758186565181; Thu, 18 Sep 2025
 02:09:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com> <20250912122444.3870284-5-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250912122444.3870284-5-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Sep 2025 11:09:14 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWP638eB_p9xMAqZmOnuc6n7=n31h6AqV+287uvqQEdww@mail.gmail.com>
X-Gm-Features: AS18NWCGAnZ0XCOYl-nrDkcvcpM1hNQPPeX1PmUWoRk02X3Ow_sZmQjL_oQhdiM
Message-ID: <CAMuHMdWP638eB_p9xMAqZmOnuc6n7=n31h6AqV+287uvqQEdww@mail.gmail.com>
Subject: Re: [PATCH v4 4/6] arm64: dts: renesas: rzg3s-smarc-som: Update
 dma-ranges for PCIe
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Claudiu,

On Fri, 12 Sept 2025 at 14:24, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> The first 128MB of memory is reserved on this board for secure area.
> Secure area is a RAM region used by firmware. The rzg3s-smarc-som.dtsi
> memory node (memory@48000000) excludes the secure area.
> Update the PCIe dma-ranges property to reflect this.
>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> @@ -214,6 +214,16 @@ &sdhi2 {
>  };
>  #endif
>
> +&pcie {
> +       /* First 128MB is reserved for secure area. */

Do you really have to take that into account here?  I believe that
128 MiB region will never be used anyway, as it is excluded from the
memory map (see memory@48000000).

> +       dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;

Hence shouldn't you add

    dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;

to the pcie node in arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi
instead, like is done for all other Renesas SoCs that have PCIe?

> +};
> +
> +&pcie_port0 {
> +       clocks = <&versa3 5>;
> +       clock-names = "ref";
> +};

This is not related.

> +
>  &pinctrl {
>  #if SW_CONFIG3 == SW_ON
>         eth0-phy-irq-hog {

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

