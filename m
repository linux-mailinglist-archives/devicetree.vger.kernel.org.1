Return-Path: <devicetree+bounces-314377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pq0AGs4OOWp/mAcAu9opvQ
	(envelope-from <devicetree+bounces-314377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:30:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6EE6AEB44
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 12:30:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314377-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314377-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5DB5F3028C53
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB2363A6412;
	Mon, 22 Jun 2026 10:29:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939AA3A5E65
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 10:29:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782124195; cv=none; b=bv+IRHkKceKey4R92OyyR76g7/BUnlaoHdM79zXJ2SWWtiV7FDDBnuVY2JWaOyxBIxCgHVDq4nEtnSRwYqFcxznXSeKMhN7CoS0/gS9LauVsdItCpVmMtMKUBkft63ISREAi5kMZkZDNShbIY9CYnCUvYWhdCWEhZxvyzrCcU6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782124195; c=relaxed/simple;
	bh=mEIkMOtMjOdnwR3+nT8uGH34yBj5roHB3yKHlaR5JIU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SCwZtXUEB8PA7DQk4kNnl11gxhyUwd8UtwTtl5U2IDZWCmLhGylNFr9Ue9ihts6+8XPt07dS4UM7cP1OFbT8rXR0S8hNZHvCNpfy2yM1hKSVh01bmICVWTf/pagjPaA+Rw7iTxNKwB1KL9gkaZNwW/xDPpX5AJUhoACtXglmMWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-9672199c9ddso768344241.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 03:29:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782124193; x=1782728993;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aC0iMxF0nVG/U59uAaaQJUNktvAjxn1h5vRBJBxTc9E=;
        b=RUXLi7IYGK21/31YKDWXKt70P2a07DhbRvGWZ0G2KnoFIRt1rqEorWAp9KL9fnhSqw
         x8WGem5/JlAfwnxFyae1WOidW+O7nXDDBnQeHVXxnCDvmvXZVeEs6P2+Ps9TuamguGm+
         SPeLHFaMUiJD+BOJhAFnQPOgMnqRsHyX3EVZri/Y6pfA+i33amcE8ITdQm8DnLgAHA0V
         J85fxkoje0tOll86QrZBVNoZUazIjJB5LPtvx+x6cK4nTFu0exZFMcGBfFealRHHx7Ro
         R2XPYREG5o3cTcvY0DTefpAexBhfzJzSte28SnAH5VOT9Uiqmhr4mKimocysyPsoB08v
         n6Bg==
X-Forwarded-Encrypted: i=1; AFNElJ+o3hRXdkeEWjc2sg2hRWsMZbbBZjNPryKS3ZTYFDe+U/HUb20W6b+TcPratA7RxJ585mDjd55Lcrgm@vger.kernel.org
X-Gm-Message-State: AOJu0YyJAyJvTaGksXyQ9yyKihVQbMA9EzMM3Qpy55wFt0TWs/xk1z9v
	4AEQmE8wuEeFde7vVhnGFdYKSa16aQJwFFmRx1YLgd8Bz8Nm4KO0FEMbrdU90btO
X-Gm-Gg: AfdE7cmb2x2GNdnglLCa4RufOFmuUj6406Z5RtZ484UI93pqzamb+CUNmLnGHBkN/6p
	IvdRlVtleIEce9OASScDaToJUpcaASZjflEWlP338lbHihQkMOvwqdgIrSnzcK3ARY5IrjNGtVW
	+prZwy9zsfL8ZJPfUgz3Pstqhaz+kE9ueQA7ZRosgGLU+TX64AvxwDj4Z5VkYyAjMFuv88naqZ+
	f3AH8Ze2bsnCWp64CtJtLwQyEC/UXet4rOzfhxhmIHielOELfQmDDjRThOJsCHOgDTE8zvkMLre
	PEto3CcaxQHVDRO00P5ewkDvlX3N55/Fb44T1DpzZIDFfEofjzS04CDc+OR8UsyBOYfIPOdOppD
	5gYlmKS0/jTrlvDQvvOLtvravWJJLA/nlNYQJQVdfHpv2MYZQTNPMnzWxw/Mfq4JMi/1zr1cqPM
	XEL7e4tZUSgJldR7m1bjR0rqoUB0V03HXQiUmkIx/xosAMgKzFzw==
X-Received: by 2002:a05:6102:6cc:b0:729:c168:ea9a with SMTP id ada2fe7eead31-72a7980741fmr7287813137.29.1782124193557;
        Mon, 22 Jun 2026 03:29:53 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-72b9f7b1e4esm5771315137.0.2026.06.22.03.29.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2026 03:29:51 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-6c25b040555so3260134137.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 03:29:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9tsQwEY6EZkaFhO2z4USRdBk2SXxOw9rCQSWq2d1friZWtBS4MC1eqrXtoDPnlJ6vWXR/cZ/vFpP/q@vger.kernel.org
X-Received: by 2002:a05:6102:3913:b0:726:8813:2078 with SMTP id
 ada2fe7eead31-72a7709766amr6890168137.11.1782124189286; Mon, 22 Jun 2026
 03:29:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260619083951.3777556-1-john.madieu.xa@bp.renesas.com> <20260619083951.3777556-2-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260619083951.3777556-2-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Jun 2026 12:29:38 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXjNkpmDqHBhROjJj=+GfahCo4H+cBfn+VnJtuj1aAS_Q@mail.gmail.com>
X-Gm-Features: AVVi8Ce6deDQyZfxT0Du3-E4B8hQQW2OCjySypNIB9xUTqhsKTdfcfI_rV_X8l8
Message-ID: <CAMuHMdXjNkpmDqHBhROjJj=+GfahCo4H+cBfn+VnJtuj1aAS_Q@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] arm64: dts: renesas: r9a09g047: Add RZ/G3E Sound support
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	john.madieu@gmail.com, biju.das.jz@bp.renesas.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314377-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:john.madieu.xa@bp.renesas.com,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:john.madieu@gmail.com,m:biju.das.jz@bp.renesas.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:johnmadieu@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,renesas.com:email,vger.kernel.org:from_smtp,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC6EE6AEB44

