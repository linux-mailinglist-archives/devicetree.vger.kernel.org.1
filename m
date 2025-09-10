Return-Path: <devicetree+bounces-215481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE998B518CB
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B457B3A57B5
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3277A324B08;
	Wed, 10 Sep 2025 14:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="c430aQio"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0472D322A1A
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 14:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757513011; cv=none; b=iBHXW0QaNUUJ06m83oNqxmx/Hp23+1+xslW/25CmeZou1oP/oh/9t/ZSi2ylqaulDDz0skK1GF4nSON3C8vg6JM5FzgsiYRGPrbYFqv2jK7qLRBF5JTIb2dCLv+qBcR8EXJdfvaBw4S5uROCjQtSpYEynnHJFBO2sANVntxQlhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757513011; c=relaxed/simple;
	bh=wQK73c6sveRXcpQRikwfdxno7S+vuxPzSo++euQO9OA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GZpPezS7vRj/6rVS7J1FG5uXQNT7JwKiw0rLGNhe+nAO37irmCRpCiVVIk3YlgkLZTikMsZ3pxBE4+jZQceWV54rgQrfpBT8JLjBOLRdT2klSCVKSlhA2sIPtQp/43BAft+ht+QswweQKGG+s7K+fwPx+w0GxpK4QHLsL8nYtkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=c430aQio; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45df0cde41bso13015285e9.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513007; x=1758117807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2v/qfrJwcDhrBtg7MhE4eAOkQayuMMHztt7+WMK54yY=;
        b=c430aQioNO3/4hCcqa1xteIWtp9OGPTVdgL/lZD+RdDelnF674+ZHEQme1byqe6gaa
         xy90KX6hByGUZdzv9rEkDwb9hVVt3pyWLZDz/5br44dlRGq1D4nmgIv3ewCngAoltyZX
         fAWzYrIjv2BSPUNw43nQuIpFx4ZN5ddVA9f1iBV8S1rrNcQI/7tER6YSEqlhA6JA6c9o
         hRf5/XUfMIxbwar/yhL7g176SIpRrS9Ak5HHxsdoEzLZ9WhJZ/7zezeZeU68RBPY29vx
         lXM2yNx/rPlPNuOmxGp5CHp3Sj1M64q5Ofr4aKuHqkaQbHpdFgU1VFrVeJyk2RkGFnTR
         MsBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513007; x=1758117807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2v/qfrJwcDhrBtg7MhE4eAOkQayuMMHztt7+WMK54yY=;
        b=EMcAlp/XIYlFYWDMQ3n2iPuHLsB8o7AG/U3WjBz/KZIybpzr7Vjuu42MPrQSSJMvnx
         k3mbn8MrOQ5/WDtM+p7tiuVXjk6AuhITBMNqZLTbRNU1cDE8E3YV5JWCMggWmw9gNPl/
         IshO+diwqtDeR1waD0EsUn396cbx53fxVb/berBpG0SkF691fszPOeW/rFeOZRdo1L0j
         BT0+1z/q237f5vbl3B6e+Yt4Qo0EoLjPen0sWB42HH5ZH78ZYYDZ1elJMH3ZjEZfZaMt
         SHLRds8oDTJschWsMB8rtuom8MbhF/buOA/lnHWWyrT0Re5dVlBjSfG4RqelQw186pcO
         Fa1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVL6uHhR0atkrKkbqVl5xHIGKU6Q9INiQgGhKzp0kHzwS+Cb+X0k+teZPJCftm+rGM7w+fVx/Aqu+7X@vger.kernel.org
X-Gm-Message-State: AOJu0YxCl147BtqjfjZNDFfot1IXRo6uzuL+7Unx+6l2E8u7BC8UNluQ
	mC2wzRyC4u9rDx8cGxwbw5PAfeqZpP2bnR5BhwikJOHd8td9H4X+kM4nVIgCJLps9NHv5YTorgZ
	GUKIF
X-Gm-Gg: ASbGnctlnEEOn+oTdhtP6Ai0ii48s66wvS/s0+tRTbGnrB14CtaOj0L94WL9j/rEChZ
	QaAD4M0YXlcMzLG4fZREOAEfQwF9Swbs4NbPGs3aM/mknYtq6yi0n769RlsaBadDMh3eod1P6ft
	XSk11P/UVsRdYdm3wVa2euI76HmEI+HyZsgBWp6zS8X9KHcFWR0R1EhRB7COlgDv0OhtxZYPLX7
	gaQNkUjsHof1vZF4bxFljxND9FAG2/Up3UzXWRz2mwdgNDBHhK7EJvYSmeKJ9SIKQPrMiCwY2b7
	8/MbTlHPeJQoMfOXch/FiFM87YbC7SiIlK8zEMpkxXwtD2kL7UabqtApj3KyJ+qWQ/qYqLYqwPc
	oy1N4TKrKo0KbRIeeQJoMjmx41DXq8f6qQtCMOov8eP4HSYBJH8imfxa/vEwSgnc=
X-Google-Smtp-Source: AGHT+IER2la6Lcfz8bP/iHB1RQ8PkQa4R+3KjeerQ7zRfv0QQDireuWsIfKEUQrrW3yVDeUhRWK7Sw==
X-Received: by 2002:a05:600c:4587:b0:45d:d94b:a8fc with SMTP id 5b1f17b1804b1-45ddde8c757mr179992855e9.16.1757513007223;
        Wed, 10 Sep 2025 07:03:27 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:26 -0700 (PDT)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v6 3/7] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Wed, 10 Sep 2025 17:03:01 +0300
Message-ID: <20250910140305.541961-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
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
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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


