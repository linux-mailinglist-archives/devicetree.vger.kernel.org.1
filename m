Return-Path: <devicetree+bounces-265463-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIBVB65uj2mwQwEAu9opvQ
	(envelope-from <devicetree+bounces-265463-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 19:34:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F4C138F4C
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 19:34:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0688E3032777
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 770CF27466A;
	Fri, 13 Feb 2026 18:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AgyqXJ9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235C17555
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.217.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771007659; cv=pass; b=Dr4bvxDdRHFvsUA6IsmLih31lerK0jiWahMsXuKsjSeyGeUQZYRW0/kzsWuvgozXtCoWst/IL0LC9fL0gM6xACUKoAOTkAjOkO+x2W37T1285o/OjUD13kbwEH9T/DEJQefyn54MV8/YRsEnA2HDu6NHXP5s0Cc2xmj1SPEGp+c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771007659; c=relaxed/simple;
	bh=FwVJbWMMKleMxz5v7RtaxIChozoLLxAFM5j4d2CEQjg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PDu3ya4rmvvRqe/tx9xvXeAi4BCCIWwvHk/sGDoDoQTYOpvToR9MtzY+QGX/OyikiX4CaGLteDvLFPJ6tenZmSdcI/VKQ1vCu5LbT7AqjfYz1wQ5QPsoc0cy65bxeo5qZxn51AeFQBun4Pwb/aAUIyolC32ElVyPdl2hYI07g/I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AgyqXJ9j; arc=pass smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5fc414b9c99so748344137.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:34:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771007657; cv=none;
        d=google.com; s=arc-20240605;
        b=Kkmg6XWw/ycZcXizxWLNq4veqxW1gG9bwPdksF2PBE/T2ISh8PG0EnZW5xFaC4yIwD
         1Ccsgs2dU1db8rZQhH6FcWlygWiN3eUk4a1l+QcWJZCGifCSAvAKpIq9eG55dwcd0xwr
         hZmyoI9SJ/PAgxk+w/eZ5R8YCiAm9s7ryjN24+v/nmikTJUd6n7iLhD3qhG5RkkdMqsm
         B819XKSu8/sc6ZbtXtD6d7VwV1wkO5TSiDm2Do1X1SW1Lj1wxaN+NataYJ/6PoH9YYp3
         o0oZpyt+VeryRJQW6i2HT9SgkIi57VlepmkaA6TYB6t4wR5j24NymeqyyNEMTv750Dch
         fjAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XSEcRfSuU0CV419+p4rduaxz/C4FTrvfoizBmndk28c=;
        fh=yhXSZQNTelwk46ntzkM0SErdBrd/c8t8/IS3vXNhYMg=;
        b=acBF8BLUPHRz0G5UYGwOyD+TO4kPkIvEmOHwy1ZihlR0YpU0CHGw+8iR0cDldIZcIA
         5eKNpUaHwnaS9Oz+xpqvj2rjArO0YAL8PPFsOQr/HmDcn1tnlQPzc6HfR7MNqvdXJzC8
         e8SAVFVO3Vk0cc0hHrwYEEdn1z/KbbQqra+r2OxUaIdqDSnOn0+2b68s4UEaavtcN2SC
         oXEK9IKnW/cCgjVO8ZeCK8cNulQVLBEtbOf52VCDKvd0S/vfsuDDMfKTzD8ainAJaWLe
         CEcpjIpBehjDEaZRuQa+Gv61tTK9PFgQQqCXEm67K+plBTDQRMqz6YxwYhd5vi3aR1So
         1epQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771007657; x=1771612457; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XSEcRfSuU0CV419+p4rduaxz/C4FTrvfoizBmndk28c=;
        b=AgyqXJ9j7BB7S5HRg0dtRSd7j4vasKYZrQI9V3+kAUaZtkq9xZP9pBd7lSCZY490G6
         +hI0VP5Lov1Edg/zXZRMuRF089ZKkUOa/fMJEgcDxNJmXKOBaRU00XNfYx2L3YU26SD4
         ZEPYJUz77G/EzsgRYf8rBjWNKHsZrsgpYMBWfmYHdVQFHuzH4pLcBzM6AmzDPTgYCAak
         fRystUPkXDF79apQH4Q5tDKnZRPujta5Rg5naqY+j0S07q/Esi3T19VNi9lx1ga0ctuj
         26Fy7KeiJrPA4780i5I1Uqb8zsC9ZIoN+Ix8A+4SBEzCUBzHB/HGxPkpHPRKMndVpy9u
         eWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771007657; x=1771612457;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XSEcRfSuU0CV419+p4rduaxz/C4FTrvfoizBmndk28c=;
        b=fHh5ycbdo/ZECqWaudSH3PAzd+O9v1x6lCrWjX8KClcoZydl1lUTHrxqUC+13yZeEx
         Dh36gfy20nysbtXUz+tVB/s7g7gzsdI0T2bLFglkJs7JdjaipqDmSWU5y7uOmJFRzFwc
         4AouiW0kunekUI/9nKs+4JDd9irLaQr5O8Nguj9+mioAXuj11A7j2heOxHtEgGRATDJh
         weZsHmBHhSeYczfvNOr7s8RpUPwOF8hKIodzUnUKLXiDL7oNP7tZScopFuCMQtDHzrVV
         v0A3219BKLIireXLJ7EkiZrhUIGUfsl+Zpslj2JRhXlz+SMHPks+4DTpiL0m99O2gMHf
         76Wg==
X-Forwarded-Encrypted: i=1; AJvYcCUI4kCYjHFjyBgG9J8NYVYB3yOsHMgBQ+2EfaDY+Df/2pGUxO3RhCJHUecQJjtD6sWl+Bi927pI35hB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3ZOQBhw0rAPN2pssqwvzCOeffmZANtTcNCMDjzp+TulGjf/hb
	xfeQOIE2Al+KLoq3cuIe4Cx4WWbLiMWBJPPP5qKek7QI9+v4O5zsGBFi6QBlKgBlKi1OYunI/JJ
	+FJRbmHn8RHCzEcG6phQaLe1GW2VeF/tuPL1J
X-Gm-Gg: AZuq6aIGKG+tAHgWogtt3RhZelWhY9UqxyhlmEzRVZCausSU287GaSLI0t7M3TUdcXQ
	9L6M7wE2xKjEmp4lF7eocUZ8vF+Otpc/xfpOZkfVBJopp+VV2epooqN2RkwjHys7zxjqpKyB+Wv
	BbfPThZMw/hs1G8hCiPwzEoI66E0OCiyibfXxXcN032hYEWnU5mJJ9b2KHWXcH7SuLvkV9lxTLA
	fYVY3PpORm3ML0kfylUUx6wTrCT3WTk/bs+RGNhZ0pNslL30D1og0MIvHAuXqONfvDh5qk9NkNi
	fXbQ8oP/AKXL50ksFg3t7suDiQwuiNi2Inpz4YrLfY93omJcqRIPvGGpH6Rc/pB1XSoG
X-Received: by 2002:a05:6102:304f:b0:5e5:6eee:8adb with SMTP id
 ada2fe7eead31-5fe1ac6d852mr1144619137.4.1771007657114; Fri, 13 Feb 2026
 10:34:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <338e6575-ec44-4179-94af-9086a7ca79ac@kernel.org> <92359c6d-06ac-4f8d-baa5-6fa45a536455@kernel.org>
 <CADvTj4q74H__JZftOiXkdsY3+E_Xmcx6Y6i70RQDJ0K09=XOHQ@mail.gmail.com>
 <30026ed7-cd19-4be2-adbb-e8bb155a75b8@kernel.org> <CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxHOV8g@mail.gmail.com>
 <20260212195423.GA787785-robh@kernel.org> <CADvTj4rPq8D5piqEijCdAjkWmZtq3Bi_Kxv-4F0aU4xi_O5WKg@mail.gmail.com>
 <CAMuHMdXmMVgPJv=HhkfttiRnSwFC6c2PnFjYwmL2hu3ikv+t3g@mail.gmail.com>
In-Reply-To: <CAMuHMdXmMVgPJv=HhkfttiRnSwFC6c2PnFjYwmL2hu3ikv+t3g@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Fri, 13 Feb 2026 11:34:05 -0700
X-Gm-Features: AaiRm53po8dVcMDFmA80g5oQsS4yk5KZ_OwyRRbDec63MnnSP10MB1G0057JxJE
Message-ID: <CADvTj4r95E2rLA0ZhOYPeFYpFbj0EXfb=omCN2Mab-Dj4T-cYA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265463-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email]
X-Rspamd-Queue-Id: 77F4C138F4C
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 1:25=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi James,
>
> On Thu, 12 Feb 2026 at 22:22, James Hilliard <james.hilliard1@gmail.com> =
wrote:
> > On Thu, Feb 12, 2026 at 12:54=E2=80=AFPM Rob Herring <robh@kernel.org> =
wrote:
> > > Humm, peripheral boards! So there's a connector. You need a connector
> > > binding. And the one solved binding for such a thing is GPIO! The
> > > gpio-map property lets you remap GPIOs from one provider (the connect=
or)
> > > to a parent provider (soc_gpio). It would look something like this:
> >
> > Well...some GPIOs are wired to peripheral board connectors...but
> > some are wired to things like built in LEDs and a few different
> > on-controller components as well which vary by controller hardware
> > revisions.
>
> Different controller hardware revisions with different wiring mean
> different DTS/DTB files anyway, right?

