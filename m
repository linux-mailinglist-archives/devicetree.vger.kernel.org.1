Return-Path: <devicetree+bounces-118609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E20529BAF29
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 351CAB240A7
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 09:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBFC01ADFF8;
	Mon,  4 Nov 2024 09:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="G+FryC7y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2721ABEBB
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 09:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730711362; cv=none; b=sayl6tHABfVdbzXhNdR4EvPhxAWYy6DQQ8xleQMEaKhl+lOuGFXO4meI/Sk1l4cBUI4o6xvv/XZqVWgfpdZArF0DqA40ROJ8+lwvAJM4+GTH/ZdSJfUfiU110nYKmvJU3iOOe24bSj5GY7i5CbfwQuGrKfSfpVyIi0g8A+uz7cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730711362; c=relaxed/simple;
	bh=ifqPukSiWEbvQx2BNyq44t24PrtspIIZb3U4Z0syxko=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a51gJXDTIhJJ2ubcC7yfCsGB2HeV+CMmouF34A8jWbG7vk8B9MjoSM3Zku3ER2IF3+EBLqDYEfxNhbq4+SkaNszqGtmiTuO3j8yP730cYz4k52TLOQJEr3j8QCSofJ8o375ocJ9H9eX/1s1/moC94KW6ivHlKx5Cz+vwWnNq5x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=G+FryC7y; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5c96b2a10e1so5720761a12.2
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 01:09:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1730711359; x=1731316159; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=055q6HVRLMtsIiCxhqKFgJlzoVTgwNt+2YbIpiGOuNo=;
        b=G+FryC7yB7FbtEYO8s6Kq4+9k3AOvtRu4ULtV2B05UMo/Ja/6oZnC+ueNFi25DtNx6
         hdHvhzcwchq/YBPHcpFhimO2gYdk/Cb/khUvB3WKmodzQXVAZmHJsSdPiUrYmdN9If0h
         Q9NiDtjRoYPsXZIUqHuxBbzxfFEz7dO7K7yWcj0D0bXEl58Gfw0GEhSeMjHQpYd+thXc
         2bJQu7mcf09c5j5Lfu3cjLbW2jxDnlCp4wdPf24I5L8A9GL5vYQOMZHmvft2HJ2XEdF1
         1xJFwM9MCHc99osyTleMoX2MsCj78kzxTCzpwXU17l/5edlt51pqTPsBBDxEa2rsMY7g
         dWbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730711359; x=1731316159;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=055q6HVRLMtsIiCxhqKFgJlzoVTgwNt+2YbIpiGOuNo=;
        b=PYnPexgY1iq6rllm8Y2EouKRuhrdNeefnkD9iwT0l6ZwrTO01XobzxrtTOXI9+Wsp6
         25MH3bO5RJZL0+0giYvsqLUm7mLpGXwkoNe1oM1jsHUbvVH7wKFoqOsYN5wO1J+a0uqH
         DHXXovleUh36jck0swX85ikq1wVpumbEJPFaEsTxD5V9OUcDTNL8/yu+ia+fqQEq/zMX
         AbLQJI+Dft8MjMVyFdGgtV2V3O1pU9c9mS+lvTrS2lBH+NKgivA58vlhwD20bRuGi6uS
         81E2K3/8F7GFg+jRQT+AkxBGAo+Z7L/JnfVeZtkQgCt6zTpmfg2MWpMqj3AosMnpG6MD
         dW/A==
X-Forwarded-Encrypted: i=1; AJvYcCUGrFCD51Z7gCrbDa7bDL0L9vDK3Wiusrddp81kzW4vBdS2as7oxBYMpJCI90k60JuNTpaGKJIUoN3+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9AKkY8AES59afTmhZJaiSHPu/idJaILb1gplMMRCSKFqdC3Ks
	Xpd1NQOKvutrZzQ09Hu8CqLxyZ/uvBozQnetkHxv9O/1h0f73BwzN20jDx7xjP1eIbX7lcCA4v0
	hAv2OwoscYr2g4MocFg/SIHU5wxFc0H/BqIJfww==
