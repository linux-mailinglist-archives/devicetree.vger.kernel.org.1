Return-Path: <devicetree+bounces-306252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j2hcBossIGqwyAAAu9opvQ
	(envelope-from <devicetree+bounces-306252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 15:30:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7358F638118
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 15:30:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306252-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306252-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33D473277D88
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 13:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E584657C6;
	Wed,  3 Jun 2026 13:14:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA92202963
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 13:14:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780492463; cv=none; b=iS2QVbtnJztOS07quq/hzJmUBhYExibSqKLOnRGb6MFusHLbBezPIb+mUaikz36Jp3Qu5GtobhqMxJE4J18v2v8aAuU2VeOzc1ESBubHiscwszcWioeUIYhSXg91uRu2t9tl1/miwvZg/EgPD8oEFZlKiEoQx2weSqUmXcBeJyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780492463; c=relaxed/simple;
	bh=Plptqs8+MeS/L6HmTwPUTp1dXY/x5J9010knqhq+i/U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O0h7Nn8O0xwe4Frd6HIXfiuGY6TDefm88kqWmkbNv3MputXdo0iUSUX7SRCDH1KwXbELo1PT9hbht3NVkpofFzmiKcr6jHS+Z0S9IQSJTZvgnn8qrEam7yzs+ZWSFoPuDle5nQ0CjgJ//WxnBS5a5kaZvI/acDVTm75cpjaU43I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.47
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-bebde89cfd3so537228666b.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 06:14:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780492460; x=1781097260;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+vDFPb86PvQvyL1RfDQoX7OYCgpH5JEVJJIcrin/l7k=;
        b=EPc2B/sWhla5aUURpmMXJCpHlYJC0SKThJ1nWKb+sPBnO1ykpF270mKupEjHGZ3PZo
         O+s8u7g36Dtxeki8W13ASV6UZOxKrgTcJMSIUzaq+DrXxV1AjNY3le+B0MfY9ihhlf9m
         FyizqiOjMl8tJ4as+SdjQj8rJO4SXIrMaZsHNKYR2nYKlKwAJaXjzPSzlOKn0VAp1Tee
         2W/kSwTOJkJOMN54gOid7z+1vq/xYnBHjL67pzRRsINxs3ak5gv7npUbjkTBTstUASK8
         s/RUjPfeHHolJ69usREixcnuvVzmhvHn/8kYLc0cY8tp7X+ndNE1cs/Iu6QmvB5+10St
         U6/w==
X-Forwarded-Encrypted: i=1; AFNElJ8MdN/xPCf471A2uglrWW2jEQ6ZzukMDDml57bd5zcX+FEXu0m9YGN32VB/phHP+wl4utVsFQ6MoLbP@vger.kernel.org
X-Gm-Message-State: AOJu0YzyfjOLRagJX7EE79vIKFMFjdflCZnXVZv+ddruPcE/QrZUl96i
	KJ6UTq9+FGzGIxkZUtGmniu/ouOyNQnHepmStTvzyi1v/7wzEaOh0cY9NCw4MOVK2NM=
X-Gm-Gg: Acq92OGlndWSaO8DTDbvNiTnLLvNJJNToDmnxDREPjOBGvUHifjlkzNIXBX+TYnBQba
	Rg6axvrslQoKDzcfxiwHmR1tdTVPZ3JOTFCXdA1odZTaSlQdmrOh+8pfIbFgL84PeRm28p79315
	dTvNsDuxYTqQYNw8YI2dxZd6ZnsYv26aCeHPlNhkDf/BlK6FGpKcIqffSlk4xhdfU8HiizLKzh0
	s+PQj703Jm8kJ2uFRMPkeAjlxA/R+4+9zG9g5ROn7jf4yNHPG/iPgEgoWnNaDwcfCAlxGE7EZsB
	8c6g8EWIwvXiltZ9g2/+CBRTWfJIxzE1jid1neC/faH/nJE9zMra4+esOuRyyfthFYFwo2nQbxy
	TiMXvlVZ5v8JTsvyMC8OF8G1MU+54UvXZ+xvmi50bddWjdKFYdmPFX30ZC9elHGuJdiVT00hVXU
	2nD8oCObGFF38+6cjrMbB+xP667f8k1n4R47Q/3OVXJIUmu9p3g9g2u9dpyjVPqqNjIygF6fhWe
	ik7HA5q9A==
X-Received: by 2002:a17:907:3f07:b0:bd5:18e2:4c5 with SMTP id a640c23a62f3a-bf0ab2119f4mr212598266b.47.1780492458849;
        Wed, 03 Jun 2026 06:14:18 -0700 (PDT)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com. [209.85.208.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf05208e897sm151448366b.25.2026.06.03.06.14.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 06:14:18 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-68ced97b6eeso5237842a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 06:14:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9wFttg0NlNAdDMDWWPsJ0wMlPRTbxxbFXVmBDW1PfB52un5eqS/yaO/c1eyKMeamYMs5dYHUtUzPYX@vger.kernel.org
X-Received: by 2002:a05:6402:e08:b0:686:9c15:3121 with SMTP id
 4fb4d7f45d1cf-68e713e3184mr1563082a12.12.1780491958656; Wed, 03 Jun 2026
 06:05:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260603093621.2504490-1-alexander.stein@ew.tq-group.com> <aiAkdZ5XuYC-wpCL@ninjato>
In-Reply-To: <aiAkdZ5XuYC-wpCL@ninjato>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 3 Jun 2026 15:05:42 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXG200TTrZGp1YJGt7T2u9vUy9ipoRaOWw_jTaa8Ui81A@mail.gmail.com>
X-Gm-Features: AVHnY4Jn5WJuuexJ9K698In0uzIER4UcBvwdWNgk9D9nn5i9fKP95_v3uD6TZnc
Message-ID: <CAMuHMdXG200TTrZGp1YJGt7T2u9vUy9ipoRaOWw_jTaa8Ui81A@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: arm: fsl: add TQMa8MPxS board
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
	Paul Gerber <paul.gerber@tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com, 
	linux-renesas-soc@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306252-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:alexander.stein@ew.tq-group.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:shawnguo@kernel.org,m:paul.gerber@tq-group.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux@ew.tq-group.com,m:linux-renesas-soc@vger.kernel.org,m:conor.dooley@microchip.com,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[ew.tq-group.com,kernel.org,nxp.com,pengutronix.de,gmail.com,glider.be,tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,microchip.com];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sang-engineering.com:email,mail.gmail.com:mid,vger.kernel.org:from_smtp,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7358F638118

Hi Wolfram,

On Wed, 3 Jun 2026 at 14:56, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> how do you generate the CC list? I wonder because linux-renesas-soc is
> added while only files in the freescale directory are touched? Any idea?

DTS:

+       pcieclk: clock-generator@6a {
+               compatible = "renesas,9fgv0241";

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

