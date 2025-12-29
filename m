Return-Path: <devicetree+bounces-250013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DDCCE5A55
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 02:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D7AD63000936
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 01:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB661F0E2E;
	Mon, 29 Dec 2025 01:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="m8Ttw+Ty"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A55231EDA03
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766970524; cv=none; b=N+18RPB65F6KmbCn9NxNJ6SBeHYhZKP+9kMG0ZvtPnN8Ajk0fL40d0Pcs+gC34NcZJYJE/KlhzoLNY+edAiJF9kXhHMbzT3aNFJwj4qfbAyrg164ygOifjp7z0SctUpFjCw7xWR0fUnY6TndKzVRjJ6hCn1VUkfwfMmONmgOEsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766970524; c=relaxed/simple;
	bh=f8xb7f7Wc6cleIreUIT0R3KFYnTxJ7Zn4E5sKYJ6J/w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EaX8/uGiduIxDaCl+tqwQU6OBciRXgxpG5HpGoRGhhdEBvZKvibYgla7CHnzjaYkYA6bgw12JzTj3+wsjukngUT3WvWfjgYdj63JbR74VITYfkvRvV26aatifc+0y3z4FiloH1YeeGcV1KplpBoxUUgDjKG/DE6+IpNQIUwNhII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=m8Ttw+Ty; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78c696717dbso70183147b3.1
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 17:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766970521; x=1767575321; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1UE85kVGf+q8GmraHlXZAv1blLIu7cHa4ZcemBTV+hE=;
        b=m8Ttw+TyKjH9U+HMyMNR+M8wgMwLaMUG+DgCB3WpJumdxLxKcSvKCasHdZDthzGSR2
         mIGgeFP80wmFmV04fX28rtiErLIITFyA825hCxKYPyA2OkjAYfsPkzPTLoWfIIaHHtMJ
         VyeUk+z0pNtotYaGCgwOg1AWcCfjcsq8Xr0Vm/xFlPX8fAHfaW2hrMhPLfA1N4glKvlr
         4WcV48TQJnycpwjPIiinvmyDhVUgX5iqMvJ/rr3mOQxqy8Usb9hCitylJOlhxdV3e2Hv
         heTRspCj5kbkHJLkcM8VqpZvCXojl5k0zvk2Sd8dieJLeELMoMrf5OJsclDc91OvHOVM
         JmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766970521; x=1767575321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1UE85kVGf+q8GmraHlXZAv1blLIu7cHa4ZcemBTV+hE=;
        b=vuzgEiogx+ifmAeIRNcaANzUKQXCs9EHQD61uuDNsLzZU1/rmp/zkL/19Hgx7dpEpL
         Yqp9T3dg+iWmRvggE8M70x+cK4LfRqzOYwm+0AcgKOIttu7cPSyvaMUljVs32Np9zt3R
         zPDVaCAPHrh0Pz0rERYU4HrYtI9EXRnf2fLHpdpsjbsNwLXUX0Ykht0Xh8uapq5Irh/+
         P3Rn34T/zic3XAQAHRTBB/QYnJTYrUuY6Hb9gvn+h6X+9T6ys6+zh4ODiGivok/5stpg
         8loQzYgkrqoxECwEjImcTYrmapJTpI7ufRbmUKFiz3YleRJyDAHPJ+Hifpvutauhyzsp
         zH3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVyCBzTMz94d8x00eU2sy4gWAnZLDqaX3Dsunv4ujnJIaujveZAdxHmFckxnL/CF0CjjQD7R1XQWzq5@vger.kernel.org
X-Gm-Message-State: AOJu0YxFYqp7vXCw3QgX9CsBKL+N6ZXLx1K1xBEmfS6o/+fdyYKWLT71
	BQvXxP95O60cD0lpi0HyY1kUoyl6ubtVlqvYEnmg3WXiN2YGIt82V2j+aeBPuplj78Zgti9YrGA
	SrEmBx3scj3qx+syZQl0rzeGSck5gFoPjECiCS7WGu728LrvaPQVpx0xAWQ==
