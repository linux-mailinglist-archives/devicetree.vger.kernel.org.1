Return-Path: <devicetree+bounces-220723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF8B99A5E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 13:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C95E119C5A91
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 11:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078722E7BA5;
	Wed, 24 Sep 2025 11:50:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C293F2E2EE7
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758714604; cv=none; b=B2keSVEEGqE8UCwKivFw/98cHqgpaPdyXq3f1JTIU3VaYi8D/OLeWYjWKpGUScEPHfl55HHSvEwG4wchlsVIxP5v0xiV4z7flgdIoWiLHovODvSpbWQN/uKey6ImmCK3f9I2g+yR2wXJsiyWdl8Em0fCKZBcWcnjl6m9v5k2b/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758714604; c=relaxed/simple;
	bh=9tehMRz08WQLUJ/smHN3UjG/IZMKp1SRULcKii4ippo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j+ATT9keZWDBEDdcw5CjK/fffwJAzqfSCh7E1DeB/zHo7Iz2CwOjHWMCgUqNoj4EyLue1UYXgUZqKh1iuB6mQQYsXTclns/3/Yt7+H4CO7xZgusADJPlGl2g1WmhWW+fnrploq/0vMVTP+gXgPf3DA+Jy8XO/WnqWE/skWtQ/tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-59eb88955d8so1288444137.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 04:49:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758714598; x=1759319398;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2UvM+/QBcNnuTK2u1snMXMO5HJEe0Z5rWe+7sqxETZ0=;
        b=AQP0Oe90LERXndBFoDVrYwDQ51dkiHnsL1yWPGC4DJfICHclkmF3ddVQA8W6XoRuKm
         Jjfe8QDVTJBrTXGYppmu8gVP3EKSF9J7eywSta0looJZpe0BFatlMoHVnPrmvQWuan4y
         Ke9zl9P0HYZGevjJzdGiGno3gh6I0O2HKCCZ6sPRccxYYIcUmEed3tBRhl7lT5OwvSri
         RSRQuxnAf8Ofqxw53Km0/9d3dYXLjlS8t1TLfWf6bNk+w+eS7aj4MREjmls+EjvOq4J1
         j+q4F1Oa1H12CjC9uS5s46O7HfizgK6BYZLlwTGTPa7ghJjhtrb7QbXA7d4mq1RY2i01
         7mvQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8OCwXiOm8wXYyD6fD1yyGBcq+2pyyGWQfNkvKy+fJ+jYA0gzy8hEhAFmF2VLJo3wfKPOpY++DWHXm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3sCO+Is/iwMgrA4PcCqtUpV0iH46VQYm95audGDwAdufshhH/
	QJTyvoPwTrItZBn+zwSsgn8cjszNCh40Pkyu5H/5EVQvNAz4s4Z3/tbNwqcxqCXG
X-Gm-Gg: ASbGncvW8wsBPSB/jF0XlFgL4ZNpLbSrikC/OOT0aR7AGUY+RRdccF4LVelSMd7wSai
	laj/kZpzqS3V3xYAKEAdQzrlMu7tnajUMcu5+3LO6kClEv0Aq6ZM2hr9BXgz7KgUXmfubc6IiZZ
	meQRfV1O4ChRu24uUSBd6w/zlCMmqwZHk1fuIsco5MOreQ8lDrPw2u6SHtmgsN3sXsbeD5OKPes
	a2H8PbuumRdY4WHx64sjapog6/FHESxDaNwtSvhPubc6Y1/Hz+2Kq/XS+WlX9Dyof6yTljNeqme
	HscGY9Xe8A89hu1mBg/jafov4rhlHRLZMDyqVTKBVdsL/Tfof1Ia48k9ExHAppOTIJOFPmJpo2i
	2r+gMyn1JUMdYhooU+d4ZazRfTOlsH78ESDBKt5zIL7ak6WfjBMPwydgjtNib
X-Google-Smtp-Source: AGHT+IH3ajNkZsQn7PekSOQqJ23T53RqzWVy0Tz1tOXpcBzJ7JmFq0+iJwBIf9zhMsfn1+8WBCFlCw==
X-Received: by 2002:a05:6102:580d:b0:59c:4925:eba3 with SMTP id ada2fe7eead31-5a5840a3db2mr2071829137.34.1758714598480;
        Wed, 24 Sep 2025 04:49:58 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-58f6426a526sm3662848137.5.2025.09.24.04.49.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 04:49:57 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-8fea25727a9so1083289241.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 04:49:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXnyq0ee+hRn507RMgy1zmVCOo0zs7tTI8DmYjb/69llKaTjjfOH3KTyfyBs6I3O5AZc/Zpvp1Fkuu3@vger.kernel.org
X-Received: by 2002:a05:6102:1610:b0:533:ff66:698c with SMTP id
 ada2fe7eead31-5a57e77391fmr2023739137.2.1758714597528; Wed, 24 Sep 2025
 04:49:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250923160524.1096720-1-cosmin-gabriel.tanislav.xa@renesas.com> <20250923160524.1096720-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20250923160524.1096720-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 13:49:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdULfR3PZVdh4=2QQv5N3-J8kH=3--mPS5ckkd44Xf8miA@mail.gmail.com>
X-Gm-Features: AS18NWAd607zcV9Nbln-a-J8dRoED1AjG1taSvoUWP2QDMqIsRBLiGt34BtVpEo
Message-ID: <CAMuHMdULfR3PZVdh4=2QQv5N3-J8kH=3--mPS5ckkd44Xf8miA@mail.gmail.com>
Subject: Re: [PATCH 1/7] clk: renesas: r9a09g077: Add ADC modules clock
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	linux-iio@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Sept 2025 at 18:06, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have three 12bit
> ADC peripherals, each with its own peripheral clock.
>
> For conversion, they use the PCLKL clock.
>
> Add their clocks to the list of module clocks.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

