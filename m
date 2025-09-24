Return-Path: <devicetree+bounces-220737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3B5B99D6D
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:30:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8E6C327585
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339FF30214B;
	Wed, 24 Sep 2025 12:30:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FC4302144
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 12:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758717000; cv=none; b=fh76Aiv73H7Nx1s3lsdTHDlbXuNBhV+lwD8ozZnORxfXCbLC1yLliyUR5pSSeWoR8kZWMcUDj7yoBPL9E45YbAdgN8e+qbVwhRq2SYbEl9q05Og5ZnW94rAbax5WKpD4WdRCuxPZiqM/G6DQPDxp7P3IkT4wAYnHnpYuXba3xjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758717000; c=relaxed/simple;
	bh=DYWtNAd2ipu6vMvUNjTxOuC6nLmwhMubAsibachtn+4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u4xsEUXtRgvps5wbbrrK8ySDQWXS+rsp+KfxVPwbE+BkMAGQRwtLPqKnC6zKarrpVWycLukzm6tjy04eh+C8E0a5h9jrJ0T+6Cos8AQNVlQjNTKY+3jZ0mid1rkRRJsC1kRuQcALz2MGU9o2AA80JFyR3naG4pgBs+DDjpZrg44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-89018e9f902so3586946241.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 05:29:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716997; x=1759321797;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3tAtYXWN7ryUB5vWJvXtt7rrilhjlT2dOX7k08gBfcc=;
        b=UhrqANOa2lEEKkn9cffTchGvJNUCTyU2UQU9HHKcFSNTdmlzF12QZ9pN0MejYbqsuJ
         cmrmGxFTS3niAv+IN5gsJv949hOXAB8b6PvHmJ0314SwdPGt8dk8yMV5SxGxwI6uy5np
         AypmTTvaZgokcvE3bDLF6xhlr2yPgpACmCzHXVBLl3KL+egKbXknxRvDFeJVrOUni1w2
         EHwGBWv+HsB0y/o4i/Xw0McGpfQVVhpYymDIOLKZUfrtMzvpq0pGqiXChgCHCepXu9j7
         PuoLtrhqPP13kEFd71mM3OcmZN29lRvPCpHlCNX70K+X/A3fOzAvhc5m2IvzJYo/KyLw
         +i1A==
X-Forwarded-Encrypted: i=1; AJvYcCVMxUWXELbef5uplhF7gjCKXm2pRV6We7ZGTwpnAdakFvex38quz6p43gBA9EFPz2aVeokagfu7YjH/@vger.kernel.org
X-Gm-Message-State: AOJu0YyME420mUJQy5vcq+T99dM5kuYA5RK7ChMeJasdvjAJCgNVrX92
	WjFB0RRy+2xa07F8W8Lp0giZ7ttqjF5PtlSk8joLZJNAzd4dicrDwQZNHMmmTdP0
X-Gm-Gg: ASbGncsqG8LtNRH3orx9Xk/3qbQqNePX3bue9GQdWHoNOkybvuDmGUYkcbgxt1QPD0e
	t5+NV4ckUaF6rI6oVZ4hdqxBMuQgR4ToBNJdUUKp+bb1aeSZbTpgEEBj1b86lkBUefAjkSenYUf
	lzIKVRjIiCeO/O8de051ONsHn8FvEun80twMK5nc0S7ynyWy0+D13I6xiisXtLNEPHZ458166BM
	AIo14Tw8/LJBTsxkyqtBruq/zVvADR+Q2Wc/pUbIuRDhFBDJ8SjjCqa8YF4UXELHBBbys5BO5E7
	xKSkvYGLudsJWPdhZcnjxf5yIKrlRJDuGg1MqhChfu7rO2OHB2p7Gzak5kX2jr/zg8xToOheCep
	OvsxODsh+Zvr/liebZwaSkcg3ylsIkmsxzMV+I6LxF3QG4MOZzPW0medjoPJW
X-Google-Smtp-Source: AGHT+IG+uc7pZJ+0v92CHydsb+Kw0wNLWbAYO0hj5b7CQOV8V0jBNmeq3ZvF9G23J588ywVnCtda6g==
X-Received: by 2002:a05:6122:a24:b0:520:64ea:c479 with SMTP id 71dfb90a1353d-54bcaf7613dmr2235181e0c.10.1758716997211;
        Wed, 24 Sep 2025 05:29:57 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54b980c19aesm1834349e0c.1.2025.09.24.05.29.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 05:29:56 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5a0d17db499so2557306137.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 05:29:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXCuB8uGPXBYA4sLy4S+uHNGjLXEaJWlvmBsPwB6uQgT5CRdNlJMkS1YDyzx73+0H7TabZtgmLoN9Z5@vger.kernel.org
X-Received: by 2002:a05:6102:292a:b0:51f:66fc:53af with SMTP id
 ada2fe7eead31-5a582ed6587mr2478165137.34.1758716535525; Wed, 24 Sep 2025
 05:22:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com> <20250916150255.4231-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20250916150255.4231-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 14:22:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWgjgsAG5my_vDYF+2692NyFOuDqMXH9F-1zE_KXVzigQ@mail.gmail.com>
X-Gm-Features: AS18NWD96xgwB4aeZ6Vi7llmU6wbBVQwbgzGfR5YAigBPMea8x1UL6uuirF4Jr4
Message-ID: <CAMuHMdWgjgsAG5my_vDYF+2692NyFOuDqMXH9F-1zE_KXVzigQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/9] dt-bindings: phy: renesas: Document Renesas RZ/G3E
 USB3.0 PHY
To: Biju <biju.das.au@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Sept 2025 at 17:03, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Document Renesas RZ/G3E USB3.0 PHY. This IP is connected between
> USB3HOST and PHY module. The main functions of the module are
> as follows:
>  - Reset control
>  - Control of PHY input pins
>  - Monitoring of PHY output pins
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

