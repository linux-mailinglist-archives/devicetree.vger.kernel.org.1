Return-Path: <devicetree+bounces-249061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9874DCD8E7F
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AE42306F146
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 083CC34CFC5;
	Tue, 23 Dec 2025 10:41:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAA634C128
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766486460; cv=none; b=lF0Wi2gp7g/2yMjBUsWKt2EnPE4/Vx9+Vq73BZieUWVnq+20/V5nJUSPQn4jQGdPmz9MyHywYdyUF+5phDEwB9AEJW9IKxwHYNJeBElMX7R4DhaS5pDndHddQX4lyS0BXjwjfSinVfKL+r/v1eN+cDxB0aH8xglvvxahc66VpXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766486460; c=relaxed/simple;
	bh=66jVhePVgbDY99R/UaDytJcux4TaSRR0e9iC1VpGw7U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nYMSD59BwOl4WTBojRgdwyGAOtRrE5+fdXahfbQRRjAoK4gNvvbj08RJcgsPcM1qHoW2IR3OnLSStBslbspglKYRI0GYY+mJB4DAH0AfmLxJmrMJisYs3LQxmbR0HfCPio+ab9kvyNQBipK2FCjbE6pVQmvhSmhmHV+GLy35uVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5de0c1fa660so1468319137.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:40:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766486457; x=1767091257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bXELbjF6YF4DeXko/6RU1bv5uamffDsE6H3g1pKMitA=;
        b=lSK4lIlsWkX9FoDXHwUdQkZWtxL6xULVX+A/z1Pf5LBYrzHVn0AokTOxHog+hRtV2J
         D/fpKXrBw16hkrFw/s1M5gf1YwSThpT/eEU5GwBLhMr1Yv8cs8+hI7UIzLJtebXhD5VV
         lWwOqzvKXDK4ch8hUYuQfz2c9uI/l4NlorwezfQubqOt1G8EuuLTiZ7h00nSv7PP2qLq
         hCuYDE8uQeLalEi+854LXDr1cvxHtaIzl5RaSaTk3JSo+Vk43ZMhgvvcZjpLX7zENLiQ
         4zVaLHXj2TspfiHrXJDOYfOFd1z21tsIwKbqGn/AZt0/L/m9hKT/mFgL8MTo4ECusmQ0
         cssg==
X-Forwarded-Encrypted: i=1; AJvYcCU6xjI81JRvk35BEcvF/0ZB995PxzmskieFge5fqSGMaMzLPyhdURp4py+ARW0PcrIAvroBYCYlIKQg@vger.kernel.org
X-Gm-Message-State: AOJu0YzCLYOT5Zpv8sqGyMJUDcbClje83m0Kr9/padnmFnL4F2Xav2pF
	VlPGdpfoFqYf1G0K4FhChuIY6Iqd0A9yzHkAeDS/w20KHp6xPkh7kX9r/daBRKU8
X-Gm-Gg: AY/fxX6Hooo/xnllTSFRdZVsmB8E2DPNMY31xuQ7uvqpES8AY/jJ8Rio2OmtE6G3Ynq
	vMPTT7/viJSAdQHd2DhnAIfLkBh+NEM3k9uezLa0VRP1RtWzi8ZeajK51/2H5ZH5Gco9569qPx1
	zMCyZztWZmRvFuQ00xmGS1tAJqsLNkMsrHrFlmlNNjJfzt4YltQASE+ylRs79plzTMZ6Pd4gIkB
	g4o+qdbRPVkSezE1i5BIoXryjU4CuM0WhF8InkWjKwfPGJ2CStqHZOpigESU7Hm0DVWMOFj8MOK
	RNzq/0xsYMvyTfM8YW7DzomZ2MCtNzlJijjsnl77JA9PdEptpt845R/DA0lvPFDZdBeC6cOl6pf
	pWl6OGwfyqVvwJ7BVcuMokduS33Af0PQYw5N3oMQ7e0TojgoHR8kn4MRSuMSF5+rJCFOhPe0F/k
	Cv9hRDrbOm9ugKHxa3b3rihlFjD+VrzQ1raTykKI5Dog3h1r0jkdtv2cm1Kkc=
X-Google-Smtp-Source: AGHT+IH5wVo/BYSr3Y3E8nJZjekWhk8hXwoBUT9fT+GEN46IECT6pTdt7gU+Z1WtgAcUFyuaCNAf2A==
X-Received: by 2002:a05:6102:3f09:b0:5e4:b844:24e8 with SMTP id ada2fe7eead31-5eb1a838090mr3983024137.42.1766486457010;
        Tue, 23 Dec 2025 02:40:57 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1ac94ed0sm4205023137.14.2025.12.23.02.40.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 02:40:56 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5e1fde1f014so1427915137.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:40:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVBNtHirdIeFxQOWyzLeZ3GZ2OUqOKuXdai8AhNKJ6QXpYLBlPZA0ULaxUdp6sASh4+UcrlKo0cxiFA@vger.kernel.org
X-Received: by 2002:a05:6102:2c83:b0:5db:cba0:941 with SMTP id
 ada2fe7eead31-5eb1a833fdamr4565375137.38.1766486456463; Tue, 23 Dec 2025
 02:40:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251209091115.8541-1-ovidiu.panait.rb@renesas.com> <20251209091115.8541-3-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251209091115.8541-3-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 11:40:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUqntcjKsJN=-hiVcXfan5Ps6bBjknQ3aYbc8+z7+1eRA@mail.gmail.com>
X-Gm-Features: AQt7F2r-712B74ouLs8f-R2peKEALS9-alhfFATxSjlyRwz2ItMteJAgsFd78_E
Message-ID: <CAMuHMdUqntcjKsJN=-hiVcXfan5Ps6bBjknQ3aYbc8+z7+1eRA@mail.gmail.com>
Subject: Re: [PATCH 2/3] clk: renesas: r9a09g056: Add clock and reset entries
 for TSU
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: john.madieu.xa@bp.renesas.com, rafael@kernel.org, 
	daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Dec 2025 at 10:11, Ovidiu Panait <ovidiu.panait.rb@renesas.com> wrote:
> Add module clock and reset entries for the TSU0 and TSU1 blocks on the
> Renesas RZ/V2N (R9A09G056) SoC.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.20.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

