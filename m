Return-Path: <devicetree+bounces-227982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21937BE68E0
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 08:11:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD0A94FBBAB
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 06:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 990B33101DF;
	Fri, 17 Oct 2025 06:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X4pbPrIv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BE130F928
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760681454; cv=none; b=t/Bh1wrfXygQbagyjVg4rYcabEHEzbI4Xc/7oobQFsZgS44OjnLuNzALFuy6Qximj158cfnu0jvdxg8Bk3X41JEtkB7MgXX6q+M3u0YhOsFuM6lE2IM9MJDexPlDekco9eEAsjjXG3yqqnzMXTK3EIUPe7/kp53nyYjJxU8Uzhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760681454; c=relaxed/simple;
	bh=b6ISdhsQWDnAo4VTafE6aUOK0zWblvBU832ZglgHc1s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FUEwUtisb53I3sFCgWSjHw7GwIe4HHdnUYrpo5aqFjvuMFxRKsf30hunrjdJiBSS1eOYKEawAMM4aOxhgqzTuSgmvPhvxYzEo1VAlmPDQxw11X66p5jvt2a/jEGjpv632jjlGY6p+pTw3jYfRIfCBjr++wEwjdi6rIQ1AWKZIqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X4pbPrIv; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b593def09e3so1083002a12.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 23:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760681451; x=1761286251; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SFqmxzP975EbfL7QM6VF330m98TZjzZeICik0AHkBHU=;
        b=X4pbPrIvU28tvYvGPFqO/ZG9NHHbIPTiBTQRlx9K0FU8Wp20GeWdznKCrKOjj09Aw1
         xzYPGg/QFXqXN0NEimK9c7PURThozw2g6gtwKkRJoKGLeM9M1vTK4tFJruoOwyqFSAeu
         AmwyWXsaTePsJ5Psk+1xpN+REhdmlE9V1eYx0Rdb5AuzCRligQIncr2X/9TmCQU2x5AS
         rk9sLhXRoFpJzvPSD7ivkHeAIW+NqGjj7e26FyH3wEaBl62JQyQKQAactV8dFGuNmZCh
         P/IJBTFuekLcLu4uQYrOX5GOZudTqDTrOXlW2dfTK79drzkTAADY6oEeJq23zjUkEDPj
         GEKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760681451; x=1761286251;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SFqmxzP975EbfL7QM6VF330m98TZjzZeICik0AHkBHU=;
        b=jX0c+w+sbw6GE4UyZ2D5DiwumqUTp44x4/cSy8tAhhwghiXl9r2L2ojUOMMpWMK4x6
         bjlMla6DN6eFZYTGiTEOxtpkMACxzz35ruUG8kG8zTU6tXk+HE1FbPeTzIpgzA8BAy6s
         UtDH14ciCGs+SURwRUU+rzQAlajAsA5/DqYxYVrVs2bwMtwdtD490WzCraDWSXRFub14
         hyX7IFEb/Bz8pRLKAMODQxn8EnSwSUkatwQiAuGTgT9nkeBFDxIDlQs3f3oJcqJ1ie/e
         m260pE/reUhK07hJdimz9gFKOH23ncuPXZ7jf71XodgUdesBgt6mxTFbuDhrvTVLKMeN
         lzoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIaIGpFW8071sVUmLH1rr59GfvEG8Ggalb5IdG2TKvfnXgyfmP67cGEAbCw9L9C0lnOdOQ5h1nCGZj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/uDJBwgBaB96oIkcaK6dKjBWaeHwKuPCUaCwK7q+nEUm8MgJr
	lgm3ko7JLFNUV3x5eouu+GQMtKyMlgRzRP8zX9s7bF1/cI3scwoYGfhN
X-Gm-Gg: ASbGncvOUXM/Qkn56EIyqXQ0A+i8TfNya/W/hOtHbaj2FL0n42+q11RBTWRiqG4JrVi
	+chJtkbxQ63bd4GuEBmV88OLEop3WkZ9xjpSepqF+RtD5KCv1LRl3JZKULggSMIxCUPlS+yHvO8
	UPV9nK362LzKjz7vFGIngX9Uhz+c8yOPL4xw0thO0PYl2Yof2cr1NIo+RheUKjFADzTRdOKQw2V
	+flcG9/aHuq9bHtbSdRvRKJowrbZka22RGXtWcF/V6n3XTfL2ENWqvqxrqseO1aEgY2t6D4Fbgg
	DxMvMeRg96IXmAhrfvZU/EOvqyJu0bJPex4jwZtZYWIrXXWXTIPplRC3YpqeV9m6TgFC2NUlBRU
	jvBj2ZmZnRFdMQ+4bnFJaXbmHtG/pTgjbtdZZETqfKWKFkNO61t1ZnyKXpM7/TM8HdpYUvBQ+vO
	fq+kYZFXMTQFjw/r36tg==
X-Google-Smtp-Source: AGHT+IEbfafOqlHvmubzjeFhwMrRL++E4DsnlG2NaBtp2XHRb+HPHPG4L/g+P1Lb6TZAWQgcyCLU8A==
X-Received: by 2002:a17:902:d503:b0:290:91b0:def4 with SMTP id d9443c01a7336-290ca21635emr33066635ad.29.1760681450983;
        Thu, 16 Oct 2025 23:10:50 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2909938759dsm51315475ad.49.2025.10.16.23.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 23:10:50 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: netdev@vger.kernel.org
