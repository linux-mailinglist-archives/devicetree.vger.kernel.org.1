Return-Path: <devicetree+bounces-110354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5810799A2EB
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1721B28329D
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 11:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D213B216A00;
	Fri, 11 Oct 2024 11:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="PGfRjZYv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF5C21643B
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 11:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728647023; cv=none; b=N+aESy6qiHaqYTvkfmVzt9N5b8FQiPLSOAV2SZKDIRYM8UzBSorO7V/GPImSEc77uo813ByTZpl0KIJEh/uv5H00jgGirrF1r7hX6zMCt+G1bPz7s2LUSk0DaW0R/4lDV4DtusZLa991gb10CnT3iWcyeepaSru2Iv6tKY6kzJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728647023; c=relaxed/simple;
	bh=mWcKeontfzrfp7f60f6MmEETNBLjE4zS3Mc56feFD20=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dszotmYRawN2F6lG9Q9J5m6OKtiNhPEmvStt6ez0sc+QJQRwyIPYX0Ij3edHoK7R7tvUUBApHZxPAwFR7YGr216J+fw+ju4yk+9/Tdexe15wOgML7jp3NpFQ6246/mWGIh7pOA4aYsHwqRHgNyKQS9rg4ehw4/Nv7aP8eFS59oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=PGfRjZYv; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-8354cc1ab0cso62695539f.0
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 04:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1728647021; x=1729251821; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ovf+VMWvRmikxbDrCpt5EY3ct9SPxEo1lO8nMoHDCU=;
        b=PGfRjZYvIezoX3JRlMEjwe9iTXQKrgdzxUCbg6PunShEpmU/pd7Qh6pKIU3cQ+ld6Q
         1xIUr66mYx+ituRCxmphlzHXRCD1QoaKQaPM0x+WEDulBy124mkzVWaCo9T3Nb86emJq
         CkQ2kCcm9r8EpFOYXZbMIVve5f4FV2NCaTg5nRXuEWk8Fd20Ao9PhrHbbPV6pP0CAaUx
         5DWGS6t7/NE7CEsrdBOUC9/G7cQ3wHASGyWS/VfwhBMSEnGpTkD25p75gX6fHswyaEH4
         UITt0+AMxWmT5lyrzDmgnfjRa9HO3oSfpLlVPpQoZpJ7wEWPDnqFZ4B3h8E+dssxloZ9
         YgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728647021; x=1729251821;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ovf+VMWvRmikxbDrCpt5EY3ct9SPxEo1lO8nMoHDCU=;
        b=TFIpPYNL55AsaLKjrBKM7sfBfEWCJS8OlGAOlRyqjN24vf2IO2ooKSD1MGYalPnier
         IVUmFqKfK/GSsNR2nQLB7zJC+RPwjwX5tc2CqngtiPsfeQ9DtQA1pFdR3kILBBDMIeBr
         z/VnS/oIAkutsVPwD/d1rqHiuAzCyYUc167U6MHvimAOsMLhpQrMphlYnbboDloHAvJe
         L9j6h6D/SD62RN1rL8G2eMZHY8vfgOJhFlpmrqp1xmFoEKcm4RyyLMXeITe0TNjA7f+B
         cI8jpIeVSnPDFppWlHgq98DpAMBUqdd9MN2hQCkl7kXyZ32HAPH2e2sR39IxLkZ36YnC
         vrEw==
X-Forwarded-Encrypted: i=1; AJvYcCU9XsH0x71s32KzSSg/hfpEtCDeohfYBOWNkFyA3ZHQHoZqKj9OoDAqyekUaLV8SdCt7/qGX2l/4CHO@vger.kernel.org
X-Gm-Message-State: AOJu0YyUHYTVZicWLb+EM47i6beQTf0oVBiQBwdIhZA0BEVZoeaJLiqf
	w0fy5PTWDNr2jXZdBScWla+Ed/KX6HDZgtVSlS0DZR3KW5KHR1CRWOuJdSImHItjxPP6b28I0bA
	zo2XZGzOyx8j4M3NG54yvDYh5RaEYddebeP/y2w==
X-Google-Smtp-Source: AGHT+IHrNQBq2saNjK73V1T6HuEouWOtzpJQWDAr8+Lmcf5QP/uhztfapf3Yw6Qr2s1M/KXX4B0xAsxQWbLFxqc5Tgg=
X-Received: by 2002:a05:6e02:2192:b0:3a0:7687:8c2d with SMTP id
 e9e14a558f8ab-3a3b6019b61mr12545025ab.26.1728647021428; Fri, 11 Oct 2024
 04:43:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008-v5_user_cfi_series-v6-0-60d9fe073f37@rivosinc.com>
 <20241008-v5_user_cfi_series-v6-33-60d9fe073f37@rivosinc.com>
 <CANXhq0pXVS2s-hZNusPLoQ4qPkyi1S2BTQ-FyAvcz=cDctKQng@mail.gmail.com> <Zwj7aZj36TBGzpZa@finisterre.sirena.org.uk>
In-Reply-To: <Zwj7aZj36TBGzpZa@finisterre.sirena.org.uk>
From: Zong Li <zong.li@sifive.com>
Date: Fri, 11 Oct 2024 19:43:30 +0800
Message-ID: <CANXhq0q49k6q3ZGYqzczMeFr+_rrfa9mL7FMu62xPHeUKfvhMw@mail.gmail.com>
Subject: Re: [PATCH v6 33/33] kselftest/riscv: kselftest for user mode cfi
To: Mark Brown <broonie@kernel.org>
Cc: Deepak Gupta <debug@rivosinc.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, 
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Christian Brauner <brauner@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org, alistair.francis@wdc.com, 
	richard.henderson@linaro.org, jim.shu@sifive.com, andybnac@gmail.com, 
	kito.cheng@sifive.com, charlie@rivosinc.com, atishp@rivosinc.com, 
	evan@rivosinc.com, cleger@rivosinc.com, alexghiti@rivosinc.com, 
	samitolvanen@google.com, rick.p.edgecombe@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2024 at 6:18=E2=80=AFPM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Fri, Oct 11, 2024 at 01:44:55PM +0800, Zong Li wrote:
> > On Wed, Oct 9, 2024 at 7:46=E2=80=AFAM Deepak Gupta <debug@rivosinc.com=
> wrote:
>
> > > +       if (si->si_code =3D=3D SEGV_CPERR) {
>
> > Hi Deepak,
> > I got some errors when building this test, I suppose they should be
> > fixed in the next version.
>
> > riscv_cfi_test.c: In function 'sigsegv_handler':
> > riscv_cfi_test.c:17:28: error: 'SEGV_CPERR' undeclared (first use in
> > this function); did you mean 'SEGV_ACCERR'?
> >    17 |         if (si->si_code =3D=3D SEGV_CPERR) {
> >       |                            ^~~~~~~~~~
> >       |                            SEGV_ACCERR
> >
>
> Did you run "make headers_install" prior to building kselftest to get
> the current kernel's headers available for userspace builds?

Yes, I have run "make header" and "make header_install" before
building the kselftest. This error happens when I cross compiled it,
perhaps I can help to check if it is missing some header files or
header search path.

