Return-Path: <devicetree+bounces-264714-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIjPON5UjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264714-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:07:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E621D12327A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0BE0F3005172
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17047366DBB;
	Wed, 11 Feb 2026 10:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NmkWJvRJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A8B33893D
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804441; cv=none; b=n5qiStD8qv5k0TMWCRG9DFngHX7XETDg9cpllxoWobzcUHyqkWPP/Q5V5HyxFalh0+jSOsPG1CFJNuuTiF44eEntXcpjanXfdjDoftSAQlTlS28RktBUplgJL3j9NelSxUWDck19EMJ2ND1vZRPDJBhgRtgnsRtiFVMEYJch/QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804441; c=relaxed/simple;
	bh=v4g17XTvElKdVLEgPCsbP97+935hoEqDNl0aXrDNwmQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KQ8G7sHBF5sKxiwJt7Fp9EykBS7FXeUkdf0HwIjD80M5iY4JACXzaKoH2eyClCq9BjkiU29q0Frm0m0AWdfBBYyt1ZxYnTksnW2OVNCTySKdg6V6ZreLIKQdosB3tTurzA7BHBZuVYU4gLtM5MQMMPixFx5OsxcAnVcN9VSQj2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NmkWJvRJ; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-8230c839409so1611186b3a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770804439; x=1771409239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vez69047uDXOuQc71G6ik4HtqOr3/TvZvcnrZ5g7CFU=;
        b=NmkWJvRJBh6E6wOl+Rt+TRSGULt4OIDhLbcQ3KKAmFs8AIY0vyi7edlr854aULz1n9
         56d+zLfqipANw48XQyYeBLTbpBbaDskv1Y50kjIbW+jIaZZH3mNyS/0TC3gsT1zlBOfq
         /KHB1I35rSJJ6SeioL3GbWXYOzVCgbZREQsZFvL7221Ddv/Q5tenTeMExlvz40XcpRvN
         DxLrbYrBJcgwhqIygkk4z+Q2mEyOwUxHoP6lMQPUtF8yQJf+5AwDiLRww9gePe3ZU4jP
         wdA1aXiwIoa0rjuFA6iB3m/R9axCTh1MxycrphLCOExj0O4BWr9hTzUum3XDqAIcefFB
         D8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804439; x=1771409239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Vez69047uDXOuQc71G6ik4HtqOr3/TvZvcnrZ5g7CFU=;
        b=jAzDK0282AMtXDnntoA/f9sUphRTwWMaxg/zqAeS0Kw+h5b7+hh4j6VyA+bDVzZ1rF
         LaGgYiY/B0cnTOb/C2NEjm01Pntme4xG2TE2FH4i1c5VAKbpIkOgvvZsRonAAiI4KjyE
         7MWrxp9Ni41MYxZ/Ot5PJC/Rl+mHIXTrtLHsGFnJexZAdmwZlaiQy5JYB9/sthCH/5xs
         9UnRO3JbaVpvoAzp5tZCpYYdOq5YxP5Jpeyi+h71hbfxVohFBTCNmM2CmplsBEKGsuqy
         EFXJr4sLqjOBv00LaCGchJ8vZCqVA8x2rZSWm07j70241AqM0564M71o+TezZrYrRGxy
         wt0w==
X-Forwarded-Encrypted: i=1; AJvYcCU5jZkb/owOmpli1iP8bfZLAHpIMRHFtCCDmnQ3b1afFJ9p6Yty3FO1g65WE+7VkNUa4NGdHm4kJ2aY@vger.kernel.org
X-Gm-Message-State: AOJu0YydYbPNguAXhTCm17t5sEFVTOjCMj0FHHhYJe0QsvfTxj3apMsi
	dUExuTAhFxoQoBm3z82CehHGBBff0s0if2ZWftIFJ6IfenBzbwIEeqC4
X-Gm-Gg: AZuq6aJE1D4+1syTjODPsaMoCOgB01OHtRGsTuiXgFYqNUaCa46KoGBK18qjE3oPAlP
	drRMw8oePlQPLE/4FP3GNugd40lripT5W/CK5AmvBl5defWkT7sADCRvv7wR1jjKva3ZcBLACaP
	Jx1Ibp2+cnxmzcoG4k/1PNRh9ilnov6JW8sqjhq8O3z2/z0Tzv0JLomtzBuIhZMZj/8DqBo/BYF
	3cOgbmkvmxdzkVO/avvC48InmDrCLx0tRWMsLXTyst97I/mk+VNyLErKF3mCfdt7fWwf5Ffyz4o
	DuZeZph8dWbz40o2P1QXxl+g6sjj+a7zDp2CbH3B3n1qp2YGuSg3PtEOiFDK07UDQkYKGFd2f7n
	23sQslArEEFFRMy3qMqe2DxomsJo5nxxiLfcUZcosNz65hnuvawCtETfhikexLLOkQ5TnF3uyTG
	O0TFWB3yc52yKPyAkvjJvAlkSzPFqltCWvLrW3SCPZjorDFQ==
