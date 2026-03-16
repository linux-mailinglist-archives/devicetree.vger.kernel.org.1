Return-Path: <devicetree+bounces-276000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CKXL+69t2mpUgEAu9opvQ
	(envelope-from <devicetree+bounces-276000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:23:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB552961C5
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 384C5301C911
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01E8136212E;
	Mon, 16 Mar 2026 08:22:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E1135F193
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773649360; cv=none; b=bwipnqk2W+wHalIlm7Az8Hi9EQqUNNCoGhH8GxKa8bzYjs30B0WMjE+vILrsvFGwORBunZpu5TUMSwRkSHVzvvw2lwzNdPz0uml2wDpVeNjIGH7CgA72POfaQbYaykn5KCobxLIW/HS7TzZtP1jwMXDADZLlXFVWRPwH6CH3+Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773649360; c=relaxed/simple;
	bh=K4PRTP6RiXe4ekfnxbKijRsel6dDC+QKM/gt9YizooE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ja/V1Hg0H3TA8BSXnM9a5hZ1VoFtz4sGas/TtfOpxPNdncrtLCH4ztfkEUo2AtVPOMv/cjzLgM09DlY2kPIbowEeItzw+oQnsMZOV/c+gYqUddspdHF7WbdH7SpzeAedNV5Rn1lUMUG4KE+yjSp0MoR2c3cCtN5+I4gdKx06SAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5674d8be45eso1593331e0c.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773649353; x=1774254153;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gHPoB6LHBRts05kAm+HAniBgww0f16o7iYE+d6aW+Hw=;
        b=r6L8f4YLuJgzJhsNkJRbVTDEgo8ZYq7Hk31j5HjLxxyYX/qSdPdD5x49C4loj8QTM2
         35UZ5DlW2VqIvWqzWfp9hHVzTQJlRLsnT8vXggHvsuJkSoOwpDKzbG6NhyJwa/0kAc4O
         uBTz2/mGGWSYv2NCI3uKU2umuKivL/Z8TC5bGwKSJtGNixyajeDJic7iy/dFLQXapqUF
         UVgOF+mTVdM9atsob0LHqwvVJfzXHSbgvaWBWyWnUDVL+SBUfCWA8fnYTGR6ipAH8oF7
         0JI2YCXC49TEHi0TVsncZj9buTdCjosiCMVnrl8XhbyIlrrXPo9AXg2usZ1dj8eGYuUm
         QDsg==
X-Forwarded-Encrypted: i=1; AJvYcCUaoL/PPIqWcABqnvBZTizgRJqniFRd9oOrRM8VglS6Kli+CqaGxe5AhbCuVOtUPYSwh55Qpm4Gv4Rg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2Qve8/CQa9KAjV6M1+SiBBeDy60P0U6FID8Bjvj+pmopF6Qg3
	E1Y2noeHwozpMFbAnRnpXKU/CORSZWiewifrrT3YPreNXxooeH7NmFOlxZSBj6hy
X-Gm-Gg: ATEYQzxa7aqKo56zurNTn/Ic3WRSu20UstfHNjlwx6ogO9MuW/v+l8bWhc2IIGgwGLq
	EoitivGHVbnQXp1sTqI/sv+talv4ThYfM6lhZM+wbw+yzt4rvZsuhvD72/y0dEOYloloSRK8fjk
	PNv+myj+YYPtqOkrPIPhvMcYX2r71uorbi4dUyAedI/TYOcQo3kFSYbHx9uqCCA3M1KMqezxZ7V
	Bng9Xk2Egxvnry9Sn5I21UhsTF6999inCjxyrxKpZ6hNGt30vOrDoQuCCyuyHP8YxIexRUZAou4
	6us2tZpUqa67UrXtPUukBQFBSTPrB8dCQBT4g7C43gE3keV651qJTylRxPKSd5uf/vaqTOdSv8o
	18APkfWnpVqbSLd34YIhXTnXL9rbmKCY05LbxO738auqBqOEykseBaSCFKyU2FfKtmaPvaBcyt1
	tFeHM5U4gymnE0q6/dxcGKbaBKsbPjEKAT5X/MqxJTGqrfYzthZ8HY1NGv50FRmD1v
X-Received: by 2002:a05:6122:46a5:b0:56a:ef89:34fc with SMTP id 71dfb90a1353d-56b6283ef7dmr3882425e0c.6.1773649352961;
        Mon, 16 Mar 2026 01:22:32 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56b88bb5271sm911137e0c.15.2026.03.16.01.22.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 01:22:32 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5673804da95so1596452e0c.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:22:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWncV6ubxOdnY5ljq2zfCqOE1lj1g0kN8X1DND3x2IocRROlsEDi2F82Zh4hpvZoSnV4wYYBCeOXert@vger.kernel.org
X-Received: by 2002:a05:6102:3a0e:b0:5fd:f744:660e with SMTP id
 ada2fe7eead31-6020e60078dmr4136686137.28.1773649350869; Mon, 16 Mar 2026
 01:22:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6ccda7a00f250e87b0457e276ac1070cb0708d71.1773321267.git.geert+renesas@glider.be>
 <20260314020107.2241383-1-kuba@kernel.org>
In-Reply-To: <20260314020107.2241383-1-kuba@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Mar 2026 09:22:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW7TJoDTYRtca1Y86pVuvUbnDX_x3MUYtvEbgPu915Yhg@mail.gmail.com>
X-Gm-Features: AaiRm50TKdino7hX__Fr8XbUbMY5_IOg8mWiIXEhr4B3B1Mph0NJ-Pgqg-orWL8
Message-ID: <CAMuHMdW7TJoDTYRtca1Y86pVuvUbnDX_x3MUYtvEbgPu915Yhg@mail.gmail.com>
Subject: Re: [2/2] dt-bindings: net: micrel: KSZ8041RNLI supports LED mode
To: Jakub Kicinski <kuba@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org, edumazet@google.com, pabeni@redhat.com, 
	eichest@gmail.com, conor+dt@kernel.org, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, andrew+netdev@lunn.ch, robh@kernel.org, 
	davem@davemloft.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,redhat.com,gmail.com,kernel.org,lunn.ch,davemloft.net];
	TAGGED_FROM(0.00)[bounces-276000-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,linux.dev:url,linux-m68k.org:email]
X-Rspamd-Queue-Id: 3BB552961C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jakub(ot ;-),

On Sat, 14 Mar 2026 at 03:01, Jakub Kicinski <kuba@kernel.org> wrote:
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
>
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> ---
> dt-bindings: net: micrel: KSZ8041RNLI supports LED mode
>
> Micrel KSZ8041RNLI supports LED mode, just like KSZ8041. This fixes (a.o.)
> the following "make dtbs_check" warning for the r8a7791-koelsch device tree.
>
> > diff --git a/Documentation/devicetree/bindings/net/micrel.yaml b/Documentation/devicetree/bindings/net/micrel.yaml
> > --- a/Documentation/devicetree/bindings/net/micrel.yaml
> > +++ b/Documentation/devicetree/bindings/net/micrel.yaml
> > @@ -54,6 +54,7 @@
> >        KSZ8021: register 0x1f, bits 5..4
> >        KSZ8031: register 0x1f, bits 5..4
> >        KSZ8041: register 0x1e, bits 15..14
> > +      KSZ8041RLNI: register 0x1e, bits 15..14
>                   ^^^^
> This isn't a bug, but there's a typo here. Should this be KSZ8041RNLI
> instead of KSZ8041RLNI?

Yes, it is a typo. Shall I send a v2 with this fixed?
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

