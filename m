Return-Path: <devicetree+bounces-253388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84462D0BD60
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:29:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F113830491AE
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 18:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709AE366DAE;
	Fri,  9 Jan 2026 18:27:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137E5365A1D
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 18:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767983270; cv=none; b=TskyDyYrkKRkFVXXZ/rao9pSW17JNcY5Dyxj2EIRAvgxowXlEr286TIGWxK2Yady1a23QVb9lcW+ZpDNE9HJ0USsLMEYGEBRo8RVJyTC2SurlwDju4aulWxYHxBLf//PR9moC5iGR0bHcxT1EHQQ+5Zvl9+aFQQLTa3h/fPBFto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767983270; c=relaxed/simple;
	bh=8TzEm6ww2KBwSJjrrvhY+MuA+YjIBn+Y2L9mT5oqgDM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UvcxaepzZL3SpFMVDz0KD3QPT9/W0YDg9sFJ1HJlqCA4v5A6CnW+TOjQTV6+WMXVbI+wPeTVxYreeDth0Ga+3SOi1KbSSJB12RFaEYH42R4gUcm57rxz3u/8Cd6lePe9T7zbsxwjFZzbJjYbHyNix2Tv7v453o3onpmiyGdKeJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ebb6392f58so1536574137.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:27:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767983268; x=1768588068;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+fLS5br715ALrW9iu7K4XmrLPlp0NmncdqOKXgMKuek=;
        b=uQO8jtIxJwhW35NZSh2FCFqf1fijw0IO8JAYMfMBa4cK+Q2DhBKNgSoPx5Jw3jzG7/
         zmk8usAjEnsWm10SK71SlS/MopyIFpWGKLgsjpIW38E4tMpmfbyYW1f+8cWL7zxCDvfu
         nSXmpsLi1XKeZ0xQG770yI1qznLJbJiJpsmg0TV4liacf4GEq/3eQUl+wpqNdLJfg07S
         EUP6wHTk9aFL2t2VxDnR38sprD74GObABxY8o4JFQeXBNUZyxBDeYvGMMC/K/Aplmd9z
         /y7waNUoG2FW2ASKdu+JLeGwaOptXNJCci3oYrhUeXyB+airWQEVtGBJBaK/R/AG0Ucl
         9lwg==
X-Forwarded-Encrypted: i=1; AJvYcCX6j6M0rfoSfheA4OQzQILVDLoGIq1tgcdqd5k+gRbQVJFId8prVO3Ais4aEOz7N/4DXLrn3ml32BJ3@vger.kernel.org
X-Gm-Message-State: AOJu0YxQCd8RGO2jRuDMQQ3ZygKY764cT7EYS4+A6spGgqxQ/PoYWWjs
	YIJm0vkMa79DVRTDFR+fvgySgBIplnVJOiner55UdajH2kOUZSet6U9NDR+ryFPQ
X-Gm-Gg: AY/fxX633Bazb5bHVdRhKD5S1zksMoaA5GaD7DSVUxdYRMxFSaQIjd5+8N51Ymdta04
	a8j4CQGsCREc4OFbJ+E7Rg8fGGJl3El4gBf47t/DEoGx4Dn55vdXgGQNKb+8HDFlRUMDOaKNcpH
	9sj0Q5rEIn2Q/+yk/ZUcoBmPV4hh5eVKgAvkLIdy9QxfQXIcpj325MmIEkm5P6hnOrodipWiqgE
	NTlRKSGgtIrkKwQ03xsNhBxzWADc1QrYi6v2fT8uO/WuceYHCKrHNLsX4ljRmp3AblCiQDL/nfV
	kYIdEHbd+fXTcj8pZYUTSIYPP2oVWhfQJtzePJFO2cvPyG2uoF2affx887icExGh7UnlXfsbSiq
	O5tvYh9OgO65wxW65cWkHBWFCn+Ge6NqAyik/BOh0n8X+KaW0unWnv9mn/e8chIPqXC8OnaceSm
	Ht4EbEv+5WNxLX9mxAiVa8dCXFY/j5+sl57d5V26EeXuTbjntfHNXa0UC/95Y=
X-Google-Smtp-Source: AGHT+IGXdjb9A8JiCjbASL6Ic1WKiUxDVzFhe26aE2x9nVfuoygv8Xhp7uC+skH5nhrk7EuT3Kmmrw==
X-Received: by 2002:a05:6102:c50:b0:5d7:dec5:b6a7 with SMTP id ada2fe7eead31-5ecb65744b9mr3653551137.7.1767983267953;
        Fri, 09 Jan 2026 10:27:47 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944122ad97esm9519510241.3.2026.01.09.10.27.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 10:27:47 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5ebb6392f58so1536565137.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:27:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUqC8X4B1gKTCOhuyDdzjFGFBAGOv6jI6gy1xI+WMY1uU4YgU8+t99nAkg6QpuDNk3d2zFmJyjpO7T6@vger.kernel.org
X-Received: by 2002:a05:6102:604f:b0:5ed:f26:55f4 with SMTP id
 ada2fe7eead31-5ed0f26580cmr3794404137.34.1767983267169; Fri, 09 Jan 2026
 10:27:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <371314eb59c84965e73c4c225db386456d82b1d3.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <371314eb59c84965e73c4c225db386456d82b1d3.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 19:27:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWqDPYNPE63ZBFxWTnJtzJwisMNpUPFPf3BJodCxzZ+ew@mail.gmail.com>
X-Gm-Features: AZwV_QheUwWEgzt_8L2XxxL-r3KN1XzfOq-OJJW2J8DrDX2eZqhIZwBOou0w49E
Message-ID: <CAMuHMdWqDPYNPE63ZBFxWTnJtzJwisMNpUPFPf3BJodCxzZ+ew@mail.gmail.com>
Subject: Re: [PATCH 02/22] clk: renesas: r9a09g047: Add CLK_PLLETH_LPCLK support
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

On Wed, 26 Nov 2025 at 15:08, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add CLK_PLLETH_LPCLK clock support.
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

