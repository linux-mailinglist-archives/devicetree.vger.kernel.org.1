Return-Path: <devicetree+bounces-167142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E89D9A89875
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:45:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6A18440158
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E678C291167;
	Tue, 15 Apr 2025 09:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="I1Copvuz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA67F28934E
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744710163; cv=none; b=edeyBJWH4Ux5QJNO2jKpk0YAJjrQwOp8U3fmkyHPoJnL4tbHohJfubf41iUr+lDtmhM7QQsN2kr9k84qQe4/sYgfSkJEeMUV3lC3Pg+mWfFO6/D7PIPa93oFkJxP0c6q6qxytB5O9wffeLROvNhu7ZCpSAaW3RsXHst7gHOgDXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744710163; c=relaxed/simple;
	bh=UlpZc9cCqCpIhLMxs5zgaUafyixOE2FIeer5YHLGC3k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=agKImBVj/j8BxmjONmXmDcbRKTmaz/RPWpe2F9EHEeFS5k5l59Qgf5C6DK2RUr3micaMJQE7+4Qghsas7WGrXvsuRON2gYYNLk78B8PCHJNg7VLKrTYycPggI3jx26w049KwtWGjqenB8vKxpT6s/2nMWpHc8FL+qMKP+nbTjOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=I1Copvuz; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-301302a328bso5191029a91.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744710161; x=1745314961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WnJU5baJ5Eg2/vwwu6yMmjdlQVpJwD/xMPuO2yvaXh0=;
        b=I1CopvuzRB1tvNhGJQ8CcSz2rk4J7O6xmbOJTn46J9JNSh9hyV5XxcYTveYrmiD7EA
         SJh9CQwQbk0bm38GhXPtaquK2BaDPM+wg8Dvp5KRR0xSgBzhC9kHYoRuiUac1mCYNUFH
         Hkk3ls9UxPglE7jjZAvW58f13st0wQOsPHDfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744710161; x=1745314961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WnJU5baJ5Eg2/vwwu6yMmjdlQVpJwD/xMPuO2yvaXh0=;
        b=D5x0Q51FH/aEWMlWjLoCCECZnNaSOvfyg21I8xUS/yNYOzXEr4mB9X7x8j6+KEoI97
         DhxuqEnhFPDeyIEmpcLqlEuLh8NIvhL0aNEFIwqtptOI1l85IBqiY7FacHekrkvVrFdp
         lXdbG9Xz0KlhFaYZPJaTC7wGCyPY/IkPo5Ct1Dzj9bRDPIgBCB5Ww5nKZ38KJS6LwHlw
         KL158FMXiTMo2LXKoa0Uc1faVUTSUgZ+oBFosk39mZBwSDrB23Rpd2AXuAaHCLqK0l3M
         ZgawCvTNMhbK9kVzsuAlMYF8mUfVEzlCpbPYlst2cLWU/DCdk3LCZUou9i9kRxfVApK+
         Gbgw==
X-Forwarded-Encrypted: i=1; AJvYcCXqABJmw78jUhuTT+q8KcOT9AzxJcdfajMhh353vI69qd6vyUBGnFwyxd3q/jyzsrvv+nyvvFyrvgMq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4ImEDgkToTQtGe5C3HACytEPiQSsTH+PQaDOQqBYxEdpA2ZNx
	T1NgFP7Yqn9RNSCNE+SrkiMkjeKqQlWXBv3l1+YPGn4ORhAvz/o1GqnYMVq16Q==
X-Gm-Gg: ASbGnctCTdVB6sniHh239j49/ukg3QoQvL4DNuIkEt1fIIPUyh38iek81sgj9t/nOol
	sKy886yr0rhXTIjpsIwcDBrxiKMQPNdEDiKOsi7cJEATxfAsgHJaVXwqxJcy8XIXk1Bo1CyiT33
	zO5V1QgTI7c4Y/rkOlaQ+UOS83MZQulFWSYlBfzt0MUqs3QyjJochjUdwzhTnmpgx7q/3RKN7Tc
	QCBArPcvzFZPJWyU1TtFDp/bwF+ZTauHYkOI1I9+j6CjQ9mKtGv4wu//xlaDS24UeTx6S3A9xpZ
	dsQajTgE2nVcK2MK6nGnhiYKlr9oaLHXGdbu8GNm0OVbkBUbg4OWam4Lnt2OLWcN
