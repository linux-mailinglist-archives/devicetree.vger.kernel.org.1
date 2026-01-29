Return-Path: <devicetree+bounces-260869-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CONJFkpOe2n9DgIAu9opvQ
	(envelope-from <devicetree+bounces-260869-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:10:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4F4AFED1
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:10:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BEC0C303DD57
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25DCF3876D8;
	Thu, 29 Jan 2026 12:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="FBClNdAp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D382FD660
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769688598; cv=none; b=fFocA2FlJesbVHWZfVfGWmM5XmUh7xQ0huDeAiN3g2BNcLNnBU5UqQMxZikZC6vZbdtAk95NDqmxlcAZVHK5Wi+yLi3yHGuS8oBLbGySjuHJ0gIFIQxeMwNEcjD+wfVZp9PkVymFGI+pf3C6yn7mUV8eokDyARWUrSwHm2aZ5XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769688598; c=relaxed/simple;
	bh=C8nGqDlEuT0M1u5oFAeIDQz9tzYAxo1EOqYVTohrjvE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sL2RQDuG7CvJI5mt1ZvK5l5Y4wNduRmpZoYX4JonwfHM15a0ug9Dl9fe8wLJpNnveaqjUrlSyq+yUvQJIo0XG/pYsoJ5SqXDNaZxtRI31EUiKcitSU3H9oiGkpKCucp+U/glbiAW34eHbZ2ojs7+JgyM+lxqigov7BbyfgV447s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=FBClNdAp; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 46F044E42318;
	Thu, 29 Jan 2026 12:09:55 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1C92F606B6;
	Thu, 29 Jan 2026 12:09:55 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DAFCE119A882B;
	Thu, 29 Jan 2026 13:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769688594; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=N/5zFX37gkLq6zQzP//9Uu1etqb4FGSMMBO3Ww7P5LM=;
	b=FBClNdApMgGANmMOaVTusO8jUimByyvt1k6XUcAIfX1A25ChtZ6rXNNfBaZnKp5KTx365m
	3DztWDl1HLEURJA7P9AsYZFksQB7uJ3pSLcMFPDQYBCz6mmpvevihqYXMGUe+8H2w7ofBJ
	wuDfPskhmrZiiWhCJSxaCdpRfZiq86XJlh1Z2BNE81Yf1OZuE8KXccMQ5VlXVI0AxA2J/6
	I4Xvt3WvF8G2smiuXndE7rF7ksR3Zr7+BgMo/SyenZZS7dLZPhjoYa85ZELjZqYOtYelm2
	O1Rhe5ObTqw2LwbKhvn1Ud7AhCf0JZ8eBYRpG3Ot+geXOIudXat6PMkkzywYQw==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Thu, 29 Jan 2026 13:09:28 +0100
Subject: [PATCH v15 2/3] mtd: Move struct mtd_concat definition to header
 file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260129-mtd-virt-concat-v15-2-c56a232efbd2@bootlin.com>
References: <20260129-mtd-virt-concat-v15-0-c56a232efbd2@bootlin.com>
In-Reply-To: <20260129-mtd-virt-concat-v15-0-c56a232efbd2@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>, 
 Michal Simek <monstr@monstr.eu>, 
 Bernhard Frauendienst <kernel@nospam.obeliks.de>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260869-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	RSPAMD_EMAILBL_FAIL(0.00)[amit.kumar-mahapatra.amd.com:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3F4F4AFED1
X-Rspamd-Action: no action

From: Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>

To enable a more generic approach for concatenating MTD devices,
struct mtd_concat should be accessible beyond the mtdconcat driver.
Therefore, the definition is being moved to a header file.

Signed-off-by: Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>
---
 drivers/mtd/mtdconcat.c    | 12 ------------
 include/linux/mtd/concat.h | 12 ++++++++++++
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index f56f44aa8625..6f2aaceac669 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -20,18 +20,6 @@
 
 #include <asm/div64.h>
 
-/*
- * Our storage structure:
- * Subdev points to an array of pointers to struct mtd_info objects
- * which is allocated along with this structure
- *
- */
-struct mtd_concat {
-	struct mtd_info mtd;
-	int num_subdev;
-	struct mtd_info **subdev;
-};
-
 /*
  * how to calculate the size required for the above structure,
  * including the pointer array subdev points to:
diff --git a/include/linux/mtd/concat.h b/include/linux/mtd/concat.h
index d6f653e07426..b42d9af87c4e 100644
--- a/include/linux/mtd/concat.h
+++ b/include/linux/mtd/concat.h
@@ -9,6 +9,18 @@
 #define MTD_CONCAT_H
 
 
+/*
+ * Our storage structure:
+ * Subdev points to an array of pointers to struct mtd_info objects
+ * which is allocated along with this structure
+ *
+ */
+struct mtd_concat {
+	struct mtd_info mtd;
+	int num_subdev;
+	struct mtd_info **subdev;
+};
+
 struct mtd_info *mtd_concat_create(
     struct mtd_info *subdev[],  /* subdevices to concatenate */
     int num_devs,               /* number of subdevices      */

-- 
2.52.0


