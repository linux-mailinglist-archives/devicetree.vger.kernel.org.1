Return-Path: <devicetree+bounces-145371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E9390A310F1
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 17:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D84F17A05EC
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 16:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D26253F01;
	Tue, 11 Feb 2025 16:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=soleen-com.20230601.gappssmtp.com header.i=@soleen-com.20230601.gappssmtp.com header.b="qT4H+Yp7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BFB253F03
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 16:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739290486; cv=none; b=FNALBPj3hH2JB04jjgOog2ORKUlgfjAhj83Zq0suBvvTeW9jch9Nmty8Omu4jc+Gr9NFeGnr+IWOxFVhckm0Z9DMQDfuDyE2atZ2d2SanLFTjnmydp347QA7vwepjmQpfVJ1aiszvFi+NeuoXvRhcuCyycuuiBCyBmvsi9OUswA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739290486; c=relaxed/simple;
	bh=0ZjWyRdQG+9H46Kso5hG0mLJW41kpxg0H0tqPAoUZ34=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CI+3iidPoPe4E1+iS+fnz89WgwsQd8n4RejLB5rXiKqL8H34tV5Vm8ChSzfnh9dPIp2rwthOCk+FTXvmUk5FsQNk4BBHXJLFXRgXfR0uZx8vB334zJpYRABgN4uP/zVdbWm0AoGY/wWdi0fn3s8qKAgg0hGjQ1qIEp/jWCQzwbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=soleen.com; spf=pass smtp.mailfrom=soleen.com; dkim=pass (2048-bit key) header.d=soleen-com.20230601.gappssmtp.com header.i=@soleen-com.20230601.gappssmtp.com header.b=qT4H+Yp7; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=soleen.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=soleen.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-46c7855df10so106105601cf.3
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 08:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1739290483; x=1739895283; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f00g8h93qQX8OTMUbXqv3cBNa5BjAh6ZTXb5qUHVm6k=;
        b=qT4H+Yp7f/Eo2FIggH3X8Ta/uV5EuyiPrixzrsHS3YwAr3zWE6dQfdYn5rLUeHJ9U3
         kJXtTw8/vMEFJViZZOgWGjBm01ZuVnE2iClUzZYTV9RWv+r7B5nBW8tvOEDWPkULPMcI
         QztiGhjyv8mDft6hHgikXc6jrLs18HnxN49H0rqR6hJ2QAb8uBJdDOwDzhGTNZnA+Rvu
         gliEML/kE31LeX73TLGoTLljg7mAy8BYj8oJqUbCy0Ym2Ts0PcI4rioC7a6nlJYPCgpH
         /PGsAeacB2SEFxHKE0N5l7p2h+41Ok6WcBpd7Ggp+vGfK3Fi2GdeRUjE9khYwiYsIkzX
         ouJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739290483; x=1739895283;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f00g8h93qQX8OTMUbXqv3cBNa5BjAh6ZTXb5qUHVm6k=;
        b=cbijwFN67+gbd/zUqbAT9LHPIUD2UBKRjpWQoQ8Y3L5/cL82fVrkHOL83KEKjIvulP
         jji09COKB9rTX72VfUPcf39oRWpYzasi0/99vlx9GcWq5LJ5xefcFR8Prto33rB4vS4k
         m7eThK4Bhevw550Iymb7qXlOWUWJ4fqFUggK7m7AaqSkUQ80v/4WuY55nFpDZO4V9jAc
         bHT2qx/bgtk/sA6CZD2raugpxcBQH31pky4HIsK+GcednonX82l9+9N/spU9UkiUAVtu
         g8pvS6C2GW+Z+kDXc1PXsswxIbM07iZteiVQ43iUlfOL8ZeVaTk673z4ErrcRK0F7tZC
         5F3A==
X-Forwarded-Encrypted: i=1; AJvYcCUv4mEqsIHLb2vkOk9EQOwuAIeSDFMAfTKJVtYEiB+lo/uDFUfCy9bYhUZSObU/8glS8wLeOgysp/Ra@vger.kernel.org
X-Gm-Message-State: AOJu0YzJWK8wS2DYa93yY5ajOQqO+akhpuNgS+q/mBIYCG8pLKmhpXQZ
	SKfhBFko/dIEl/eCD3TKGVORmbanoddKwNOJBQGn6p1PS7b3c1TFIHuiqeDQJSnOCXige3XCJH4
	hav9g04vvch51o5moQ9kWYMq564bZUGEVdAg+VA==
X-Gm-Gg: ASbGnctbM4qX2VZoPDe0AI3epl0HBDEm+GzG5VPOkMddK8kTYrTVSf3+8eaxfHAWAKp
	rCj4HRP2cejs+yaSGIWTuDPb+8tf1CKNmIONuAbTWLEEZ+UBvVpanb++Kt18a0JA2x5M6zw==
