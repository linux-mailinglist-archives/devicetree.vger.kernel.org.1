Return-Path: <devicetree+bounces-318721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2hDeKiUrRWqW8AoAu9opvQ
	(envelope-from <devicetree+bounces-318721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:58:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC476EF0D6
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:58:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318721-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318721-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2A243191C7D
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A6C35E952;
	Wed,  1 Jul 2026 14:48:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B7E35E1C9
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 14:48:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782917290; cv=none; b=kQV0DbqnidYdbqIytCqpkA9f9/Wex+vpiaka/uAs19X2M5CtMlO7Lz630Ao90dXj3iGpIImMa8V9djyFLToYK2f3427LJh2Jnz0fBwW5S87vsvMj1N5l/m6tMToClX0A5tRix4y2yexcGIfGjuXf12Ro6e/HxolUCFE1WcuZzr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782917290; c=relaxed/simple;
	bh=mbYj/DgxQsH01Bs5jx6IuDvkCh8mMCApKMcE8PUQ/Qo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GKcjFYg3rCdF3Simk/Tcrzq1eeW7+kiF3y0FinoOx9ykPJP6YochWL3egoI6GWbpto6tymrNpMPxl++uawPx2Rp1iMao97X9QNlBrnoQ9/WIymniWZLba6bVBBoiqxOTrsSedpnLlhYMx07tC8FXPPIrP+IGEeMxnUukDb4Nwtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-966d7738c3bso413905241.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 07:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782917288; x=1783522088;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=fn5x9jVdVZoiN333nyZT+iD2lKvbWjTH6VHWdCyr2L4=;
        b=snqY6o2Hya7lLzhcNza95gru6mrIGKQhQyKcZjd1apMO3xV6n9hZqsocDO8J7PCzNd
         OAoKNsn8uGMcp4cJSeVz1wa5YUj7Xa1N1Mulq79DwB9EcaIzpK/C1hu6AU2/C97ybc5v
         p75N/4q7x5OTLANXB5fYErlH5ssyFBGEyR+oKTeESOMCDYhFlM/O9J2pkUBON4vS3krz
         +DeEHIYJcREUDeG51dPU5GCaP3Wq0SpQ3SMvkEtPXXuA4dS9C26z6lSH9DKJ0JuZic55
         pk9/dAUxgiSwjdLlkONmF1QVBP11UVbDd7aRtqUEuAXo4TZIKjLkhZXSIAvwobQHZIWj
         jV9Q==
X-Forwarded-Encrypted: i=1; AHgh+Ro27RAIQdR0Yu6K+pkupA8+UkqYP9enoy54i1WuibEFGArrl//o711n2h491bYdV9mFgzCi8gmxLHjb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2bN34kuV7pr5XgwAcZ9IfXrrXkLUstZZ5jVJSuuXW/zy5ygwh
	4MHe3FHAh/22bDb8hr4Ha3FrRUWWEkziSZvW7nrUe5rpH8Z7tYQaJ6m8yTX4bJ39A7c=
X-Gm-Gg: AfdE7cm2xaKCkPQLb5LjqCrO1d2BQtixN5TrDeooj8IBuaGX1at6DjK5XrXshil3I7j
	Moh6L2LGX+V53n2HlEFHzM/p4knF/8TRLLuR83crBua6AtV4GTio451FdNoAjB1Ma97c4oobNEi
	VtHYLTuey8WzLYsMs7eFSuf7+fLTHkYS2v7kzNYa4++ws2L8pFMygoKzR7ki0pp7jJk79NqSofv
	2hJoJZmNHYNs2Ykn9XnMYjUJViDL+K16oL+SpzWrfRreluvYzCF4oRpAB9W0veeeaGG1/m3gc47
	jJTsLEEc0CWmZ0bW3j9w1jlsP8ziEp2kOsGiXoWkBPb+gcXTUB8YA0kvSIOO/pWqTFU4t3FuNCo
	UlA7dWbDKvhRCYM+pYs10sj+fDpu5B1VfbLLYROr5/31zpsj8+yPHUkkQln/E5/OAE9E5tDXIOe
	MzA9ai60X3+fmeLmIzjc13VGUM4GfvdVHPi9RiumsAZdFXOE0D5Q==
X-Received: by 2002:a05:6102:4191:b0:737:d2e8:d64b with SMTP id ada2fe7eead31-73dbfaac828mr629755137.20.1782917287948;
        Wed, 01 Jul 2026 07:48:07 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96965e91cb7sm2525856241.4.2026.07.01.07.48.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 07:48:07 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-96387efc30aso382888241.3
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 07:48:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpBAo3hgj/zDLD8lWhhhyn6TZw+rfTxUyY+Hl7hAIoV9UOyNG2nfBHJXkwP0rBYz+O3+bgIvXo/nEMd@vger.kernel.org
X-Received: by 2002:a05:6102:4414:b0:739:4fa1:50aa with SMTP id
 ada2fe7eead31-73dbf3a292dmr614675137.14.1782917287445; Wed, 01 Jul 2026
 07:48:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260602204707.1920839-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260602204707.1920839-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260602204707.1920839-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 1 Jul 2026 16:47:55 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUCzxRRK8oZvHmHFHCUN2v_kn69_8pzCVrW9RPk9FRA0Q@mail.gmail.com>
X-Gm-Features: AVVi8CcnXjaDrB2t_UaCpLhZ82qgKt5I5D4N9jNEZBN_xFIuCBoqVp036vPforE
Message-ID: <CAMuHMdUCzxRRK8oZvHmHFHCUN2v_kn69_8pzCVrW9RPk9FRA0Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Enable PCIe
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-318721-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0AC476EF0D6

Hi Prabhakar,

On Tue, 2 Jun 2026 at 22:47, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable the PCIE1 slot which is connected to PCIe0 channel.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts

> @@ -430,6 +442,12 @@ i2c8_pins: i2c8 {
>                          <RZV2H_PORT_PINMUX(0, 7, 1)>; /* I2C8_SCL */
>         };
>
> +       pcie0_pins: pcie {

pcie0

> +               pins = "PCIE0_RSTOUTB";
> +               slew-rate = <0>;
> +               renesas,output-impedance = <2>;
> +       };
> +
>         scif_pins: scif {
>                 pins = "SCIF_TXD", "SCIF_RXD";
>                 renesas,output-impedance = <1>;

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

