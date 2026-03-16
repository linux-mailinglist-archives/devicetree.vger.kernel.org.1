Return-Path: <devicetree+bounces-275940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2G/XIbudt2l/TgEAu9opvQ
	(envelope-from <devicetree+bounces-275940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F212E294F2B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4532300E24B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17B7346A15;
	Mon, 16 Mar 2026 06:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pzc93iPG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79875346FA5
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773641145; cv=none; b=KdaFYy9iztYW28CSORGRMTVH+n5tLY4Tl+Yk7ykP/B+caKczgOOTik01vCoXpCeJBV8URi/dVO1DbW4P7lf9QjnBYEIhs9ZdmDKg9GjNL8AJDuzkWaOyCTxpDWcBvny60vhQYjPgr3rKobAcXJABe6IRhrj6to073dApeDGNblc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773641145; c=relaxed/simple;
	bh=mPU5x+HvHVJP3hc9FslgpERL9sjP+/zf51lYNf1ETL0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XhIE20wEnH9NCA9pfCwdE3m8kyM9zKJ1IDPCmHr2lp1lTUchXz7iSIfPdu0RTKQXYq7gWRM34qtLzqC4vb6S3PCPkBL3kl/RL5hveq4Xoo+f9uq1mKigzefJhMNWk+CcWCV15yuSWqXH62g4pEdxE4iv28L7rfoqDeBzK8Adu/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pzc93iPG; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-82a3d3235c9so655139b3a.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773641144; x=1774245944; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xean22/tjFsNOsF/nOdABDf/+KIaxj5k5+75ISbAbNU=;
        b=Pzc93iPGWCB5JfheQ9RQDMv9Ye2tPb0Yc9L5ybhTkzeX2gke2bfhSggd4v7XvzsYoc
         NeG6qCyhckrZG95k+zHy4LH2anKA/CVOZxoiqrpwTVCzBqIya3FRGnSJeFPSdoSEzhBU
         007SK6mujeeS97rRNYk5xbSd3VGb1GR4DChxIscecA+D7mzXVCvnTYLgPi3IFiupyR+E
         3ME/BR4IeIcBBJO1lcGQi/u++lpcRoDl5RBwlXQfvQeb9cQh6IZmujUZsaO+LVwgl1eF
         2oJN9TayBi9XH+yWODSo+RKUnO3gibiLvHolylbPIvgJBe1d/NNMH0szDE9LFIExhhIw
         iA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773641144; x=1774245944;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xean22/tjFsNOsF/nOdABDf/+KIaxj5k5+75ISbAbNU=;
        b=CrsxP2GxsV5qeSAL2CPvzRNy6qKo4mLMPL8GCHnoB/bC0bCg/+suabXaYtGzV4bX/m
         zQyYwMq/5ULdYIOnMbwYufWZ/dsa8RX/S9zQsoCnqiafS9qK4F5VhDfcVBjTYqKhNQji
         b2LMbnZ7zjvGd655yDxoU0hGgnmFILeBLi13Q/pOEMC0wmRbawo7EXstMXVCjJiOPi1J
         TI/cR2C8K9xJRzQ9XrEG9IoVcEywCsITAIRQDT4FWL4lbsWNBp02X7QDRAEmMah9yhyB
         VD0cRc+x2QDXE/TpBThLDzyAOABQ8i13LVU0jOGP8SEKkNSppuu9xFFYRjbzKy/xnOu9
         ZkLg==
X-Forwarded-Encrypted: i=1; AJvYcCUWZN50ogHFBu5w4rCb9Ri3Gup1g2kpL5ZkPeNc4KOl1If7ONL7AsPtyh2c7iwkCZDLQqbRyxwUPRMe@vger.kernel.org
X-Gm-Message-State: AOJu0YwgwZyAH5pqMQ86Y7YhZLpgizYpNrb4WOGpYCQhUSkVaVK76mwM
	mjmy4IQpzQO0vj/Qbt2yxP5Md0dCQa0mxu3H2UibE3+vyzSomJIN9Ygp
X-Gm-Gg: ATEYQzxJ66xj9EOQEmeOAS9/pBL2NP2Scc96c3Kl7ktzGBAl8oQTdhKwyAZFzOJOt1t
	0tLT/aiGvQ8G5R67iLzK5iQBRvkwZkOs5mH4+Hkj2O2/AbbZw7Nvene/1VvbNa+Ey00YeG9CUPj
	1u1QM55IlQoJhKeumzZ6kolApANTv6Atx2pPXZmbKHqmb8/43pN5zWlZzsV+u+0T/zJZEL8Cs1h
	+Z4cmWOdjMH43Pcw+c9TfcQ4YAkO9qKxxQT7Bam8y7M/+aQOk3o/yR+wdmM2oDwImcRyTdnAlKE
	mGmOIj9+2p1sKgBmBHLlW0u4NxdEsGVZWK5Hm58X8RUYhLAd//2TLu/h8R/NXZybyxQFsJqtArj
	nkoS17O5YPFSRC9iVLolo0w4QpCIKQBa9cl46JCKaihuMcYrbJrFal00WUSe9nt6/UYZfFEOChp
	PcLJZweWHuqGdvisczWyIjkLSC
X-Received: by 2002:a05:6a00:2d8c:b0:829:8bb4:1034 with SMTP id d2e1a72fcca58-82a19873098mr10167099b3a.28.1773641143923;
        Sun, 15 Mar 2026 23:05:43 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07393098sm12525226b3a.62.2026.03.15.23.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 23:05:42 -0700 (PDT)
From: Bo Gan <ganboing@gmail.com>
To: linux-riscv@lists.infradead.org,
	samuel.holland@sifive.com,
	david@redhat.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	gaohan@iscas.ac.cn,
	me@ziyao.cc
Cc: lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com,
	marcel@ziswiler.com,
	conor@kernel.org,
	kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v2 1/3] riscv: alternatives: support auipc+load pair
