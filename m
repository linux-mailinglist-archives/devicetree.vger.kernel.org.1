Return-Path: <devicetree+bounces-89943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 093EA9433F6
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 18:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4022283126
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 16:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2071BBBFE;
	Wed, 31 Jul 2024 16:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="TNEjvtAf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E671BB6B2
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 16:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722442490; cv=none; b=GO7IDGExlvyliwmCVX6t5cGLEZYZ3gdCzVp9684+jkBvxA5X6AqAnN9piC9aYkorB7bjz2lW4Li7kXTXj5/juJBKsN6Sts6DIrAvjiN1cNDYc0R+5NpLrW4HeFOp2e/qtrvl2YkRJjvNYBtsia15DQxgpFlJxi6JbcbOV6G20sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722442490; c=relaxed/simple;
	bh=cNmf4hLHtT750pA4+kUwJFpSQGwrs+yeu83m+UjRIKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vDN1WIH0iYxyMP5sNhyJsIfxBauqGDSvpoBiW4tdK8T0EOg9WyoiY8/ZUtLZCgsf8S/OhUv5jGliPScGLCujcUo9CcrG0IT5zzHiH7xdKvLAWCG6e3igseJlZiDdGSb9KLEM3UXHPqv9VsXUbMGW7pUNvccnw7PiFy30uLv2gVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=TNEjvtAf; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52f008aa351so8774687e87.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 09:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1722442487; x=1723047287; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=67YJB4t8a3rStJX7eamZLcHUt6OpExFZ1HW0neqY3tc=;
        b=TNEjvtAfiXB59yP8d9MNytBR4BC6wS4j4CLxEWVfx7ztJz8FCRhuLcsCS/ffejOuDx
         vXq+S7MwvTWPWd01WawevthYB8DX3advZL805A2Yj18bF3ph0guCrlCJvYEOkj+tOl/c
         +utLdNFVKnXxHXRqt1+uKT26OjUanUSPEjOLTuhiSHhHGxRT41vN38fFUGjB/EhofBWM
         MCW1TMxwBjW6Z9IJl6+3vNkop5Fg5A+mTMBP9P1Q5ctW55DjPkjX/31tAhZKh96OKnCX
         7W/tvOFp9K0AG053j/IGSVvU8v79erAt+Ln1yUmdgR0Zrm6gUUMSKlmTcxhzSmPuUsaD
         r+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722442487; x=1723047287;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=67YJB4t8a3rStJX7eamZLcHUt6OpExFZ1HW0neqY3tc=;
        b=SchOFs4PBUiEPlKV6dnQ+qVRuZcw1JjUtLx/T67iD8gOuTulgWcqKjEXdq7OqUJ9MI
         ChsQ00hKUfpVfOGLHCbQUwZrIQFZsVjIdI9InyTfaMPE0o1kpGlP8IKb976xoRN3TfxU
         IlYqKYzKR7/FnX+YT0W8TRo+37+d56OXAt23h+E9Yiika5NsBeh1np/NuzHdIK/ZO/QU
         vgZxw9q1OQKghjVfeRAIymNK5BiIsnG2zi2rXU3BQ6fHp8cyXAdOkRk8YPj2zHtvF/Y9
         uyItzRzYR1p8Zbxj2eH8ZJ1N08c1LzLMC9EibgRuaeZDve0SKfOJsK/5aCwE8cvHJkn8
         D1+g==
X-Forwarded-Encrypted: i=1; AJvYcCXNYjmWovpaQVRpB5DHHscggeR4iloxmjuObBdE2zVjklgz4qexe2V4LnKySfbtRgLQUK7Hk4P/62QtmIi3X50jM7xDC6jxL1fjJw==
X-Gm-Message-State: AOJu0YzC1DAzxdJETawVzQqHvoN6b8WP1CldzFh/rdoWNCiH8/+ycNe3
	VkxOF3jeyH3Yo3dnsryzcuWbzmRzbyqjfmmqOM7PtIBlGBOOoBOnkLylK8jTp8Y=
X-Google-Smtp-Source: AGHT+IGOSG7HPoKuH/nQ4CZs4W9P+Dy9DzwopPIOkIR/omN2X/bNWde8qWGEJwuhDElsEfYRrR40NQ==
X-Received: by 2002:ac2:5b0f:0:b0:52c:df6f:a66 with SMTP id 2adb3069b0e04-5309b2c5c91mr8627043e87.58.1722442486580;
        Wed, 31 Jul 2024 09:14:46 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acad41616sm785979066b.137.2024.07.31.09.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 09:14:45 -0700 (PDT)
