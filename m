Return-Path: <devicetree+bounces-125505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E909DC227
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 11:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5651528147C
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 10:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771F0189B8F;
	Fri, 29 Nov 2024 10:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="SOjfjNsD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222E8174EDB
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 10:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732876321; cv=none; b=db/yFMva3u26y83vtLIBo1k6A4vVA9RLWKiXeJtO0/6QcriaLyRA710hHZCnGh2UzWiYN9ZZPQrR+qbJHZ6hwVW9DriluIWa5USUZ0jMlDAXK49BxDqs8NNFd8T9XPWimYbUlgstMiXW8OspIlZdmMwWJwPyduro2fynUhMo/2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732876321; c=relaxed/simple;
	bh=Yvsxf/JwNE/7ROkTVSxYM/zC/C9ZFeW5Woc/yxQA0m4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NfaKVAerdsUjO3CXUm5lzRt+UH+tEslFkWRv/wkTNqqJAulcPniNLn73moTf2cFJ6ZhfNmT4SZP3eztXQoU2WWPNlT2qC1pRfuhAwUUhrQ7ZdYQdCuoSvWIKuSJ4/+nNSwTbky85G8ilRvG4sKXyE+wi5wrsBAFjOk5eSkWvzDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=SOjfjNsD; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5cfddc94c83so1984905a12.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 02:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1732876316; x=1733481116; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wJapKPP894yH/ZYBVUl+FkcsTZ4tZiRFFF/+acV2Pko=;
        b=SOjfjNsDnFpQfZ0dLqAHji0oUYFTPq5i45eGwUB6XC0QvVeFtt/vvqYGLDsB6cnx5J
         ukRk879dgOlwLZ0GZ1UKGXvVbfGj7S0tBUj2D/bsV9HMFFUaMv+OHe9uQDB9UFVDV1aB
         ywgvNZodL93eqEUWzswyHbBTGlpt8+mw3njTRFxcmU8cadIk4o3FygLf5AD/IyZy2grN
         SMdLimUx/2SAsguga0rvD7KJVEx87c6xZQzTlm9zX6c4MgDcrJkyuQFfBxui8QVLbluW
         IpG8wzkxEv4/DxomJVOFXDVbtUJblF8WCngaVq66fh29XttgrMfuROpUoVNaMby5APn7
         VR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732876316; x=1733481116;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wJapKPP894yH/ZYBVUl+FkcsTZ4tZiRFFF/+acV2Pko=;
        b=RRfnR/6+7eGEj4+1Qv1s/JPFrGb6gQawle8uA9GGRVUwAfDo35xdE5ru34zFkshXDX
         mm6ZNCUSx1HYsC2PiWOpwGa3yJh4+CoECMu+UCZZvDYHF0H9ECPQVZHghEVtk6SR+zlm
         f1PnNJ/fe62KJYKewfEtUfmZtaFdcE9PZG36zFCEf+3G3ulWd5EfbdThK4K5Pw26Cuoc
         I3Zt1mzvw4DTa080t8t0SYJrO/E6kmbz8oQxPEmWsY7N3TDs57QevLVMh8/Xg93sgL6l
         uX9vQa5vzhSLJqIeyrrJC3F9V/aNbPjcy5XSHaspxtG6fHJOmR/aGh1IFeV8uCN6rp7Y
         8g9g==
X-Forwarded-Encrypted: i=1; AJvYcCUR+tQgDoAiX0HFM6Eo6Zf3dcnyBg6KmwkMVPzxWNb8DbGV1qpitB1dbLYuusnoA4W9sjwUoxdTUQVq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy27o78DUBAmiprhr4CggRvSc84wipMzun1/yI9AA4Ab4vILI7I
	HV77D1yDyKhMh0lI6QkbmYWzkygpsMDwU4PLC3iiv5yzKIhqe8IACVCTJGuJHq0mzXjZ8SBrPSx
	A0TvuSiHJMFdV0PbkC5S1ULLGrq8WKLsCrgU1jw==
