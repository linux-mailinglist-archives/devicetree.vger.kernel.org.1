Return-Path: <devicetree+bounces-141275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB66A203AA
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21B2C1887622
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74C431E2616;
	Tue, 28 Jan 2025 05:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="cwi5bZ0Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824EB1DFD9F
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040403; cv=none; b=Z79TB51GiGCaa75x2OrsRSrQ1c7q7rk7DQdrWBr1ljAEOWmiYF6BJhYJ0OHfiGxwu0LB9NYN0dUbVqCO96NGhUZysdi2m4m6xf89FqCjz3qvl+dysBihGJVNaSOQYleYOeplhEldz7u807LNZxhaL+tDfX+K6tw9BU5ajQaqG3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040403; c=relaxed/simple;
	bh=tJECrev6NZHKGqf5bDRKo7n5+d6HFqBv/teL58QYUO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l6inTl3xWFkmL4MZVnRa60LUx3DdTQEfj21SWsikhVu+DPYIlGy1DiCq4HbPTpKvmK+0ZBOB3hXbrBVrBl3BHkqcpaIz1wooBF+48OIbxEtGqruOWnD5T8JjUashfCQFqPkUmRz7GLSx8CWGcm7mM4+FyJ1QlSiyC6Y9qjK8NZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=cwi5bZ0Z; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2ee74291415so6879901a91.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 21:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040401; x=1738645201; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5mrMIkTEe6NxNBfmJmR1XKICEvWgZ9tUVZlETsQZaOc=;
        b=cwi5bZ0Z6DRryXDwubqodRzDKvF1GD6Xwz0NEPNJbNUa1fS+S4UITVkdKc2vKllG1x
         aujZ1x8IcO8KxWuJeCiOvaFaf8FE3ApYeGAfIOSTDKlOQEC9xulh1ekdciGShGiZ09cH
         oEhl3W1NSsXGXMsPfOJRz3s2e6Ao4CIP0IoJcwYrNBIZxf4zS0sX4kAc88W4X33e8iuw
         cWX1orpgMCKoOBRXRdWnNSspC1c0RId6AODZqxChwA14BkEQ5aeosDgsAeKNjOrzb5lh
         aijTCCtQJesONsV/5MPbfMaE/6OuU7nF8DUxdyoF9wIEDwrXwMYMMxCmJfuxyq4rMjNo
         XajQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040401; x=1738645201;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5mrMIkTEe6NxNBfmJmR1XKICEvWgZ9tUVZlETsQZaOc=;
        b=fHrgDzai0SmcaF3D3IDsqFsGoeNrqT78kEk9gx3QXjidSn5Y0WndZvH+JtY/6+p3pS
         Suiw0M1AL0dbupYWBhiccNuhEud5XuU5TW7q3klzmCSIKOjIBrucPzRKVxL8j2YeEu4M
         rRX+CI06oVAnth4xm6TWl2UxeEmDGiPpnjolBLHDBszDlspj+RTGIOr1KrVrVMEeECv8
         B0fof3v/Rv7SdVyRcIUG9sGn3g8bpt7lHR7PptPT+SIiJgwJobHVgkX8AqArwSUrvgt7
         0ardtAlL4ErbRD6mOzwoFsIQT//BHrS+XWPGOs0HHaUd9RGrPQbjTxXrFEMw05I5tftT
         NMwg==
X-Forwarded-Encrypted: i=1; AJvYcCVhtqr5gxzPmnID6qx/BPN7j5aWR0IbMGx5vlJtljwzgGr4hl9yG1n5fV70Iejhvdl6f+URvLnF+ELB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywadg/hKKCGNyXzAMzw2TdBAANSxXN6WMOFWQUVjn7M9ikFBeXb
	2wXp8mwmwzydp37cV87pgubnlUGu/+vUxf8oOcOOay5A50t7pnBCw9frAxIbHqY=
X-Gm-Gg: ASbGnctRSJxBvconEZMBGmJzu9RCaXRKwLFJGTZhy+5sJHdKXTORNb5kqoVNSsJlaSG
	GYp4lBstzmkMtkUQHD2lAXNrZfYXi+PNY0ESri4OQlGXhGQKQC0BDYsgujwbzfUjYBQJvJnEf/N
	1/3HNF7pDWKfW6wNI6KZmwzvyq8XiYKG7j/i+HRuPr640xkZBN1fVuUD7/IfUPhqNv2qG3PC/3+
	UshSZuEpTVnYEcx5DeTJQHM5Qz46NQiNsO3GUOmtiba4cxfSzapU6kmiLBzVqnqt2h1joqqqALv
	SrP13ObtG3LhEjcIZSTHOkwd+aNP
X-Google-Smtp-Source: AGHT+IH1CyamZ5GxB/LaeGh1+pUXZNcyZ/3f2i2HBGmcLQlGMYAJa1S5yIJT+e6qxkT5U/Ox2SNkIQ==
X-Received: by 2002:a17:90b:288a:b0:2ee:bc7b:9237 with SMTP id 98e67ed59e1d1-2f782d35fafmr61340887a91.27.1738040400688;
        Mon, 27 Jan 2025 21:00:00 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.20.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 21:00:00 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:48 -0800
Subject: [PATCH v3 07/21] RISC-V: Add Ssccfg ISA extension definition and
 parsing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250127-counter_delegation-v3-7-64894d7e16d5@rivosinc.com>
References: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
In-Reply-To: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anup Patel <anup@brainfault.org>, 
 Atish Patra <atishp@atishpatra.org>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

Ssccfg (‘Ss’ for Privileged architecture and Supervisor-level
extension, ‘ccfg’ for Counter Configuration) provides access to
delegated counters and new supervisor-level state.

This patch just enables the definitions and enable parsing.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 2 ++
 arch/riscv/kernel/cpufeature.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 3d6e706fc5b2..2f5ef1dee7ac 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -102,6 +102,8 @@
 #define RISCV_ISA_EXT_SVADU		93
 #define RISCV_ISA_EXT_SSCSRIND		94
 #define RISCV_ISA_EXT_SMCSRIND		95
+#define RISCV_ISA_EXT_SSCCFG            96
+#define RISCV_ISA_EXT_SMCDELEG          97
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index d3259b640115..b584aa2d5bc3 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -390,12 +390,14 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_BUNDLE(zvksg, riscv_zvksg_bundled_exts),
 	__RISCV_ISA_EXT_DATA(zvkt, RISCV_ISA_EXT_ZVKT),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
+	__RISCV_ISA_EXT_DATA(smcdeleg, RISCV_ISA_EXT_SMCDELEG),
 	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
 	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(smcsrind, RISCV_ISA_EXT_SMCSRIND),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscsrind, RISCV_ISA_EXT_SSCSRIND),
+	__RISCV_ISA_EXT_DATA(ssccfg, RISCV_ISA_EXT_SSCCFG),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),

-- 
2.34.1


