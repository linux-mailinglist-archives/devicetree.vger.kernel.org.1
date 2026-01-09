Return-Path: <devicetree+bounces-253399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A12DD0BE86
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:44:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D6D443030213
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 18:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2518C278E47;
	Fri,  9 Jan 2026 18:43:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40D2266B46
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 18:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767984229; cv=none; b=jcitWce7CAmG76+Koqh8uwt4o02sSEo4/IuIXlzmhEBRBIEj+W7sVTtoV8ZTWfFe0g1K3+HfUZ3A2ABqloa6tv1BqfFeQbDqXvejP7aJIFqi40AaO+iJioAgX7yvaOHRDBHKwNMv+vGMMk8ds98U79UtmbyUcqUUrYpk6bp6LSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767984229; c=relaxed/simple;
	bh=Siz+EqtF2DEyDXXm9dI9ms1Z1FX41pT/fgVeq5GfFg8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hMIqjgJc95w0wydsQoAyTezQocLwxsgmLknOH8T8+ewcdWgOGHBHmzUroklAZGu1f1iSjdus/oN1jQRSxni61pQA4MJr6FjONq5JYnn4+hSHJRyAOy2zIIzMimWrFqoYddRSlDBzaWakUv9N0NbrB6QixAfK16tNv6+KUmMk0Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7b8eff36e3bso4557321b3a.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:43:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767984227; x=1768589027;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fa2jKIqs2yYTNXV3hdw53GbF0voF5R+l35nND2b7JKA=;
        b=T6P/nAJt86AGpj5B+f8IEwTdklY0kU9pbYcbv5MGxsTEezb+wew+3RE9InzKtLnFgk
         NshJKDKcEv65XQWLCJ0Rzdd7Oi3CaTf6dLxUi7e0KODbSKL+WW1U51FUns/Lb7noeVk1
         LdMfNbjF8YGXn8bNJFau6/ZUXvl4jgMnGW6CwokOv3bn4OHcPZ2YGKFqDnHGF4PQWmEJ
         uqCCf+ERad5zi0zUB7Amv8XBQLVbR3gcVGNoUVKGwRaL26cstanRESGj8z8T8wtQbYND
         WDRkHRrTWaFQDdXo6bnr8jHAbbWBzXUX9usLiyne5Cx6QyYa99UOfg1ax6MJu5Qt3njV
         9DkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWz9jQTh2qh0eHrqFw7czkQUaqAaI6nxwzkkEFknfKLn16qpGa3hCnegDVAOlot7zyrM9blg3dNhl3Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6zt1NIG5baKzQm23aL9HseArB/e0kTbd8qF3tENBJ/rFBKrET
	P2je+g1pK9a2yRKwfHfWbX2dWJex8xKodYcG9SL87jNfqJetFlTDHe9Zx7wzqXq4
X-Gm-Gg: AY/fxX7IF8ucRFrR4A8Q9lPIuAJEMeaCif1WeZYBHL3O/XDJJbURn0oR7zlOOLkmGPL
	8BkstPZWe2cgL89f+RkUoif2reXR5UsHKGA/HFqsRBwsGySjKl9sS/5fdtpKNNjA8OFI7xapq0w
	TzQe8yrOxxUxnsR6R4AEsRHPWFpHSKqqvmrz9E1k3liY68W+Jg+lIXBm6yQTpvRr0Vrv05kPt7n
	oLaJEAUybPSTzw3cfyxZb0Pm353TEjSRpKE81173h2dhkT+b+3afPYCm4JvuL5Rc/fXZbpV63nI
	MSo3kQEJ3Av++jSkAHAs/POqAwtiExs2esbV9+qi444IiazTqqkD7f4/Z+Gn2m6ls25pv2SzK8K
	8+c0bKGRR2tqL+KCcVHezzA4Y+PB5W+BAo2U2InuUmerdMsY+ouf/sLo1iaGcedn8VHcoMOlHrV
	dMo0pY9yDXIm5wokeJuGA83tctLMA6ksy49Lq1csx0l1TFK7Gdpow=
X-Google-Smtp-Source: AGHT+IH7JdDSxm6ZGaeCQ96pB0012qOomd+7uRyFVaOnDT+vhXfsexv9CnMIXmH8j5XpOtHJTMOJyA==
X-Received: by 2002:a05:6a00:909d:b0:7f7:4dc8:55e with SMTP id d2e1a72fcca58-81b7d8621dfmr10227996b3a.7.1767984227217;
        Fri, 09 Jan 2026 10:43:47 -0800 (PST)
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com. [74.125.82.182])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81ef9881db6sm901464b3a.66.2026.01.09.10.43.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 10:43:47 -0800 (PST)
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2ae2eb49b4bso3320072eec.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:43:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVIrpheYxsYAwpco70CwZMZFZQefyrTuOLhJkpU9y13pgSWwKbRZW9xnLTpkihWqgOt/9G+IOsVUC7E@vger.kernel.org
X-Received: by 2002:a05:6102:dc9:b0:51f:66fc:53b8 with SMTP id
 ada2fe7eead31-5ecb692ea6emr3804438137.25.1767983778284; Fri, 09 Jan 2026
 10:36:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <0cdcfb470dbc4e897db049cf09f5d579f2035270.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <0cdcfb470dbc4e897db049cf09f5d579f2035270.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 19:36:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVfXnmDs6UkEmGT_AR9YktEGZqAWaWiu9AijhsvWfgorQ@mail.gmail.com>
X-Gm-Features: AZwV_QjUM7Wb6ei547ywW3OJAaC3IFOVWsMcEtNjkONgJiVb3Bt1YrhDacYAZYY
Message-ID: <CAMuHMdVfXnmDs6UkEmGT_AR9YktEGZqAWaWiu9AijhsvWfgorQ@mail.gmail.com>
Subject: Re: [PATCH 04/22] clk: renesas: r9a09g047: Add CLK_PLLDSI{0,1}_DIV7 clocks
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
> Add the CLK_PLLDSI0_DIV7 and CLK_PLLDSI1_DIV7 fixed-factor clocks to
> the r9a09g047 SoC clock driver.
>
> These clocks are required to enable LVDS0 and LVDS1 output support.
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

