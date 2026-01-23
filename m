Return-Path: <devicetree+bounces-258932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +j5fAYNrc2mnvgAAu9opvQ
	(envelope-from <devicetree+bounces-258932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:37:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD7975E7E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DD813023536
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F8A29993E;
	Fri, 23 Jan 2026 12:37:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com [209.85.217.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4171C8834
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 12:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769171840; cv=none; b=P1IN496emZc4oLRYX17j0iwygO4R7YjWR0kLOSqyN31NlQ/rwxwgpaXsUDLsqY5E+y2r9dDjOR3z8BYGm7up69XlHVP9EznKW2Tm6+3Mi+s47bW0flO3s8DNnAmFZeq3d+tLUI4UIJuFvv/67pOx6JUgBf1Oi59MObS3tbZ8nVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769171840; c=relaxed/simple;
	bh=yBUtN/MAAzfyVYJKr1rkjdhxNB/HNAj/eFc+Ll5mxD8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MX5U1VKl7bNF082NE1grC28OORIuFY08wjNF4gJFJBRKH4BzNyO1FWFpRMmLCCqjyYCGxcEApUDrAlrItqXkqYf/ptD2MmuvSj5X7LP2rGtRDaPcpSxc+zxOldYB7ieBriNKeIP+TS9B5MQ4d5F5zjyFPFtZehZ26x6/uf9cbmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f66.google.com with SMTP id ada2fe7eead31-5f178c83a3dso653502137.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 04:37:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769171838; x=1769776638;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q38jzkPx1g60SamYoKJC73aUm2LWWuKa/1fao66YJYU=;
        b=KLFQbC/rr/oCp5OeMsITuKwEeuat3Wa1L76iiFO1vJD+xToWTHZHO7LHfEbkdgUEHN
         wvQ/7Pis9rYancbfZGXZ72PngBOatash6xQekklsMEZYeuyBi2xcnFOaYYnr0CMjq3uV
         oA5q/24Jtw2PiOIsF03BOpPEG9k8e10+Sa8OXJzRNsZIkqT5l+VtqsiTIA6Yv473fEVp
         eFRlpq/JwH2H9ZcxFaS2k/QbcDVsZOWDWkqHWfxUch3GSuTVvNae7Xfb0UzOeiXEO0pQ
         j44T1LyLdgwee0Gjg2CfewGUWTonJZWJkJXaKDZPHlqgRs2XVFcDUu/kOfr0IdLfmC5s
         8ikA==
X-Forwarded-Encrypted: i=1; AJvYcCVgptzgZ1XdyFFnD4gtWBJ6QOi/MMDDl7iVlE54UhYLv5Nw3kYPK74Uk+1grQdfRwynu+C3nOaj4LRd@vger.kernel.org
X-Gm-Message-State: AOJu0YzK4soWQIgE/iSia+/0x0s2uw0mYOw8AhTUg+hthvFlBDjqgKUf
	IWzVjHSTmtQak6w082cZYWyjzkY7k0rPYrkwW9PjZdLvDOy5gFwGh6a5GKVMpH3jD9A=
X-Gm-Gg: AZuq6aJfQoF04v+5x44lmJe5HVbXIz/1h3K2xT4ixNQiBfJIpF0s0R5rA7Hfv26HAED
	i52zal4rwZM/cV7D20OSDO+eZzGSE7YDm16x9P9xyHxueQVoY98DLO0sa69fJBMSGUgmXAZwc8p
	9KG/d5judVqcNVIgOPFWEWMGQB4qNl+GJM7TDPbIKLjgJe4jdFJIyB50CelI1bdgEBmUtp0lhB6
	txFRU1ow/ZxHdifB2QnlWkXJa0Ulif8POAUG3pat5SI6+2Wa5ThcJIHvJ14NLf1Kb7RgcjqL/aG
	1RMCf5umX/gX7XebsVJA0zj8SNd6qGwavnOGrnb7dbgSuCb2JOwRly6+r04xLGLr3mOepZYWHYF
	KAXI79Ffvk/7F9YeHtxACdWgBWjeBMzYy4FfFqmRHJs+uDYPZjJ5i1ZOLP4wwngx+tXHQCZvNAh
	rAQw1JyxUVJsISMn3Pd11ZTi5RXkhGa3WU4ZkEO0FiV4+DtW0O
X-Received: by 2002:a05:6102:390c:b0:5ec:daec:580e with SMTP id ada2fe7eead31-5f54bcec5e6mr804833137.36.1769171838282;
        Fri, 23 Jan 2026 04:37:18 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9482e321450sm451742241.7.2026.01.23.04.37.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 04:37:17 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5f178c83a3dso653495137.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 04:37:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUObPPf0jhki08amirSpqcMxiLBTTY8+TZV8tKF6U89i0ygwx4uQsQgojjlvE1sTpft3X6rKbxdvxjT@vger.kernel.org
X-Received: by 2002:a05:6102:943:b0:5de:db29:5c07 with SMTP id
 ada2fe7eead31-5f54bb837a7mr778264137.19.1769171836999; Fri, 23 Jan 2026
 04:37:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112234642.225993-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260112234642.225993-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 13:37:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXEVbpMS3WHeKM+0ceBe6kL4=n+Cqvx5cMqru8wtBitkQ@mail.gmail.com>
X-Gm-Features: AZwV_Qiqc9hwYXhdCgYeyWKGptEN-lT8NQP_8jN-_ExihaOm9H0gRxTpdmQNyzc
Message-ID: <CAMuHMdXEVbpMS3WHeKM+0ceBe6kL4=n+Cqvx5cMqru8wtBitkQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: sparrow-hawk: Mark OTP and HSCIF0
 pins as bootph-all
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-258932-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,glider.be:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 5FD7975E7E
X-Rspamd-Action: no action

On Tue, 13 Jan 2026 at 00:46, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> The U-Boot SPL is responsible for initializing the hardware and it does
> also initialize HSCIF0 and its pinmux, mark the HSCIF0 pinmux as needed
> in all bootloader stages. The SPL also uses OTP to determine the exact
> V4H SoC variant during DRAM initialization, to determine which is the
> maximum allowed DRAM rate, mark OTP as required in all bootloader stages
> as well.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

