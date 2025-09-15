Return-Path: <devicetree+bounces-217372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4902B576F2
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:46:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEBEF18905DF
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F9192FF669;
	Mon, 15 Sep 2025 10:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="axDCDjJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1302FF140
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757933166; cv=none; b=tezqe8nVrhakefy5KkyQIV48ETa23r6j39DpNrgxdL5nM0gw1QWPBRjCPXpe6SlylPkz75nRr/8jP10Zt8LWE0Am4qJeDa+D9Nsz3aGd+TFf7yPjJZjIqOOyoyI0KEWfRhT8l0N/mzfaRvbVJZIych0c9/go+YppWAwc6pIFx0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757933166; c=relaxed/simple;
	bh=713ajadFd4F/Cc3GrDLPLKiLlHqRtKfSRnBjZWa0frE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=haWGxE48g1PoYz7Fr+aHi7YvYTtmI5Dm6IWlEzya0I9IVEk7D+zW3wvrkWog88zFK0sO0uo2e1sfp4y9UiTT344s6VQ1GlqgKymsA3DnwrFxqL+qToTXpM3jCasCrtQ7IEzqm2b7TVDSr0ewNZmQSHHb3zGWy0CYKsY96GWZu5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=axDCDjJ0; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45f2a69d876so7667575e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757933162; x=1758537962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J4UfTitWr0/SY0YFizPV9dalGTR12rbqo6S3iSVpAJc=;
        b=axDCDjJ0YmcivZuiTOtO0AKrzvFm6MDKk4CFNklOx2eyywA39Bp8rdNRuSrOakP5V2
         Qx8asgL7FPYvDPV7EHJK+G3XJB6FiHyupB178LuEGrTE8nqn/Ma12aY3UHcjEO68aYUq
         YbKyGzC1ZxiJJYH4o4KXas/KAyfmIWCyv1D4Pm9Qfc88RD7RSjGLKfIDTtjlBkqkKi1g
         zqHkJSJetMm+mEASJxMKz77qIqjKcrMUEiObFaA1UCEwBuiz0JDTxXgnN62/R1aFtXBt
         QieWB4PX81GK/uwEJ0Oq5Cq4mFsGFr+6J9lO7R2uJzIQQBOmG8Not10TaR5wrmk2VQmd
         eipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757933162; x=1758537962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J4UfTitWr0/SY0YFizPV9dalGTR12rbqo6S3iSVpAJc=;
        b=rUpOYPeTroP0xaGuMvThHumDE8430qndb8JbGgZIGzNEtkFYeP9w521ayK3Wj+yhm1
         LFRqe7/xueNUmydv6KPVq8ciOCrEoq1XIvVgJ62FWeVuKwJ1bR36Dhx6A7wNkHjnz60p
         I3DDNdm0aRPb9iTrwtOpaM491BgrjcCOIiyokXx4txXfgThGNQFYyRQkYmeCGGCh3vXQ
         pwTUPLqGBUVdPm4t9Tm3F/3MKgRjExSMjAZBt69M1Y0wgEYbEE906W6+/BlAi4RFm+46
         b0GWYXmx9aG/yKalbg8mh5m5QGuvMoeHvIIVrc5RcrZBJnHwTOUs5mstKc4/d+uK0Ig5
         TBjg==
X-Forwarded-Encrypted: i=1; AJvYcCUVEZC8yaMoAN8rbXwZAm3qcl9wgBLH1iPPix0C2mCs3mniTF6vocSA5nkVR4Z0MTZQOIjcJ1Yj01zT@vger.kernel.org
X-Gm-Message-State: AOJu0YzhdSjwW2W/cThaYTzwdeZNvX2K3Nlzw1GTQQUWdPcJJb4B2kk1
	5hzEkeZJNcBE9+HmNSQ/8E1j9LCRHhR8fNRzldNM4KV6XN2d7AMvQ3Aa
X-Gm-Gg: ASbGncs4vVjrxPZU6pBYjD8pCVd81uoH03aH/eInUlf94gQ1FV8zStXMKHGa5RHRC2t
	ZejKp4Gx5i0km7uqTzzWZOjEznWQ9gHDMl3CcXzOVqLgcEZHR3yRzr2LlCsRAa4l1xQH4hDW6uq
	ToU9Bg7v43hdUTrFdYuheU29Z5DogWN2Ek97KI1jw/dR2hEVGbzyTFvMDAuZT0NlRAc5E0s6jRp
	rNzVvFXhgF3Omya38wuH7cW91oGdEG3zLGXMdWmRQll8ezqHi/N8pqk/O+jrWIjwU6YKAx5GoTi
	tI365v4s+jRKEB2fkWNNqa+zrz/ukq//2XXPWs5MTwLEkn45aBHpxZ6VhwEDLx23GmMqo9eT/k3
	Fky7SpiRH853/x3F0SKNRB1XR1pTdv6CZKgJ3L9yUf6AlK6so3tLdH86CsTBMqWlmI9asJOs=
X-Google-Smtp-Source: AGHT+IEXNZcoVd0GzgGmN5xy38B0YlKF6tMdJTyKwSotC55HsiTkVEoFjPfwlkbgqGZKHOIXVx84vA==
X-Received: by 2002:a05:600c:220f:b0:45d:d9ab:b86d with SMTP id 5b1f17b1804b1-45f211feea1mr95031475e9.31.1757933162216;
        Mon, 15 Sep 2025 03:46:02 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45f2acbeee0sm67163365e9.0.2025.09.15.03.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:46:01 -0700 (PDT)
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
Subject: [net-next PATCH v18 3/8] dt-bindings: mfd: Document support for Airoha AN8855 Switch SoC
Date: Mon, 15 Sep 2025 12:45:39 +0200
Message-ID: <20250915104545.1742-4-ansuelsmth@gmail.com>
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

