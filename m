Return-Path: <devicetree+bounces-135352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AEFA00A67
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:19:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 329153A3DD7
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 14:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23001FA8CD;
	Fri,  3 Jan 2025 14:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUi1nU1l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB1B1494B2;
	Fri,  3 Jan 2025 14:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735913971; cv=none; b=WHMfq78DspciahVWIisbD+pOcyXku3V2b0RgVW07G+uyyq1p/oE7PwptAxM6v4dR3svvHvmsbmxK0WpXSi137fpb8A0xKBQKKeMiX8NVCJhngW/Yw1uenr5YUdnmfnsDeat+ASJQRz8Kr74gYOT4foWCKsPstTDFnYwfEwps7qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735913971; c=relaxed/simple;
	bh=jOD0rBEhWiPNNWLHN734VhNsPlExoCBZrRfk6PhVuyY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tHNK9qZ80vjhJcaRAzgaZ6Q+4SbHJ2o5R+1wh5FV8ma6ylHIYD9Mj8IpHBv0ZHntB8lNOCSq9v30Ext+IvCzYPTQkvLvK/7iVq1y0EFr55jqt4w59ylgikGNCeZ7P8wirHrmlZG20a/0kIuA3XoeEux+j/FjUiDxQ87JLcRha2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUi1nU1l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB56AC4CEDC;
	Fri,  3 Jan 2025 14:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735913970;
	bh=jOD0rBEhWiPNNWLHN734VhNsPlExoCBZrRfk6PhVuyY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=XUi1nU1lgKl/IV5+yVPmjieAfPr36h61o9HMPgEMd3GXoP+hQQiBHwGjkgmvBE5N0
	 lsYqCTyZDfQQhz1hCGqpaktWXN5Kzwo+z3PsEF+5bHWQNxYmPyVig1T2tv4ToRTQ4B
	 9MHBWLkpe4Q2sH9md5sVgKL74zaAdZE9JbvN7qlq/XsTLfrhxdSHo2D4ZZsTgbJ7p1
	 U0tFxa50UfU1ce1jXKJDy8XFM1rVstprlkDAJToyTUzWkTeNmPIOYVXnKGAHlrzsMl
	 v8jvuYmWD/YwG0tCe9+Q0VQfP7J8WQP4cAO31+6LHyS4GSAs0dZwrpzTtznkhmvgMv
	 vvSP42AAPHznw==
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e3fd6cd9ef7so16510031276.1;
        Fri, 03 Jan 2025 06:19:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUGgx1Gky4oziYYDW1JiUZiZXQ9jwSuupvVetAb2kuvBYFgYMgcJ8zvP+VXHAjq1azhYshhXGbK8k6MyYaM@vger.kernel.org, AJvYcCV5bDihndZYfVa5Gtmm8sdUkvG241qJpPcZ5ksgUHx2KT5ZmqPjnRnNWuZfr8qUnCD6k434BWkQtyvH@vger.kernel.org
X-Gm-Message-State: AOJu0YzwGXT5BHnqWvr/Q6bZFx2+1yPIfG48e7c0u5JXMDPzXC1jDtOf
	zBsbIk3HKC1X3jZ/qkqGjBx9g71k1EA44e+4/MzBtSliF6wGd9MRGqRZxCd1ECe0o4CPpaqRjVP
	Kt8ARohhl2uE6b/ART211QYWAZA==
X-Google-Smtp-Source: AGHT+IFMCEG6vm801Md4DisbmjVTF1baCXdXMZHZ7Mnq5bWWJ36YsQcO8y3B6JyuW2AaOkaiqWuV3O2ERFGoyqiwaco=
X-Received: by 2002:a05:690c:6311:b0:6e2:1c94:41f8 with SMTP id
 00721157ae682-6f3f7e3e092mr327324907b3.10.1735913969801; Fri, 03 Jan 2025
 06:19:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241223181813.224446-1-dmaluka@chromium.org> <20250102180807.GA73778-robh@kernel.org>
 <Z3cQr0YW0IU8VPzy@google.com>
In-Reply-To: <Z3cQr0YW0IU8VPzy@google.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 3 Jan 2025 08:19:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLAPp5cC_Usu32oCaLFu3c_7oxm6peQBvkLE-7xdqT4NA@mail.gmail.com>
Message-ID: <CAL_JsqLAPp5cC_Usu32oCaLFu3c_7oxm6peQBvkLE-7xdqT4NA@mail.gmail.com>
Subject: Re: [PATCH] x86/of: Restore possibility to use both ACPI and FDT from bootloader
To: Dmytro Maluka <dmaluka@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Saravana Kannan <saravanak@google.com>, 
	Saurabh Sengar <ssengar@linux.microsoft.com>, Usama Arif <usamaarif642@gmail.com>, 
	Stephen Boyd <sboyd@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	"open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>, =?UTF-8?Q?Pierre=2DCl=C3=A9ment_Tosi?= <ptosi@google.com>, 
	Shikha Panwar <shikhapanwar@google.com>, Will Deacon <will@kernel.org>, 
	Keir Fraser <keirf@google.com>, Michal Mazurek <mazurekm@google.com>, 
	=?UTF-8?Q?Bart=C5=82omiej_Grzesik?= <bgrzesik@google.com>, 
	Tomasz Nowicki <tnowicki@google.com>, Grzegorz Jaszczyk <jaszczyk@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 2, 2025 at 4:18=E2=80=AFPM Dmytro Maluka <dmaluka@chromium.org>=
 wrote:
>
> On Thu, Jan 02, 2025 at 12:08:07PM -0600, Rob Herring wrote:
> > On Mon, Dec 23, 2024 at 06:18:03PM +0000, Dmytro Maluka wrote:
> > > There are cases when the bootloader provides information to the kerne=
l
> > > in both ACPI and DTB, not interchangeably. One such use case is virtu=
al
> > > machines in Android. When running on x86, the Android Virtualization
> > > Framework (AVF) boots VMs with ACPI like it is usually done on x86 (i=
.e.
> > > the virtual LAPIC, IOAPIC, HPET, PCI MMCONFIG etc are described in AC=
PI)
> > > but also passes various AVF-specific boot parameters in DTB. This all=
ows
> > > reusing the same implementations of various AVF components on both
> > > arm64 and x86.
> >
> > Anyone booting Arm ACPI based systems with AVF?
>
> No, on Arm side AVF is DT only.
>
> > Where's this AVF binding documented?
>
> The strictly AVF-specific properties are described in [1]. When it comes
> to Linux guests, actually AFAIK currently all those properties are
> consumed by the guest userspace, not the guest kernel, so the role of
> the kernel is in fact just to pass them over to the userspace via sysfs.
>
> Besides that, one important DT binding used by AVF's Linux guest
> kernels, not userspace, is google,open-dice documented in
> Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml.
> [2] describes how it is used by the protected VM firmware (pvmfw) to
> securely boot protected VMs.
>
> Cc'ing some AVF folks to keep me honest.
>
> (AVF used to support protected VMs on arm64 only, but now we are trying
> to make them work on x86. So, taking google,open-dice as an example, we
> could add an ACPI binding to the open-dice driver, however bloating
> pvmfw with AML support is a no go, so we want to keep passing it via DT
> on x86 as well.)
>
> > > Commit 7b937cc243e5 ("of: Create of_root if no dtb provided by firmwa=
re")
> > > removed the possibility to do that, since among other things
> > > it introduced forcing emptying the bootloader-provided DTB if ACPI is
> > > enabled (probably assuming that if ACPI is available, a DTB can only =
be
> > > useful for applying overlays to it afterwards, for testing purposes).
> > >
> > > So restore this possibility. At the same time, since the aforemention=
ed
> > > recently introduced restriction is actually useful for preventing
> > > conflicts between ACPI and DT for LAPIC/IOAPIC/HPET setup, don't remo=
ve
> > > this restriction completely but relax it: unflatten the bootloader
> > > supplied DTB but don't try to use it for SMP setup (i.e. don't overri=
de
> > > the .parse_smp_cfg callback) if ACPI is enabled. Precisely, right now
> > > this prevents at least:
> > >
> > > - incorrectly calling register_lapic_address(APIC_DEFAULT_PHYS_BASE)
> > >   after the LAPIC was already successfully enumerated via ACPI, causi=
ng
> > >   noisy kernel warnings and probably potential real issues as well
> > >
> > > - failed IOAPIC setup in the case when IOAPIC is enumerated via mptab=
le
> > >   instead of ACPI (e.g. with acpi=3Dnoirq), due to
> > >   mpparse_parse_smp_config() overridden by x86_dtb_parse_smp_config()
> >
> > It would be better if we explicitly opt'ed into "things we want to get
> > from DT" rather than allowing anything except what we check for. There'=
s
> > a strong desire at least for arm64 to prevent systems from using both
> > at the same time. There are growing usecases for doing just that, but I
> > think we need to have some control or restrictions in place to define
> > what we support in the kernel.
>
> When it comes to arm64, AFAICS it already enforces this mutual
> exclusion (in setup_arch()):
>
>         if (acpi_disabled)
>                 unflatten_device_tree();

That's right. The patch to remove the if here was rejected, but I
applied the rest of the series. The acpi_disabled check you are
removing from unflatten_device_tree() was there to handle the arm64
desire to not use the bootloader provided DT in case it contained
parallel h/w descriptions. So with removing it, we'll have to come up
with another way if we enable arm64. But I'm leaving fighting over
supporting the usecases on Arm to someone who needs it.

Note that there's also an interaction with kexec that has to be
considered since kexec needs the bootloader provided DT. Probably not
an issue in your use on x86 though.

Rob

