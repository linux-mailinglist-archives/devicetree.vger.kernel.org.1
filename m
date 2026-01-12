Return-Path: <devicetree+bounces-254038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAA7D13473
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 84450315BB05
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:30:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1007736CE04;
	Mon, 12 Jan 2026 14:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YidsICga"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA43636C5B5
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227738; cv=none; b=fll3LBRTEwKv/CnqLrEdlc3TWC462IANdiMYSKGSxMFbEt1dxCYoxkDzOLGM8sWit6aA8uiLqGS8mbihI0NF7/+TjXVtI7y8W8EHbHRBiL7ZqHU6RvhjGKb7B+u13iwjDntW+4ppGJeKcuPIjtr5bRnANH/nmstuXvrNjkCYqA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227738; c=relaxed/simple;
	bh=TL1eFLytySgWLcsIcHKihUk/htI+NzCib3bxDXJHBH4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dAgLV/G519LVd0LEdhqUiNuEUZPwebnr6YkyU34J0K4LNsiSxidgNPz60c6xeTS/ZkQuTpidqKnd+7re5+9hQnEVgcCPnVFXjgVVL3Sk1dBFdo3IzRqx6yQ5J/GjCUGXlqTqnP+LBZ4gdlcGxeNmyoE6HFE+Zmrdqut0zw7oyAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YidsICga; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 70CB14E42094;
	Mon, 12 Jan 2026 14:22:15 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4787E606FA;
	Mon, 12 Jan 2026 14:22:15 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 79BF8103C8CD8;
	Mon, 12 Jan 2026 15:22:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768227734; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=SpLwVdqXuJV7fGItvNEE3PRUDiOp+phEPj+Qq/rCeKw=;
	b=YidsICgaEqk/yNQa1/dXeF0s8bx3XJ+nuHqq1XPQAjkOD6w2H0nusp7LfalhsZtFg/xkC0
	2TknGNIIDZgtTJg3r+Dv6B/54jimpvyoW3pSWl1sRN8G4+c1+EOdT3Iri10BD+tXHFayA2
	+f8qg/87fZ4mgkhQxVHr5fHi07/kbeNxDx2Fdd6u4vW0fkIuHl6A/2T+NX1J5fXC4GOeku
	iE/ZqGOvqEYTLImGSJVPGvW8nQPL2IKfJhepoLUZaIOrQuS5c4B75cOCf/YtqN7KwwUX98
	tAGi7t6CSpEMhg4ah1nnq3IqAlZbfEuu0wSIWa3d5xToR1ad2C6F7kJCVdWPYg==
From: Herve Codina <herve.codina@bootlin.com>
To: David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Ayush Singh <ayush@beagleboard.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	devicetree-compiler@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree-spec@vger.kernel.org,
	Hui Pu <hui.pu@gehealthcare.com>,
	Ian Ray <ian.ray@gehealthcare.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [RFC PATCH 74/77] tests: fdtaddon: Add a basic test for addons with unresolved phandle references
Date: Mon, 12 Jan 2026 15:20:04 +0100
Message-ID: <20260112142009.1006236-75-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260112142009.1006236-1-herve.codina@bootlin.com>
References: <20260112142009.1006236-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Addons can have unresolved phandle references. Those references are
resolved when the addon is applied.

Add a basic test for this feature.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 tests/fdtaddon_basics3-merged1.dtb.dts.expect | 36 +++++++++++++++++++
 tests/fdtaddon_basics3-merged1.dtb.expect     | 29 +++++++++++++++
 tests/fdtaddon_basics3-merged2.dtb.dts.expect | 36 +++++++++++++++++++
 tests/fdtaddon_basics3-merged2.dtb.expect     | 29 +++++++++++++++
 tests/fdtaddon_basics3.dtba.expect            | 12 +++++++
 tests/fdtaddon_basics3.dtsa                   | 17 +++++++++
 tests/run_tests.sh                            |  2 +-
 7 files changed, 160 insertions(+), 1 deletion(-)
 create mode 100644 tests/fdtaddon_basics3-merged1.dtb.dts.expect
 create mode 100644 tests/fdtaddon_basics3-merged1.dtb.expect
 create mode 100644 tests/fdtaddon_basics3-merged2.dtb.dts.expect
 create mode 100644 tests/fdtaddon_basics3-merged2.dtb.expect
 create mode 100644 tests/fdtaddon_basics3.dtba.expect
 create mode 100644 tests/fdtaddon_basics3.dtsa

