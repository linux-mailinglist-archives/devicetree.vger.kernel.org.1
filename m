Return-Path: <devicetree+bounces-250398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E63FCE8E1D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:20:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 05AAB3002066
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 07:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F252F656E;
	Tue, 30 Dec 2025 07:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dcp/g1Pe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0962EFD95
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767079231; cv=none; b=qJ4GCu++HCaTnQTAyJXybPdkA2l0abgghA4/+NTmy+hqsMSXVhxPy/LRb+u6Tt7jU1F/iryZaoda/40D7eFDJyuvqdTW24yiQhTvqDTqmIboZfydd0QbYgeBwH59mK+ddRvIAc52uFAHBSRN0WNTJa+0JJ3ysWaT/eK/0H+Sqs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767079231; c=relaxed/simple;
	bh=gSpc/h3BVma0qXdmLNNgxQ4ELY7zorbWlWIQmeDVgtg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kGWtbrFP2eR7FADzmuKoKeIZ8mz253AKoio3CDgt9Al5qBvvs3HnxIJffGhwgD/AO007VJ03CzGPJVMaDnvDd7VO7R++CAWrbBJk865R/2z7Suu6uOAd6J2jRzabIDnXAruzxccDLo6dK/qVIUdEbXrDiilTgslXfAcAmbWBENM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dcp/g1Pe; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a09757004cso124960405ad.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 23:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767079229; x=1767684029; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=78T8V8yZoQxIZHXRATvOJSkSFUGy++WxZ8EC1YewaNc=;
        b=Dcp/g1PeaXZrxdAbCNhaYWOdeCmUboSQFmCYoV+I9B3WKUq6VsZH2IJqXdNvoKkVvI
         wHi8naYduDz9lA0OMAy60Xu3TNT1S7ama4HTPSceri8E0SnkexdtsvYvA+I+mBNF+pSY
         cugsdELCtKpw1mradWB3p/1ml/4MU3Xfr7WakAdj3Zy0VzXNIcfmgD6oLXJGJTOVQ+2c
         p2WoZWVVGtPUpZQzBfXrWdWqicX6cYHPeslewOUVbEaXUtnROxq51TOqz4DxTIgK7vQk
         R9McEv0n5/HnJss1ACaZS0NhytvIW/q93+IKADlSb0yLeGbSe+0XNR3endIErR77FsY/
         ILfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767079229; x=1767684029;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78T8V8yZoQxIZHXRATvOJSkSFUGy++WxZ8EC1YewaNc=;
        b=RrAsngwSLU5dlhOY9KVtSq5Hx81HuKbZirbiBwYjQmNGwsnMobcb9fVG0XoA/d6ygg
         ew/dbsRJkymGfCamOY4YHA4fQow1115z59i/nlGtlBk5N4RcMGj1hEa/JSfj43hWMz0g
         sZIcB/1gYu8yankHmCuTZvtbZnn24+gp4oIju+VlL7sZ0ki1jjsQ3ljXnbJLOLdnURqT
         yEqroDTt8QMpLNW1xoe4OhAbki1hKiku4iTlL7VjRxoNODh4ddUlWB0+e4sgyW8VujUx
         Ng5CHlNd4nw26FmVB4oQp21oMk8aYmD1jwWqIDw+h7lJXP1Q0AzV6EnkogLp4/EJxNg+
         Ljsg==
X-Forwarded-Encrypted: i=1; AJvYcCVDGWEw23yuAao5JWf8KnZNfuMzLuU0da9fLvTRQu0QsVSmNoWbVG9IpG+84PFTQGW/KVkmYLCdprRi@vger.kernel.org
X-Gm-Message-State: AOJu0YyGOiw2/qZtCjMiwYNBMeDC+e8XAviF90Cz/yL9o0XbBo4xG3j6
	Jrky5FcgKlQV/VDL+opE2j780HaW0o2VaImU6QHGCwafCYJaj8yyu2/K
