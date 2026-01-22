Return-Path: <devicetree+bounces-258548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNgEGQ5ccmkljAAAu9opvQ
	(envelope-from <devicetree+bounces-258548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:19:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B2C6B0E9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:19:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 273AC3390CF3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C423E26EF;
	Thu, 22 Jan 2026 16:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ee1cvMRF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BD63FAFB3
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 16:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769099006; cv=none; b=o/kiJrVTYFLKFWH4y+O3I150nXICTNgrbJjiQ4EYhI8UghSRznR5wzL8T7EADxkj8NDU7YTtmMXU6tJF1mp5DEa1MRF+Vyolo8TXO8vqW6OTdGXOtXwE7IBqFBUF0WZ2icU+R5zGoSbtjeI5PKmNn1cvj41OKra3yvwjoPKFVMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769099006; c=relaxed/simple;
	bh=ZwfN26Q6RIo2QccqOegDcBRF9KHjLQSMllAjP2/PlTs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=uNo6jMfRIfRAcsEsLzVA3PxdEAFkm28KYdKVIY5F7E4GcKfHjEc2M446Q6woU3JViFIUVhn9srI0ZOf6WSaoHR0nIqEFzVx/CSvuEBDgj0ZakqATLU6iIhq3DLK7x52ipwSO+Kggrnsso2RLmCg/m19lLgliM7sqbuC5SIg6fxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ee1cvMRF; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c1e4a9033abso569375a12.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 08:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769098992; x=1769703792; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HYUcCmx/AcBg489DGzSQvd0/EvrM4b4ill5j+7RWL6A=;
        b=ee1cvMRFHR1gkqBJFtUa3JZmffmeZkhsjKgf6xbniawwNgJEfhN+tgzPcL52ganKwg
         PehPUHmO+mg6tXhmj4LGQDdrP/wX12Xja7sntUVWe7CTOLVF+L5LMQx6oFEjdyZ41ZoN
         xl/pTDIR+SOREbDYXnebQPuIeQhXaWKsm0Nb2U+dMkXUogxx+meX9DehrOHBmNQ6IKyE
         eMzZ0P6iLOxAkZfxwxP3wGFtVV1JIuKVe83LWUh0kWJ/5ipU1bD91QhcKyrmTqz26/mH
         kMCj6CH+7sWgyROPzMyFF5sfhP9ZLLdpiD0nSnYVk+U3C7FAIKOB22lKdoQ9dn8Cz8ZB
         b1Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769098992; x=1769703792;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HYUcCmx/AcBg489DGzSQvd0/EvrM4b4ill5j+7RWL6A=;
        b=uMfdky8ax5jmskivnt6vLItT26ve22xLCbQC0EH0MBRMP5pliqp1N2yJSfEtpSuA26
         ylqHx6pHP0J88rWGnygAgPL6NSOK9oOqm+4ve7B9L8abv7uvsUa1ZZ2hE9mjPL1lNGX8
         vuBByFMSICknkxzNIoYEf1d8MzH5ROfBWxKdgV1ObXV9fDDfxgYrKU/2AywdVs5SgNfa
         R6Z7UbIp3Aedo5tR00q3H97D98CKXNOBGBVKUcFVknUBTPtxEqcRKvCSfAAGkKAg+Yxg
         CWWbSOk1bvtd6qRFG3pnX/Pm+N9XgPI8ykZ6m+xL9XJTy0q2DwkqO2hKeQ6l8/SksRaO
         Y8Sw==
X-Forwarded-Encrypted: i=1; AJvYcCXtMDja/qpcnHgSyE7jEVgxJOIfd5EqUD4FCHuOpZFaSBZFfSAV2MSWrHgqTUWDHXK407l3bqS/pmIA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7TdVOqZWN5oeiqH1vY+Cj/H+I6a1p8AnFsqbTYIbvbw5i2KVI
	nFCqkpXS39mDt+vjYzaSfyP//+WTCoqAyFPF8TjdVxmiUafksY4khPiN
X-Gm-Gg: AZuq6aIUtauq0WLDHtfAOqiGueATmI8++fjOfFJYKS4pVsRCWSOD+wU1brN6J8Db+Fz
	3EntWsURl/VwY7z1OBy/XizQd7ZbIaY6/oUnZ6AmLuwR3xF4ske6HV2+9fbXDU0qE/QpzI77/dh
	FuFBJF7OyjJDZKqwLoKRqFyn2J4pMPlxtSWnhNLRg8lpKRa/QspBXyIiKZ8DGerbxly+oQurbA5
	zxi2lt3Yb96ux0BxdyllhDUVmHwRmKW/khJJ4QyBZHvaNgPqZrz0eMGBSBEHwFRmbtaEvyE8mJL
	CgiI4m4pTLUaGuiZB4i8Rx/G9xeIDh/k54dTe2h+8JbOc3ePP0mzrgdJtJkOvxGznEkF1em+SAz
	ibY+qyKLqNhhEEVkNgG9xds4q7Xx59ZaBYif6LHh1zfaP/pGmDPzYaN3H4YzqFkBGWwO9u94bE/
	wkg3A1F0USx6j10UrkhCc83vPOZ9fmreVpSqA=
X-Received: by 2002:a17:903:2448:b0:295:592f:94a3 with SMTP id d9443c01a7336-2a76b067a21mr87014795ad.48.1769098991638;
        Thu, 22 Jan 2026 08:23:11 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.66.50])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a76c5f4fb0sm82145295ad.45.2026.01.22.08.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 08:23:11 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Thu, 22 Jan 2026 16:23:04 +0000
