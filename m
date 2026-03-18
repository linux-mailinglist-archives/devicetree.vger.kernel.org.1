Return-Path: <devicetree+bounces-277357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Cw6AubXumkycgIAu9opvQ
	(envelope-from <devicetree+bounces-277357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:50:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 631392BFA00
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:50:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E844321C88A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05C33FE342;
	Wed, 18 Mar 2026 16:07:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6723F8818
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 16:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773850033; cv=none; b=g8p8K52ZqORlT2lYD2etsxNhQC/KQn2CX9R52YiH7art602J90P1qKhmzh5eE7/9dJrBa5IdZnqTmI6weDLqrAFEe01+cIlWDaJUdHr1477uS2ej8EqJfjdAkIRJxS7GFZa50LlWSx1PA4766nsUQcaz2B7uBUm902Sk+CkraVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773850033; c=relaxed/simple;
	bh=C0K3zuIGCFbCWEAA6RQca9NBjlh1H0UByRONnfECmAU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iaN4VsOpsLIN5Y2ExuN9cqtJC4E9anyzBSZa2sRGOzq4C9Z+3J+RoUpr4IwJZFfbjsYdNCDwjOyKlFKnN6B+SClkr2GV3lHWOtNkQpECQ/zS0n6QUPRlDSuR51/ZZCgc/c8uS8JjQni8G4eYDFTsFt5z0ft5VcMn/YzKK9rNjAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-56b679e72d9so2172924e0c.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:07:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773850026; x=1774454826;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ikhQ/s135EgCf6c2OwoW/1zLZPqI7cynubnVYKoEijY=;
        b=fJV7z90J4HnQuBzAdoa2UcP5axk0fYAzZ7rA9j1hE2rXyh1JmSBrCuW6SdpHR2eDcK
         Y9nfT0D/eTfPQSPMGdS33K0oT03gVjzgdEbQVQ5uZZ0p5oZlqHZ+6q9nvK1Re70A8pLE
         qaI8FAsYiF4nxcjKGPHSEnbWkIOYiZCQJH+7Xu+pdLyy1UPSzHKJrb2RDYnY2VdgZe7d
         q21mg9S5czS4hqjcUDc+ijhAYd38OOOm05bhP131FBmAgtaMXbCHw/IKPnTiKaxFFtBY
         HIpD/K75la68svTkb4llArfgRxQ8oI8vlBCpK/kirP+RGv4edLkcemlDxMhdljOgr2t7
         mcsA==
X-Forwarded-Encrypted: i=1; AJvYcCWfFc0ZgFpn5wAOuXEMdcUguqXmXObQdqDL9aFM6GZIIb5ulavyHijzwTMiGcdmhoOiTtcEYzLEMDro@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0JXev0ySda37E4ieNl/pFIJ+8olT1p5EfVaWcdL4hGKsQf91Q
	wEi+yJeeHHWxksRT7oVbreDRdal3Zs1gUhbTTmFHsh6RxHRc/jLF1cFcTftsp/IofD0=
X-Gm-Gg: ATEYQzyikJqqj1sk+dJgDicBzi1Zx8k16eAbytYgnvlw266gSd0XMGKH08ldh4l1EJM
	avWU17svCWKbjNDXK9PA2rc+96YCshPxpFHv0ZFF/0oajz1Is3pWVEXSHeoAXHsynB2anekFSe/
	swWxx9HTLFmWMJkxaI0/LYUNB7CXHUaLPxft21OpRlxhcyPlnUMChRYoCoqEHmRkd6RojvydRNS
	oiKtPa7YuzMGCZy6W8ltUB3KgK7oBPio0CZeXhH/11TT/b+9N4tn30zSLrKUZnKfRWcOAMsAfQu
	wItqNZTFaYO7qC/1b1aNCa4m6y5pmf5+jZ6U9NUOXMsZcip5vRjj6CIEY54RxhbX7qtq1TPVYY+
	HEAcVZRUH4RJILnZOa6mXZcg4ROp5lJhB/5NYrkbGjIMuM0OVkfIuZMn+Sz+1aZV2hpA0wCAk0u
	r2JDd+7e1lcSbK1i3S6MaA0tzSo9x+adX4sbdWHvSgsB95oC0U5b2xZoSSd4AZitx9
X-Received: by 2002:a05:6123:49:b0:56b:960a:a4b7 with SMTP id 71dfb90a1353d-56ba7034daemr2043665e0c.5.1773850024239;
        Wed, 18 Mar 2026 09:07:04 -0700 (PDT)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6e30ec6sm2000574e0c.1.2026.03.18.09.07.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 09:07:03 -0700 (PDT)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56cc6fe8815so312536e0c.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:07:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXL/A6+rZqcTdmW6Vppeqb5fIsJSbyok+86vuXTtgLlmmDfXrn6eGZoe9/IiIUlU1lceg61iRaDHYnt@vger.kernel.org
X-Received: by 2002:a05:6122:8c0c:b0:567:499d:1fb8 with SMTP id
 71dfb90a1353d-56ba719311cmr2253679e0c.13.1773850022582; Wed, 18 Mar 2026
 09:07:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771344527.git.tommaso.merciai.xr@bp.renesas.com> <ea6ed3b82c5a326732adfc0fcdb2922bfcad2591.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <ea6ed3b82c5a326732adfc0fcdb2922bfcad2591.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 17:06:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXOxG7JKmwZFEy5EE+qJKSMuafA58HQGfFxzNDTsJ9OEA@mail.gmail.com>
X-Gm-Features: AaiRm53ykWAMjD_Bg0jQpCEt2WVWpWU9Yx6QysAtvExMVNjGws_pY1ovqWPD_kc
Message-ID: <CAMuHMdXOxG7JKmwZFEy5EE+qJKSMuafA58HQGfFxzNDTsJ9OEA@mail.gmail.com>
Subject: Re: [PATCH 2/5] spi: dt-bindings: renesas,rzv2h-rspi: Document dmas property
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277357-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,bp.renesas.com,renesas.com,kernel.org,glider.be,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.376];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,glider.be:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 631392BFA00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 17 Feb 2026 at 17:24, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Document the dmas property to state it must be specified as TX/RX DMA
> specifier pairs.
> This clarifies the expected ordering and improves binding readability
> without changing behavior.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
>  - This patch depend up on [0]
>  - [0] https://lore.kernel.org/all/20260128215132.1353381-2-cosmin-gabriel.tanislav.xa@renesas.com/

The dependency is now in spi/for-next.
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

