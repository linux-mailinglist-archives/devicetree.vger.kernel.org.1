Return-Path: <devicetree+bounces-253395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D2DD0BE08
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C50A93027597
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 18:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E9C299949;
	Fri,  9 Jan 2026 18:39:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8870927FB34
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 18:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767983975; cv=none; b=cTU4L5ONZfq2S6UND/6hSIcKeG8CSZYy0yodt8//hgxDHEXC7gX6DaP02WcSrNfhlg7m+szql+b9Q4a6Fjclu9o47YRZkXOW/9IXHdqZwyzOgbRdYSN0C9mSpBCEgt5ClpuoPRaj6K3hXfQXJnMy/ZZNxHcbRWcRUf6i3cjiVsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767983975; c=relaxed/simple;
	bh=y1gtTxi2yb3k6kp7O25uyIdCMmBuVjPt0jggABGGS+M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Eu8g/DN/txaErn/F1U1Am9MoYIL7BdNPPXZq9ax89lKXllkApeXhFlPvArmJ+yIRF7JpgQUJpIBDyq3apy/9PdKpXiuCe3CHtD0SDnz2gGJDHq3v+wV0MGBVXIQhV4n3/X8eCRZuyv7wa3weVZ+Pw3jyvP2346LMGjxoZYV8bCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-93f500ee7b8so2214555241.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:39:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767983972; x=1768588772;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DI2vaQ4j4Y7F+Kqlo0E9lSJxr88gYTxnhRjrPcAUZdM=;
        b=j2e8TUqCmicDOkW20a69PpBwjcvS3fGJYIQIGNbjwI1Vj40rvz+9Zq78DZuP8aMKGd
         KS0Zd1XZi0sWhTctL8zMN5UQwO6jehaWlDq///jPmZNOAgWSr0bgSiDdxL/Q4kdyhYNZ
         p1XlN+FaPFdlFvrlN+FGZEMsLlyBQSlw5PUJb+AI50g/kTUWChp1SwpcMlkMCUNbl9Dx
         AOdjSpbThUzbV/9P5B2AeezvYBVMP/xmRNQjnWE//vKg95YDsqDxGFYCuYUWEGfkCFfV
         VWJpPxJ/dAFbcmQVvwQp6l6ndU0DUIXcjNo5GOYu7bADjIvfw+AXd6cH5qZjoKv7/ETe
         lTuQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0ME0tW3xkjo9cKkHtKJ9HNQX+6ECekq40NgKgtk9f2PPJlDIlWH3eDfPoq6mL222nPb+/rXdl6kWH@vger.kernel.org
X-Gm-Message-State: AOJu0YzbSdhO+TiGT+eGbvpCZoX34yp9L4EIe6lEvSKNw5nyDSHnHSQT
	MnbvVTkAub01ZW5Zy2jWYSImJ6Qp1eAG7+WT1isg4EAWYzuHXReRy39gMhejYhMc
X-Gm-Gg: AY/fxX4C22Pgycx4WfBK7gTiyC7Uzwg+G5DJgIpQ3Zfsj0hqIXa3BLMskwxc29l9Yr/
	0eqhRqUG16g993ApAQ4cJ4I2ccvDx151RwHYABUCGkdwVTpAKSfCi/xiKW0cIjx8kbOm9p7desx
	v0Np4pJcmPuXN3Fp5j3H8ymu6I3Sm/YHMXAttgj0M3fRSCgOh+L3ABHTSrgEcRRPNQNfhHRKLh/
	+lbDylTF6uqF84yfEoOlb1kkoqrJhUNJsLNLkQ2skthy9qqFFNoQzgJClHTSTZgs1LjjeO3YFKz
	giQz6SIiZIPvWtpG7GsYKKTrbMKD5RXimlyTHt8y+W6dsw5NIj3fz9TFx3Doj8yJpXkL1xUygLp
	6JbCBORsoH2dpEsIRAWaUG0bj4UQYnwEuyviVBC4+l/Ai8WUDJWmbsRenS61pChn70Nro1t5zUL
	hm/3mgA77zmYmOv8Zr6UUORxZOA5M7PGUG3N+8SwDu+v8ajW9y
X-Google-Smtp-Source: AGHT+IG0YmKEB4tqULNcFSZKZ0cGZIaATMjh9GrfPba8qRwSqUucxWRhd0klvpUrIv4moZc+QPZFYA==
X-Received: by 2002:a05:6102:2d07:b0:5db:e0fe:985c with SMTP id ada2fe7eead31-5ecb6853a90mr4262230137.10.1767983972355;
        Fri, 09 Jan 2026 10:39:32 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec77064e86sm10396587137.7.2026.01.09.10.39.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 10:39:31 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-94124140e02so2856971241.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:39:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUY/+JRE0sVoNwXXvuDM9OL5kAh7EJ9kRRuVZ6w4nwakO+dj+DE7Xs4dYKcPJHFWTEIDjdArvOCbiq4@vger.kernel.org
X-Received: by 2002:a05:6102:26cb:b0:5e5:5ed7:60ae with SMTP id
 ada2fe7eead31-5ecb6900d02mr4442716137.31.1767983970833; Fri, 09 Jan 2026
 10:39:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <679042b205b9596b79463b89c31d9e3f74cd0e63.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <679042b205b9596b79463b89c31d9e3f74cd0e63.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 19:39:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUt=yQwGw3sgQ9gBhOEa6TWW59srEE69dyzr+Fq6j+=Yw@mail.gmail.com>
X-Gm-Features: AZwV_Qj05tdYznd7IbXD-D9LpPaUhjdHWee49H2zOy9lEKLzWfR8oEQJBva10AA
Message-ID: <CAMuHMdUt=yQwGw3sgQ9gBhOEa6TWW59srEE69dyzr+Fq6j+=Yw@mail.gmail.com>
Subject: Re: [PATCH 08/22] clk: renesas: r9a09g047: Add support for LCDC{0,1}
 clocks and resets
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
> Add LCDC{0,1} clocks and resets entries to the r9a09g047 CPG driver.
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

