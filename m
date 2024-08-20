Return-Path: <devicetree+bounces-95294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0E9958B29
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 17:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89763283032
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 15:26:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A32F196C7B;
	Tue, 20 Aug 2024 15:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="vE4hmdCw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CC6195F17
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 15:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724167498; cv=none; b=Dz1a1YBDh4xhcsdb77FgDy4/eqrmYDTz4XCHEVIQhPu+GrmiREmlDM0ord3/S0kd0d53m3N5Em1ARiLqRhpMTm3N4EkYGDoOdjcQQCNhVX3YDHdUfNzU6PALJybdJPfFUTw+ukoi7DCLJ/JAeFGiID73z4wW2q+O4uQpZAvnqOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724167498; c=relaxed/simple;
	bh=5IrSzO4NK/egoPWEpij4VPue9Dvq4+IjNrpVVyKy6PA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DWAvOaGWF7mm5eozf1GqfTvxfgFgVttpNczbbxff7kI/x6N/zfHUmQUmb58DjYbf+f7dKNoRbyRwXixaPqhpRcY9J/SlgNeuDUf7t2Fps9NcKxlQV9a7674bm0QoAhGT37BlZPQ0Vp40jzgWMm+4COFEec9CJD6MEHO14TiKklQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=vE4hmdCw; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2d3dacaccfaso3356231a91.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1724167496; x=1724772296; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K9yIy6nc3JckPfgq1SVS1dt/ubbPwao76sjUpFJbUU0=;
        b=vE4hmdCw6asCkj/eoSUDZyyql82iSLSrYE4zYJZZIfB30hIweA1oom04xEUSd4RgMI
         6nG1SBqpcyY5Aatcrwkmx00UIJdn8ckGJorSmOKxhX9QZW4Ic7hIslvLgxBd2U5pLmga
         3LpQoLsdMMzx/PXEwcU4zAtKy2IvYsCgWiRPYf5OSwP8zLOx6GWhB7b4uFecemYwFUHx
         In+urh3VA558N+DdSA0pvoMUktpUG+84SJ1lLJTvODK+LLncTsKCCGJVX7yq1swiqV6I
         kL/6ZwfyRkKM/cKmeZWp6JXLQYHEHbJBGCcqiTpxvkazNyrLpjEpQecctFFEhM+qbgYR
         rjPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724167496; x=1724772296;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K9yIy6nc3JckPfgq1SVS1dt/ubbPwao76sjUpFJbUU0=;
        b=e9IqjMadwZX3Tcyd4Pajl5bPFzaGdwzL1oPxA5rhvytj1a6UK4FzBX8u7OqBBJ+kCD
         pd4TMFoFZNDz18EQywdhxeYCclfhhIqtadXebTQ41UItmTH3BeLZCojlnCEDt2RY5+wx
         PVXw2WX4yRVN70j9H01Hxbo8T+9YHdJ2KNNgp5fzMrYAbuj2ULZTfQH9EXfxWh3pNjgE
         RYKGRNiQyRd6K7qbuQMJ01i96kNVm6MKxASdd7+mp03Lfbx60WdkWjMPTI/D0NcVx4Ga
         oBtMZ5eOK3q/UFDcJe5GlUfflsymYv8wOhkdfRKcmqpTH84E3YDZc8lYFwNtw17nuW0K
         /nDw==
X-Forwarded-Encrypted: i=1; AJvYcCV/J0cpwh3o62OdZCB6RV0OKLtEWIQ7tJQI34TSnlzRDj8nZUbm9AZ0WcCq5yzvsGUkWs/jUD3H7oxq+x0UP6J5RPzH7QAGu6mrWw==
X-Gm-Message-State: AOJu0YzYg86byXGO6QvKUDq4JZmeeNuLihRKk6Vr203Nnyxq5IvTBFAj
	x3vSED8oerFJr+m2/DECTYcPVm4Wy1/OmRELMQ3+e2AiKCYcaJpehsr7bfjw0dA=
X-Google-Smtp-Source: AGHT+IFjpFHeANOi3RNiE4tvCPPb8ENoVMI5hfDn6rIWfrZrc5je7gBHKyKa1cngmecZurzkCscwrA==
X-Received: by 2002:a17:90a:1bcf:b0:2ca:f39c:8d76 with SMTP id 98e67ed59e1d1-2d3e03e8cb9mr14580242a91.39.1724167495634;
        Tue, 20 Aug 2024 08:24:55 -0700 (PDT)
Received: from jesse-desktop.ba.rivosinc.com (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d40bea7cb3sm7258157a91.25.2024.08.20.08.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 08:24:55 -0700 (PDT)
From: Jesse Taube <jesse@rivosinc.com>
To: linux-riscv@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Jesse Taube <jesse@rivosinc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Xiao Wang <xiao.w.wang@intel.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v9 6/6] RISC-V: hwprobe: Document unaligned vector perf key
Date: Tue, 20 Aug 2024 11:24:24 -0400
Message-ID: <20240820152424.1973078-7-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240820152424.1973078-1-jesse@rivosinc.com>
References: <20240820152424.1973078-1-jesse@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document key for reporting the speed of unaligned vector accesses.
The descriptions are the same as the scalar equivalent values.

Signed-off-by: Jesse Taube <jesse@rivosinc.com>
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
V1 -> V2:
  - New patch
V2 -> V3:
 - Specify access width
V3 -> V4:
 - Clarify we're talking about byte accesses using vector registers
 - Spell out _VECTOR_ in macros
V4 -> V5:
 - No changes
V5 -> V6:
 - No changes
V6 -> V7:
 - No changes
V7 -> V8:
 - Rebase onto fixes
 - s/RISCV_HWPROBE_VECTOR_MISALIGNED/RISCV_HWPROBE_MISALIGNED_VECTOR/g
V8 -> V9:
 - No changes
---
 Documentation/arch/riscv/hwprobe.rst | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 85b709257918..ea4e0b9c73e7 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -274,3 +274,19 @@ The following keys are defined:
   represent the highest userspace virtual address usable.
 
 * :c:macro:`RISCV_HWPROBE_KEY_TIME_CSR_FREQ`: Frequency (in Hz) of `time CSR`.
+
+* :c:macro:`RISCV_HWPROBE_KEY_MISALIGNED_VECTOR_PERF`: An enum value describing the
+     performance of misaligned vector accesses on the selected set of processors.
+
+  * :c:macro:`RISCV_HWPROBE_MISALIGNED_VECTOR_UNKNOWN`: The performance of misaligned
+    vector accesses is unknown.
+
+  * :c:macro:`RISCV_HWPROBE_MISALIGNED_VECTOR_SLOW`: 32-bit misaligned accesses using vector
+    registers are slower than the equivalent quantity of byte accesses via vector registers.
+    Misaligned accesses may be supported directly in hardware, or trapped and emulated by software.
+
+  * :c:macro:`RISCV_HWPROBE_MISALIGNED_VECTOR_FAST`: 32-bit misaligned accesses using vector
+    registers are faster than the equivalent quantity of byte accesses via vector registers.
+
+  * :c:macro:`RISCV_HWPROBE_MISALIGNED_VECTOR_UNSUPPORTED`: Misaligned vector accesses are
+    not supported at all and will generate a misaligned address fault.
-- 
2.45.2


