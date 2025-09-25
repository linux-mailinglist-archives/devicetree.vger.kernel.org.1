Return-Path: <devicetree+bounces-221329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE0DB9E8B4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:04:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B01F3817AA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 742E92EACF3;
	Thu, 25 Sep 2025 10:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OYdNO92J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9540D2EA49D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758794647; cv=none; b=MUomZhMFRQNINlgVfrv3ofGd5cEAZ4qFRp1zaeSIBTsKPoiPDD9vhiQKMLkNncY0oWZVjBdo3J5LoelVGepcUvJ3adwZSdZCjPFHgSoFO9XiQwj3KCPEoDK26PVCiGWX9oJ+a63zLTHTbMq5K43gszDEN0PbLZ+L7hYSlHaU9bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758794647; c=relaxed/simple;
	bh=fPHE+4SS6NADEeNKpXr5L2VRjNuZneALXLZC1DzOqF8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pZkDXP3B2KYGd6FELPdBT2Deoc4Ze+pgZXG434kx/2z4Wem9ynOsWZNgahYLEHPMsBGwaP1XckbtBYFo2dWjb502cTHoZNvnvN8DSV1b16tPGvZH08wbp4dpX9yotpQtj3+8ePxNyXHwg56KeWmwsqBsXKHxbmcAyY+P0LgFIho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OYdNO92J; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46de78b595dso3810135e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794644; x=1759399444; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ev+V/JW5+QM+PIWIe4k3CE87ZcIEVc5Xt1x3/zgMw44=;
        b=OYdNO92JRVwJC5r+jv5N1iTcM5WDHjbfVTDMzo9IPjwrUs/r9NPRmmnGauFuWY6T3H
         Ebx78cisArMU1e0eu3TNk/baYdNrHa5RYde5Ce87bqK1t216M9Qkt325FRQaMWPG6Nsb
         BwvPwH9ckKyWgG5mkEjstrZakj9nEIxZLyTLsUQMENTVfW4gjcXi/uO2a23I6ty9vd9Z
         TMiTTyZomlIzaVX7+QlGO9f9YQlknsOpik7DECyJoI91YuZ5N9wNjdR8MXv2+e8Llm22
         jYhVwrAYbTYqCzJy7ElFnoyGP7pPQMEYcwSknKzyScMi3eBWaU/1w3cBjLafzQ7KC7nn
         kQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794644; x=1759399444;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ev+V/JW5+QM+PIWIe4k3CE87ZcIEVc5Xt1x3/zgMw44=;
        b=foG7sX4uZ9I40/CGRULNUSZXs5TCYUgn4y6+If5CYv8LCKZhKAOrx5UQiBKgutdjYU
         41M5LOD/AVvXXXF6mCEUgLEw5+6dK1geK+toCoZCHoiwtuQ2u4egAkinStcufwfT1TJZ
         ij+bFRqZWE03atdaFNqPNWsksjuXwBRd5hKBNQyU8n8fn3a+UCznmiptQgb6/Ly9mB4c
         32Uhm/O4fBgeF7z1vajnD5vhZva2o4RpkzOeCljlqggKfCQIq//5nx/kNshgvHdHEVNg
         Z2ju0dlBJ9jSPl6JOm12ud182kmTAjAv5yAlYmB/zsztRj6JOO1k7BTaIzeTQQf7x0uj
         yotQ==
X-Forwarded-Encrypted: i=1; AJvYcCX21jXI4cLr4ZUD60GIxeGBwhvlQ0kCxYqlNCKtjUJ179jgqPi8sP/9jjPC/EDzB/wJfXxBKecKRvf3@vger.kernel.org
X-Gm-Message-State: AOJu0YweL+HUUQnhUyTwD6mneHPB/bnG8vgOOx2C7EvYzMxqoR5uS2Vc
	uro5hTfqN6rfIgOKAKvaXXvcdW7c8CqfbgZgrWrvsRDtlD7LjIEkxZQJvXT5F+kKrtw=
