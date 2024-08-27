Return-Path: <devicetree+bounces-96970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A197A9603D4
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 10:02:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 320C11F22A0B
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 08:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 160D0188A07;
	Tue, 27 Aug 2024 08:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="nlS549p4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E18B14F126
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 08:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724745765; cv=none; b=DTMEuAqsuNqLagtwdXxjst2ETysL8ZhXBN6wHVQUz52bkrYTsRG1IekhPqBfAthrOpTrLI4ayn3qGg8ipiGdlkFJHOgQQhh086ZHVKFEVWE157VaeuzXyu81/AOaEMLEezdB1+pa+WROA4xP8Uf/pzd/OZJMA6CRbuuvq3wgDso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724745765; c=relaxed/simple;
	bh=wlrG+jo4u8AssfQwalnT72u3VqV0xp8FeGbzhPN+7dU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fi1uhJljVKbqzIAElix2sSktUsT5XHwa+Xmf3MoSaj3XCcN/lStY0/cjYIkYgyO4LpUPigKtNAka8st1DQkjSxAhF4BiufAdnaaQEpRZ3oC43n1PzxhXyzNYg05EebN1fsasFXLWX015t5TDYNrZDGELbAOvgOtYumtgfzLsFNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=nlS549p4; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c0a9f2b967so2244772a12.2
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 01:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1724745761; x=1725350561; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aBms7y/tBFsZy50lNtASZmPiwThWbZhDKwKfTMeuMMA=;
        b=nlS549p4JTo3fPOPqS4F/iD20dzwpajKPITR05dlg8y776p0hL7WBDW4i2TozmQL+x
         pEGfAcE7KDoesQk7VCA4O3IL8Fg68xysf5mqKFKhliU0xyLE0b+iSkHCt11uJcKkfmda
         KV1yBgtaNKy90QzGkOHMd3CY3JmZk7aUxh/LyO2IAAAGODHvMfNnKYBwhUBo15PzDZHN
         DBkc1+w0ySdCgOOEyiJc+k13spNu7IBxxrN/9JKalEAjKy5NpXp7uq73elvWZWO0G7j5
         Lve/Ephfe2jg9T7VBO3JWkyu2O0XFqNZu2M0HWyp6rdKE/mZwTOQ+0gjxuXyRxLBSRgx
         vr3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724745761; x=1725350561;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aBms7y/tBFsZy50lNtASZmPiwThWbZhDKwKfTMeuMMA=;
        b=ahPpQwI497r5OokKK66EFqo8mwNcqvqJEH5qDjiQeioUNpC3hCw3o76Te+RJtpxUax
         ofLtTAbAUDOF5FSBDpLTrkZAE586wk6gff1tG11mLLn4geiGU0O5nX/Dx7U/fJ9BZTeN
         KMlfJ+jlpo1PIAljdmmalrYZHoIr2RMJT7zqh6a2kmC6HVFd/jsw1aNL+HnQ8dUP9NU+
         c0Y359xvLm7L+OQ40FUUvvE+Id4XnV+tQ9UoKSL0PRDZUD2/nBrFcDpYDM6vB2Vrl8Ct
         xjrEelMB76qdvMCNdQYhVHoLi0uk5BatAV5w9ATlFc7kidpfmb+cpGpnC3JYRMS3ZLiD
         ItZg==
X-Forwarded-Encrypted: i=1; AJvYcCXLs/ZLae4drf7FTyAec9B9I2OWGkBxnRcqnNJDexwGWw/BsEjt27SHvOHHFFb28i83WP4C2IAouEpv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2metSM6P1kEK7RX3TZcnWbhdcuxq27J87b58v0s4rUfAWNpac
	CvCfKgpyCuqn+tqdi3gutG8rvXEARteB/DFXtc22gFonA6TcxVlm3QCyun1oMs1E1YtynCRFzYY
	Fd5o+EcqxM5FAD/n8xrag3N+RBuCEnrupwbbugA==
