Return-Path: <devicetree+bounces-264717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HR1CwBVjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:08:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D1F12329F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:07:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 631643044A7F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8418C367F20;
	Wed, 11 Feb 2026 10:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lmcFiESR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADEB35B155
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804441; cv=none; b=onuLp46Rd2CtjaHlqbLf4tmpZstXE4HDD9Nq3DGBTrxBglMsc4tlWCL6uk4PiwV/WspeWmLCyuQKPWhuL3XuGPK/Yk5FmS4MMuVnBjC+Ry+zxzJx3pAfLKZefUBkV1dBT7hz73KDB80Imnzuu5Te+rG+MGTtVtgjsqWBd90i9hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804441; c=relaxed/simple;
	bh=sk5ObcHsvkNRSkrH29Vr0ZGJD0YngGUKebB8SFdlWLg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=q3VQ4HD+nIe7ULlJSUvZ9xf2xfvH9rc6BW01eP4un3GQWpLEHwVm8pVAu0aVW65MY9daHDnmM50Pc4bG+6lXauuSo6XFfxOSDzwjXItjFtDgur/z4RwnKfabZA4z0YchcaLeY9bYX3rJU+EHjqKq645+lnn8xMw6xBp/3hEd7dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lmcFiESR; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-8244c048d41so4197540b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770804440; x=1771409240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTOF5PYV8c2g1I+bFvYAViWDiAHB2kpsM2zHbjXs7JQ=;
        b=lmcFiESRt7MknW8W3yPowlodpJpM2vM8Wq27PIa+orQjVvKZg7MJpFR6GIllED+QOb
         TCTgskZBMYrcL2exkg3PHByaHRwy19Y9kgIxiWhXGepyjc/vv8ueUUi5KGF1XHkvrfD+
         uEniclnUYxVfXvIVSOC8oDZf4z0jJs1Qy088h6HvrzQX1XXcuhehPG7zplX+akqkhvn2
         XgkvozxmZABSkMrLi3oltukSTVOc+c+0XvHUNdOxoi5hfmY/3ZfKRYIiFh69PX5rxd8h
         N+ZN/VFECB9xSI8e+6p1joy53mPon5HqAm/vh/mEDBRw8T0L2Evdqe/TXRuxKYrkCkMj
         L7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804440; x=1771409240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CTOF5PYV8c2g1I+bFvYAViWDiAHB2kpsM2zHbjXs7JQ=;
        b=eDTfqkAqU/gVrBAMnfDp+YMC0Qg+FM3/G/Ezt1+6itqTqFxQkruzaxIXyYJdQ7C9OH
         mhRpj8w38bDSZbITZOeo//TLZTFZdvJOW2lfAAXVN8MHpTHOHJFtknl2gNo4xWFkfrKy
         Gyw10bk+Q7Hkn/13ts7DgVXmqfCacDpAUjECtEoPX5e7gIy92ILgs9IEA+kaw5TldDqJ
         RPMW/sA7KQxfGnMuXV9tsVzdQJjWYNdzUvpXkUDzf2T2aQtkbsNAkj76jMcgcBBxnJP9
         6YERhUEYSAQzWcCiWZFTgoOA15N5kPpnNoHrXnsXvmg1K5o/L1lkkcShoF2g6D+xLFUk
         7VSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVGjY62RxdHVDINNPeR/xZFKQLoR+6M14V6jqPY4XTX9uVEBOxjyaJELfR1KdlfUDqWG7nA1xQAOdz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7I7UUIgzixOiPi6MZRm9pkiU9sz7NlxVGvjgIVehakxNsC4Gt
	DKtK8NFC7LjGzOtfBkmtcWgVK2EpCdp083AvZm9b54yb+YyRKCyXmwgq
X-Gm-Gg: AZuq6aK2m4T76628kXSloZcydW0li4aOQdR09jJiZpE/LYYwn0cYJwjahbF/KSj8uHJ
	en9+5V98VtaxlKKuBtn3BxHnXCXboGMVXznuTHPzkTko25W3wBkgtWHetcbB8R1IF2N4oa/UKdO
	DJlG5Qc7lxy749KI/pKwXf0rKAa7xXifUkDGEzGxpW3CwZ1moAZstUN4t5kBWq2nt5XIkXUaZCp
	CFLJLrf3miNxu82z4v2mApaRca+AACHoZNue7UUWEV3nmQQxu4sdPzPayARRUfH6jCDAIKlETLS
	Hz5XTxNOWg42Q9bLJ19z3t9MZTuveCMLQgww+17AHAaw0U6bjO4vuNfuKsGj6BOQQFRhjl7ZNIJ
	9TbR0npz/b49BhozEB97agdK7kcbUWVKCX3k/niXX0xJy827w9d0GRbQ1Z1ioqjPplIy/42O0sB
	4mpODUjeR/0CTsaa/wOF518RWC6kZSj40sfl37aZp8rzvr4w==
X-Received: by 2002:a05:6a00:ab02:b0:81f:3cb7:cf99 with SMTP id d2e1a72fcca58-8249fbed0acmr1365540b3a.17.1770804439597;
        Wed, 11 Feb 2026 02:07:19 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e366a98sm1999109b3a.3.2026.02.11.02.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:07:19 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id 01FF84136078;
	Wed, 11 Feb 2026 18:07:17 +0800 (CST)
From: Cheng Ming Lin <linchengming884@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
	Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
	Pablo Martin-Gomez <pmartin-gomez@freebox.fr>,
	Tianling Shen <cnsztl@gmail.com>,
	Pratyush Yadav <pratyush@kernel.org>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alvinzhou@mxic.com.tw,
	Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: [PATCH v5 3/3] mtd: spi-nand: macronix: Enable randomizer support
