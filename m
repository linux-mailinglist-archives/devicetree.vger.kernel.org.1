Return-Path: <devicetree+bounces-94974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B9E95768C
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 23:27:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16A191C22F6D
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 21:27:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EDE31E210C;
	Mon, 19 Aug 2024 21:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="rJsz/ZUe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657FD1E2101
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 21:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724102798; cv=none; b=e5PgRUipwZB94S73YpRiP/UtMTmCOwLcfbrkDzZuammyA/PRjT1itTpMWfahKKEnKd5GGm5XarJggiLpQQvw9yKKssr+FtHVVedKIcwOeE6q84BdUHj5HWuPGV//5z+lKxZyu0VD3QdZZHeJQ76fjcNpLYLadJQqwjlNymlX+Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724102798; c=relaxed/simple;
	bh=vyBB2VPkbo/YguQxEyNKoXCcndWMcAWDpN6VCQ31fRQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MEC0Ynf54YwZM2KjXCKXeBQe7ncXpIAAVj6Fn8Bv15BtpfvVe++/1H4531KLgRjyg4qWPdEsmSjJBP1u5jbbYFsBXhMmTSxXXC+Cvv+lcsyCFgURsmb7PwW7evtBZbfgHWN7dz5880BWnREdman9j6NyTmyAEnYn+HdC+c5RR9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=rJsz/ZUe; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7104f93a20eso3957216b3a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 14:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1724102797; x=1724707597; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s43X7evCjKi9zInSsUCIPGJsRlY2xGUJ2ODl/cGyTuw=;
        b=rJsz/ZUeq7N6hmFhfWUADKk7+rMOeO1hD/V6451K99x7VSgH1B3zVz39D8YuqWaM66
         ZX4p1O1TiJ67790+gutcOMFrRFswoIeWdL9nl3OTLfZdRZhqRf+LzHpSFf6/KDoHUB2N
         zv0JFS9aJpsJd8R/gaksbG1tV2c5Z0bv5izLFP4uh/+UKV9GqaPEeMspwbvS3hpAhWHI
         L3v79fah2/5BN8gaO/1Z0ubFXYMImRt83gXmfNNL9VrywsHdYzNv7nQvOFQytig/93L6
         JLGnHDygdqrhWv61T0wWOLvTQ3p5pXdF/ub5lce3eSEhB0jytyfsCDHDkVQkQ9J3I2Jn
         K3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724102797; x=1724707597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s43X7evCjKi9zInSsUCIPGJsRlY2xGUJ2ODl/cGyTuw=;
        b=s5j5qX/FVOSqxE9v3XgeWd7MWPeIuY9tGGj6ynjQoUfPr0oJAKE2kbtkjlII20qXkL
         ExEEHQ6w9OvN+6lElC7onqqMwmAKN1YXR2nvrITnMhIvP5BJpOP8N3WnV/ywQEPhUU1S
         c6WnuMo0W9rNgBWw2ak6wASHqeqe4RqorGjEcn0rmEEQ3IK+vLYl8dllyvmAbmkNz6pi
         xnKykUkcRQ9lW9+Ppw/jkl210stFi5vlxHxRc84Nmd4VKo/XsEaY5GtKOzKBPWJ/Zm/d
         bosGThx2+iLobgWNgWPcO7K7/hWcc/vhyj+FPzi6+azJkFD0xVYy0bx3crrGcW88WUDK
         x7rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVx0OtyAR+6LCdg4V4OaUYQAOjo8XGUjN/bM+2hW15wLEySO8ayRP6N3w/fXLBg+0XS9VLiqHHkFFWyixkA2bfLWTeK63LeiUpooA==
X-Gm-Message-State: AOJu0YyRZG1sUj47/4+v9U8GZMyxm+z91YeR8/OEARDDQlE7yWks58u3
	uIT7rvwWyJOsc+GklOdGmJc+b8XXJYFhd5UVByQpaNs4bcOUH2joDSscUAUl6uk=
X-Google-Smtp-Source: AGHT+IESrilsqeNFnuhHuDg2m5x2ld10lJLnQAZcYJQoTxOQaJmA8uC159f9B38i0ENzTWeHkfim5Q==
X-Received: by 2002:a05:6a21:2d84:b0:1c4:e0d3:9637 with SMTP id adf61e73a8af0-1cac8fbcd34mr520343637.52.1724102796643;
        Mon, 19 Aug 2024 14:26:36 -0700 (PDT)
Received: from jesse-desktop.ba.rivosinc.com (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b61e7bd1sm7004694a12.53.2024.08.19.14.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 14:26:36 -0700 (PDT)
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
Subject: [PATCH v8 6/6] RISC-V: hwprobe: Document unaligned vector perf key
Date: Mon, 19 Aug 2024 17:26:05 -0400
Message-ID: <20240819212605.1837175-7-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240819212605.1837175-1-jesse@rivosinc.com>
References: <20240819212605.1837175-1-jesse@rivosinc.com>
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


