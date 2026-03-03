Return-Path: <devicetree+bounces-270513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PvqBWripmlAYgAAu9opvQ
	(envelope-from <devicetree+bounces-270513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:30:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEEF1F040C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22552303A5FF
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 860E12248A3;
	Tue,  3 Mar 2026 13:30:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4450921C16A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772544613; cv=none; b=NUAy4gtnX/V3UIpL9JrTxtGmcQ3PNlk6hG2d1K2jog2iCgLTvDHmu05mqdmdW0rimGt32+th1xLUV19zlEUJma2XTg3cOZ9rjLRIXfS5Ii3uBAUxW3bUhGpPci6K1h9IJW53mAQXVId4VThhh9qIiCCjXxWtTdgkMOXFqpJRZKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772544613; c=relaxed/simple;
	bh=237yIWVIGSqP8Nr5OxXm6vlm1rkrjBql5SlE9/8gnlg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GnkPImWWFy6Ehdxh8obk0sJE9QJlvJyGeVcvDZPhqO7GBFiSLXStzFc/UGJOL4GQU5Ny8zBzQIz7YiNu+1oRbF0e3lZ5zMN9YR8Blw0QEzgqO5rsYGOlHg+sIyz/QVsHrD3wbHiXanc/GGqqW3nGMAxeyhEldi81Ttv0ZRTITFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5688b639a19so2663615e0c.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:30:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772544611; x=1773149411;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VAwQLMiHJNmA+WgXHi1U8N28xuUzy6H6o/lizldAOqQ=;
        b=sIq//jPmR1m/d7mNuFA/9VbbDWvGH8QWoK7/Gwo+JX2rssCDDqZXNB+rYql6qeyMCT
         eem/gNfyQL0z9tz+kijKv6KI4Z3xE3gL4wdVLRpfAABupv2gfJK1x0Zc9YrDEe2Thw+d
         DEQf1miPsbIc/xirCdPnbLXYIhyzHWu9MlnoL7LLMzdGWUCIg29a5xxTsHdoU92IQ+p1
         wZbutd9Fp0BW/ls4UZahvsB9d8hv4d/Dk4nPAFpgwlJv9In4GntoX8lxDogLtGuIGGyE
         DcptCMUaKvUtKpZK1yky6m7L1cvf+4+x624v/7rMoxudTMD2YMBYlI9NaGhICjjq354b
         Ohgw==
X-Forwarded-Encrypted: i=1; AJvYcCUa863p6i7JK5prMIKD6+Cy7YnQYZnYtWyGU7xxcTzqGBtGhQUF08KuZnK5CksTEPd+U00TuhuKt3Zy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0oF2BvsHFwMSMS4KMmJ88evoJTk+epTDsL1kEoXKifHqYJ9IF
	bkfCLUkyJv0FtnMWWNfpTLtfisbkb2wNewQvoADXSZJzqjJXuWmtErcW94xhpSD0
X-Gm-Gg: ATEYQzyVuLeoSWxKH6MURn3Y7QRur9xBDwGejajBnB8l3q77dQzUYbGZB5/jGB2cMsr
	WL5Xs5gyhh1Ra1G9IkVQP244LrK1nUeqeThx76D64cT4wjV6bTVSdcLIRIX7vyWCibsF4mbcV6l
	1vgLUX6EDAOzxAj3vPlX+nFd5kmjwrCKc2BnOj+eKmtQRwrGskqH/OQc+JjX4MZRIQ07f31TdLL
	DOsWh1sQ1k/sm0Yh5YbTgZdM2SxBaM8taNeBoNZ8PjhzXdkr9Mflzk18w60wXegPtFe3GuMhCU9
	XQlUos1ySlr9ebmxiu5g14/+jaEnpti5fuGWQRXjjmr/A1py1+b5aZmzWDWV38dN+2++Mo61U6q
	JTVOAIkvcu2mOn6jaCH/8HyV5U+/WUdL0Xlh2JdvwXVN4XrBcKGHI5O10bibxsCbodCUB4iiUrs
	7vICLZbNj03MXcKFplcGkB0J8Oq3SnFauxLpbTIGVF3aFZ7ZrCri1aZA3gKmWqtNsxQIt+ClU=
X-Received: by 2002:a05:6122:4210:b0:559:65d6:1674 with SMTP id 71dfb90a1353d-56aa0a9ca92mr6020071e0c.14.1772544611118;
        Tue, 03 Mar 2026 05:30:11 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bcc3eesm19293868e0c.8.2026.03.03.05.30.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 05:30:10 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5ff14dd9bf8so1492569137.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:30:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXDFgn0IRGxQjDgsq17jZISF+MbCwJdURw3s9ulIWiUPinr65IyCPlSgi7FzWwdzK5x/59/WtiabMfv@vger.kernel.org
X-Received: by 2002:a05:6102:c47:b0:5ec:daec:580e with SMTP id
 ada2fe7eead31-5ff325a1577mr6210023137.36.1772544609268; Tue, 03 Mar 2026
 05:30:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203124247.7320-1-fabrizio.castro.jz@renesas.com> <20260203124247.7320-4-fabrizio.castro.jz@renesas.com>
In-Reply-To: <20260203124247.7320-4-fabrizio.castro.jz@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 14:29:57 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX+X77ydYhvGJUmXqBWE+mOsJA3n+drz-9DOYopUFAW-g@mail.gmail.com>
X-Gm-Features: AaiRm5008H6GA2iSW5UrwIeeY5Wgcg_c3Mk5GG-msQ01mr1Ry27aQjZHaY7c6iY
Message-ID: <CAMuHMdX+X77ydYhvGJUmXqBWE+mOsJA3n+drz-9DOYopUFAW-g@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] clk: renesas: r9a09g057: Remove entries for WDT{0,2,3}
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Rob Herring <robh@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-watchdog@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 6CEEF1F040C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,roeck-us.net,baylibre.com,linux-watchdog.org,gmail.com,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-270513-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.648];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:email,glider.be:email]
X-Rspamd-Action: no action

Hi Fabrizio,

On Tue, 3 Feb 2026 at 13:43, Fabrizio Castro
<fabrizio.castro.jz@renesas.com> wrote:
> The HW user manual for the Renesas RZ/V2H(P) SoC specifies
> that only the WDT1 IP is supposed to be used by Linux,
> while the WDT{0,2,3} IPs are supposed to be used by the CM33
> and CR8 cores.
>
> Remove the clock and reset entries for WDT{0,2,3} to prevent
> interfering with the CM33 and CR8 cores.
>
> This change is harmless as only WDT1 is used by Linux, there
> are no users for the WDT{0,2,3} cores.
>
> Fixes: 3aeccbe08171 ("clk: renesas: r9a09g057: Add clock and reset entries for GTM/RIIC/SDHI/WDT")
> Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk-fixes for v7.0.

Apparently the same applies to RZ/V2N.  Shall I just apply this patch
to drivers/clk/renesas/r9a09g056-cpg.c, too, with the SoC name
and part number updated, and

    Fixes: e018f9f8973760fa ("clk: renesas: r9a09g056: Add clock and
reset entries for WDT controllers")

?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

