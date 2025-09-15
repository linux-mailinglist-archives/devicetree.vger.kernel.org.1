Return-Path: <devicetree+bounces-217370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BD1B576E9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0EA3166A03
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 943D72FE07D;
	Mon, 15 Sep 2025 10:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ddGa+s/J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9573D2FB99B
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757933161; cv=none; b=ppUF+DT4PWCV46uRjmt0yhJbSAq1HNZ+9l9f7Oi6qsKsBjG8optc8Gzi5Ez6D/wJ3HAGp7VsUK3zUIw8h8zOBkgNydhj9gEtUAp/iHetOLXwPJ48rv9wbCuRz2ZErEPRbXr/zmDhaaTuMP3UUZXxcSEns1xXmw6Zy9OmnIXAh+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757933161; c=relaxed/simple;
	bh=bYsrD9pb6lWoudFnnX5zcBVuGLbzlrIhsoX7llOaTLI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MavawqGdLbhkeyON5wEMXVcbLrGqq93N9IQ8D34I0cBCBM/AJOgNTU5JH3v0STrZhD/crP4D+FX/BCUkwgYnUJCX5xDxQpKiab1O9UwRSsix/U04xuf23NHLtgFkriCpyxSZXUth5MluXOjW9AZiUCtNWq4at4NN8cI6ADiyHok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ddGa+s/J; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45dfb8e986aso42836135e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757933158; x=1758537958; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mrJZHKOiBKCtVxeIPXfxHsVOtkQ0i/mxMKjggmAExVM=;
        b=ddGa+s/JObO3Hmhzt9H7tPr7GPh4BbHaHC7vWpJDBwvvVgDSmsPWHI8u1kx58x14Jw
         TMdMesrFgrGnzoX6lhywIPknZpiOpC7Kuqin3q4G52UgS5KhJint3qjYe87Bv2NgSzni
         rQetEjt8I6J/ZqqkXtUSX3rjHMA7rGaaTlzyas3diBjg86BB9j3OFenwlHDOFBaECTkl
         pJFfkKYAywixvSPSo5xxcZpEdTI7AhOylGIaQQVjbLfgTCMmDo9BbI474TSh7WCK8Hp2
         5Z9K+0bVBAz+Sq+UOxfGZb+b5mlfXFIuNCqjreWmGNrwlGJPbrs/DC+4DK5YJ7e90Blp
         pSkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757933158; x=1758537958;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mrJZHKOiBKCtVxeIPXfxHsVOtkQ0i/mxMKjggmAExVM=;
        b=Q4Z4xbjfbwh6sONqz9NF9XteJfKDzIStrCVdEZEWruQMg/gNfnHV40J/JuuADZJTap
         i5Q806/M6/mrBkFqPInOR8Exnku3Y+bbd3glQMmz51OG9EVsiRirsnX7iHdMlWtfwk8D
         iiyRtffRenoUtmqdkY5A8BB7BT1U81qZ7X/Of96oNI8u7KGBOU3ylbjE97V469+Ex/V9
         B9CIbmk4Z/23RpMlv8LxEYO0dtZgwEMtrhbS/sECi0ddUEI7uTzt7tFXHu5EF+v4Rk1A
         U1kAcyz6i40W3ChEvnXiLK4jMz6R8IhLPSZUJSWsBSTL7G8I0JrVARvUVj4KmQI8XM3q
         h/bg==
X-Forwarded-Encrypted: i=1; AJvYcCUvJ36bGHZJ28otYZuRx64xo23kOgBZYL97njcLNCqyGvcR/PzFg2wjkYK7Ymiv6NeNj2RpMJAWKoaJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxCkmsCKNX0Ix1Z15zHYMTkpxf/UZUCSF626CVKYkoCFwj8cXRw
	aGOTYf1gTxJ9lzIt0X68zhsvjXLv7G/ibuislZfGHVq4mLY19RTP5D5r
