Return-Path: <devicetree+bounces-219231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 765A9B88BF1
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 12:04:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C6DA1C24A32
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41DB42C029D;
	Fri, 19 Sep 2025 10:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g7o6dHTX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FCF23E32B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 10:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758276256; cv=none; b=j8C30Jlp8aTykAozEofYwEhp3ITQqBqXQMXIdOb4eVptnU5XUIhjn+douIHzAVG8mCC27t9mAUl23YFMaamyTh4aDdifiN1OPpXCpb8ljhD7LB7Ckqe7rkGLUJFRKokSSQmlTTnJE0vhL+/svWrnCKR+aM4UJzHj7NrdWODloUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758276256; c=relaxed/simple;
	bh=MIxBc+wC/cmWNfba7NJKwLPOOs4c9e3k+S+2+58b6Og=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TyoQMXFw3YaObf3aOFhMlyc3kuZtplzokYYlJSfDb/6sx2tfymf6CLfrNdlYkFkDYvA4+SumgMIMaeQTBF9XHvTbWZUY3y1bNNGi/ooImLRQ1/+37uWgYapur+/b2NlOk1sZBfSUenLfNy3cM1LVHL/pmzGiNzu4RgMn8IujMZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g7o6dHTX; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45f2c4c3853so6825085e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 03:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758276253; x=1758881053; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cwSJqMLbkr+n3h9atzHQFhMdHOFSLWWZIBI6hzjzDlU=;
        b=g7o6dHTX/jKHUK07jvyCoY6ajcxb8/0bRLC2sulEeTiYYmsNUrN/qQ/Kx+x8TGrH09
         xXtmOl/GW/IoqmUA5L8WmpnY/Ry4Mac8F62gy298XaBuGkf30NMiGOVgxuDU0wMvEgog
         9fICTRwDWsQqioLOic49O/qJycH1rVfrSrPZTNghHMFyjkvgtcfZAArPlykxj6LRAgIn
         /z+2cdKAoSMYYHGcHTJUF11WeWwvX1KLS9ZNV0FO83Q74Nm2sLgb/jDzNEhIoab1YNJW
         mPjeFOktVP7AS7KpiFHPoxoBQ7ou9utiKL5FYJ9mpyFQ+LBfTNx7acGRLaPFBHksBDK+
         /N9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758276253; x=1758881053;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cwSJqMLbkr+n3h9atzHQFhMdHOFSLWWZIBI6hzjzDlU=;
        b=ogqJNBbwe4N3ejAhRUNWhyGGmDykqMZstCV15GWiNmagvrJTMxP60N1nzpg8omagqE
         MKcmOndmxihfYi7UKVbw5c8BDEptcdsi0TjGsMCGClhfRuznxmgMbwYyQRUrJ+kaeWVp
         ZsGhT5r1nGKS0aJ4TK1hrhqHnDFXDDOnCDhb81PSzll9H/P09Qk8QPul5d5lQXfMQpEm
         G8oduMqO2uvpVPo7OrIUzedt5K4y63mWlhm90LxH0iZUzmEevt2yTfKL/unctY60S9B3
         gbjU5+PW7MNgjJO1NMtRzN7BB4SEot8zEhtzg8xg9Zti/jfLiD0AQL34lr0fDoaEta/4
         QvRw==
X-Forwarded-Encrypted: i=1; AJvYcCUSwkTfay0CzoQEcqMHWveq19g2vvNtr8jPz3fud6AzH9tq1LvZ/uoJy52NReiXtmyg5yn0gk5bzBsr@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf3fqYYSvzsC+mD7lDY7+VCECmHCAK5wW6dESJ2Mshh6uBjsrX
	XL5krjmOVDg2RCHRPc/4+NPippTBRGKCqcZSczS0q1ohOIcFBO7dRh5y