X-Gm-Gg: AY/fxX6GwoYuG0cRY12XFvPzPntcBjHYNH1ScpIgVYv5cFh7ZJDjqdjhQpqU3jC8f96
	Dd83MzfJtUnsmMs5nPh5I17vKEs0ZE6c458/bt7d3rQ+ZyNlHEVbVzz7rNv+Zxa6BayaoXy4PXP
	uNcY/6RVlvB0mvhMcW41nU1b0a7xiwzK7n+ehVbd9Jx/kOwYip42+dZbkhAp4FWiTrpstRT5OPu
	qXt4Z2Uxnb0wP3dXblCGSVU05tBlPzFJ1exTgNxGWXRzUgsuavEPEiiSTY4ig5QMd3RZoZPC673
	vrzbuC48pRbsNNUJlBuWpen/qVVFIfN43ks8ZufhidyyJkFQn1ZjhWk4u5cUST1R9rxbpZPdVSW
	SHVupy+CNt+KofoXteZUiYxzBVX0fK9K4ZGQ36xjG1ZHVofLlrr2QHyWjYBNzYx7FBgSXRTBYEb
	XuFPQ4OcIRImQm+SkC0dwyKiVxNhtokEJKA8a186fdGA+M4fMT
X-Google-Smtp-Source: AGHT+IFTApw/6+M7axi8xYhv03Mos5hLL2HTDOB45Tj3e7a7Pu9784iRBt6MXPy1SUWFshRW2OcM0Q==
X-Received: by 2002:a17:902:e846:b0:2a0:9656:a218 with SMTP id d9443c01a7336-2a2f2a3587emr269192385ad.28.1767079228812;
        Mon, 29 Dec 2025 23:20:28 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.105.188])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d74ba5sm286929325ad.89.2025.12.29.23.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 23:20:28 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 30 Dec 2025 07:20:21 +0000
Subject: [PATCH] dt-bindings: mtd: nand-micronix: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-macronix-v1-1-ff2aaab43644@gmail.com>
X-B4-Tracking: v=1; b=H4sIADR9U2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIyNL3dzE5KL8vMwK3WTLFIskY6NkA4PkNCWg8oKi1LTMCrBR0bG1tQB
 pt4HrWgAAAA==
X-Change-ID: 20251229-macronix-c9d8b32c00cf
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3

Convert Macronix NAND Randomizer OTP Enable Property binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/mtd/nand-macronix.txt      | 27 --------------
 .../devicetree/bindings/mtd/nand-macronix.yaml     | 41 ++++++++++++++++++++++
 2 files changed, 41 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/nand-macronix.txt b/Documentation/devicetree/bindings/mtd/nand-macronix.txt
deleted file mode 100644
index ffab28a2c4d1..000000000000
--- a/Documentation/devicetree/bindings/mtd/nand-macronix.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-Macronix NANDs Device Tree Bindings
------------------------------------
-
-Macronix NANDs support randomizer operation for scrambling user data,
-which can be enabled with a SET_FEATURE. The penalty when using the
-randomizer are subpage accesses prohibited and more time period needed
-for program operation, i.e., tPROG 300us to 340us (randomizer enabled).
-Enabling the randomizer is a one time persistent and non reversible
-operation.
-
-For more high-reliability concern, if subpage write is not available
-with hardware ECC and not enabled at UBI level, then enabling the
-randomizer is recommended by default by adding a new specific property
-in children nodes.
-
-Required NAND chip properties in children mode:
-- randomizer enable: should be "mxic,enable-randomizer-otp"
-
-Example:
-
-	nand: nand-controller@unit-address {
-
-		nand@0 {
-			reg = <0>;
-			mxic,enable-randomizer-otp;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/mtd/nand-macronix.yaml b/Documentation/devicetree/bindings/mtd/nand-macronix.yaml
new file mode 100644
index 000000000000..10f1d58adcef
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/nand-macronix.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/nand-macronix.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Macronix NAND Randomizer OTP Enable Property
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+  - Richard Weinberger <richard@nod.at>
+
+description:
+  Macronix NAND chips support an optional one-time programmable (OTP)
+  data randomizer that scrambles user data to improve reliability.
+  Enabling it is irreversible, prohibits subpage accesses, and slightly
+  increases program time. This property requests the driver to enable
+  the randomizer if not already set.
+
+properties:
+  mxic,enable-randomizer-otp:
+    type: boolean
+    description:
+      Presence of this property indicates that the data randomizer should
+      be enabled in OTP mode on the NAND chip.
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    nand-controller {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        nand@0 {
+            reg = <0>;
+            mxic,enable-randomizer-otp;
+        };
+    };
+
+...

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251229-macronix-c9d8b32c00cf

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


