Return-Path: <devicetree+bounces-313385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NdYwEoPGM2qEGAYAu9opvQ
	(envelope-from <devicetree+bounces-313385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:20:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1A369F3DC
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:20:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="ID4/kqZ8";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313385-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313385-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D0E2301F9F6
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C793A3E4C6A;
	Thu, 18 Jun 2026 10:18:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A7A3E639A
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 10:18:05 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781777886; cv=pass; b=abpnbmbDjyNa5dRICvJeBUehM/GBc8vJSf3iCRFqUOmhZSjnLmcvq3ymHm6w7WmV8tTUv89F+DK6dChPe9flILfdWxzriPoqsSR8IAjJw5G9QXjPdVPlMbU5sB6KkNCc0gF4KY6XJgSqbEjyymAp4BUi//yGmu/82/6sMGJWTF8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781777886; c=relaxed/simple;
	bh=d3UI51xhDccu7qrMqr31ZRLTAiml8TgixkPl2atEXVM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UBqsJ001wKsGXUa3DiV84gFOylDM4MFGuJ7np6OZgS03yNX8glV8IM747fR3xMaP9I/nj1I9THlqFhfknDSQU5tF0wplua7HUo93GB55IOboWYD3vh/l00dZUvBaRpoq6MJt4Sj4x7oro3/j4RbDhmaVR/HzSoDBJ+svjIkMsDE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ID4/kqZ8; arc=pass smtp.client-ip=209.85.128.54
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-490b613a17bso5474315e9.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 03:18:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781777884; cv=none;
        d=google.com; s=arc-20240605;
        b=JXuBF8rHexDasTRY35oh2ZwIdPkX8vQTUWVLJLMaC4nd195y3/SgW9l36Rxp0XmVib
         I0pctGC03sBHAO2oRs+MEVIgyU7DLrgl6ytPBlwwWVS9H1+NelHu16zBeIR/f2LyP+lQ
         4YTyF/AMjVszmrWMWradvTK6Snq9PJa7CJhwHx+v9caKPp+9qPp6wlkt7FCTlJqxpBu1
         wnOHLnO9kt1+oB0181QmjEAdCvrb+IR04honBdRgJKe3GgT0am+kEyB0k+Jsee4w7DSQ
         XiF3QzmAJeyMa623RrLHhVsp3Xa9oHXnuc2/c04uDc5wO99TCmGvYjJVJmgqeqtD1sC8
         Nlkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gmshtDYoyJi3az2OMgVxmco1OYRSd0HgGniKLz30q/M=;
        fh=t+4P404+wrsdO1inf8IKnbCslHye4aYfxW+jjL233sw=;
        b=SODYAdrPbId7X00yUi/w1Tr2RtzhoI7U1NGd63OxnmR68AmB+eHS0fUBzOs7tm25ty
         Kt3LFVhq4jNKDDKnvabaEhSUPsNgwBJxooNr1C2rFXc/LkADoNJ7YiOkARM66+8pqo9L
         PPLqQcYPl+nQDVSzwdwiy9LipymA33noLIH+fWZOj7CJJiyAP0iqFUi4R30AlKCPOv1E
         xJ///9bOPgbE0hn0EHgJbZhjyiaJtib+f2GCZ4Zt++7plUzKLPsSIVKXwCBFDLOqI0N6
         FQNVoSo64HzNs4bWxijlCXtZyEgmkupOtDoZadq1yF6vEZ09ENwHTa41mXsiLrCn/2VM
         z1Jw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781777884; x=1782382684; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gmshtDYoyJi3az2OMgVxmco1OYRSd0HgGniKLz30q/M=;
        b=ID4/kqZ8vADaM1lJqaiaYShy3/fKugrn9Q7rHcWSf43WT00yhafJZMc5Ckhd9OMnQW
         VMa5O9snDlmfgAa2HFIE3h6R08cgFcNDz0x0PifG+Rby2aBimayCp9qbbqd0Eg0aLygp
         CYSTu2kVBNriIpIBn2mm6HkOA24sskW3nwQ2XAEXWl7BdcOm+SmqP9mW8nKAVIH9iA5V
         wD6pkZvwj7v9ixyEziF4Kg6ipISsHu5QOd6JAdWJ7SSaQre4mq+pNqIrZ1r8O1ErR4Jp
         MZVWxBpzUJTm0/3h/v12FRgwTPTG0FONamTFanoSCPES+CZBUxY8R/D6omDJqiblGqWn
         sIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781777884; x=1782382684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gmshtDYoyJi3az2OMgVxmco1OYRSd0HgGniKLz30q/M=;
        b=X3z6+EWEsksDQniBCH1/8s1j/ZwQnth+3o4pXLoHufSVkUNmZ5VWd4IFKOChZKjeuk
         79o/gHwnR0wc2A6nMfp8k52m3fOd97HH9HzLO8xy5aF3YqiOkAgE0WOFj/ICy62bYDk2
         puzsSlONSwh4Bn5YUwcL7Q2JpQTONravbqzKM1XDHYWe0jYjf0aGtVrPj86ATixZlas+
         TYq0Nu1fcqxOzlGwj/DZZZ2QNHtW4aywuyAOYJKJx/1MkqEQfXjIYr+VQmuOr3tii2dl
         bIz7mVNrRFV+JYcAPNGdbYEU6NCE+FFiMM7xJbxLlLZFr2MCsZ/RKen+KRL/lmIyI0bD
         7RzA==
X-Forwarded-Encrypted: i=1; AFNElJ/UpnWVihi5sfTj3tbcxbqpanUqAjP+FEMJMtkS3a8rwQFsT3s9Rxj0gHJdXK0Isbko5MbZKydK+6f3@vger.kernel.org
X-Gm-Message-State: AOJu0YwcaD81lxKd+nLzpZUlYOM+PawfOJ/qTi7zu3IFXpdRWScRo8kG
	MsgZdYcFLrojXi0d50ieHJXxUDFTS0NBqyXore7y9rRG0yusOml3DXLcZoPMVKttbypKR+87RXW
	o14f4dP5z8BDG6JqVW/Uu9UvKDHjAmV/T8U5HNzwpNA==
X-Gm-Gg: AfdE7cmG2JvA8CsmeIMIHJ6uM+lSjLUNrlD1tsg4DRPWYVMM5QcdIjPDAhaaRF6CsE/
	OgcIbIezj48SL6oRAefVx+9O3c7qfcMR4CQu/JLDc7p+QfKNNKJ/cJBas4WPhXk8mEaCuN9gzgP
	yGY+YLn3xic/N6nL8uaGEzZtgubNCC2JDs8/6qSiUaTuaD4FOzPjEOv3pY3jyse3SdZ1Cwr1viQ
	Vyms+oOcuioKHF9IrrOBlEEgMivDlbmqZ3XMhLdoY6SyNzWJ0waUm7Nc2a3hcWnOG1r+5Ljwzkj
	yoghfIdLX2OGwp3/MBqa9egu8o9uku1rF7JNpq1Jx76FhC2k+fOOd9+kYW5tXfzZJtRaC4QC7Ah
	gwZhdcSgNkvAg0maoyz1RHh2nPQ==
X-Received: by 2002:a05:600c:1395:b0:490:e5c1:b8b9 with SMTP id
 5b1f17b1804b1-4923a8c402emr24573155e9.0.1781777883721; Thu, 18 Jun 2026
 03:18:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615154805.1619693-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260615154805.1619693-5-prabhakar.mahadev-lad.rj@bp.renesas.com> <ajJvn2YkaspTYx9M@shikoro>
In-Reply-To: <ajJvn2YkaspTYx9M@shikoro>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 18 Jun 2026 11:17:37 +0100
X-Gm-Features: AVVi8CejmAUnxV28-Nv-iRPPqNanTzOmym7-UH_9-4KCncFioQAXLRdjmh4wMqM
Message-ID: <CA+V-a8uKW6QSOjhW0NW3pp4d0+mVh19rYUKKexqCjdD-WThNDQ@mail.gmail.com>
Subject: Re: [PATCH 04/12] rtc: Kconfig: Broaden RTC_DRV_RZN1 dependency to ARCH_RENESAS
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-rtc@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313385-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:miquel.raynal@bootlin.com,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:linux-rtc@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[bootlin.com,kernel.org,glider.be,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F1A369F3DC

Hi Wolfram,

Thank you for the review.

On Wed, Jun 17, 2026 at 10:57=E2=80=AFAM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
>
> > -     depends on ARCH_RZN1 || COMPILE_TEST
> > +     depends on ARCH_RENESAS || COMPILE_TEST
>
> Yes, this helps X5H also :)
>
> > -       If you say yes here you get support for the Renesas RZ/N1 RTC.
> > +       If you say yes here you get support for the RTC found on Renesa=
s RZ/N1,
> > +       RZ/N2H, and RZ/T2H SoCs.
>
> Such lists are easy to get stale IMHO. What about "initially found on
> Renesas RZ/N1 SoCs."?
>
Ok, I will update it as above.

Cheers,
Prabhakar

