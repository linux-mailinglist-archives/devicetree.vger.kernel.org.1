Return-Path: <devicetree+bounces-271606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCN/IAKcqWnGAwEAu9opvQ
	(envelope-from <devicetree+bounces-271606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:06:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E10021429F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:06:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9BE2830427D5
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 15:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC08A3A4F3F;
	Thu,  5 Mar 2026 15:02:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D9C1E5702
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 15:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772722977; cv=none; b=bM2/wFqN5pgCXGLN+boUEvyOod4CwpQFO66uho1ZDd0PwcQehNJdLeqTZd5DGen0lNJn9fSWQtw4gjlKQX/R+ciOZEaOPM8mvIZ5h3rgBgHMVQt3jGY0kTwZfQyGWdOWiBWBD06sqlAU3o55vUoz8zuoKJsZYuJKcpCvlm5aGjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772722977; c=relaxed/simple;
	bh=6Zl9vIVHwDZNJgCLDsx4wsUdqs3E2UhAw3VMBoNQa2Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JY4j66iXaLUWuplJgbNwm6DC4HlONESDhYFjaKBxXgJIBjz+OIBtFQ/UPMoWaaBwF45gEFdGaGjiCoa6v0fLBNnkrtwbkSkpevmOR2/HsP45zV+aqhbSrpZO7le1nA2m1a9QtTx1rRxMaMFKGCooomcwK5K9bZXMpIYUR1+hVqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-94ac7f22d23so2088801241.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 07:02:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772722976; x=1773327776;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1FearIthSgJQYQK6tZ23YX42zEHQn30eVQGcgND2I70=;
        b=MidvPfIYU01CTvRmRXVliiwLu7zbi7Ew5g1aZCyEEb3lvjT3x04gyJr3/o5PlF9gbZ
         E5tblICDubMEWAFM7ZmvXUXq4vBRDwV2YGvW//dZJUtgnVv8ktS7E5wx/al4J4HTrZAz
         SkCDHrCHG+oc3k0aMCuwDmo7zqtfeheZy2j1NZaTssGqy0/gL23NMwYhJsSUFYcb9KRi
         5NkivJ0aBtKjTfBYIKgBxHZqnDpx+T6c8BawiReTHWzX6hzxajPiQm6j/AKjRBCYKBsc
         uYv6iMJCYI6a4X5NfH3SSLtThAW/P3sKyLwPbw10nobzVTieaqFeTndJaB5kScBmSKyh
         6+eg==
X-Forwarded-Encrypted: i=1; AJvYcCUQCIhigTNoAq8Y+ZtkYqpCupwbQ92d993Kk1Xd30yl8+62bLt5fgrl2IzSYOlQ8kJLXqdMcLbYxfvB@vger.kernel.org
X-Gm-Message-State: AOJu0YxS2/czPhkeYZXGQMxb3+r4VgJCoTA6XoCvTG3OfbMwlNgZMLy3
	F39a/+62e6btYKNR7OfWe4ch3RflwInrnjaBNmeI4Qwt65gW9cTmB9/BFjkgks1xdmk=
X-Gm-Gg: ATEYQzwQJ/eHqnUwu0vgfYiGW4Xeo10lnvE7dAdVxPVQTLnRL6XEK1cWlbYwfmMxUu6
	RhWJx1j2bGX0Hk6f3BZFAaf7DHyietzqUqnMJ9PtEs/ZqFkr4nbsXT2js/vOhuPOZgp8Y+3WILG
	8vquU6IsT6xTrkbl9jSUekt3Gl0mIosSH2vadTdjle0Suz81tTTy7wowKtQr0Z5C6kmczwOQkch
	7THWEdeNiaooI4zBJGq4RRivUnoNN30K5njXa+hK5Cwz0poFZfyRjnb+HUyzpsKgPwYmeEamTZh
	K460e0gX9em25JM4eEiMZqqVsZBj9aiN66oPp7CybY4yWEdlGOW9SDMlh6rvDgCiqmx7WfXxtZV
	JBhkgxEQhggh9OWSOsguPXYC5GIeK4D2HqLE+8EmgB57S6y24PBQg4Z7MpRvyPNQGJBU5CJXhbY
	J1/j0AmIxfiufheT3doRRc+wCCiKZ5vD2cpwUBTEyYyt4Y9F9dW26tQsETzUGSueHY
X-Received: by 2002:a05:6102:6cc:b0:5fd:f509:c97 with SMTP id ada2fe7eead31-5ffaad7f4d0mr2234731137.18.1772722973976;
        Thu, 05 Mar 2026 07:02:53 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e7af30asm23785148137.3.2026.03.05.07.02.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 07:02:53 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56af73db66bso266694e0c.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 07:02:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXbsvWBt3ExoRd/iV4J6D93PsC8Xl/vnE6zGU6dkRaw44CZzgJv2j7CEeBhn3HVyVWXTToSRmbQbzk7@vger.kernel.org
X-Received: by 2002:a05:6122:a13:b0:55b:74ac:72cf with SMTP id
 71dfb90a1353d-56ae77f888bmr2794961e0c.17.1772722945046; Thu, 05 Mar 2026
 07:02:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com> <20260203103031.247435-11-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203103031.247435-11-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 16:02:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUuJyXesYV6mXNN7nw=VOpFYgWsogAoCf63pi+yBvp1+A@mail.gmail.com>
X-Gm-Features: AaiRm52vG2BAZUBL0eamCi9HbjtrvzGtwKA_siM63_vNfp8vlUDLn3A9WpQIE8w
Message-ID: <CAMuHMdUuJyXesYV6mXNN7nw=VOpFYgWsogAoCf63pi+yBvp1+A@mail.gmail.com>
Subject: Re: [PATCH v3 10/10] arm64: dts: renesas: Add initial device tree for
 RZ/G3L SMARC EVK board
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 3E10021429F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-271606-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.414];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,renesas.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linux-m68k.org:email,glider.be:email]
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add the initial device tree for the Renesas RZ/G3L SMARC EVK board.
>
> Added placeholders to avoid compilation error with the common code in
> renesas-smarc2.dtsi.
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

