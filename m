Return-Path: <devicetree+bounces-39450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6549284CB2C
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 14:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22ACD28E144
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 13:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B71576C8E;
	Wed,  7 Feb 2024 13:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="QX9qMGrB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A1B76C9B
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 13:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707311356; cv=none; b=G5B7wih+yJEC6RwsYGlw9SXmI1qq0UiJj+nN0CB0InV15G9/+o68ZJvyG3UmU1Le7HkpYmguPS/tlb0A7Rh2hXr8Wsn+rQyr8z+PMlr/pyLkOfKHEFyJdPR5CRpWaLac7qm4bRR47TwYtaPMkUdvWEn1ikPQQFp1YtgIMqudf40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707311356; c=relaxed/simple;
	bh=00E6HIe11CgAo2O0miczqRLxo0ZJcS0ae2ZwIYvBsds=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tAPVYkHr1ICTAooCZS9a7o4dodAbcjt/1peMHP7w32fIqsaQKIygo8KhcBmDNGJ11KVdupg0bskm5zfvo0cMhsRmmWOPNxAJaWDZWwSDmARCevnqxe+gl1lzYZIFGLh44qnhjdeeCYwpp/5b4wDRJTrUPynJv2W1x8Zl5uvrkbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=QX9qMGrB; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2cf3ed3b917so6854091fa.1
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 05:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1707311352; x=1707916152; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=00E6HIe11CgAo2O0miczqRLxo0ZJcS0ae2ZwIYvBsds=;
        b=QX9qMGrBRE/l91bW3xVYKcelFfA9qgDXW/Cn/Ft2eoVIE+vEgCBEM4zTEcHJJ0L4k0
         oN4ovMy0SlD4YmUAa3VEg9v5eSdYyTQSbnygKfXQlar2dFoj9VOoP93y7OEWPwDsv6eM
         O/0xQdKbxGogdc7jXndDILFszupMuyUTvkj6lRyx5d4HgVhhZI+E4CLUJ8l8mkrROFtS
         pnNZka4fYa4Dd6irCI9DK7Y/7pTDd3kFHXl1PF3ugCByWOiTU0Itkq7LPBljNcwWZBp0
         fnbOqg8QklpgsyEWsDkUTD2KpjbBIgwltG5KiOYM+m0cgLM9VJAaCzEmlIyE9ORxZtE3
         Tmow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707311352; x=1707916152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=00E6HIe11CgAo2O0miczqRLxo0ZJcS0ae2ZwIYvBsds=;
        b=sUAY56Yceef6o4irenEi9G83vg7cyuJJ7zihqSkYlmY3ZIB7DQNsP3Z7m+tqQvVE3q
         tju1Xyj+A0kCz02ysVbPJ8ctq3obJcADjKai6Ld69hCBsPv7i3nkoEB2pGY036gnPp81
         NspqshEHkUOwnF/KXu+V3pQeUgQjFSxTqLSh35qZjKAkVm+JOeEgKnQtBtj9Bw2wUt02
         J91ffCT+AbS/l5o+gizd0wwZQ3ozrHd9PJ8h6o5VsurLsV+S2CeIJ/hMCkwU375zKS7T
         mvkeRhM3YRh+7sc0kN+k8Ku/e9xESqobgrS/g3g2+QEqPjkV8taPeh9Dx7CeRuv1aFIb
         30tA==
X-Gm-Message-State: AOJu0YwtcTpuEceZAV0XHRd5AQt6mlPK1ujeP11CiLHh4wyqYLKsOVix
	Md3kToLFTxCduEDSlOHltGpPa/UTIX0CBdDYeeTgcnEvxoVif9MCslTM4t0b6S2c3kI5hjwDoVb
	bYVVHz+2rmp62fsWAt2PKQmqGxkraMenvTLt6gA==
X-Google-Smtp-Source: AGHT+IFdqOXB6ghYnKqxixi71HDIVUyBb6K4yLgyQsY8z+jH6b5Dj0DBcg23SVmyQ/HQ0KyJt1aTiAzz+yQw9qYykWI=
X-Received: by 2002:a2e:9ad4:0:b0:2d0:cb23:c719 with SMTP id
 p20-20020a2e9ad4000000b002d0cb23c719mr1085079ljj.13.1707311352050; Wed, 07
 Feb 2024 05:09:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127161753.114685-1-apatel@ventanamicro.com>
 <87h6ily53k.fsf@all.your.base.are.belong.to.us> <CAAhSdy2PPjS6++Edh8NkgiBmcovTUjS5oXE2eR5ZwPfAfVA0ng@mail.gmail.com>
 <874jekag3w.fsf@all.your.base.are.belong.to.us> <CAK9=C2XJYTfY4nXWtjK9OP1iXLDXBVF-=mN1SmJDmJ_dO5CohA@mail.gmail.com>
 <87plx8y5s3.fsf@all.your.base.are.belong.to.us> <87sf24mo1g.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87sf24mo1g.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 7 Feb 2024 18:38:59 +0530
Message-ID: <CAK9=C2UiOXS7NE91ykvQHc8h8-DUAUwEuMphwC-df3__zK1dVg@mail.gmail.com>
Subject: Re: [PATCH v12 00/25] Linux RISC-V AIA Support
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 7, 2024 at 6:25=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.=
org> wrote:
>
> Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.org> writes:
>
> >>> Hmm, seems like we're talking past each other, or at least I get the
> >>> feeling I can't get my opinions out right. I'll try to do a quick PoC=
,
> >>> to show you what I mean. That's probably easier than just talking abo=
ut
> >>> it. ...and maybe I'll come realizing I'm all wrong!
> >>
> >> I suggest to wait for my v13 and try something on top of that
> >> otherwise we might duplicate efforts.
> >
> > OK!
>
> I did some really rough code sketching, and I'm confident that you can
> get rid of all ids_enabled_bitmap, hwirqs_used_bitmap, and the
> corresponding functions/locks. I'd say one lock is enough, and the key
> is having the per-cpu imsic_local_priv.vectors change from struct
> imsic_vector * to struct imsic_vector **.

I have managed to remove hwirqs_bitmap (and related function).

Now, I am trying another approach to simplify locking using atomics.

>
> Using smp_call_function_single() to IPI enable (and disable if you don't
> want to use the lazy timer disable mechanism) seems feasible as well!

We have intentionally kept separate virq for synchronization because
this allows us to gather stats for debugging. Calling smp_call_function_sin=
gle()
will not allow us to separately gather stats for sync IPIs.

The smp_call_function_single() eventually leads to __ipi_send_mask()
via send_ipi_mask() in arch/riscv so directly calling __ipi_send_mask()
for sync IPI is faster.

>
> (Let me know if you don't have the spare cycles, and I can help out.)
>
>
> Bj=C3=B6rn

Regards,
Anup

