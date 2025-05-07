Return-Path: <devicetree+bounces-174793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F4141AAE801
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 19:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02B261C42791
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 17:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8F828D839;
	Wed,  7 May 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="veXJdUvv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9AE2147F8
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 17:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746639533; cv=none; b=hHjb2Z5cpdIc7pMzpZsh/ZflG0xpNPDO3Ct8UU2aKtiGAX6xVHJSaT6uN9E+ncub/lrM+nsfhBAjYeas0pc/qYSiI6kiAPnp06Rn7btm2tguZAQaVakHjNmUR7D7j0hQXEGXC56yy2h7zYWGgyENjsZ+FsvUN9sWhBGT8ZOxthA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746639533; c=relaxed/simple;
	bh=Kn/hs+LPbpiP4FFIVL3DRqt9XY09zw4ymjKN4i1ba/E=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=OxWKDxpp5+yT/1J9o4/Q5NQUyaCXNuzIYVQFBfC3OYB60u12uofbO5vDXxNgqWRTbSTlCylL8JfsPrfIc6+iTDXdmDkJGFFyNmFuousEvhe4dG+v4GD18DHBi7+d0lj1FLnS3RCzZEDwbTpV7HWjoWUzbI0UZyYI0GrxYs+mw68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=veXJdUvv; arc=none smtp.client-ip=209.85.214.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-224192ff68bso1148965ad.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 10:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746639529; x=1747244329; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=xPKhEEOlzYIkRbPw/GeR8hWFfjD3gG75JAvhi9V0F+0=;
        b=veXJdUvvr38Z+ouYuT3ULG3pij1pqmlSQFQDa2LX8nQU/w7cy9H7aHrhP+t+2lCjLn
         cGXIre6xOZpvyNKHk5h+9jYB6SULNIX8nOaxwq/Pj0Mg89/UuynpJxFUgG5CBpfo832v
         xonL6Bqc7hj1wcu5mhiwOmNX/YX9xsSpYxTHfWPMgfF775Zjka/dt96qeHXF2XvEJF/1
         NSLPKqJlz9Yl5R8LyTfnGWDywg2u5drcGTjCmZFGLws0HjshpFg7qVX8hjZlIZ2AiELl
         kpgy2ucP+C4mMdBGdxawPLyvSjXQq7OzdmiCqNoN50Sthub6kNJdhpjS2BJXdirSzIYI
         eroQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746639529; x=1747244329;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xPKhEEOlzYIkRbPw/GeR8hWFfjD3gG75JAvhi9V0F+0=;
        b=o63ILBoY3WXGUjpyi/FscWecumMLArxgKHEwtIO4KH0nFhkOwdXBqFL9lk/axEq+qZ
         6SEz4wpT9iJ/TeTofbl19fxs8ZsGKK5CSC1BeK9+XEzaudrd/Z0d5R0Ki3Edxo8Bu7Fk
         X/wD+01YwGa4OB0OeVEkb3B/iJW6dTbd2C1AG74eOi1YTS7erG8FprXD7lAZVD+tpGDi
         Q655oq4byeW28l4jvF9oWoYcN2ylzIAFJhJHHNxD9jftHq2KotZH8ea6zpOgsghg4pRK
         RYhrw+iCm/LKL/0am+9l8PfbsqAyr30Pp0DyqpPfm5fv3yAMA3wlMdiEXbO59CzKnV7L
         5PFw==
X-Forwarded-Encrypted: i=1; AJvYcCXBmhsp+p9p2if1o6SPOmu6mgz4YG4taI0aIVmyc7kNJNukVsaJ0yTjtCohXR3a96Mgdbfkss2Bacm3@vger.kernel.org
X-Gm-Message-State: AOJu0YxnTnCyvzNJ5nGtBgS4+gQMT0Yfr3EY3WjAfGR0achrfT0qgdJc
	8nd124Nr4lWKcNeujhhus+bb1dxKIys/TFFvGFF5X4iuQsYe3rGPigxEaHRJ8zd6t/f/zi1CZ5L
	F7PwxxRjq6gPWNKl3jA==
X-Google-Smtp-Source: AGHT+IGNfkFxMjaTsgXaQ67I1WvGAJM6TlgtahsPE6jcXmeR00somZXniUnAeUbq3tjSmORMJMl00b971pTs36O8
X-Received: from plbiy10.prod.google.com ([2002:a17:903:130a:b0:223:242b:480a])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:903:d3:b0:22e:6cc6:cf77 with SMTP id d9443c01a7336-22e6cc6d267mr30697245ad.53.1746639529608;
 Wed, 07 May 2025 10:38:49 -0700 (PDT)
