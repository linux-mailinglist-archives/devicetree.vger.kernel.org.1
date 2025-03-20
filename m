Return-Path: <devicetree+bounces-159162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D39AA69DEA
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 02:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AB964284FD
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 01:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45E71EB5FD;
	Thu, 20 Mar 2025 01:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="uP4dJdQo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB771EA7FD
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 01:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742435779; cv=none; b=gGwIY96FozZFDKWh/FDDNkSSzp6q3c4IxNjSvURuTnenLN6q9I9T8psXrh8phrVlyqY1/5WhM7aezq1b8eORBs45NzYWpja2Pnj1QNrGBNtD1SZID9sw0SWpKL+fszZjtYfRwgWla4paPdE+U+zC3RPpERmvmtgy/GGAviwxpc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742435779; c=relaxed/simple;
	bh=DO4ULc+54d14lpaTVIQ8OW7DrsUOJj3+3e0epl5v40w=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=FbOXPMLhBh7aKFLmYNk295DAsoDhxuQMKqINtDE/QiqDGk5ixCfD+OyI8FlZ5aWsf2q7+4Fq4xG1Dzrg4hOMxxlfibPjg4TtompejVxBTl1HzSFjcq1g97gEgHCfe8BVvD4fATr7woAC7l/vPKNgObUi1DkzUd8lFbkEWBy/vyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=uP4dJdQo; arc=none smtp.client-ip=209.85.214.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-2264c423e37so2837275ad.3
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742435777; x=1743040577; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=UkcR0SU+CU01cj/UMVFVKIzr3SF+GMypT0ANn4wKrhE=;
        b=uP4dJdQotY7rTu2uOCJvd4Ke5hkXKgZAQqCihiZm6YysMA8rSW7OPuwWsJsyT7UZX2
         wlsXFDc8QM5WqoLaK62CZPXTd0F6PPMuXzCdW1raWw2vuQcd7QQo4UzJbfbkjULi7vdY
         kGyLqPKx4bQbY1uwFrskFxf+wg2+Y/oXPEG8+8arKDKIrMfG0QWbcU3pup4AGFIWmAcR
         oAiDo0PtxVTEPMfUFhpIaWecDMNfNfjz/1AhR7UEv5ajOnNU8ZClHd3afrafAZ8oVjGM
         LWc4QnQW4bfZiSh8FF6pi6DBvj5GzV+TAMQ2JfdJcU1WcoAJN2E1Ypng9DB5L9XRo6j0
         hpCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742435777; x=1743040577;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UkcR0SU+CU01cj/UMVFVKIzr3SF+GMypT0ANn4wKrhE=;
        b=YHyPft66CBFj/9+KClvRxkDLQFI+gN93yWuG4Dr60KOl1nT1cuarPhgq+5i5hdsZRO
         RA9DZdPuaGC9WtEVTSW3TGygGjwiUey9K6PQVvBTaua5V9pX2Gxn2x7nkD7xEp5k4kkd
         S0XsLkgapOyWGQcGR7AeyXZr7pcboY8Km8SElJN7MCt7nSsnTismhEnjuR7iFPj4GJ/D
         PkHGuMw3EnoxiBv8qUz7FoU9O463uqtp/quao+sj5qnb50Pm5KPY1EHPCSXzOj4jYjsQ
         PyhumT5FWvrDsXElv7RMQin7u0yah18nEUP9fJT1gSDoDwBU2vk9dyd+c5m22+ZyEn4I
         PX6A==
X-Forwarded-Encrypted: i=1; AJvYcCXx14a0KPkjXpET5jDpd2nwVvXxc1B6an7fGrnc8iIIBTShku7ufV193A4faSLuv3Mpv/EzQAnOuxvP@vger.kernel.org
X-Gm-Message-State: AOJu0YxClxZfycD/N0c5V0fK4YGr1M51w3Nj0xq0RZ3pVnjaY9/w6Gwk
	hhQx4kMBmV3wcvZaVNdrtyzitCj7wX2JvYo1EJfUffrvxAnr2Afbq56wVewA84XweCiOp2H9aD7
	kgHoRIga/8PqePefqaA==
X-Google-Smtp-Source: AGHT+IEq833KvKiO9EApYrAEuf1UTsJySLJu5CjTMNPxyZpCp1rooyCfDuUQ3lxBHQoctugFxssTdHmFh/kEHnmc
X-Received: from plsq4.prod.google.com ([2002:a17:902:bd84:b0:223:3ab:e4a0])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:e801:b0:21f:c67:a68a with SMTP id d9443c01a7336-22649a2ee71mr75511855ad.31.1742435777590;
 Wed, 19 Mar 2025 18:56:17 -0700 (PDT)
Date: Wed, 19 Mar 2025 18:55:46 -0700
In-Reply-To: <20250320015551.2157511-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.rc1.451.g8f38331e32-goog
Message-ID: <20250320015551.2157511-12-changyuanl@google.com>
Subject: [PATCH v5 11/16] kexec: add config option for KHO
From: Changyuan Lyu <changyuanl@google.com>
To: linux-kernel@vger.kernel.org
Cc: graf@amazon.com, akpm@linux-foundation.org, luto@kernel.org, 
	anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	dave.hansen@linux.intel.com, dwmw2@infradead.org, ebiederm@xmission.com, 
	mingo@redhat.com, jgowans@amazon.com, corbet@lwn.net, krzk@kernel.org, 
	rppt@kernel.org, mark.rutland@arm.com, pbonzini@redhat.com, 
	pasha.tatashin@soleen.com, hpa@zytor.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh+dt@kernel.org, robh@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, rostedt@goodmis.org, tglx@linutronix.de, 
	thomas.lendacky@amd.com, usama.arif@bytedance.com, will@kernel.org, 
	devicetree@vger.kernel.org, kexec@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, x86@kernel.org, Changyuan Lyu <changyuanl@google.com>
Content-Type: text/plain; charset="UTF-8"

From: Alexander Graf <graf@amazon.com>

We have all generic code in place now to support Kexec with KHO. This
patch adds a config option that depends on architecture support to
enable KHO support.

Signed-off-by: Alexander Graf <graf@amazon.com>
Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Co-developed-by: Changyuan Lyu <changyuanl@google.com>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 kernel/Kconfig.kexec | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/kernel/Kconfig.kexec b/kernel/Kconfig.kexec
index 4d111f871951..57db99e758a8 100644
--- a/kernel/Kconfig.kexec
+++ b/kernel/Kconfig.kexec
@@ -95,6 +95,21 @@ config KEXEC_JUMP
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
+	select XXHASH
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
2.48.1.711.g2feabab25a-goog


