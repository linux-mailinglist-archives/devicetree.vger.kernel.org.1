Return-Path: <devicetree+bounces-306823-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id McMHJoN0IWrrGgEAu9opvQ
	(envelope-from <devicetree+bounces-306823-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:50:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDA36400D8
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:50:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306823-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306823-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 237783022904
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 12:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122254418EE;
	Thu,  4 Jun 2026 12:43:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D252D3D890F
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 12:43:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780577026; cv=none; b=cQPfVFDUsb/hPCGt59hkAojCxSB2QYf2gMJIqeyMNk4v//jv5KvODpha/fDkPPXeAFVtoVIE8qIYZG5706arZgOr/b0SrtgZvhyU6xfBjBUzzD4oG43juCQN7DwTmXaP/ZIVYeYNTZk8ywd6fjvcw6Hly4fiFQP0eq6yQTaxtXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780577026; c=relaxed/simple;
	bh=9+GSC26KP9x8VFStwlQNXOXJrB+sq+AeP2Y3FBXhgHg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HBR8YfOW8SGDhGHYEJvB8sJfLW+nBe34+uAV/iEwaMEJ5/AwScNEg6JkOynDMbGdFokg8eXJ6/E7NvrQhDNZ5sjJcnCayq6ZWY+DS1MSx0VVPnTYUuDPuBevNv9S+/eFnYQ9YUCVRmJFmXKjMsheRysLxIfHrXe5gva16SdQEpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.52
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-963a7e48493so521144241.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:43:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780577024; x=1781181824;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RwkE2UGx4d0O/VfWYwU5eSId48QfcIZRSOkCnuIrTXw=;
        b=jrxcCQqQsynOT8xHRZkf19KcPAVILY7jXOxhFdiSeOgo3HT5+VJvzGdRRKNr14JlgX
         P+JDc0iWWkpuvM7AK+WGT/cLmZkw2Y6i7DODLh8KH3kYLANFLnCBmluEpGc8vzhCfNYo
         J1lA48jZsNCDA9fQlJrTJd/qI+FWT0PzFYnogZVDWid2kFHPbhnatTGPb99ZeNrEmX75
         4KrInN/5tKhJYXfn3DhVkm/9l5sDfmC1qUTQyk4EqykXvie0Z7RGs+OaGqNGhoxly8H5
         oihsH+4fp947UCbXalf77WfOpwVw8+A7qKHp8tJlxELx+eaIlhD06ngOlhS6H+zkuwtM
         4T8g==
X-Forwarded-Encrypted: i=1; AFNElJ+tafVPe1/Bu7MkKRcQDN18MDzm8YkaQjWTM+GZnbgah/2bn0odtotAE8EN5QOtgpIQu4nEla/LvjlC@vger.kernel.org
X-Gm-Message-State: AOJu0YxStde6ogT9Qlo3U6npivHFFhGTerDrClcxRgAePD6ZXDD9bsZY
	Iy1nNpVbri6prtcpoVyNNeaLr70PNWwcfWIqvewazMosF0drw4XtNTU60ZD7yBLOg/g=
X-Gm-Gg: Acq92OFQ1pQ9X3xTqFTwomEWrfuuQvz/TCjMO3eO3lXiC7NYANeYrKTlsfVeKvty0pL
	N3x3HtgDdc7UNe5csi9K5VAMP3wglNt8KqVDUibEFbXwhor0CUItK++d/KauaWcZzKpUpGAj5g3
	Yz/bfr0GX9jMJ5g1NdSWXbuMNxBFrCGYRqbFeSa6AXp+4hy/TzUcyI+UCqSac2OdilfxssMjg4S
	SiQAIKZTGgQ8ef7EzeX4QP9KkBdY1E22AIFqswf9xqe9MOHC0kEk/jMPUhzUKewYU5lEuDhUHpY
	mDnOvpnBKVDTvYDDxaxyIZxpqdLQPmGDbSQ0Usg1xBNnPiEuhiyHBqmZLXArGBHu3sQ1g4LSMmF
	bY2+mc+oZYzKKjBhTv9zlWXRnJgKUIB2cX0IcM4ijLoIVK4niDPbaUPQ5OaEJqXYG/fhu5gTcN9
	foaJLFZVK5RfSr3svalEOVFzGzx5KdeBPNnyvturMuj5MC9SGrXuRc+4A0MAH1ddIcgItxC94=
X-Received: by 2002:a05:6102:94f:b0:631:ec2d:12b2 with SMTP id ada2fe7eead31-6ec2b17cf54mr5108833137.1.1780577023749;
        Thu, 04 Jun 2026 05:43:43 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-6eb5745d325sm4925084137.4.2026.06.04.05.43.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 05:43:42 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-6c534af2470so462428137.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:43:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ85Z/2kE/DuNVPeaJSYoU3NqT5s+iYtUUanfLEm1wDHqXrS+NPTlBvEwt/31aKcgOKHzsrisRgUJ6M9@vger.kernel.org
X-Received: by 2002:a05:6102:f12:b0:633:c6c4:b321 with SMTP id
 ada2fe7eead31-6ec4710d8d3mr4931144137.18.1780577022139; Thu, 04 Jun 2026
 05:43:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260525110603.4018170-1-john.madieu.xa@bp.renesas.com> <20260525110603.4018170-8-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260525110603.4018170-8-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jun 2026 14:43:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUDTXYG3hEz_DjYX95TrQtC+WAbcaigcJbB6+ahgLuLRQ@mail.gmail.com>
X-Gm-Features: AVVi8CcFSLH-fFepPuSUo9_HZp_pXmYIByM4nJDNELTvumtfJ3RhzJ9KYGckeGA
Message-ID: <CAMuHMdUDTXYG3hEz_DjYX95TrQtC+WAbcaigcJbB6+ahgLuLRQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] arm64: dts: renesas: rzg3e-smarc-som: add audio
 pinmux definitions
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com, 
	bmasney@redhat.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306823-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:john.madieu.xa@bp.renesas.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:bmasney@redhat.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:john.madieu@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:johnmadieu@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,redhat.com,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:from_mime,linux-m68k.org:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0EDA36400D8

Hi John,

On Mon, 25 May 2026 at 13:07, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Add pinmux definitions for SSI3/SSI4 audio interface on RZ/G3E SMARC SoM:
>
> - sound_clk_pins: AUDIO_CLKB and AUDIO_CLKC clock outputs
> - sound_pins: SSI3_SCK, SSI3_WS, SSI3_SDATA (playback) and
>   SSI4_SDATA (capture)
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
> @@ -353,6 +353,18 @@ sd2-pwen {
>                 };
>         };
>
> +       sound_clk_pins: sound_clk {

Please no underscores in node names.

> +               pinmux = <RZG3E_PORT_PINMUX(4, 2, 8)>, /* AUDIO_CLKB */
> +                        <RZG3E_PORT_PINMUX(4, 3, 8)>; /* AUDIO_CLKC */
> +       };
> +
> +       sound_pins: sound {
> +               pinmux = <RZG3E_PORT_PINMUX(0, 3, 9)>, /* SSI3_SCK */
> +                        <RZG3E_PORT_PINMUX(0, 4, 9)>, /* SSI3_WS */
> +                        <RZG3E_PORT_PINMUX(0, 2, 9)>, /* SSI3_SDATA */
> +                        <RZG3E_PORT_PINMUX(0, 5, 9)>; /* SSI4_SDATA */

Please sort by GPIO number.

> +       };
> +

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

