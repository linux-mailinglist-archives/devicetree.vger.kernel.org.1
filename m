Return-Path: <devicetree+bounces-224480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E16BC43D4
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 12:04:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BF6519E144A
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 10:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 630C32EBBB7;
	Wed,  8 Oct 2025 10:04:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF98922D7B0
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 10:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917867; cv=none; b=KJpi3a9sZv3ty3P2eNkaWvqNYu5fsLh1eoJSBG/uh+HTU2/7sTXm42raMTKn6OzhEBfwwz9OmDay8BAPo+RqEOf39vdsU+Um9zrUK48mmp4O/+a4a9T5pgvlq4KFzT5xKlS8GBcOClmOKSoIOy1MkVqalHsOhKnBWFelRfmMWkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917867; c=relaxed/simple;
	bh=Pys5RX0y7I/eZwC5olc+dAVDGLe+5tU+vJUD3pxdTi0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uWxq6u7sUJvat/4nqrg1jWOhDMvEQxcymhoNUUNAWn1wFw/67mMTOpHnY0C5GC5+h2tzOgdJFh+WI9mBKw5E2bkN40YScCBO5MCXfTuX3tVDYs7IeYyhfInHag0cpd7rqWvYMhIOKJO4d3VzeyhchJS0luIPsA0gH1aIAiGwZag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5d3fb34ba53so6035798137.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917864; x=1760522664;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ieF93s43yzJZCogiWT8EWDvW3aNVlQXB3xmuuiyuM8k=;
        b=JnuWSE/lhjdfKwXGG6eX5eU1X/2lrpbNwnlju2NieNin6QeDCFbXeEE72zsKjcMSUK
         2ztPqlnuDMxIj/tsqkdt1VVAZc17H0zwioJIE7jNB4hjF+03gsVC/w9HTBQEmGfRQPR9
         +DS5UvWuIUWu924B2g/OHT11Nu2jtmZ3obQUImEkxOfMXA2ajzYNIXIJsdoYp56xCyK8
         9jJUeWtmk46fJYvkRMUxBp3Kcez4GzBlgaAMXfg1xZeGSRSEt0Mj48Bu6I8kXkc0foRT
         p4SJjSnEqsk917DOs/ORjd7gtjKUWvsHR/7xHlbSDt0pIsdixtTzEQRpePvTSep3/yRK
         elog==
X-Forwarded-Encrypted: i=1; AJvYcCUe2OrCVBUgQJWPysGHwQxWJeg9eO2zLb0ofIskIVYnKBimnzIpy0BnEpCGCyI/YHM8fKlhBDGZT8uI@vger.kernel.org
X-Gm-Message-State: AOJu0YyGtsODGemuj9k6lG/wZDn4Th7zxRwTffK3ADmXBSMrPIUN4xuv
	TyPkhCSrspg8h92Dld016LRyePpA8S2bDbiwWN74sad3y0uFvW5dkogrKXMCTP8t
X-Gm-Gg: ASbGncuW554GNsa3t5Gg7psTO/7+lyyiNIYaSoLfyS+cJceIQmSyP2Yq0Ld2gXFtFyb
	a7Oq9zYQuxIBg7yu/VLDr+fl5XS3sBkYBt5PWDuX363irj/SuHd4TtubtTcmYf5lfYL0tlC13iG
	uD4uWLzMIrC6SAgtbHZmDsg6vgiTtUBCgHKqMAv8VYX9071dIo/1NtXD+/Y0PG6e4M4fHqrxlEl
	XJ1C7m4+hBaf0uVtwIzmU7mYsyPNiFlH4pAaFDvatjt4dB6mJTahxM2oK5Q8rAtU56Go09NMoRq
	hcQlN+ScNd4uV+WSdEyrLB+aQcXSKWKAnJHv1/z/dlLwPmTIgibxq83fai3FmwDfyb61oEnslVl
	1yNWR2/y2zAlQRA7D2V2/7Cj+h+4cXXhBmg3okhJit2e0/hH9y92BZMRifuRV9RXjyUCr3TaWsy
	zklaeWFMBS1hR1HbKwwGX/fumTIJH5Tg==
X-Google-Smtp-Source: AGHT+IH2HSJCbWYvpNjOcdvg61SOHehfCf27kzYGMo2OkLrjpLblLYg/whDHIuYPQjA7J2EBtak6PQ==
X-Received: by 2002:a05:6102:6c9:b0:5c3:689c:257f with SMTP id ada2fe7eead31-5d5e238d08dmr997224137.30.1759917864277;
        Wed, 08 Oct 2025 03:04:24 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4da21c3sm4138137241.7.2025.10.08.03.04.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 03:04:23 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-556f7e21432so5873731137.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:04:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUVklGuGG5RkcAi5HRllYIB+W+9Bo1JbrBbHuYqcpkwtS9UgMX3womPp5uEemkfbEZlOUdtAwkqxKTH@vger.kernel.org
X-Received: by 2002:a05:6102:304d:b0:519:f3b6:a1ae with SMTP id
 ada2fe7eead31-5d5e2322d22mr1062500137.22.1759917863777; Wed, 08 Oct 2025
 03:04:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007152007.14508-7-wsa+renesas@sang-engineering.com> <20251007152007.14508-8-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251007152007.14508-8-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 12:04:12 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXokiKb6-mii8yKO5XY=WSDtoMsRmzYos+My-6fKZMM3Q@mail.gmail.com>
X-Gm-Features: AS18NWBoSyztjseC5S_f1PtB13ycGpgmlyzACUqpDmkv3PExchVdnWXjGtN11vE
Message-ID: <CAMuHMdXokiKb6-mii8yKO5XY=WSDtoMsRmzYos+My-6fKZMM3Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: watchdog: factor out RZ/A watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 17:20, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the RZ/A
> watchdog to make handling easier.
>
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

