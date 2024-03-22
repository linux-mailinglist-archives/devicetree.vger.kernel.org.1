Return-Path: <devicetree+bounces-52535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 219B288714E
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 17:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CA801F22CC6
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 16:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEFF95D729;
	Fri, 22 Mar 2024 16:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="gt7Zs7LI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A567D605A5
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 16:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711126380; cv=none; b=QFUajC/zCJKljmPljRBTkOauczxoD9UbdQz+T/EuEhstKNkGjr7vni2zVIzB+kCR5tBET6qers1tzcV25zLtT8YeRkcb/fgcWpqUKw+2yGasNxDCHyKYvLXLFoHBqYekjGq88VORo6qcREQ4tHNzU15KsUGd0RBzP5/qDztOiNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711126380; c=relaxed/simple;
	bh=ugO3VCcCbFXqa0j0ulFrbXaGajsAP4EqVB7of7qqfPs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NKw3lH3nkKYurBELdBqmA4VbFIx8lw7kQHR06kpqVW9yEh6OZAMuO8JN2PyLOUVaDEwfHnnxMBm/cGYm//8Xrg2ivIgTW4fALBtpfrNOCxTsGieNxXe+xdM/o9bblCBhFH69JKJOhPfzg8vRcy9QV5fSHADWs+VIsre/EmveksU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=gt7Zs7LI; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-609ff069a40so26733087b3.1
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 09:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1711126377; x=1711731177; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y51uEGJ03D6pw21uRms6OLbBjZsNY8YSRn9RWNKVb+8=;
        b=gt7Zs7LIEjkrCuFLBHQq+9o8bSsfH1Ov05v4LPLE48/hUiYYODfkVGVUaYhBcFjHJ+
         0X6i9UOEdDeICZydK840q2xp/F+AB3VW4Zmf8NTkSmYOqZ8T/ovN5fZ44dw1oM6+AUoI
         zXET6j7bNXPdROlqyKcR7OPsdT3j0Qc9vLS+nXD/1vw8jT6QeBkKH2a44Daox+SH4ep+
         MNNd4bpmivvUdP4WFv3LEq0wp6aIP8Gb6qRxiDSzwvjpFfhou84x3tnZYo7AwL7XpK+L
         vOnuj6//8GRCtfQzE7llvlSmRkXL+DQasnbiIQY43gK+e3C8sZNrW6HvLBgRs4onCSwl
         doYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711126377; x=1711731177;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y51uEGJ03D6pw21uRms6OLbBjZsNY8YSRn9RWNKVb+8=;
        b=G7n/Bvo6uDaLQ9W6b8btapLWpFb0FdrgzJF8LhMyC9T106oyIgfDBGIrILqH3mJQe4
         ruyg4V8eYTngVWtfh3j2DvrvMPy5DeBsp6ThSqINECX+F2AoXfhc0LPVw+cE43cO2TKD
         jUMifBs7hMRfpWplCfwDOHH/mgDRb/A8samw4NqLegUOhSunbb91vnIc31Ew9hkbRB15
         9P7P7lPvQX3O6hLjpcQMbCf0MkatbjGs4y7HrA86umtwSHRSHS5Gk8mx7TGonj/qyTm3
         PzahW+LivawRDGUT5Kg3X8NoI7GbKSQBlJdupYUNCjEnCdEAkDWZ45CAIUxieSB0TJnE
         2ROg==
X-Forwarded-Encrypted: i=1; AJvYcCU4E5WDDVQf/YPV28RW72Bed+2EgmETL57ajcLrgitdMD10EMfspg7YNRNGIqS0kFgP5Kfk0V9+VmM5S9LvxVRZiqLFSLisAeLLug==
X-Gm-Message-State: AOJu0YyqP9UPdw5Hv53UiJ4VjlQa6Io1BlqlROJUt47pPEVP9JB7SORM
	xBE46LRv2Kgl23T9xvk62w4TgbDK0uvIULLReqvQhrwRD/z/gMxtdTsRnlQUog7DLej1aMsCK1j
	L/Luik22kJDzG4Yt4yf4eARRsMprVaOl1p8hxsw==
