Return-Path: <devicetree+bounces-160337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 425EFA6E56C
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 22:17:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 511233B1E05
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 21:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFDE11F1516;
	Mon, 24 Mar 2025 21:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=conclusive.pl header.i=@conclusive.pl header.b="gjQCKM5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C629C1DE4F3
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 21:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742850666; cv=none; b=nZFuqQTdr7MCbw6ZfZjQ2UkYLAemyGnvzW9lxZdbNRENson/7lyp049MZX/HrIsMcHv3MTPs9kmQRt2/w1pH6arfYMKGwphovwqwViTmiHFGDDbAqA0nX7T1Fy+X3j6KW93jk8QmiENdYaKTX0mxHW9ANbPa5+EJ1iYoxnwWKcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742850666; c=relaxed/simple;
	bh=4RQgTHTB8Ct6Xa+I+6KGuh64DGDd4HkaTwvKvZHrn6c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jY1cir4cr3/vMXEe+OYuvqHUVpTc23DeUtxIDRmKsziUrEjibVFPdwfF3FRHPBOxsiYGYNjMxn5zpzfop29O5yD8Ky/9nyRz/KLq1LVv2JhVVe34gyLuebMtevtIuWNr/SquOkGE3sohcqwmqJSSWHow5xjPCcwBouy2p73vQQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=conclusive.pl; spf=pass smtp.mailfrom=conclusive.pl; dkim=pass (2048-bit key) header.d=conclusive.pl header.i=@conclusive.pl header.b=gjQCKM5R; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=conclusive.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=conclusive.pl
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5e66407963fso8676071a12.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 14:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conclusive.pl; s=google; t=1742850663; x=1743455463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2JyTyzWQzsPLSAvCjZH0qopjCEpB8Oh/jlTrjLbGKY8=;
        b=gjQCKM5RhsXU2FWx+QAPyuLE2aSr0a0JeiIi+vVJDwd4MD8VQkbt/lID5z3nRJQttL
         ggPBddmJKb/27PJTK6ALT+a9M7BneiWBlvgh2poG2Sr7IkFJLXU4ERY4yXrUI1Y4ueF6
         KEsprez5pihAZS4LLthy1dy3DAdm3ZjEAUEfX3KFXrNZXsIaNHd0gDEA/eCyEPnKESH5
         i/rBsKltbv3KJ3hlZwd8TxWedSTV9miXPuUpyrysvdtKuXTSKBB6LvXJLbom44yYbhhn
         uWNo1lwvPZIE+jKcRiXx136UDnG//cCUiPpQpRTYg9IoMzBbgmrQehHrkz2O91U1VQoh
         4byA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742850663; x=1743455463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2JyTyzWQzsPLSAvCjZH0qopjCEpB8Oh/jlTrjLbGKY8=;
        b=lWrjgDhbYJBk91rPRxHGONePZFV81DEBm82e7w1zoP0IGcSKiyeFj+DJ9cF/T1PYhp
         cuh3OYxs/NIrM1iepSQOt4CdtvD3aVp1jJI2dVbYAVEF/kpHxsXIwTSkTB8gYYPl3xFl
         ECj2DcL5i7g0i9KFYGeeTBa2U4MSWBmzFr2eJ4WtM3Jbs21Q9HvmPikvPtyoPdX1Adlx
         WapdnPAstv6+yTgmGTFR1IF90HNiZ1PAt0CVp/Pd0HdW47Rjqzz1hxstDJ/aaPM3J1lX
         MdrJ58Es7sVgFjuttvJXVd7D6KrthtBfaDcgxBes5AqWSQB0v+fWJe6DLXCFAhjp42oU
         e4TA==
X-Forwarded-Encrypted: i=1; AJvYcCUuJ7oMPUHA2hrsdRsavtOO/dN1NrrKbm0UHlHXva/3IrhlmZAJJZY/fWUHIrnZkEoMFjBFRRZAYWBs@vger.kernel.org
X-Gm-Message-State: AOJu0Yytdl3hnI9bJSy3UE2rk9MOpO0/AwAqDcgwNOd22bLFvD9Fe7eH
	jLTv0kOBVlgO9m+w06yOP44rSNr7EVQyv3C9b682lv9hMsy4jR6U+Hmk8RiX4JA=