X-Google-Smtp-Source: AGHT+IG7T23Pew0G4bjyo8FIV5YjqVKWXQFF//1S8lbRwvUhNbZuSM2H8qF/oqLViu8AJNrr6QEfuupKRznSgIqZeV4=
X-Received: by 2002:a05:6402:51ca:b0:5ce:d397:9f5 with SMTP id
 4fb4d7f45d1cf-5ced3970cbemr2889559a12.24.1730711358703; Mon, 04 Nov 2024
 01:09:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241103145153.105097-14-alexghiti@rivosinc.com> <202411041609.gxjI2dsw-lkp@intel.com>
In-Reply-To: <202411041609.gxjI2dsw-lkp@intel.com>
From: Alexandre Ghiti <alexghiti@rivosinc.com>
Date: Mon, 4 Nov 2024 10:09:07 +0100
Message-ID: <CAHVXubj8EXCXNPuJ+hqrHwyujjz3GDcqqMjQ4ZFC5VbmZurV3w@mail.gmail.com>
Subject: Re: [PATCH v6 13/13] riscv: Add qspinlock support
To: kernel test robot <lkp@intel.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Leonardo Bras <leobras@redhat.com>, Guo Ren <guoren@kernel.org>, 
	linux-doc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2024 at 10:05=E2=80=AFAM kernel test robot <lkp@intel.com> w=
rote:
>
> Hi Alexandre,
>
> kernel test robot noticed the following build warnings:
>
> [auto build test WARNING on arnd-asm-generic/master]
> [also build test WARNING on robh/for-next tip/locking/core linus/master v=
6.12-rc6]
> [cannot apply to next-20241101]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Alexandre-Ghiti/ri=
scv-Move-cpufeature-h-macros-into-their-own-header/20241103-230614
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.=
git master
> patch link:    https://lore.kernel.org/r/20241103145153.105097-14-alexghi=
ti%40rivosinc.com
> patch subject: [PATCH v6 13/13] riscv: Add qspinlock support
> compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51=
eccf88f5321e7c60591c5546b254b6afab99)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202411041609.gxjI2dsw-lkp=
@intel.com/
>
> includecheck warnings: (new ones prefixed by >>)
> >> arch/riscv/include/asm/spinlock.h: asm/ticket_spinlock.h is included m=
ore than once.
> >> arch/riscv/include/asm/spinlock.h: asm/qspinlock.h is included more th=
an once.

Yes but that's in a #ifdef/#elif#else clause so nothing to do here!

>
> vim +10 arch/riscv/include/asm/spinlock.h
>
>      8
>      9  #define __no_arch_spinlock_redefine
>   > 10  #include <asm/ticket_spinlock.h>
>     11  #include <asm/qspinlock.h>
>     12  #include <asm/jump_label.h>
>     13
>     14  /*
>     15   * TODO: Use an alternative instead of a static key when we are a=
ble to parse
>     16   * the extensions string earlier in the boot process.
>     17   */
>     18  DECLARE_STATIC_KEY_TRUE(qspinlock_key);
>     19
>     20  #define SPINLOCK_BASE_DECLARE(op, type, type_lock)               =
       \
>     21  static __always_inline type arch_spin_##op(type_lock lock)       =
       \
>     22  {                                                                =
       \
>     23          if (static_branch_unlikely(&qspinlock_key))              =
       \
>     24                  return queued_spin_##op(lock);                   =
       \
>     25          return ticket_spin_##op(lock);                           =
       \
>     26  }
>     27
>     28  SPINLOCK_BASE_DECLARE(lock, void, arch_spinlock_t *)
>     29  SPINLOCK_BASE_DECLARE(unlock, void, arch_spinlock_t *)
>     30  SPINLOCK_BASE_DECLARE(is_locked, int, arch_spinlock_t *)
>     31  SPINLOCK_BASE_DECLARE(is_contended, int, arch_spinlock_t *)
>     32  SPINLOCK_BASE_DECLARE(trylock, bool, arch_spinlock_t *)
>     33  SPINLOCK_BASE_DECLARE(value_unlocked, int, arch_spinlock_t)
>     34
>     35  #elif defined(CONFIG_RISCV_QUEUED_SPINLOCKS)
>     36
>     37  #include <asm/qspinlock.h>
>     38
>     39  #else
>     40
>   > 41  #include <asm/ticket_spinlock.h>
>     42
>
> --
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki

