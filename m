Return-Path: <devicetree+bounces-241853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F32F9C838F9
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 07:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A4E33B02C4
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 06:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486ED2E888A;
	Tue, 25 Nov 2025 06:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ije/DkKc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BF52D780A
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 06:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764053353; cv=none; b=NTIn2yDLzYo0axzRw2C6u8ZM5wdHNk8giwiE9s3Hh5s0LFdmEvcO31LG6SuPx2KtNkhQBqLDx+7xUbwBXuGA4agRxe6cT7iuJRNioeo0G/EScZS9xUL5UOQ7/29vDANn2yqX6EXjW3LEdN61eMqv9n9Xr23zoVIyTp+bpvGsNqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764053353; c=relaxed/simple;
	bh=rXio99+YvGuyrhKrXNpvTD+TKYC/oil56/4az6zPstM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TTMv97ygdLUxnxgplCddMnxbhK6refWW+5g2VKZ0COpSyJloqf3HIdWX3NMljF8Oxxziyp0qrrJptXNVA5cskY+PEaybycX3LaxfWeSJgC3epMBlDqB3/X+6ACDy9rIu7WBKJY0Z3x7kWOc2gYs/GBbTtdUDm+7PlQU8w/6K2b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ije/DkKc; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7bf0ad0cb87so5043592b3a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 22:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764053351; x=1764658151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=88kFkP2tiIFI/W0cIcRfnFOjGOXOrhask+3UfD3dOMc=;
        b=ije/DkKcuyzpwBNHSEhTrvdsBuI0xCp399riMIz//kYD364cUp/4rLFu2jJt7uMm2J
         4DmZqOcIIT+gpywg2eiRzLnkckDux6bCmVIjkL/7fjByGmj2n64XX0k7GrNGVV6YUlAG
         cHS8aFLLb61xBGMtd+cmh/0sw9VW1EMfCdDf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764053351; x=1764658151;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=88kFkP2tiIFI/W0cIcRfnFOjGOXOrhask+3UfD3dOMc=;
        b=F3xEZK064Te+WADWz8pi0PhZPgISLFkN2NkZPGD0j/xK2kuAhG0LZ3VNOStON/pxDR
         vtRl9VtxYmzTv5tOI9mvP8KYUX4pNeG7uSuKW2/cgP26kEKZbw5SvfF7s5Zu/o/dc7TV
         tGK6Fdx+Yz7mxGLhsQ4R3FiMJ69+gkLSIq/IsB8yo+kApfWgwEA9hOgwiyKHmFKniQ1A
         Xclc+de0sAhTwRT6vU8vINLUpuHtRt+3LM6LKOndez/w3pD7OvDlJOYi9qS7UvT6JBqy
         YXdGz4ButIiO42cp4sGtiK0xr2qyz79ezcY4Xf+c6JxcCROmnMQHHwur/F5jmyr9od6q
         ksxA==
X-Forwarded-Encrypted: i=1; AJvYcCWg7vDNRQhyblWXXo9ECU+iCSm726yEmAiRVSZUSPt9ZuGJ/G36mae069PZfBvGbunGexAKZpFTrxht@vger.kernel.org
X-Gm-Message-State: AOJu0YzqjNitW0QM0Aq3I3duZURVMInoo4DlOFbcPZW23KO4RjmRfVKU
	2ll6hMrnzR8DWYSrvrE5K+Re6sARdN35n7Q4aBbBMy74/C/6ELNhov1wMlWMxjX/i7vRbSoktDF
	qd+Q=
X-Gm-Gg: ASbGnctGnEpHlpAs4C1QKL6Ez1GjMdnZ9f9uM1EhZ1Co1xadhgeeTx+HEqjYugCtc2D
	whAgNISd7gHkjJ0j1XjWRGwFoByCkE929lExlyxHlJ7LomYBrhsVcCmtiSfmftpioVymSnR44E/
	3Ladworyiuo6J7cNOo0PsPKAJQOgG6H4oDYEJiI/EoXaiAZTidRvvTUNftzjl1zCsKZchO8TqO2
	UZ88LMZLMiO8N0T9TPTePIbQ+cbnwyYAkFJYDx3TbgEouIKFwrLV2d7dNAWhKWFtXb+eU2tKPM+
	JDqN1lzwyhdfXupkblJjgQ9AjQoCK4JUVpMow3WjHpEq0xix1L5cgSuOn6YkQdNoIocdrX06m2/
	mf1Ubnrj5DOb6VjhSpFCI0I6rky32k5ADd5nZolGrRVJZ6R9+cI3kxGdFqwYQS+23VcNFQ4kE+H
	2rYdCgQWhZuejcWqIHHiYwm1nOKCaqZo2yGp4Ne+wTrC8aMWecuUNADWMnARM2m9+rKG1I