Subject: [PATCH] dt-bindings: mtd: st,spear600-smi: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
X-B4-Tracking: v=1; b=H4sIAOdOcmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyMj3eKC1MQi3VRTS8uUZJNU81RjIyWg2oKi1LTMCrA50bG1tQDcbad
 GVwAAAA==
X-Change-ID: 20260122-spear-e599dc4e7e32
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258548-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fc000000:email,f8000000:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nod.at:email]
X-Rspamd-Queue-Id: 85B2C6B0E9
X-Rspamd-Action: no action

Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
Controller binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/mtd/spear_smi.txt          | 29 ---------
 .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 72 ++++++++++++++++++++++
 2 files changed, 72 insertions(+), 29 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/spear_smi.txt b/Documentation/devicetree/bindings/mtd/spear_smi.txt
deleted file mode 100644
index c41873e92d26..000000000000
--- a/Documentation/devicetree/bindings/mtd/spear_smi.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-* SPEAr SMI
-
-Required properties:
-- compatible : "st,spear600-smi"
-- reg : Address range of the mtd chip
-- #address-cells, #size-cells : Must be present if the device has sub-nodes
-  representing partitions.
-- interrupts: Should contain the STMMAC interrupts
-- clock-rate : Functional clock rate of SMI in Hz
-
-Optional properties:
-- st,smi-fast-mode : Flash supports read in fast mode
-
-Example:
-
-	smi: flash@fc000000 {
-		compatible = "st,spear600-smi";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		reg = <0xfc000000 0x1000>;
-		interrupt-parent = <&vic1>;
-		interrupts = <12>;
-		clock-rate = <50000000>;	/* 50MHz */
-
-		flash@f8000000 {
-			st,smi-fast-mode;
-			...
-		};
-	};
diff --git a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
new file mode 100644
index 000000000000..8fe27aae7527
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/st,spear600-smi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics SPEAr600 Serial Memory Interface (SMI) Controller
+
+maintainers:
+  - Richard Weinberger <richard@nod.at>
+
+description:
+  The SPEAr600 Serial Memory Interface (SMI) is a dedicated serial flash
+  controller supporting up to four chip selects for serial NOR flashes
+  connected in parallel. The controller is memory-mapped and the attached
+  flash devices appear in the CPU address space.The driver
+  (drivers/mtd/devices/spear_smi.c) probes the attached flashes
+  dynamically by sending commands (e.g., RDID) to each bank.
+  Flash sub nodes describe the memory range and optional per-flash
+  properties.
+
+allOf:
+  - $ref: mtd.yaml#
+
+properties:
+  compatible:
+    const: st,spear600-smi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  clock-rate:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Functional clock rate of the SMI controller in Hz.
+
+  st,smi-fast-mode:
+    type: boolean
+    description: Indicates that the attached flash supports fast read mode.
+
+required:
+  - compatible
+  - reg
+  - clock-rate
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    flash@fc000000 {
+        compatible = "st,spear600-smi";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        reg = <0xfc000000 0x1000>;
+        interrupt-parent = <&vic1>;
+        interrupts = <12>;
+        clock-rate = <50000000>;  /* 50 MHz */
+
+        flash@f8000000 {
+            reg = <0xfc000000 0x1000>;
+            st,smi-fast-mode;
+        };
+    };
+...

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260122-spear-e599dc4e7e32

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


