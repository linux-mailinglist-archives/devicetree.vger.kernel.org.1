Return-Path: <devicetree+bounces-278236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGcuKfQsvWmI7QIAu9opvQ
	(envelope-from <devicetree+bounces-278236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:18:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FF52D9682
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:18:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA3D8301680D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D58D3A6B72;
	Fri, 20 Mar 2026 11:17:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD36C3A5E90
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 11:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774005425; cv=none; b=taNbgAxozxM886oZ7wcRpX6QyJ7Uhbk4OTmXAb1Bs/zNMETnKsA0RMCDHrMun98J8e0WlWpTOW6X8qSpwxZBjEdX+wV/LwfvMuHCdfp3158ZRPIq1iAVUgWmkFx2M0Lau7wPkPrHU7fZz9zB+h/kQ43PjPl8GnG4w8iEjTwfeq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774005425; c=relaxed/simple;
	bh=9ovGQYlOjYxK3plbHA0lDCx38GOv5tYaaRGjIx9Ah74=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WwCH6/kxQupwfb9BM4N7ZM4tkvNI3Du4aLB8nEo3AyL8G0XojrFQTkUFvCvZ34PYp8rU+MP9h9ofvBAstVpXIfXUBLFMBLKn6+BbebKGnIAPC2Pwz37mj+bQ4mA78qLiXD9W9NL1n/aSogDPmuV5EyI/jqUSsFeYipiQFMkgrYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-56a8e0ea02aso1990069e0c.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 04:17:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774005423; x=1774610223;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BS48mKiSSOgr/13p71hpFJpaqE1/Y7kt2W9Pgmdu1rI=;
        b=DBMfjGccNEzYEIF+m0hggWUEVZYBB2H6kvIUEAcykGQngDlaQMRi1/01MWDoFsjQoe
         ZboyN8OHt7EE/F4BmBUBbGHNPw/S+etgPEkyM0y2RPS1b3e1vAIeWrLQ8ghPB9vlq+yS
         npBYuGql6TVw65lFHH8IHwO8FFTcQtOxCGVaIyjCPEVaNWH/fp8DASYH3GSJ1nYtLdIi
         ODbEVDoMuleb6/HMGu9234BGoGYcEBLSVF+PYBGrkmiL6LNrwfRl/RcFNncp/8Fw6Gl5
         v6ZL+X8YfMS4Sb73jcDQKxWLosuNcVQR+rT4is/bNnbyPpH4NgKC41Y/QrAVNbcIq6Hi
         qQ9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqaW9+tf9b5v8dCoN4/Lr+Y5AHg1pmXlfe4aL8+3JGwVZicRrdyVOeBzU75PBi2h0wYdtO4IIaKljm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0GmK7Zp/sJ8ndjHx6xZmKjh4A7TgumTxOAFRUDX2qJKFvb5O/
	1ng6QPzeCORQknb/M+6X3j15mKmQhgGcGrIHpBsYbRLitBjmw/INxQ3SltPJcJEtjng=
X-Gm-Gg: ATEYQzyfVKAiirx7WYimpq5gPlGZNOQd4b1renR61F4N0hqAeiEf/q1eNrhizJ50ESV
	/h0aVwQ9xsWQijJR6khVfIvOsGhR44qcjFcLBK6VxdFdlGOqXzHOKxsyueIlLT8837fXmVRkEg0
	wmTXpKZFUaFr0l8e5PyJTzTr+Vi6WU272patxyDIPnZ8Fkhx0jP6RFpYcNkOXR5QKbPQlGJ8MsV
	bYJCueSAsNZRpWP1UOoD5QaODbbXqSONjk/xgxO7DJUibWmLU7MoRDKQOFPR1JwFkNPCPSQjFgj
	4FCmRd/HxpyED/cfwnq8AFIbOF8ya9ylA26YVeWqMcvOwOL9a9nXdb6aSOOyaO1pnI9Brfl+RcO
	idi6KlQ/+9Jv9IFaa6JVwYRJ1uO8tsc4d0MeTE3Z/RfRPV2p6/xTxmYo3q1FjY5SGYEwa/f9AB7
	B088tVOrr8ECFSGo+aifEqNvb6AfUR+6tc6kcAiQzAwtSOCvA+x/VV3AL0XSnU617DtPTioKk=
X-Received: by 2002:a05:6122:2885:b0:56b:a534:42c0 with SMTP id 71dfb90a1353d-56cde43deecmr1386669e0c.15.1774005422620;
        Fri, 20 Mar 2026 04:17:02 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56cddb94050sm1419165e0c.7.2026.03.20.04.17.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 04:17:01 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-950b8124974so1017407241.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 04:17:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVKdlzbi4Kn4xL+LjHDKzl6tTfKoMiY/DPnzx7zP72AxT32zvmxo6cumR54qDiCqoh91ePtHsL7xfkZ@vger.kernel.org
X-Received: by 2002:a05:6102:a46:b0:5ff:b8d8:b40b with SMTP id
 ada2fe7eead31-602aeb16725mr1396805137.11.1774005421334; Fri, 20 Mar 2026
 04:17:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771344527.git.tommaso.merciai.xr@bp.renesas.com> <b634c10e632fed07b5652c11de060deca27ead90.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <b634c10e632fed07b5652c11de060deca27ead90.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Mar 2026 12:16:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXxUzTbABO4LXMKV3EVxYhBhFRnM4haxkhryypmaCL6xg@mail.gmail.com>
X-Gm-Features: AaiRm51HNwZDCeJmEpbXlgoq873Qn3LQLzzhwtaltybEWlaMXE_ceM8X-KrNbxY
Message-ID: <CAMuHMdXxUzTbABO4LXMKV3EVxYhBhFRnM4haxkhryypmaCL6xg@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: renesas: r9a09g047e57-smarc: Enable RSPI0
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-278236-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,bp.renesas.com,renesas.com,kernel.org,glider.be,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.348];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,linux-m68k.org:email,renesas.com:email,glider.be:email]
X-Rspamd-Queue-Id: 57FF52D9682
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Tommaso,

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

On Tue, 17 Feb 2026 at 17:25, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Enable RSPI0 on RZ/G3E SMARC EVK.

which is available on the PMOD0 connector.

> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

> --- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
> @@ -167,6 +167,13 @@ rsci9_pins: rsci9 {
>                 bias-pull-up;
>         };
>
> +       rspi0_pins: rspi0 {
> +               pinmux = <RZG3E_PORT_PINMUX(M, 4, 2)>, /* MISOA */
> +                        <RZG3E_PORT_PINMUX(M, 5, 2)>, /* MOSIA */
> +                        <RZG3E_PORT_PINMUX(M, 7, 2)>, /* SSLA0 */
> +                        <RZG3E_PORT_PINMUX(M, 6, 2)>; /* RSPCKA */

I will exchange the last two lines while applying because of sort order.

> +       };
> +
>         scif_pins: scif {
>                 pins = "SCIF_TXD", "SCIF_RXD";
>                 renesas,output-impedance = <1>;

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

