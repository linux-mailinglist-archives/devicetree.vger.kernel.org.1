Return-Path: <devicetree+bounces-211490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7972FB3F3B1
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:25:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30CFA20528C
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 04:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D2D2DF13D;
	Tue,  2 Sep 2025 04:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="PpikUUgg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442672D5943
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 04:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756787101; cv=none; b=Sc1nihnUuUgpo1QQ55Di7Euh8V1Hnj67fgxnDSi8k8kZw5BatqnineZMmMEDKa/9iNhxagJgqBMr6QKmTzdVwD2D9gmdt5Isd3lzTr0drDOVwr7DTHgB4FxbSeiUUAb0Zii3vy6p6j9fCOypVJtKhzID3NERdl2Vyfjy5oX4zUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756787101; c=relaxed/simple;
	bh=HFpqts/W53QUbSMz1faFreS+L9DMcn6zulFxd1eY3xM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JwHN7tVMkc/hXki5RiHFg+RUZpkU+lvwDjNz2J+tavrmFoP9HSFiU207sDByuOefr8geIIWW3/XNbFSKLQ2GG9UbPaJUMr4pgcydXZkPJ8Wn8l9JXBooWeQR4yLiZlgi85+jspnLjVAxi+dlMMb6BesiOlvB5i3lI4qD4wF5FC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=PpikUUgg; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3276f46c1caso4567983a91.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 21:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756787099; x=1757391899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+193yncmANzEfIfweyuJi14B+CiP/3dMuVzUWsZjMz4=;
        b=PpikUUggLtMtWaQZp2ZiyJ+2S9/2u1rHSw891/Xx1W6nXSf5ybZdrezKsRlDxAZqhc
         jNN+OTdouvX9GzjdXe9sZkqz+HtQtQydAsJo+CFWULHhY1moTz8baDLIJC4Q6J/Hqi5p
         im/NIsypx+Op+ATBRodsFiorFo80dTse7Z7cmOlsAc1p2mIHgRueL65ff4i2Q8d9FelA
         puMW4/r6DtD6ffs1Bpk0cL3SojH0chl86G9W+Ngr1WpWJBVC7KzuH5G7Jla3YIBmcegI
         7V86Pku4zWldfub/2JJThX0LWX+BpsF5QASj064EJBcrDNtNfR+U6U0R5m0FevnOTOdc
         koWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756787099; x=1757391899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+193yncmANzEfIfweyuJi14B+CiP/3dMuVzUWsZjMz4=;
        b=uPyaQbHF+R/btowEuk3Rc1ShC1nD5oh7Tig1pr+41rMsHO290Z6ORXDcx2KNX5pj4E
         o/KHiJTvdbehUz1RZdw7exR+yIn7czh68oQZ6I/irDrF7j+C6axB2Bo9OVxPvtnZc5wi
         W2T3mJ8wenHKncStpk9g1v4RdmZrMMGKO5SOBo8f8oRgw5I9GMbsCZSZgsslKrAmKvrq
         UcnL4Uvl8X0D1mPotuVoRx4d1CDQZUFj+4Pl2zl8ZZFt9O7AVFZZH+csWmZmNje0zjFn
         Hu9oGBb89mosTvz6nSO+TWaB3J0kjGP+Xk+WERWMwj4vRQ03h9yOVX2HYnyAOFIITV6B
         b+Jw==
X-Gm-Message-State: AOJu0Yw0+gkeKIqNis5EGFJmiVvJkeZjS0KtJKBYTbbxf0HVtvzFxLgX
	wzsTepgaXwGOA2mXR0vZGtw5Kbsgld9gQpPRH5Kc2BIgyhd3Nmo4kfagB7RpWQoZ2iw=
X-Gm-Gg: ASbGncvqPELQh74Sp/JXe4j77CFhOuDekYDr1rQSYR0Ax3vgU7gtlLZP9dJTOyE7Tfl
	/Xauyy5obpNkCnt5BeiJvbJjCSYdY1EA5kfVeHC4aBV3eWonwlslbqBZxRfft+RLtN2V1pq6vr2
	6v34tWcrzbir1EY1XjTxYLqQX+ukpFz+yvkbXwkx+bX5Msln0R6TfrmJnMxY2w1ok7QYIoBUC5S
	IakmwRj8W1MhJJswm3rfO5juuXhV2FoY+KK45yOnFYygfyvBJlus8Y29wEzKdrnaifIyKteBkO1
	EujNx9sE+ABrgNufbL2goVJ4DStXDnNMZTxBYk3amM0vQeWfpB5RwVVsiVJLco5mFyu8Lr2aHNP
	ELSRXNBm0KPtat+95yXP0OI4s+cciCiI2O9slBG8vsf6j843QSTlaXN1gOvfAs9JmpjduKBwolC
	t/QGHWc1vakwOdUUgtqpBLb3wOFO9RLeonetDAbgaKeG0=