X-Gm-Gg: ASbGncutF3xqlTSY/paAk6n2z4sguisVZHbH4AFqWIDzQR39/5ZuA3lwnyAD2OWb965
	JvnlmwYX0rffjAZEi4Op5jFV1Zw==
X-Google-Smtp-Source: AGHT+IHi+z1i7gxHLtV5K787lEVSyWT53ZHIreny4YdaTCIQyu4GO2Y17S2VoBXHlUE5lOPSmaMIq50TrRbGFPwS8YQ=
X-Received: by 2002:a05:6402:270a:b0:5d0:b60a:2ff6 with SMTP id
 4fb4d7f45d1cf-5d0b60a3599mr2015227a12.22.1732876316309; Fri, 29 Nov 2024
 02:31:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241103145153.105097-1-alexghiti@rivosinc.com>
 <20241103145153.105097-14-alexghiti@rivosinc.com> <20241128-whoever-wildfire-2a3110c5fd46@wendy>
 <20241128134135.GA3460@willie-the-truck> <20241128-uncivil-removed-4e105d1397c9@wendy>
 <90533aa9-186a-4f75-b3c5-d93d6682056b@ghiti.fr> <20241128-goggles-laundry-d94c23ab39a4@spud>
 <CAJF2gTST0kduYpuqd4mX0byetWMRJT-AAyH0GGiaysZG64Byhw@mail.gmail.com>
 <CAJF2gTRQg=w3sGN0Sdzf+_adRo44z4H6Zd6=C6qXq+ARR5BjSg@mail.gmail.com> <CAJF2gTSX82rGp-9xZHvg1Y3SpO516YCcqSBLKFgWEQ5G-iWR4A@mail.gmail.com>
In-Reply-To: <CAJF2gTSX82rGp-9xZHvg1Y3SpO516YCcqSBLKFgWEQ5G-iWR4A@mail.gmail.com>
From: Alexandre Ghiti <alexghiti@rivosinc.com>
Date: Fri, 29 Nov 2024 11:31:44 +0100
Message-ID: <CAHVXubgXiD5Bi6ytyDHXXOONovWHZTSvr4+oADCvuic5ObGXpQ@mail.gmail.com>
Subject: Re: [PATCH v6 13/13] riscv: Add qspinlock support
To: Guo Ren <guoren@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>, 
	Conor Dooley <conor.dooley@microchip.com>, Will Deacon <will@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Andrea Parri <parri.andrea@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Leonardo Bras <leobras@redhat.com>, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

On Fri, Nov 29, 2024 at 7:28=E2=80=AFAM Guo Ren <guoren@kernel.org> wrote:
>
> Hi Conor & Alexandre,
>
> On Fri, Nov 29, 2024 at 10:58=E2=80=AFAM Guo Ren <guoren@kernel.org> wrot=
e:
> >
> > On Fri, Nov 29, 2024 at 8:55=E2=80=AFAM Guo Ren <guoren@kernel.org> wro=
te:
> > >
> > > On Fri, Nov 29, 2024 at 12:19=E2=80=AFAM Conor Dooley <conor@kernel.o=
rg> wrote:
> > > >
> > > > On Thu, Nov 28, 2024 at 03:50:09PM +0100, Alexandre Ghiti wrote:
> > > > > On 28/11/2024 15:14, Conor Dooley wrote:
> > > > > > On Thu, Nov 28, 2024 at 01:41:36PM +0000, Will Deacon wrote:
> > > > > > > On Thu, Nov 28, 2024 at 12:56:55PM +0000, Conor Dooley wrote:
> > > > > > > > On Sun, Nov 03, 2024 at 03:51:53PM +0100, Alexandre Ghiti w=
rote:
> > > > > > > > > In order to produce a generic kernel, a user can select
> > > > > > > > > CONFIG_COMBO_SPINLOCKS which will fallback at runtime to =
the ticket
> > > > > > > > > spinlock implementation if Zabha or Ziccrse are not prese=
nt.
> > > > > > > > >
> > > > > > > > > Note that we can't use alternatives here because the disc=
overy of
> > > > > > > > > extensions is done too late and we need to start with the=
 qspinlock
