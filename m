Return-Path: <devicetree+bounces-12398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9187D9418
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD4B11C21059
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29D2168D9;
	Fri, 27 Oct 2023 09:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=openmail.cc header.i=@openmail.cc header.b="CH+Qd/Qb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD49FBE3
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:46:48 +0000 (UTC)
Received: from smtp161.vfemail.net (smtp161.vfemail.net [146.59.185.161])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B905E5
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:46:45 -0700 (PDT)
Received: (qmail 28684 invoked from network); 27 Oct 2023 09:46:43 +0000
Received: from localhost (HELO nl101-3.vfemail.net) ()
  by smtpout.vfemail.net with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted); 27 Oct 2023 09:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=openmail.cc; h=from:to:cc
	:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding; s=2018; bh=hle8SC8oQYe3hUk/lyn2FO0kf
	0Ff2mlV8GXo803pPyU=; b=CH+Qd/QbAiCVWAvHMIvg/wNRYBwWAp5uusKkg2Eko
	Qm7GaUKdRAfSsevWXfe75Uh8T9l4tWpSGafnqyRnGwz/07zNhAmWWwo3jI9e87EW
	TmbArOkT0y6Ws7j890m/aa6cogqoL3ArOzwqBgUXnuF/le8ci795ovexrLMhb6/d
	Uc=
Received: (qmail 19515 invoked from network); 27 Oct 2023 09:46:43 -0000
Received: by simscan 1.4.0 ppid: 19049, pid: 19509, t: 0.3358s
         scanners:none
Received: from unknown (HELO bmwxMDEudmZlbWFpbC5uZXQ=) (ZXF1dUBvcGVubWFpbC5jYw==@MTkyLjE2OC4xLjE5Mg==)
  by nl101.vfemail.net with ESMTPA; 27 Oct 2023 09:46:42 -0000
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
Subject: [PATCH v2 2/2] dt-bindings: mtd: partitions: Document special values
Date: Fri, 27 Oct 2023 17:46:10 +0800
Message-ID: <20231027094610.1022114-3-equu@openmail.cc>
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

Add examples for special values in linux/mtd/partitions.h.

Signed-off-by: Edward Chow <equu@openmail.cc>
---
 .../mtd/partitions/fixed-partitions.yaml      | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
index 331e564f29dc..e7bf466c395f 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
@@ -164,3 +164,33 @@ examples:
             read-only;
         };
     };
+
+  - |
+    #include <dt-bindings/mtd/partitions.h>
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
-- 
2.42.0


