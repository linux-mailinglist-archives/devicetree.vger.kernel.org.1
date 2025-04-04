Return-Path: <devicetree+bounces-163323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD378A7C641
	for <lists+devicetree@lfdr.de>; Sat,  5 Apr 2025 00:21:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D0F417A026
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 22:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B31A21CC71;
	Fri,  4 Apr 2025 22:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="IfMKQsbO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA071E7C01
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 22:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743805266; cv=none; b=f8LNFOGOzIIEod03AG8KtXaLQotoJA48cBFEP1/utN6pp0mTsVGQL0pw9GvfS7aAlVoPOvTuyiM85lh1GOjVvjTfs63wCRf/fHEmb3k3gkxliQ+W0nXBowyvyTDsiavBVPKyMjcptqoRgj/J7FEMqJdG32b9oWVuypkd2uDZJAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743805266; c=relaxed/simple;
	bh=3uH4tvjBPnx4gaa48u4FI/xGYUeMBE3CMNtQzPHoCho=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Wt7AyUZU3OyxwnHuLPUhRBeMgb4bW5riq9tOe39XMxGaUewnB5fS1IEQCWqujkSq+Rcpey2084V7mHKF5G7kg2v7ZL5UabVC9C9dUYbvJ0TvOAzr2y76zXzW8zkcdtIh2sK9y3JnavM5VxwzKFTZKwxWdKPqyffv10ahyoV+xDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=IfMKQsbO; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-603f54a6c8aso1459755eaf.0
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 15:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743805263; x=1744410063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xamkw/RUwYxipIOX+uMdTaYq5cvNETr/5FWqKWKdeVg=;
        b=IfMKQsbOaeDFl/3uBjBDMLqRXZQOjkvSC98W/m6tCV/pdU7r9F7CI0goKu5crMy9sY
         30El0uimCGU3440eza5GfSXdWRwKzUQ9U/xy/OCXt99QaQBPLJPZU4m7G/iVDaz+91Qt
         /tqdRFpn85divMq1KDEqE40gx1weqFZFhtGus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743805263; x=1744410063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xamkw/RUwYxipIOX+uMdTaYq5cvNETr/5FWqKWKdeVg=;
        b=UUJDu3Cke/TOYi+uhRNK4KeLLKZTUzrM4/n/EV3PEROjrQhlVh2djX32a1DIBhxdxt
         OmEK4kUksdpG5wlIGM55cELXJ+tIigMkBaj/LS/+l3twe3aOqO1Hdx3oDSch0N1shRQP
         mj4fgkMfpklP2Hpy9wlkqYmJlsSGlokowxmso9xXRGkUQq878smDyXlEBLg+6BafuFdD
         2EOuN8BCj40t3MOOjxDmLI1h3/3ukmvQzJiOQnt1K83XtG7Eg+EIZlqMFmGevHptsVpK
         IW57Uy/Hc0EkgG3nyD3u1Py22tWAUZGnd6sJHvBIDmG7OcSq5sw2B0/2hAE3BX+gJSvR
         shfQ==
X-Gm-Message-State: AOJu0YwoPaVhxl5e3FAr7mOhO+k9lubSX1BIzeaOVxNrHpKD06NJ/TUk
	TK5rTY8w79CKqYtvUsyiywSQXiOwQZRwrnZWFtKykiapNurWwJYfqV+p/Xbgvz1IpnT9GKU8NSC
	myqeoxTJ5ZW6XNgehKAYQB/Q9n+KH05oSv7i7jtqNKA8B5iqJ0J9P06HNKIN3WzsPu9TueYYBnX
	6Cdik01tVdbjBTofTEqcB2zZzPTIHHj094GC7HB81myJxs
X-Gm-Gg: ASbGncv1gwT/o86W8ZJ5XR00LOhNje9laGintjAMOU4QpSoB+Ug/pJLuLykIKgkCdUC
	0Bma41xTJ/X58RrVT8HytGAofz2++rKRnMpdL5fAyPs+cRGuV+6c5d9R6n8cwP3D6MOaYiIK5Mg
	fT9RnDliPnl8Ay0Q/AexdludfpA0KiizVHb5CwRc2QBlB60p+7mr41nHNeuQm47ngB6S0C4OGg9
	6lBmommY9H5i3dZl1yFl1WUP0jhrqYPQbTbptnGNzv7/XAbUHraLPmDbdySQWHJkKRpn9T7WAU2
	dtFgaY+zAln6h2bbm0nUMgIwi/a8OG8/kqJAo8Leewkno40vCkYbwOsEGBCBXM6jd8pVIQhT2/2
	W70hXBqOYO3Zhhn9vKFR3vBDzbab5yYqe
X-Google-Smtp-Source: AGHT+IESTRjSnWyC9WDOv1hPrH3U08GYxtzRt8s/ZObcxIFkr+VWmQta8Ev9xBUxRfYgV1fRGYUFTw==
X-Received: by 2002:a05:6871:a017:b0:29e:2594:81e with SMTP id 586e51a60fabf-2cca191ff13mr2585503fac.13.1743805262998;
        Fri, 04 Apr 2025 15:21:02 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2cc84b30cd0sm925451fac.38.2025.04.04.15.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 15:21:02 -0700 (PDT)
From: justin.chen@broadcom.com
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v3 1/2] dt-bindings: mailbox: Add support for bcm74110
Date: Fri,  4 Apr 2025 15:20:57 -0700
Message-Id: <20250404222058.396134-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250404222058.396134-1-justin.chen@broadcom.com>
References: <20250404222058.396134-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

Add devicetree YAML binding for brcmstb bcm74110 mailbox used
for communicating with a co-processor.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v3
	Added list for interrupts.
	Corrected dts example. Fixed ordering and naming.

v2
        Renamed brcm,brcm_{tx|rx} to brcm,{tx|rx}.
        Removed brcm,shmem node. Not necessary to keep in dt.
        Fixed example and added scmi node.

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
new file mode 100644
index 000000000000..d6084ed23126
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/brcm,bcm74110-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM74110 Mailbox
+
+maintainers:
+  - Justin Chen <justin.chen@broadcom.com>
+  - Florian Fainelli <florian.fainelli@broadcom.com>
+
+description: Broadcom mailbox hardware first introduced with 74110
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm74110-mbox
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    items:
+      - description: RX doorbell and watermark interrupts
+      - description: TX doorbell and watermark interrupts
+
+  "#mbox-cells":
+    const: 2
+    description:
+      The first cell is channel type and second cell is shared memory slot
+
+  brcm,rx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: RX Mailbox number
+
+  brcm,tx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: TX Mailbox number
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+  - brcm,rx
+  - brcm,tx
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mailbox@a552000 {
+        compatible = "brcm,bcm74110-mbox";
+        reg = <0xa552000 0x1104>;
+        interrupts = <GIC_SPI 0x67 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 0x66 IRQ_TYPE_LEVEL_HIGH>;
+        #mbox-cells = <0x2>;
+        brcm,rx = <0x7>;
+        brcm,tx = <0x6>;
+    };
-- 
2.34.1