X-Google-Smtp-Source: AGHT+IFV/2SwK8xAi9MTHEKrLCagsybkvEOxgGEB7IziCVbPaPZ5quI5gxUrWQ8mdomSEUM9RDcaJ8/FU9MUgrz9PW4=
X-Received: by 2002:ac8:7d86:0:b0:462:c14f:d13f with SMTP id
 d75a77b69052e-47167ae2791mr311026341cf.41.1739290483262; Tue, 11 Feb 2025
 08:14:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206132754.2596694-1-rppt@kernel.org> <20250206132754.2596694-6-rppt@kernel.org>
 <20250210202220.GC3765641@nvidia.com> <CA+CK2bBBX+HgD0HLj-AyTScM59F2wXq11BEPgejPMHoEwqj+_Q@mail.gmail.com>
 <20250211124943.GC3754072@nvidia.com>
In-Reply-To: <20250211124943.GC3754072@nvidia.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 11 Feb 2025 11:14:06 -0500
X-Gm-Features: AWEUYZnZrdGQlINhll4ZCmxy4_MiFjWVL9mBm_3F0LCmRscyspW8dY4HAyEeygc
Message-ID: <CA+CK2bAEnaPUJmd3LxFwCRa9xWrSJ478c4xisvD4pwvNMiTCgA@mail.gmail.com>
Subject: Re: [PATCH v4 05/14] kexec: Add Kexec HandOver (KHO) generation helpers
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Mike Rapoport <rppt@kernel.org>, linux-kernel@vger.kernel.org, 
	Alexander Graf <graf@amazon.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Andy Lutomirski <luto@kernel.org>, Anthony Yznaga <anthony.yznaga@oracle.com>, 
	Arnd Bergmann <arnd@arndb.de>, Ashish Kalra <ashish.kalra@amd.com>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Borislav Petkov <bp@alien8.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Dave Hansen <dave.hansen@linux.intel.com>, 
	David Woodhouse <dwmw2@infradead.org>, Eric Biederman <ebiederm@xmission.com>, 
	Ingo Molnar <mingo@redhat.com>, James Gowans <jgowans@amazon.com>, Jonathan Corbet <corbet@lwn.net>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Peter Zijlstra <peterz@infradead.org>, Pratyush Yadav <ptyadav@amazon.de>, 
	Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, 
	Stanislav Kinsburskii <skinsburskii@linux.microsoft.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Tom Lendacky <thomas.lendacky@amd.com>, 
	Usama Arif <usama.arif@bytedance.com>, Will Deacon <will@kernel.org>, devicetree@vger.kernel.org, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2025 at 7:49=E2=80=AFAM Jason Gunthorpe <jgg@nvidia.com> wr=
ote:
>
> On Mon, Feb 10, 2025 at 03:58:00PM -0500, Pasha Tatashin wrote:
> > >
> > > > +What:                /sys/kernel/kho/dt_max
> > > > +Date:                December 2023
> > > > +Contact:     Alexander Graf <graf@amazon.com>
> > > > +Description:
> > > > +             KHO needs to allocate a buffer for the DT that gets
> > > > +             generated before it knows the final size. By default,=
 it
> > > > +             will allocate 10 MiB for it. You can write to this fi=
le
> > > > +             to modify the size of that allocation.
> > >
> > > Seems gross, why can't it use a non-contiguous page list to generate
> > > the FDT? :\
> >
> > We will consider some of these ideas in the future version. I like the
> > idea of using preserved memory to carry sparse KHO tree: i.e FDT over
> > sparse memory, maybe use the anchor page to describe how it should be
> > vmapped into a virtually contiguous tree in the next kernel?
>
> Yeah, but this is now permanent uAPI that has to be kept forever. I

Agree, what I meant in the future patch version is before it gets
merged. I should have been more clear.

> think you should not add this when there are enough ideas on how to
> completely avoid it.

Thinking about it some more, I'm actually leaning towards keeping
things as they are, instead of going with a sparse FDT. With a sparse
KHO-tree, we'd be kinda trying to fix something that should be handled
higher up. All userspace preservable memory (like emulated pmem with
devdax/fsdax and also pstore for logging) can already survive cold
reboots with modified firmware Google and Microsoft do this.
Similarly, the firmware could give the kernel the KHO-tree (generated
by firmware or from the previous kernel) to keep stuff like telemetry,
oops messages, time stamps etc. KHO should not be considered
explicitly as a mechanism to carry device serialization data, the KHO
should be a standard and simple way to pass kernel data between
reboots. The more complex state can be built on top of it, for example
guestmemfs, could preserve terabytes of data and have only one node in
the KHO tree.

>
> Jason

