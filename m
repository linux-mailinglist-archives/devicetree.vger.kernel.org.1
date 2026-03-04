Return-Path: <devicetree+bounces-270916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNNVGR/tp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:28:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FC61FC9A8
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:28:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 984A03119C91
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF91E39022B;
	Wed,  4 Mar 2026 08:24:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B2134F48F
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612684; cv=none; b=QDbCnopjhnq4RhNa6zptukBCXi7VAdd04GM3l6atq/hDT5Bw36K7J5SyldtUFv3LtRnqO8e5m8Yk7B4MRRwIqFQDzSxkwhAqnnqZnZhLISEnKdnQ0VYKAF5TRhYBMMLNyZBn0R/vIJvqyIPv5Uj39DKtuzrrdLWAoOgYHk0RNG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612684; c=relaxed/simple;
	bh=hvVf8TlLuGjoIz83VTaI7zq1/9ObEux431OnwSCmqt8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CQNzE0cOPdsC0N/F8gPrHcZcJbgyFKn6+lBex3qJUFZTlRpnajWTCQq+fMVdRqSQph8ElC6tNIDKWXAxKVpO1QdI7qnqKuEe3yHxfv3rXxhL0pqS8mJ5eWBjUM9k0YKC9nmGDbx7X6wemWXNIZibwlu2Cz/iyD/EvsKt8uHYEL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-948029fb1f2so1980073241.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:24:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612682; x=1773217482;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q7u7uhYwMdf6c4DLmq4MuB0mDDGy2FQPNLYh8zUmWGI=;
        b=rFvhwSonALHRWUjPzJ+V12TpVZUfWv3KOqBTFbyllWC6Hp8RsKlJAL9d1UZgdYf/La
         b8K3g2IL3AiFy8vXOo/Kun06eTtt8/6afJ2j6H4NOZd35ll9rUUfR6miHf4wFjitwpxA
         V+G4lssxr7D5CvHEYgIRGBAfCAV0WXEahHUt+yQ+hsvHkoj74Kwl/OSNZ7F/NlYgkSSH
         qnHGvGUnFjlNHGaTEqL5nAGBgS8IA9JApsxWResA/EXM7pGIMBDNthhYu+uXU7/nZqy0
         Zh/oZlzdvtxzfGTIe66RvNEd/uZyUk2S/5gdNBU34tMCi8BGuYjZWUOJkjIGfFE6p8ar
         opPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWt6W1La1uBjL7OxzzHUZ5lk0SiaXjjxdDv4DerFPKQKDBBFjqc1yRiA7LdpMPXfJSOi47ZbAihgHQe@vger.kernel.org
X-Gm-Message-State: AOJu0YyEZKF7cIDUOUleunfHirFkllA6YgoRELwjx+psiaooX07Okrmf
	dczAQrDQryhDFjs6Axj4O7Pxoi7gBdAXWd8t45Q9Nwn47dvdaMfmvvCwBPQ4QzaB
X-Gm-Gg: ATEYQzy4ThX7JqnUGuveR3KeGYsGeCesAkpxNRkMWx7e5TWsF+MxdLwEsL7p7ADP9gG
	yXtWmKXjBZVGpln5QNkS179KA1hp9df6R6xB/utdUPyq/gVRq3hjdqEwP6uM+ZqBlvujCBxTw+z
	BnetaWC4Ft3iOUS+BpZ9tgBnyoPwOLMq69yJugy/LPDS8yqrPU+yvrXovWjVrhJQWR9Oqx6LSjW
	et6sr6xN/lql5LBOejGMh2abZ9VFAPcUgq/2/M4g99iFQ41Pm0MmJ7WYMwWXHlNHY+JNdlVeFl7
	CH/H6gFzb1SnBCVFEX3WrAXx21YpFH071PJqTNoscJ8lr2fiGrR5rpdgmxmkoABDi0tJM2CclAO
	0Af55bIS/XvRvr+UriLMlEHbCEv2UzvEqYF++oT24CYh/+1T9GCVpiMsSCu05hGyWBmjwj/bnIU
	s4M3N+tfXgSrBxCE0CJA8z8kMfRBC29TV6HwAuCu65Maj81PSIqXmOGOOJBiWQ
X-Received: by 2002:a05:6102:2912:b0:5fd:f4a4:799b with SMTP id ada2fe7eead31-5ffaae214bcmr481138137.19.1772612682316;
        Wed, 04 Mar 2026 00:24:42 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1ea6f7fesm19303650137.13.2026.03.04.00.24.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 00:24:41 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5ff18242343so1689074137.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:24:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXZGruZuoEHoZjBPKiipbUcceKTu1DTQ0TRkTLGpGbS16k3ZK+XLJCcnz4B9r4O/8nJMOD5DstMm6mh@vger.kernel.org
X-Received: by 2002:a05:6102:2ac9:b0:5f7:24dc:3ac3 with SMTP id
 ada2fe7eead31-5ffaaa86250mr500406137.7.1772612680850; Wed, 04 Mar 2026
 00:24:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120125232.349708-1-biju.das.jz@bp.renesas.com> <20260120125232.349708-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260120125232.349708-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Mar 2026 09:24:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVd8w5EZHbdfzvV_Y6WF-UnAKXroBdZvN4nVXicQq8z-Q@mail.gmail.com>
X-Gm-Features: AaiRm512q2K67vjOqf-uWH841QxdlHR7tR8K1fivAq3UZU-sn0m1djMQb1Zv69w
Message-ID: <CAMuHMdVd8w5EZHbdfzvV_Y6WF-UnAKXroBdZvN4nVXicQq8z-Q@mail.gmail.com>
Subject: Re: [PATCH 01/12] dt-bindings: serial: renesas,scif: Document RZ/G3L SoC
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: D1FC61FC9A8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-270916-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.254];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:email,glider.be:email]
X-Rspamd-Action: no action

On Tue, 20 Jan 2026 at 13:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add SCIF binding documentation for Renesas RZ/G3L SoC. SCIF block on the
> RZ/G3L is identical to one found on the RZ/G3S SoC.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

