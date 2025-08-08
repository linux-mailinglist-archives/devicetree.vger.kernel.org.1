Return-Path: <devicetree+bounces-202725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B904B1E849
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 14:27:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C88543B2201
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 12:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4239827876E;
	Fri,  8 Aug 2025 12:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="e45pRocT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85E527814C
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 12:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754656038; cv=none; b=nlalPackKt4e+gapo0F3hoYu5ifOKYb+k8NEl3Jlk6ImEWVSZNhTbhhOVnAN7kRK8lUXU0zHTc/TFRXDC2YjpfIS7030cZBHAMIM7l0ojn+6xKQjrs4Ql0ct/29QkdMd4IOKM+Hnld9bFHtZJvcqXd0kq8XwzK/o5Fw271sP95w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754656038; c=relaxed/simple;
	bh=55xyNih1p/jm8DNDiay6Vgkq0BIb6mLAUammufSbVHI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZPc6omY+h+/t4iOcCEsa/kZAcD1ZLvMCtjkk1cawsgLVq5Cs7Ebch6uhSRIfd6YS2PnfO+0u3FhfTAm4OBjUbNbRyixZAzeV7IWx1hyC6MbCzSH/qy+KD+GI8gF33kY13H42Qij1ac0XJeWtyYs1J8VQH+gAgOCf5ZcVVgVFLtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=e45pRocT; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-24009eeb2a7so18284155ad.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 05:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1754656035; x=1755260835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DJ2tefdglAjtygFqd1QbWGrd125necdYQVliSr1KcFQ=;
        b=e45pRocTY9m9eLsaL2CzWhlxb54ZJgypNjtaTVWli/TXBbNaWQJCsGCRIWe2geCk1C
         h6Y8CoGStq6eq995nkWyZztlkX+RueFYXAlYf35pF6uTjE7420gltpMREDcsH/cBvG7d
         PzmOTvLb3y7zGORu1Sfk3m/GpzhHDcNWgIqYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754656035; x=1755260835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJ2tefdglAjtygFqd1QbWGrd125necdYQVliSr1KcFQ=;
        b=Fm6VDjoni0P6A2XevfgCAvGvLwOpFyj97TIa8jGHLGCP7tr2YnCJhGmkIO7EtVrEHy
         oYaSnR1nN/oHNAU+Tf78TEnuUDGSPeu9gUoJgeRnl3+bMLVSKdwCTCWMAST18RCP5pLC
         eDa0RUixVJOyBOFzDQ1nSPXUaMrgraiCqUtgYFJ6fdomnw0i3UVZwIFK7AFWGl3xqwEG
         vHvRRAV1oY+CrFtAGc31+lKrJAy7/S8/m+fhunKv0D5pFT7kN/fHoD6tOg8O5D48a2wl
         ks3OUSIc6LrUsvLBtBtkdqBaD9gro7/firQ6GDswX32ERkDZf+t6FXKOb6xQjWh+khft
         iCVA==
X-Forwarded-Encrypted: i=1; AJvYcCVwmbgnwl603nEvrMkTPOwHLVIPor+cqIeos1XOzkwlZQmGXNew5eFV1eM6CbpscahE1ZgbxjdsBzvE@vger.kernel.org
X-Gm-Message-State: AOJu0YwpXYyVG0XWzncLhHVcgwM180xA8FH8h790Tpm0u6o3PuOLt97y
	zRJfFlbH8ILBKZadkdsuGTa8WnPn6Ue7StqDqptPhboor/5jepzCagQllhEsHsHXNlo=
X-Gm-Gg: ASbGncteyGI41ZM/NhKei9KVSNVP/qKcyn+wAciUqLSiqSs1QZlKKKhd6fipY6oEOPI
	Z+8PVCYCNbLHybC9gWo0OrnBr/80v6aH8J2FWkzVcypkVrFRNrV7nasJmw2eoCBadeEzfWSdRyi
	kdItnzRY7xv2ldctsvCZLts9Sou2tYmEUzYj8hqwtE7zbY5e5/UWAAN1M8+ArWnYy72PysvFSzM
	XYqKEJRhpOa901WIt2R6RnjVEUkgtjaQ4ovUtkAmHqcCjWYZ2PwUfQ0Dw7moQY/l+ZG/roT3Mur
	Kv08JRTYUpUgJrNotlf6nWg4UrXRUwr0vUsxuz9rOnFHJeOvKmJZIMBrB0SukqZIc3RfI8yNht8
	qZApCsz9CQDoIzaGDnalM/fcmHhuFeBwV+9+fbGwMARGBSg==
X-Google-Smtp-Source: AGHT+IERx8aVenHBuTli8JAbJCc9oxtQxg7z2FMu+cbVVrScQ3tjY/TvMSb6NyxPz69iUhJCLa6iiQ==
X-Received: by 2002:a17:902:f688:b0:240:7235:6292 with SMTP id d9443c01a7336-242c224cca8mr50641925ad.39.1754656034890;
        Fri, 08 Aug 2025 05:27:14 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899a8cdsm208296665ad.121.2025.08.08.05.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 05:27:14 -0700 (PDT)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Subject: [PATCH v4 1/6] dt-bindings: crypto: Document support for SPAcc
Date: Fri,  8 Aug 2025 17:56:26 +0530
Message-Id: <20250808122631.697421-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250808122631.697421-1-pavitrakumarm@vayavyalabs.com>
References: <20250808122631.697421-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT bindings related to the SPAcc driver for Documentation.
DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
Engine is a crypto IP designed by Synopsys.

Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 000000000000..1053deaea304
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/snps,dwc-spacc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare Security Protocol Accelerator(SPAcc) Crypto Engine
+
+maintainers:
+  - Ruud Derwig <Ruud.Derwig@synopsys.com>
+
+description: |
+  The Synopsys DWC Security Protocol Accelerator (SPAcc), which is a
+  semiconductor IP designed to accelerate cryptographic operations, such as
+  encryption, decryption, and hashing.
+
+  In this configuration, the SPAcc IP is instantiated within the Synopsys
+  NSIMOSCI virtual SoC platform, a SystemC simulation environment used for
+  software development and testing. The device is accessed as a memory-mapped
+  peripheral and generates interrupts to the ARC interrupt controller.
+
+properties:
+  compatible:
+    items:
+      - const: snps,nsimosci-hs-spacc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    crypto@40000000 {
+        compatible = "snps,nsimosci-hs-spacc";
+        reg = <0x40000000 0x3ffff>;
+        interrupts = <28>;
+        clocks = <&clock>;
+    };
-- 
2.25.1