X-Google-Smtp-Source: AGHT+IFv/BZz+oSuV4r85o4JJ2VFlCeRdRpWZ7vxfc7IdiLIgnvMDvIfeMquYk/s/EZmpJpPE1uOBQ==
X-Received: by 2002:a17:90b:2692:b0:327:2589:7d4d with SMTP id 98e67ed59e1d1-3280d364babmr13673655a91.15.1756787099420;
        Mon, 01 Sep 2025 21:24:59 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-327e21d14a8sm12216706a91.2.2025.09.01.21.24.54
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 21:24:59 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	ajones@ventanamicro.com,
	brs@rivosinc.com
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v2 3/4] riscv: Instroduce Zalasr instructions
Date: Tue,  2 Sep 2025 12:24:31 +0800
Message-Id: <20250902042432.78960-4-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250902042432.78960-1-luxu.kernel@bytedance.com>
References: <20250902042432.78960-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce l{b|h|w|d}.{aq|aqrl} and s{b|h|w|d}.{rl|aqrl} instruction
encodings.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/asm/insn-def.h | 79 +++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/riscv/include/asm/insn-def.h b/arch/riscv/include/asm/insn-def.h
index d5adbaec1d010..3fec7e66ce50f 100644
--- a/arch/riscv/include/asm/insn-def.h
+++ b/arch/riscv/include/asm/insn-def.h
@@ -179,6 +179,7 @@
 #define RV___RS1(v)		__RV_REG(v)
 #define RV___RS2(v)		__RV_REG(v)
 
+#define RV_OPCODE_AMO		RV_OPCODE(47)
 #define RV_OPCODE_MISC_MEM	RV_OPCODE(15)
 #define RV_OPCODE_OP_IMM	RV_OPCODE(19)
 #define RV_OPCODE_SYSTEM	RV_OPCODE(115)
@@ -208,6 +209,84 @@
 	__ASM_STR(.error "hlv.d requires 64-bit support")
 #endif
 
+#define LB_AQ(dest, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(0), FUNC7(26),			\
+	       RD(dest), RS1(addr), __RS2(0))
+
+#define LB_AQRL(dest, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(0), FUNC7(27),			\
+	       RD(dest), RS1(addr), __RS2(0))
+
+#define LH_AQ(dest, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(1), FUNC7(26),			\
+	       RD(dest), RS1(addr), __RS2(0))
+
+#define LH_AQRL(dest, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(1), FUNC7(27),			\
+	       RD(dest), RS1(addr), __RS2(0))
+
+#define LW_AQ(dest, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(2), FUNC7(26),			\
+	       RD(dest), RS1(addr), __RS2(0))
+
+#define LW_AQRL(dest, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(2), FUNC7(27),			\
+	       RD(dest), RS1(addr), __RS2(0))
+
+#define SB_RL(src, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(0), FUNC7(29),			\
+	       __RD(0), RS1(addr), RS2(src))
+
+#define SB_AQRL(src, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(0), FUNC7(31),			\
+	       __RD(0), RS1(addr), RS2(src))
+
+#define SH_RL(src, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(1), FUNC7(29),			\
+	       __RD(0), RS1(addr), RS2(src))
+
+#define SH_AQRL(src, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(1), FUNC7(31),			\
+	       __RD(0), RS1(addr), RS2(src))
+
+#define SW_RL(src, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(2), FUNC7(29),			\
+	       __RD(0), RS1(addr), RS2(src))
+
+#define SW_AQRL(src, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(2), FUNC7(31),			\
+	       __RD(0), RS1(addr), RS2(src))
+
+#ifdef CONFIG_64BIT
+#define LD_AQ(dest, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(3), FUNC7(26),			\
+	       RD(dest), RS1(addr), __RS2(0))
+
+#define LD_AQRL(dest, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(3), FUNC7(27),			\
+	       RD(dest), RS1(addr), __RS2(0))
+
+#define SD_RL(src, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(3), FUNC7(29),			\
+	       __RD(0), RS1(addr), RS2(src))
+
+#define SD_AQRL(src, addr)					\
+	INSN_R(OPCODE_AMO, FUNC3(3), FUNC7(31),			\
+	       __RD(0), RS1(addr), RS2(src))
+#else
+#define LD_AQ(dest, addr)					\
+	__ASM_STR(.error "ld.aq requires 64-bit support")
+
+#define LD_AQRL(dest, addr)					\
+	__ASM_STR(.error "ld.aqrl requires 64-bit support")
+
+#define SD_RL(dest, addr)					\
+	__ASM_STR(.error "sd.rl requires 64-bit support")
+
+#define SD_AQRL(dest, addr)					\
+	__ASM_STR(.error "sd.aqrl requires 64-bit support")
+#endif
+
 #define SINVAL_VMA(vaddr, asid)					\
 	INSN_R(OPCODE_SYSTEM, FUNC3(0), FUNC7(11),		\
 	       __RD(0), RS1(vaddr), RS2(asid))
-- 
2.20.1


