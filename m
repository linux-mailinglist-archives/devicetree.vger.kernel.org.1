Return-Path: <devicetree+bounces-178169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AECABADB7
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 05:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E0BE3B9C4B
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 03:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C611BD01D;
	Sun, 18 May 2025 03:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="ycXQfllt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51416137932
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 03:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747540566; cv=none; b=jhGYDNxgfizxujkHq3IIuZSg3CBIB3ovUWrM7Trw0x3gLskpjZfE/TL/e0VGpkoEnYgph7QDOCWpi5cRCzdntNkyBLrK4olxuxnjKP+r4WzqpdfR34j0UnZT4ZMzhNVB+fLnGsYclPVFlvDn6FXlFaoeCRyUIRgufd1LmhfALDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747540566; c=relaxed/simple;
	bh=X2R0lRUo/S7bGxarvGbPnwAztmFTvYyHEDZhH43YC3s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pOe6iU6nWumPl+LBzGWcXsTWm9dH1UNYRNVTR5XHAKhzZi8LGo3ZZ1vlxXYyit06WW6MvZotGaPfdb2gdqwW4NPYnHMAmOj9APFiHBgWTYGzImgMrQpQnTsns5lUBCUFUM4iWE6Mxd8+g4nuH70YU+vIG1w18LXx71K049cecso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=ycXQfllt; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a361b8a664so1840408f8f.3
        for <devicetree@vger.kernel.org>; Sat, 17 May 2025 20:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1747540562; x=1748145362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ag1YP0aXAY2InPlmdvx0/NdA/nmWNYGDzlXrc3yzqww=;
        b=ycXQflltcldEpdp0Ji+dA+6y6aYVDaNXbM4E6vf6cRi/M6SRrmRBr8N5GV+hVdAH8v
         uh2KXwyctlCTpdi5iOdHKDVZDUOV745o2riqdoh7fMzda0LEAhs0GiB9IrKoxi9TAh+6
         MVKN+xKisYFxhmc4hHsDVe949pg8UN1ZakUDowLY6OpZlX2dtN8kiFufA44uL0mvkx1E
         Dty03c554mR0aYYJmYlMcGRoN4+Y4Cp6a2T3gGCZfV8Q3zr2R30La1AW3QAAbnI8Cw6v
         e94moIMvweqmlovAOE+vLjuU9NBmQg5RF0AJyJ4/SIxk73J7erks6ns5jw1sLmNS4o6r
         Bmpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747540562; x=1748145362;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ag1YP0aXAY2InPlmdvx0/NdA/nmWNYGDzlXrc3yzqww=;
        b=ple9WfAccs/gQFahntJySnawSPDR4FUn9fwX3qENx8PMKFsiou+ycTlKe7XTtZ0OYu
         nMgElxsYezRLl1MpTJvkL6202ITk6XnbGIVBUMlAtxo56hh9tVGZCx7L6yO/6WjY/mlp
         tdJvgbxz6LZ7WcwYuhu9P4noZndsUENzr7xJcfyVDJEukdfTCWaLuxhQG+HrosiRsfd1
         LhqrZNpvwMle9l1cQVTaefYrJ1d8NggJOeIJzH7ueDfUhYyHy+B+efRQO/V1BxYhO9lH
         fcXgljC8oZbY52316YIUSJnR4O7oZpm4HcPdf/A20PKFz5L/TNPS/JNERTSzSqqX8NbU
         4jQw==
X-Forwarded-Encrypted: i=1; AJvYcCVl5QtjV33kwjePDyJ7/nijagFLiNamDXW60n3fQ6GtzRheydKOga+EXfrVxv3xvXwEomBen7kJnZUH@vger.kernel.org
X-Gm-Message-State: AOJu0YxE/0o0W5fOsbusqnEh4Klygb8jMlHIRkum84rIhFgL2lhb8jsV
	ew9zmlSfQsB0DxpBxindllkIWc4W9yEFYwd95DSegiKLci7LcvywZ8AW+WnkHn7/Ons=
