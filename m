Return-Path: <devicetree+bounces-11520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDB77D60FA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 06:58:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCA69281887
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 04:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBDFA1C04;
	Wed, 25 Oct 2023 04:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=openmail.cc header.i=@openmail.cc header.b="JKscZA1f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2783B80F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:58:04 +0000 (UTC)
X-Greylist: delayed 402 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 24 Oct 2023 21:58:02 PDT
Received: from smtp161.vfemail.net (smtp161.vfemail.net [146.59.185.161])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FFFB99
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:58:01 -0700 (PDT)
Received: (qmail 18738 invoked from network); 25 Oct 2023 04:51:19 +0000
Received: from localhost (HELO nl101-3.vfemail.net) ()
  by smtpout.vfemail.net with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted); 25 Oct 2023 04:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=openmail.cc; h=from:to:cc
	:subject:date:message-id:mime-version:content-transfer-encoding;
	 s=2018; bh=z3I7BxJWkJGWMcauhe7x+lldOe3CDXrLlKAqfautbjk=; b=JKsc
	ZA1fcTejIgxVxwE99gtg3mw34yQTjcVa8RC4teaG6ZfTDisPJTcXsKrmpjHFQ8G+
	cSc8mTxgzsEiK2w8hBLAmKlLEOR1LT58CGC72gxYKa+RgYX8+f8HyndQSbL2QyPj
	4Tvi2cTwrNsxT9rG4ZHe5LiQ7SEqK48PUHjxpes=
Received: (qmail 80579 invoked from network); 25 Oct 2023 04:51:18 -0000
Received: by simscan 1.4.0 ppid: 80549, pid: 80569, t: 1.8100s
         scanners:none
Received: from unknown (HELO bmwxMDEudmZlbWFpbC5uZXQ=) (ZXF1dUBvcGVubWFpbC5jYw==@MTkyLjE2OC4xLjE5Mg==)
  by nl101.vfemail.net with ESMTPA; 25 Oct 2023 04:51:16 -0000
From: Edward Chow <equu@openmail.cc>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Edward Chow <equu@openmail.cc>
Subject: [PATCH] dt-bindings: mtd-partitions: Export special values
Date: Wed, 25 Oct 2023 12:50:58 +0800
Message-ID: <20231025045101.825236-1-equu@openmail.cc>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are special "offset" and "size" values defined and documented in
linux/mtd/partitions.h:

// consume as much as possible, leaving size after the end of partition.

// the partition will start at the next erase block.

// the partition will start where the previous one ended.

(Though not explicitly, they are compared against variables in uint64_t
in drivers/mtd/mtdpart.c, so they had better be considered as such.)

// the partition will extend to the end of the master MTD device.

These special values could be used to define partitions automatically
fitting to the size of the master MTD device at runtime.

However, these values used not to be exported to dt-bindings, thus
seldom used before, since they might have been only used in numeric form,
such as "(-1) (-3)" for MTDPART_OFS_RETAIN.

Now, they are exported in dt-bindings/mtd/partitions.h as 32-bit cell
values, so 2-cell addressed should be defined to use special offset values,
such as "MTDPART_OFS_SPECIAL MTDPART_OFS_RETAIN" for MTDPART_OFS_RETAIN in
linux/mtd/partitions.h. An example is added to fixed-partitions.yaml.

Signed-off-by: Edward Chow <equu@openmail.cc>
---
 .../mtd/partitions/fixed-partitions.yaml      | 29 +++++++++++++++++++
 MAINTAINERS                                   |  2 ++
 include/dt-bindings/mtd/partitions.h          | 15 ++++++++++
 3 files changed, 46 insertions(+)
 create mode 100644 include/dt-bindings/mtd/partitions.h

diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
index 331e564f29dc..a939fb52ef76 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
@@ -164,3 +164,32 @@ examples:
             read-only;
         };
     };
+
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <2>;
+        #size-cells = <1>;
+
+        partition@0 {
+            label = "bootloader";
+            reg = <0 0x000000 0x020000>;
+            read-only;
+        };
+
+        firmware@1 {
+            label = "firmware";
+            /* From the end of the last partition, occupying as mush
+             * as possible, retaining 0x010000 after it,
+             * "MTDPART_OFS_SPECIAL MTDPART_OFS_NXTBLK" similar to
+             * this, but always beginning at erase block boundary. */
+            reg = <MTDPART_OFS_SPECIAL MTDPART_OFS_RETAIN 0x010000>;
+        };
+
+        calibration@2 {
+            compatible = "fixed-partitions";
+            label = "calibration";
+            /* Appending to the last partition, occupying 0x010000 */
+            reg = <MTDPART_OFS_SPECIAL MTDPART_OFS_APPEND 0x010000>;
+        };
+    };
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
index 000000000000..456a54a1259a
--- /dev/null
+++ b/include/dt-bindings/mtd/partitions.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
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


