Return-Path: <devicetree+bounces-139720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE2DA16B0A
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 11:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AF9A18805AF
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 10:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 007E21991CD;
	Mon, 20 Jan 2025 10:52:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7B0187872
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 10:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737370337; cv=none; b=jOuSpJRqf2DTb7PLezaHKH87nYPmw5xTwt0MkSSqj4IHLWmbyTkynz5yFeRdfQ5sAf4nDEjOrZqPnw1pBRm3TTaAeAXk6JdrLuwfLeq/T2cBqbYRZtjPEXFVA9YbIPO/lh1u+29W9z9ceA2np+9OxydLRUi99Y9MTpPQwEFAZzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737370337; c=relaxed/simple;
	bh=l4NZOoyPjn6KEZ9uTzrHtFXzQhDwwnVvUC4Kvdbod24=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ita3xP5o429e8oqQLAPowYfEmK5KQmOUFinz/IQeEpBUqKwhKJcNluAo7rdlmWzaGdfgwjINk0LnGHXHUxJSv/xfxnTrQz2HSKTeXd1/6IPLnNpOHJfNip5DAqijrT4bx/juozC2prLaAasEWs+rwroUldPI+9Y/7mlchgZVx/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-4afdf8520c2so1194845137.2
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 02:52:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737370334; x=1737975134;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nUfDCIfdbaWdrkZkEs1WBIzMBZMPC5SuqVxZEuwtdC8=;
        b=DX7ZnjggdXr6Pp5pxAgWwQQq3bbSrmL0zcZ6spICGTHPd8FoeZfDUL2STwCZWF2dHC
         e3Y+plMFb6kkPtg6Q8FvtozzhFGsOLNW2hGn7EjJP21Ggo9LZ8FQO3J4DYk0qgsNGiHj
         r+ihuLogYfETeVJuXlhkcnPCxDLEseMyNzFRw/6kxt6zR0ciBRyZVqf89A+RS25n0qaz
         /hcNa6kXFOVomo/g47N8UBRHlGnByrbquPjeZmbfpanWM4QMiJEz7YfVUH595xSfczfR
         1fgiIpx93GO+qzVa6gVjcqK+WTk6aEJjcVvtK0RJ1XM6U8KFme7dv+VXooAR7c4BLaLF
         b/Ew==
X-Forwarded-Encrypted: i=1; AJvYcCUTQRL4VeAPTtJu/Md4Jvjad9HZarlc173Nmnxksa37X9IV8m3i05uSo9ApZF9rIYGtSNezA2kcwyE4@vger.kernel.org
X-Gm-Message-State: AOJu0YwND8c2DssJFklmDTTljSJu8FFimw+fgq+hL6FPHHvKYFJCeQrF
	7DhL1K2sCJzvzDFpyMQ0/SmvlSymX6sTfJQsLJl89lhiy24OA9BXOsyQ5LwD
X-Gm-Gg: ASbGncurhTpPdmYh2JTryZPki/Cux9YDLks3fXJiK5jSazaLC3CCyZxHXq8JAo5k0bI
	fNa9pJ8dJVFlfKbUQ6FbJ0LCBRMk8qXlAcjUZAySfkE72gowYMiihLov9hwZlvPJY2wntXzJkuv
	FYTQuxi5zaSu8wQEP5QRimTIv23hcQpBfZTjuz14FCZJNj5Ip/RhECA700f5xersv/N93vu4QPS
	0eFlffQYx1tq/Y8Yik9ez7s9LPRki/glGWORrGRMBTXuw7nbQx8pLuEm8F57+4+B0Ra6vyXBPU2
	+CVYMwRP8LUagMT7h1FgUyJuZ5/ngBSI
X-Google-Smtp-Source: AGHT+IFz1zH+tQSxIsDp4i874gCMOFkEJ5N3SPpFOWvetaC6vRig4F7Aw/qCSy+ndByEawHmYLGGNA==
X-Received: by 2002:a05:6102:4413:b0:4af:f740:c1b8 with SMTP id ada2fe7eead31-4b690ce3f9cmr7340129137.24.1737370334147;
        Mon, 20 Jan 2025 02:52:14 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8642cab2d48sm1798986241.1.2025.01.20.02.52.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2025 02:52:13 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-4afdf8520c2so1194839137.2
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 02:52:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV6zJM8IyyyjeAN+82a5guzXCrYz+TIZ1xsvBfglSZKyteJJAH64L85zEBvSXOIsKHLytoMboSAKjJH@vger.kernel.org
X-Received: by 2002:a05:6102:41a6:b0:4b1:1a11:fe3 with SMTP id
 ada2fe7eead31-4b690bbf701mr9052702137.8.1737370333645; Mon, 20 Jan 2025
 02:52:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1737118595.git.geert+renesas@glider.be> <84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
In-Reply-To: <84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Jan 2025 11:52:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUrrDTvMeRPCMNc36fkJLRszcSoqPZMG8J9fuXO3P6ObA@mail.gmail.com>
X-Gm-Features: AbW1kvaIn2URdiaybkdWDK2SpQfOiSAmt9-fIQqujHK7eDp6C49TllFDHpTnPOo
Message-ID: <CAMuHMdUrrDTvMeRPCMNc36fkJLRszcSoqPZMG8J9fuXO3P6ObA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] irqchip: LAN966X_OIC should depend on MFD_LAN966X_PCI
To: Herve Codina <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="UTF-8"

On Fri, 17 Jan 2025 at 14:04, Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> The Microchip LAN966x outband interrupt controller is only present on
> Microchip LAN966x SoCs, and only used in PCI endpoint mode.  Hence add a
> dependency on MCHP_LAN966X_PCI, to prevent asking the user about this
> driver when configuring a kernel without Microchip LAN966x PCIe support.
>
> Fixes: 3e3a7b35332924c8 ("irqchip: Add support for LAN966x OIC")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Drop dependency on SOC_LAN966, as the OIC is used only in LAN966x
>     PCI endpoint mode,
>   - Replace MFD_LAN966X_PCI by MCHP_LAN966X_PCI, as the latter is the
>     symbol that ended upstream.

Bummer, I messed up the subject here as well...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

