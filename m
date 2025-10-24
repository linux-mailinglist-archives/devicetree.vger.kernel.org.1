Return-Path: <devicetree+bounces-230979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 131D4C08538
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 01:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8CD47347642
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 23:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F762E2DE6;
	Fri, 24 Oct 2025 23:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FaLJMVa2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 937FD22FE0A
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 23:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761348968; cv=none; b=hdCIXKLvEAZWBGF3qHp7V+vAHezUCk5NL/A1wQg+73TJJSLvqpTAx4HxIDHyarSJTbf1PlHSa/EvZAJnl0+2xmJNUeuV3kjxDGBCij8GqkrIMRemWRKTVmu3JaYpz7DO50UJJffGUpEV6F57bTM2MsjAkCr0fylk3YehVVGHgJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761348968; c=relaxed/simple;
	bh=+NEftr7VWmliQcXUqkaO9sJG2DgzF/Yaw8WY6cHdu/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MthCegXhSezQxgavuoo6fTN1jw4KUR1hdQdigu/kLQZs5H+O9guZIEo+RjVOjb+NZVphPM8unMhs6rw0JUuoyy+iLGEqa6XQpxPod+7eYTOm3mN7sOoh32IuuYfdVUr+/M6xZWsNFmEcdGW5lC0knn0gTYHJm6xENcvHjLLbLEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FaLJMVa2; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-63c3d913b3bso4635790a12.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 16:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761348965; x=1761953765; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4qshgmZlkIM4+vcn2er+R5ZwtdRF9Gko5Hx8ZyCDhMI=;
        b=FaLJMVa2g39PNiAd8p4j8ZaQTqFFQllIjrDkpLnpn45XDGoJXN3zRlnQslEP1ob+Cb
         87RkXR11VUxW/wruhNhyTGRnScH9KE8DGL4xcaNdtxnryvsq0ysnSrBB9EjP7QT16FX6
         F4HCzsYc0Q5jG1WNVkphkpwsHd7P6QU7K1FItNnTUdPfiUsJiYP7sNzhonehCooVgfcs
         qy8MjrBIJPtIZDB8+DgPTlEF72UiOKyx0msWoda5drC1s2DNmL5LxrMQQV8ZjT7VJHea
         TB3wxoG+vkDdPpz4mdYwn9Taz+EwUieGDpEn220Cx+dDMZv3F7kU72IzxhikQtCXQft5
         hjZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761348965; x=1761953765;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4qshgmZlkIM4+vcn2er+R5ZwtdRF9Gko5Hx8ZyCDhMI=;
        b=ntncdxXniTAW0JHGuHbO3CH6JozrJtfL9SouDxBQRcP6nDMMy2JerEKDuZBVDWn7a1
         euzP6x8anoUEBGGySyWR3nqdj01oJ1cNintLqLYz6kDjh/6RdvOcopsdGYXcNCQyQJGH
         FzHHbQppFTArukTuKw3ky3U3Gq4DqQxu56LpVdKHssFFo0B65nh0N6WorqCRfkcBeU2K
         ESvuUQ6u/HT13e8VumnxI4K93MtA9kFbxvXcmSkG7XGIcMaypIN+VXrMFosXYBXodrlj
         Di6D3owpUqJ9zs2vy2ipo1ta7VLe/OpCpri9OKdqCVIwqU1UKoCAbSd756Sn43H49l54
         TfUg==
X-Forwarded-Encrypted: i=1; AJvYcCVvhnbXTjvIP7ya8LBIJbcc+r0mbWfLZdb4XKuOiqc75ZPlSy4lY5V+IqBMPVd+Y0qDCs82ydg+9Y0O@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr0UhbL8PEuESiv/yZv/YTUcaEkTrWO9xaHpLKeKxEL17eerA1
	mwg0sKs2ZvfMenLwROB1O0bgjM3XGtqiMfDihdjrabCIFaKqn5naV1Ic48fweA==
X-Gm-Gg: ASbGncvI9HaVnV7NBLt3MwsTQEVj3lGAgJSGk1C0Z06QjDmnhOf8uCb8PINZIAfCAO7
	vCz/8HDn4Tc57tiEMcBicZjs1BM2LqItx6FMlaJy6brENAqFe5q1IpN8I599Iu5KtgrGJBEdblP
	cLSnZa27u5NM89HwRSzKngW0utwR3C96nIIVBTWR0N6bjnpWz+QWdcgdAh6iW1yuuH6LWIE3pp5
	VK3ubisfrmL0bUZxx8h1kZOA3tTOSdd1Qxt6nLY0MFYdchx6Lhw0/EQdgdrBA9YFInIAOn97nUK
	PqCux0tIP9UXTaIqTL1uiLtWzs/s7CKMO7nOKXp2eyZ/9NiBaWkSGhKsk38Q58OzV1cW9pAC8WF
	47X0BBIkczTJSeShTRjK4H1uRtC1XbEoFI0TuSBaN75dvHM9JBh0Lwn+0gez3UDntwy9WKv1iT6
	Pn5KwJmw==
X-Google-Smtp-Source: AGHT+IEQw0TA1CC7no4fMAMA9oQRoUt9Lgbn+Uft1azRKrTnyGz7lCiyNuO6p2GHKFOC05VVJ/iKvw==
X-Received: by 2002:a05:600c:4f89:b0:471:a98:99a6 with SMTP id 5b1f17b1804b1-475cafae164mr64272055e9.11.1761342429974;
        Fri, 24 Oct 2025 14:47:09 -0700 (PDT)
