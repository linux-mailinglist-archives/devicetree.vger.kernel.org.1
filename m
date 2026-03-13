Return-Path: <devicetree+bounces-275022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCQsHPnOs2n2awAAu9opvQ
	(envelope-from <devicetree+bounces-275022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC6127FEE2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D460F305366B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89E0D282F02;
	Fri, 13 Mar 2026 08:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C3KezQK5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DF7379972
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391592; cv=none; b=k8oYI2Lt+ejxQzu0gWUgqUBd1zGI/2SgwPMhyERq9OYZoUWE3oAEeNYWHgjcqemw41NGY4FybpP/ppkz8VNC6dtwY/5c38fTQOsPx1VpDLBJ6JQVRcS937yswUKMR5jg0yItG7Qci2Sc4lvECfjm6z1r8d/c8H2yBi3C2SfbMxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391592; c=relaxed/simple;
	bh=DVd6WEZXHS1NUbeh2wGbkSWZ9yYfsrXoo+Wia3AQWGg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TYebmjP+hLgNF4DSgYm3a3aJLA6TQPH8kYGtP10jDUK0QU1IljbB0fkFqJsc/7+knS65KkD9gjw4G5S8y3I6SfXAm09+q9K4xYmfoXPvgz+jwqlCa93QV7++L3TQYJsjTb9thXhjyVnsIOZCyESKTa9l+LRflkhfsKL/93nstzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C3KezQK5; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-89a0ecbc713so25176406d6.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773391590; x=1773996390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xi85CdMOPx2SFBBaOo/lEOezVJ6w78GyCuOUVcHQnfs=;
        b=C3KezQK5al6DUjecvBG2+6GNgnyNqaA5MqnJhlxH+XA9rkFwbtXqEoixnMbBUbmp0i
         Iq0weS3/yiJ+w42WrL8UjYsP+Rl5SRst1J3xWcGAZ1UTU98sp15JLgFLamyjBbvdFU9H
         KxYdaaiSgezLxqwsEeGAJ4E3aLAOir6Dgv3d+xMU3jtxGnmCHHYCPWlYvbyKY/NqqsXo
         noKCOwt2IoCd03pFnnvvcojBhH0Sm91CD6YZ5+6HZTGxv4j+1zjvy/TUvpd5KCbmS1CR
         3RNOM3o+sAeOpNxxQbZtz2ivB6xinPUD87q8Lg2oJ0Qgve3l4Lx6fqJowXsiVbt0y07h
         Ldxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391590; x=1773996390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xi85CdMOPx2SFBBaOo/lEOezVJ6w78GyCuOUVcHQnfs=;
        b=LK+DNDeHpPEXX19iRZstFuF03yqb8KvEAUh7rbr+/22AnbizLGaAFMT37vA60OLJy8
         TQ9Gt8OPKlLk+96wl5CghQPel0icv+z1P+2aOiM7ZlVbTIwD887LLDN9vzHTxZKOUg+C
         DkfauieLYMFMm9yBJGa77JUQxXYnjGNPjfKJQTqqupBFh3C6NxFbdbiWHvktxiT5N9Wy
         Ngl6p9ksbSe9x+wBpvqDFO/5VoDgNz1Xl4cixSvFOgDOQd12jxL2RpcA6w/yGNCWOr+C
         ChUfN60mqpK8+UEybxybme54Fpr1U6Uz4GqlMdMxrUKKzCpT2HDW56558KisfsIDW3X3
         HkiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ1gkkZSAIfmADibmP7LFOMyn7QAUCkkl++1XT0a7D4iBjBNKCFmcPAEe3GSovwgxDyon+lodLkiEy@vger.kernel.org
X-Gm-Message-State: AOJu0YyXcBY8pYXtkgneWtwV0ky7x287Li247X856Csizvxg6fiHtZ0F
	12cpTe+yvo7nmMKTeiJ/2ZkA2jzp50NGOBv0viJQTPxIzOR4ydDP4/CT
X-Gm-Gg: ATEYQzzlAm/rOarj1CCM+D8vV6ikDuIl/diP3BlUkqeeiRMooVjRzTd8Moxzv0FXT1R
	Uz8pWz0t03c+xGU9YNULgkKLEW3s3FmBC181CgTcSI0+/PlxzH9roNmuI1JSyUPaZ8zxKLk4uoZ
	MGYSGgTPN2xJPUWcjo60BZpxN3NIxC5G81HsQgMwv1TdtJY2tFLKdwR8eoxyEB9s4DVowmrUouO
	9hDjHqQXKxEkX3P34N/o/AIdEYxZXPF0yzCsJsE1YEoqtuTaYK0NlX9DdmrYVSRZ4BOGBRaQrID
	cDB3Pre6M62d+ywS0Sr3BCD3b4OHbphkP3jbrs5A2vJ06Tr+T44zDSfH9gN3Z5zpB9TICMXN8qs
	1EMPFfMra7osujBqxJiEhWi21mH4OdNJJqBTPYN9gwjYRiWqQg3EuwX7GqahQV/FrlDg7bTtAWQ
	SNJoy73KyNaNBUYEAPcExlwGUh
X-Received: by 2002:a05:6214:518d:b0:899:b03f:c989 with SMTP id 6a1803df08f44-89a729d929amr81972516d6.2.1773391590219;
        Fri, 13 Mar 2026 01:46:30 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb131sm50142206d6.13.2026.03.13.01.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:46:29 -0700 (PDT)
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
Subject: [RFC PATCH 3/6] riscv: apply page table attribute bits for XPbmtUC
Date: Fri, 13 Mar 2026 01:44:04 -0700
Message-Id: <20260313084407.29669-4-ganboing@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-275022-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1BC6127FEE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Apply the UC bit like Svpbmt and THEAD_MAE does. Also changed the
_PAGE_PFN_MASK definition to exclude the UC bit, as it's position
is now determined at runtime, and can be part of PPN.

Signed-off-by: Bo Gan <ganboing@gmail.com>
---
 arch/riscv/include/asm/errata_list.h | 17 +++++++++++++++--
 arch/riscv/include/asm/pgtable-64.h  |  9 ++++++++-
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/errata_list.h b/arch/riscv/include/asm/errata_list.h
index 6694b5ccdcf85..ba0f3d4dd0cbb 100644
--- a/arch/riscv/include/asm/errata_list.h
+++ b/arch/riscv/include/asm/errata_list.h
@@ -53,6 +53,16 @@ asm(ALTERNATIVE(	\
 	: /* no inputs */	\
 	: "memory")
 
+#ifdef CONFIG_64BIT
+#define ALT_PAGE_CUST_BIT(_bit)						\
+asm(ALTERNATIVE("li %0, 0\t\nnop",					\
+		"1: auipc %0, %%pcrel_hi(riscv_xpbmtuc_mask)\t\n"	\
+		      "ld %0, %%pcrel_lo(1b)(%0)", 0,			\
+			RISCV_ISA_EXT_XPBMTUC,				\
+			CONFIG_RISCV_ISA_XPBMTUC)			\
+		: "=r"(_bit))
+#endif
+
 /*
  * _val is marked as "will be overwritten", so need to set it to 0
  * in the default case.
@@ -60,11 +70,14 @@ asm(ALTERNATIVE(	\
 #define ALT_SVPBMT_SHIFT 61
 #define ALT_THEAD_MAE_SHIFT 59
 #define ALT_SVPBMT(_val, prot)						\
-asm(ALTERNATIVE_2("li %0, 0\t\nnop",					\
+asm(ALTERNATIVE_3("li %0, 0\t\nnop",					\
 		  "li %0, %1\t\nslli %0,%0,%3", 0,			\
 			RISCV_ISA_EXT_SVPBMT, CONFIG_RISCV_ISA_SVPBMT,	\
 		  "li %0, %2\t\nslli %0,%0,%4", THEAD_VENDOR_ID,	\
-			ERRATA_THEAD_MAE, CONFIG_ERRATA_THEAD_MAE)	\
+			ERRATA_THEAD_MAE, CONFIG_ERRATA_THEAD_MAE,	\
+		  "1: auipc %0, %%pcrel_hi(riscv_xpbmtuc_mask)\t\n"	\
+			"ld %0, %%pcrel_lo(1b)(%0)", 0,			\
+			RISCV_ISA_EXT_XPBMTUC, XPBMTUC_HAS##prot)	\
 		: "=r"(_val)						\
 		: "I"(prot##_SVPBMT >> ALT_SVPBMT_SHIFT),		\
 		  "I"(prot##_THEAD >> ALT_THEAD_MAE_SHIFT),		\
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 1a6d04884111d..aab6990d92238 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -76,7 +76,14 @@ typedef struct {
  * | 63 | 62 61 | 60 54 | 53  10 | 9             8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0
  *   N      MT     RSV    PFN      reserved for SW   D   A   G   U   X   W   R   V
  */
-#define _PAGE_PFN_MASK  GENMASK(53, 10)
+static inline u64 riscv_pfn_mask(void)
+{
+	u64 cust_bit;
+
+	ALT_PAGE_CUST_BIT(cust_bit);
+	return GENMASK(53, 10) ^ cust_bit;
+}
+#define _PAGE_PFN_MASK  riscv_pfn_mask()
 
 /*
  * [63] Svnapot definitions:
-- 
2.34.1