Date: Wed,  7 May 2025 10:38:40 -0700
In-Reply-To: <aBl0kUIKryH5AUD5@archie.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <aBl0kUIKryH5AUD5@archie.me>
X-Mailer: git-send-email 2.49.0.987.g0cc8ee98dc-goog
Message-ID: <20250507173840.2541517-1-changyuanl@google.com>
Subject: Re: [PATCH v7 17/18] Documentation: add documentation for KHO
From: Changyuan Lyu <changyuanl@google.com>
To: bagasdotme@gmail.com, akpm@linux-foundation.org
Cc: anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	changyuanl@google.com, corbet@lwn.net, dave.hansen@linux.intel.com, 
	devicetree@vger.kernel.org, dwmw2@infradead.org, ebiederm@xmission.com, 
	graf@amazon.com, hpa@zytor.com, jgowans@amazon.com, kexec@lists.infradead.org, 
	krzk@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
	luto@kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
	pasha.tatashin@soleen.com, pbonzini@redhat.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh@kernel.org, rostedt@goodmis.org, rppt@kernel.org, 
	saravanak@google.com, skinsburskii@linux.microsoft.com, tglx@linutronix.de, 
	thomas.lendacky@amd.com, will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Bagas,

On Tue, May 06, 2025 at 09:31:45 +0700, Bagas Sanjaya <bagasdotme@gmail.com> wrote:
> On Thu, May 01, 2025 at 03:54:24PM -0700, Changyuan Lyu wrote:
> > +This document expects that you are familiar with the base KHO
> > +:ref:`concepts <concepts>`. If you have not read
> The reference label is generic and can collide with future patches.
> It should've been disambiguated as kho_concepts instead.

I renamed `concepts` to `kho-concepts`.

> > +them yet, please do so now.
> > +
> > +Prerequisites
> > +=============
> > +
> > +KHO is available when the ``CONFIG_KEXEC_HANDOVER`` config option is set to y
> > +at compile time. Every KHO producer may have its own config option that you
> when the kernel is compiled with ``CONFIG_KEXEC_HANDOVER`` set to y.

Done.

> > +need to enable if you would like to preserve their respective state acro
> > +kexec.
> > +
> > <snipped>...
> > +First, before you perform a KHO kexec, you need to move the system into
> > +the :ref:`KHO finalization phase <finalization_phase>` ::
>
> kho_finalization_phase to disambiguate label.
>

I renamed finalization_phase to kho-finalization-phase.

> > +Next, load the target payload and kexec into it. It is important that you
> > +use the ``-s`` parameter to use the in-kernel kexec file loader, as user
> > +space kexec tooling currently has no support for KHO with the user space
> > +based file loader ::
> > +
> > +  # kexec -l Image --initrd=initrd -s
> > +  # kexec -e
>
> Use full paths to kernel and initramfs image.
>

Done.

> > +``/sys/kernel/debug/kho/out/scratch_len``
> > +    To support continuous KHO kexecs, we need to reserve
> > +    physically contiguous memory regions that will always stay
> > +    available for future kexec allocations. This file describes
> > +    the length of these memory regions. Kexec user space tooling
> > +    can use this to determine where it should place its payload
> > +    images.
>
> "Length of KHO scratch region, which is a physically contiguous memory regions
> that will always available for future kexec allocations. Kexec user space
> tools can use this file to determine where it should place its payload images."
>

Done.

> > +
> > +``/sys/kernel/debug/kho/out/scratch_phys``
> > +    To support continuous KHO kexecs, we need to reserve
> > +    physically contiguous memory regions that will always stay
> > +    available for future kexec allocations. This file describes
> > +    the physical location of these memory regions. Kexec user space
> > +    tooling can use this to determine where it should place its
> > +    payload images.
>
> "Physical location of KHO scratch region. Kexec user space tools can use this
> file in conjunction to scratch_phys to determine where it should place its
> payload images."
>

Done.

> > +.. SPDX-License-Identifier: GPL-2.0-or-later
> > +.. _concepts:
>
> The label can be ambiguous. It should've been _kho_concepts instead.
>

Done.

> > +.. _finalization_phase:
>
> The label should be _kho_finalization_phase.
>

Done.

> > +Generally, A KHO user serialize its state into its own FDT and instructs
> "Generally, a KHO user ..."

Done.

> > +KHO to preserve the underlying memory, such that after kexec, the new kernel

> > +can recover its state from the preserved FDT.
> > +
>
> Thanks.
>
> --
> An old man doll... just what I always wanted! - Clara

Best,
Changyuan

---- 8< ----

From: Changyuan Lyu <changyuanl@google.com>
Date: Wed, 7 May 2025 10:14:34 -0700
Subject: [PATCH] fixup! Documentation: add documentation for KHO

Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 Documentation/admin-guide/mm/kho.rst    | 29 ++++++++++---------------
 Documentation/core-api/kho/concepts.rst |  4 ++--
 Documentation/core-api/kho/fdt.rst      |  2 +-
 3 files changed, 15 insertions(+), 20 deletions(-)

