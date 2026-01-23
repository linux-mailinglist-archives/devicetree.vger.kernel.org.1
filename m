Return-Path: <devicetree+bounces-258948-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4APGN3h4c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258948-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:32:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D198C7648E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B3927300290D
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C8D301493;
	Fri, 23 Jan 2026 13:32:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BF72FE59B
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175154; cv=none; b=KUlVcCMGl/mmQfYs7QWgfSMhBBM2Lha/FEWE9fTMO+3vZnRTPw6T1q6pNtC6LQTVZzFH64m6pFWH64Z4hkCoLYDefJGgBtyvhnxnTOsc8s07eop3rMv7OEnfnjgWUxXbwaMHqGEfH5VSmMumlxpSXRpGHjcII0AQ3fKEf2sSCWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175154; c=relaxed/simple;
	bh=W0zpmMbe+WvioRjE44xS7zUUzI81BLkbMT72TBI9N0U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RiWs5vXEnLhJS5uO/KyVF8/4s0RDi/Z+K4LXQbJhghZ5HsLdsHBwwhlhEPiOfEc1F5np6pW+niXgOXCBOUGm74KhMgG72Racb2IWo3mBUZV2ftQZzo6wFcGMq3X2jTbOwE/R694zVCRuLcG0AWjvd6zPUD3UsjDwomuiNQh/wlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-944168e8c5fso1665722241.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:32:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175152; x=1769779952;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZFcVCUbs6+A4DjohoDcTbMd4NWYz6AemlNmvZZNsXj8=;
        b=SKn94cyF2M1Y9KP7C4qLnzKWma6jKljRs29/lB1I6hu0Avnvj0ILxUjNBf7xVrwWOb
         1QLz9Yw2RQPFNBK7V1q0lu3eX4DZSGofKOcF10/6+4GaHoLDzZNjph1GkLfIiZHnL+Ik
         3sqVW6Kjz6BZ3PwXMaBB+oP+ZFra/PIlnyJEgkwSBbVWtfAI57W5hC8ZPfzMKYJCYRxe
         RVNLs3ay6RHO+RZs3sNEBYO0AMbsWUJZIQ4zMD5X7vcMPN+qalCBQyT67r4dIxm7SUho
         BQQpMVL1R054T+5/WPJkqYGXGMQrdCTX7+fn2SMlrGp6qBVwCQ2D4cgamOm/57nYguvi
         qDkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgdGZf+0EmPVwQafJmsLIISMsvt1XCirFblgXSh9RP3YgB8ixDXscne3UNnDYz/qxNzkBDZAB50dOl@vger.kernel.org
X-Gm-Message-State: AOJu0YzmmXMKsNIjwm0dCfl5n9643HKV8kQW4s2hcCO3XFCWpjwRWOvH
	poiqDOtNwdnnWFXcm8PGKO5blQCI/EmuxibeFQ0a9G+ILAOyEx9nQ/vfIyigV2Lc
X-Gm-Gg: AZuq6aIZaZXp+2DbAtQXbVRRuaZ8RQgnOTvL/x8EXgeZpmXD7RgswI59aZobsktg8ZX
	4fNHDu1XFW5ywOdKi5mQAiXAxHgaVQ1OkHc0SvitWuRyVqyn0/09My0WnT6hQIaPt4A2jdSk6eW
	clmAEiRYT854ZlhlIsmpfqRMyY1G4Y97Ugy8LW4aX2NEJh2VyFz5TZUTEwbOp9hwyshJ9LY1pVf
	YIyPjLuOO80YqrQIOJGjbKKVTeOKmrKlRDnGky62mWa7GJ7DJmfvbxJlNn4AQYv9DgzXmdm9/iU
	dJ3kJEWgSYT/5sMvwkqEIE0EDCArI2RfDYL0wK5dU3WZ0Xpcx5fKNuPv8jO4jUQDVGDIHXc2oey
	rDeVXKuOEbYW0ocJo7/QS9vNd4+7IeoYgVhp/4UiXEZzraDaO5bSZFk22hqUdEhceF7aj7JMbyG
	cfBQh3bbDA62vG/FJG6PSj8yOCI4KVmWqoGaD2i8stDAHqJLlk
X-Received: by 2002:a05:6102:1a17:20b0:5f5:5c2e:59ba with SMTP id ada2fe7eead31-5f55c2e5bb8mr182761137.33.1769175151844;
        Fri, 23 Jan 2026 05:32:31 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d3d8225sm557878137.3.2026.01.23.05.32.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:32:30 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ec87b1f525so1285880137.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:32:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW4HttD9/ZRWN2VYNxsX9SbAy94SK5ZNdXBKOBSxDTHFNupE8viyqTVRBYuZw8lz9SLKlLegUnjKJp6@vger.kernel.org
X-Received: by 2002:a05:6102:f14:b0:5ef:a9fb:f1f3 with SMTP id
 ada2fe7eead31-5f54bae7a41mr1054952137.11.1769175150254; Fri, 23 Jan 2026
 05:32:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-7-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-7-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:32:18 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUaPJCdzx5nGgmO4=z5TL6UYiYDaEgL1ezWABh6vPJOCA@mail.gmail.com>
X-Gm-Features: AZwV_QiSLMv1d8wTOd_fggCZcAN0A0pAIafduPy_jaGRkU9OQ3Tlbc0VC45o0gg
Message-ID: <CAMuHMdUaPJCdzx5nGgmO4=z5TL6UYiYDaEgL1ezWABh6vPJOCA@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] arm64: dts: renesas: r8a77990: Add USB 3.0 PHY and
 USB3S0 clock nodes
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258948-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux-m68k.org:email,mailbox.org:email,glider.be:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D198C7648E
X-Rspamd-Action: no action

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add USB 3.0 PHY and PHY clock node for R8877990 E3 . The PHY node is
> different in that it does not have control registers and extal clock,
> which are not routed to the SoC pads on E3, therefore describe the
> PHY as usb-nop-xceiv simple PHY. Add USB3S0 clock pad fixed-clock
> node, the frequency has to be overridden at board level.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

> V2: Describe PHY as usb-nop-xceiv and update commit message

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