X-Gm-Gg: ASbGncssNi7KjUGh5aQC3gW1+gG5DnquMxGmH/luB++ajU7YL/VzdP5+UPMmnjz0Vmw
	7AYuwbO3kPJnSUwlD9SCHoHnbJuyNfcNAqQ8ARMWXUWNI+ojU8a8xm5e9yBrCKI+zSsyfsoemI5
	V5f0XLAeqs5aLgBcrPL6I8lfZ0HiiiXK1CnXIOoAlzDMDhDFd/7UsiY5f5cEnz5mWbpJM10NpcM
	+A7bsOnhGk1zXbsrC/gvJnjO97z/ycuUiHG80XMs+reHEmkDSbqCiPV+f1+9JBtjV8sDa3oD8pk
	cEamnNoHDUWBumBWn7iC8/Wp3AyeCc1LAej9BSIlflH9j75exd1KWSdZexjAPyD0MJhLhWv/Yk+
	xJ9vFkl8+EYnaYmOpF1+o5wQeFIR/XnbWIapxkiA9UmKyAAUoHQzC
X-Google-Smtp-Source: AGHT+IHF5IlDl81hhWyikMX5E0qyEzULKekaiiDeU818Ht7Ddn8on2/kQQ7mJhhr2YOOLfwqnUuxuw==
X-Received: by 2002:a05:600c:630f:b0:46e:1c16:7f42 with SMTP id 5b1f17b1804b1-46e329aec2dmr28177585e9.11.1758794643994;
        Thu, 25 Sep 2025 03:04:03 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:03 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v7 3/7] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Thu, 25 Sep 2025 13:02:58 +0300
Message-ID: <20250925100302.3508038-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas USB PHY hardware block needs to have the PWRRDY bit in the
system controller set before applying any other settings. The PWRRDY bit
must be controlled during power-on, power-off, and system suspend/resume
sequences as follows:
- during power-on/resume, it must be set to zero before enabling clocks and
  modules
- during power-off/suspend, it must be set to one after disabling clocks
  and modules

Add the renesas,sysc-pwrrdy device tree property, which allows the
reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
controller PWRRDY bit at the appropriate time. Along with it add a new
compatible for the RZ/G3S SoC.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- dropped Tb tag as it was reported that it is not valid on bindings

Changes in v6:
- collected tags

Changes in v5:
- fixed description formatting
- collected tags

Changes in v4:
- dropped blank line from compatible section
- s/renesas,sysc-signals/renesas,sysc-pwrrdy/g
- dropped description from renesas,sysc-pwrrdy
- updated description of renesas,sysc-pwrrdy items
- updated patch description

Changes in v3:
- none; this patch is new

 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 41 ++++++++++++++++---
 1 file changed, 35 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index b0b20af15313..c83469a1b379 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -15,12 +15,14 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
-          - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
-          - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
-      - const: renesas,rzg2l-usbphy-ctrl
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
+              - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
+              - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
+          - const: renesas,rzg2l-usbphy-ctrl
+      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
 
   reg:
     maxItems: 1
@@ -48,6 +50,20 @@ properties:
     $ref: /schemas/regulator/regulator.yaml#
     unevaluatedProperties: false
 
+  renesas,sysc-pwrrdy:
+    description:
+      The system controller PWRRDY indicates to the USB PHY if the power supply
+      is ready. PWRRDY needs to be set during power-on before applying any
+      other settings. It also needs to be set before powering off the USB.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description:
+              System controller phandle required by USB PHY CTRL driver to set
+              PWRRDY
+          - description: Register offset associated with PWRRDY
+          - description: Register bitmask associated with PWRRDY
+
 required:
   - compatible
   - reg
@@ -57,6 +73,19 @@ required:
   - '#reset-cells'
   - regulator-vbus
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g045-usbphy-ctrl
+    then:
+      required:
+        - renesas,sysc-pwrrdy
+    else:
+      properties:
+        renesas,sysc-pwrrdy: false
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


