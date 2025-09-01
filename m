Return-Path: <devicetree+bounces-211252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB4AB3E199
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C863200F2E
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4282274B27;
	Mon,  1 Sep 2025 11:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="AEDUchWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5492231CA53
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 11:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756726253; cv=none; b=QW5Rc1RZH0/7sMiC0s/S/FvQrL35+1TSBQzKZ7dN/PMpVskK2TtN2aN4y1iiFhqBR88ukZL197aZTXdGnbn3UPLpknjpMLcQKsFRN22wt1qwoSXfhyS6QJD5RkM20WEQJX3715ydxjOUT6Pix+CzoZhMuEAgGniktTwzx6AE41o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756726253; c=relaxed/simple;
	bh=HFpqts/W53QUbSMz1faFreS+L9DMcn6zulFxd1eY3xM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MpCPybqM1Gq4FIkrgB3e39uGjXqAD28QRGrct+5ys8F1pYNfABuHlQelPsxAs2MTUlrvB+EcABVO90fI5eJUjW3Gnm7g6LzyetrECKbhljNrckH6TlfzD4ITCzR1DNhnB2uNztfj+ASB8J8bWvq3qQbCK747D1hEsJ+OXYhZIjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=AEDUchWI; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-77264a94031so200781b3a.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 04:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756726251; x=1757331051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+193yncmANzEfIfweyuJi14B+CiP/3dMuVzUWsZjMz4=;
        b=AEDUchWIcCIGp5ys/qBvRdPqPBgUvX9Xsb+ecRHhysdxK1zV6M6vwP7NSK1WKzUeaH
         JnD1ZUgLLuvEshAiiK547hdh1x8zE8nEFQlMBZWwx6MXEQiz4XkSQBMdET3E7L+JJwJ5
         IwARxPBTXPYifr28f6P8cDzK4T/5QUFzlGKrVBIj3R5NZghyOM0vguZRzUPWbSyzA+j3
         TaE5jwfy29jmy5fkEJtDgOqNhjitAdPlZIiUxjykSG/+hTYHvfFxAeOksXYb1Gudq5KG
         dn5Tk0VGcxe2pB4xfRezGRMHqzV7Gd5lw6hiRJnXk24fm595lHDodbNZlBv6mmzc2zis
         FtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756726251; x=1757331051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+193yncmANzEfIfweyuJi14B+CiP/3dMuVzUWsZjMz4=;
        b=j8i6J9rPyX2V2vUoUZOqJO+eSSiWNlq2YwUdnpoTZy1r3pP0Nft3sUvOU+INlR6o3G
         2FkSxc/f4JrFK907+Z1xfm5uQflngvifqkyV6Cy4tfe/p+LTDWp7uGHRDZBaTb0duDiT
         u/MfrW56JR3KxS6Fy1z5XnzLxFB1WfSdM622hhAzvi7bnDHGdFjCMlbDjT25xZN0b4EV
         FpSvV66Gyw2fBTEiLXVB1fB4ApATsFh210j+LgEpzAEkwu7LT7mA3ERkSLPAng2cHxbj
         SfcVoj+33B9i5GZSlfnZlpG9d/jFuvlqJw/+FCltH9DA5T8BTDEvR76i13KuNne8M8b4
         dhtA==
X-Gm-Message-State: AOJu0YzCzCZv9YAyNJxWUfiyD6auv88CYbd2kkh0IYXYG+GLO7LcXwNG
	1h66FrEF+0buP1Wsz12vjpcFLhqL01H6dGI3GB3y+QpA1+/ddHV2U3Cf3sAGTwlwlcg=
X-Gm-Gg: ASbGncsGRfwU+ZH7FoYssPp7W0+NIfDZHRCshFUWfXz4Hnie8aM6ZUaFs+wz+1Nhnxl
	icdHD+7snE1bR8HlRW51L8Am6wNKUq4MnvYQnWESaczPqYo5NIVGac3ijBuNprbi3Q9dsGkyM9+
	Scp3sMfyr9DCrmfQ4MV6u+WpF7xIKawWTQQPZg2u2jg803PGvo/qBKl1g7wzMdI7ytj/3tZgsDs
	PGEDpm8qtEe0asmJp2WYjj9eGn52iL7n7mehAN5fP6W0LB/n5qL1JmPybRThDdh70GOphaA0uxc
	OOAYuWXXG5N7lMq1MicPBAkDUULsd6u2S3eJh5YQq89yFQdr55DQ8uXJmTtUfxy9q8MhBtfdmoy
	nB9rPLfGBLpbQ3naQ2V6wrgpip7+c/ILvwt4lxZRzdtFwFWxoVMXNN/7NNcayhsbnS8SMX0Qsot
	cTWw9wcfgr4UbzwtmF2eiEDpvkPLFS930hIm25CWXOmcs=
X-Google-Smtp-Source: AGHT+IFCGJaLcCEzCVNOdtTW8pBozzJLUjah4C4TeBuR9DV82igkvDHYVTkOUw8Lz1MGfFCTLIHESQ==
X-Received: by 2002:a05:6a21:32a7:b0:243:ba10:66c7 with SMTP id adf61e73a8af0-243d6e02262mr11191065637.24.1756726251505;
        Mon, 01 Sep 2025 04:30:51 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.55])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7725ad1e9afsm2911441b3a.11.2025.09.01.04.30.46
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 04:30:51 -0700 (PDT)
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
Subject: [PATCH 3/4] riscv: Instroduce Zalasr instructions
Date: Mon,  1 Sep 2025 19:30:21 +0800
Message-Id: <20250901113022.3812-4-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250901113022.3812-1-luxu.kernel@bytedance.com>
References: <20250901113022.3812-1-luxu.kernel@bytedance.com>
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


