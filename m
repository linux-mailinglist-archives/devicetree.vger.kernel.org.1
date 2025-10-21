Return-Path: <devicetree+bounces-229384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED9FBF6D0F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DDF3F1885A94
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B8D33891E;
	Tue, 21 Oct 2025 13:35:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88E2328B5A
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761053728; cv=none; b=qFe4sNh6oaoOrPAwyrWiCUxjRUCcl6E5N8wCdt0AOzUtDvN8vDZ0tuN+zu+jaAIcAeR3mVnPba7/R/evfjW5GuzSfH18tTReNKgGdqiLh3EOWtnxzHS6PzU+mtgNkDBTYaxTEzhmc3pApDEFrTFszTQlbL59fpeqpgxCnPclWwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761053728; c=relaxed/simple;
	bh=gnF9AkJgPkgv+c5e70+0S/TuXUz2qGPWDAKnDZ2oFUs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ATYDpU2I11Wbpv0AqmRKnYh9FPjFdKW5Y1Tw78+4w/PuFvcMrn68GPYBrScMY+4h0eBNLDz04URB5iStMKp1gJQRHoqKQAHJcEYrz4n/1p6gPwx6pBQd2Br6ulUJVQhE3RQ/qdwAG8FJaBIs++KyNq20AON4kwZPeULBThRUL6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5d6266f1a33so2481277137.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:35:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761053725; x=1761658525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2TkKqx+vxrv5wCaSsuSiP+PuBVA5+FMh9B80POq+sr0=;
        b=WFzHvn/a/5bXCbUUoTKn1h1VInybJh0BNltPnfywQ0XuQBnEt4p5jcjBkRRZr/W20p
         OrUwBBb5x35KmC7rqUrNOvvksWWkdLkWBV3PWLEgk+ajBQXwRmUSU6j9FyxCdOx2hpjG
         YOYMrW6/ZWlYXnxjRClXVQQXxwcmzPkOG+Upwe0aL6YAoxnZVj1JvjngxRppcJuOMu1c
         gNOm33fLDkYDlW1p0JHluag65WOkzYDUcEYBjDMtwQWEIbdAU8fCuB5ShISgU1xkM/Jr
         OmAkTazY1eIC+8xrsrtr58bAA5eLH47TQ4eGaeBENluzy1FBbwsJGlnbI4ZTeQK38J2O
         tTPA==
X-Forwarded-Encrypted: i=1; AJvYcCXbb89sfarPecFJAuY6HgNy/dRALlk+dx9yBEhQmEUo6tpIwQc9WDXvUtuAE2kvu1PuJ4phanLhr1Wd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7yF5otb1xyR4D77kQ1bggQlN32yQW0x+kDpirwijM/ZNwA3nd
	zq66zfxt8+LuacBiukHYrFpmZ0UIr0XGqZ7uxm+uerFFmEy1aCtXFlDUuxTHTXEQ
X-Gm-Gg: ASbGncvnGZDlFisc8cMe/sOosUtUmf0FQB6BRGgbu69ZjPv6M03KO9p6IXjAbPQcgnn
	hfbV55fj77ppP6rl6NNGNtPlfGWpx5BtAhHYdHXQagc7ikfwwSXeR6Uo/oNuh8BYduzp0xtw1T9
	vYa9Sszp7ftiCuvdFfHf0v2EMl/1kFUBvw8WLpMCs9Bz7GGyRVQqFp7A2X/2rPvAmh17ydNtCIH
	lIE9ZCpCqp6fZ66EEeTpEF4BGvKQzZoWHpe7rMDlG/C1XSCNbILLAI/60BwroIS5hzCYGxG3M/I
	HqdetRo/VmeMozs/JQ2xXB2+LTn/DCG0G6I5E+U9MQHsX8+MYLDM50WHqA/UgcTKpJfrpnX6LMq
	n6zOj1h037MwD2iivAp6XeqHjgxXZKZ8JH8XO19KZj6Ljkbx4PpUsNQll0vi7yzrJfczKmjf/8K
	yafEftOSQPG60Yl55D5Fh3TDYnYolsszHLmAMFCzPZS+urqypv
X-Google-Smtp-Source: AGHT+IEbDluidQsytz4y8WFKFSP3DBoeQHP+wHP1u8DiXkuiKrvImZBClLqo/EJwE0ezBRAu/LPyxA==
X-Received: by 2002:a05:6102:3255:10b0:5d7:dddb:3e5d with SMTP id ada2fe7eead31-5d7dddb3e88mr3816868137.0.1761053725467;
        Tue, 21 Oct 2025 06:35:25 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-932c3e32d5dsm3405055241.10.2025.10.21.06.35.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 06:35:24 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5d980e08e06so1105819137.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:35:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX7ndASzPqCzLtDNVcCnUoKim6yics9Cx3BvHBtz/iXlJf5QrcoqgHCcRiu4BMuvEkBwbUv+aTdN/+e@vger.kernel.org
X-Received: by 2002:a05:6102:390a:b0:5d5:f6ae:38de with SMTP id
 ada2fe7eead31-5d7dd6ba33emr4614068137.41.1761053723732; Tue, 21 Oct 2025
 06:35:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021080705.18116-1-ovidiu.panait.rb@renesas.com> <20251021080705.18116-2-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251021080705.18116-2-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 15:35:10 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU+=c-HseXicppm+185qq3fcc7=qq3Nu4LjoKZuYF0d-A@mail.gmail.com>
X-Gm-Features: AS18NWDE7aRGEcmYizQFJmtQta7msQIG0JXTbcDHGFqFLxinOoGCd4ViST3rwwc
Message-ID: <CAMuHMdU+=c-HseXicppm+185qq3fcc7=qq3Nu4LjoKZuYF0d-A@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] clk: renesas: r9a09g057: Add clock and reset
 entries for RTC
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	p.zabel@pengutronix.de, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 Oct 2025 at 10:07, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> Add module clock and reset entries for the RTC module on the Renesas RZ/V2H
> (R9A09G057) SoC.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

