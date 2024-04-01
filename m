Return-Path: <devicetree+bounces-55142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 144C089445C
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 19:34:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45C1D1C21704
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 17:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1AF94CB4A;
	Mon,  1 Apr 2024 17:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="edH4WDgd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB704F5FD
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 17:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711992856; cv=none; b=U11jxPYIlokGHLMu86q+RDNysjYP8J4n/b22TB6PdXr56QMEQJ+jx7au6/aL2StUqJ+nzhBNHcffniOfXIAiCxXSRrjxFC+37jGzm1mXuxALyuSF02Tvtj8tMCm988zRvRyF7wYGjhBxMp+WAg0T/qlquoap8NLLPfWAQMUrmDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711992856; c=relaxed/simple;
	bh=n2s5tJq14PiUi3t6xvxViPgVvhmPK29s9bFhWMqxL60=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GDrxvxO14V9JGJRA2vWEKF2eONdZSCdZK396rToAYQ0hmxeJdvyTixHkHrr2mTQhodQW7DcUUrk2zT4RqOnjYj8ngzWJzHUjwDTLcDy3Ciz9H0l66msNnzBQTxLmU0YHa758bxLUMflJ41a3Sfo5zjAU/5QnpTyimUfRhGXO2Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=edH4WDgd; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-61149e50602so29078847b3.0
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 10:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1711992854; x=1712597654; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q4MAUcmgMKuhD5Gbh9i7N0D2vbnfTkjFUipl6Ki2fa4=;
        b=edH4WDgdscTllgyj04pndAGnNr7LyzQ/F0wYBuHEij9PNeKeAQc2jLBjc3GIzuV13I
         GjkW/FxXFq6HvFeWJMtO9o4YJaYJQe300GzuB8UcyrwirHtMS/udXVpcykwXEyUXMBZR
         6PCyUvLNl5ird/0jm4fdFtDbj9RHButZ7ieZrWBVg+PWNwxjHTyH+gmjGO2LvUQnvpBm
         FxBFB8hOOfXSsIdmaPIo4taz8dp99Kgas0KF9GKXPGT8cePtF4/w49s7aBSog5JjmSkU
         KlRV7xyzvBT4Jvbqr8l/uaJZIeOtlHNPU62SLw/dJCgSKjOmRJJUNg4HjHzdubBuEwXa
         IWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711992854; x=1712597654;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q4MAUcmgMKuhD5Gbh9i7N0D2vbnfTkjFUipl6Ki2fa4=;
        b=MPnp4kz9ggLvZvQ9xI76GiJt+lRf/KiwDGsnwNH2QzfC1lTqS9QdjQaxH73q8DJsKk
         9BHvHutWe5uPYE0y/AOHxeWhbSRSooC7xA+sWYpN59qGAjj/HutgkvrRExMyrETi5x8r
         ozDbtDJF5xecaPTpsG8ce1Du8xFh0JS5DaWwxztVyvPn3vVKqGZiGqCUstr16FY4GY9D
         v48uoZ19qtaeQpZPmudnZtCAblC+T3Mr+w2gtzBUYjR7wOs1B5s3xDZtA0fbjcFOAill
         dJbLtM55I0AyX4gdY/klR9nQf/sc1MjK5/cq4o+I1luMxkBxiFbvFF73xJzfC2MvYZyw
         n5ew==
X-Forwarded-Encrypted: i=1; AJvYcCVJswuVDIyblBW6vp59DkF4W8a6ZCqDbEZsShsWLhtneeJQeTVgS3KaSSgSFYoHOl3VRjEfLCQGbZ9bTmoqHFklVFh8i1wg98s/CQ==
X-Gm-Message-State: AOJu0YyPP0S61rQx7A6yJlwfxEBWhuOJ/hzl8TWBOiK3UGIVNjN8Cdz3
	qTVrtL4kxMUqUi7KJASuJioGE//WPwmui+hJtSUoXQzcXd8qXBYptU7liFwFyDULaK7Z7nJ23dr
	5vRyovm8XVA6WwqLVityNtrRLsih07T48I+yX3A==
X-Google-Smtp-Source: AGHT+IGWLd+uB6H49i9ExUSpS3d/6MA4XGgkBBQBM3nTLsDV2PwbysZLh8i9VvQ3W9VGzIjrMeAWK2hXdQjjikUWmc4=
X-Received: by 2002:a81:4849:0:b0:615:19b1:5367 with SMTP id
 v70-20020a814849000000b0061519b15367mr22572ywa.6.1711992853801; Mon, 01 Apr
 2024 10:34:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240329044459.3990638-1-debug@rivosinc.com> <20240329044459.3990638-28-debug@rivosinc.com>
 <4b38393a-f69d-4a77-a896-b6cd42c7edcf@collabora.com> <CAKC1njQ_RU=uHhrna=MFVdjAMjjQNqZWnkjPoJvO7CxtPMeNuQ@mail.gmail.com>
 <ef72ae20-6b68-496a-a819-8818ade0d433@collabora.com>
In-Reply-To: <ef72ae20-6b68-496a-a819-8818ade0d433@collabora.com>
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 1 Apr 2024 10:34:06 -0700
Message-ID: <CAKC1njQj7GfkdE1HJD54utkoPqJXyqMeoXOxa6ActqZ-fSDuKQ@mail.gmail.com>
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

On Mon, Apr 1, 2024 at 2:48=E2=80=AFAM Muhammad Usama Anjum
<usama.anjum@collabora.com> wrote:
>
> >>> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> >>> ---
> >>>  tools/testing/selftests/riscv/Makefile        |   2 +-
> >>>  tools/testing/selftests/riscv/cfi/Makefile    |  10 +
> >>>  .../testing/selftests/riscv/cfi/cfi_rv_test.h |  85 ++++
> >>>  .../selftests/riscv/cfi/riscv_cfi_test.c      |  91 +++++
> >>>  .../testing/selftests/riscv/cfi/shadowstack.c | 376 ++++++++++++++++=
++
> >>>  .../testing/selftests/riscv/cfi/shadowstack.h |  39 ++
> >> Please add generated binaries in the .gitignore files.
> >
> > hmm...
> > I don't see binary as part of the patch. Which file are you referring
> > to here being binary?
> shadowstack would be generated by the build. Create a .gitignore file and
> add it there. For example, look at
> tools/testing/selftests/riscv/vector/.gitignore to understand.

It's `shadowstack.c` (a C source file) and not a binary file.