Date: Wed, 11 Feb 2026 18:05:53 +0800
Message-Id: <20260211100553.907585-4-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260211100553.907585-1-linchengming884@gmail.com>
References: <20260211100553.907585-1-linchengming884@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-264717-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 78D1F12329F
X-Rspamd-Action: no action

From: Cheng Ming Lin <chengminglin@mxic.com.tw>

Implement the 'set_randomizer' callback for Macronix SPI NAND chips.
The randomizer is enabled by setting bit 1 of the Configuration Register
(address 0x10).

This patch adds support for the following chips:
  - MX35LFxG24AD series
  - MX35UFxG24AD series

When the randomizer is enabled, data is scrambled internally during
program operations and automatically descrambled during read operations.
This helps reduce bit errors caused by program disturbance.

Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>
---
 drivers/mtd/nand/spi/macronix.c | 46 +++++++++++++++++++++++++--------
 1 file changed, 35 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/spi/macronix.c b/drivers/mtd/nand/spi/macronix.c
index edf63b9996cf..3a9ab146426b 100644
--- a/drivers/mtd/nand/spi/macronix.c
+++ b/drivers/mtd/nand/spi/macronix.c
@@ -14,6 +14,8 @@
 #define MACRONIX_ECCSR_BF_LAST_PAGE(eccsr) FIELD_GET(GENMASK(3, 0), eccsr)
 #define MACRONIX_ECCSR_BF_ACCUMULATED_PAGES(eccsr) FIELD_GET(GENMASK(7, 4), eccsr)
 #define MACRONIX_CFG_CONT_READ         BIT(2)
+#define MACRONIX_CFG_RANDOMIZER_EN     BIT(1)
+#define MACRONIX_FEATURE_ADDR_RANDOMIZER 0x10
 #define MACRONIX_FEATURE_ADDR_READ_RETRY 0x70
 #define MACRONIX_NUM_READ_RETRY_MODES 5
 
@@ -146,7 +148,7 @@ static int macronix_set_cont_read(struct spinand_device *spinand, bool enable)
  * Return: 0 on success, a negative error code otherwise.
  */
 static int macronix_set_read_retry(struct spinand_device *spinand,
-					     unsigned int retry_mode)
+				   unsigned int retry_mode)
 {
 	struct spi_mem_op op = SPINAND_SET_FEATURE_1S_1S_1S_OP(MACRONIX_FEATURE_ADDR_READ_RETRY,
 							       spinand->scratchbuf);
@@ -155,6 +157,18 @@ static int macronix_set_read_retry(struct spinand_device *spinand,
 	return spi_mem_exec_op(spinand->spimem, &op);
 }
 
+static int macronix_set_randomizer(struct spinand_device *spinand, bool enable)
+{
+	int ret;
+
+	ret = spinand_write_reg_op(spinand, MACRONIX_FEATURE_ADDR_RANDOMIZER,
+				   enable ? MACRONIX_CFG_RANDOMIZER_EN : 0);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static const struct spinand_info macronix_spinand_table[] = {
 	SPINAND_INFO("MX35LF1GE4AB",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x12),
@@ -213,7 +227,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_HAS_QE_BIT,
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout, NULL),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35LF2G24AD",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x24, 0x03),
 		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
@@ -225,7 +240,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_HAS_PROG_PLANE_SELECT_BIT,
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout, NULL),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35LF2G24AD-Z4I8",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x64, 0x03),
 		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 1, 1, 1),
@@ -236,7 +252,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_HAS_QE_BIT,
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout, NULL),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35LF4G24AD",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x35, 0x03),
 		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 2, 1, 1),
@@ -248,7 +265,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_HAS_PROG_PLANE_SELECT_BIT,
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout, NULL),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35LF4G24AD-Z4I8",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x75, 0x03),
 		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
@@ -259,7 +277,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_HAS_QE_BIT,
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout, NULL),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX31LF1GE4BC",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x1e),
 		     NAND_MEMORG(1, 2048, 64, 64, 1024, 20, 1, 1, 1),
@@ -305,7 +324,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
 				     macronix_ecc_get_status),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35UF4G24AD-Z4I8",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0xf5, 0x03),
 		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
@@ -317,7 +337,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
 				     macronix_ecc_get_status),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35UF4GE4AD",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0xb7, 0x03),
 		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
@@ -355,7 +376,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
 				     macronix_ecc_get_status),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35UF2G24AD-Z4I8",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0xe4, 0x03),
 		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 1, 1, 1),
@@ -367,7 +389,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
 				     macronix_ecc_get_status),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35UF2GE4AD",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0xa6, 0x03),
 		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 1, 1, 1),
@@ -413,7 +436,8 @@ static const struct spinand_info macronix_spinand_table[] = {
 		     SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
 				     macronix_ecc_get_status),
 		     SPINAND_READ_RETRY(MACRONIX_NUM_READ_RETRY_MODES,
-					macronix_set_read_retry)),
+					macronix_set_read_retry),
+		     SPINAND_RANDOMIZER(macronix_set_randomizer)),
 	SPINAND_INFO("MX35UF1GE4AD",
 		     SPINAND_ID(SPINAND_READID_METHOD_OPCODE_DUMMY, 0x96, 0x03),
 		     NAND_MEMORG(1, 2048, 128, 64, 1024, 20, 1, 1, 1),
-- 
2.25.1


