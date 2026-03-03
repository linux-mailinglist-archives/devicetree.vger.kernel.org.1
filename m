Return-Path: <devicetree+bounces-270526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELVeHaPnpmnjZAAAu9opvQ
	(envelope-from <devicetree+bounces-270526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:52:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 211591F0C6D
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2003B31419CE
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41FFB23D7E6;
	Tue,  3 Mar 2026 13:45:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3CD2DF144
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772545503; cv=none; b=Umaw0kw7TCPrKfn2yrWnxRlGl2/4ri5T0AxHHAkuuLCx4uCymrR0VNisJgFCFvmAvCFFWMm0CvhQNhpSt7QV5xUfgU0HsMQEdZscFDbVkPqqrA0xm8QPu6S/2fkwAwKMdcRFDJLHJGWsDLK66O8awKZp8Vz0Skxdzsz18O2Bvvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772545503; c=relaxed/simple;
	bh=OZlKTjQLB0WPI61T4DAyImwow6wj/voA0icWw8WR7eg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=unQPp4BAUCKsfFgOe5jD4epYnDqFCs4wszD0vPVxKXSgWMTVSQZKjXExJK5vqy3kucRauBAX0wwAz2Fyyak9femFRW+Y4SxyvMK8prGMRCjN39x95RHEhvPcsm7dMHDacXx0TQKQjVsoFh2kz05RPzooUtOBF8ypd6Evp7yddnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-56a9c5cb48bso1731507e0c.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:44:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772545498; x=1773150298;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHho9gbjcUTzNqYeeRJYxoqkklrdbqzzppf7Ht7TuIk=;
        b=fU43EbXRvPN1Do8ScYWeY5wd/4KPraFbpbgjqe+NHZAzr6bnciN9bCw/Cmsr316eqQ
         LfV5+Se49u6hPijTPXLGP8sf+a3UFCsFl607Pgc9YHAHEuVdzPFtW+zZsjpoFyNh0RuB
         GArw6xYecjNjhnjrN4r3C9JKyB5rQlttCZ45tJETaJOU63iAfy/e8j+J21g5a5maFCdO
         qhjQ3XiGD+kalQ8suNtFHYMswxXuyuFJAZIR8Mg0XFDdPew0xhDgS0/f72UV+Dl7OU9v
         WK4/tQb9TiRc98C/5ynIG82coc01/M/ASwI5q2ulvutSDpeD0KZTBCO/XLkZNwkSABYU
         d2pQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtO8yS7j+36/jblosfuTcnq76B/FEMIxDzN/0OUn//wIpPdOhDxmHP33Y32u+sjfxfvKOKu307TeCe@vger.kernel.org
X-Gm-Message-State: AOJu0YxCDyI6m59J+KoG9MJz9R3E3kYqDclySIftpCSmrdUQuf89yJSf
	yDFCpNbjjQUPSdQFPvDAVavyrjOxxnK/34fWfGEjtf1WEIvEYMcJ8alDO+s4RtFU
X-Gm-Gg: ATEYQzx1EzUfcQc+4AMS7vAexOie+06wSYnumYJTDDLyRc+wZh18yFM/+E2oHFnX8FA
	lveQ+dxIXFIifSVfLvHr7Nc91XseBpbcMg/tKfQ+/wY5hBEvY1jtSIbqr6h6t73WsF1lWg2aM1F
	GP+yL0gngNC7+bJYvB5Nt2B8pU+QvOhUgGSesOIk7QGH8zg4VosvYVY2br/nspHBe1bcKchHFWn
	LFt6CUZ1GhgAHoKhukelH8pV7YlA4hoKB5RK8skAujlwbGBYsyIzH+A7Fp8r2A4VCGB9wfYHdQA
	HlSlaO8wn6JP91C2O2gEvVu9FJ9rT8CY3Oiz2e1yIl/NZ9IQ+BVvrKtuGFXLRoX7nqHOzwMszUv
	9f7+jrh6vuTASUIXZotqqUO9g/ywDyFpAHr4XcmlJuCBsDjr/VOwuXHw14JCOG+/9XFwjkBe04u
	ikqXiP3m9tLzF0gRAu86of+2IdF46Z0c9seuzIjV+JT3NS0DOzXw5oOPwcRAng
X-Received: by 2002:a05:6122:2387:b0:559:6960:bdf9 with SMTP id 71dfb90a1353d-56aa0aa89aemr6501456e0c.16.1772545497977;
        Tue, 03 Mar 2026 05:44:57 -0800 (PST)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ab4aad2ebsm10476180e0c.17.2026.03.03.05.44.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 05:44:57 -0800 (PST)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5ff82ca704aso509856137.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:44:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUDXCGzsEZb4PCvSq66M052cQDN6SpbCHw3Qh7GYu0ST3AxgWbLvTM/a27u8E2kV0yeqDhm6ue1ojay@vger.kernel.org
X-Received: by 2002:a05:6102:c86:b0:5db:3bbf:8e62 with SMTP id
 ada2fe7eead31-5ff322805e3mr5632374137.1.1772545496655; Tue, 03 Mar 2026
 05:44:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260213131742.3606334-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260213131742.3606334-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260213131742.3606334-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 14:44:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUbGe-w5ZB1+PNxx_rwLY-_v5AjsqeHOPuHk1Pg6VJ5sg@mail.gmail.com>
X-Gm-Features: AaiRm52z-qW2A9vW7rtR0TULKyTJgxAT4NduiN7xLAkoAbB3DCf3jv7njgyfHzQ
Message-ID: <CAMuHMdUbGe-w5ZB1+PNxx_rwLY-_v5AjsqeHOPuHk1Pg6VJ5sg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g077: Fix CPG register
 region sizes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 211591F0C6D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-270526-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_SPAM(0.00)[0.503];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, 13 Feb 2026 at 14:18, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The CPG register regions were incorrectly sized. Update them to match
> the actual hardware specification:
> - First region (0x80280000): 0x1000 -> 0x10000 (64KB)
> - Second region (0x81280000): 0x9000 -> 0x10000 (64KB)
>
> Fixes: d17b34744f5e4 ("arm64: dts: renesas: Add initial support for the Renesas RZ/T2H SoC")
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-fixes for v7.0.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

