Return-Path: <devicetree+bounces-245726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 728A6CB4ADD
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 05:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2583D3010A9A
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 04:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1227C1EDA0F;
	Thu, 11 Dec 2025 04:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVzbUtag"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A5312DDA1;
	Thu, 11 Dec 2025 04:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765427648; cv=none; b=TL8BTnWi0lUkoGrpMusyeWs78OaA0bCbS2HMzNU2/YwWy7e6rQvcjIvla+zFOn+McrQNJD9CG+9XgRHH0uTyh6IGdiwNSnd/tmBSvK3FqrjR0oIghytPaOo7D8+gZZXEnyEMRahI9BSaF2ncAiQaoMz3+1B16l2c4iFaTFOW0zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765427648; c=relaxed/simple;
	bh=2TVqN9uHdkXZmmohBv80YYJ9ooc6UFDdnqdX5IxVDqg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AwBg18a0/Sx7o7OcB9i8toTVlYIHQmyYLap7EgwD1Ej0kgK8GblcQxsciIhBENyX2DhRSinXVq74CwdY05FUwYFIH0YoTpITdj4cYnUckKXQUMkqZiVNIv2MwkWyaQq+f0XH6sfYTPKbNfs4gUhOvhqkGMi7ZhZzGBFPXxWbMmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVzbUtag; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7676C4CEFB;
	Thu, 11 Dec 2025 04:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765427647;
	bh=2TVqN9uHdkXZmmohBv80YYJ9ooc6UFDdnqdX5IxVDqg=;
	h=From:To:Cc:Subject:Date:From;
	b=fVzbUtagK+5QP5JKI0hGW5hjZ4U77b/v3PnT/Q/+7rEkGCtYXVVVZrFYeH+nMlzqo
	 7taJvlDEp+X6yPDrESpG2n2WaX2CHshikjXevLmWv+q6M4OBCIdQ/ryIn9Q2/rzl2F
	 PYAE7bIYBZKozZZwO7n9n4RXOuC6pskFUEBoQMZ9IpEvawjcBjW5lXdK0MCZpT/EFd
	 eKU6TeGD1Vdl0rcET0Wp0S6ry1Z0FkU4EKFhqzRCRa6BtCn9cYRdOq97n4UJJcpWpd
	 i3tJxKGudSNFhx7Z1jst8S8DVIT5xNRjsAq45X+r1ooyqxd6RXXka38TxKDbUP+0ki
	 yP295s/BrJNPw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: altera: combine Intel's SoCFPGA into altera.yaml
Date: Wed, 10 Dec 2025 22:33:53 -0600
Message-ID: <20251211043353.93944-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For all SoCFPGA platforms, whether it has the "intel" or "altr" vendor
prefix are referring to the same business unit that is responsible for
the platform. And now that Altera has spun off to be a separate corporate
entity from Intel, it would make sense to have the device bindings
documentation in the same file.

Move the Intel AgileX board binding documentations into the same file that
contains the Altera ones.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../devicetree/bindings/arm/altera.yaml       | 26 ++++++++++++
 .../bindings/arm/intel,socfpga.yaml           | 40 -------------------
 2 files changed, 26 insertions(+), 40 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/intel,socfpga.yaml

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index db61537b7115..26ab75bc6ed3 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -9,6 +9,9 @@ title: Altera's SoCFPGA platform
 maintainers:
   - Dinh Nguyen <dinguyen@kernel.org>
 
+description:
+  Altera/Intel boards with ARM 32/64 bits cores
+
 properties:
   $nodename:
     const: "/"
@@ -81,6 +84,29 @@ properties:
               - altr,socfpga-stratix10-swvp
           - const: altr,socfpga-stratix10
 
+      - description: AgileX boards
+        items:
+          - enum:
+              - intel,n5x-socdk
+              - intel,socfpga-agilex-n6000
+              - intel,socfpga-agilex-socdk
+          - const: intel,socfpga-agilex
+
+      - description: Agilex3 boards
+        items:
+          - enum:
+              - intel,socfpga-agilex3-socdk
+          - const: intel,socfpga-agilex3
+          - const: intel,socfpga-agilex5
+
+      - description: Agilex5 boards
+        items:
+          - enum:
+              - intel,socfpga-agilex5-socdk
+              - intel,socfpga-agilex5-socdk-013b
+              - intel,socfpga-agilex5-socdk-nand
+          - const: intel,socfpga-agilex5
+
       - description: SoCFPGA VT
         items:
           - const: altr,socfpga-vt
diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
deleted file mode 100644
index c918837bd41c..000000000000
--- a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
+++ /dev/null
@@ -1,40 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/arm/intel,socfpga.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Intel SoCFPGA platform
-
-maintainers:
-  - Dinh Nguyen <dinguyen@kernel.org>
-
-properties:
-  $nodename:
-    const: "/"
-  compatible:
-    oneOf:
-      - description: AgileX boards
-        items:
-          - enum:
-              - intel,n5x-socdk
-              - intel,socfpga-agilex-n6000
-              - intel,socfpga-agilex-socdk
-          - const: intel,socfpga-agilex
-      - description: Agilex3 boards
-        items:
-          - enum:
-              - intel,socfpga-agilex3-socdk
-          - const: intel,socfpga-agilex3
-          - const: intel,socfpga-agilex5
-      - description: Agilex5 boards
-        items:
-          - enum:
-              - intel,socfpga-agilex5-socdk
-              - intel,socfpga-agilex5-socdk-013b
-              - intel,socfpga-agilex5-socdk-nand
-          - const: intel,socfpga-agilex5
-
-additionalProperties: true
-
-...
-- 
2.42.0.411.g813d9a9188