X-Gm-Gg: ASbGncsrxIuk/+v0anVOwcg+9XcA+pDcBhsO2UgH67uKbjmoO2uNy0b0kTY80m+Oa7J
	cKl7lbZcy60vIKbKK9a1yfqHX0PTiGz0ax5GZnjHgSaqvMNfhEYw5+9HUWp/oxHG9W1qR3+3rl0
	P/iSkGeBCxQp35kGnE3tYNLwS0Of0mP0mzvqNXJVuGerEdfS71oMEaP63c0MeLPrcahOHR8leKA
	4w0Sl3mWNLyi3xaCctRR7EpUW+X3qwDRsqQga6nIVqx3gs6YlTvDK+M4jB3Qvl6yA1e7KUoyf2C
	jxN4IeHCC5fqKu6fd8mKCQiqFXCdp2Hh5LsejXGI4p/bK0sp9ikvKOM=
X-Google-Smtp-Source: AGHT+IG93wDD2jjXIrPe3sZUfvLXdAyBTc/CB1QOVVGZp0c5rnsjMhnrqRbw/as6MuAHMcVhp6gCcA==
X-Received: by 2002:a05:6000:2012:b0:3a0:b84d:805c with SMTP id ffacd0b85a97d-3a35c84ac4cmr7035704f8f.49.1747540562426;
        Sat, 17 May 2025 20:56:02 -0700 (PDT)
Received: from gen8.tailc1103.ts.net ([193.57.185.11])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a362b4e2e1sm6730947f8f.96.2025.05.17.20.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 20:56:01 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
To: Oliver O'Halloran <oohall@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	nvdimm@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Drew Fustini <drew@pdp7.com>
Subject: [PATCH] dt-bindings: pmem: Convert binding to YAML
Date: Sat, 17 May 2025 20:55:38 -0700
Message-ID: <20250518035539.7961-1-drew@pdp7.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the PMEM device tree binding from text to YAML. This will allow
device trees with pmem-region nodes to pass dtbs_check.

Signed-off-by: Drew Fustini <drew@pdp7.com>
---
 .../devicetree/bindings/pmem/pmem-region.yaml | 49 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 2 files changed, 50 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/pmem/pmem-region.yaml

diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.yaml b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
new file mode 100644
index 000000000000..a4aa4ce3318b
--- /dev/null
+++ b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pmem-region.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+maintainers:
+  - Bjorn Helgaas <bhelgaas@google.com>
+  - Oliver O'Halloran <oohall@gmail.com>
+
+title: Persistent Memory Regions
+
+description: |
+  Persistent memory refers to a class of memory devices that are:
+
+    a) Usable as main system memory (i.e. cacheable), and
+    b) Retain their contents across power failure.
+
+  Given b) it is best to think of persistent memory as a kind of memory mapped
+  storage device. To ensure data integrity the operating system needs to manage
+  persistent regions separately to the normal memory pool. To aid with that this
+  binding provides a standardised interface for discovering where persistent
+  memory regions exist inside the physical address space.
+
+properties:
+  compatible:
+    const: pmem-region
+
+  reg:
+    maxItems: 1
+
+  volatile:
+    description: |
+      Indicates the region is volatile (non-persistent) and the OS can skip
+      cache flushes for writes
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pmem@5000 {
+        compatible = "pmem-region";
+        reg = <0x00005000 0x00001000>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 96b827049501..68012219f3f7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13564,7 +13564,7 @@ M:	Oliver O'Halloran <oohall@gmail.com>
 L:	nvdimm@lists.linux.dev
 S:	Supported
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
-F:	Documentation/devicetree/bindings/pmem/pmem-region.txt
+F:	Documentation/devicetree/bindings/pmem/pmem-region.yaml
 F:	drivers/nvdimm/of_pmem.c
 
 LIBNVDIMM: NON-VOLATILE MEMORY DEVICE SUBSYSTEM
-- 
2.43.0


