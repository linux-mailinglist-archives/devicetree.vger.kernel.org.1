Return-Path: <devicetree+bounces-175380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EA250AB0C1B
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:49:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 232481C21EF0
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 07:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C31D62749F3;
	Fri,  9 May 2025 07:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ts9WcauZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F209A2749C4
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 07:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746776831; cv=none; b=obcLWXAtOlnrDp7LWfVI0XXcJmzNTlsu6XHawyKGkkRwXZokhEmnKXmEPEs/B/6GwPf0BMJfbKrnN51b3SAqKfAX9BD8FUqAmNiOWvj3nm62be4haDXQBWa9HWN90dJRkCDZNJeVRmH4ovzO5F8pxffDEtt7/BHXqYZYF1QKAfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746776831; c=relaxed/simple;
	bh=8swZk5ZG7VyiL7xxIZBCLdzstIPODTlIN7MUJGei2wc=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=JFRzSUhlf1U3AT1YlL+cOwbCaef3AwHeiT+7VAhOvILbo0HMxriY+K/YMj1oROF9Ar8pcNVEvi0+xAe++pSZAsG1iSija+v2vUmj3/hS85V/atwE/gHVEX09ZA8dbKsLyBja6fBbVlMcdhny0Aii8C2Ji/a1I3IAxGFC8h0LJss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ts9WcauZ; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30c371c34e7so940340a91.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 00:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746776829; x=1747381629; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0ylSxYIXWVF0HWz4x+lkfWER0XsKyy8d2lPgWpj2uQ=;
        b=ts9WcauZV/1bVNvwiBtKhB74euiUmzXd+VNSaDg3cxHGo3QfiMeY2qapDzfZajcuyw
         7cABWqpUFdQOF14PlGnbjgsGX72I5YZCyyMi8bMeD2cVohnz9VchbLV0OiZ180xloA1d
         fBBlb2YjT1eZuXcNQycHa/OdygymaCspwOVqtLdPRaQRKvbInLu2BItxqLv4OVqXAWUt
         vIDM98ELPEEwOBFdXDVjMx9sBC29UR56dvHXmXoHPIE3MT/Wj2bE6A7InZ0p9o5PZESJ
         +c7NM7aPjNmB8tRdnZ1cS5aOxgza5aL5Qan8stYJimAuBzxJJb/a1lNDvkTCRYZDlxxV
         t2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746776829; x=1747381629;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0ylSxYIXWVF0HWz4x+lkfWER0XsKyy8d2lPgWpj2uQ=;
        b=m6CpA9IWrbiYEA9MuYcYR/JfFgE50jYHbNJw4o81O9uivUZ9sleT2iR51lrtRnEUu5
         rgLWkYq3EDB76V6aHUaQ5+wtFYhp08fD9TOR8HyPxt8/MmQ5O/dy/55lfOlwHgNWkowd
         0qKp0MzFU40xdwSSS0XxYjPmXeK7Iy3epJ6RHLFx/tP238CMKCQ+eXFmO3TQvUenJtLj
         iQxH+iXeww0oPDuckdjzhzpCBRdEDgSywfpmrwFM3RRmOqEcTLoQRNE50h881F5o8bpl
         JqVGkNylVdA0wInvPFSd/j8JJfjb82f9SbIZnNNya2JSewm4dRWPJaJ/zBUv3cgdQzkh
         nppA==
X-Forwarded-Encrypted: i=1; AJvYcCW1I1qM+P7XL3yrBpS6H3HonFjOcgh9f+7eq4im3fuz+4QAOnfjVAGd0PSeB/TdJNVAqwmrx7r5f/OK@vger.kernel.org
X-Gm-Message-State: AOJu0YyKZjui5BNCpuWhLzt47Zc07jC8y5VxQMCONlCGcNO/xDmE+dLp
	0qme6pidUP3Ut21rZZi8h7op+wIL1fZMSDLf3+KVcfxm66Mv9wPIznY9ojR+CmS8XtOPiqZDR6R
	FqaL0kHOOGd5egfqTXw==
X-Google-Smtp-Source: AGHT+IFcU+yi4lxCzXOaIz4vfStLTel++2NEV8ETDNWjCPUfioyFnhkypPSIgZhYN5NQ0+YhGSBWxvTzxUTVFzWV
X-Received: from plez17.prod.google.com ([2002:a17:902:ccd1:b0:220:e022:1e84])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:e744:b0:22d:b240:34c9 with SMTP id d9443c01a7336-22fc91a9093mr42800435ad.53.1746776829073;
 Fri, 09 May 2025 00:47:09 -0700 (PDT)
Date: Fri,  9 May 2025 00:46:26 -0700
In-Reply-To: <20250509074635.3187114-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250509074635.3187114-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.1015.ga840276032-goog
Message-ID: <20250509074635.3187114-9-changyuanl@google.com>
Subject: [PATCH v8 08/17] kexec: add config option for KHO
From: Changyuan Lyu <changyuanl@google.com>
To: akpm@linux-foundation.org, linux-kernel@vger.kernel.org
Cc: anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	corbet@lwn.net, dave.hansen@linux.intel.com, devicetree@vger.kernel.org, 
	dwmw2@infradead.org, ebiederm@xmission.com, graf@amazon.com, hpa@zytor.com, 
	jgowans@amazon.com, kexec@lists.infradead.org, krzk@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, luto@kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
	pasha.tatashin@soleen.com, pbonzini@redhat.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh@kernel.org, rostedt@goodmis.org, rppt@kernel.org, 
	saravanak@google.com, skinsburskii@linux.microsoft.com, tglx@linutronix.de, 
	thomas.lendacky@amd.com, will@kernel.org, x86@kernel.org, 
	Changyuan Lyu <changyuanl@google.com>
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
2.49.0.1015.ga840276032-goog


