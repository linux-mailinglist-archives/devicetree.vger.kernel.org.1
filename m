Return-Path: <devicetree+bounces-238202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1261FC58C11
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:34:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CC3514F6F00
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB0E350A18;
	Thu, 13 Nov 2025 15:46:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C4A350A1A
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763048809; cv=none; b=norkEo2r6GjM+bJbzDrzWb40F/gGE3dpD2Ivn2D6R+CAaDxAY2QfDrHqnR4Y7NP2fBWcuM/GMEv0NnO0PTPQp8TnG2hggdDUK9JdY/VPPBABf3gJN+1hz9keGVat3cCemG/HeSEjui4g6iWn2DR1Mmsi4D0udGOl0EXfxhWG1ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763048809; c=relaxed/simple;
	bh=JbMu6ahMlLII1KW/kjAvmBsc+G89KXscjqjvlqGkV2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EyXljsx40XcCdn4Qv/DnoaePNNdYjaAQ7M+rMrf4K5VmjlAJoqTwqZQAIboMvk1wiTL3yZnT8fCY9xTXXYBedXVAnhIUO3XLI0ewxgDRtmzCjhWQswH4vbjpW0OrmlbGVlptutwJobPiV7yX2kzfTjXcW0DjveEC/rqnAfI2Njw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-54aa789f9b5so547524e0c.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 07:46:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763048806; x=1763653606;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ScuVkhi+y4j9hXy/c6rksPSqjbU1qzqA5VKC3tcakUw=;
        b=JY3xbe5G0Hy8FxMrE2bvF8z5VN66d9fgQcNKcgvwZGyVx9GGodGSy5xnjiUswp9tm4
         HpoyGIbiQqPKeFFQDgkeHehbH/Tjynz9HemXgTBDsLz6b2CdmG3KilQm0jYXh18mQsGS
         HM0SvziAAT+N/dkJO9FHO/1RZSU0PR7T2n35U4sorhyAfMh1Ku4SM0lgXia5Sr1+woIe
         y6HJn/F58yUTwipNKlz8JiFx9fmt56c46kshXwNUYeJdPwHGmoT1PIJy6bDnSAtBuCmo
         nnLisbvjH22yOh8loEpnuVDKqpIzGbYqaIRLrORoXKLiw+3HeBQk/phYYD6ZnaOdnxdD
         bpZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6ayzxhGeuYoVnKsef9mMHodpNFS8dcD8Lw+Ga0mYxAsKoy4eCo5VGpgMvuEI9BubZgW9d73mm6Exl@vger.kernel.org
X-Gm-Message-State: AOJu0YwegldzuqkHo1HMOblC3PClyMUodHbPfJR6A1wsXrEwdSX/a+MZ
	n3ZsffL1khfjZirzh89gRRZBRmIWfkYEV7lXcAPOAjaAX+rR+v4+SfxzIOeQVOK0u0U=
X-Gm-Gg: ASbGncsP7VMIhs5zLwV7yQ98RzpCeTb3y4+ZelX3iTrOvg7jlqPIZyWfVJSlXhQ80e/
	btUeJ09RMCD+NauNXrXV0Us5+ZSbXEgZPHM9Rqf3Wb8WlbYAgfOZYvw6+99o+28qXflSyEVpImv
	AFdxT1RjUj7TXlDZw84ppcPaFCVygiavKOOktaYkjfCZZONsJR32zecGRXsKBsWLrGP6G0eBci1
	QIxX6h0zKDt5fpfrLStXpM4ikiVTSHXQs9B8oBdtn4t5K3ViLzcRzY+RgoXqVs69qBrVi2aXl2g
	ZFgVkI7V6EL0MOuERk+595i5S+PG39Y+qRoQjjc4foxX5i5uvqMw9bFWGoEvWq5ecAnb/EUGN/Y
	j52RBx8Hh61NIuWncliXPFnilpfW90hyegnzTx1psb9OaGJQ0N6zoDmg/obMjYSAwAiRLzz/byn
	KQj6Xnustuh7RLMvMKUTVDrjcHin34Svct/5FMoVX9uQ==
X-Google-Smtp-Source: AGHT+IFQQ4j733gdDgeEe9BlFJoxjwY3llUQZOIfrU1jVDJsmDjL65hup4HDPD+nnyhK2+7BNU8WcA==
X-Received: by 2002:a05:6122:1799:b0:559:623a:3aa9 with SMTP id 71dfb90a1353d-55b1bce4c5fmr38486e0c.1.1763048806024;
        Thu, 13 Nov 2025 07:46:46 -0800 (PST)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com. [209.85.221.170])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f35a6d9sm789476e0c.7.2025.11.13.07.46.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 07:46:45 -0800 (PST)
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-559748bcf99so741884e0c.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 07:46:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWmisGQNrzoUQL+IpICCgHXNeHpqXwTN0HHMxZKTziob6p0ld+BGVxHs+CG9oM4zriC+i8tzDw1g3eO@vger.kernel.org
X-Received: by 2002:a05:6102:cc8:b0:5db:ce49:5c71 with SMTP id
 ada2fe7eead31-5dfc55b0bbfmr40115137.18.1763048805410; Thu, 13 Nov 2025
 07:46:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251110203926.692242-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251110203926.692242-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 16:46:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVt2rtKs+yRqLBPK+_CwSwZC2XmBor-wmVf_JDyPiFbmA@mail.gmail.com>
X-Gm-Features: AWmQ_bkGYm2i_ZaT0N1d4rO7PGzb0yXpIqlcQJ7vIAPvPbw4btR7TgMuI9BaYk4
Message-ID: <CAMuHMdVt2rtKs+yRqLBPK+_CwSwZC2XmBor-wmVf_JDyPiFbmA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: renesas: rzt2h-n2h-evk: Enable Ethernet support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 10 Nov 2025 at 21:39, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable Ethernet support on the RZ/T2H and RZ/N2H EVKs.
>
> Configure the MIIC converter in mode 0x6:
>   Port 0 <-> ETHSW Port 0
>   Port 1 <-> ETHSW Port 1
>   Port 2 <-> GMAC2
>   Port 3 <-> GMAC1
>
> Enable the ETHSS, GMAC1 and GMAC2 nodes. ETHSW support will be added
> once the switch driver is available.
>
> Configure the MIIC converters to map ports according to the selected
> switching mode, with converters 0 and 1 mapped to switch ports and
> converters 2 and 3 mapped to GMAC ports.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