diff --git a/Documentation/admin-guide/mm/kho.rst b/Documentation/admin-guide/mm/kho.rst
index c64aa7aadb300..6dc18ed4b8861 100644
--- a/Documentation/admin-guide/mm/kho.rst
+++ b/Documentation/admin-guide/mm/kho.rst
@@ -8,14 +8,14 @@ Kexec HandOver (KHO) is a mechanism that allows Linux to preserve memory
 regions, which could contain serialized system states, across kexec.

 This document expects that you are familiar with the base KHO
-:ref:`concepts <concepts>`. If you have not read
+:ref:`concepts <kho-concepts>`. If you have not read
 them yet, please do so now.

 Prerequisites
 =============

-KHO is available when the ``CONFIG_KEXEC_HANDOVER`` config option is set to y
-at compile time. Every KHO producer may have its own config option that you
+KHO is available when the kernel is compiled with ``CONFIG_KEXEC_HANDOVER``
+set to y. Every KHO producer may have its own config option that you
 need to enable if you would like to preserve their respective state across
 kexec.

@@ -29,7 +29,7 @@ Perform a KHO kexec
 ===================

 First, before you perform a KHO kexec, you need to move the system into
-the :ref:`KHO finalization phase <finalization_phase>` ::
+the :ref:`KHO finalization phase <kho-finalization-phase>` ::

   $ echo 1 > /sys/kernel/debug/kho/out/finalize

@@ -43,7 +43,7 @@ use the ``-s`` parameter to use the in-kernel kexec file loader, as user
 space kexec tooling currently has no support for KHO with the user space
 based file loader ::

-  # kexec -l Image --initrd=initrd -s
+  # kexec -l /path/to/Image --initrd /path/to/initrd -s
   # kexec -e

 The new kernel will boot up and contain some of the previous kernel's state.
@@ -89,20 +89,15 @@ stabilized.
     as input file for the KHO payload image.

 ``/sys/kernel/debug/kho/out/scratch_len``
-    To support continuous KHO kexecs, we need to reserve
-    physically contiguous memory regions that will always stay
-    available for future kexec allocations. This file describes
-    the length of these memory regions. Kexec user space tooling
-    can use this to determine where it should place its payload
-    images.
+    Lengths of KHO scratch regions, which are physically contiguous
+    memory regions that will always stay available for future kexec
+    allocations. Kexec user space tools can use this file to determine
+    where it should place its payload images.

 ``/sys/kernel/debug/kho/out/scratch_phys``
-    To support continuous KHO kexecs, we need to reserve
-    physically contiguous memory regions that will always stay
-    available for future kexec allocations. This file describes
-    the physical location of these memory regions. Kexec user space
-    tooling can use this to determine where it should place its
-    payload images.
+    Physical locations of KHO scratch regions. Kexec user space tools
+    can use this file in conjunction to scratch_phys to determine where
+    it should place its payload images.

 ``/sys/kernel/debug/kho/out/sub_fdts/``
     In the KHO finalization phase, KHO producers register their own
diff --git a/Documentation/core-api/kho/concepts.rst b/Documentation/core-api/kho/concepts.rst
index f1826ac10da75..36d5c05cfb307 100644
--- a/Documentation/core-api/kho/concepts.rst
+++ b/Documentation/core-api/kho/concepts.rst
@@ -1,5 +1,5 @@
 .. SPDX-License-Identifier: GPL-2.0-or-later
-.. _concepts:
+.. _kho-concepts:

 =======================
 Kexec Handover Concepts
@@ -56,7 +56,7 @@ for boot memory allocations and as target memory for kexec blobs, some parts
 of that memory region may be reserved. These reservations are irrelevant for
 the next KHO, because kexec can overwrite even the original kernel.

-.. _finalization_phase:
+.. _kho-finalization-phase:

 KHO finalization phase
 ======================
diff --git a/Documentation/core-api/kho/fdt.rst b/Documentation/core-api/kho/fdt.rst
index 4a5d53c670d4b..62505285d60d6 100644
--- a/Documentation/core-api/kho/fdt.rst
+++ b/Documentation/core-api/kho/fdt.rst
@@ -32,7 +32,7 @@ KHO process will be bypassed.
 Property ``fdt``
 ----------------

-Generally, A KHO user serialize its state into its own FDT and instructs
+Generally, a KHO user serialize its state into its own FDT and instructs
 KHO to preserve the underlying memory, such that after kexec, the new kernel
 can recover its state from the preserved FDT.

--
2.49.0.987.g0cc8ee98dc-goog