> > > > > > > > > implementation because the ticket spinlock implementation=
 would pollute
> > > > > > > > > the spinlock value, so let's use static keys.
> > > > > > > > >
> > > > > > > > > This is largely based on Guo's work and Leonardo reviews =
at [1].
> > > > > > > > >
> > > > > > > > > Link: https://lore.kernel.org/linux-riscv/20231225125847.=
2778638-1-guoren@kernel.org/ [1]
> > > > > > > > > Signed-off-by: Guo Ren <guoren@kernel.org>
> > > > > > > > > Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
> > > > > > > > This patch (now commit ab83647fadae2 ("riscv: Add qspinlock=
 support"))
> > > > > > > > breaks boot on polarfire soc. It dies before outputting any=
thing to the
> > > > > > > > console. My .config has:
> > > > > > > >
> > > > > > > > # CONFIG_RISCV_TICKET_SPINLOCKS is not set
> > > > > > > > # CONFIG_RISCV_QUEUED_SPINLOCKS is not set
> > > > > > > > CONFIG_RISCV_COMBO_SPINLOCKS=3Dy
> > > > > > > I pointed out some of the fragility during review:
> > > > > > >
> > > > > > > https://lore.kernel.org/all/20241111164259.GA20042@willie-the=
-truck/
> > > > > > >
> > > > > > > so I'm kinda surprised it got merged tbh :/
> > > > > > Maybe it could be reverted rather than having a broken boot wit=
h the
> > > > > > default settings in -rc1.
> > > > >
> > > > >
> > > > > No need to rush before we know what's happening,I guess you bisec=
ted to this
> > > > > commit right?
> > > >
> > > > The symptom is a failure to boot, without any console output, of co=
urse
> > > > I bisected it before blaming something specific. But I don't think =
it is
> > > > "rushing" as having -rc1 broken with an option's default is a massi=
ve pain
> > > > in the arse when it comes to testing.
> > > >
> > > > > I don't have this soc, so can you provide $stval/$sepc/$scause, a=
 config, a
> > > > > kernel, anything?
> > > >
> > > > I don't have the former cos it died immediately on boot. config is
> > > > attached. It reproduces in QEMU so you don't need any hardware.
> > > If QEMU could reproduce, could you provide a dmesg by the below metho=
d?
> > >
> > > Qemu cmd append: -s -S
> > > ref: https://qemu-project.gitlab.io/qemu/system/gdb.html
> > >
> > > Connect gdb and in console:
> > > 1. file vmlinux
> > > 2. source ./Documentation/admin-guide/kdump/gdbmacros.txt
> > > 3. dmesg
> > >
> > > Then, we could get the kernel's early boot logs from memory.
> > I've reproduced it on qemu, thx for the config.
> >
> > Reading symbols from ../build-rv64lp64/vmlinux...
> > (gdb) tar rem:1234
> > Remote debugging using :1234
> > ticket_spin_lock (lock=3D0xffffffff81b9a5b8 <text_mutex>) at
> > /home/guoren/source/kernel/linux/include/asm-generic/ticket_spinlock.h:=
49
> > 49              atomic_cond_read_acquire(&lock->val, ticket =3D=3D (u16=
)VAL);
> > (gdb) bt
> > #0  ticket_spin_lock (lock=3D0xffffffff81b9a5b8 <text_mutex>) at
> > /home/guoren/source/kernel/linux/include/asm-generic/ticket_spinlock.h:=
49
> > #1  arch_spin_lock (lock=3D0xffffffff81b9a5b8 <text_mutex>) at
> > /home/guoren/source/kernel/linux/arch/riscv/include/asm/spinlock.h:28
> > #2  do_raw_spin_lock (lock=3Dlock@entry=3D0xffffffff81b9a5b8 <text_mute=
x>)
> > at /home/guoren/source/kernel/linux/kernel/locking/spinlock_debug.c:116
> > #3  0xffffffff80b2ea0e in __raw_spin_lock_irqsave
> > (lock=3D0xffffffff81b9a5b8 <text_mutex>) at
> > /home/guoren/source/kernel/linux/include/linux/spinlock_api_smp.h:111
> > #4  _raw_spin_lock_irqsave (lock=3Dlock@entry=3D0xffffffff81b9a5b8
> > <text_mutex>) at
> > /home/guoren/source/kernel/linux/kernel/locking/spinlock.c:162
> > #5  0xffffffff80b27c54 in rt_mutex_slowtrylock
> > (lock=3D0xffffffff81b9a5b8 <text_mutex>) at
> > /home/guoren/source/kernel/linux/kernel/locking/rtmutex.c:1393
> > #6  0xffffffff80b295ea in rt_mutex_try_acquire
> > (lock=3D0xffffffff81b9a5b8 <text_mutex>) at
> > /home/guoren/source/kernel/linux/kernel/locking/rtmutex.c:319
> > #7  __rt_mutex_lock (state=3D2, lock=3D0xffffffff81b9a5b8 <text_mutex>)=
 at
