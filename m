Return-Path: <devicetree+bounces-254001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D39D133BC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:42:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D0B05301B116
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B00B2E0916;
	Mon, 12 Jan 2026 14:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="kJ9xtDLP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F14235F8AA;
	Mon, 12 Jan 2026 14:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227683; cv=none; b=A2mSGJUsj24oBK1vAENiP+QGvGHrtzQXkZ2WFGm5vLPxZtO/yB8BKa/NhXctAhs4fi+5QQQjOEcPOm8oAR1qjd4XEoCYlUBsTKKto5Mo1wKHtQ4ei9xKJBfGrYmujdtAyhojUIbdhJKbGBkYz3f2b6+l01WJxiNeMznecxWTjy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227683; c=relaxed/simple;
	bh=1onGMMpRznak7CbqW4TktzDUZMDIi2ZM/gqDacla/2U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LrdVGh4wQEKOXfeMqn8Nqy2hlmr6UFf7QbSZ8aQAW3fQ1bMruO8NAeLmkJRaeUNGQt1xZEzZlTlwTOfKIX0bsLnAzqqQ794RFMN7IQWv7JDHtYe3ORDbkZR+LEv2cZyE74DcfhveEvxRHQ2azEiJklzQKBPTvGKSdo1sQIHFcrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=kJ9xtDLP; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id F2556C20868;
	Mon, 12 Jan 2026 14:20:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 735F5606FA;
	Mon, 12 Jan 2026 14:21:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AC4A2103C9264;
	Mon, 12 Jan 2026 15:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768227676; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=ElGWPoey4Ujkb+I3lI6CjrKZLt6O/F285tA0mrtu7lo=;
	b=kJ9xtDLPgxWtAPzTp/FeyjTAkX/F8M7BkbuwBZaXXQZd/z3j0ZljU7GrEmtMC2w4VXqu8I
	Ra/6IyJkElX47fiWeZLOnE940AoqOxH2oZD3w/15an/QZYHykT8d9heV3SGgAlnpTc1mDF
	jigjB31zZC/bwSdcFdT3FaQFaYAfCvw3dHgyVEvpU0i+jqaoWII2i81YSBXfdL/f+PvbWK
	Wq38Shd4gZVpsWvIBjkQo+EUUqvGJGX0sAIsYppABZO+JCqT9uEJg6P3Pl22TNr7olwfnJ
	FT65X7Px5LMV4vnBPsvpJQOt3OdrjBQO2WZ5964k9iU7OVv6Z1A4dAI6bmWR9g==
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
Subject: [RFC PATCH 36/77] tests: metadata: Add import symbols tests
Date: Mon, 12 Jan 2026 15:19:26 +0100
Message-ID: <20260112142009.1006236-37-herve.codina@bootlin.com>
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

Add tests related to import symbols (FDT_IMPORT_SYM dtb tag).

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 tests/metadata_importsyms.dtb.dts.expect |  9 +++++++++
 tests/metadata_importsyms.dtb.expect     |  8 ++++++++
 tests/metadata_importsyms.dts            | 14 ++++++++++++++
 tests/metadata_importsyms.dts.dts.expect |  9 +++++++++
 tests/run_tests.sh                       | 10 +++++-----
 5 files changed, 45 insertions(+), 5 deletions(-)
 create mode 100644 tests/metadata_importsyms.dtb.dts.expect
 create mode 100644 tests/metadata_importsyms.dtb.expect
 create mode 100644 tests/metadata_importsyms.dts
 create mode 100644 tests/metadata_importsyms.dts.dts.expect

diff --git a/tests/metadata_importsyms.dtb.dts.expect b/tests/metadata_importsyms.dtb.dts.expect
new file mode 100644
index 0000000..eabf8c7
--- /dev/null
+++ b/tests/metadata_importsyms.dtb.dts.expect
@@ -0,0 +1,9 @@
+/dts-v1/;
+/addon/;
+
+/import/ base_a: "foo,bar";
+/import/ base_b: "foo,baz";
+
+/ {
+	prop = <0x01>;
+};
diff --git a/tests/metadata_importsyms.dtb.expect b/tests/metadata_importsyms.dtb.expect
new file mode 100644
index 0000000..2177026
--- /dev/null
+++ b/tests/metadata_importsyms.dtb.expect
@@ -0,0 +1,8 @@
+/dts-v1/;
+/addon/;
+
+/ {
+    prop = <0x00000001>;
+};
+// [FDT_IMPORT_SYM] 'base_a' (foo,bar)
+// [FDT_IMPORT_SYM] 'base_b' (foo,baz)
diff --git a/tests/metadata_importsyms.dts b/tests/metadata_importsyms.dts
new file mode 100644
index 0000000..671586d
--- /dev/null
+++ b/tests/metadata_importsyms.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Copyright (C) 2026 Bootlin
+ */
+
+/dts-v1/;
+/addon/;
+
+/import/ base_a: "foo,bar";
+/import/ base_b: "foo,baz";
+
+/ {
+	prop = <1>;
+};
diff --git a/tests/metadata_importsyms.dts.dts.expect b/tests/metadata_importsyms.dts.dts.expect
new file mode 100644
index 0000000..eabf8c7
--- /dev/null
+++ b/tests/metadata_importsyms.dts.dts.expect
@@ -0,0 +1,9 @@
+/dts-v1/;
+/addon/;
+
+/import/ base_a: "foo,bar";
+/import/ base_b: "foo,baz";
+
+/ {
+	prop = <0x01>;
+};
diff --git a/tests/run_tests.sh b/tests/run_tests.sh
index 1973525..5368db9 100755
--- a/tests/run_tests.sh
+++ b/tests/run_tests.sh
@@ -1127,20 +1127,20 @@ wrap_fdtdump () {
 metadata_tests() {
 	for dt in metadata_reflocal metadata_refphandle \
 		  metadata_addon_base metadata_exportsyms_local \
-		  metadata_exportsyms_ref; do
+		  metadata_exportsyms_ref metadata_importsyms; do
 		run_dtc_test -I dts -O dts -o $dt.dts.dts "$SRCDIR/$dt.dts"
 		base_run_test check_diff $dt.dts.dts "$SRCDIR/$dt.dts.dts.expect"
 		run_dtc_test -I dts -O dtb -o $dt.dtb "$SRCDIR/$dt.dts"
 		base_run_test wrap_fdtdump $dt.dtb $dt.dtb.out
-		# Remove unneeded comments
-		sed -i '/^\/\/ /d' $dt.dtb.out
+		# Remove unneeded comments, keep comments in the form '// [xxxx'
+		sed -i '/^\/\/ [^\[]/d' $dt.dtb.out
 		base_run_test check_diff $dt.dtb.out "$SRCDIR/$dt.dtb.expect"
 		run_dtc_test -I dtb -O dts -o $dt.dtb.dts $dt.dtb
 		base_run_test check_diff $dt.dtb.dts "$SRCDIR/$dt.dtb.dts.expect"
 		run_dtc_test -I dts -O dtb -o $dt.dtb.dts.dtb $dt.dtb.dts
 		base_run_test wrap_fdtdump $dt.dtb.dts.dtb $dt.dtb.dts.dtb.out
-		# Remove unneeded comments
-		sed -i '/^\/\/ /d' $dt.dtb.dts.dtb.out
+		# Remove unneeded comments, keep comments in the form '// [xxxx'
+		sed -i '/^\/\/ [^\[]/d' $dt.dtb.dts.dtb.out
 		base_run_test check_diff $dt.dtb.dts.dtb.out "$SRCDIR/$dt.dtb.expect"
 	done
 
-- 
2.52.0