X-Gm-Gg: ASbGncsfr2R//Qm17HDvfAbdtQViAQZ+g8k8gf/562yuRsD/3eOS4icS5r1kW9H1pt9
	EBkZhgyd2FA/d/hfLOqsA9/BdtP7/fBk2h6ZjVET3un5NSPdaMmLHM6DhK8GQ9y1r0L5KeGRqo0
	yRbTQgizSwmb/Ptc0+PwkiiRr0GAO1dV0kOSowpMd0ryks9pkwZwWFM99unij+wanyMAu31WSC/
	NVIl7wtUBTkzd+n4Dg43rGJ0r+IM/uUgwqN9ulTP1h5EhYC9N+VYdm063b2OmWP/FsA6pFRkA3l
	UraI8ZVZ3rC+WZYY0OCaHEp3n5LZv6jM/5ZxLEfB7QARhN2j5sOUclYo2yfzQHVqkm+RJDmSl/E
	CcqOIgrzILKGjv5ekVXMV
X-Google-Smtp-Source: AGHT+IHvZMGRRNi+u2pMIpVVRpaJCUA/81PZdTy1q3wdlCcos410V3il5VvXKBDg1PnvbPEV8rv3lQ==
X-Received: by 2002:a05:600c:6305:b0:45b:868e:7f7f with SMTP id 5b1f17b1804b1-467ee8c56d6mr28084075e9.17.1758276252440;
        Fri, 19 Sep 2025 03:04:12 -0700 (PDT)
Received: from andrea ([176.201.192.207])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f5a286edsm90295055e9.16.2025.09.19.03.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 03:04:12 -0700 (PDT)
Date: Fri, 19 Sep 2025 12:04:05 +0200
From: Andrea Parri <parri.andrea@gmail.com>
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, will@kernel.org,
	peterz@infradead.org, boqun.feng@gmail.com, mark.rutland@arm.com,
	ajones@ventanamicro.com, brs@rivosinc.com, anup@brainfault.org,
	atish.patra@linux.dev, pbonzini@redhat.com, shuah@kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, apw@canonical.com, joe@perches.com,
	linux-doc@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v3 0/8] riscv: Add Zalasr ISA extension support
Message-ID: <aM0qlTNPiaQRY2Nv@andrea>
References: <20250919073714.83063-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919073714.83063-1-luxu.kernel@bytedance.com>

On Fri, Sep 19, 2025 at 03:37:06PM +0800, Xu Lu wrote:
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
> Xu Lu (8):
>   riscv: add ISA extension parsing for Zalasr
>   dt-bindings: riscv: Add Zalasr ISA extension description
>   riscv: hwprobe: Export Zalasr extension
>   riscv: Introduce Zalasr instructions
>   riscv: Use Zalasr for smp_load_acquire/smp_store_release
>   riscv: Apply acquire/release semantics to arch_xchg/arch_cmpxchg
>     operations
>   RISC-V: KVM: Allow Zalasr extensions for Guest/VM
>   KVM: riscv: selftests: Add Zalasr extensions to get-reg-list test
> 
>  Documentation/arch/riscv/hwprobe.rst          |   5 +-
>  .../devicetree/bindings/riscv/extensions.yaml |   5 +
>  arch/riscv/include/asm/atomic.h               |   6 -
>  arch/riscv/include/asm/barrier.h              |  91 ++++++++++--
>  arch/riscv/include/asm/cmpxchg.h              | 136 ++++++++----------
>  arch/riscv/include/asm/hwcap.h                |   1 +
>  arch/riscv/include/asm/insn-def.h             |  79 ++++++++++
>  arch/riscv/include/uapi/asm/hwprobe.h         |   1 +
>  arch/riscv/include/uapi/asm/kvm.h             |   1 +
>  arch/riscv/kernel/cpufeature.c                |   1 +
>  arch/riscv/kernel/sys_hwprobe.c               |   1 +
>  arch/riscv/kvm/vcpu_onereg.c                  |   2 +
>  .../selftests/kvm/riscv/get-reg-list.c        |   4 +
>  13 files changed, 242 insertions(+), 91 deletions(-)

I wouldn't have rushed this submission while the discussion on v2 seems
so much alive;  IAC, to add and link to that discussion, this version
(not a review, just looking at this diff stat) is changing the fastpath

  read_unlock()
  read_lock()

from something like

  fence rw,w
  amodadd.w
  amoadd.w
  fence r,rw

to

  fence rw,rw
  amoadd.w
  amoadd.w
  fence rw,rw

no matter Zalasr or !Zalasr.  Similarly for other atomic operations with
release or acquire semantics.  I guess the change was not intentional?
If it was intentional, it should be properly mentioned in the changelog.

  Andrea