X-Google-Smtp-Source: AGHT+IElth1ajKpACCGhmlgof/CcbLxkdUN0v+MBgrJOs6SF5vNzmM++ExuwEs9TPuCVCvtXkQXH5Q==
X-Received: by 2002:a05:6a00:228a:b0:7aa:a2a8:980f with SMTP id d2e1a72fcca58-7c58db2cd79mr14042173b3a.20.1764053350629;
        Mon, 24 Nov 2025 22:49:10 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:2b48:6622:575f:f283])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ed471022sm16853335b3a.21.2025.11.24.22.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 22:49:10 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	Julius Werner <jwerner@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: firmware: coreboot: Convert to YAML
Date: Tue, 25 Nov 2025 14:48:49 +0800
Message-ID: <20251125064851.3781993-1-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.460.gd25c4c69ec-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the existing text binding to YAML.

The description has been change to reflect the possibility of coreboot
inserting the node itself.

The example has been modified to compile and pass validation without
any errors. A comment was added to note what the firmware actually
emits.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/firmware/coreboot.txt | 33 ----------
 .../bindings/firmware/coreboot.yaml           | 60 +++++++++++++++++++
 2 files changed, 60 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/firmware/coreboot.txt
 create mode 100644 Documentation/devicetree/bindings/firmware/coreboot.yaml

diff --git a/Documentation/devicetree/bindings/firmware/coreboot.txt b/Documentation/devicetree/bindings/firmware/coreboot.txt
deleted file mode 100644
index 4c955703cea8..000000000000
--- a/Documentation/devicetree/bindings/firmware/coreboot.txt
+++ /dev/null
@@ -1,33 +0,0 @@
-COREBOOT firmware information
-
-The device tree node to communicate the location of coreboot's memory-resident
-bookkeeping structures to the kernel. Since coreboot itself cannot boot a
-device-tree-based kernel (yet), this node needs to be inserted by a
-second-stage bootloader (a coreboot "payload").
-
-Required properties:
- - compatible: Should be "coreboot"
- - reg: Address and length of the following two memory regions, in order:
-	1.) The coreboot table. This is a list of variable-sized descriptors
-	that contain various compile- and run-time generated firmware
-	parameters. It is identified by the magic string "LBIO" in its first
-	four bytes.
-	See coreboot's src/commonlib/include/commonlib/coreboot_tables.h for
-	details.
-	2.) The CBMEM area. This is a downward-growing memory region used by
-	coreboot to dynamically allocate data structures that remain resident.
-	It may or may not include the coreboot table as one of its members. It
-	is identified by a root node descriptor with the magic number
-	0xc0389481 that resides in the topmost 8 bytes of the area.
-	See coreboot's src/include/imd.h for details.
-
-Example:
-	firmware {
-		ranges;
-
-		coreboot {
-			compatible = "coreboot";
-			reg = <0xfdfea000 0x264>,
-			      <0xfdfea000 0x16000>;
-		}
-	};
diff --git a/Documentation/devicetree/bindings/firmware/coreboot.yaml b/Documentation/devicetree/bindings/firmware/coreboot.yaml
new file mode 100644
index 000000000000..568afd1abb92
--- /dev/null
+++ b/Documentation/devicetree/bindings/firmware/coreboot.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/firmware/coreboot.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: COREBOOT firmware information
+
+maintainers:
+  - Julius Werner <jwerner@chromium.org>
+
+description:
+  The device tree node to communicate the location of coreboot's
+  memory-resident bookkeeping structures to the kernel. Coreboot's
+  FIT image payload can insert the node into the device tree. If a
+  second-stage bootloader (a coreboot "payload") is used, then it
+  is responsible for inserting the node.
+
+properties:
+  compatible:
+    const: coreboot
+  reg:
+    description: Address and length of the following two memory regions
+    items:
+      - description:
+          The coreboot table. This is a list of variable-sized descriptors
+          that contain various compile- and run-time generated firmware
+          parameters. It is identified by the magic string "LBIO" in its first
+          four bytes.
+
+          See coreboot's src/commonlib/include/commonlib/coreboot_tables.h for
+          details.
+      - description:
+          The CBMEM area. This is a downward-growing memory region used by
+          coreboot to dynamically allocate data structures that remain resident.
+          It may or may not include the coreboot table as one of its members. It
+          is identified by a root node descriptor with the magic number
+          0xc0389481 that resides in the topmost 8 bytes of the area.
+
+          See coreboot's src/include/imd.h for details.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        /* Firmware actually emits "coreboot" node without unit name */
+        coreboot@fdfea000 {
+            compatible = "coreboot";
+            reg = <0xfdfea000 0x264>, <0xfdfea000 0x16000>;
+        };
+    };
-- 
2.52.0.460.gd25c4c69ec-goog


