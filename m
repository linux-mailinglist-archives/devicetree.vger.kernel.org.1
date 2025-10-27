Return-Path: <devicetree+bounces-231409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 842A6C0D001
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:45:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 78A2534C8D1
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADF912F3C3E;
	Mon, 27 Oct 2025 10:45:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CAA221703
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761561929; cv=none; b=pR8Tx3np8Nxp05fMRZjsbU4/MRV6IE7zCKgjVXY+XMzkOsdB0evN03Knu3FN1mUKkxFtcKLUgFUdTfY7JTRWJXjVdwAWA/apjlDCVK9XPAZOpZQaQXlTsvvqXLS9VMoudLQ+ATJcDESu9mgcpu9Eifx+NMQndxxtxQ5lEIJHcno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761561929; c=relaxed/simple;
	bh=WASv8vPf9FPyquyQDbPoOdROvffB+ReSLfQNpiWjqIc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IegrY/rMauPcAYtwvEwd7OQnvEmTMp+18mOqp13TnarNOM2iIJZi69g0M/8er5j3m3ft9XOgTGOqgcjfk0LGmEv0aZ7o3vwwkLBAxsszvfPHFSwrO+WPQQyVPPWk0Tr4VJgDsODYH4DFtBUnnBRQD/ZF3XdvvC4AR7zURW3zQ+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5db2dc4e42dso4669913137.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:45:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761561927; x=1762166727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xFi78x1MtIeYqpVCKC1DBSPNonZlJu7dJLYb6jM72vk=;
        b=LTrGaO0ZNmV3kM7RXtICKfhZFmGI78vS8kM+jCgmasPIvzFEAzL4rv3fcbwHT5GCGF
         4mZ3JjVzX2Jay64A1nuzDAaTS1xQ/G+zELANS7Nle31ZdLaSYMu24EiNLoV6f/6yvZC1
         Dg1f6JLEnbCAGVTeV3+bHDXpnN24MShQiP2c/AenPRy768D/XJX2idMKLopW18PCMPXw
         hlRlxu1C544jgjzfVqUGKE12HNZY+46jWx9Fw4Iqe9uAYmLUWJ8xmSY+gT+AbM5QONJP
         nKUrB0r3Y3Tb0t4j8xJz14C4wg1QJgb1oOpAQMGCQda8KMhK6L4EniJ4QCzeYlHA2YWL
         FXmg==
X-Forwarded-Encrypted: i=1; AJvYcCWFcd6Gar+O+jeTbK+yqVtWpMEiyBaIKb6rEfHHJyXfdcydQkREkG9SDc55q/9Cavo/+cEqMsgUu2Hv@vger.kernel.org
X-Gm-Message-State: AOJu0YyXn7IpV3guAj9ewkFBLYInT7sqJ3DViJoyzficuMJGsvPLWY0Y
	nUWdvcOu+1e5NcMBl2fi2qPJ1LohBbJ1mkTXt68z/3io+Ho9I41aBy4loaSSI6/V
X-Gm-Gg: ASbGnctDSvxYH+RXYcIbZIO4FcIFLasqkoeg/6dy/Jp7tzt9DxkFWQBpoedtlG/6Q39
	ar9s37AsaWLuFybviWvMlokLf/Hp1iWP90G4yGz3YUq9Xwuds5ch5aAEJSNcmhiikVKWwKm07ie
	gyX70dgq1uZLMAsErc2TYsYOvmebJUWoZhonSqgLEQsI/BORMl7tJf5yhBA5Y9B62bSoXpN8FHe
	2EPwT/s1piDaiIrViiqS7D4NKULtPVJjQe8skTwU4ydw5gwjDyMYK3cBVSzPXBfzWNnJYG+tMIw
	cRZNNBI7M1YIZ+WBIS9zfBenX9FUnyA0IgBsWnt1GS3b4teuvs/guadhq6KjqqLJNy/R09dtoXh
	dQsScDr8mafNzYazFl2Vjam8nv8i5zhv5BUc7XoJVXAqsgkhPneZpyh0JwLNhAfbMHPSB/VM6NU
	ia0fC649WT7hOtix0hF5k1dVLAjAfJjtftGqHPFA==
X-Google-Smtp-Source: AGHT+IEP1JcgTVFFQBTSvywwdgUofPzQD0oTfnFasPBFqo0tynjtxeZpB+hUuxPmrC3aVLAdkkuVCA==
X-Received: by 2002:a05:6102:40ca:20b0:59c:d78:dca with SMTP id ada2fe7eead31-5db3e17ec6fmr2760627137.15.1761561925303;
        Mon, 27 Oct 2025 03:45:25 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db4e52198bsm2577660137.7.2025.10.27.03.45.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 03:45:25 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-8eafd5a7a23so3428197241.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 03:45:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXBzcxWAEfQ89uEuVZewZi/MyO4xJHmgyJD94t1VvG9WtVNWrb1WelpV0eF5tFlz9iokzP1W3ZztoPs@vger.kernel.org
X-Received: by 2002:a05:6102:30d2:20b0:5d5:f6ae:3905 with SMTP id
 ada2fe7eead31-5db3e25962bmr2803354137.22.1761561924836; Mon, 27 Oct 2025
 03:45:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023081925.2412325-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251023081925.2412325-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251023081925.2412325-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Oct 2025 11:45:13 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUnom39_Rj+6Jc2g69i+Z4V7UkfXT791buK3h9cpOFpsQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnn-hFWk4Ur68Qi3gdEa85bXZjpybdjIi4iorAZW0HIZJSSUE0PNnuk68o
Message-ID: <CAMuHMdUnom39_Rj+6Jc2g69i+Z4V7UkfXT791buK3h9cpOFpsQ@mail.gmail.com>
Subject: Re: [PATCH 01/10] clk: renesas: r9a09g077: add TSU module clock
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Oct 2025 at 10:20, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have a TSU
> peripheral with controlled by a module clock.
>
> The TSU module clock is enabled in register MSTPCRG (0x30c), at bit 7,

MSTPCRD

I will fix that while applying.

> resulting in a (0x30c - 0x300) / 4 * 100 + 7 = 307 index.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

