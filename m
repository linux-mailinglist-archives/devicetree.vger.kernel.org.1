Return-Path: <devicetree+bounces-143761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB15A2B7E0
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 02:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F281167322
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 01:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245DB1531E9;
	Fri,  7 Feb 2025 01:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=soleen-com.20230601.gappssmtp.com header.i=@soleen-com.20230601.gappssmtp.com header.b="R9P58BEs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDB813C9A4
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 01:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738891742; cv=none; b=jrK/N7gs2Dorbv/fVHhHb24TcxBW42DFHkTcH+bP2sFE6K67qlPwnIQVDSQqEfvUnmijJhgnFw8eQmymmqZ7zErOaqTjY297vTTHrMgOf5dvJC0HcY/NlmNvgr1LLwMFRSh5cEEBcBDHzwk1l+0I275GDhXPh5BWI2klpPKoA9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738891742; c=relaxed/simple;
	bh=eFJX4s4D89MGtn2vvvBPckM/BVnh3lF4ZgDrmAI+YLM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UdtlH7SX1/UW+m2h6zsoPx5j0JLf/eqqobyuqLcYPdJRu6+cD4zf/VyXd/JaimeINZrbjKTaaJxks91yNwA/JyOcN/uF1yWKGY1dJvaazqETOSi3hV+A1JsW9E8hBpz82V4mDG28PT19MbP4Uq43Xni7UeQSteiVlOZ5sUjfDsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=soleen.com; spf=pass smtp.mailfrom=soleen.com; dkim=pass (2048-bit key) header.d=soleen-com.20230601.gappssmtp.com header.i=@soleen-com.20230601.gappssmtp.com header.b=R9P58BEs; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=soleen.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=soleen.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-467838e75ffso20352111cf.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 17:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1738891739; x=1739496539; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E/B6rKXoRP9BkkuR2mn1tTK5oITIELKG2LYs8WqA/Z0=;
        b=R9P58BEsug7wDF8FGn4PfOpstoVAam00NOL8xLdtlsznu8kWYR6WrxY6mF3E19m9zf
         7I0g8M3RfglvciDp04mvJ37mf5X9+5NDy8WUN1S7u8Gf4GyxTPEf+q2V17HBjPoxSjMi
         aVvhwqYPtG8JiORyN1qKtJcb5p9HLXA7wn1Rnmqtx+YduifZ86AAKCSprKji8ql0YUF+
         Y8ybbTqfoyRzJXkwlc1wTG+UZX9ykj1khK6CAFR5I+rawKi+thVFKk5TPgZOJRpZmhmy
         e9lsR+dY8j0hCXADTumAYxHo8UQBkNgGzMBN59pU85wwAoIRuKgzgEOyeFHXXVsknEfI
         o5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738891739; x=1739496539;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E/B6rKXoRP9BkkuR2mn1tTK5oITIELKG2LYs8WqA/Z0=;
        b=XbbFFvX08Mwdprlgr3Ohndeqb3H1yrV/7XwYio0BqKxMuBMcoZ7DzQEjNVWY1To38t
         iIlczgstaqX9OveYWvW3qMf0ooK6D2qZJzLSKuFBjh6C3SoAiJ4GKq9ABmoIVnMWP/sZ
         Ofv8T95KxnMMkXBwhOImcZRoAXPtSSKBPksdmTy8vc3Kjwm8xausMuae+5NkHXsLMEaT
         mu+n26OIfrrOoX377PhhNr0YighalOjvcfxtf5SPXSig+z3xVKucUrGGiE4XYSk+p06+
         zHhHW/preXbo0VCmaUfMPnYf8tVMqC2qJEpkORPG8WTuWZfXZ90jIWL9Wapk7wCgdto7
         E3cw==
X-Forwarded-Encrypted: i=1; AJvYcCXndWlsPBp8WrLDj+JWakEjcUlvr1DqjPi8UcrBqQFHf8f1GsHJFkvFzHel18TiQ1VcvrUZVPPAwNwr@vger.kernel.org
X-Gm-Message-State: AOJu0YwRlHSzRf6IiSZcHAGUL/DE6sHXV2qVUgaAC9jjUu0OfF4I9MCE
	jGSjKkWH2tghx7eXEoLf2XlV/qptgeH2o70k7bfEJZL8f9ntyyUIUhjvxBBWTC9ORaHUsvM33Is
	alyglbb2lCApFp/OdcvCLZKqyu3yCCeCLYtEX4Q==
