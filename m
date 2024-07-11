Return-Path: <devicetree+bounces-85163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E6792F19F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 00:01:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 888F7284F12
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 22:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D3391A071C;
	Thu, 11 Jul 2024 22:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="JY1HB6n0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD3C1A08C3
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 22:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720735251; cv=none; b=LXkjzSJYMkK/lPhhoYtzC9TwSfDbuifmLVcH0Ud/y8my7jWkU6NBkKkkORrk7+zSoLsSkuV+z/TbMv7CR1SdrXhOJcfWzTr1U3AFpB8Sw6RLZGL8oqrq/kpyncTB6iYnb2yEhYgcEw+AradU82aydrf5768DX4rZVrurHDKrzWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720735251; c=relaxed/simple;
	bh=tsBFuB/PjfmD1aMuhYIz9kK3UffrpNSMuY1oBJAsP5E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iFTglnUA1DQwJdYF1BnYdFLLHTomfnj9HnuVhAIW9tAPKJqEyl7qnolVorp7SQMsdNXs0JYuRppFIX29xZzMrdGgqjKJZ2dt55BoE4+lhYNogqnnItyJsC6hl3EixRn/kqsMcfcXDiG3lL1n+gdvZQ7dDQaAi8F6s4kzdGf/Fp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=JY1HB6n0; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-25e0c0df558so667970fac.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 15:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1720735249; x=1721340049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y/pkJ+CYoKZVnlzYRMEGQL51DBzuBqhU5kxPKcWTdXk=;
        b=JY1HB6n0h2el0okF6glngqQ5Xf5wn04r9+DOHOb0R5RN5VbgFQzW7tZfCmp8C1zjGF
         0728kslRsXrv98FkT8m+JCz71QjwTGgIpy08QLFDM46xGnXWVgZ+dyQNHS3Mg4pXYyMn
         TVw6sXHq20zcZNTI0s6MK3MVkntPNEMAaRF4Ye7TJn7fxSi9uTP/y4V79okhMuPlcjab
         Y8ZGkOH9LTdm4cVi90PjaU3MRsG9GVRMguh9YzHvWqXhDnqORWILa/69k0hkpSVURrgr
         4E0G8Fu/x+qeGWXsB3qRlXY8N5g2yQjdiamDE2EVIL4PQ7jGqwSYCGziV7DAg+5kPTXv
         M8Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720735249; x=1721340049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y/pkJ+CYoKZVnlzYRMEGQL51DBzuBqhU5kxPKcWTdXk=;
        b=u05a0Dv5pFn5iB/SvdGEoyyC1kEPAZexDkxw1KHmAn74+wrvlcDuedQrbvUyjWCnLO
         qOWHOZyJbkLfj8OkT5I01fZOjxDx9GuZdW2/n7h3I+8mtA3OZDIXvZUOtqdbVxF/jwi5
         RIBhCtnm83andremHUzBGAI97HuvrlHNoCuNz15Hc6Fn64c6cQYGj4xS3rH4ZMZrUuXk
         jr9cQPUkcebchTWGDmWr/0K6k0Lj+2ZRMGc3fB8ZeiCLBpMoRHFN/MY6rhSik+oH6e0Y
         EL3vDmS/H1DYL4TevKzS3OCo6lbr3QBculdFQenusWRLxaGaiIEcBm8f5mfoSCmp4DES
         z2qw==
X-Forwarded-Encrypted: i=1; AJvYcCXbH71RIAwh3dlYNzDHtGUCqiY5KFiLQ4OeXpiLC6p1gqJ/0g6ZPMX09bKVoBtxIia+W5XCkW6nmGvJ49zpMIpY2RYl/O2m85k+JA==
X-Gm-Message-State: AOJu0YxG5ITKIukJ6FGDIgwChqCR3ku0ToCxTBWEP3MIh03nujsb+CNy
	FwDEBXfTygm8ZaX8Nmh6IR8OOSx7MBHSzD+sVMkbzmHjnK2zwDjHCoQ2Q5reKkM=
X-Google-Smtp-Source: AGHT+IHeT6FLUowuVFqR9T9fPR4cUTBZzugpJS7X9OZIU/p57BGSiUAt3X+LIR8D5UvHFasnlUUxXw==
X-Received: by 2002:a05:6870:9a0c:b0:254:a009:4c2f with SMTP id 586e51a60fabf-25eaebdf9e8mr8862381fac.37.1720735248677;
        Thu, 11 Jul 2024 15:00:48 -0700 (PDT)
Received: from jesse-desktop.. (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b43898b10sm6169431b3a.7.2024.07.11.15.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 15:00:48 -0700 (PDT)
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
Subject: [PATCH v4 7/7] RISC-V: hwprobe: Document unaligned vector perf key
Date: Thu, 11 Jul 2024 17:58:46 -0400
Message-ID: <20240711215846.834365-8-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240711215846.834365-1-jesse@rivosinc.com>
References: <20240711215846.834365-1-jesse@rivosinc.com>
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
---
V1 -> V2:
  - New patch
V2 -> V3:
 - Specify access width
V3 -> V4:
 - Clarify we're talking about byte accesses using vector registers
 - Spell out _VECTOR_ in macros
---
 Documentation/arch/riscv/hwprobe.rst | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 78acd37b6477..f83a13dc4cbc 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -238,3 +238,19 @@ The following keys are defined:
 
 * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
   represents the size of the Zicboz block in bytes.
+
+* :c:macro:`RISCV_HWPROBE_KEY_VECTOR_MISALIGNED_PERF`: An enum value describing the
+     performance of misaligned vector accesses on the selected set of processors.
+
+  * :c:macro:`RISCV_HWPROBE_VECTOR_MISALIGNED_UNKNOWN`: The performance of misaligned
+    vector accesses is unknown.
+
+  * :c:macro:`RISCV_HWPROBE_VECTOR_MISALIGNED_SLOW`: 32-bit misaligned accesses using vector
+    registers are slower than the equivalent quantity of byte accesses via vector registers.
+    Misaligned accesses may be supported directly in hardware, or trapped and emulated by software.
+
+  * :c:macro:`RISCV_HWPROBE_VECTOR_MISALIGNED_FAST`: 32-bit misaligned accesses using vector
+    registers are faster than the equivalent quantity of byte accesses via vector registers.
+
+  * :c:macro:`RISCV_HWPROBE_VECTOR_MISALIGNED_UNSUPPORTED`: Misaligned vector accesses are
+    not supported at all and will generate a misaligned address fault.
-- 
2.45.2