X-Received: by 2002:a05:6a00:6b93:20b0:824:936a:46bb with SMTP id d2e1a72fcca58-824936a55c2mr2508812b3a.20.1770804438987;
        Wed, 11 Feb 2026 02:07:18 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e7d600dsm1721184b3a.34.2026.02.11.02.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:07:18 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id EF2FD4136075;
	Wed, 11 Feb 2026 18:07:16 +0800 (CST)
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
Subject: [PATCH v5 2/3] mtd: spi-nand: Add support for randomizer
Date: Wed, 11 Feb 2026 18:05:52 +0800
Message-Id: <20260211100553.907585-3-linchengming884@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-264714-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mxic.com.tw:email]
X-Rspamd-Queue-Id: E621D12327A
X-Rspamd-Action: no action

From: Cheng Ming Lin <chengminglin@mxic.com.tw>

This patch adds support for the randomizer feature.

It introduces a 'set_randomizer' callback in 'struct spinand_info' and
'struct spinand_device'.

If a driver implements this callback, the core will invoke it during
device initialization (spinand_init) to enable or disable the randomizer
feature based on the device tree configuration.

Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>
---
 drivers/mtd/nand/spi/core.c | 27 +++++++++++++++++++++++++++
 include/linux/mtd/spinand.h |  9 +++++++++
 2 files changed, 36 insertions(+)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index d207286572d8..d6b12d05c346 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -1218,6 +1218,29 @@ static int spinand_create_dirmaps(struct spinand_device *spinand)
 	return 0;
 }
 
+static int spinand_randomizer_init(struct spinand_device *spinand)
+{
+	struct device_node *np = spinand->spimem->spi->dev.of_node;
+	bool enable = false;
+	int ret;
+
+	if (!spinand->set_randomizer)
+		return 0;
+
+	if (of_property_read_bool(np, "nand-enable-randomizer"))
+		enable = true;
+	else if (of_property_read_bool(np, "nand-disable-randomizer"))
+		enable = false;
+	else
+		return 0;
+
+	ret = spinand->set_randomizer(spinand, enable);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static const struct nand_ops spinand_ops = {
 	.erase = spinand_erase,
 	.markbad = spinand_markbad,
@@ -1412,6 +1435,7 @@ int spinand_match_and_init(struct spinand_device *spinand,
 		spinand->user_otp = &table[i].user_otp;
 		spinand->read_retries = table[i].read_retries;
 		spinand->set_read_retry = table[i].set_read_retry;
+		spinand->set_randomizer = table[i].set_randomizer;
 
 		op = spinand_select_op_variant(spinand,
 					       info->op_variants.read_cache);
@@ -1588,6 +1612,9 @@ static int spinand_init(struct spinand_device *spinand)
 	 * ECC initialization must have happened previously.
 	 */
 	spinand_cont_read_init(spinand);
+	ret = spinand_randomizer_init(spinand);
+	if (ret)
+		goto err_cleanup_nanddev;
 
 	mtd->_read_oob = spinand_mtd_read;
 	mtd->_write_oob = spinand_mtd_write;
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index ce76f5c632e1..e01315a71222 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -501,6 +501,7 @@ struct spinand_user_otp {
  * @user_otp: SPI NAND user OTP info.
  * @read_retries: the number of read retry modes supported
  * @set_read_retry: enable/disable read retry for data recovery
+ * @set_randomizer: enable/disable randomizer support
  *
  * Each SPI NAND manufacturer driver should have a spinand_info table
  * describing all the chips supported by the driver.
@@ -527,6 +528,8 @@ struct spinand_info {
 	unsigned int read_retries;
 	int (*set_read_retry)(struct spinand_device *spinand,
 			     unsigned int read_retry);
+	int (*set_randomizer)(struct spinand_device *spinand,
+			      bool enable);
 };
 
 #define SPINAND_ID(__method, ...)					\
@@ -580,6 +583,9 @@ struct spinand_info {
 	.read_retries = __read_retries,					\
 	.set_read_retry = __set_read_retry
 
+#define SPINAND_RANDOMIZER(__set_randomizer)				\
+	.set_randomizer = __set_randomizer
+
 #define SPINAND_INFO(__model, __id, __memorg, __eccreq, __op_variants,	\
 		     __flags, ...)					\
 	{								\
@@ -635,6 +641,7 @@ struct spinand_dirmap {
  * @user_otp: SPI NAND user OTP info.
  * @read_retries: the number of read retry modes supported
  * @set_read_retry: Enable/disable the read retry feature
+ * @set_randomizer: Enable/disable the randomizer feature
  */
 struct spinand_device {
 	struct nand_device base;
@@ -668,6 +675,8 @@ struct spinand_device {
 	bool cont_read_possible;
 	int (*set_cont_read)(struct spinand_device *spinand,
 			     bool enable);
+	int (*set_randomizer)(struct spinand_device *spinand,
+			      bool enable);
 
 	const struct spinand_fact_otp *fact_otp;
 	const struct spinand_user_otp *user_otp;
-- 
2.25.1


