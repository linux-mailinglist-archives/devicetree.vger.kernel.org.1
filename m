Return-Path: <devicetree+bounces-89947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4966F94347A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 18:54:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E86031F26530
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 16:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3644234CDE;
	Wed, 31 Jul 2024 16:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A2x8gk7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769CC1AD3FD
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 16:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722444770; cv=none; b=eoE6SksyWW8ACHXxnd5lmFWVTPHtcwJ5QQKt7/Fydj4coZXDojUEhHNiV0VlGWyn8gIMnT025NrQ8lWOl4Y8WZjAaj/0wNs0m7B0mtPblQePH3w8jOK0CcuMZzCUhB9nFB635iOkVER6DNn3y5WG/6lXdyU1H7j5QIhabFCfDo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722444770; c=relaxed/simple;
	bh=Jv6WhWwIMJ6sRH5tdz6AEwyaU8UwaT7BIRpW4ldfvV8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F8zXze/1Uw7BpJ25L35Sur8YuzP8GR1kfs9/xmjvy617DL2oQJEhly3lohhwpGbO0iK/UfHduzo7fE6Bufc7uMYZzhpv7y7gjtLJ2MEWFpn/csunoyFv3NfztX37NMfGmQK5JSwf+JsPFq/S9IOQQIgxigChwOQ6BK8ZxVAqmQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A2x8gk7m; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-368313809a4so701889f8f.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 09:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722444767; x=1723049567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9hlRFbj5B3uXSIIM8v9g/mDd34ssZ6gVSb2SBVsDOwg=;
        b=A2x8gk7mnh4sfKpF8grzugLD7Uz+tvC/Xta7ZHxYq+utAsWy9ioaTUYwc1KeXRZHzU
         /kN3YoW9cSCvj9UzWUxbM5t6ZbHJLEFf0vgCUcM2Nn3nMUv4hgTD7zpVU1JGbWlJqUR2
         blR4K3jz20M8Ix+dNwLe0SPBNf/oOxZUs9f1eWfKBzFYTzZ3l0dYkVC644J2QGjO3V0o
         ZozaPvC7DT/wXmHwQEeXOSaQKfqcUZRyQL2JrKd+LmgVxa5mW+1Fk/lnwhM4VNbjoev4
         QVBr8oNGa2owjEmPmpwi9TuNvWt4eagUk7vef/nhqMyPVK15CdRDAounVAnMayqxE0TV
         uuFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722444767; x=1723049567;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9hlRFbj5B3uXSIIM8v9g/mDd34ssZ6gVSb2SBVsDOwg=;
        b=H+iE4MM2aYtERcjo6uwTdziCRchKhoxjso2UYQHyqArdtQO0Ub6bkgQsLu/2sgB28f
         cTt0KgTbISKoHyRb5zf8Q1xm7ss5//6lpEQHxbYdUdmqk7GfZbyhHQfUx+xnoJL5aIXb
         Np3vnDiqtJXQJQKwSPsKzzLxrMeSwY3Inz2qWv8zM1OC6SjDydqs2I31ho+iYceguTtl
         RkTylfXLv8B0Oq9wJuxc/zrGT02/fp/u07BwQ51s/70JbpXmnjh2LaQu8iECDrUa/J/T
         +W+pQRW9NJlhO3IOafL7BLYP4KO5xVYwNGkyqRf8NFly3mZDj+DxXJVtnTxQt7NWNvKK
         v/Xw==
X-Forwarded-Encrypted: i=1; AJvYcCVvHyaF/HXhjBnpjVQQ+b83SjoUciPrE7ey4zDE0tNhFAvq1zMWHwkMJI0ZU0jjxk9XpOIzH0+880AZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyoszvpus2PLSAb9sggWmhQNIB04PyI1zS9UAszrni+D4HZ1ODj
	dfTqtVZYkdM0ySd4Xiod/mcmw3hSEm3duBAsV1bdzfIscF4qjBA8W+4kb1in
X-Google-Smtp-Source: AGHT+IECPWYK/AV/4tnGDKMboasrM4lsmfy34PigKYz5n1M8JPNMkiHTIc8vLooAIh1W3eCpi2kEtA==
X-Received: by 2002:a5d:6e04:0:b0:366:e308:f9a1 with SMTP id ffacd0b85a97d-36b8c8e9b57mr4182045f8f.23.1722444766463;
        Wed, 31 Jul 2024 09:52:46 -0700 (PDT)
Received: from alessandro-pc.station (net-37-119-36-202.cust.vodafonedsl.it. [37.119.36.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b36863b45sm17763270f8f.107.2024.07.31.09.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 09:52:45 -0700 (PDT)
From: Alessandro Zanni <alessandro.zanni87@gmail.com>
To: skhan@linuxfoundation.org,
	dinguyen@kernel.org,
	devicetree@vger.kernel.org
Cc: Alessandro Zanni <alessandro.zanni87@gmail.com>
Subject: [PATCH] [DT Bindings - Arm] Altera SOCFPGA SDRAM
Date: Wed, 31 Jul 2024 18:52:18 +0200
Message-ID: <20240731165241.22635-1-alessandro.zanni87@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Added yaml file that substitues the old txt file.

Signed-off-by: Alessandro Zanni <alessandro.zanni87@gmail.com>
---
 .../arm/altera/socfpga-sdram-edac.txt         | 15 -------
 .../arm/altera/socfpga-sdram-edac.yaml        | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
 create mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml

diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
deleted file mode 100644
index f5ad0ff69fae..000000000000
--- a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
-The EDAC accesses a range of registers in the SDRAM controller.
-
-Required properties:
-- compatible : should contain "altr,sdram-edac" or "altr,sdram-edac-a10"
-- altr,sdr-syscon : phandle of the sdr module
-- interrupts : Should contain the SDRAM ECC IRQ in the
-	appropriate format for the IRQ controller.
-
-Example:
-	sdramedac {
-		compatible = "altr,sdram-edac";
-		altr,sdr-syscon = <&sdr>;
-		interrupts = <0 39 4>;
-	};
diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
new file mode 100644
index 000000000000..4e70daebf1c5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/altera/socfpga-sdram-edac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
+
+maintainers:
+  - Dinh Nguyen <dinguyen@kernel.org>
+
+description: >
+  The EDAC accesses a range of registers in the SDRAM controller.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: altr,sdram-edac
+      - items:
+          - const: altr,sdram-edac-a10
+  altr,sdr-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: 
+      Phandle of the sdr module      
+  interrupts:
+    description: >
+      Should contain the SDRAM ECC IRQ in the
+      appropriate format for the IRQ controller.
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    sdramedac {
+      compatible = "altr,sdram-edac";
+      altr,sdr-syscon = <&sdr>;
+      interrupts = <0 39 4>;
+    };
+
+...
-- 
2.43.0


