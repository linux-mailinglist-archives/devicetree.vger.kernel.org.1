Return-Path: <devicetree+bounces-42923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1C3858C6A
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 02:05:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07D0528255C
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 01:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C6438DF2;
	Sat, 17 Feb 2024 00:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="15b4Ycma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EC43714C
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 00:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708131545; cv=none; b=gCK4p9Uz2R+fE3N0UGMsnCF0D2rXGlDA4Zk1yc9+G7pl843+cOYn9CXOATy4beT0QwywcBw+PAAvfibn5LwOtspG1g/OqfJHMMhtI0CqXxCjANK57QJRy7SZ1nMmCeUBUKulC96qD7l/bfNDNP7oW5lKxvgEoDq0VXZ/CItJnwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708131545; c=relaxed/simple;
	bh=6lKVIYDNOU41w+9SFv6M4hQwtiitlAdvXeYzgOV4WlM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=us3+AWSv6U1mK6v/29FffI8uGJ3AWszqvcwWiS+hIYJg31C+HyKF/hTh1hyed28IWnRDTAiphbtA1T0a+xOMN5Nff77cIq1xpaBf3SMbgTUHeC+04m5Sbi9rplN9R8QqvH3JIJTlBGYoRaY6z+p1t4rU8JIKG0/P/4I44Guc6QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=15b4Ycma; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-36503a4980aso4941525ab.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 16:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1708131541; x=1708736341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cWbguiNHtTSYUYCLfEbpuKVHcWVD1RqHX9iqh/aIsVE=;
        b=15b4YcmaldKJshPz118OunfDLwsP68dHf26xNv+QRH7EHSkD/a4dQMd3lxOmIpzWbw
         dDhe/1YYq2h6WbKci7g6ZiT0Req8DeXWw/tEaHptSwa2kFKzhg9KZL5GKY6Zr4FGeCq/
         iyvRQg3+7Ffua5lUIk43wLR0mBsif0RTk1oxmqzaytwApLbginPpG/090Ha4j1TCAMDj
         sZwcgC0DxfHupoTJ9ZDrXgIS5JKZQdguh6DiiHeSoHEbVgDUaL0sWoFaqQ0kCuwRyC1r
         zGu2AZ4Z4XALv3WHPwKqlLq2qd59mXX12Awm6YHs+UrRhaG2cIRrKhTgN42KkL3lr6P4
         bsJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708131541; x=1708736341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cWbguiNHtTSYUYCLfEbpuKVHcWVD1RqHX9iqh/aIsVE=;
        b=rOBs050BglDGeTDCwFWGrBhV5G8guUrvSSRioPD10ikt/kbooWg4XkiO+2novx9/so
         lSzggYJ0LM+lcc20sOcwq/PBmLkB+Oa4tKZBgHK6hMlBeJxFt2y3AZp10JD9/j38mZPc
         uLuvSVIz1sQHs0QrsRYvjFEViBFJ7+GBs26YaSt611SL/CImoCrW+6xeWehedFeMaJdq
         vyejXs9MCcB/2jHLroGVNpqxUPKvInq2DhQmbzHPtgpaVjEmuOq01ZtwpuWiP6VVZ5Jg
         XvM0veCGvnoIaM80ZVJhS71FBhB3NqoI9jwzgABQCHT4NKlDmjR9rbdQ8cDS3k1N/2kF
         8FgA==
X-Forwarded-Encrypted: i=1; AJvYcCXM8WhMZDBzXcx1Vx6S9AFseIgcmWjVgRwshec0TxlFgk3gdAHH/60g7KdMLmIiK8MCN3K0S8KpMEeu3ko2xyv0j63BnVyMBTmVqQ==
X-Gm-Message-State: AOJu0Yxk2xoSWbZR1f+Y6GImlYIKcKfHi/U4TncEqdeMiAYu6VlwxuMu
	SnkiL+nGQezo+bia6A6gEk8HnfmhADZJj9v5KuhQeaZtvJYd7DXcQWWAhsEY8HI=
X-Google-Smtp-Source: AGHT+IHifVbaiIwPPRkQiapJsv+eTt7V3V9Fl84UxSNLoq2qUyNBCDP8xe0Qfv2O+RYJ3juxVaLu1g==
X-Received: by 2002:a92:c5cd:0:b0:365:44:1edb with SMTP id s13-20020a92c5cd000000b0036500441edbmr4716100ilt.3.1708131541456;
        Fri, 16 Feb 2024 16:59:01 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d188-20020a6336c5000000b005dc89957e06sm487655pga.71.2024.02.16.16.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 16:59:01 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
To: linux-kernel@vger.kernel.org
Cc: Atish Patra <atishp@rivosinc.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Anup Patel <anup@brainfault.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Christian Brauner <brauner@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	devicetree@vger.kernel.org,
	Evan Green <evan@rivosinc.com>,
	Guo Ren <guoren@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ian Rogers <irogers@google.com>,
	Ingo Molnar <mingo@redhat.com>,
	James Clark <james.clark@arm.com>,
	Jing Zhang <renyu.zj@linux.alibaba.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	John Garry <john.g.garry@oracle.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Kan Liang <kan.liang@linux.intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	kvm-riscv@lists.infradead.org,
	kvm@vger.kernel.org,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	linux-doc@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Weilin Wang <weilin.wang@intel.com>,
	Will Deacon <will@kernel.org>,
	kaiwenxue1@gmail.com,
	Yang Jihong <yangjihong1@huawei.com>
Subject: [PATCH RFC 18/20] tools arch uapi: Sync the uinstd.h header file for RISC-V
Date: Fri, 16 Feb 2024 16:57:36 -0800
Message-Id: <20240217005738.3744121-19-atishp@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240217005738.3744121-1-atishp@rivosinc.com>
References: <20240217005738.3744121-1-atishp@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The uninstd.h has been changed since it's last sync. Update it so
that perf tool can use the new RISC-V specific syscall in perf tool.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 tools/arch/riscv/include/uapi/asm/unistd.h | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/tools/arch/riscv/include/uapi/asm/unistd.h b/tools/arch/riscv/include/uapi/asm/unistd.h
index f506cca520b0..950ab3fd4409 100644
--- a/tools/arch/riscv/include/uapi/asm/unistd.h
+++ b/tools/arch/riscv/include/uapi/asm/unistd.h
@@ -15,11 +15,14 @@
  * along with this program.  If not, see <https://www.gnu.org/licenses/>.
  */
 
-#ifdef __LP64__
+#if defined(__LP64__) && !defined(__SYSCALL_COMPAT)
 #define __ARCH_WANT_NEW_STAT
 #define __ARCH_WANT_SET_GET_RLIMIT
 #endif /* __LP64__ */
 
+#define __ARCH_WANT_SYS_CLONE3
+#define __ARCH_WANT_MEMFD_SECRET
+
 #include <asm-generic/unistd.h>
 
 /*
@@ -40,3 +43,12 @@
 #define __NR_riscv_flush_icache (__NR_arch_specific_syscall + 15)
 #endif
 __SYSCALL(__NR_riscv_flush_icache, sys_riscv_flush_icache)
+
+/*
+ * Allows userspace to query the kernel for CPU architecture and
+ * microarchitecture details across a given set of CPUs.
+ */
+#ifndef __NR_riscv_hwprobe
+#define __NR_riscv_hwprobe (__NR_arch_specific_syscall + 14)
+#endif
+__SYSCALL(__NR_riscv_hwprobe, sys_riscv_hwprobe)
-- 
2.34.1


