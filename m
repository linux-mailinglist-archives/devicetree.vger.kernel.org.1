Return-Path: <devicetree+bounces-230772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC4AC0589E
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:16:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3A86189F91F
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F3AE30F7ED;
	Fri, 24 Oct 2025 10:16:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5631307ACF
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761301014; cv=none; b=TpYAO1q+7JWybQYnygeTj/gaKyppg1l40MkPhgnTu/G+MHdP25wl8mG05kKX7OIQAUbxy6Oc9ZF0Wxz46a/I3TGTr2lNwND3v0iUEK92b73njoE1hmmIC/C2HVyv2Ii170D/PhakywhbJDVgR2UWoYZhGvvGce0W6QBWwfsu/9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761301014; c=relaxed/simple;
	bh=AqiWd9FcEXBjGqvYmjKezWFbcC8LX/8ccSI0CzYf7rc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Iv4CT+qJgr/jkQIH0/opmGFdHBsmbnxjxOTjEUho3AQR3bfx9OWRa+m1lhtQ/sf1FZLVM4vmA/wI42egWrkpX1JzIPWMnOnpzJDR5douQRl9k6XRK0J2i7ULdDlh2jqY3bKcNCe9xRqhCJVRDTYEayD9JeF10QHZj/2ebb+hxMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5d5f8e95d5eso1184561137.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:16:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761301011; x=1761905811;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bSTLk7b49rZYTSOotXXLR+fnDfbehF6NQgF/VSyM9XA=;
        b=gSQzCSHSpL1Tuv9ZgkNDTbZWx300Q7h7NOLteMx2W8PzWlupTh/GUsIxX5JUfik1u6
         +taO0MTpdfBzLqHDvUq+9yixYzadZZIntByD8Xv54+D0DtYDpd3X2nt585QR4hFm2VXU
         0Emr8q/T4XzfFKNgJREiBsk8cfU+FyGd2Ed86TbkacvonRp0EW89Q4BFNNucxfIIVdFE
         jWhGL1/BEB9j7brAC3Sbcm7/nj9fs3rs2Y2o8MPZY80UnCqv0wQQOcXbYtUXlcLKB/iG
         Uu6WqNNx6xOnKzVTDf4zwd16nJWdS449gQ96Gj+VYtoX+IS/+9mPo86qgknKe84j9fbd
         NxEA==
X-Forwarded-Encrypted: i=1; AJvYcCX359hajoaqxULvzmeiC6dbJANPaq/bQjPf+iiepnZBP7hEuR3mTzjXjgg7kLEsw67dyT8/1/tm1N9y@vger.kernel.org
X-Gm-Message-State: AOJu0YzEgny80iObO02YNEcy2MiqRUj2XqG7YLjc5H0Emc9lS0OCPYur
	cG4EN3n+Xe353vHLTua9YV8PQW+US9ulmgFwQjFCr/9K8zTatgvTOgVxleQswsmY
X-Gm-Gg: ASbGnct4mgMfNFgDLDaEqK339JnH0XUwP6u10r+lWQ2+hygGurJAyNLeY7Ur9RytZcb
	XMEi3o/kOMY/cLVftebuZa5DR1tt0FRDNTNN+Hiz/Y/9K2F1luFh6Zr4D445tFhFIHKUj6mkz1g
	cF7nrPTR05746aqRWSNHqKf1CPMWQasuGTYI/EL7DUYTBKSCr7XK7kc53aWSb9G60qVSjY60obh
	vsu/eeFURdRbO37j2r6TFLz17xYkNwYmp2AxDk068u1E/zPBsM+ohTt+76WZcb9G0gSA6AZHNpB
	DCIFJ3lU8zxH5q6ahLR4ipRImDhJ4DxhkqrGVg30g429euO9NGk5qIOmNGxH/mH6OnMDWScob+c
	RGgSJOmCQBJXLTh0Wzl0vUyAPuaSrjBXPF2HwUVKOmAe2QBL4joH3N052keA59aNm+A1Qx9qxta
	YTWgiWLyQF+3Tq+RYqBDB29oV5HeL5OqTIthXPhgLLtxQ8ACFL
X-Google-Smtp-Source: AGHT+IFvCRLvq/pF0NN/OlKFSJneZrAsXYsNG/rl0RsLd1wyrRVH2lPqdaXzcsQrGwNFNGrDHGCviw==
X-Received: by 2002:a05:6102:5108:b0:5db:23ed:3840 with SMTP id ada2fe7eead31-5db23ed3c6bmr3044753137.37.1761301011180;
        Fri, 24 Oct 2025 03:16:51 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934abbd2740sm1882351241.16.2025.10.24.03.16.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 03:16:51 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5d758dba570so1359511137.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:16:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWzjzPwPFYjXndeMkruuwdRlY7JyPiH3oWqDThw2MYL7v5uPcQSUetxBQumop4+0NPk/XVnr/av2Svz@vger.kernel.org
X-Received: by 2002:a05:6102:5111:b0:4f7:d553:3cfa with SMTP id
 ada2fe7eead31-5d7dd53dda7mr7539658137.12.1761301010775; Fri, 24 Oct 2025
 03:16:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023081925.2412325-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251023081925.2412325-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251023081925.2412325-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 12:16:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU9jkZ16rw90qY-y1JwReVuh9GcoU9590Qj+fnAOBKcEA@mail.gmail.com>
X-Gm-Features: AS18NWAl-mnooV2yE2ZHT2YePMkrfHPFCcWPI_7IIu3f_WOQ-qTqZQdZwGQjyhs
Message-ID: <CAMuHMdU9jkZ16rw90qY-y1JwReVuh9GcoU9590Qj+fnAOBKcEA@mail.gmail.com>
Subject: Re: [PATCH 01/10] clk: renesas: r9a09g077: add TSU module clock
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Oct 2025 at 10:20, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have a TSU
> peripheral with controlled by a module clock.
>
> The TSU module clock is enabled in register MSTPCRG (0x30c), at bit 7,
> resulting in a (0x30c - 0x300) / 4 * 100 + 7 = 307 index.
>
> Add it to the list of module clocks.
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