Cc: David Yang <mmyangfl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH net-next v14 1/4] dt-bindings: net: dsa: yt921x: Add Motorcomm YT921x switch support
Date: Fri, 17 Oct 2025 14:08:53 +0800
Message-ID: <20251017060859.326450-2-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251017060859.326450-1-mmyangfl@gmail.com>
References: <20251017060859.326450-1-mmyangfl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Motorcomm YT921x series is a family of Ethernet switches with up to
8 internal GbE PHYs and up to 2 GMACs.

Signed-off-by: David Yang <mmyangfl@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/net/dsa/motorcomm,yt921x.yaml    | 167 ++++++++++++++++++
 1 file changed, 167 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml

diff --git a/Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml b/Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml
new file mode 100644
index 000000000000..33a6552e46fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml
@@ -0,0 +1,167 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/dsa/motorcomm,yt921x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorcomm YT921x Ethernet switch family
+
+maintainers:
+  - David Yang <mmyangfl@gmail.com>
+
+description: |
+  The Motorcomm YT921x series is a family of Ethernet switches with up to 8
+  internal GbE PHYs and up to 2 GMACs, including:
+
+    - YT9215S / YT9215RB / YT9215SC: 5 GbE PHYs (Port 0-4) + 2 GMACs (Port 8-9)
+    - YT9213NB: 2 GbE PHYs (Port 1/3) + 1 GMAC (Port 9)
+    - YT9214NB: 2 GbE PHYs (Port 1/3) + 2 GMACs (Port 8-9)
+    - YT9218N: 8 GbE PHYs (Port 0-7)
+    - YT9218MB: 8 GbE PHYs (Port 0-7) + 2 GMACs (Port 8-9)
+
+  Any port can be used as the CPU port.
+
+properties:
+  compatible:
+    const: motorcomm,yt9215
+
+  reg:
+    enum: [0x0, 0x1d]
+
+  reset-gpios:
+    maxItems: 1
+
+  mdio:
+    $ref: /schemas/net/mdio.yaml#
+    unevaluatedProperties: false
+    description:
+      Internal MDIO bus for the internal GbE PHYs. PHY 0-7 are used for Port
+      0-7 respectively.
+
+  mdio-external:
+    $ref: /schemas/net/mdio.yaml#
+    unevaluatedProperties: false
+    description:
+      External MDIO bus to access external components. External PHYs for GMACs
+      (Port 8-9) are expected to be connected to the external MDIO bus in
+      vendor's reference design, but that is not a hard limitation from the
+      chip.
+
+required:
+  - compatible
+  - reg
+
+allOf:
+  - $ref: dsa.yaml#/$defs/ethernet-ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        switch@1d {
+            compatible = "motorcomm,yt9215";
+            /* default 0x1d, alternate 0x0 */
+            reg = <0x1d>;
+            reset-gpios = <&tlmm 39 GPIO_ACTIVE_LOW>;
+
+            mdio {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                sw_phy0: phy@0 {
+                    reg = <0x0>;
+                };
+
+                sw_phy1: phy@1 {
+                    reg = <0x1>;
+                };
+
+                sw_phy2: phy@2 {
+                    reg = <0x2>;
+                };
+
+                sw_phy3: phy@3 {
+                    reg = <0x3>;
+                };
+
+                sw_phy4: phy@4 {
+                    reg = <0x4>;
+                };
+            };
+
+            mdio-external {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                phy1: phy@b {
+                    reg = <0xb>;
+                };
+            };
+
+            ethernet-ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                ethernet-port@0 {
+                    reg = <0>;
+                    label = "lan1";
+                    phy-mode = "internal";
+                    phy-handle = <&sw_phy0>;
+                };
+
+                ethernet-port@1 {
+                    reg = <1>;
+                    label = "lan2";
+                    phy-mode = "internal";
+                    phy-handle = <&sw_phy1>;
+                };
+
+                ethernet-port@2 {
+                    reg = <2>;
+                    label = "lan3";
+                    phy-mode = "internal";
+                    phy-handle = <&sw_phy2>;
+                };
+
+                ethernet-port@3 {
+                    reg = <3>;
+                    label = "lan4";
+                    phy-mode = "internal";
+                    phy-handle = <&sw_phy3>;
+                };
+
+                ethernet-port@4 {
+                    reg = <4>;
+                    label = "lan5";
+                    phy-mode = "internal";
+                    phy-handle = <&sw_phy4>;
+                };
+
+                /* CPU port */
+                ethernet-port@8 {
+                    reg = <8>;
+                    phy-mode = "2500base-x";
+                    ethernet = <&eth0>;
+
+                    fixed-link {
+                        speed = <2500>;
+                        full-duplex;
+                    };
+                };
+
+                /* if external phy is connected to a MAC */
+                ethernet-port@9 {
+                    reg = <9>;
+                    label = "wan";
+                    phy-mode = "rgmii-id";
+                    phy-handle = <&phy1>;
+                };
+            };
+        };
+    };
-- 
2.51.0


