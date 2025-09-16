Return-Path: <devicetree+bounces-217916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BD8B59B75
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:08:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C295526C7D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5632D34AAEE;
	Tue, 16 Sep 2025 15:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZxpJSwia"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF46341AD5
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034984; cv=none; b=aBg0TpGT93xaRC2GVetVACJ/r6X5C56vnB+PgjobFuRo/+VdbklhYfT37IZITCfqXLDuq6Mz2+04y0Jf1rur/YI8byUA/W7FFe2BTfMmF4iXQWtaTVIoh8zQrxvT1zJtgyAnQQ+1ow3+SsagwyRLax0XvVIl3ROpZxkBfBijdyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034984; c=relaxed/simple;
	bh=ZToCMOBOhJsU3tIcnWwK4HejkiM+RUBWbY3Ds0NxNKE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mmjzJTbRanlS30PAh2ZaGO+P+/AVt/izJZWPEGE/97rDCJWTA0vxdvw//v9pYsxV92MtVxRubdbanLjoXTHeNBN+dmn7Qb+9/ScicwcsDq0GEGuB01oyr/iBfNVc1bB0u1luYBMK4P/6WtGYc9XZ7Ow+0Rj3nV1U4zkI7Zc5V8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZxpJSwia; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45f29dd8490so26720835e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758034981; x=1758639781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g0POxPhipsvlSGEEjXqnf+oNP1ubhTQm01K/BJGNzx0=;
        b=ZxpJSwia+xAJEbt4dpZ2aYx6r51vjJZ0mbY6xgB6Baj5O1QGOWVNejTdO/2TfqsOR6
         IHgshJI2DUFYub4nYqwmuEfJVtVNnkDyNwapMu+ap0b8IifUOdFR+BZuc0fz7poH0nVd
         GX3TeL7zzQ7S/uBe8S47TSTXhyjXay35DTFCJ3Sm08TDNF7GJYFYNblhI2lF0bPbsNsx
         eoxAwgVPE8dCNre6aQH5yDsT8XprZSUzMPjTNN/DzatkNtwCPYaWvbx+l4hsy5zcSJdo
         Rp7CYlq6XkULXYSIQwxYulk7QD3cNq+jvJU1UsQqkfVE/7Lsg4X2LlV1hxoLKUzNRKo/
         h+xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034981; x=1758639781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g0POxPhipsvlSGEEjXqnf+oNP1ubhTQm01K/BJGNzx0=;
        b=MdeIkXc6tMjd5iqTlZW7ESfdDhLlfcsjMgmtEnj7CV5TLr12W2+Uh4BSucywWkGV/T
         jtiqMXpm19hzhWGEktkD/R3EdMIjf5a3YwI9gVTHjj/3Rv1oaf741RwFPylxX7aO+6cq
         W146WYq/wejpxK+JhETXU3HYaQMncZHR+BTSJiM1IUQ54aGPsQSU1Sxk35xHKdD5xuGO
         +KIXvnTy44XDLeK3yIMvjLJdK0nu/KB8NBlNTbLR9xUkmQanyTdIMzPQj3B3F0uQTN8t
         QiVKhR7j2cvvL4PfpzHjT+whSWNJxmPJVEnU780Lsrh+ztAkg++Bz/TM7+MqvHBOVQxE
         8/Hg==
X-Forwarded-Encrypted: i=1; AJvYcCUHc31Wdo82aFM9UA9VDGhpr3UDoinMzB5+hI+ynee4286CdGl9pkX1Cf4SbbwKVSpqyd+vqa5GPtr4@vger.kernel.org
X-Gm-Message-State: AOJu0YxDuz2QPNYlDE/JcxMEd7DSKMFNqIiwXnKR3sz0SFSr2d77T6/7
	Wj20XdlFxL5tllestfWunwdzOxgLp8e9u5QYVMucKjxxyzrAAqLx3uMj
X-Gm-Gg: ASbGncsm185Ayzn2+/KqwR8HdB5QHUbqLnsRgzwLozsyt78DyBxIZFzxsPaog9RsGZj
	rqhJ0852xLz9W4Y0XSvHOoz4g8SkiDwH9nee13Bf/BQQUwXZ/KXGU3Q6hfezIqgYRjpmRgfXpu7
	Z9rdiofRggNDkXsdhRQOHwKIQrFjKuUgOQDRbwSIbvFmOK9byURCkMrZnNRpPMcKDPkg/iRduuM
	T5xlnMSNKDrGhioXrVdm+00vNePc0rc9eAiXiHrmIVyl5QPLKbDynvY2HF91TwM3BH+sNja7O+h
	JRDXs/wIBcf5juCF86m+0TP+BhfKX2rKzN/GqDjRxnJ+Yw7ZX9oVPr09pv0mFwR4a7GzXfvw66k
	njkB6fwfz/7x8aMMcZEyVG9I93nyX+Kr2Vymc/3V+QkEf4wlz5TZ5ARgiLg4hywiyiGdrchmm7K
	nJjA==
X-Google-Smtp-Source: AGHT+IGmHQXV8zQi20PQ52rZ3kLQAtv5qtMfgvNSWWyv309LLe9kOE/hMbr49hkrS3kibkVDg/cw+w==
X-Received: by 2002:a05:6000:605:b0:3ea:e0fd:290b with SMTP id ffacd0b85a97d-3eae0fd2d75mr7793579f8f.40.1758034979184;
        Tue, 16 Sep 2025 08:02:59 -0700 (PDT)
Received: from biju.lan (host86-139-30-37.range86-139.btcentralplus.com. [86.139.30.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ecdc2deb20sm932154f8f.47.2025.09.16.08.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:02:58 -0700 (PDT)
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
Subject: [PATCH v3 1/9] dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
Date: Tue, 16 Sep 2025 16:02:37 +0100
Message-ID: <20250916150255.4231-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
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
---
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