X-Google-Smtp-Source: AGHT+IEpg7MCg3bZ38eIAspdWgzOjXUKRaxb3wbMQl77qTIMFr7IGfaPlazJNe4j1FElxowopIqWuHH20jjSqY11dPk=
X-Received: by 2002:a81:710a:0:b0:60f:d6fc:74f3 with SMTP id
 m10-20020a81710a000000b0060fd6fc74f3mr228823ywc.7.1711126377529; Fri, 22 Mar
 2024 09:52:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319215915.832127-1-samuel.holland@sifive.com>
 <20240319215915.832127-6-samuel.holland@sifive.com> <CAKC1njSg9-hJo6hibcM9a-=FUmMWyR39QUYqQ1uwiWhpBZQb9A@mail.gmail.com>
 <40ab1ce5-8700-4a63-b182-1e864f6c9225@sifive.com> <CAKC1njQYZHbQJ71mapeG1DEw=A+aGx77xsuQGecsNFpoJ=tzGQ@mail.gmail.com>
 <20240322-3c32873c4021477383a15f7d@orel>
In-Reply-To: <20240322-3c32873c4021477383a15f7d@orel>
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 22 Mar 2024 09:52:48 -0700
Message-ID: <CAKC1njTGSMPekhvyRW0gz6+mY2S_==voCcspoLAyp38X-BcWcw@mail.gmail.com>
Subject: Re: [RISC-V] [tech-j-ext] [RFC PATCH 5/9] riscv: Split per-CPU and
 per-thread envcfg bits
To: Andrew Jones <ajones@ventanamicro.com>
Cc: Samuel Holland <samuel.holland@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, 
	tech-j-ext@lists.risc-v.org, Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com, 
	Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Guo Ren <guoren@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 22, 2024 at 1:09=E2=80=AFAM Andrew Jones <ajones@ventanamicro.c=
om> wrote:
>
> On Tue, Mar 19, 2024 at 09:39:52PM -0700, Deepak Gupta wrote:
> ...
> > I am not sure of the practicality of this heterogeneity for Zicboz and
> > for that matter any of the upcoming
> > features that'll be enabled via senvcfg (control flow integrity,
> > pointer masking, etc).
> >
> > As an example if cache zeroing instructions are used by app binary, I
> > expect it to be used in following
> > manner
> >
> >  - Explicitly inserting cbo.zero by application developer
> >  - Some compiler flag which ensures that structures larger than cache
> > line gets zeroed by cbo.zero
> >
> > In either of the cases, the developer is not expecting to target it to
> > a specific hart on SoC and instead expect it to work.
> > There might be libraries (installed via sudo apt get) with cache zero
> > support in them which may run in different address spaces.
> > Should the library be aware of the CPU on which it's running. Now
> > whoever is running these binaries should be aware which CPUs
> > they get assigned to in order to avoid faults?
> >
> > That seems excessive, doesn't it?
> >
>
> It might be safe to assume extensions like Zicboz will be on all harts if
> any, but I wouldn't expect all extensions in the future to be present on
> all available harts. For example, some Arm big.LITTLE boards only have
> virt extensions on big CPUs. When a VMM wants to launch a guest it must
> be aware of which CPUs it will use for the VCPU threads. For riscv, we
> have the which-cpus variant of the hwprobe syscall to try and make this
> type of thing easier to manage, but I agree it will still be a pain for
> software since it will need to make that query and then set its affinity,
> which is something it hasn't needed to do before.
>

Sure, the future may be a world where heterogeneous ISA is a thing. But
that's not the present. Let's not try to build for something which
doesn't exist.
It has been (heterogeneous ISA) tried earlier many times and mostly have
fallen flat (remember on Intel alder lake, Intel had to ship a ucode patch =
to
disable AVX512 exactly for same reason)
https://www.anandtech.com/show/17047/the-intel-12th-gen-core-i912900k-revie=
w-hybrid-performance-brings-hybrid-complexity/2

As and when ISA features get enabled, they get compiled into libraries/bina=
ries
and end user many times use things like `taskset` to set affinity
without even realizing
there is some weirdness going on under the hood. For majority of use
cases -- heterogeneous
ISA doesn't make sense. Sure if someone is willing to build a custom
SoC with heterogeneous
ISA for their strict usecase, they control their software and hardware
and thus they can do that.
But littering linux kernel to support wierd usecases and putting a
burden of that on majority of
usecases and software is not wise.

If something like this has to be done, I expect first that it doesn't
force end users to learn
about ISA differences between harts on their system and then figure
out which installed
packages have which ISA features compiled in. This is like walking on
eggshells from the end
user perspective. Sure, end user can be extremely intelligent / smart
and figure it all out but
that population is rare and that rare population can develop their
custom kernel and libc
patches to do something like this.

This is a good science project to support heterogeneous ISA but
practically not viable unless
there is a high level end user use case.

> Thanks,
> drew