X-Gm-Gg: ASbGncsYAi+rhUKcsRE1HhqVm2UbiW7yJ7s4dT2obG46G16drpwC7G7UZn/gNEDATVI
	GZyMkVTsHjDDHv+mtkYH012xM3qM3sALLEqLlJfWMJfEVWjV2Q/+tFC7QpvgnoPxRVSFDB9mynj
	U3DowK3wfCnCopi4iIHLGeMzpOFBxaFbOhb2yYrjVjbN9UB7UBxpucWxcm3tckKzqd0lw3SOS3N
	7ttMxKX5DMk6i1INIcs2u1SsYEE8Mw7dzHIWuBp/GDqMpwtEsRBdpXeMSBFXssPpAVtjfOLdSww
	JeKGA7rAqivIrtB/YjYNHOeZ3HkrNt46vfsHkoLLeKhT3WOP0e5nb5Vmg3fpG0M6F6w1UGGi1o/
	nlywRtHa7nNO9
X-Google-Smtp-Source: AGHT+IHQu1Ep08TqCw8sMIrAIIK3Br1RIklS9BeCUwXWKUSLGw/dsImCMrXCZ7IuFKP4fu+js5jeqA==
X-Received: by 2002:a05:6402:2708:b0:5ec:fb3d:f51f with SMTP id 4fb4d7f45d1cf-5ecfb3df8bfmr1335127a12.10.1742850663062;
        Mon, 24 Mar 2025 14:11:03 -0700 (PDT)
Received: from wiesia.conclusive.pl (host-89.25.128.123.static.3s.pl. [89.25.128.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebcd0e0cb6sm6537097a12.79.2025.03.24.14.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 14:11:02 -0700 (PDT)
From: Artur Rojek <artur@conclusive.pl>
To: Johannes Berg <johannes@sipsolutions.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jakub Klama <jakub@conclusive.pl>,
	Wojciech Kloska <wojciech@conclusive.pl>,
	Ulf Axelsson <ulf.axelsson@nordicsemi.no>,
	Artur Rojek <artur@conclusive.pl>
Subject: [RFC PATCH 2/2] dt-bindings: wireless: Document Nordic nRF70 bindings
Date: Mon, 24 Mar 2025 22:10:45 +0100
Message-ID: <20250324211045.3508952-3-artur@conclusive.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250324211045.3508952-1-artur@conclusive.pl>
References: <20250324211045.3508952-1-artur@conclusive.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a documentation file to describe the Device Tree bindings for the
Nordic Semiconductor nRF70 series wireless companion IC.

Signed-off-by: Artur Rojek <artur@conclusive.pl>
---
 .../bindings/net/wireless/nordic,nrf70.yaml   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/nordic,nrf70.yaml

diff --git a/Documentation/devicetree/bindings/net/wireless/nordic,nrf70.yaml b/Documentation/devicetree/bindings/net/wireless/nordic,nrf70.yaml
new file mode 100644
index 000000000000..1c61f7bdbf8a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/wireless/nordic,nrf70.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/wireless/nordic,nrf70.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nordic Semiconductor nRF70 series wireless companion IC
+
+maintainers:
+  - Artur Rojek <artur@conclusive.tech>
+
+properties:
+  compatible:
+    const: nordic,nrf70
+
+    req:
+      maxItems: 1
+
+  irq-gpios:
+    maxItems: 1
+    description: HOST_IRQ line, used for host processor interrupt requests.
+
+  bucken-gpios:
+    maxItems: 1
+    description: BUCKEN line, used for I/O voltage control.
+
+  iovdd-gpios:
+    maxItems: 1
+    description: External, GPIO-driven switch, found in some nRF70 based board
+      designs, and used together with BUCKEN for I/O voltage control. Optional.
+
+required:
+  - compatible
+  - reg
+  - irq-gpios
+  - bucken-gpios
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        nrf7002@0 {
+            compatible = "nordic,nrf70";
+            reg = <0>;
+            spi-max-frequency = <32000000>;
+            voltage-ranges = <1800 1800>;
+            bucken-gpios = <&gpio2 24 GPIO_ACTIVE_HIGH>;
+            irq-gpios = <&gpio2 13 GPIO_ACTIVE_HIGH>;
+            spi-rx-bus-width = <4>;
+            spi-tx-bus-width = <4>;
+        };
+    };
-- 
2.49.0


