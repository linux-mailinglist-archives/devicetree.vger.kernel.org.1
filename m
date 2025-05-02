Return-Path: <devicetree+bounces-172795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AFDAA66AC
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 00:58:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A7919C62C4
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 22:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6B927A10E;
	Thu,  1 May 2025 22:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="zHyYvy3o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAC5279327
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 22:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746140128; cv=none; b=kctYo8uiJk4DZqcm+O5QVMn4/1on3reIOvQlGfAu/PfwUbaXIzyZnI3ufDshA/GnqeljoARQvyroN8P1wFx4C4kL0uGyeKjJe3CQmSTR4TkIiaSBseCy+H5YlQNux4nGstRKZh5P6v5LjsqeQF6h77V/osu5hwiPSCN/2epPTFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746140128; c=relaxed/simple;
	bh=K99Z3NzL0rnLbJZnRsYusQ+/686qxOvpuiDet9cYtG0=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=bM/1j++nUwRCsByWsR3P2h18+LqoeMa3JgHwb+9as9g9nvugcx03mN/9ot5gVj5dpIeAef0PbG9TIVTeWVA34qPpkwvcFo8x1RR63S957QIe+iYUAPIMJdVvSYQ2bUUzzTtM5u8NwcqO+BGz4ltIlWykaPc/zwMeEZNevGihtfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=zHyYvy3o; arc=none smtp.client-ip=209.85.214.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-227ed471999so12448015ad.3
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 15:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746140126; x=1746744926; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=NGO8byd0TkM2xA40/EGnrAlxr2Ydy4LQeG9Cn/PTvGw=;
        b=zHyYvy3o6EHsXXok1Y+1GTEundtdgcCCgFfjdiFXtMGhauEdALsoSQxKIPSJiwrC5X
         hMAXS5hfHekww4h4kz3O3U1xVwRtUlRFTdD+q6SEyoyxl5PyOBdHC6tIhJ2gzT3gTwyh
         1VuPfaJnHBzwGrPJee+EnUbrPL1T7Pp8bEwAQK7sEO/W8hbE60eQ+jkUX0z6taZmL/rZ
         7cL7LY5YjO+WL6cz8QJ1D3KWeHgUzkM75Tmo1LHYGxVzKVsYxUk5bySIBgNb2uVhLRFZ
         Go9emO8XgRPThHRWm3T6CN3DLKBF64uUMGpOjNxbK0nw6YqMbGjfL0ZXO0p6MZLRE3y7
         cKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746140126; x=1746744926;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NGO8byd0TkM2xA40/EGnrAlxr2Ydy4LQeG9Cn/PTvGw=;
        b=cgX8Ksb6eXPiBGOugF1MnrJKR+Efawsufn1QDAko8htDpX0nOSL6nwdtaPNldEx0Y9
         Xjb+PecrB1ZJqBl0flR1C7rRm1OY3lpVfKfSjgZX9JZedP1Ru9bIk+U+MMd2ENxbxv5Y
         VE+x12FkswMkE/skh0cjkVq97geUrYM6KH0lhsLC3KopFEe+wMq6m37j39hm+SvBQYSe
         vMIy7j/A6qcQKL+YeqbKV29ytsML0Im4prjelIzUsMgRYCEDvI3iJlQ4FCsjaXcLB6Ox
         gLH/BhF5LwGbomWAJMG820I/O8S8MP55KBwr0uZN6Ze6Fp5EvBD4viCdBx+D1Ct1m2Ys
         GwZw==
X-Forwarded-Encrypted: i=1; AJvYcCW+kgyHX7e8IEhff4HdqSp3ldjJgIXvXhIx3ErNYfCBrqG5K1fI21I31YkXAemSX4uT0pI0xVYX55J6@vger.kernel.org
X-Gm-Message-State: AOJu0YygnwJdtm4ikKOr4OqnUTvG1NPBOvqO2vDyZ6ovA+LfutgkVuPv
	icAtPWiGTl0anFwgWtx/b86SnnYT4GIrVfXbfw0hmEEhQ47go0eVqjxC6sGUi3TWv1ZprE6bWTk
	tT9Af/DyGKz/X0ZonNQ==
X-Google-Smtp-Source: AGHT+IHJUmwT4tOhxLskkrWxieqEKxrv6qbe/rS4uJuA/C3JPb20dm7HBzJjo4+K34ocPx0/uIvvUYW+1UT+7DwM
X-Received: from plac4.prod.google.com ([2002:a17:902:c2c4:b0:224:2ae9:b271])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:903:3c25:b0:22c:3609:97ed with SMTP id d9443c01a7336-22e1031f6femr10317175ad.30.1746140126491;
 Thu, 01 May 2025 15:55:26 -0700 (PDT)
Date: Thu,  1 May 2025 15:54:16 -0700
In-Reply-To: <20250501225425.635167-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250501225425.635167-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.906.g1f30a19c02-goog
Message-ID: <20250501225425.635167-10-changyuanl@google.com>
Subject: [PATCH v7 09/18] kexec: add config option for KHO
From: Changyuan Lyu <changyuanl@google.com>
To: linux-kernel@vger.kernel.org
Cc: changyuanl@google.com, akpm@linux-foundation.org, 
	anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	corbet@lwn.net, dave.hansen@linux.intel.com, devicetree@vger.kernel.org, 
	dwmw2@infradead.org, ebiederm@xmission.com, graf@amazon.com, hpa@zytor.com, 
	jgowans@amazon.com, kexec@lists.infradead.org, krzk@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, luto@kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
	pasha.tatashin@soleen.com, pbonzini@redhat.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh@kernel.org, rostedt@goodmis.org, rppt@kernel.org, 
	saravanak@google.com, skinsburskii@linux.microsoft.com, tglx@linutronix.de, 
	thomas.lendacky@amd.com, will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

From: Alexander Graf <graf@amazon.com>

We have all generic code in place now to support Kexec with KHO. This
patch adds a config option that depends on architecture support to
enable KHO support.

Signed-off-by: Alexander Graf <graf@amazon.com>
Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 kernel/Kconfig.kexec | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/kernel/Kconfig.kexec b/kernel/Kconfig.kexec
index 4d111f8719516..4fa212909d699 100644
--- a/kernel/Kconfig.kexec
+++ b/kernel/Kconfig.kexec
@@ -95,6 +95,20 @@ config KEXEC_JUMP
 	  Jump between original kernel and kexeced kernel and invoke
 	  code in physical address mode via KEXEC
 
+config KEXEC_HANDOVER
+	bool "kexec handover"
+	depends on ARCH_SUPPORTS_KEXEC_HANDOVER && ARCH_SUPPORTS_KEXEC_FILE
+	select MEMBLOCK_KHO_SCRATCH
+	select KEXEC_FILE
+	select DEBUG_FS
+	select LIBFDT
+	select CMA
+	help
+	  Allow kexec to hand over state across kernels by generating and
+	  passing additional metadata to the target kernel. This is useful
+	  to keep data or state alive across the kexec. For this to work,
+	  both source and target kernels need to have this option enabled.
+
 config CRASH_DUMP
 	bool "kernel crash dumps"
 	default ARCH_DEFAULT_CRASH_DUMP
-- 
2.49.0.906.g1f30a19c02-goog


