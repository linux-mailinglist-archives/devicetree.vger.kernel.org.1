Return-Path: <devicetree+bounces-271380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJMHMdstqWlN2wAAu9opvQ
	(envelope-from <devicetree+bounces-271380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:16:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4BE20C6ED
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:16:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 38921305C33C
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 07:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E743932B981;
	Thu,  5 Mar 2026 07:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QAZDvYvq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9A4329365
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772694774; cv=none; b=Xus3QoMEFBuJQ5JNz4fBQzx0r5FqF3plI7eqDmB9WduDNX5Nzq/yZ4PL91I13zUFdZd579jjhnTjsGou1Ln78Q626CkCwdRt5LJV0voxUqVfCkA1roGWFT+c9TuEKW0h+vdGg1GA1x2lUBFydEZ9+9unRp/yzDjIOrm98hHuEaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772694774; c=relaxed/simple;
	bh=A0cKTP/NcPWurRQx3wyGtZw1VFNDkseDTGwzrhDZmHE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j1Y1Ci4H10PQlt46hUMSAqzNPD8saHkeK5tyHx7ye8W6/lM7Bv878sUz3irvStrg4mzdBU+Th7ZIU/0nqLXOJs5EJn/T8d72c+GVDJCMDOYGMNCgawCHzMkclvYDD6lF0Uu76F1aKZFm292ZXtqL38ed1yFaKUBES7Dwggr4Lj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QAZDvYvq; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c70f91776fcso3023832a12.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 23:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772694773; x=1773299573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nILoW48W9hqLRwmHITphjoIJRhEY+2JRSNwPbSj3wbI=;
        b=QAZDvYvqeK9boCHTvE1AcCc29dsBfWcVnSf3yzXNxuGohAp2fxjD/E5v8kK/kbyZj7
         5sS+oP/OB3W70hnZY9jxPuEvUxU9q0Z8vBeMQtc3Q9rjicCWgFUmlQG2PVzou8YCxxV1
         TmjFMOtjmotjVQwubwZFWuWO9YNf98ypsLd3VkpBLyBlU3efJ3q6hUR/8vWiUUhwATSZ
         VIUHEUcYkg6LnT8+Fbw/ZNvj6SQ/uhxgKhWUMbsU4c15HP68MNqEEqs72oY9mIvYgu8a
         17RTOZ+PWCM8ruxUSS831kLRJqkG828IzpyCeKzky5F0JCIL5mp9eCBX65v7X8Qp8ADG
         G/CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772694773; x=1773299573;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nILoW48W9hqLRwmHITphjoIJRhEY+2JRSNwPbSj3wbI=;
        b=jJpw3JDOcHq1dVoodugsYLlbYR755owc19uk0eNqu3+XEvDRHX5m8Kx3cihh9eEUVg
         uVQdjj1LbI/OUsLC5EG5R7mtLSh76+Mj/A97bEjLmoPlLhn+ea3hdM+SveEvYwsz/F1E
         lee9fOP7hZUc6seGh4ydXrg5JoPbzL15Eld4pLq6lD75iYpDZJ4ALuFfSWLslvnAN85U
         oSHLAydbq/fSTN7x0o+pZ5jJ8dwlxUGbq5d6EvUHCxpT3pIpTcJXfRhHeuUxrzo+tKg2
         7S+pSJJVSlQF8JBPP/0G/3VIt24O/p7a2LQknBWVm0kISlfo0Kb3eFxFr4nAu58vZuh5
         HPag==
X-Forwarded-Encrypted: i=1; AJvYcCVogPw7xdDUxKPqJWB8fVnZWRH5WbMvJNUgQCT5aUnETim+L3wcNz4qRR7mvZJjXwT3q7T6RTRE6x6z@vger.kernel.org
X-Gm-Message-State: AOJu0Yz67/HRpATkdGWcROU7mAM0W6fVLo6N2a52oqaQx6eFE4Jf4RHy
	DqtpYQ/VgvlNWQ2OyezSeVO05n2zfW87m6v0M+zsu7bxYJzauYC0t+65
X-Gm-Gg: ATEYQzzVDbVZv7LtMb28ea9liXgrzjhNwqtmC0cFN0sc3R44tbAwhqefgnCODzjxREd
	/nm1s5DP0yJGYyz2oUXOwiegIeIuMF9eJlhlbcfGxGswrSS4Qa1IwH2kjeG6/RPCZn2ZyLneTdi
	++sO+80Mkzjjqi9Jmhao1ABem1B2EGYR1v/TUJgM3nNwMCVWJiug/6Nxu3TIkJWjC8qx8ihGT0h
	lh4QwP5ECAqKe3qxuClDHDhwsdveOgV0P1L9aUuYVJtESmX4yHCDXI9eZ0d5Wxilrv03i64V7ZE
	sAcbnZyT44JPtKzxmgnINftUMrTDrVBPKFLDYEiNVSnJ0TLeKKIV8+JF0AvyDROmRZvRr8AiAFq
	YIHsi8tsM+fYwTG6QRMUaj92n7Aaj7+n26K8RFcbLkfy6TVmcHgnaXp4uY6UKY8KyznvfeA4Sck
	vClwf/TMzLmZ0ZNMfubjXlHTAZMJ1oxqeBwemybwWLgh/Nrw==
X-Received: by 2002:a17:902:db0f:b0:2ae:57e6:616c with SMTP id d9443c01a7336-2ae6a9c6eecmr45501805ad.3.1772694772962;
        Wed, 04 Mar 2026 23:12:52 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69ef1csm227491785ad.53.2026.03.04.23.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 23:12:52 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id B91B74163B71;
	Thu,  5 Mar 2026 15:12:50 +0800 (CST)
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
Subject: [PATCH v8 2/3] mtd: spi-nand: Add support for randomizer
Date: Thu,  5 Mar 2026 15:10:41 +0800
Message-Id: <20260305071042.1193522-3-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260305071042.1193522-1-linchengming884@gmail.com>
References: <20260305071042.1193522-1-linchengming884@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: CF4BE20C6ED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-271380-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mxic.com.tw:email]
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
index 8aa3753aaaa1..77a0371010c4 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -1307,6 +1307,29 @@ static int spinand_create_dirmaps(struct spinand_device *spinand)
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
@@ -1594,6 +1617,7 @@ int spinand_match_and_init(struct spinand_device *spinand,
 		spinand->user_otp = &table[i].user_otp;
 		spinand->read_retries = table[i].read_retries;
 		spinand->set_read_retry = table[i].set_read_retry;
+		spinand->set_randomizer = table[i].set_randomizer;
 
 		/* I/O variants selection with single-spi SDR commands */
 
@@ -1881,6 +1905,9 @@ static int spinand_init(struct spinand_device *spinand)
 	 * ECC initialization must have happened previously.
 	 */
 	spinand_cont_read_init(spinand);
+	ret = spinand_randomizer_init(spinand);
+	if (ret)
+		goto err_cleanup_nanddev;
 
 	mtd->_read_oob = spinand_mtd_read;
 	mtd->_write_oob = spinand_mtd_write;
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index 6a024cf1c53a..6a68a6c3866a 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -584,6 +584,7 @@ enum spinand_bus_interface {
  * @user_otp: SPI NAND user OTP info.
  * @read_retries: the number of read retry modes supported
  * @set_read_retry: enable/disable read retry for data recovery
+ * @set_randomizer: enable/disable randomizer support
  *
  * Each SPI NAND manufacturer driver should have a spinand_info table
  * describing all the chips supported by the driver.
@@ -612,6 +613,8 @@ struct spinand_info {
 	unsigned int read_retries;
 	int (*set_read_retry)(struct spinand_device *spinand,
 			     unsigned int read_retry);
+	int (*set_randomizer)(struct spinand_device *spinand,
+			      bool enable);
 };
 
 #define SPINAND_ID(__method, ...)					\
@@ -668,6 +671,9 @@ struct spinand_info {
 	.read_retries = __read_retries,					\
 	.set_read_retry = __set_read_retry
 
+#define SPINAND_RANDOMIZER(__set_randomizer)				\
+	.set_randomizer = __set_randomizer
+
 #define SPINAND_INFO(__model, __id, __memorg, __eccreq, __op_variants,	\
 		     __flags, ...)					\
 	{								\
@@ -753,6 +759,7 @@ struct spinand_mem_ops {
  * @user_otp: SPI NAND user OTP info.
  * @read_retries: the number of read retry modes supported
  * @set_read_retry: Enable/disable the read retry feature
+ * @set_randomizer: Enable/disable the randomizer feature
  */
 struct spinand_device {
 	struct nand_device base;
@@ -786,6 +793,8 @@ struct spinand_device {
 	bool cont_read_possible;
 	int (*set_cont_read)(struct spinand_device *spinand,
 			     bool enable);
+	int (*set_randomizer)(struct spinand_device *spinand,
+			      bool enable);
 
 	const struct spinand_fact_otp *fact_otp;
 	const struct spinand_user_otp *user_otp;
-- 
2.25.1