Document support for Airoha AN8855 Switch SoC. This SoC expose various
peripherals like an Ethernet Switch, a NVMEM provider and Ethernet PHYs.

It does also support i2c and timers but those are not currently
supported/used.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/mfd/airoha,an8855.yaml           | 173 ++++++++++++++++++
 1 file changed, 173 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/airoha,an8855.yaml

diff --git a/Documentation/devicetree/bindings/mfd/airoha,an8855.yaml b/Documentation/devicetree/bindings/mfd/airoha,an8855.yaml
new file mode 100644
index 000000000000..647d6d4c4c6f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/airoha,an8855.yaml
@@ -0,0 +1,173 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/airoha,an8855.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN8855 Switch SoC
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  Airoha AN8855 Switch is a SoC that expose various peripherals like an
+  Ethernet Switch, a NVMEM provider and Ethernet PHYs.
+
+  It does also support i2c and timers but those are not currently
+  supported/used.
+
+properties:
+  compatible:
+    const: airoha,an8855
+
+  reg:
+    maxItems: 1
+
+  reset-gpios: true
+
+  efuse:
+    type: object
+    $ref: /schemas/nvmem/airoha,an8855-efuse.yaml
+    description: EFUSE exposed by the Airoha AN8855 SoC
+
+  ethernet-switch:
+    type: object
+    $ref: /schemas/net/dsa/airoha,an8855-switch.yaml
+    description: Switch exposed by the Airoha AN8855 SoC
+
+  mdio:
+    $ref: /schemas/net/mdio.yaml#
+    description: MDIO exposed by the Airoha AN8855 SoC
+
+required:
+  - compatible
+  - reg
+  - mdio
+  - ethernet-switch
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        soc@1 {
+            compatible = "airoha,an8855";
+            reg = <1>;
+
+            reset-gpios = <&pio 39 0>;
+
+            efuse {
+                compatible = "airoha,an8855-efuse";
+
+                #nvmem-cell-cells = <0>;
+
+                nvmem-layout {
+                    compatible = "fixed-layout";
+                    #address-cells = <1>;
+                    #size-cells = <1>;
+
+                    shift_sel_port0_tx_a: shift-sel-port0-tx-a@c {
+                       reg = <0xc 0x4>;
+                    };
+
+                    shift_sel_port0_tx_b: shift-sel-port0-tx-b@10 {
+                        reg = <0x10 0x4>;
+                    };
+
+                    shift_sel_port0_tx_c: shift-sel-port0-tx-c@14 {
+                        reg = <0x14 0x4>;
+                    };
+
+                    shift_sel_port0_tx_d: shift-sel-port0-tx-d@18 {
+                       reg = <0x18 0x4>;
+                    };
+
+                    shift_sel_port1_tx_a: shift-sel-port1-tx-a@1c {
+                        reg = <0x1c 0x4>;
+                    };
+
+                    shift_sel_port1_tx_b: shift-sel-port1-tx-b@20 {
+                        reg = <0x20 0x4>;
+                    };
+
+                    shift_sel_port1_tx_c: shift-sel-port1-tx-c@24 {
+                       reg = <0x24 0x4>;
+                    };
+
+                    shift_sel_port1_tx_d: shift-sel-port1-tx-d@28 {
+                        reg = <0x28 0x4>;
+                    };
+                };
+            };
+
+            ethernet-switch {
+                compatible = "airoha,an8855-switch";
+
+                ports {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    port@0 {
+                        reg = <0>;
+                        label = "lan1";
+                        phy-mode = "internal";
+                        phy-handle = <&internal_phy1>;
+                    };
+
+                    port@1 {
+                        reg = <1>;
+                        label = "lan2";
+                        phy-mode = "internal";
+                        phy-handle = <&internal_phy2>;
+                    };
+
+                    port@5 {
+                        reg = <5>;
+                        label = "cpu";
+                        ethernet = <&gmac0>;
+                        phy-mode = "2500base-x";
+
+                        fixed-link {
+                            speed = <2500>;
+                            full-duplex;
+                            pause;
+                        };
+                    };
+                };
+            };
+
+            mdio {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                internal_phy1: ethernet-phy@1 {
+                  compatible = "ethernet-phy-idc0ff.0410",
+                               "ethernet-phy-ieee802.3-c22";
+                  reg = <1>;
+
+                  nvmem-cells = <&shift_sel_port0_tx_a>,
+                      <&shift_sel_port0_tx_b>,
+                      <&shift_sel_port0_tx_c>,
+                      <&shift_sel_port0_tx_d>;
+                  nvmem-cell-names = "tx_a", "tx_b", "tx_c", "tx_d";
+                };
+
+                internal_phy2: ethernet-phy@2 {
+                  compatible = "ethernet-phy-idc0ff.0410",
+                               "ethernet-phy-ieee802.3-c22";
+                  reg = <2>;
+
+                  nvmem-cells = <&shift_sel_port1_tx_a>,
+                      <&shift_sel_port1_tx_b>,
+                      <&shift_sel_port1_tx_c>,
+                      <&shift_sel_port1_tx_d>;
+                  nvmem-cell-names = "tx_a", "tx_b", "tx_c", "tx_d";
+                };
+            };
+        };
+    };
-- 
2.51.0