X-Gm-Gg: AY/fxX6AlxGp16UNOnygH7cvZ3VxWOz1WDw6fen0CqyF0pdaMXnd24beJDkX3lzAAiJ
	MFXrlNWjLtqwW/qB/zjhcfOK2FqVh1vVmX+IMcpyxG4xKlyWW7XOFlkn/96fpyhe3xg9qpRsPNb
	0ukTqvhHjrEJR7uAatu+Fih9og0LyHBdUm+8N7RjsJ4WY51LurRCUPPE28v0waEg+wG0yW8bKUR
	08Ir+v2Z/2W4iAqKvsCZ2CkP56UwW1SFvc9XL+A6pUfyyALonULvpHoZ1mZPs9bxIPGl6d969Hg
	jHIFSr9xcatzvs4BEbJUkZHDlloscCAtHe9Tqg28L5Ql
X-Google-Smtp-Source: AGHT+IGlhu2CzzIyPT/4Xs4SuTdCSDyVQF/LBTPCx5u8EgG/qGO3ektOwcMaY7F0RocF4UkJ/Asz5Nn328g1rSwFXmQ=
X-Received: by 2002:a05:690c:6186:b0:78f:a615:2739 with SMTP id
 00721157ae682-78fb418785cmr210976517b3.55.1766970521358; Sun, 28 Dec 2025
 17:08:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-7-3af3f3cd0f8a@riscstar.com> <20251222-stitch-preachy-3fab87fd6f0f@spud>
 <CAH1PCMZ7ywZ3unLy0yHYK+fFHk0y=q2cEtPnRi=qSpf=fc75rw@mail.gmail.com>
 <66c0676a-7920-4825-b916-3c00b1648a08@riscstar.com> <CAH1PCMbBURb=DpChf+Y-DjYjzpXG-pKgoaHAu=TUuG4oVC56cg@mail.gmail.com>
 <5979c8ef-b0fa-40c8-944d-96e226fbcbe8@riscstar.com>
In-Reply-To: <5979c8ef-b0fa-40c8-944d-96e226fbcbe8@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 29 Dec 2025 09:08:30 +0800
X-Gm-Features: AQt7F2pCBTgDDH1FNzfMutsdekE-nmpYuROoap71sR-N9Z3O3k31kEU3EyBRcKQ
Message-ID: <CAH1PCMZkQ11-Uk5GnyetLkNLOuO3gs2o0WPWHrFMWVH9R6s8mQ@mail.gmail.com>
Subject: Re: [PATCH v2 07/13] dt-bindings: riscv: Add B ISA extension description
To: Alex Elder <elder@riscstar.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, Andrew Jones <ajones@ventanamicro.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 29, 2025 at 7:50=E2=80=AFAM Alex Elder <elder@riscstar.com> wro=
te:
>
> On 12/27/25 8:51 PM, Guodong Xu wrote:
> >> That's what I understand it to mean, anyway.
> >>     https://github.com/riscv/riscv-b
> >>
> >> There's no point in supporting "b" in devicetree to represent
> >> the others if it also requires the others to be present.
> >>
> >> I think that, instead, "b", "zba", "zbb", and "zbs" should all
> >> be allowed.
> >>
> >> I might even go further and harden the requirement, saying that
> >> if you specify "b" you should*not* specify "zba", "zbb", or "zbs".
> > Historical reasons here. "b" came too late. The chip vendors have publi=
shed
> > cores with "zba", "zbb", and "zbs"already.
> >
> > That's a migration bridge to require "b" must be listed
> > together with the other three.
>
> Are you saying "b" has already been included with "zba", "zbb", and
> "zbs" in an existing DTS file?


The risc-v ratification timeline is:
"b" was ratified in Apr/2024, which is about 2 years later than its
components zba/zbb/zbs (these were ratified in Jun/2021).

I can do this in linux kernel, writing a dts file which contains only "b",
but no zba/zbb/zbs. The linux kernel can correctly extend "b" to zba/zbb/zb=
s.
ps: after I or somebody adds the logic into cpufeature.c.

However, the problem is with the older software who reuse kernel's DTS file=
s,
and recognizes only 'zba/zbb/zbs'. (If you search in the riscv/boot/dts,
you will notice a lot platforms supports zba/zbb/zbs.)

When there is only "b", these older software may just disable the features
related to 'zba/zbb/zbs', because when they developed their feature,
"b" doesn't exist yet.

Hopefully I explained the logic clear this time.

BR,
Guodong

>
> What I'm suggesting is that (unless someone has already done this in
> a DTS file), there is no reason to require "b" *and* the other three.
> You should allow either "b" *or* all of the other three, not both.
> That would support older platforms as well as newer ones that use
> the more concise "b" only.
>
>                                         -Alex

