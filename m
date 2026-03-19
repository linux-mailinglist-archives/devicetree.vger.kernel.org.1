Return-Path: <devicetree+bounces-277624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uO3GM1a6u2nanAIAu9opvQ
	(envelope-from <devicetree+bounces-277624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:56:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ADB2C827E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8DCA3070DE0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A07283A16A0;
	Thu, 19 Mar 2026 08:54:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDF33AD53A
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773910474; cv=none; b=DprebfkP29Xl7eADf+j4Un6HSFZroxABWKMqkxiniO1FCH9kDwChDEFhzvbAi/DsLYEdcoxh23RF8Jp+7cW2EQJzSjQvLDZNBrmdN/aMKJ7f2LXabpHULQGZ5uIMSJtwgTvXEN50j9IzDgfPajDo0LohKilKOxI1l6JXFwq6D8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773910474; c=relaxed/simple;
	bh=WIWBkTl9bfce3Qj4kW9OckN8Sty42b9Q8UgDdppvcqE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UCUYPI58733WpxNqJOrr9blVqBGyODl1g1GLuQAry1T4O182PcL6zRrQ7v6Y74uBHMWewh+uWpX7yttdUTPOsi4CV09+4AOoBCD065oUbDf4DnBORly3Vn/fayLMgwZemvVhdvxmuRkm0fCh3I9TcsJa4TforUTiLhn1JWvYyDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56b1b9899d2so659848e0c.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:54:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773910472; x=1774515272;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MIK47jhWtUjQOc+SchNfm0Az7lIIfFr81y4hdkDrfzo=;
        b=Pxgq11Sdlw2UIKzmg4TY0nYTc08vP7uKHoZytthcd4Xf4kh6kSC8FfFlG+xWAxqgFn
         cDJwCJtx/OR8cUv9jWOWYaQ4RTfBfr6JRQGtZ+Igyo/QsykVWlpMW7xgzzpaMzrX/iZx
         Riy6iNyllg8NtiyfFyz9q3N1TKwWROSJDWdOzDS9ATlz7cJAKODw3NUd7QkoT+eIVWpN
         CdSElvuM9TMpSO+omT/nkaZ7ASDwzDmegULZ+xadSOSa3fsM3CxfXVxnGYbcAMYk2Rar
         FP3JnYTzRI1h/vslibZAUNshZo+0s4wR2FPOyq66yXTToYDjXiYieV4OiEwCx/8Jd6rO
         ENpA==
X-Forwarded-Encrypted: i=1; AJvYcCXenyOGSp5nxe9mF8/6Dy4Vse4vhBeZJcsVTCdgoJa9zR4OA9dvArMEIIKl4xlaeklrt/bp0MkAG3l5@vger.kernel.org
X-Gm-Message-State: AOJu0YwaUU2rYD1jqDoR8myiJaMMivX0PR9Ruk862qWnGD1ycbmM9bvn
	ud4OBRiyZuEtToVUkkr1ng45XBhdBdA/+XHsOvzIJMfWMKSEUbC2Yf4tOYtfdbs6
X-Gm-Gg: ATEYQzy/8EwUXAMKXYJHsKibpzGeWryYmEosscxnbZTF/4STw2EG9gejHZyfwqT+Zdy
	0uCWzRj5L0jBx+IwIHWB+ZuLL4aNpYChQMcWGWrGmOr0mZuJyfG/884O1XYx2n/xkRWN7pLYxSm
	bBzOrlgRZM6I5K7nQDz8hCYkxARp+EdPO7QKWZ7nbJIFyM43g76jFiK47yh1RDE4lc073zx9Wg0
	cQ/P10PgRC4jEIO+7P5a4dGi9qKKFfZz4LyWWHZoh0ySt0lNwgMJwixyLAPWA+0VrjZuWEuySC7
	VRGiK674Y01kN2LCk/Ia1rDmzDqMVXbewBcwc9zYt5mtUrPUqjzdqNg+QAlEYNleG5+2ekgLKHV
	D2FomXsfHjbPSE3bCeyCdK5k/G6c0JXLr/UMrtR+NsJl25FRJ5u/+uCKDtzSodWAKnXG6BFgFvB
	b9gKl94KF8w9FxIWnCrNxmB7nkL5eHrsahfbcl0ifLDG+/zGeAM89FSI57EXfb
X-Received: by 2002:a05:6122:2205:b0:56b:7f51:7a91 with SMTP id 71dfb90a1353d-56ba7072e74mr3741996e0c.5.1773910471775;
        Thu, 19 Mar 2026 01:54:31 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6e30ec6sm3285342e0c.1.2026.03.19.01.54.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 01:54:31 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-950b8124974so385694241.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:54:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWfu16GNKDoh84+nPHsnOnBONEXb/YywKmbmp6DQVXmiolWdYzS3B+T26w0yTmpNJ/xD2/V4ERy6ybX@vger.kernel.org
X-Received: by 2002:a05:6102:2ad4:b0:5ff:1d91:a4bc with SMTP id
 ada2fe7eead31-6027d2ceda1mr3144375137.18.1773910471170; Thu, 19 Mar 2026
 01:54:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317130638.2804-1-wsa+renesas@sang-engineering.com>
 <20260317130638.2804-2-wsa+renesas@sang-engineering.com> <20260318-camouflaged-umber-oxpecker-b2b29e@quoll>
In-Reply-To: <20260318-camouflaged-umber-oxpecker-b2b29e@quoll>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Mar 2026 09:54:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX=DRnFWG1ky8wT7mK=LHeJ6LduL28nYd19QpASrn6mew@mail.gmail.com>
X-Gm-Features: AaiRm53-6h1yt3u-46ZjxBclCr5aop1cQ-v42sIa610EI5YqQxDLYM8BFeoUn0A
Message-ID: <CAMuHMdX=DRnFWG1ky8wT7mK=LHeJ6LduL28nYd19QpASrn6mew@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: soc: renesas: add MFIS binding documentation
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-renesas-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sang-engineering.com,vger.kernel.org,gmail.com,glider.be,kernel.org];
	TAGGED_FROM(0.00)[bounces-277624-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.014];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,sang-engineering.com:email]
