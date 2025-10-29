Return-Path: <devicetree+bounces-232594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B00F6C194EF
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3A0C95A1739
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02AD831D746;
	Wed, 29 Oct 2025 08:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rm10YfvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D2E314D27
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727243; cv=none; b=pPwlqn/l7K4oxw/PEll42tx9gTm+xh4ANzit+BQTlY36yxGal5jwjuhFItY9frn2Wu15grxSVoLsV7sCmNb8BwLK39338Yk5qNydeshO6AE6Pt1aX9tNnkWm1dzUC/UmVYPNobjOq2UyW7MJjQP1jGB5wujBO8qlLpDJAtYjirQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727243; c=relaxed/simple;
	bh=3dfxHvLEODjIsoBymhUDZZGiO3PfPaDxRfipDf2Q+eU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YaiH6UkHU1jpr7wiv3RGUw2ATlBKgWB4ox/7K6eHmMg0LHwZDHCBSW6tYRbB1S6JT0TB1L6j0LW0E8GBXpiCfVcGVosVW8XLgxgbqb+e5FAvvJ3IFqcXUcIugiG2SujwnuIkx3d/xcBu+yZzyfhn0VXY9QyjY+XviWpiVfRlAzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rm10YfvX; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4710665e7deso36624615e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761727240; x=1762332040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5zDKBowBIfgO2OmsFcxAdae/8qYwuZcAE+WV1T/cljM=;
        b=Rm10YfvX39NGehU72t5+bv4SznCrV20Ajt+EeSvYl+Mm6LRpHQt3O5zIq8n7Cik6pc
         4lR2UxNyF+uqb/tnh5Uc2lGCTAnfZB127b6XN75hV13gTzyjJnaasoYoLPTnypw60iMF
         fWA5wUpFtzIWQyKI5rySOd3j4iSYDPVnj4BvMNbixh1t7h9SDo3I5b2y0YiUtlguxthd
         wLlaR2ICjNP+n2UM5gDX6799S++NHaVLng1R/TfAVb46FmYdTy4mfiYYdILPwyp87FE4
         IvJky5X+6ERZYpOC9udc1HZ38JDYLqEVAGGI+nP8IXOrqWpN5uOSwCXQ9FY3pSdxkfOk
         fTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727240; x=1762332040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zDKBowBIfgO2OmsFcxAdae/8qYwuZcAE+WV1T/cljM=;
        b=R3rvwEOvNY5NcDMnwoxtEUlHjYjUfcmWaUHdhy/3Lc/U+a48o2H8BBgU8KBKqPTlSF
         4XhGADgorsQBhFZfXBhg1vOtgKXhtPnDTN1ZvqYm94Hda3OeG5dXr75LqeCXXgEzpvLW
         geL4lFlxDbapE/yyBrQ93jZPIbpDFUAZ8c3Bvwh1N612XBWpucU0/Js/BHPvyGCkJ4qw
         ExDtRFJpZrK1yGxygN8H8OvUiiIZSgeCSnU0y5t/cagJa4ETXtoBRc9aBo7kNxiZHAcu
         uHRFFIyjfNbxP3f7UkVdyFBhQB58kyaK48CffpWjozioGy6ZrGjui5qcaVIjgxME9I9a
         9lkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaN9I4A1TexRzuAh+SY8OA9dp19Lv/Ro4XC0YPFchPUBrk7O2AkXsypoa2h5pKmu33RIMmnZnbog3D@vger.kernel.org
X-Gm-Message-State: AOJu0YwwMlEhzyhGH6Ve96blZuqOlFEb/XnGAn05/V2lop7j96urGjRB
	gZczYZ3Sv69JQRBhTfEyuFyZ0XTR8iYhsHHI8NLop45kr6mCMwV8HFIP
X-Gm-Gg: ASbGncsd+lizMNTZA0rj5qpuErHV8thvB04Wii7BdesWVFNZx78k2ig6ZOLe9Y2NsNl
	N8wuVtxRN5yG+CnMJvFoBqbhACa27J6eI+bjwlunjSMFYmPwsSFz3uym29eUzfacbTJdCjWiBGa
	c+hlm9YbSw77HkPEMCwzHC2wEGBU1DCr1iXWrB9nw56TI3TLEI6HccbBpWrYK/yZnLDVVgehPYy
	0/VOcS639EO3Y+oulq1Twkkh9hE03obxr80WZTa5YJjNlZtI5L2sAKtUUDkOy9sRS6YSd6tGPEH
	vE+KB2wB+vikrxstf8/qQXOs7RtNQBAloqZifK41qN9lTKWdIUdm+6TYbtfE4Jjn9uv+VjnGOO3
	M0x4jO+QfcCIq2COyNR7d5NmgCoG6GeC/EEhjr2itjZpIF3hH+6pXRgNQOlNtqEHnBHpYXrfgb3
	iuIonC2LaJeoSfImHR8B7gO3QlaCt8dkeycvbC2V5fvBB1R1PdeOnuy+Uj3h21
X-Google-Smtp-Source: AGHT+IF3LoH+MVR8GJt0HNUZBmCSpCGxlcDgvQw6PVT+Io7cZd3fZ9aRwEFQRwsDZ93XErw9fNatZA==
X-Received: by 2002:a05:600c:4e91:b0:46e:39e1:fc27 with SMTP id 5b1f17b1804b1-4771e16596fmr20457285e9.5.1761727239965;
        Wed, 29 Oct 2025 01:40:39 -0700 (PDT)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3a88fdsm39485785e9.10.2025.10.29.01.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:40:39 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/2] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
Date: Wed, 29 Oct 2025 08:40:33 +0000
Message-ID: <20251029084037.108610-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029084037.108610-1-biju.das.jz@bp.renesas.com>
References: <20251029084037.108610-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Document Renesas RZ/G3E USB3.0 PHY. This IP is connected between
USB3HOST and PHY module. The main functions of the module are
as follows:
 - Reset control
 - Control of PHY input pins
 - Monitoring of PHY output pins

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v3->v4:
 * Collected tag from Geert.
v2->v3:
 * No change.
v1->v2:
 * Collected tag.
---
 .../bindings/phy/renesas,rzg3e-usb3-phy.yaml  | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
new file mode 100644
index 000000000000..b86dc7a291a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/renesas,rzg3e-usb3-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/G3E USB 3.0 PHY
+
+maintainers:
+  - Biju Das <biju.das.jz@bp.renesas.com>
+
+properties:
+  compatible:
+    const: renesas,r9a09g047-usb3-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: APB bus clock
+      - description: USB 2.0 PHY reference clock
+      - description: USB 3.0 PHY reference clock
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: core
+      - const: ref_alt_clk_p
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - power-domains
+  - resets
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/renesas,r9a09g047-cpg.h>
+
+    usb-phy@15870000 {
+        compatible = "renesas,r9a09g047-usb3-phy";
+        reg = <0x15870000 0x10000>;
+        clocks = <&cpg CPG_MOD 0xb0>, <&cpg CPG_CORE 13>, <&cpg CPG_CORE 12>;
+        clock-names = "pclk", "core", "ref_alt_clk_p";
+        power-domains = <&cpg>;
+        resets = <&cpg 0xaa>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


