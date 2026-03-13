Return-Path: <devicetree+bounces-275021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNwmJvfOs2n2awAAu9opvQ
	(envelope-from <devicetree+bounces-275021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F7627FEDB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41A113022972
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091E1282F02;
	Fri, 13 Mar 2026 08:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OwGYxirj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1EA426CE2C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391589; cv=none; b=E7hkq9jSprzOR7xWpSCtwa63vUEqK8SrpfHnqIDldhZeTzfF+mDsNzN8rBFGp/+fgvVn2qG41ko4fbrqmnEPRYyWeQQnKSpLQZAaX6ChxvTF14AX9rxRzZ9ofyx5X+D0hS0Rppp8IGztRIyQnZ2lYo8GenZMMa8V/SIDHChjFB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391589; c=relaxed/simple;
	bh=mPU5x+HvHVJP3hc9FslgpERL9sjP+/zf51lYNf1ETL0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VVpKMxLlkq1BElxMz5l6geMg6TmGeNG8XU2ynSGRDng06P2qZ66aTc4ONahh9VAy7TL2OsDokG3atSy+k2X23oY6CNTAcITJuevuVFsdZ9CIDykG0LnVr16HWdPOTyNtdeeYJkzLhPi9pEQd4ywVuhXDg72axBvO4KKdCnX9NsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OwGYxirj; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-89a15b9a556so24256886d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773391588; x=1773996388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xean22/tjFsNOsF/nOdABDf/+KIaxj5k5+75ISbAbNU=;
        b=OwGYxirjbedf2RHWEjCeLjVaVzoJK/7isKEhqBLAH3qM1GTbeG80rf7zvzXB0iWPrI
         w3KVFhTcfvkdmJTb22wkTMuzmFERBgxD95NZunQKdOLZy/DmGGfgzA5qqJmiS1LvWJc2
         UoLzNyA1iiTC61wHkyi7s+bWOVAX7pjTmmTqfQt8YQM8CD8eydIR4MAPON41vxggsyKT
         ZsJjVsEi5nd6xtFSa49KeOn5HByNTEKdfqy0uWPO5XN7nXqQGeN59XkLrMpxVXOk30c4
         B6i3lAmKt2kOy85DpNDxuJNu58YX5I74ZqYo/5q694xVlKjsxVsc/pEef2dYDDO1z8tD
         UNkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391588; x=1773996388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xean22/tjFsNOsF/nOdABDf/+KIaxj5k5+75ISbAbNU=;
        b=hjiUqQk26V0Isi2ZT6w1GVwoWhF7G1RNmxeHu5AgYYUQzDfmPkfHD5uxPMzVqhqA5Q
         iq2tlTEmio/Yw/yxl+dDYxElDTUKsiT0TbCLx2VNvXzZW4m+4bLOe7TQvmeOmHMUpqGg
         a9fU284QGhcrH0vktUB2V6lFwfGQfuFfnFEoqhXFNgWWmvLCLI05vG+7LxCOQxPixcrG
         WNy9x2m7DmqX1Z/CNBmE8SZEr1EoWR5hEachiSQR1f0lxNIyZWkOpvzY9hYnWoi4aelo
         wX06IoMXBWeoikjJrTisMIXOz1xvmbDMZ19xJ7QY61QfwtvGFlhn7gLFLAEZHTlSRPQd
         ArDw==
X-Forwarded-Encrypted: i=1; AJvYcCVVdcrVfEsY5EcLPfDc8XMv1joej2LHZ9plLieCwRlfDSijVlPKLgIdcEjPgmPljtV/QBdnk2LBCkys@vger.kernel.org
X-Gm-Message-State: AOJu0YwRIfjOZEx+MdXR0YirRdAe7aB8FUJAFGSEJ5tdVFfzn3L4dW0f
	Cv2SNyKbpxxjdYQY4/hqmzxGai8ROjoeRQNCOueHnOKWE8d6xuIqOV7w
X-Gm-Gg: ATEYQzzgEn3qviorEazB9Xlj5CE6Ai5iQhjgfVOb6eCkxZrYCXiadRb0xWqccWRwz2B
	tCxwN6oswHayJY1plOLhAIrPOwo0Ir5UHMY2DQ2QXPys+Uz+QSLLw92W40yZkWNqqx9xS1wbQqg
	EZ6D7zlmCqgIVujg+PeAlR//nGrQStIdjD2bw7ZRUT0tzuqDFaFvkSmUp+kJnwLJpZMgiq6A5HS
	swGAxojOiyzUitKek+OHu8qdyxnNSpXdLzEfZbQ7HQBMQznfT5p5gshyRwXm2Om9jGZ4VXvBvEl
	C2rrWR3B6qbaA/yJrjq9kqNz+tf3FN2QHoyd8EFr7uJao/NE/K0VRi4CJdeJCXkwRMPTg1Y+iGb
	qc02xIAUwMz81zvVtW9uLTACYu93Ye4gbE1S3n//BxaGBamuGU3onP6FK5u6UXn86jdiUmyXDEt
	U7g0eji4/qsEPCKTdRacghsOAC
X-Received: by 2002:ad4:5946:0:b0:89a:d41:b1c6 with SMTP id 6a1803df08f44-89a81f48ff2mr38155306d6.49.1773391587589;
        Fri, 13 Mar 2026 01:46:27 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb131sm50142206d6.13.2026.03.13.01.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:46:26 -0700 (PDT)
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
Subject: [RFC PATCH 2/6] riscv: alternatives: support auipc+load pair
Date: Fri, 13 Mar 2026 01:44:03 -0700
Message-Id: <20260313084407.29669-3-ganboing@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313084407.29669-1-ganboing@gmail.com>
References: <20260313084407.29669-1-ganboing@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275021-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 43F7627FEDB
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