Date: Sun, 15 Mar 2026 23:03:26 -0700
Message-Id: <20260316060328.1173634-2-ganboing@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316060328.1173634-1-ganboing@gmail.com>
References: <20260316060328.1173634-1-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275940-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F212E294F2B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Previously only auipc+jalr pair is supported. Add auipc+load pair
to support PC-relative memory load instruction as well.

Signed-off-by: Bo Gan <ganboing@gmail.com>
---
 arch/riscv/include/asm/insn.h   |  8 ++++++++
 arch/riscv/kernel/alternative.c | 11 ++++++-----
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/include/asm/insn.h b/arch/riscv/include/asm/insn.h
index c3005573e8c99..1c791a8732efc 100644
--- a/arch/riscv/include/asm/insn.h
+++ b/arch/riscv/include/asm/insn.h
@@ -135,6 +135,8 @@
 #define RVC_C2_RS1_MASK		GENMASK(4, 0)
 
 /* parts of opcode for RVG*/
+#define RVG_OPCODE_LOAD		0x03
+#define RVG_OPCODE_STORE	0x23
 #define RVG_OPCODE_FENCE	0x0f
 #define RVG_OPCODE_AUIPC	0x17
 #define RVG_OPCODE_BRANCH	0x63
@@ -198,6 +200,8 @@
 #define RVG_MATCH_BGE		(RV_ENCODE_FUNCT3(BGE) | RVG_OPCODE_BRANCH)
 #define RVG_MATCH_BLTU		(RV_ENCODE_FUNCT3(BLTU) | RVG_OPCODE_BRANCH)
 #define RVG_MATCH_BGEU		(RV_ENCODE_FUNCT3(BGEU) | RVG_OPCODE_BRANCH)
+#define RVG_MATCH_LOAD		(RVG_OPCODE_LOAD)
+#define RVG_MATCH_STORE		(RVG_OPCODE_STORE)
 #define RVG_MATCH_EBREAK	(RV_ENCODE_FUNCT12(EBREAK) | RVG_OPCODE_SYSTEM)
 #define RVG_MATCH_SRET		(RV_ENCODE_FUNCT12(SRET) | RVG_OPCODE_SYSTEM)
 #define RVC_MATCH_C_BEQZ	(RVC_ENCODE_FUNCT3(C_BEQZ) | RVC_OPCODE_C1)