diff --git a/tests/fdtaddon_basics3-merged1.dtb.dts.expect b/tests/fdtaddon_basics3-merged1.dtb.dts.expect
new file mode 100644
index 0000000..c1bf3cc
--- /dev/null
+++ b/tests/fdtaddon_basics3-merged1.dtb.dts.expect
@@ -0,0 +1,36 @@
+/dts-v1/;
+
+/ {
+
+	base-node {
+
+		sub-node {
+			prop = <0x00>;
+			phandle = <0x02>;
+		};
+	};
+
+	somewhere {
+
+		node-a1 {
+			compatible = "abc,aaa";
+			phandle = <0x01>;
+
+			/export/ node_a: &{/somewhere/node-a1};
+			/export/ other: &{/base-node/sub-node};
+
+			addon-node {
+				ref-other = <&{/base-node/sub-node} 0x0a>;
+				prop = <0x00>;
+			};
+		};
+
+		node-a2 {
+			compatible = "abc,aaa";
+			phandle = <0x03>;
+
+			/export/ node_a: &{/somewhere/node-a2};
+			/export/ other: &{/base-node/sub-node};
+		};
+	};
+};
diff --git a/tests/fdtaddon_basics3-merged1.dtb.expect b/tests/fdtaddon_basics3-merged1.dtb.expect
new file mode 100644
index 0000000..cb2ab03
--- /dev/null
+++ b/tests/fdtaddon_basics3-merged1.dtb.expect
@@ -0,0 +1,29 @@
+/dts-v1/;
+
+/ {
+    base-node {
+        sub-node {
+            prop = <0x00000000>;
+            phandle = <0x00000002>;
+        };
+    };
+    somewhere {
+        node-a1 {
+            compatible = "abc,aaa";
+            phandle = <0x00000001>;
+            // [FDT_EXPORT_SYM] 'node_a' -> phandle 0x00000001
+            // [FDT_EXPORT_SYM] 'other' -> phandle 0x00000002
+            addon-node {
+                ref-other = <0x00000002 0x0000000a>;
+                // [FDT_REF_LOCAL] ref-other[0]
+                prop = <0x00000000>;
+            };
+        };
+        node-a2 {
+            compatible = "abc,aaa";
+            phandle = <0x00000003>;
+            // [FDT_EXPORT_SYM] 'node_a' -> phandle 0x00000003
+            // [FDT_EXPORT_SYM] 'other' -> phandle 0x00000002
+        };
+    };
+};
diff --git a/tests/fdtaddon_basics3-merged2.dtb.dts.expect b/tests/fdtaddon_basics3-merged2.dtb.dts.expect
new file mode 100644
index 0000000..8dc9fd2
--- /dev/null
+++ b/tests/fdtaddon_basics3-merged2.dtb.dts.expect
@@ -0,0 +1,36 @@
+/dts-v1/;
+
+/ {
+
+	base-node {
+
+		sub-node {
+			prop = <0x00>;
+			phandle = <0x02>;
+		};
+	};
+
+	somewhere {
+
+		node-a1 {
+			compatible = "abc,aaa";
+			phandle = <0x01>;
+
+			/export/ node_a: &{/somewhere/node-a1};
+			/export/ other: &{/base-node/sub-node};
+		};
+
+		node-a2 {
+			compatible = "abc,aaa";
+			phandle = <0x03>;
+
+			/export/ node_a: &{/somewhere/node-a2};
+			/export/ other: &{/base-node/sub-node};
+
+			addon-node {
+				ref-other = <&{/base-node/sub-node} 0x0a>;
+				prop = <0x00>;
+			};
+		};
+	};
+};
diff --git a/tests/fdtaddon_basics3-merged2.dtb.expect b/tests/fdtaddon_basics3-merged2.dtb.expect
new file mode 100644
index 0000000..0bc106e
--- /dev/null
+++ b/tests/fdtaddon_basics3-merged2.dtb.expect
@@ -0,0 +1,29 @@
+/dts-v1/;
+
+/ {
+    base-node {
+        sub-node {
+            prop = <0x00000000>;
+            phandle = <0x00000002>;
+        };
+    };
+    somewhere {
+        node-a1 {
+            compatible = "abc,aaa";
+            phandle = <0x00000001>;
+            // [FDT_EXPORT_SYM] 'node_a' -> phandle 0x00000001
+            // [FDT_EXPORT_SYM] 'other' -> phandle 0x00000002
+        };
+        node-a2 {
+            compatible = "abc,aaa";
+            phandle = <0x00000003>;
+            // [FDT_EXPORT_SYM] 'node_a' -> phandle 0x00000003
+            // [FDT_EXPORT_SYM] 'other' -> phandle 0x00000002
+            addon-node {
+                ref-other = <0x00000002 0x0000000a>;
+                // [FDT_REF_LOCAL] ref-other[0]
+                prop = <0x00000000>;
+            };
+        };
+    };
+};
diff --git a/tests/fdtaddon_basics3.dtba.expect b/tests/fdtaddon_basics3.dtba.expect
new file mode 100644
index 0000000..14dad9c
--- /dev/null
+++ b/tests/fdtaddon_basics3.dtba.expect
@@ -0,0 +1,12 @@
+/dts-v1/;
+/addon/;
+
+// [FDT_IMPORT_SYM] 'node_a' (abc,aaa)
+// [FDT_IMPORT_SYM] 'other' ()
+&node_a {
+    addon-node {
+        prop = <0x00000000>;
+        ref-other = <0xffffffff 0x0000000a>;
+        // [FDT_REF_PHANDLE] ref-other[0], ref = other
+    };
+};
diff --git a/tests/fdtaddon_basics3.dtsa b/tests/fdtaddon_basics3.dtsa
new file mode 100644
index 0000000..8658b45
--- /dev/null
+++ b/tests/fdtaddon_basics3.dtsa
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Copyright (C) 2026 Bootlin
+ */
+
+/dts-v1/;
+/addon/;
+
+/import/ node_a: "abc,aaa";
+/import/ other: "";
+
+&node_a {
+	addon-node {
+		prop = <0>;
+		ref-other = <&other 10>;
+	};
+};
diff --git a/tests/run_tests.sh b/tests/run_tests.sh
index d62496c..65b1abe 100755
--- a/tests/run_tests.sh
+++ b/tests/run_tests.sh
@@ -1189,7 +1189,7 @@ fdtaddon_tests() {
 	run_dtc_test -I dts -O dtb -o fdtaddon_base.dtb "$SRCDIR/fdtaddon_base.dts"
 	check_dtb fdtaddon_base.dtb
 
-	for dt in fdtaddon_basics1 fdtaddon_basics2; do
+	for dt in fdtaddon_basics1 fdtaddon_basics2 fdtaddon_basics3; do
 		run_dtc_test -I dts -O dtb -o $dt.dtba "$SRCDIR/$dt.dtsa"
 		check_dtb $dt.dtba
 
-- 
2.52.0


