Return-Path: <devicetree+bounces-267234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAJYD7zym2kI+AMAu9opvQ
	(envelope-from <devicetree+bounces-267234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:25:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DE517218F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1CC6E303F57F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414F7248F6F;
	Mon, 23 Feb 2026 06:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k9PNDkEU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8263451D9
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771827581; cv=none; b=AT7H+0AmqUoF+JiJ4qyqyiVHuwFy/jlHwXD7aHHrGWB3YczHsG11AEmff5+WS7pAZkp+sdAom1clvOZ5QT9vlnK74fOb2/oTjHfWOheUPKTLXCVgNzG22KAFFeUarid/in2bS1OniiQBgAAoT0GiERau9dErqW4qwH+LVvft+yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771827581; c=relaxed/simple;
	bh=A0cKTP/NcPWurRQx3wyGtZw1VFNDkseDTGwzrhDZmHE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KZJ0/ZHZkkEwmGEtL8GT9Y4DVljfpAP0+1FWt5fVr1PNWzREe7nFtD0q9TNUDLFjGa3KqSNDmBEdH1qkLCSHQ7wpE1gW75SsS8lfqqa1zd0+CTynSc+ntnqBfbpz3/kM+xK5dyEc6HKRI2M9swEvnvpai1w5CKpCbAu5pf5UNbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k9PNDkEU; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3562e98d533so2423208a91.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771827579; x=1772432379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nILoW48W9hqLRwmHITphjoIJRhEY+2JRSNwPbSj3wbI=;
        b=k9PNDkEUTUtrDK0yjQG3hUJSVTVAOZIfKVJPouS45WyPXE9XdlToOFGW5kJncEEXo6
         s5uRa0yw1PGh+msd4+gIbHjjqsfLQ7cbn5mRnQr3Q44c4eyi3vifig/ytdw5xf8Fmj+E
         IokAkbuMMsibBpt4eAR28bzxIVhlOO2o8pVqMrsiv36UqELMnPOU6Jjbbg+0jvpk8964
         CnjEIIa8AXrfO+nNeeFSUApNHr4lipl4mvRXtA8baxWdY6v7U8LIMlhW5i6lgVjlVsFi
         ESuPj5D8W8mxmh2lH1ouFE6jx35ovC/Z8+uidnUyV4zkZf0Z5uhQTPq2J80rliYiBDIg
         Qaqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771827579; x=1772432379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nILoW48W9hqLRwmHITphjoIJRhEY+2JRSNwPbSj3wbI=;
        b=BvreSBbbkcQN954KgujLwjHpWXyGytoW+0q0ptwD5FflEXwqeEdQZcuCm9nag9s0cE
         aInrQU1MVTVv+77olSx94GQA7RdoWnWMqYbehHoTK4NxrLmiBXH+FTV+F90CfStCHUWy
         HscmibxVo8Bri5NCFGFWJkSJWBnMUzufAO9apt5vaV5oWdiTsdssGdxaxCH7df27TAZP
         5YPqo5UVZT0a8g2DBAhqvPn/o17Wy6tMAZk0f2TCe0oj5oGWZY+TLiQBabWwVI1UuKtg
         bi+fJFuBczCXE4x8ME4/DT99e8esK01xBzmgxsGYhbAmM392aOkxo681P4WZ3rw9mU/Q
         Vfig==
X-Forwarded-Encrypted: i=1; AJvYcCUOEKoDjLD7lLY5lfejVn58PstcHZCsIPQ3SfaHc+XGG6pdy0Uo3r7FYVh1IB9FyY+QKysorHs+BfOl@vger.kernel.org
X-Gm-Message-State: AOJu0YwxOHWWWo/2BeCjwuv5TbKwe0uWePq8oHt2oVpIAQdVwEiz2a/7
	K+Y/1xsIHiQ/VGKqM2mUGmMcNmVU6Rf6eqm7bznk7CS2e+GBXpCrWj63
X-Gm-Gg: ATEYQzzmHfobdxDFcjMOo1Mp/39x8RhwgcGOynksPweQMHK9vCV7fhVfw7AvOalv/8x
	q3H3cO+RWQ42HRPOboDa0clCKnqrvvjz/eeQ7eHqfgDYYOB1K380REM50R1dkMpnRl4jZqaJH/n
	Td+AasuYf6mLKwvALwtIHl0hw6q41A6hL3vK37V8QvhXjPeVKIzQojCq4V8/RtAJOo8EuDce2ou
	qLz7E3Uq/s50RcQDnUmsXxxKZ4u8DSJkYe+9244q6IpgvHpmro0ggg+U6blmszQELQ+UTpUhQKJ
	WtYc3xcWTQldq+ltEjfVfePA9cVCieiZOTMP5YEQV53A69aDQFNg4CXNHWWDQoAxfb8y1pB+MT/
	1Y9598DwDYuDzEbvUuqyuqL/z6M1+iWyiPCX0QBIJkPLTCKo8FI5x230MxPtLEaaLJmWwGNmYcx
	EAdqG40RVhrwDywRbHERnwTk4vwvzlxW2OzDXhvwru6LMe+g==
X-Received: by 2002:a17:90b:498f:b0:354:a76e:7f08 with SMTP id 98e67ed59e1d1-358ae6a4304mr5524288a91.0.1771827579168;
        Sun, 22 Feb 2026 22:19:39 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3589d8e3e73sm9340820a91.15.2026.02.22.22.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:19:38 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id E38AD4136075;
	Mon, 23 Feb 2026 14:19:36 +0800 (CST)
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
Subject: [PATCH v6 2/3] mtd: spi-nand: Add support for randomizer
Date: Mon, 23 Feb 2026 14:17:05 +0800
Message-Id: <20260223061706.1027986-3-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260223061706.1027986-1-linchengming884@gmail.com>
References: <20260223061706.1027986-1-linchengming884@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-267234-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E6DE517218F
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