X-Google-Smtp-Source: AGHT+IFYEO0FRkq9r8p2esNrZS2XQicrI+beFZYT0XbtFFoj2iHwLBu4VGy6UUvFln6UUpQ4h0D96A==
X-Received: by 2002:a17:90b:50ce:b0:2ee:aed6:9ec2 with SMTP id 98e67ed59e1d1-3082363a243mr28381783a91.14.1744710161133;
        Tue, 15 Apr 2025 02:42:41 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:7d0d:86ea:ee84:cd08])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccca5asm113135215ad.254.2025.04.15.02.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 02:42:40 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Kaehlcke <mka@chromium.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	linux-kernel@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: usb: Add binding for PS5511 hub controller
Date: Tue, 15 Apr 2025 17:41:59 +0800
Message-ID: <20250415094227.3629916-3-treapking@chromium.org>
X-Mailer: git-send-email 2.49.0.777.g153de2bbd5-goog
In-Reply-To: <20250415094227.3629916-1-treapking@chromium.org>
References: <20250415094227.3629916-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Parade PS5511 is USB hub with 4 USB 3.2 compliant 5Gbps downstream(DS)
ports, and 1 extra USB 2.0 downstream port. The hub has one reset pin
control and two power supplies (3V3 and 1V1).

Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v2:
- Inherit usb-hub.yaml
- Fix bindings to reject port@5/device@5 for 3.0 hub correctly
- Minor string fixes

 .../bindings/usb/parade,ps5511.yaml           | 115 ++++++++++++++++++
 1 file changed, 115 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/parade,ps5511.yaml

diff --git a/Documentation/devicetree/bindings/usb/parade,ps5511.yaml b/Documentation/devicetree/bindings/usb/parade,ps5511.yaml
new file mode 100644
index 00000000000000..86c75d69ee35b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/parade,ps5511.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/parade,ps5511.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Parade PS5511 4+1 Port USB 3.2 Gen 1 Hub Controller
+
+maintainers:
+  - Pin-yen Lin <treapking@chromium.org>
+
+properties:
+  compatible:
+    enum:
+      - usb1da0,5511
+      - usb1da0,55a1
+
+  reg: true
+
+  '#address-cells': true
+
+  '#size-cells': true
+
+  reset-gpios:
+    items:
+      - description: GPIO specifier for RESETB pin.
+
+  vddd11-supply:
+    description:
+      1V1 power supply to the hub
+
+  vdd33-supply:
+    description:
+      3V3 power supply to the hub
+
+  peer-hub: true
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      '#address-cells': true
+
+      '#size-cells': true
+
+    patternProperties:
+      '^port@[1-5]$': true
+
+    additionalProperties: false
+
+patternProperties:
+  '^.*@[1-5]$': true
+
+required:
+  - compatible
+  - reg
+  - peer-hub
+
+additionalProperties: false
+
+allOf:
+  - $ref: usb-hub.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            enum:
+              - usb1da0,55a1
+    then:
+      properties:
+        ports:
+          properties:
+            port@5: false
+      patternProperties:
+        '^.*@5$': false
+
+examples:
+  - |
+    usb {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        /* 2.0 hub on port 1 */
+        hub_2_0: hub@1 {
+            compatible = "usb1da0,55a1";
+            reg = <1>;
+            peer-hub = <&hub_3_0>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            /* USB 2.0 device on port 5 */
+            device@5 {
+                reg = <5>;
+                compatible = "usb123,4567";
+            };
+        };
+
+        /* 3.0 hub on port 2 */
+        hub_3_0: hub@2 {
+            compatible = "usb1da0,5511";
+            reg = <2>;
+            peer-hub = <&hub_2_0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                /* Type-A connector on port 3 */
+                port@3 {
+                    reg = <3>;
+                    endpoint {
+                        remote-endpoint = <&usb_a0_ss>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.49.0.777.g153de2bbd5-goog


