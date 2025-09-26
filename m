Return-Path: <devicetree+bounces-221828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CFCBA358B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 12:30:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12A6A1C04C5D
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 10:31:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 745EF2F39C8;
	Fri, 26 Sep 2025 10:30:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E8824167A
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 10:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758882638; cv=none; b=MW06FaCf7Z2bQPDJbt0fpoKWu8LWagFci2iZ2e2/yXts2tte9IltNJZojnFQ7wRRZe97xNiuIl9GGfdhjgeLzQdIcNOJiRZDUbEt00MVX+/YXtbavcsF8YKm9U5zFcAQqejcZ569OBT+qKt65rHZeYlNU3EQa68HD1XKOYVZjsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758882638; c=relaxed/simple;
	bh=meSxc8wrYtkbVLWzjZPTLzds/Hd25Wzn0pY931UcZts=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KqoPROiIjUv9/CkJNoREhR+mBAhPblf8SaGcHfWAX9cpEhTwXN0VAxAeA7hd6tw490B0Z4WiE7n6R/a+0iMFZ6eoiLOgnfnu5qv7O1m3BNogiM+x9JP2GfGy9nJVav9RxM4V5R+wyGHXlic6bXEgGR458p441XKNvipkf3IoBXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-90f6d66e96dso603790241.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 03:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758882635; x=1759487435;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=udD672uKdPtCim7NmlDurpPdZYBL+0mV4DdXmMjUq+o=;
        b=j8M+Z1AIC4gj3hZr03Rgrg7vZCMUde6dMRE6SLviQw4MCD0R5fe8cooRWqJ19SSJde
         gm1vxZJAzz4qcVMHeWP4klGxhjHBhtLMfbG7t4KLnrbGYsUoXnJgOp+Ym0HhasiIY8Nw
         GAFqk9BGrBwMrO2KSHuaToeMwt07W0mrrLI7M5NyLgQvS+ihyD+/1bw5G1YMhPJpxvks
         7L959z/nc5zXfnvqfJmajTPwmsV+K4YF6F1AEMfXsDDbNdrfX7YRV4iX//aRKtB4jsIV
         9TZarEO5Zv0nNGJ1qMB0ODGVDE1TjuphsnkVeb7Nteb6uzil9qsUjsgVLRjqxtPMUv4J
         b7DA==
X-Forwarded-Encrypted: i=1; AJvYcCVA1qfZ4zX/R300tOQ9J9Q/UHDFj/o/891i52yT2s90Esh2N78cXIyiLrzEd9S/+EcMl5DyPqKdWdPv@vger.kernel.org
X-Gm-Message-State: AOJu0YwCq5VLXGnWpZlNJQbTrL1qfME2t/7udUwi77Q2WO511PrUl1X8
	ovq/H9c3ciXSbiHc9GKrxcTs3Pg0h/FoKyyhKV83dRTik5hRyJdyWAyyqA3wcDXn
X-Gm-Gg: ASbGncvKywfEmgnukDkqYYhR9gMxaTb2UD9vfRui2Tl2/SUVRIzoE9oyCT6mCi9045C
	A0YjO1UawX4qwx9PZ1mDaPzVjIqhUtPm79rOJv1OOFT64RZ18EZF3UkgvwnLqOWysU4kU1f8p/G
	DILXQySKDtg1D7Xdcz+uM7Z6LZ+KTDPKKu7vF9e9fiFt6pIsRz99gO1bbMCq1xPRDtuqgmophZ/
	EQ7KwH9+N/Bn86TIdrN4aA9RymdgOW+k5U4I3YUqAZ+SQt4xqHAlXiNb7FMMPykSowvKwPA7F2u
	ne4uPNxbo2LhgEpLL8+T6zuqwLqYUr7eDc/HGe2tSjD5Pt31ywJgQE8pbmmPGrcNgySkAeTH9j4
	KFgsDxqXat7EQGWs6yd6QBWxzhPb/RkHpUCt1r0ed36bJWqqtwzcv1r4kzZF5
X-Google-Smtp-Source: AGHT+IEGQfy2NzZOgQvDjTT55X5Tzt/W+kTLxVn6t1QPAXki75SXPebcYYUfddVQd43Pm3fFw+i1NQ==
X-Received: by 2002:a05:6102:6d2:b0:538:f3d5:fc12 with SMTP id ada2fe7eead31-5acd0935270mr2716802137.32.1758882634969;
        Fri, 26 Sep 2025 03:30:34 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae39eff1b3sm1174475137.15.2025.09.26.03.30.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 03:30:34 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-59eb88955d8so757803137.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 03:30:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVg9PAhPFVoiFDzlY7X/xZgRIzjNymNXEb5o9ddpkp1h79PZnuARJwvc5lLpoGUjBCDdCakRyLSKxmi@vger.kernel.org
X-Received: by 2002:a05:6102:6d2:b0:538:f3d5:fc12 with SMTP id
 ada2fe7eead31-5acd0935270mr2716797137.32.1758882634619; Fri, 26 Sep 2025
 03:30:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250923144524.191892-1-biju.das.jz@bp.renesas.com> <20250923144524.191892-8-biju.das.jz@bp.renesas.com>
In-Reply-To: <20250923144524.191892-8-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 26 Sep 2025 12:30:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXM+CBd0=dqG3DnfU5NAup5AH+T_w35MFi3B6T0iWAqQA@mail.gmail.com>
X-Gm-Features: AS18NWD7sjtTfJ_M9h0NGs84Fgd5nzj22GGL5o6mTQegvldoQrfGgdyuYCG0Z6c
Message-ID: <CAMuHMdXM+CBd0=dqG3DnfU5NAup5AH+T_w35MFi3B6T0iWAqQA@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] arm64: dts: renesas: r9a09g047: Add GPT nodes
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Sept 2025 at 16:45, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> The RZ/G3E SoC has 2 GPT's.  Add GPT nodes to RZ/G3E ("R9A09G047") SoC
> DTSI.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