X-Google-Smtp-Source: AGHT+IEPKjzBgfiAk9G0dnZjYH9HkHNAZ5iX4+y8YvtQs+BwlAOu22sCjko/Iouwb9iDtzPGYnZU+k2kKs5nhqRDXTc=
X-Received: by 2002:a17:907:9491:b0:a7a:b643:654f with SMTP id
 a640c23a62f3a-a86e39f9082mr158372366b.15.1724745761303; Tue, 27 Aug 2024
 01:02:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
 <20240731072405.197046-14-alexghiti@rivosinc.com> <20240731-ce25dcdc5ce9ccc6c82912c0@orel>
 <CAHVXubgtD_nDBL2H-MYb9V+3jLBoszz8HAZ2NTTsiS2wR6aPDQ@mail.gmail.com>
 <6f1bcc9b-1812-4e8c-9050-a750bfadd008@ghiti.fr> <CAJF2gTS4L6=HE_-9rgn3L8+6R7C4Jx=QgCkvOBhQHdHVGzr5MA@mail.gmail.com>
 <20240821-6befd27b90a9e9ff89f4a277@orel>
In-Reply-To: <20240821-6befd27b90a9e9ff89f4a277@orel>
From: Alexandre Ghiti <alexghiti@rivosinc.com>
Date: Tue, 27 Aug 2024 10:02:30 +0200
Message-ID: <CAHVXubiy3=bEf29qpzGX0MoBXkjBy38p9Xhz7yRYN5Sr3qRw0g@mail.gmail.com>
Subject: Re: [PATCH v4 13/13] riscv: Add qspinlock support
To: Andrew Jones <ajones@ventanamicro.com>
Cc: Guo Ren <guoren@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Leonardo Bras <leobras@redhat.com>, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi drew,

On Wed, Aug 21, 2024 at 2:18=E2=80=AFPM Andrew Jones <ajones@ventanamicro.c=
om> wrote:
>
> On Sat, Aug 17, 2024 at 01:08:34PM GMT, Guo Ren wrote:
> ...
> > > So I have just checked the size of the jump table section:
> > >
> > > * defconfig:
> > >
> > > - ticket: 26928 bytes
> > > - combo: 28320 bytes
> > >
> > > So that's a ~5% increase.
> > >
> > > * ubuntu config
> > >
> > > - ticket: 107840 bytes
> > > - combo: 174752 bytes
> > >
> > > And that's a ~62% increase.
> > The size of the jump table section has increased from 5% to 62%. I
> > think some configuration triggers the jump table's debug code. If it's
> > not a debugging configuration, that's a bug of the Ubuntu config.
>
> And I just remembered we wanted to check with CONFIG_CC_OPTIMIZE_FOR_SIZE

Here we go!

The size of the jump table section:

* defconfig:

- ticket: 12176 bytes
- combo: 13168 bytes

So that's a ~8% increase.

* ubuntu config

- ticket:   73920 bytes
- combo: 84656 bytes

And that's a ~14% increase.

This is the ELF size difference between ticket and combo spinlocks:

* ticket:   695906872 bytes
* combo: 697558496 bytes

So that's an increase of ~0.23% on the ELF.

And the .text section size:

* ticket:   10322820 bytes
* combo: 10332136 bytes

And that's a ~0.09% increase!

So that's even better :)

Thanks for asking!

Alex

>
> Thanks,
> drew
>
> >
> > >
> > > This is the ELF size difference between ticket and combo spinlocks:
> > >
> > > * ticket: 776915592 bytes
> > > * combo: 786958968 bytes
> > >
> > > So that's an increase of ~1.3% on the ELF.
> > >
> > > And the .text section size:
> > >
> > > * ticket: 12290960 bytes
> > > * combo: 12366644 bytes
> > >
> > > And that's a ~0.6% increase!
> > >
> > > Finally, I'd say the impact is very limited :)
> > >
> > > Thanks,
> > >
> > > Alex
> > >
> > >