> > /home/guoren/source/kernel/linux/kernel/locking/rtmutex.c:1805
> > #8  __mutex_lock_common (ip=3D18446744071562135170, nest_lock=3D0x0,
> > subclass=3D0, state=3D2, lock=3D0xffffffff81b9a5b8 <text_mutex>) at
> > /home/guoren/source/kernel/linux/kernel/locking/rtmutex_api.c:518
> > #9  mutex_lock_nested (lock=3D0xffffffff81b9a5b8 <text_mutex>,
> > subclass=3Dsubclass@entry=3D0) at
> > /home/guoren/source/kernel/linux/kernel/locking/rtmutex_api.c:529
> > #10 0xffffffff80010682 in arch_jump_label_transform_queue
> > (entry=3Dentry@entry=3D0xffffffff8158da28, type=3D<optimized out>) at
> > /home/guoren/source/kernel/linux/arch/riscv/kernel/jump_label.c:39
> > #11 0xffffffff801d86b2 in __jump_label_update
> > (key=3Dkey@entry=3D0xffffffff81a1abb0 <qspinlock_key>,
> > entry=3D0xffffffff8158da28, stop=3Dstop@entry=3D0xffffffff815a5e68
> > <__tracepoint_ptr_initcall_finish>, init=3Dinit@entry=3Dtrue)
> >     at /home/guoren/source/kernel/linux/kernel/jump_label.c:513
> > #12 0xffffffff801d890c in jump_label_update
> > (key=3Dkey@entry=3D0xffffffff81a1abb0 <qspinlock_key>) at
> > /home/guoren/source/kernel/linux/kernel/jump_label.c:920
> > #13 0xffffffff801d8be8 in static_key_disable_cpuslocked
> > (key=3Dkey@entry=3D0xffffffff81a1abb0 <qspinlock_key>) at
> > /home/guoren/source/kernel/linux/kernel/jump_label.c:240
> > #14 0xffffffff801d8c04 in static_key_disable
> > (key=3Dkey@entry=3D0xffffffff81a1abb0 <qspinlock_key>) at
> > /home/guoren/source/kernel/linux/kernel/jump_label.c:248
> > #15 0xffffffff80c04a1a in riscv_spinlock_init () at
> > /home/guoren/source/kernel/linux/arch/riscv/kernel/setup.c:271
> > #16 setup_arch (cmdline_p=3Dcmdline_p@entry=3D0xffffffff81a03e88) at
> > /home/guoren/source/kernel/linux/arch/riscv/kernel/setup.c:336
> > #17 0xffffffff80c007a2 in start_kernel () at
> > /home/guoren/source/kernel/linux/init/main.c:922
> > #18 0xffffffff80001164 in _start_kernel ()
> > Backtrace stopped: frame did not save the PC
> > (gdb) p /x lock
> > $1 =3D 0xffffffff81b9a5b8
> > (gdb) p /x *lock
> > $2 =3D {{val =3D {counter =3D 0x20000}, {locked =3D 0x0, pending =3D 0x=
0},
> > {locked_pending =3D 0x0, tail =3D 0x2}}}
>
> I have for you here a fast fixup for reference. (PS: I'm digging into
> the root cause mentioned by Will Deacon.)
>
> diff --git a/arch/riscv/include/asm/text-patching.h
> b/arch/riscv/include/asm/text-patching.h
> index 7228e266b9a1..0439609f1cff 100644
> --- a/arch/riscv/include/asm/text-patching.h
> +++ b/arch/riscv/include/asm/text-patching.h
> @@ -12,5 +12,6 @@ int patch_text_set_nosync(void *addr, u8 c, size_t len)=
;
>  int patch_text(void *addr, u32 *insns, size_t len);
>
>  extern int riscv_patch_in_stop_machine;
> +extern int riscv_patch_in_spinlock_init;
>
>  #endif /* _ASM_RISCV_PATCH_H */
> diff --git a/arch/riscv/kernel/jump_label.c b/arch/riscv/kernel/jump_labe=
l.c
> index 6eee6f736f68..d9a5a5c1933d 100644
> --- a/arch/riscv/kernel/jump_label.c
> +++ b/arch/riscv/kernel/jump_label.c
> @@ -36,9 +36,11 @@ bool arch_jump_label_transform_queue(struct
> jump_entry *entry,
>                 insn =3D RISCV_INSN_NOP;
>         }
>
> -       mutex_lock(&text_mutex);
> +       if (!riscv_patch_in_spinlock_init)
> +               mutex_lock(&text_mutex);
>         patch_insn_write(addr, &insn, sizeof(insn));
> -       mutex_unlock(&text_mutex);
> +       if (!riscv_patch_in_spinlock_init)
> +               mutex_unlock(&text_mutex);
>
>         return true;
>  }
> diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
> index db13c9ddf9e3..ab009cf855c2 100644
> --- a/arch/riscv/kernel/patch.c
> +++ b/arch/riscv/kernel/patch.c
> @@ -24,6 +24,7 @@ struct patch_insn {
>  };
>
>  int riscv_patch_in_stop_machine =3D false;
> +int riscv_patch_in_spinlock_init =3D false;
>
>  #ifdef CONFIG_MMU
>
> @@ -131,7 +132,7 @@ static int __patch_insn_write(void *addr, const
> void *insn, size_t len)
>          * safe but triggers a lockdep failure, so just elide it for that
>          * specific case.
>          */
> -       if (!riscv_patch_in_stop_machine)
> +       if (!riscv_patch_in_stop_machine && !riscv_patch_in_spinlock_init=
)
>                 lockdep_assert_held(&text_mutex);
>
>         preempt_disable();
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index 016b48fcd6f2..87ddf1702be4 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -268,7 +268,9 @@ static void __init riscv_spinlock_init(void)
>         }
>  #if defined(CONFIG_RISCV_COMBO_SPINLOCKS)
>         else {
> +               riscv_patch_in_spinlock_init =3D 1;
>                 static_branch_disable(&qspinlock_key);
> +               riscv_patch_in_spinlock_init =3D 0;
>                 pr_info("Ticket spinlock: enabled\n");
>                 return;
>         }
>
>
>
> --
> Best Regards
>  Guo Ren

Thanks Guo for looking into this.

Your solution is not very pretty but I don't have anything better :/
Unless introducing a static_branch_XXX_nolock() API? I gave it a try
and it fixes the issue, but not sure this will be accepted.

The thing is the usage of static branches is temporary, we'll use
alternatives when I finish working on getting the extensions very
early from the ACPI tables (I have a poc that works, just needs some
cleaning).

So let's say that I make this early extension parsing my priority for
6.14, can we live with Guo's hack in this release? Or should we revert
this commit?

Thanks,

Alex

