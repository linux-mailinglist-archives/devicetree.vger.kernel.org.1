Return-Path: <devicetree+bounces-268104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPOBGm9XnmkKUwQAu9opvQ
	(envelope-from <devicetree+bounces-268104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:59:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F5B190529
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42DA130429B7
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 01:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD00D26AA91;
	Wed, 25 Feb 2026 01:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bIXmu1V9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C77B1F5858
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771984746; cv=none; b=DI5Mx74BqrFB/VytpBqSge+W7tXXnavgKZ2NvIkcXQ2Sj1d6aLX11NG6fzR7GBMqr0TgbFQstdLtbIJCWh27e+8qxyUxk1z5yPlt+ZlFgs1cpR2QmrSNrrc1z1DM4fQX37Sp3FimGC+LM6ZP/4i/d4eD/BdshP72Rrv8usb/wIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771984746; c=relaxed/simple;
	bh=A0cKTP/NcPWurRQx3wyGtZw1VFNDkseDTGwzrhDZmHE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fVVcnzvgEqZ4kSKKm5NxONcfZyUvWjZCpJd3+0q1UJPcMdcfFCVY2RQTqq0QYWlVYanfqLnmLoAAlIiVdmWp7xWJIa3XzginMHkWsTeGslBPEuJPpTME9PU690UwAuhG19/hRWLCtbh89ZLL+HyZTG1yNmTA1TyR5Ys0b/Qsdek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bIXmu1V9; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2ad3f12a496so1443825ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771984745; x=1772589545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nILoW48W9hqLRwmHITphjoIJRhEY+2JRSNwPbSj3wbI=;
        b=bIXmu1V9pHXDmG2o91ouxeCqP8HoggOp0LNnh30KSAZJOQCkvUhrjG8zChpmYZ13GE
         ij6Ej2DFLMjYMpVyW6HcUr+Fw2uRfH5TPVRCcpb3yU/M8bMy8sj06Q0aLfTPmRHhNXsa
         EADFl2GveYMcbYM/aDuC5yRV3HzKeQxZor6MQ7zjoCfGUNmXmA4MdZUR3j9kKZ0E483b
         3QO6eUxY5S3Ech4W5JrSNlhtVmNhhdmwATzWu7Pdb5y+jFuZIIJFEH/0Xj8gW0O2C4B9
         +PnwqWpNMAsBU6Bk015TP06odteo0F4jH6/+IPYt2REm43ZY4g+U2bUX8gAjy4YXJPIy
         x1zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771984745; x=1772589545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nILoW48W9hqLRwmHITphjoIJRhEY+2JRSNwPbSj3wbI=;
        b=G2FZrUVUN8Hu3GWPg0EC5qcbBiZ4lMpQrLDnwQepgWu9XLHCHhrMQ7/uCDYubwdVSJ
         9Ji6rl1QI3v6TclW6786GqPI8nwf9Dg7l2Zsp5p4VFRfgbJa+s3qsE2Dy4E0oOyPX2vK
         pMqY/EGpPD2MfVlqqtTl3W7cbMba3ZsXyzMDyAkhaDPowbIycz5xpICx8MhJzR7egk9e
         AgLchE869yG+rrNU/IrBrelaAMtR+oCu+eCW3jbrw/b/n0Nun3i5/LYeXttgE9A7IOQj
         czZK5cKsnhuKo5vCgs4m27EKfvr5/TxO/Fze233af+rn05yWARnf4rPigOgZ0rWEoy5N
         OvQw==
X-Forwarded-Encrypted: i=1; AJvYcCX6inPnKUM+5LjlDxuYZ3IbbB770TvRo9Opw9TZWEOxgiadKXdnpIFYA25qK0cI+Z+9kHYEUz515MWK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx54ONrYbCCgyRoowDkmPq+gMk20rAIYOiwVnXb0Ub4raKPxmjF
	MaA5auX1uCooHM/W+SH+qUw5iTNlrtjM+JM7iHzPTvv8ehpFYM0I/aAR
X-Gm-Gg: ATEYQzxiwpKm1DXhtoPIm/uNOQLJH7aK9gr1rkJnBUHiDjHXOHKD/iLpjb9C/NAqumG
	UXG3h8puusStud5M7seJMmoIrdzQvsIHAKbqPFdom8OE0w7KLi5QfKP9CUPdIS0XdywEwkVa8wj
	aC5tRvYaYwYD8EwecLU7IcNnEBShuksD4ct5J8G/Afs6wmu3YY+sMkOcfmGTsRwFgGCtgs0Gh+J
	o+L0ZC0b2SG6HzbmQIwL+DuHO4iNAGJdUIE3Z/yntXJyx8Bq42O4BRupOJhevlgnQEIuq1aw7rX
	a9MBGZBqpIUyBsAxe5yItyS9r+Dpwhi3biF3gEOlOVX+Yb5mVpsWM9IeUGjwXRZu9OyuCe4jix9
	1f/7ZXtDNbORJ2mTHosj9+CLqXlMasm2ws5cM45mSuxowiUmOk624SIdDDRjLb5IfbTUdcPvJWw
	l0pT4+Ythh31NoWCv9A+c7T5Zge27VPmdFt/qAtXKna3lciw==
X-Received: by 2002:a17:903:2350:b0:2aa:e238:e20c with SMTP id d9443c01a7336-2adbdcd8822mr19122275ad.19.1771984744512;
        Tue, 24 Feb 2026 17:59:04 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503fcc5sm118566325ad.76.2026.02.24.17.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 17:59:04 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id 93A694136075;
	Wed, 25 Feb 2026 09:59:02 +0800 (CST)
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
Subject: [PATCH v7 2/3] mtd: spi-nand: Add support for randomizer
Date: Wed, 25 Feb 2026 09:57:04 +0800
Message-Id: <20260225015705.1113199-3-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260225015705.1113199-1-linchengming884@gmail.com>
References: <20260225015705.1113199-1-linchengming884@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268104-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D6F5B190529
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


