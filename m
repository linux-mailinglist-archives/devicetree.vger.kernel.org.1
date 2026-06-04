Return-Path: <devicetree+bounces-306830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YNKEBEN3IWrRGwEAu9opvQ
	(envelope-from <devicetree+bounces-306830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 15:01:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D23164023A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 15:01:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306830-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306830-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE4E3306F512
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 12:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 113C547884B;
	Thu,  4 Jun 2026 12:52:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76C746AEFB
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 12:52:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780577571; cv=none; b=ORz1cjLu/E/RuxqDp0nSLyGF92t5QeEnR00SR5uTFhv73KQlSDkQUO5EiZIMXdXwwPFS9lf5I+dbK5Xo+wSgNjSmsFdfxSJieIOMmX8otVKc9LAHetFgjHsgYkzm93PBtbO/sKwB9NMTP8htyWFd+QKvVzEYICEMP/wJ0uz9Ljs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780577571; c=relaxed/simple;
	bh=F0H/JIu6WwpY+LO191dCAhs5J7RgdWFdFx8hx4gjIq0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cSTkPXK86qzjoYfLb49v/me/lAlq1p4yvEIU6l+TqgWBO+uguwBInnJWgKsBGRssU9IZSubVcmHKh4JAq/cBf3hVbM3ZtHAdL/+NSAtPeeDlC4EG7uOXn61zusIq1inxN6SF9hGRAosKUyyXQZDzf6xbPvrM9P9jdkdvMUo7OKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.54
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-963b8b4382dso530914241.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:52:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780577569; x=1781182369;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wr/oQEZrL0uaIXTGgTvdG9moKLTIwXi/eGUwIMlITgs=;
        b=Xx25xURK2hhgHeHJHSt4bWhtM1vmr8/+WM4VVUP0Y+rVhbeS9/YbuTujOsGzUwIBJs
         Z81zCssRX7Op1Y4T7v65shgILWLwFjdXAwwgJBJU8P8CI64FEP9ji2c1wEa1eGirXcC2
         Yw/5vluusTZKcVqDZFHpMaDzQWUqOw8gW/Zuawx2MsUyZqCQw8l4mS2t4LI6Nkr+w+34
         8UnbzEYhOveIVthGWChJaDSa0CBIsko+CnfYIRA1NEOzLnV+kiT216Zs6DkuwVHy5qnR
         fyFUWNEQosp0vJV8V/9J0YWfhGaRLDaDtQ9DBYUKiivSeuf00WNJoKSzzfZ5j0w9BbSO
         3N6w==
X-Forwarded-Encrypted: i=1; AFNElJ+b4Kd/9iyj8zc8FjHUj3nCXGJq3YNCVco1W6YcjNPK1/lxnWC/riBPHJxQW/KYeROvG9TvsWRuWu6y@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/Pk7cOBSRuoJ/AyrUecYCHFK+VZahJFkL2PlM0OEnwTSUNtUu
	ikOG/FziVJtu+XiPaxn9g/CnqgFEmX+OQSqSl0nFxq1MaSvkC2vxX+8uY6nFYCYKLzc=
X-Gm-Gg: Acq92OGMLGkSrTy34Af9VqTfl7UTgQ3Bnldxd3YwtnM94x7Do8/WmXl8blQbsm3a5PI
	7aHSoJ57dN2AcH1jqvLwiHVX1ykCVA1RVgEaK/5YZnwG+hNOOfCsIXkaC9ZHZ7SGjo8I5mI5hVT
	VRwm9lyVJQ5Zb8FTlxx8cpZUT7z/CWfNH4zrbZBWT9oFmW3HrdsLJ8NlYIFB1k1u/gB7tPR9Noz
	Da2TKGUvXmz0y3Su6aSLoVKwPPzNja2oMe91juNlga8BaiLjMmvMCwSRXvILdNZepnUaNnX1SVL
	ZW64ckkbmyKhiTLdYdhnw7zKABNGigMmXbMe0XY3YAO00InaAzrNtyiwkZ9nQUrUmM7f/FTFGqv
	PC4s9xvFPUAiGbNrbXOgnUUhn1rFs3IJsCNID/QRA/xWqJaQ+uZ94LZMr35fkxWM/ZZOmS0Rn2V
	iF9UYwnPQyBYcL4op+JsLk+LkU+d+/XTx+0ptkhqIFPiWRIVxdrqeWjgk2eIs1r6H7OlbiQMU=
X-Received: by 2002:a05:6102:290b:b0:633:c6c4:b32c with SMTP id ada2fe7eead31-6ec45902070mr4637949137.15.1780577568650;
        Thu, 04 Jun 2026 05:52:48 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96414115a93sm4362187241.9.2026.06.04.05.52.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 05:52:47 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-6cb414a5d50so559586137.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:52:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+IhjV4D3O67dQII1vBnkxzZj2AZUkjThVhqOcvc6KQEsZb784eDrsUiWhY9E8GRKu2xxaNl8yrYzpz@vger.kernel.org
X-Received: by 2002:a05:6102:41a8:b0:6d8:f538:f01e with SMTP id
 ada2fe7eead31-6ec49a5f392mr4492688137.24.1780577567222; Thu, 04 Jun 2026
 05:52:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260603143340.162457-1-biju.das.jz@bp.renesas.com> <20260603143340.162457-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260603143340.162457-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jun 2026 14:52:36 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUyuk5ZbRHz71wfBQXYgfM_ho3XCzfCuGTpBKK87fmEmw@mail.gmail.com>
X-Gm-Features: AVVi8CfIPij-f4v2F1TSD8hUDQNK2etj7Jm7kYJCbVCpune6nMN8quSLSlZVSyE
Message-ID: <CAMuHMdUyuk5ZbRHz71wfBQXYgfM_ho3XCzfCuGTpBKK87fmEmw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g047e57-smarc: Drop
 SW_SER0_PMOD condition for rsci4
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-306830-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:biju.das.au@gmail.com,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:biju.das.jz@bp.renesas.com,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:bijudasau@gmail.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RSPAMD_EMAILBL_FAIL(0.00)[geert@linux-m68k.org:query timed out,bijudasau.gmail.com:query timed out];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,glider.be:email,mail.gmail.com:mid,renesas.com:email,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D23164023A

On Wed, 3 Jun 2026 at 16:33, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> rsci4 is routed to either the PMOD connector or the M.2 connector
> depending on the SW_SER0_PMOD switch state. In both cases, rsci4 is
> available for use, so there is no need to guard it with SW_SER0_PMOD.
>
> Drop the SW_SER0_PMOD condition and retain only the SW_LCD_EN check,
> as rsci4 is unavailable only when the LCD is enabled.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.3.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

