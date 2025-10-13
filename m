Return-Path: <devicetree+bounces-226219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B7225BD613C
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AF6464E4AF1
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A4C42E8B6F;
	Mon, 13 Oct 2025 20:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nok+NFCa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF96259CBD
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760387384; cv=none; b=pmOOxLkugCLJ2dvL3AcnGgCAP5/spymwF2Q2/rdqpu1Nft8iJx+SHbxvii1dgs/tUSB27lduyGj2hmR6kbmHUjt90jSvbmbGj0rNThenjdDqLimJzhNfZEd9Q5pr0LcYa+FJzs69vu3n8LP0zHheOFTSav8RLclFcvdfY7UP1xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760387384; c=relaxed/simple;
	bh=O3sjHqPKZvPryclcAtYDdF3ZqsAaj80IFJVAwmjqhOk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=GNjrSqSPQvSCyJtz/3vyTmkw34pFkg5Rh7gRIg/F1cP3E08Zjh/XHGTFM6ySVIKnxfVLFD7Lkum3ReKtwO/xVAFt6gX3ppwwjo/MYDJEr2JYo6ff7gAshfzS5CTdUWhhIr0V0tx9mAyF4YfOsEkmUa7DnsZlpTi0eI9t/PhspcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nok+NFCa; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-63b9da76e42so3060338a12.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760387381; x=1760992181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iR0fsHNiPQ1UVnaZ1HfgIJ1f2fHYSU9iwDMphARM/Aw=;
        b=nok+NFCadDrPUsBUpqOm3gSK6fMRzMWYRjNPgPM83N+cJd9wlETz+ZLR/XgmA94Qk4
         Yg9CxRMUcjPiXNOAoosInKtCC7OJ1n96xTHzAcOfvjWmIIGxZVL0CVyjaJclJ18RLm2F
         qaL1hhcHUYQJXHWBNTUf7fbBTWE6svwgHHRPBJ2nRc1FL+vQ8QN17dYul2QhN2iLnCQ9
         4353ln1oK+cZvJCx9qYDTuVryoQuGPjFDUcSZFRZhSO1FtzR0usZjgZTHOOFl0wL2d8+
         IuBWESq4G4bqXxNi/KD16ZbNlnvRJd2LeTUc8viZdHWKykKliYD04UQE5mBcGPfjW7qd
         i2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760387381; x=1760992181;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iR0fsHNiPQ1UVnaZ1HfgIJ1f2fHYSU9iwDMphARM/Aw=;
        b=JF3hhm2IMI/vwWC2PQ1fZqDRf97+v1nIEkoS6oO2yIYU6G0xkSj4WKDcBcfL1SS8ga
         DYd/a7zVgtlKW/b0cSqJ1aZW9Utaomhp1G/6hrb2KOVyE9SDUI/BC49M9Oo6IlEJsxW5
         +qdbOavT2rjQyPomBDlmb1ICoZZ2Af0RC2RSF81neaMq5PQQhP6yM/oUpv559tAgqyF2
         dxbKx8tV6bIpljnkfQIpxsp5BBPiFvhZkpxeJLVuOmtHqyKp52eUHeSKeKbXQ/JPlNr9
         RUXdcSwHWXMa5B6+lePZ4tWahlrQSfOviXXSauIEr/MWUWqHgORXlR4RiUj90mmusBWN
         0VLA==
X-Forwarded-Encrypted: i=1; AJvYcCWe3lt6/SZqcyNsZQ+WQaGHccwn8rAGLppP0plhqujKBpzeSCK4o866dSsQRB5zpih0AKOfL1mBKnX7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj6Kio4K/lvCClIhbJAWRhFIZ7aA/3DFHo62PT1dxLvQy1q9OT
	MVNB7+kY5Xgf7kigBfDo3P72qjfFMRlHc+9EdQ9OHbaSTiCtV2erz6X/
X-Gm-Gg: ASbGnctgw/rcKSaq9CCuCiub5OEqVWlKMAbAhGLaev97NUQGVtODVtl7x3QYNFIb9As
	mgiCA+BEI2KUa8Vjtka459drYOzPCHPu6Zr5C0XRgCgEaYqO0N4uTVlnUiUiNq7PAaYesQ1IdD3
	unZD2T2y1gBCr3raIZbPysoorWhyOF34Sn/rvHW+cmsCWREAjeYqZQz3MgZk0uawgfuCp6Klkb7
	euHH0nwUP3SAfs6gNhWJckGOZhMHxbkjVUU04EfLh04Wz6xJX0jh905M1boSgv3qnm98DPPRkCV
	plIFNNuUwq9S6sibMWXCV5LAjHxJFAMXNXVOiZj83WloG+INB9AMUvXZgab6i0MeZm3iJ1Yt7Q0
	Ir5K0cGISoRhkcOPDtFwnxUZmTcnKBge4u3+/V/MbBND3tFDy14sbn8ywtecnioHJtOeVqfZZ
X-Google-Smtp-Source: AGHT+IE4C6XBf1ur1wKDMuZSftBpMbp8IouKlbrcZ7YmTNgcNU38jE6vIkZhdaShz85S1k0qGXFvaw==
X-Received: by 2002:a05:6402:5216:b0:617:9bff:be16 with SMTP id 4fb4d7f45d1cf-639d5c3eb74mr21736671a12.22.1760387380474;
        Mon, 13 Oct 2025 13:29:40 -0700 (PDT)
Received: from localhost.localdomain.pl ([89.151.31.85])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c321341sm9541150a12.38.2025.10.13.13.29.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 13:29:39 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH net-next 1/2] dt-bindings: net: brcm,bcm54xx: add binding for Broadcom Ethernet PHYs
Date: Mon, 13 Oct 2025 22:29:43 +0200
Message-ID: <20251013202944.14575-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Some network devices (e.g. access points) come with BCM54210E PHY that
requires being set into master mode to work properly.

Add binding for BCM54210E as found in Luxul AP devices (600d:84a6) and
the "brcm,master-mode" property.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/net/brcm,bcm54xx.yaml | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/brcm,bcm54xx.yaml

diff --git a/Documentation/devicetree/bindings/net/brcm,bcm54xx.yaml b/Documentation/devicetree/bindings/net/brcm,bcm54xx.yaml
new file mode 100644
index 000000000000..3ad226efe21d
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/brcm,bcm54xx.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/brcm,bcm54xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Ethernet PHYs
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+
+properties:
+  compatible:
+    enum:
+      - ethernet-phy-id600d.84a6
+
+  brcm,master-mode:
+    description: PHY requires setting into master mode
+    type: boolean
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@0 {
+            compatible = "ethernet-phy-id600d.84a6";
+            reg = <0>;
+            brcm,master-mode;
+        };
+    };
-- 
2.51.0