X-Rspamd-Queue-Id: 43ADB2C827E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Wed, 18 Mar 2026 at 10:17, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Tue, Mar 17, 2026 at 02:06:34PM +0100, Wolfram Sang wrote:
> > Add device tree bindings for the Renesas Multifunctional Interface
> > (MFIS) as found on the Renesas R-Car X5H (r8a78000) SoC. MFIS includes
> > features like Mailbox/HW Spinlock/Product Register.
> >
> > Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,r8a78000-mfis.yaml

> > +  "#hwlock-cells":
> > +    const: 1
> > +
> > +  "#mbox-cells":
> > +    const: 2
> > +    description:
> > +      The first cell is the channel number as specified in the documentation
> > +      of the SoC. The second cell may specify flags as described in the file
> > +      <dt-bindings/mailbox/renesas,r8a78000-mfis.h>.

> > --- /dev/null
> > +++ b/include/dt-bindings/mailbox/renesas,r8a78000-mfis.h
> > @@ -0,0 +1,27 @@
> > +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> > +/*
> > + * Constants for the mailbox part of the Renesas MFIS IP core.
> > + */
> > +
> > +#ifndef _DT_BINDINGS_MAILBOX_RENESAS_MFIS_H
> > +#define _DT_BINDINGS_MAILBOX_RENESAS_MFIS_H
> > +
> > +/*
> > + * MFIS HW design before r8a78001 requires a channel to be marked as either
> > + * TX or RX.
> > + */
> > +#define MFIS_CHANNEL_TX      (0 << 0)
>
> 0, bindings constants are abstract (so without dedicated meaning)
> numbers, starting from 0 or 1 and incremented by 1. Shifting this
> implies there is some other logic and that would mean - not a binding.
>
> > +#define MFIS_CHANNEL_RX      (1 << 0)
>
> 1
>
>
> > +
> > +/*
> > + * MFIS variants before r8a78001 work with pairs of IICR and EICR registers.
> > + * Usually, it is specified in the datasheets which of the two a specific core
> > + * should use. Then, it does not need extra description in DT. For plain MFIS
> > + * of r8a78000, this is selectable, though. According to the system design and
> > + * the firmware in use, these channels need to be marked. This is not needed
> > + * with other versions of the MFIS, not even with MFIS-SCP of r8a78000.
> > + */
> > +#define MFIS_CHANNEL_IICR    (0 << 1)
> > +#define MFIS_CHANNEL_EICR    (1 << 1)
>
> Same here.

These are flags as the documentation for the #mbox-cells property in the
bindings file states, to be ORed.

E.g. include/dt-bindings/i2c/i2c.h and include/dt-bindings/i3c/i3c.h
also use shifts to make this clear.
include/dt-bindings/gpio/gpio.h uses "Bit N express ..." comments instead.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