Date: Wed, 31 Jul 2024 18:14:44 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Alexandre Ghiti <alexghiti@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Leonardo Bras <leobras@redhat.com>, Guo Ren <guoren@kernel.org>, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org
Subject: Re: [PATCH v4 02/13] riscv: Do not fail to build on byte/halfword
 operations with Zawrs
Message-ID: <20240731-676154f31336c78bafea57d0@orel>
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
 <20240731072405.197046-3-alexghiti@rivosinc.com>
 <20240731-56ba72420d7f745dacb66fd8@orel>
 <CAHVXubjrrWVnw1ufXRJh_5N9M5UiOVZseb0C78fjLaYhNKF7eA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHVXubjrrWVnw1ufXRJh_5N9M5UiOVZseb0C78fjLaYhNKF7eA@mail.gmail.com>

On Wed, Jul 31, 2024 at 05:52:46PM GMT, Alexandre Ghiti wrote:
> Hi Drew,
> 
> On Wed, Jul 31, 2024 at 4:10 PM Andrew Jones <ajones@ventanamicro.com> wrote:
> >
> > On Wed, Jul 31, 2024 at 09:23:54AM GMT, Alexandre Ghiti wrote:
> > > riscv does not have lr instructions on byte and halfword but the
> > > qspinlock implementation actually uses such atomics provided by the
> > > Zabha extension, so those sizes are legitimate.
> >
> > We currently always come to __cmpwait() through smp_cond_load_relaxed()
> > and queued_spin_lock_slowpath() adds another invocation.
> 
> atomic_cond_read_relaxed() and smp_cond_load_acquire() also call
> smp_cond_load_relaxed()
> 
> And here https://elixir.bootlin.com/linux/v6.11-rc1/source/kernel/locking/qspinlock.c#L380,
> the size passed is 1.

Oh, I see.

> 
> > However, isn't
> > the reason we're hitting the BUILD_BUG() because the switch fails to find
> > a case for 16, not because it fails to find cases for 1 or 2? The new
> > invocation passes a pointer to a struct mcs_spinlock, which looks like
> > it has size 16. We need to ensure that when ptr points to a pointer that
> > we pass the size of uintptr_t.
> 
> I guess you're refering to this call here
> https://elixir.bootlin.com/linux/v6.11-rc1/source/kernel/locking/qspinlock.c#L551,
> but it's a pointer to a pointer, which will then pass a size 8.

Ah, missed that '&'...

> 
> And the build error that I get is the following:
> 
> In function '__cmpwait',
>     inlined from 'queued_spin_lock_slowpath' at
> ../kernel/locking/qspinlock.c:380:3:
> ./../include/linux/compiler_types.h:510:45: error: call to
> '__compiletime_assert_2' declared with attribute error: BUILD_BUG
> failed
>   510 |         _compiletime_assert(condition, msg,
> __compiletime_assert_, __COUNTER__)
>       |                                             ^
> ./../include/linux/compiler_types.h:491:25: note: in definition of
> macro '__compiletime_assert'
>   491 |                         prefix ## suffix();
>          \
>       |                         ^~~~~~
> ./../include/linux/compiler_types.h:510:9: note: in expansion of macro
> '_compiletime_assert'
>   510 |         _compiletime_assert(condition, msg,
> __compiletime_assert_, __COUNTER__)
>       |         ^~~~~~~~~~~~~~~~~~~
> ../include/linux/build_bug.h:39:37: note: in expansion of macro
> 'compiletime_assert'
>    39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>       |                                     ^~~~~~~~~~~~~~~~~~
> ../include/linux/build_bug.h:59:21: note: in expansion of macro
> 'BUILD_BUG_ON_MSG'
>    59 | #define BUILD_BUG() BUILD_BUG_ON_MSG(1, "BUILD_BUG failed")
>       |                     ^~~~~~~~~~~~~~~~
> ../arch/riscv/include/asm/cmpxchg.h:376:17: note: in expansion of
> macro 'BUILD_BUG'
>   376 |                 BUILD_BUG();
> 
> which points to the first smp_cond_load_relaxed() I mentioned above.
> 

OK, you've got me straightened out now, but can we only add the fallback
for sizes 1 and 2 and leave the default as a BUILD_BUG()?

Thanks,
drew

