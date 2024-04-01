Return-Path: <devicetree+bounces-55144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD24894489
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 19:56:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1999D2826A0
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 17:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3AE4D5A1;
	Mon,  1 Apr 2024 17:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="La2OO3yl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35884D5A0
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 17:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711994170; cv=none; b=jLU0cvWVprubs/+/fll9lJzX+XehbCyXnnFm7EPy0H+x/z/+DKyBPtor8ZWj1yJJP6OXV3f/zr1LOkdHMquNa6jlXwMIcT+8vsEktwzimmmaO9V8NqlUGHUkKWPagPd7mMELsdDS4fdfcpZKEOdvtgH8v5Jq/SmnsnT84T6hPgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711994170; c=relaxed/simple;
	bh=fJ3mDYlOFdsxP5e3NSHYMyBrX3fsoPQq5tmWrO4oCpg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=siqZ6DSlAAl8Z36iF+s97fXZjmkGKP5yFJnK+rojJhAF+/fKB1tiJ7PavZh8z7wyx89z+TFoYI92PIyUQ9e8tTXZNk+mXoPsiBoIfV7iXi4/SYwUZoE1hah48NOcPjlngfjOxFbW9VJmVZgab/lvzbAoSeMiuqZRGLqHWkDU8kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=La2OO3yl; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-60a068e26d8so44092107b3.3
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 10:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1711994167; x=1712598967; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ayg8yEodnyIkhrNKh0vWxZ555hD22ZpFvhWL8Rikvao=;
        b=La2OO3ylCdYIFPVA3jXXm6oenj1aweY8q87bO0Ib7DBSHhMrxT73tScAvjg9KbUwW0
         518LczmaGyah+E4JgHdbyxSrUF7++zrIMRmAz3vwvAKSPtw2Xyj1XUXZVGCMkv4JHUsD
         YjJdUKFNzF69ThurIJ5lf/FkYzA7dtzXcvQ1g5e/pesIoj6hyrQuRQ048q3QvC09HO3R
         eUWrQIxib3Byc4A00Ravnsuxe+AwBFz8bDbgl5CnoMCMthovkO3h7GIztw2ZenYFjvJr
         ThW8Vd9nQVB5AcrRvzh/ynAwsYoStF5n6zoone9flnGkSMCOasQth32PaBDuBu1OLGzs
         jBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711994167; x=1712598967;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ayg8yEodnyIkhrNKh0vWxZ555hD22ZpFvhWL8Rikvao=;
        b=kCpMDri52VraIFgISEO/Xm6YDp+d8Vb9ZNmVkfv1Qrr1CMdWciXuJWX6k+qv2+6D9m
         iWrWubt0ijl6FruAPrpvu3RZ1i8PPRwNt43JbE4bg3lL3eSD0OqNzgM40sdr0IDqBvHM
         a8f23xECeMEqKvOcNJ6qvptJsYLCXLTyvRD+ly2D6MbZTXjNMl5jlKLlhfsu8ZsE7X31
         /flYmMc2mIolviqPms7AWsd/glGKfSnpi5wjy2IcoFhm3fkoItQh8aVrTvEobGUTVHL5
         d2EQLLUE8+lM9cw4TLdmp9TXIwcVqOBZSNKcCbG1obY7yl9ooGE70+vdJcQxQ1W5gZMV
         wIhg==
X-Forwarded-Encrypted: i=1; AJvYcCVBFycH9P3GjXPteLwQFesXoNLusxTBToL+qQ82qPzcoQ0l1MfR5OMfWWFtDVWAywIUsh9krukDFcD7F8DoJPM35jT5XCPcWOyfqA==
X-Gm-Message-State: AOJu0YyGVBBX6s3u9MfDq+WLrS7cZBRHpj4CIeDLa+INLJ8J212mnbu2
	56dScgvJKrEWVuCaWzVdFsGDxSVEmHK/OdQLV0Da/1xcV86XaWs1EFJFNkt9bcm3xwY2STfk1kf
	kimLAR1HB57UGybqmOP7KVKULPT9CFcXvaXrybQ==
X-Google-Smtp-Source: AGHT+IHbNEbSTz8DBCYKR9MqO/caPtbEZWICPniiYQejcusJBa6iSdkbnh9sfMt7GjtTJc/3SigyJ/z+M6qQOU/SrM8=
X-Received: by 2002:a0d:c984:0:b0:611:a5b:337f with SMTP id
 l126-20020a0dc984000000b006110a5b337fmr9528979ywd.10.1711994165573; Mon, 01
 Apr 2024 10:56:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240329044459.3990638-1-debug@rivosinc.com> <20240329044459.3990638-28-debug@rivosinc.com>
 <4b38393a-f69d-4a77-a896-b6cd42c7edcf@collabora.com> <CAKC1njQ_RU=uHhrna=MFVdjAMjjQNqZWnkjPoJvO7CxtPMeNuQ@mail.gmail.com>
 <ef72ae20-6b68-496a-a819-8818ade0d433@collabora.com> <CAKC1njQj7GfkdE1HJD54utkoPqJXyqMeoXOxa6ActqZ-fSDuKQ@mail.gmail.com>
