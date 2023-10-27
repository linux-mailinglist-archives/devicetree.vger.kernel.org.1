Return-Path: <devicetree+bounces-12397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAED7D9414
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:46:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFAC51C2102D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1186E168CE;
	Fri, 27 Oct 2023 09:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=openmail.cc header.i=@openmail.cc header.b="qxscFcUT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99CEFBE3
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:46:42 +0000 (UTC)
Received: from smtp161.vfemail.net (smtp161.vfemail.net [146.59.185.161])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70630CE
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:46:41 -0700 (PDT)
Received: (qmail 28644 invoked from network); 27 Oct 2023 09:46:39 +0000
Received: from localhost (HELO nl101-3.vfemail.net) ()
  by smtpout.vfemail.net with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted); 27 Oct 2023 09:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=openmail.cc; h=from:to:cc
	:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding; s=2018; bh=Bwdf/hXtE2z1yTkhneNd8f2BY
	QKrt7drzyCFHrjxjtw=; b=qxscFcUTB5Qwi7tQsy24z5rDPnCWiFulXa165hUpJ
	HzL+/8ak1Kj4Iuf44tIyV6YXIVQyWh7qO4lDKoicRJKyhxW2XJvU3U2VqrNtEI2G
	pysRjciBWXEsO7Nhu0C6TyP/onZxlm1ZoH4qqpnU7TP/6wbSvdJfJd4prRI5W20S
	qQ=
Received: (qmail 19359 invoked from network); 27 Oct 2023 09:46:39 -0000
Received: by simscan 1.4.0 ppid: 19049, pid: 19318, t: 0.5371s
         scanners:none
Received: from unknown (HELO bmwxMDEudmZlbWFpbC5uZXQ=) (ZXF1dUBvcGVubWFpbC5jYw==@MTkyLjE2OC4xLjE5Mg==)
  by nl101.vfemail.net with ESMTPA; 27 Oct 2023 09:46:38 -0000
From: Edward Chow <equu@openmail.cc>
To: Rob Herring <robh+dt@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lech Perczak <lech.perczak@camlingroup.com>,
	Edward Chow <equu@openmail.cc>
Subject: [PATCH v2 1/2] dt-bindings: mtd: partitions: Export special values
Date: Fri, 27 Oct 2023 17:46:09 +0800
Message-ID: <20231027094610.1022114-2-equu@openmail.cc>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231027094610.1022114-1-equu@openmail.cc>
References: <20231025052937.830813-1-equu@openmail.cc>
 <20231027094610.1022114-1-equu@openmail.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Export special "offset" and "size" values defined and documented in
linux/mtd/partitions.h to dt-bindings/mtd/partitions.h.

Signed-off-by: Edward Chow <equu@openmail.cc>
---
 MAINTAINERS                          |  2 ++
 include/dt-bindings/mtd/partitions.h | 15 +++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 include/dt-bindings/mtd/partitions.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 668d1e24452d..7d6beadc8b36 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13771,9 +13771,11 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/fixes
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next
 F:	Documentation/devicetree/bindings/mtd/
 F:	drivers/mtd/
+F:	include/dt-bindings/mtd/
 F:	include/linux/mtd/
 F:	include/uapi/mtd/
 
+
 MEMSENSING MICROSYSTEMS MSA311 DRIVER
 M:	Dmitry Rokosov <ddrokosov@sberdevices.ru>
 L:	linux-iio@vger.kernel.org
diff --git a/include/dt-bindings/mtd/partitions.h b/include/dt-bindings/mtd/partitions.h
new file mode 100644
index 000000000000..b7f622fe458c
--- /dev/null
+++ b/include/dt-bindings/mtd/partitions.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
+/*
+ * Device Tree constants identical to those in include/linux/mtd/partitions.h
+ */
+
+#ifndef _DT_BINDINGS_MTD_PARTITIONS_H
+#define _DT_BINDINGS_MTD_PARTITIONS_H
+
+#define MTDPART_OFS_SPECIAL	(-1)
+#define MTDPART_OFS_RETAIN	(-3)
+#define MTDPART_OFS_NXTBLK	(-2)
+#define MTDPART_OFS_APPEND	(-1)
+#define MTDPART_SIZ_FULL	(0)
+
+#endif
-- 
2.42.0