Received: from andrea ([31.189.53.175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47496d4b923sm89676705e9.14.2025.10.24.14.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 14:47:09 -0700 (PDT)
Date: Fri, 24 Oct 2025 23:47:04 +0200
From: Andrea Parri <parri.andrea@gmail.com>
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, will@kernel.org,
	peterz@infradead.org, boqun.feng@gmail.com, mark.rutland@arm.com,
	anup@brainfault.org, atish.patra@linux.dev, pbonzini@redhat.com,
	shuah@kernel.org, ajones@ventanamicro.com, brs@rivosinc.com,
	guoren@kernel.org, linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org,
	apw@canonical.com, joe@perches.com, lukas.bulwahn@gmail.com
Subject: Re: [PATCH v4 00/10] riscv: Add Zalasr ISA extension support
Message-ID: <aPvz2Pb6RuWnw9Ht@andrea>
References: <20251020042056.30283-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251020042056.30283-1-luxu.kernel@bytedance.com>

On Mon, Oct 20, 2025 at 12:20:46PM +0800, Xu Lu wrote:
> This patch adds support for the Zalasr ISA extension, which supplies the
> real load acquire/store release instructions.
> 
> The specification can be found here:
> https://github.com/riscv/riscv-zalasr/blob/main/chapter2.adoc
> 
> This patch seires has been tested with ltp on Qemu with Brensan's zalasr
> support patch[1].
> 
> Some false positive spacing error happens during patch checking. Thus I
> CCed maintainers of checkpatch.pl as well.
> 
> [1] https://lore.kernel.org/all/CAGPSXwJEdtqW=nx71oufZp64nK6tK=0rytVEcz4F-gfvCOXk2w@mail.gmail.com/
> 
> v4:
>  - Apply acquire/release semantics to arch_atomic operations. Thanks
>  to Andrea.

Perhaps I wasn't clear enough, sorry, but I did mean my suggestion
(specifically, the use of .aq/.rl annotations) to be conditional on
zalasr.  Same observation for xchg/cmpxchg below.  IOW, I really
expected this series to introduce _no changes_ to our lowerings when
!zalasr.  If any !zalasr-changes are needed, I'd suggest isolating
/submitting them in dedicated patches.

But other than that, this looks pretty good to me.  Perhaps something
else to consider for zalasr is our lowering of smp_cond_load_acquire()
(can't spot an actual bug now, but recall the principle "zalasr -> use
.aq/.rl annotations ..."): riscv currently uses the "generic", fence-
based implementation from include/asm-generic/barrier.h; compare that
with e.g. the implementation from arch/arm64/include/asm/barrier.h .

  Andrea


> v3:
>  - Apply acquire/release semantics to arch_xchg/arch_cmpxchg operations
>  so as to ensure FENCE.TSO ordering between operations which precede the
>  UNLOCK+LOCK sequence and operations which follow the sequence. Thanks
>  to Andrea.
>  - Support hwprobe of Zalasr.
>  - Allow Zalasr extensions for Guest/VM.
> 
> v2:
>  - Adjust the order of Zalasr and Zalrsc in dt-bindings. Thanks to
>  Conor.
> 
> Xu Lu (10):
>   riscv: Add ISA extension parsing for Zalasr
>   dt-bindings: riscv: Add Zalasr ISA extension description
>   riscv: hwprobe: Export Zalasr extension
>   riscv: Introduce Zalasr instructions
>   riscv: Apply Zalasr to smp_load_acquire/smp_store_release
>   riscv: Apply acquire/release semantics to arch_xchg/arch_cmpxchg
>     operations
>   riscv: Apply acquire/release semantics to arch_atomic operations
>   riscv: Remove arch specific __atomic_acquire/release_fence
>   RISC-V: KVM: Allow Zalasr extensions for Guest/VM
>   RISC-V: KVM: selftests: Add Zalasr extensions to get-reg-list test
> 
>  Documentation/arch/riscv/hwprobe.rst          |   5 +-
>  .../devicetree/bindings/riscv/extensions.yaml |   5 +
>  arch/riscv/include/asm/atomic.h               |  70 ++++++++-
>  arch/riscv/include/asm/barrier.h              |  91 +++++++++--
>  arch/riscv/include/asm/cmpxchg.h              | 144 +++++++++---------
>  arch/riscv/include/asm/fence.h                |   4 -
>  arch/riscv/include/asm/hwcap.h                |   1 +
>  arch/riscv/include/asm/insn-def.h             |  79 ++++++++++
>  arch/riscv/include/uapi/asm/hwprobe.h         |   1 +
>  arch/riscv/include/uapi/asm/kvm.h             |   1 +
>  arch/riscv/kernel/cpufeature.c                |   1 +
>  arch/riscv/kernel/sys_hwprobe.c               |   1 +
>  arch/riscv/kvm/vcpu_onereg.c                  |   2 +
>  .../selftests/kvm/riscv/get-reg-list.c        |   4 +
>  14 files changed, 314 insertions(+), 95 deletions(-)
> 
> -- 
> 2.20.1
> 