Just different dtso files, the primary dts can be the same since the
board designs are similar enough.

>
> > This gpio-map feature doesn't exist in the mainline kernel does it?
>
> Yes it is.

Oh, where in the mainline kernel is the code for it? I searched and
couldn't find any references to it.

>
> > In my device everything I'm wanting to name is off the same gpiochip.
>
> That would depend on the SoC: some SoCs have a single bank,
> others have multiple banks. The more generic is supported, the better.
>
> > > conn_gpio: connector {
> > >         #gpio-cells =3D <1>;
> > >         gpio-map =3D <0 &soc_gpio 3>,
> > >                    <1 &soc_gpio 123>;
> > >         gpio-line-names =3D "GPIO0", "GPIO1";
> > >
> > >         /* in an overlay */
> > >         device {
> > >                 foo-gpios =3D <&conn_gpio 1>; /* soc_gpio 123 */
> > > };
> >
> > I think in my case the entire connector would be in the overlay, as
> > the connector GPIO lines vary by control board hardware revisions.
> > Would that still work?
>
> Why in the overlay? If the controller hardware differs in wiring,
> it needs a different DTS/DTB.

The differences are relatively minor so creating separate DTS
files for each subversion of the control board doesn't seem ideal,
I use a unified dts for both uboot and linux and only apply
overlays when loading linux as uboot doesn't really care about
the minor differences as uboot doesn't really do anything with
the hardware on those lines.

>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

