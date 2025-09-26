Return-Path: <devicetree+bounces-221822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D57BA33B9
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37648324FB2
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2496929D282;
	Fri, 26 Sep 2025 09:50:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDB0284889
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758880212; cv=none; b=lFGhsuEdVYq6qOsRjxIV+q8HUteR6eu6sGB9cVwPytHaySdMk5HZ0GcoQJ1G53p0PL2g7h3i0ZeaVuMT4I6vPuqajgNwnkjUExUWK1TUsKUn6+T8ZzcLxsfd0Lm3pAl47v0dfBbH216rvQyjsXNt9Kss+RPgRRfTvySMNChJHb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758880212; c=relaxed/simple;
	bh=9MP05zHbL6Vtrf5lONjgCVq9CWhR1Q+9cXrMd2Yezk0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SBPEIf90goQSZbgInLVdYvsGR1Lx625xF6t+E3WodOHsu1C0RBJOHZ6iNwg3tgYiWIBHYz1P3XVTnPy+piNKeWqJGWBsdxbUkBMY7D/sdfTkzrCquNZEAHPh/0Vv6MXA0A2nvd1ccT8ycEK7oS91egb1iNBH++HYqvaj/lveLAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5565a83f796so1551002137.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:50:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758880209; x=1759485009;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WcBsC1askobQesMf5dT3EOt6tZwDclh2s0/BCRcco7k=;
        b=PMsVpobZwBQ8Iu/Z351mnVoSzi5rV5YhnTBbsv//6GSNn6fyN0T22idCVobP8VlWXb
         r6+ND2SIkuYACRhaUcNwI22GgX44Ii0C70VCz71AhYquiWsyiqCXVGOSC6S0Byf5A2GZ
         RACVpI3axTm8cR3By4d4NL0M6wmVkr+TXtWME5IZNj57lsD97JfxvtTT+eXrc9yMxIkA
         Bg4KesJMVsNHFyUCBjbUQFUCTs0X9F9zGe2Po9Nr1lb7uywqt4gcCf5cbai0/3wu8os5
         1W4EYH6pmmtUfh0CrE3ToV5MTQ/Z+gCZ5EJ604cE0XTAaZEHvUPzxCHTWtWcE6HIexYC
         wP1g==
X-Forwarded-Encrypted: i=1; AJvYcCVEa7EBPwq9UH5FyTeqvLCwJc0DUtQD3mo7kYsE13W9dxFkegBa7EHxM+h6ilE62RgH3Zkr+htKigh2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4RNKlRmLpqvtkk10T8rPeMT/Z5dfmDKfsxj7IIZ68XcH9gLNT
	hnhIR+wP5RTGkGnfD53duNknUvFu2JFArYgyk9+E5XXeo8B9qSyr3U8vBMngpzmZ
X-Gm-Gg: ASbGncu4bJY5uqbrDwmnXHL8X/MqzVNASs1pcK3VFvVGS4LIiXlrVN1QW8obO/2wkGX
	zs8E/Q02UvL98rcrCqSy55X1JXh8r332jFI/C5+mRb6hV3+01o8JSmjOGPVi6f97F4LANRX0XoT
	nSEiXvfSxcVWzl+YtL+G8nqWLImbxIyPCWOXUO28YZe8LP9kO9vk9jLCVJD7TJrezrZqlSeVM3Z
	LstgYIPj/VW5/JGEaQZAWmX3psfAnO7zWnyRdywqFWC5Q1Nr7F/3djzsI+q9DPIGgEyuGA4RIRm
	LKe6Scr6nxCJVBUIgT/Yb9upBk5QZgLmw4e8Sm9OLZf7yR+Fai9XTj9cJvPDUNFhSlhsScP2UjC
	J+PyZmlbvOmIk9IG7SLBrX3AC9MfCTpuE/Vn4gb2Cg3ziLg5SsYqVsyXvTr+Xinhzr20Tjek=
X-Google-Smtp-Source: AGHT+IH95GkyE84wZyp2TrjjGNkgl5BxJbn+GfoCsEbD+snh9SFHTJ/6UOY0Qa0NB5g+yDzIaAMgXw==
X-Received: by 2002:a05:6102:508d:b0:5a6:d11b:d8a with SMTP id ada2fe7eead31-5ae1d722859mr2569732137.10.1758880209245;
        Fri, 26 Sep 2025 02:50:09 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae3b700a77sm1246558137.18.2025.09.26.02.50.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 02:50:08 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5a47cff0323so2000318137.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:50:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUjPbCLBiBh+jvj1mM+PPEQEDjYM3qeMeIAhMiDog9m3vp+Unk4/kWJh9DtvOLWqB+Bje3DkLCctNjM@vger.kernel.org
X-Received: by 2002:a67:e098:0:b0:59f:54cb:205a with SMTP id
 ada2fe7eead31-5ae1f222b9dmr1619909137.13.1758880208278; Fri, 26 Sep 2025
 02:50:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com> <20250912122444.3870284-6-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250912122444.3870284-6-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 26 Sep 2025 11:49:57 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXn-sd7CXgxRzwfHQFUUxzboyYP-2eqSTaVgmh5hjT_xA@mail.gmail.com>
X-Gm-Features: AS18NWBXsS1FJ_qFsvTSOsChWy-NgmX0zNmCcExyFfSBImph2esks2SOJO6KK2A
Message-ID: <CAMuHMdXn-sd7CXgxRzwfHQFUUxzboyYP-2eqSTaVgmh5hjT_xA@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] arm64: dts: renesas: rzg3s-smarc: Enable PCIe
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Sept 2025 at 14:24, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> The RZ Smarc Carrier-II board has PCIe headers mounted on it. Enable PCIe
> support.
>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

