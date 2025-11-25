Return-Path: <devicetree+bounces-242007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F97DC8536A
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:40:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1D6B7350052
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D73225A29;
	Tue, 25 Nov 2025 13:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUy1tKwH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892183770B;
	Tue, 25 Nov 2025 13:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764078013; cv=none; b=hR8fapFs2N55Jq83BbZCcDcbd9qNKxW5ikA/QMZ7v2Aut/FG32XcIyzcsMblD5Icok71ZZ2u+OjHIESnMbwLCghnqGnR6L+5BjKWSPdkSOBq9cpmhQRrDPfEeZIXRpR3ELyBK/cUqRF5GKum7uKqnE2X4PFmcQMVGXfYHB14wgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764078013; c=relaxed/simple;
	bh=AR4eaAaIOGzsHooR2b7iHtaSIHmZEhcfHBGLE4muFFE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o2oey4AgEMwRGxwZRH/SoP+NBf5vUM8ym0hZNI3ApFcWJ5u0jyukDvUSRd481QaKBDl4sd6ap50jiJ4jibdfprb7I4XA+KZeVbHqj6Owp48pU8bfixh5pLqz3WHAQidLxcll31qQjQt0EKqaFtsRLDGDk6nlXlLgzFX9jLEVfyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUy1tKwH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A58BC19422;
	Tue, 25 Nov 2025 13:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764078013;
	bh=AR4eaAaIOGzsHooR2b7iHtaSIHmZEhcfHBGLE4muFFE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WUy1tKwHde8vCDFC/0h8Qe33us+wNQQHcNWD4kEa5dP3OD1jIspIj5erZH9l251MV
	 B4F0OPq2iS4CdjZQjMsGsgLz69RGXUQeFb0uPP+CYgvkZvz5/iuN99U6g/rIS9sz8W
	 WKcW3VVYkwwlBKj3qTZMFNX6eWAizHvxwwWnDJyzjHw67slf4XV6cH/ovp3dz+eg6Z
	 AhoVXTZj5UI+27tI1gVxmHOE0xZXAsdsI5h8CbtOKfBQ715j3Us2TATY2sc4jWwceZ
	 t5xIxW10HoVl+qh81qSMO9PFtVi/pPcPBbKkK7gYfiRTraU9RnJmzDeG9F0Y8P6Jrc
	 dK5WcTb2NndQQ==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 2/2] dt-bindings: soc: altera: combine Intel's SoCFPGA into altera.yaml
Date: Tue, 25 Nov 2025 07:40:03 -0600
Message-ID: <20251125134004.261165-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251125134004.261165-1-dinguyen@kernel.org>
References: <20251125134004.261165-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For all SoCFPGA platforms, whether it has the "intel" or "altr" vendor
prefix are referring to the same business unit that is responsible for
the platform. Thus, it would make sense to have the device bindings
documentation in the same location. Move the Intel AgileX board binding
documentations into the same file that contains the Altera ones.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../bindings/arm/intel,socfpga.yaml           | 40 -------------------
 .../bindings/soc/altera/altera.yaml           | 28 ++++++++++++-
 2 files changed, 27 insertions(+), 41 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/intel,socfpga.yaml

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
diff --git a/Documentation/devicetree/bindings/soc/altera/altera.yaml b/Documentation/devicetree/bindings/soc/altera/altera.yaml
index 7c6827837b95..a853ba3daf80 100644
--- a/Documentation/devicetree/bindings/soc/altera/altera.yaml
+++ b/Documentation/devicetree/bindings/soc/altera/altera.yaml
@@ -4,7 +4,10 @@
 $id: http://devicetree.org/schemas/soc/altera/altera.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Altera's SoCFPGA platform
+title: Intel/Altera's SoCFPGA platform
+
+description:
+  Intel/Altera boards with ARM 32/64 bit cores
 
 maintainers:
   - Dinh Nguyen <dinguyen@kernel.org>
@@ -86,6 +89,29 @@ properties:
           - const: altr,socfpga-vt
           - const: altr,socfpga
 
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
 additionalProperties: true
 
 ...
-- 
2.42.0.411.g813d9a9188