@@ -222,6 +226,8 @@
 #define RVG_MASK_BGE		(RV_INSN_FUNCT3_MASK | RV_INSN_OPCODE_MASK)
 #define RVG_MASK_BLTU		(RV_INSN_FUNCT3_MASK | RV_INSN_OPCODE_MASK)
 #define RVG_MASK_BGEU		(RV_INSN_FUNCT3_MASK | RV_INSN_OPCODE_MASK)
+#define RVG_MASK_LOAD		(RV_INSN_OPCODE_MASK)
+#define RVG_MASK_STORE		(RV_INSN_OPCODE_MASK)
 #define RVC_MASK_C_BEQZ		(RVC_INSN_FUNCT3_MASK | RVC_INSN_OPCODE_MASK)
 #define RVC_MASK_C_BNEZ		(RVC_INSN_FUNCT3_MASK | RVC_INSN_OPCODE_MASK)
 #define RVC_MASK_C_EBREAK	0xffff
@@ -262,6 +268,8 @@ __RISCV_INSN_FUNCS(c_ebreak, RVC_MASK_C_EBREAK, RVC_MATCH_C_EBREAK)
 __RISCV_INSN_FUNCS(ebreak, RVG_MASK_EBREAK, RVG_MATCH_EBREAK)
 __RISCV_INSN_FUNCS(sret, RVG_MASK_SRET, RVG_MATCH_SRET)
 __RISCV_INSN_FUNCS(fence, RVG_MASK_FENCE, RVG_MATCH_FENCE);
+__RISCV_INSN_FUNCS(load, RVG_MASK_LOAD, RVG_MATCH_LOAD);
+__RISCV_INSN_FUNCS(store, RVG_MASK_STORE, RVG_MATCH_STORE);
 
 /* special case to catch _any_ system instruction */
 static __always_inline bool riscv_insn_is_system(u32 code)
diff --git a/arch/riscv/kernel/alternative.c b/arch/riscv/kernel/alternative.c
index 7642704c7f184..04a9d3aed4647 100644
--- a/arch/riscv/kernel/alternative.c
+++ b/arch/riscv/kernel/alternative.c
@@ -74,7 +74,7 @@ static u32 riscv_instruction_at(void *p)
 	return (u32)parcel[0] | (u32)parcel[1] << 16;
 }
 
-static void riscv_alternative_fix_auipc_jalr(void *ptr, u32 auipc_insn,
+static void riscv_alternative_fix_auipc_pair(void *ptr, u32 auipc_insn,
 					     u32 jalr_insn, int patch_offset)
 {
 	u32 call[2] = { auipc_insn, jalr_insn };
@@ -123,14 +123,15 @@ void riscv_alternative_fix_offsets(void *alt_ptr, unsigned int len,
 		if (riscv_insn_is_auipc(insn) && i < num_insn - 1) {
 			u32 insn2 = riscv_instruction_at(alt_ptr + (i + 1) * sizeof(u32));
 
-			if (!riscv_insn_is_jalr(insn2))
+			if (!riscv_insn_is_jalr(insn2) &&
+			    !riscv_insn_is_load(insn2))
 				continue;
 
-			/* if instruction pair is a call, it will use the ra register */
-			if (RV_EXTRACT_RD_REG(insn) != 1)
+			if (RV_EXTRACT_RD_REG(insn) != RV_EXTRACT_RS1_REG(insn2))
 				continue;
 
-			riscv_alternative_fix_auipc_jalr(alt_ptr + i * sizeof(u32),
+			/* insn2 use rd of insn as rs1, patch it */
+			riscv_alternative_fix_auipc_pair(alt_ptr + i * sizeof(u32),
 							 insn, insn2, patch_offset);
 			i++;
 		}
-- 
2.34.1


