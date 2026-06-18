Return-Path: <devicetree+bounces-313414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id damJBObNM2o2GgYAu9opvQ
	(envelope-from <devicetree+bounces-313414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:52:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2B469F830
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:52:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=J3wENa60;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313414-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313414-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6388430530EC
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B54F3C5DBA;
	Thu, 18 Jun 2026 10:49:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E1A3EF0A8
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 10:49:40 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781779783; cv=pass; b=DcRdUZ43lrp4tK0seQ+D7U9Ame0Pt/P9QLtExtiWiJuDp3EHZfHjBrtsf0uih2NWsaWhT7368/vDzfOKsxzcZUAEJvjunFKM+TVcWtKvXJHMDo7G7oSnsAtpq5fcwK4vKMmzBYaaxrqBO71ILJ1Uzm5+vhaKtMT8jSOkjbR88pc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781779783; c=relaxed/simple;
	bh=i0LPAIbHaQDaHzL0HbBEibfN6MdLfmwe/8X8xZtq9KA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MPiU4RzDwFL66VckLkgUpeiZQww8oJDcaXNPfdltJbW+2OYaoERNoVAIIXQgbE9o2uE0h8rmgRZqoROarG8Rlgxw11LNvpeY2r3wb6LF5zpABQYQ4GtolJuvZn15LaRgbIVAJHC2naDAANtd86YLhr39cb4CSleYYXrjGfpuE/Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J3wENa60; arc=pass smtp.client-ip=209.85.128.49
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-490bc6a7958so14660945e9.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 03:49:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781779779; cv=none;
        d=google.com; s=arc-20240605;
        b=CBnxvliiTEgcuJcgpJK36P2peh7vVBxDNuDOsAiM3z4EP5vDgOQN+RpL9CkjALjoHf
         CesbBLQV13O204xeb9e3pnZ62wP+c3qAqSJWDL5NLYDVRFb092oZk4s2IfDUzeYcurWQ
         bFlET4Uo9kaGa5vKzLNVGPCVIkXNX0yYwj3R4TfRVF8/wICGr2RPG/G8n8LiUT5ncQWB
         zT3xRHDODfT5aPp+zSeWnrjr7/4DGwqKA0bwFXXMO5YpK5UTVJjSIRRRWA317FpHpWTb
         M3CuU3/EDDcZjNtUV3fGsFlvo4Ftvlb/iLM2YzgaIUdkU/eBO1U/m7smLBKmGaL30Esg
         VYig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=i0LPAIbHaQDaHzL0HbBEibfN6MdLfmwe/8X8xZtq9KA=;
        fh=2Ex9Hjml3PoCfF2aIererOISL9r13TlpfqpE68NhlpI=;
        b=Bk2xm6QrN79lZbYNARiDJTFC1NbYWcZJkXX20wAX8mX6f+DBHoKGbqZ+SnWDZgMBOs
         XKRPcXjxctnrS3ND1ETc4VpqqfHeBJr6m0b63s0H1vtNnxM1oli5ROEdMNZCJlgRlwPp
         4HMRZAPCJ6yBKu9mci6C+KjPTf7UU4ZwZ5ndDOoQ0o8Bo3ZuUEYhXnzaNYD9aBs3MPUO
         Kg/lMjjGSFRfiDiQgWaQ16guMMeh0b9HoqzsftCJ+btjXysyr3MvYOd8WMJ7i71MNEhs
         BUXSxX3V0nUdyML4kT4Ii0H8+9aczJJO8AzkP9MEYA0E3/25AexBEESlLSjq76dPElPo
         r3tw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781779779; x=1782384579; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0LPAIbHaQDaHzL0HbBEibfN6MdLfmwe/8X8xZtq9KA=;
        b=J3wENa60BJlFNPgu5MC4i8o7aET2JQXdZf0KIVpQfaukhLBv64LQ95aqYHz16NumqO
         wVs72vDzV/+tbrkOSActWfKatfDdNa4FCH/TmNHeNpc6vOq5l60i5LtJv9I5jvrXmIBZ
         CrYtRsnxP3qMJoXyJ6uqQXK1rLArAZyVb+bTPeAJ5NVsU7Tl0e0KFtBs6r57HCrkd7Ct
         pZRbdnf5RLUgZoIrPizosgZCpMNGXKNGTvCp4n/DmzGYxtQKZls/yBBbOF6FlWJ+/5WQ
         TBb+b780RtxjB+3x80FDQMrZBbu5U9IiBo99s+kCzVcqjaz/lYrKXfakjTsRX7SbKi8B
         yZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781779779; x=1782384579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i0LPAIbHaQDaHzL0HbBEibfN6MdLfmwe/8X8xZtq9KA=;
        b=lQa2Bu8Vm1fDQ7cEmfVV6PBTfksMh6/y9/Yi5yYOKARHOyyusB/We2fbexl5OEhAnK
         DbSC676qHGg8LRGQRgLUgl+tRC1v/GhBxh8urA3H/pAKXhgevbexdDIAuXdriMmeopo3
         CaAiDRiA4mmN1Qw8qz+RSkZxtbpaPpgQGXDicWev8GddEjWsmGXnzMOw9k1jb08iZqJE
         EgoJE1BLwdUOEWwzQ9LQ7eyZUiLSfRzalr7DEurh7g4IdIjPHMdu2kYjR63/6/b81+Sn
         Gnp5qxUXpEcYbgkNVa1pi3OGx7hfflAV0vR0lWSWOKh0dDmkR2UoXW+3yWdF2N/e9HzP
         /ZDw==
X-Forwarded-Encrypted: i=1; AFNElJ+fzK7jXt6nWg2Qa1BxyD5AoxyergY392iTbFOlJWKpG41r56E6g0lzrv1W8KJr1h4QpV8kJW9ImQET@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq1l6JPXWHWquE04zztfDQwHGCxtcUUybg24/07bu9ozuCYZPO
	8GB4sitBspmpSl+d6nncA2CVVlmJCXq/sW+iIRq1nv7qoKfaCXy34etP5CRP3LHpq23lX4/SRQC
	ouTqlH6gTCQGG3MrPz885PlrZhfTgiYb+E/EsU07YQw==
X-Gm-Gg: AfdE7cmWwmqs3GDihp0CNsyCgU7F283vw35VP6mEcYPeNbJhDyTAmBYqJRxjWb5gMjX
	wcfGaMhK4M9PpzbT22on073nkXtxvyB6etjxhYmuQ+YvUAx6EOjuT+CX0VTkWcx1sUlzKH8Zodm
	TrafvXLnLJWFXZ9effAgyl5Kk1A65WVqOrXym9AjzclT0L5+IQajLcyWll+9Cvnpvp/lkiszp9s
	+nZr0O21qmDfru8qCC/2kXv/0IOhjJMZ32DmmIm78Y477B2NfaIQ3cmyRFKHXKOjfNCDDxw7LMo
	g6t+omaE7DpkebqBKttZWzogDh0qcEabQxLAGPwh+5mO77ZzmQbLNS4a5MSiYhi40ZYhs/FV/FK
	U3PkhPk42n5lZJ8w=
X-Received: by 2002:a7b:cc18:0:b0:490:af46:5c68 with SMTP id
 5b1f17b1804b1-49238169164mr41010675e9.7.1781779779249; Thu, 18 Jun 2026
 03:49:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615154805.1619693-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260615154805.1619693-8-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260617165538dad7e36b@mail.local>
In-Reply-To: <20260617165538dad7e36b@mail.local>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 18 Jun 2026 11:49:12 +0100
X-Gm-Features: AVVi8CcVzeG9DZs1UJrNQL_uvR_wiTr31L-zM3pE70n6KHb0bc6nE7Z0AGIpfyA
Message-ID: <CA+V-a8uHVR0i+3PY_qi3i0H6fMJSUFb=1cwrgw0VeztVQk-dWw@mail.gmail.com>
Subject: Re: [PATCH 07/12] rtc: rzn1: fix alarm range check truncation on
 32-bit systems
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
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
	TAGGED_FROM(0.00)[bounces-313414-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alexandre.belloni@bootlin.com,m:miquel.raynal@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:wsa+renesas@sang-engineering.com,m:linux-rtc@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[bootlin.com,kernel.org,glider.be,gmail.com,sang-engineering.com,vger.kernel.org,bp.renesas.com,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,renesas.com:email,vger.kernel.org:from_smtp,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B2B469F830

Hi Alexandre,

On Wed, Jun 17, 2026 at 5:55=E2=80=AFPM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 15/06/2026 16:48:00+0100, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > alarm and farest were declared as unsigned long, but
> > rtc_tm_to_time64() returns time64_t (s64). On 32-bit systems where
> > unsigned long is 32 bits, the assignment silently truncates the upper
> > 32 bits of the timestamp.
> >
> > Fix by declaring alarm and farest as time64_t and replacing
> > time_after() with a direct signed comparison, which is correct for
> > time64_t values that will never realistically overflow.
> >
>
> I'd argue that this is never going to overflow ever as unsigned long
> gets you to 2106 which is way past the usable range of the RTC so there
> is a trade off between the size you are going to take on the stack and
> the actual usefulness of the fix.
>
While it's true that unsigned long lasts until 2106 (well past this
RTC's practical lifetime), rtc_tm_to_time64() explicitly returns
time64_t. Using unsigned long causes silent truncation and types
mismatch with the API, which modern static analyzers flag. Given that
this function is not deeply nested, the 8-byte stack trade-off seems
worth it for type cleanliness and consistency. What do you think?

Cheers,
Prabhakar

