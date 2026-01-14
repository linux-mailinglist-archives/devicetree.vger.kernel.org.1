Return-Path: <devicetree+bounces-255096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 209F1D1FB0D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 362FB304EBC4
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8696131B108;
	Wed, 14 Jan 2026 15:15:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2856531D74C
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403736; cv=none; b=oSjrZfcbdxU53zlVjiRCV/VFtU3chfPAIyapwxN+vPphsv+FQhseGEhL03MWi5QK6gxV9ahBjIhZTIXqeIDQjs8oLc9mjqm87E1WOWYVwOSh2SMgA7cV/7/VqHUtk1w4I5YtfQ4iNHkRnTao1gcdjYD2WAXMJCRxbPaEtT3WiTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403736; c=relaxed/simple;
	bh=G8RYK+aX88sOsP16hmOe0deVsIEt5mGBHm2uBkX4C7s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kB81ghcujullzxu/gRMO/jAja9EGuPbtAF4nYkwg5arLOnjakYM3fzMjiSa2ycqpnPYzXrL9IUDGHv/eWAW3QyZ+EN16mdFUrPbXrbhqFw7Brxx53lO/n3qoOKkX1lxZlWhQBiSq9EssGLky7qc9PunkOvQOdNZ/1ovj5yczI3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5efa4229bd2so3470564137.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:15:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768403734; x=1769008534;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6mAk6Po7rUczPO72n7frU+FuUdnko5VLEu/mgiUZN78=;
        b=exA+unMTgods511ioNvSk/cpJDRIXF2rLd8/669AuoukdtVmAvS6CWqLgx9fDf/u4Q
         t/gBzAuP4Iu3pe875hw0ZbKI94NGCWcwjk4vzMdoQIww/nZdIygiK+pQAMw1Jy6/QgXc
         I07t7I0KYqaKQcqaewOLnq3ny1jG9u0XZSSpkFbTuVlKFGIvcldyK5Gw5dITJPMBD4cY
         x12CR69gfzysavlaNCJGskvQ1Stz540eouMBrBBJI26hCiXaOXC9j3Q6on05pl2z5FqH
         +MxvgXTeM5eLqXitUMlMASqCM7FHM9vIPXje+lc3NLogR4kKTCscR4STIObVu4XteY6Z
         529g==
X-Forwarded-Encrypted: i=1; AJvYcCXzvw0tDKaGLBSm+B3gu0C0Ut0zfVEt+oima7IP24o+i9hWBAWZwjttt25XzHzhpxC2vBKJN9wm2/PV@vger.kernel.org
X-Gm-Message-State: AOJu0YyvETV6XFgERZQOnHi25pL2NdKwrWGYCJdAKYvHi4Wqt6yackff
	A94P+894zqoaM51r7NHN9oQeFMooLDOA5RCEU/KPimcEfXrfzMhOQozB1+mgwzSy
X-Gm-Gg: AY/fxX4bPgWRBQzrsE+n9nY3nVAJcOKGhJO/Jz/9KLtWX1VHXidFxGUVLEWaMlN5PRY
	aO8cXDEH9Evi+p6/BnXwMDpMvF+URGQ4FiyBGQ9vvPD1c0/aNpppOdoW+5+p1/wfdc5HS2XQG7t
	F/hfiWzXXfuzbDdsESh74NKbIVWGDU+EvhLXLo5raxtx/gihGh5deRZqe4tX7yLoUYoqeLoAZuM
	8pOP3jef0G+hJ9HDR2CD2SJ5xNXAqfzfeNop8E+U8Dg7h9/2iTvC7T3Yxp98JUOuRQeibQxpfcx
	OH4us/e0aooQ/dQj51js4x+8M93yDZ+62D9neOGTHb0+fYWpH41Xo8rsuqksHZ18NVf/W+Eq0wZ
	FICaEcKZP5+Yc0qk5maioq/dNLv86hnzUgF7Se0Wu/lMD8X9ThnRE/Qot6S+id25Ia0CWr5CX5s
	wsWkzYMMy9d7sghMaYI8LPViaMEPhGSzDZhRTnjMYKwzRc79/X
X-Received: by 2002:a05:6102:d8b:b0:5ef:8881:c8a6 with SMTP id ada2fe7eead31-5f17f44429cmr1229137137.13.1768403732553;
        Wed, 14 Jan 2026 07:15:32 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94412404678sm22338644241.8.2026.01.14.07.15.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:15:31 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93f5761e09aso5079170241.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:15:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVzFlGlaPnQs/SKpXQt6Abbu4O4eak95U3xSMXMRuSOCHEWvrVOIcwa7fzvaqWrmoCxgobRoa2tHm9n@vger.kernel.org
X-Received: by 2002:a05:6102:3e05:b0:5ed:99d:6f6 with SMTP id
 ada2fe7eead31-5f17f4a6362mr1410838137.19.1768403730497; Wed, 14 Jan 2026
 07:15:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <8a2f65d0888a6ce6de94e9df0bc4593b9dde107a.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <8a2f65d0888a6ce6de94e9df0bc4593b9dde107a.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 16:15:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXrnq6hA36LZVuFFpcn5eE3ukng1FnKAVYW6dz5wn3DiQ@mail.gmail.com>
X-Gm-Features: AZwV_QiK_um5XwX0Uu_MDOD3I9TuaB-CMYyAU5lez0Cp5nlWbm7lpzSkXutUdXY
Message-ID: <CAMuHMdXrnq6hA36LZVuFFpcn5eE3ukng1FnKAVYW6dz5wn3DiQ@mail.gmail.com>
Subject: Re: [PATCH 18/22] arm64: dts: renesas: r9a09g047: Add vspd0 node
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 15:11, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add vspd0 node to RZ/G3E SoC DTSI.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