On Fri, 19 Jun 2026 at 10:40, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
>
> Add the snd_rzg3e node for the RZ/G3E SoC with all sub-components:
>
> - SSI (Serial Sound Interface) units 0-9
> - SSIU (Serial Sound Interface Unit) units 0-27
> - SRC (Sample Rate Converter) units 0-9
> - CTU (Channel Transfer Unit) units 0-7
> - DVC (Digital Volume Control) units 0-1
> - MIX (Mixer) units 0-1
>
> Sub-node names follow the new RZ/G3E sound binding: unprefixed
> 'ssi', 'ssiu', 'src', 'dvc', 'mix', 'ctu' wrapper nodes instead of
> the legacy 'rcar_sound,xxx' R-Car prefix.
>
> Wire up all 5 DMA controllers (dmac0-dmac4) for each audio sub-node
> with repeated channel names, so that the DMA core can pick the first
> available controller.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
>
> Chqnges:
>
> v6: No changes.

You did adjust the size of the SCU register block.

> --- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> @@ -912,6 +912,468 @@ rsci9: serial@12803000 {
>                         status = "disabled";
>                 };
>
> +               snd_rzg3e: sound@13c00000 {
> +                       compatible = "renesas,r9a09g047-sound";
> +                       reg = <0 0x13c00000 0 0x20000>, /* SCU */
> +                             <0 0x13c20000 0 0x10000>, /* ADG */
> +                             <0 0x13c30000 0 0x1000>,  /* SSIU */
> +                             <0 0x13c31000 0 0x1f000>, /* SSI */
> +                             <0 0x13c50000 0 0x10000>; /* Audio DMAC peri peri */

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

