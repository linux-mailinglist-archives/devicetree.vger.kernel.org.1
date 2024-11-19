Return-Path: <devicetree+bounces-122978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C06F9D2F87
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 21:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6F15B26DA0
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 20:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 650C31D4150;
	Tue, 19 Nov 2024 20:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=atishpatra.org header.i=@atishpatra.org header.b="CqGo0o+u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEBD1D318A
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 20:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732048362; cv=none; b=mN35nrnEoDxyPa46TfmS1Iqvf6qnqM9KfPSw3XtzPmqXmNbJpkmNEXQLX+9qWxXJugICzBuOqjgvqd3FvRe6eKoUsUknF0tctQY4Mvh+CHJfac2UKKMPDrHtDkoDaQoZmku4wD/bX6TFeakDLcmnaMtH6ckydIQbyzj1BP9CNMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732048362; c=relaxed/simple;
	bh=GLCB1gqgidh2CB3MXuc8Qvp3m7YFBIgllq1uKS/FUeY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f7+0xCrpatwIrw0NjdWobQC6fjEOuOHHhwYOWKhovNPrnD3jWlnFc++6pETqHovagbwjF447b/JKUHc6DujK7EDGnYfB+pJgV+18Gus8MFAoau+Y3/mUIv6C/Gd02LFxMOP7Ihqf7jDG8naKrFprKOvf+BrQ3IprkkcyTIppZ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atishpatra.org; spf=pass smtp.mailfrom=atishpatra.org; dkim=pass (1024-bit key) header.d=atishpatra.org header.i=@atishpatra.org header.b=CqGo0o+u; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atishpatra.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=atishpatra.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539ee1acb86so3703794e87.0
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 12:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google; t=1732048358; x=1732653158; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hWYEkOWioHzgVeGfpq57ujDZosgAfTiRf1WJliLcrIk=;
        b=CqGo0o+uHVyRUto5Dbc+EW+KMonBs23jHfxJDdcP7wV2wn2ExNzBAdZc9dVR3dtsht
         axlUsGQVCT6wuhX6h+LSbVm8NUn/X1T2dR0MDSszzuDr1EzEZjMui8chFEeCu+z5bSno
         AAsfkdxMh5YDhLjQQstYhCw3DCD+wGuMM3JPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732048358; x=1732653158;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hWYEkOWioHzgVeGfpq57ujDZosgAfTiRf1WJliLcrIk=;
        b=EVxFp4r6IHxLNn5op5C1prvAdVM/V87jfQ/F7dMq9nM9N15S5V2uJZnSQEqeipz27y
         8elI/GGcryGCkwTBr2C/KJqnPzumXH4YQdRJ0JalUe9UoX8u4T6VvQkVnGBiTa4PGF1q
         fEirEzK9STZMojUezZDDBXO9fxqXaUM7AZHg/aEE4++6dDLcNUgAudJF/4RnI2IPeEoJ
         TuijfhnypJbfuHKxps3KYnZjxX53jQyC8C8QoEHwHkeh7rZU75Pp/TFPer5/niA1Bxhm
         JCLq4mIl32qdPAZ2OOIHo12WpVa3InhsFGtSN7yurER0xHIZLQzO+2cfWtF3JgPtx9z2
         aKNg==
X-Forwarded-Encrypted: i=1; AJvYcCUDPylvDS4Q2x+cPjb5ttYxcJ/dcc2jN/ZdEvhOA2NbTwKvJjGZAQRyCAJTfo2I6rBPLrZRgiOpjZ5A@vger.kernel.org
X-Gm-Message-State: AOJu0YzDjpjCxyAHimpyUopxnmDw2GVDAsY6rB+BiUNjjByUHKScsuGS
	mKWel3MUS5PayR6Tzly468false8m8Uf7Koa/ptXv0kmbN+lCx5wlPEHI1sa7KdJEkyhnlpMJFk
	V/pBi6GIDCIOwd60UCSVdsv+/MPnSZQTjMU/b
X-Google-Smtp-Source: AGHT+IHehrUYEzEiAX5rp04UBz9YHJyIrQz3EVW0EutgehQKYe+7DHzI9LMwa0xr58vt5qaV/wiuwXsHZJodWJ94xHY=
X-Received: by 2002:a05:6512:2347:b0:52e:98f6:c21f with SMTP id
 2adb3069b0e04-53dc13338a9mr32181e87.16.1732048357488; Tue, 19 Nov 2024
 12:32:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241105183513.1358736-1-valentina.fernandezalanis@microchip.com>
 <20241105183513.1358736-3-valentina.fernandezalanis@microchip.com> <20241111215220.GA1993016-robh@kernel.org>
In-Reply-To: <20241111215220.GA1993016-robh@kernel.org>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 19 Nov 2024 12:32:26 -0800
Message-ID: <CAOnJCU+ac07aT9jLf5zqB+HnzHyqLMZE-Mz+cJDTdMAkS6LRTg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] riscv: export __cpuid_to_hartid_map
To: Rob Herring <robh@kernel.org>
Cc: Valentina Fernandez <valentina.fernandezalanis@microchip.com>, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, ycliang@andestech.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, peterlin@andestech.com, 
	samuel.holland@sifive.com, conor.dooley@microchip.com, alexghiti@rivosinc.com, 
	ruanjinjie@huawei.com, takakura@valinux.co.jp, conor+dt@kernel.org, 
	jassisinghbrar@gmail.com, krzk+dt@kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 11, 2024 at 1:52=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, Nov 05, 2024 at 06:35:11PM +0000, Valentina Fernandez wrote:
> > EXPORT_SYMBOL_GPL() is missing for __cpuid_to_hartid_map array.
> > Export this symbol to allow drivers compiled as modules to use
> > cpuid_to_hartid_map().
> >
> > Signed-off-by: Valentina Fernandez <valentina.fernandezalanis@microchip=
.com>
> > ---
> >  arch/riscv/kernel/smp.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> > index c180a647a30e..d58b5e751286 100644
> > --- a/arch/riscv/kernel/smp.c
> > +++ b/arch/riscv/kernel/smp.c
> > @@ -43,6 +43,7 @@ enum ipi_message_type {
> >  unsigned long __cpuid_to_hartid_map[NR_CPUS] __ro_after_init =3D {
> >       [0 ... NR_CPUS-1] =3D INVALID_HARTID
> >  };
> > +EXPORT_SYMBOL_GPL(__cpuid_to_hartid_map);
>
> Why can't riscv implement cpu_logical_map() like other arches?
>

We can and we should :)

> We really should have a common implementation too, but that's probably
> too much to ask I guess.
>
> Rob
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



--=20
Regards,
Atish

