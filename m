Return-Path: <devicetree+bounces-189927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B034CAE9DB6
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B7043AC215
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 12:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E23201017;
	Thu, 26 Jun 2025 12:41:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16C672635
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 12:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750941713; cv=none; b=BeODf2JfNBRsRT8pY18Wwwmj7cvXGq5a+v9Gw6wk81DdUMCRUU1064aTi867VXQxi+laLZiuhQrFCZGBGHSx21LmW/sJpWmtXQSoh5mtR9EHfEFqxjTyP2UunT0EesOB6213ghcWGyucr8GCDt0gQtXdea+LsDl4rH29ygae9Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750941713; c=relaxed/simple;
	bh=q0kziESmSfFyGYf00QdPwzpURfiPpfOrhN4Iwrmg6Y0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sA3NmBxlIth5XbDj7qAZRGY5d47BYOJMGtZdv4SzsOpWrXT9X16sBc7Zyqbsv2FTwXitCDRXLXs64PFQL+m84Kap7hE0jD+mjQPaU63sJbmWJij+tmDBzYsQ3q8Cs/W2U3YBD1b5DZDOxszAvsvjb7C2rWUhfBmjwV6esLFpq50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C5DDC4CEEB;
	Thu, 26 Jun 2025 12:41:52 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-schema v2] test: Fix whitespace in example in good-example.yaml
Date: Thu, 26 Jun 2025 14:41:47 +0200
Message-ID: <20250626124147.3044594-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

  - Add blank line between DTS version directive and first node,
  - Add missing space between root path and opening curly brace,
  - Fix misaligned "cpus" subnode,
  - Add blank line between properties and subnodes,
  - Drop unneeded blank line after last subnode,
  - Convert to customary 4-space indentation.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Add blank line between DTS version directive and first node.
---
 test/schemas/good-example.yaml | 63 +++++++++++++++++-----------------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/test/schemas/good-example.yaml b/test/schemas/good-example.yaml
index 2005b8f8c3045e1e..5b8e632ee1b81d58 100644
--- a/test/schemas/good-example.yaml
+++ b/test/schemas/good-example.yaml
@@ -190,34 +190,35 @@ additionalProperties: false
 
 examples:
   - |
-      /dts-v1/;
-      /{
-              model = "ARM Juno development board (r0)";
-              compatible = "arm,juno", "arm,vexpress";
-              interrupt-parent = <&gic>;
-              #address-cells = <2>;
-              #size-cells = <2>;
-
-                      cpus {
-                      #address-cells = <2>;
-                      #size-cells = <0>;
-                      A57_0: cpu@0 {
-                              compatible = "arm,cortex-a57","arm,armv8";
-                              reg = <0x0 0x0>;
-                              device_type = "cpu";
-                              enable-method = "psci";
-                      };
-
-                      .....
-
-                      A53_0: cpu@100 {
-                              compatible = "arm,cortex-a53","arm,armv8";
-                              reg = <0x0 0x100>;
-                              device_type = "cpu";
-                              enable-method = "psci";
-                      };
-
-                      .....
-              };
-
-      };
+    /dts-v1/;
+
+    / {
+        model = "ARM Juno development board (r0)";
+        compatible = "arm,juno", "arm,vexpress";
+        interrupt-parent = <&gic>;
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        cpus {
+            #address-cells = <2>;
+            #size-cells = <0>;
+
+            A57_0: cpu@0 {
+                compatible = "arm,cortex-a57","arm,armv8";
+                reg = <0x0 0x0>;
+                device_type = "cpu";
+                enable-method = "psci";
+            };
+
+            .....
+
+            A53_0: cpu@100 {
+                compatible = "arm,cortex-a53","arm,armv8";
+                reg = <0x0 0x100>;
+                device_type = "cpu";
+                enable-method = "psci";
+            };
+
+            .....
+        };
+    };
-- 
2.43.0


