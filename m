Return-Path: <devicetree+bounces-222428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B16BBA90E7
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:38:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 440C6189FED5
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 469C9301037;
	Mon, 29 Sep 2025 11:37:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19823002DB
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759145871; cv=none; b=C7kOBNo9LIJpLZvgRPWH484i9uxQ1UQTmAVRbb8NxdcUNY07G2hsHBnKwUVur0H2ftEbOEauFJc7bOI51/YI+N4e2dV/soGnVim2d+glA7btvvj/yuxPW3rpiXXVnzOCibhVjA8UP/7/3OIjs6IbFPi958E3FO9O1T7OLhNry3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759145871; c=relaxed/simple;
	bh=14SGPZS9nPNEndJRTPYwlhVvLeiJWTHVwacGI0l7DKc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CU3BFpMqhfsZCv3FiCIbrfzX27m2QyA9gsca6whmom6qmqKtqDqthktt2tOCuATL0uh1ghwEy7GWIy6qZD/3e96FNXnB3bkYBfsj0rlriqpCTtkBttNdqjqU7uIFmHLYwhl8Wg9Q65931SJtwnJQTs/dhtLCKxiWOs5RiKs4QFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-54a8f6a2d80so1615712e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:37:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759145868; x=1759750668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=weWdXbQxCnMJeHS7B7BXqXEXqPpjTdZBAI+JQlcZ3Pc=;
        b=hxVAuey5n7WUsAm/vqABG8s0Wp/D2ZawwbU7l56Vp71Ow9pXaQGu5zauOwKPciQbky
         JZjodY2JXCjkRMsWYWG7xITzGz9BpTJ/PBnQ91fuOOxJSGHJkGJJi7wmMs2vZL+wb9xD
         LDfBIQb4SsSWEJG/DwDm2XD6HIVg/mih7PE+zI5GM0F1K9G1XHYRjBd/rzxmPgax/ilA
         /G0H2io/GfA0CK5YoxJLGuWVNe02NoQHCF8f59cKEaCGb3U0ohv5KSkEhbxuB+ktJpig
         ty1GCEGIVkqQv8+llIA3wRoUHZrZu7ESrBKa/UrjZEfvQZZz7nqdh+P/LSQ4fa7Tp8a5
         LXvw==
X-Forwarded-Encrypted: i=1; AJvYcCXSdWsuzX/zU3txAqqke2QkDwQrGQc3tMyFMyriSmaJKVITdOAEfLlnYEtDkJHXIv64dvWVDr/jKYf0@vger.kernel.org
X-Gm-Message-State: AOJu0YySEvjjN2YK6WwodB+QyqwwlRfDnjH46aoexi/XyajxIPOJzhHz
	4yT/v0U8dL6xPCUWV28i8wdHAgHkaVlzxR5PBIe4Au+7xzpmqtplXnMlBD5o/aIQ
X-Gm-Gg: ASbGncuiG2h1oS8aO5Zg8l7vLo8eD/iH6bHenZw9CMCg/lSNDc7yuGeEcdo+rwh07M4
	2+ZB9vwVU5UETe8hA5U5YpoOUU3YKUHgMKyaTpDAM4OD9LR0r7bJLWgceqzirHFgX1W8goena5n
	UQoNVWHAhn2UulZF9UUM2Fj12rF78fxWazW3HdCxql7NY0ZwFIJDZjSyHMlxdJFpprr/z+Amnhi
	omzFcgWoeBNtJlAA28cmC7O1S+hwtPtuVFN0Bm0gJL2FhmGrBPaEAzAn3afElKImTuY9koRDe5r
	b/skvy74TPJzSIhw0UfPYuenWGL93se+6fn96EIjdGoI3DBeAqj2LB8XeD/YP2AZ1i1A0kgZO64
	+ky0qXgqwQfqOM6waa4ruai9Xbw5qLtYbHCHOkd+iwNwzhd27uKVxDkqop6jseU4u/YuxPA+44P
	k=
X-Google-Smtp-Source: AGHT+IHkszEjbBNwgPU2i6D3LpZoQVZB98qIsj2dTAQgMQcLKjA1gcjZJRZnXRfdR/DNjHZSDKE7Dw==
X-Received: by 2002:a05:6102:6488:10b0:5b4:7e28:e5c1 with SMTP id ada2fe7eead31-5b47e28ed12mr3035193137.28.1759145868506;
        Mon, 29 Sep 2025 04:37:48 -0700 (PDT)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-916d17f8d25sm2408624241.8.2025.09.29.04.37.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 04:37:47 -0700 (PDT)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-54bc04b9d07so2000589e0c.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:37:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX3B2ehb42j7C/zh6WSbQAG0xpfrIj4dXVoXK+9T/Il8FKvo9NjI+Wt3F62wvNb/Wus/5KNq2xwmXPY@vger.kernel.org
X-Received: by 2002:a05:6122:7cf:b0:544:8d16:4541 with SMTP id
 71dfb90a1353d-54bea102e5fmr5636901e0c.7.1759145866822; Mon, 29 Sep 2025
 04:37:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250810122125.792966-1-claudiu.beznea.uj@bp.renesas.com> <20250810122125.792966-4-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20250810122125.792966-4-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 13:37:34 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX5zSX5URg4vY3Mm8zo9ghE9cTBOMg8ozLZJ2QevF=7uQ@mail.gmail.com>
X-Gm-Features: AS18NWCeuTWOa-ri5Qlkxi0ZocAYLNnINdMinkM81tK5_mT4fKgbcdtjVA380a0
Message-ID: <CAMuHMdX5zSX5URg4vY3Mm8zo9ghE9cTBOMg8ozLZJ2QevF=7uQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] arm64: dts: renesas: r9a08g045: Add TSU node
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	niklas.soderlund@ragnatech.se, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, 10 Aug 2025 at 15:02, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add TSU node along with thermal zones and keep it enabled in the SoC DTSI.
> The temperature reported by the TSU can only be read through channel 8 of
> the ADC. Therefore, enable the ADC by default.
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