X-Gm-Gg: ASbGnctTkgi4W0h++DbvY4dmpx14NgYZ9WxfgN1Bs6zatQsS/l6JRjYbeRSWg9NBUw5
	jqFhz7lbSNJV5Uteg5r9XwpBYc/n6tVWn+UNO213jmsBU7lqCJIu4k75lA71+JOD0xX70GQ==
X-Google-Smtp-Source: AGHT+IG/qU+DQGRbIVpasPJX4dEgRbGI1bwsgyRQgH7sLyexv6ztYzz7dd87jk6gdrjtGjTpHMmepc+RecJuVSIbOWM=
X-Received: by 2002:a05:622a:30f:b0:46e:24b1:dcd1 with SMTP id
 d75a77b69052e-47167ae2a56mr22008491cf.32.1738891738868; Thu, 06 Feb 2025
 17:28:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206132754.2596694-1-rppt@kernel.org> <20250206162939.a1f86fb835f1eeb7ed73ff1c@linux-foundation.org>
In-Reply-To: <20250206162939.a1f86fb835f1eeb7ed73ff1c@linux-foundation.org>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 6 Feb 2025 20:28:21 -0500
X-Gm-Features: AWEUYZl6iTKJpq_CKya0Z3uq2I-kaX8PhW2bxqIFxSemVzQfHVc82dvbk7pP-8Y
Message-ID: <CA+CK2bD6204AKWGOgzLMiMsnVZ=tk+DGc+VWgi3RVt2byaLJJA@mail.gmail.com>
Subject: Re: [PATCH v4 00/14] kexec: introduce Kexec HandOver (KHO)
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Mike Rapoport <rppt@kernel.org>, linux-kernel@vger.kernel.org, 
	Alexander Graf <graf@amazon.com>, Andy Lutomirski <luto@kernel.org>, 
	Anthony Yznaga <anthony.yznaga@oracle.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ashish Kalra <ashish.kalra@amd.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Dave Hansen <dave.hansen@linux.intel.com>, David Woodhouse <dwmw2@infradead.org>, 
	Eric Biederman <ebiederm@xmission.com>, Ingo Molnar <mingo@redhat.com>, 
	James Gowans <jgowans@amazon.com>, Jonathan Corbet <corbet@lwn.net>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Peter Zijlstra <peterz@infradead.org>, Pratyush Yadav <ptyadav@amazon.de>, 
	Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, 
	Stanislav Kinsburskii <skinsburskii@linux.microsoft.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Tom Lendacky <thomas.lendacky@amd.com>, 
	Usama Arif <usama.arif@bytedance.com>, Will Deacon <will@kernel.org>, devicetree@vger.kernel.org, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org, 
	changyuanl@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 6, 2025 at 7:29=E2=80=AFPM Andrew Morton <akpm@linux-foundation=
.org> wrote:
>
> On Thu,  6 Feb 2025 15:27:40 +0200 Mike Rapoport <rppt@kernel.org> wrote:
>
> > This a next version of Alex's "kexec: Allow preservation of ftrace buff=
ers"
> > series (https://lore.kernel.org/all/20240117144704.602-1-graf@amazon.co=
m),
> > just to make things simpler instead of ftrace we decided to preserve
> > "reserve_mem" regions.
> >
> > The patches are also available in git:
> > https://git.kernel.org/rppt/h/kho/v4
> >
> >
> > Kexec today considers itself purely a boot loader: When we enter the ne=
w
> > kernel, any state the previous kernel left behind is irrelevant and the
> > new kernel reinitializes the system.
>
> I tossed this into mm.git for some testing and exposure.
>
> What merge path are you anticipating?
>
> Review activity seems pretty thin thus far?

KHO is going to be discussed at the upcoming lsfmm, we are also
planning to send v5 of this patch series (discussed with Mike
Rapoport) in a couple of weeks. It will include enhancements needed
for the hypervisor live update scenario:

1. Allow nodes to be added to the KHO tree at any time
2. Remove "activate" (I will also send a live update framework that
provides the activate functionality).
3. Allow serialization during shutdown.
4. Decouple KHO from kexec_file_load(), as kexec_file_load() should
not be used during live update blackout time.
5. Enable multithreaded serialization by using hash-table as an
intermediate step before conversion to FDT.

Pasha

