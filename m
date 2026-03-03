Return-Path: <devicetree+bounces-270512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI4ADHTkpmlkZAAAu9opvQ
	(envelope-from <devicetree+bounces-270512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:39:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF0D1F0684
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71B943103FCF
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C9942DFF7;
	Tue,  3 Mar 2026 13:28:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6D0423A9A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772544526; cv=none; b=JY8ObQLVHWUdsh3G6jRb1aZ2s53V+KBiSUdEs2Em9iVaROGkOeNcIxpsCPMPi02YYS1QUi6yleWwlCReCAXOQj5Ki5Ri9UhpZhWO86j2IuQdaQkJb+l/xVyf6FURJ4/jHXjlv1nZSppOrS6Z3670o45E0Db4AYWDyslIu41aQDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772544526; c=relaxed/simple;
	bh=0Mx80CC1QWM3bvGMYo64nUaV/drH9YWwIQYt8dBOlnc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bLhXbrVGIU8fmdpk3RItmkorgUN+aPwDMLWlTAM6SSI//UcG2vtzCt+taHSbUmEiIDYiRREra29RN+63NAbjEPccQFkTslFbepRNDaAJs+JqgTTe1dtXDiDBrdlEtfqcwwyCthvF1C20WFMLc8glsWeBlUky2d6kQbMg6Xw7tCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-5688b639a19so2662825e0c.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:28:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772544524; x=1773149324;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDxJiIrxQC92hbeNlNOe8Nj98YN/DDHhyxVEaLyss1E=;
        b=rIf3Y+kG5/PatP66DJIJ5ZetDW3nnvraAODZtQqpbtjYP/l9gwDliEyqy8K/6v/DQe
         ZTt83KVhzrUBK0FV4+RBiAi1ainqmueahNmk/6TB+fQwpTgoriL9mBrpagqKobcSp9Ts
         mccHYQ20mGRWaWQGeOjdgkEbOiH3H0CgAGzWuI2WfnrczJNw3DUJq/wuj0+QEle39DsE
         WUJ9c0e7wmZKwaxBR4ascEu2mSIkjgO69QeT3RdIGLJCZ4wzOgRokirWi0n1ZaNdEmUC
         /hJ73wDoaPivh+a08gUirkPdQx3kZkxT0hdK0gg/Y1WaG4jYrYykYo7NnjjWAQ68sqUu
         d6iQ==
X-Forwarded-Encrypted: i=1; AJvYcCWehWxYCtQ/37orKU6ovQHV4s3q9PnI1FtVC3LcjoFTnlCE5u69L7Xb6C0Wq9fox8pKAEWlY2fWQ49P@vger.kernel.org
X-Gm-Message-State: AOJu0YynYEzN8+P2GfN3mlJ/9pXv8E+/nIladg5yAtV01Yo22TGsUEnt
	ZkFCwj1AzUtnu/q+L7WgIaj2m66GEtAHWNzIh9O68hpHwgLF9LEjCBPUQpIlg3FI
X-Gm-Gg: ATEYQzy83RkwjuF+qy9+Gvqc+8Gp2gkw3dYOSgypZNc7kGs0t1llzhV6UiWANvNRP7k
	wxFjsDmBLttxiZCk5IoqADK+5lJffe3qQ8PL5trPRQQmrbW9Ehs1aa0g7IjuCftCByWVQZnY5bY
	UEj+v3oZc0aI1PYvTJX2nYvfuwzIZU8C/nUqnzUQeMD6FoSkXs1EMcirgJztHonN2Um+9mTRAVs
	WqJG8lEIQWh49bEz8Bx3/aCQ0HBTHNF7rsIyxHAFu5nt0aqWu4moZ3U2arZ8FKDZropgHmKqK+Y
	bB0jraV1fLDDUszBdcZYQ+K4wv33Zg06WtybTykPNC2Z3fkM1iyPqeWVzC+J+3so63v/z4nRJAq
	Tkdzh/xD5PNLzFjZOF5cSP5HFTn1j8JBgYDto/k5xMBmbhzP/9AEpuSskuAqCYQpQN9eWi5awYU
	22ZESbH74PYY16FV0ziyLHRvanJXrHzCcFivjrEpl+1BIfzYtGoUYWZhApx/d96wjT1VMsd68=
X-Received: by 2002:a05:6123:51:b0:55f:c318:1afa with SMTP id 71dfb90a1353d-56aa0a17572mr6193621e0c.6.1772544524557;
        Tue, 03 Mar 2026 05:28:44 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91b8c7a8sm20186732e0c.4.2026.03.03.05.28.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 05:28:42 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5ff05af29b4so1952123137.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:28:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXmwL2CcrraWSATOZTre7c3ehgArHTC2cigs6uW4gb+/yrIfrGgqHvmEUEyXNEQQ1jBPXFMTiQwPsyb@vger.kernel.org
X-Received: by 2002:a05:6102:f0a:b0:5fd:f14d:4cd6 with SMTP id
 ada2fe7eead31-5ff3254b2bdmr6188901137.27.1772544521227; Tue, 03 Mar 2026
 05:28:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203124247.7320-1-fabrizio.castro.jz@renesas.com> <20260203124247.7320-3-fabrizio.castro.jz@renesas.com>
In-Reply-To: <20260203124247.7320-3-fabrizio.castro.jz@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 14:28:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW9F48wTrhJRM-w_+4deEzJxOkGR6WttLmTmMy9DT1Dtw@mail.gmail.com>
X-Gm-Features: AaiRm53fCUjLUZ6px0BRfJJuPYdPSrAIEkOdRkY6q1dq85dF6GGqE9pEydHG_cc
Message-ID: <CAMuHMdW9F48wTrhJRM-w_+4deEzJxOkGR6WttLmTmMy9DT1Dtw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: renesas: r9a09g057: Remove wdt{0,2,3} nodes
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Rob Herring <robh@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-watchdog@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 9BF0D1F0684
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,roeck-us.net,baylibre.com,linux-watchdog.org,glider.be,gmail.com,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-270512-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.662];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,renesas.com:email,glider.be:email,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Fabrizio,

On Tue, 3 Feb 2026 at 13:43, Fabrizio Castro
<fabrizio.castro.jz@renesas.com> wrote:
> The HW user manual for the Renesas RZ/V2H(P) SoC (a.k.a r9a09g057)
> states that only WDT1 is supposed to be accessed by the CA55 cores.
> WDT0 is supposed to be used by the CM33 core, WDT2 is supposed
> to be used by the CR8 core 0, and WDT3 is supposed to be used
> by the CR8 core 1.
>
> Remove wdt{0,2,3} from the SoC specific device tree to make it
> compliant with the specification from the HW manual.
>
> This change is harmless as there are currently no users of the
> wdt{0,2,3} device tree nodes, only the wdt1 node is actually used.
>
> Fixes: 095105496e7d ("arm64: dts: renesas: r9a09g057: Add WDT0-WDT3 nodes")
> Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-fixes for v7.0.

Apparently the same applies to RZ/V2N.  Shall I just apply this patch
to arch/arm64/boot/dts/renesas/r9a09g056.dtsi, too, with the SoC name
and part numbers updated, and

    Fixes: 7db958983c8dd14d ("arm64: dts: renesas: r9a09g056: Add
WDT0-WDT3 nodes")

?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