X-Gm-Gg: ASbGnctlVn4vGT1+RbuYdahovqtIzGTNkhtcZokjXFOEHxe1bGE9aU2jHt9zbADWp9p
	DWllXIb6C2bCJ/kqolxIuCmLDmZ+XrjyZajS/dTW9bzc8EhYYvFN5v4WdVBnT4xLOqwm8VlZeEh
	pWOsX/7QnEOEQ8AHHI0ZK5gSKGbiS7D1UL9lIl7EE0ioiJcpe8pDsF7KgLN8bDiZ25RINi23f83
	rsX9pK+Yf6vb4didDv8iXLR1qtJ3iXNIKgSCBaw8rIaglWPZuRJZPnA4jL/M/j9Aaso4yRomntz
	JJsu0cU0CZZ0zQlQRh3g/JDjckYjaqn0lTqYAM4UaLZtREfXYSDJbZBG6kcwcJS7/8YBMsI3h9Y
	G4nn+FUWBOgNlUMGHr3F7BeIFIwlGBYz5R7dsKAu+iOSpTDwO5Rs8jIYgSWTuG/55RswlgfHVwM
	mBMKlrjZLQby3twsp+
X-Google-Smtp-Source: AGHT+IHWjPeBWLp7d2NNOzbpMg//aShs3TyKmf//Nm3D/I6epc4y/QQmZeCf4N50wXni+LlhRWk1Qw==
X-Received: by 2002:a05:600c:470e:b0:45f:27de:cd22 with SMTP id 5b1f17b1804b1-45f27decdb1mr84324875e9.17.1757933157764;
        Mon, 15 Sep 2025 03:45:57 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45f2acbeee0sm67163365e9.0.2025.09.15.03.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:45:57 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>,
	"Chester A. Unal" <chester.a.unal@arinc9.com>,
	Daniel Golle <daniel@makrotopia.org>,
	DENG Qingfang <dqfext@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [net-next PATCH v18 1/8] dt-bindings: net: dsa: Document support for Airoha AN8855 DSA Switch
Date: Mon, 15 Sep 2025 12:45:37 +0200
Message-ID: <20250915104545.1742-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250915104545.1742-1-ansuelsmth@gmail.com>
References: <20250915104545.1742-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document support for Airoha AN8855 5-port Gigabit Switch.

It does expose the 5 Internal PHYs on the MDIO bus and each port
can access the Switch register space by configuring the PHY page.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../net/dsa/airoha,an8855-switch.yaml         | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/dsa/airoha,an8855-switch.yaml

diff --git a/Documentation/devicetree/bindings/net/dsa/airoha,an8855-switch.yaml b/Documentation/devicetree/bindings/net/dsa/airoha,an8855-switch.yaml
new file mode 100644
index 000000000000..5ad9b9e13983
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/dsa/airoha,an8855-switch.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/dsa/airoha,an8855-switch.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN8855 Gigabit Switch
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  Airoha AN8855 is a 5-port Gigabit Switch.
+
+  It does expose the 5 Internal PHYs on the MDIO bus and each port
+  can access the Switch register space by configuring the PHY page.
+
+$ref: dsa.yaml#/$defs/ethernet-ports
+
+properties:
+  compatible:
+    const: airoha,an8855-switch
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    ethernet-switch {
+        compatible = "airoha,an8855-switch";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                label = "lan1";
+                phy-mode = "internal";
+                phy-handle = <&internal_phy1>;
+            };
+
+            port@1 {
+                reg = <1>;
+                label = "lan2";
+                phy-mode = "internal";
+                phy-handle = <&internal_phy2>;
+            };
+
+            port@2 {
+                reg = <2>;
+                label = "lan3";
+                phy-mode = "internal";
+                phy-handle = <&internal_phy3>;
+            };
+
+            port@3 {
+                reg = <3>;
+                label = "lan4";
+                phy-mode = "internal";
+                phy-handle = <&internal_phy4>;
+            };
+
+            port@4 {
+                reg = <4>;
+                label = "wan";
+                phy-mode = "internal";
+                phy-handle = <&internal_phy5>;
+            };
+
+            port@5 {
+                reg = <5>;
+                label = "cpu";
+                ethernet = <&gmac0>;
+                phy-mode = "2500base-x";
+
+                fixed-link {
+                    speed = <2500>;
+                    full-duplex;
+                    pause;
+                };
+            };
+        };
+    };
-- 
2.51.0