In-Reply-To: <CAKC1njQj7GfkdE1HJD54utkoPqJXyqMeoXOxa6ActqZ-fSDuKQ@mail.gmail.com>
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 1 Apr 2024 10:55:54 -0700
Message-ID: <CAKC1njR3+mxZHEig8iZo+=0k_VFWg9ZYO3pzGi6s=uLZ5hOkKw@mail.gmail.com>
Subject: Re: [PATCH v2 27/27] kselftest/riscv: kselftest for user mode cfi
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: paul.walmsley@sifive.com, rick.p.edgecombe@intel.com, broonie@kernel.org, 
	Szabolcs.Nagy@arm.com, kito.cheng@sifive.com, keescook@chromium.org, 
	ajones@ventanamicro.com, conor.dooley@microchip.com, cleger@rivosinc.com, 
	atishp@atishpatra.org, alex@ghiti.fr, bjorn@rivosinc.com, 
	alexghiti@rivosinc.com, samuel.holland@sifive.com, conor@kernel.org, 
	linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-mm@kvack.org, 
	linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, corbet@lwn.net, 
	tech-j-ext@lists.risc-v.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, oleg@redhat.com, 
	akpm@linux-foundation.org, arnd@arndb.de, ebiederm@xmission.com, 
	Liam.Howlett@oracle.com, vbabka@suse.cz, lstoakes@gmail.com, shuah@kernel.org, 
	brauner@kernel.org, andy.chiu@sifive.com, jerry.shih@sifive.com, 
	hankuan.chen@sifive.com, greentime.hu@sifive.com, evan@rivosinc.com, 
	xiao.w.wang@intel.com, charlie@rivosinc.com, apatel@ventanamicro.com, 
	mchitale@ventanamicro.com, dbarboza@ventanamicro.com, sameo@rivosinc.com, 
	shikemeng@huaweicloud.com, willy@infradead.org, vincent.chen@sifive.com, 
	guoren@kernel.org, samitolvanen@google.com, songshuaishuai@tinylab.org, 
	gerg@kernel.org, heiko@sntech.de, bhe@redhat.com, 
	jeeheng.sia@starfivetech.com, cyy@cyyself.name, maskray@google.com, 
	ancientmodern4@gmail.com, mathis.salmen@matsal.de, cuiyunhui@bytedance.com, 
	bgray@linux.ibm.com, mpe@ellerman.id.au, baruch@tkos.co.il, alx@kernel.org, 
	david@redhat.com, catalin.marinas@arm.com, revest@chromium.org, 
	josh@joshtriplett.org, shr@devkernel.io, deller@gmx.de, omosnace@redhat.com, 
	ojeda@kernel.org, jhubbard@nvidia.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2024 at 10:34=E2=80=AFAM Deepak Gupta <debug@rivosinc.com> w=
rote:
>
> On Mon, Apr 1, 2024 at 2:48=E2=80=AFAM Muhammad Usama Anjum
> <usama.anjum@collabora.com> wrote:
> >
> > >>> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> > >>> ---
> > >>>  tools/testing/selftests/riscv/Makefile        |   2 +-
> > >>>  tools/testing/selftests/riscv/cfi/Makefile    |  10 +
> > >>>  .../testing/selftests/riscv/cfi/cfi_rv_test.h |  85 ++++
> > >>>  .../selftests/riscv/cfi/riscv_cfi_test.c      |  91 +++++
> > >>>  .../testing/selftests/riscv/cfi/shadowstack.c | 376 ++++++++++++++=
++++
> > >>>  .../testing/selftests/riscv/cfi/shadowstack.h |  39 ++
> > >> Please add generated binaries in the .gitignore files.
> > >
> > > hmm...
> > > I don't see binary as part of the patch. Which file are you referring
> > > to here being binary?
> > shadowstack would be generated by the build. Create a .gitignore file a=
nd
> > add it there. For example, look at
> > tools/testing/selftests/riscv/vector/.gitignore to understand.
>
> It's `shadowstack.c` (a C source file) and not a binary file.

Nevermind. I think what you want me to do is add a rule in `.gitignore`.
I was thinking otherwise (that somehow you're seeing a binary file in
patch set).

Thanks. Will do that in the next iteration.

