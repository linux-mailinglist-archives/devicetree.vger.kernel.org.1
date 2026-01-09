Return-Path: <devicetree+bounces-253393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DDED0BDDF
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:38:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65BA63019BCD
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 18:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F15C274B28;
	Fri,  9 Jan 2026 18:38:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B988925A2A2
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 18:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767983887; cv=none; b=XB+4LVNix6NLDygjPv+ErSlsYioVGOhxVuIOLq4ParfObyiawegXkrGWJhyvbq6oNBK2jPIZRo+9RzIbsBzpqGhr2Daxr2dWUVhRzFPSalDaqa15uF3TvWfO7dqXnaIFXTYfkBnQeVQuOxpzn4E9O8YXg76RxEzJAKIXl31Bbvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767983887; c=relaxed/simple;
	bh=xPYDi2PcZo5deiOcw0lB7iYzQ4VCFpOyH/0YueLqgmk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c+CsH2U/Y8XYPUzH9D4EIRMCZ0tefSahpjPyWxnYVvOn5JM/aEARDZ5OJrytDLLxCgqiFn2Prehs+xP2Svfe6dPf8rXx/UJXw4eMJP1Q0eHKepisAa5DD59IzC4d+wXwyKcXeL8+Fvec6gTnmgdz0LpRTiJRILJ2VHklIxHslz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-5636784883bso740983e0c.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:38:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767983884; x=1768588684;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gRHLGasfyR69c6srR1G3LqlEAk+Zi7+IjINLOavqaCU=;
        b=k3596DBBCn8AsdR/IxrsCsnzJpZt4ZJ2CrD7oqcWpgpZCxFDGJVQwXXHi5qVbyHPlz
         GjsBFpMKXpKpW1+Ko8w/YMZMWE6Y7kt+YT44+Ft0529bVjSJz41rXkCQdqRu3IGiIwMG
         0z4wXrShULJVgdiqcitIZe4rTSj10yJtU8JZode4WTwgT0vG1jSEICgpe87Q+L3g3J1/
         i9Q0lAdSipuMPQ+UmQ6p3ODqBUdPXyTcalt7JQv+ivvrFFgoy5QUbiSmPu8c1bqqbU0R
         oRdyszQQZ/9P9ckaRXTrO2RCpDTWdffNug8ykP5DDUoBgB/xZ+IYUR2+K+vhQpkIulbl
         vokg==
X-Forwarded-Encrypted: i=1; AJvYcCUc+H563Du1MuRNDQzWzknjK0oCZ0FoxatxnlsdKR0VDJP9aJ2IrshfHZ1g6Fvoym/E/I4/R1JKwzZu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx21Q01PNzJo4EiB/JPe5Ani+1EYlcukegk6V0cqCNw3aeFMQ0L
	ow8jx7oyLXOct6OOXQPaZQ1C+57OZn7UIJG6Tcs7v4L3EEFOzGhG92dvoMTAndan
X-Gm-Gg: AY/fxX7iv2XLdJ7zKAEbGti/nZfBjiL6Om9ZGc+0rPbbcunwmGz+8zLpGrVmSpOdMQT
	MZDHWjWCY0WqT7fj3uotOmb27qg5Lc4A/jx4/eOXLAhM4rnHCcSirqC+xYlC+AYcd/W3N89Ta9B
	nGm2OibcaEMbiyDQukme9vErh4bjSYCRJa1QfgPyj4SuQpyDu/bfHeGV7p0crR7PFx7FsbscWrv
	xIbeFp6R5qGUUpc2f+vlx30Mf/DTY/lGJKXN/dTYkYuGznHO/fdku/JuYBzSPij2xayIQlPHFK5
	PNf4whMuHJKLuc7n22iRx3YvzF7yJ9xVITmnWqtN3xatAGYeT95bHKVThNi/ZUIeB7J9mRZxOXs
	ZMCub9J0hXIGNnjhQuvfxRcSdBzKu4iKvEGgVzFMVXatWA4g2jQ6d3kyjCVa7jaVdYvaMawx1iy
	lylYxKCOlRCUz0PPevLdYfB91qmiApXLuL4i7REzHiEZQ7kPmuqB/y
X-Google-Smtp-Source: AGHT+IEsVlvXF4LD6Z5XtZw3ZrGkNGZ6WDZxzogkj5we3QLZs5GZ7Ixb3JVGu9aCxS2xW472yV/VXg==
X-Received: by 2002:a05:6122:421b:b0:55a:ba0d:d84d with SMTP id 71dfb90a1353d-56347d709d7mr4306217e0c.7.1767983884591;
        Fri, 09 Jan 2026 10:38:04 -0800 (PST)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5636dc36a20sm1364990e0c.13.2026.01.09.10.38.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 10:38:04 -0800 (PST)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-56365984503so893981e0c.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:38:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXp7kWCQ5ComKVkb9dvhTZlD4DOi02O8Qvb4DlhGfEQ2iIcB4FaKi2bwLNIMJQnidWaf+uEy7ZlWkVb@vger.kernel.org
X-Received: by 2002:a05:6122:459a:b0:563:6d01:a514 with SMTP id
 71dfb90a1353d-5636d01a684mr805296e0c.17.1767983883673; Fri, 09 Jan 2026
 10:38:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <f7130b18f20fe80f4187cf0b024dc10438f2820e.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <f7130b18f20fe80f4187cf0b024dc10438f2820e.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 19:37:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW74u0a7eKN_xS9hc6Y0GycGbnwF7170KjV5oNi3QnY2Q@mail.gmail.com>
X-Gm-Features: AZwV_QjTECnB1PZN8BE8Sxq6bqzf7JgBJC7TEeRima6lECENgoL1jMbZT1RrYiI
Message-ID: <CAMuHMdW74u0a7eKN_xS9hc6Y0GycGbnwF7170KjV5oNi3QnY2Q@mail.gmail.com>
Subject: Re: [PATCH 05/22] clk: renesas: r9a09g047: Add CLK_PLLDSI{0,1}_CSDIV clocks
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

On Wed, 26 Nov 2025 at 15:09, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add the CLK_PLLDSI0_CSDIV and CLK_PLLDSI1_CSDIV fixed-factor clocks to
> the r9a09g047 SoC clock driver.
>
> These clocks are required to enable DSI and RGB output support.
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

