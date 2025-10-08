Return-Path: <devicetree+bounces-224370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D21D3BC36B0
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 08:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 770913BACA0
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 06:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D9D2EB5C9;
	Wed,  8 Oct 2025 06:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="1SWKruen"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9712EB5A2
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 06:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759903222; cv=none; b=f/cLE0cFITid5O8qrvunMN20vYSgyC2QhRHW4QNPF9Wz4WNmkQzOfhpRwOiP34EXNIYRUlSRxeo0kjqTGmnZtnTJu+Df7vq6DEqv6VvKjXkXr7OLGuqsGhbFeU9c6k6AxEwzc8Fi79lHVcMJ61sYkqk6Fd9Cy8V+gB66VXMBIF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759903222; c=relaxed/simple;
	bh=Di7zMVisYFTvAZ4tqhXBgQXgnhe5lS7Mu/ogKUkXSzY=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=MJbqOoGx1QJ8r6OY2EyBdN+Gxu1Mb3HmsfoTRzXucKhMRW/DryRsOVocB6vWBj37QoDqKcfrDaIHz1qKBjvYEIRULu/mgA4ti+Sy9t5d9so7SgVMQCrenXncDD5zECuOlr+3O8o8fAG20doA9XzSe3af1DVChDh6o08uQwNzp9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=1SWKruen; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-73970e51ba2so97930167b3.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 23:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759903219; x=1760508019; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=O3nQ2IBXVlqup3yhiw/z2ZC4B8Uznh8ZXWkNRIY9DZ0=;
        b=1SWKruenBTdy/NBtIGE0N0srkQ4Qpf0gO31eklbsrylxzwLpUFnD9h0WkPl6wQLGtq
         Z9fykvEiaiYYHjGP775gWyhAkhk4x7YZ8fSMvdS4ndRqdRFQWADZCuniHoqNCJew7p4V
         YYf0Z9WRChdnqxUMp8je7E1h45fcFahzc7GsdKHHkH3ZhqSH4gJSS9lmNia3XTHLxYlV
         lfp4Z/4TDGVbLMNZCqBQI6dlFwt6CiZxsVSLP3dQVbtLeA1wRatn5tP430Xd4lPGrnN4
         eHpOoRLqI6Zl4/rW3Busxp2GE8veilXQK90hqzQhiPu/Acy8sGyuBtJXUY/MS4ZUcAb1
         jKlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759903219; x=1760508019;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O3nQ2IBXVlqup3yhiw/z2ZC4B8Uznh8ZXWkNRIY9DZ0=;
        b=Eeg3taPBUnWdTg5qc5UB9cMuy6yyM6aWapxfxhY/NOXDHPK6WpNMRR6Mh7YNavfydY
         Vx9lxeljAGMsyoppa6AioNuveUoCda2blWHcrkEQc1oyEkaBwINIO4pSHYtV1633i6TR
         7N5hoGEp9S5+uJFU7p7gYy4OjijE42xnjKp60OY4fp3FRgSGyCsGu5wA9AdLyEZNdwpL
         LkGtMbJrTA5gb0WiOZ7OjHZVDcHf8cvq6qhW2Xmi/E40OBeo1NALE+b+qwon3vVziBD2
         4vKN8q/Q31LDJCA/Rct7v+RExyEzKtE6ZTLw9aON3v7j7RxFEaQhUJ4lFb4r6iXA8BN3
         Eo4g==
X-Forwarded-Encrypted: i=1; AJvYcCWTLfdnNPyujuF6lsvcF9Xv6C6RzR1zMJBLO7/Q6DW/CUYdbs0s2uke2P3rchv//BSofceewx1qiEwA@vger.kernel.org
X-Gm-Message-State: AOJu0YxwTxIvtQTDwaQqV9fri1ZWWnqil/npryAgYiUcjl/qsLfAvzpa
	W66N4oR+ofvtnN1av9nEzJh6ex2qMQyc3MYHSizbzCrtGnYRZ1TvY+RvzF4bvox6Zba7ncBU3eJ
	+BLRLuw==
X-Google-Smtp-Source: AGHT+IHkVcxa2pum021wuuoLs2okLrcMUb66ABXH6XTGYhxmFAHtMt5/klv2Td06QQp5AMBpCeX1Xhqxjbw=
X-Received: from ybbch13.prod.google.com ([2002:a05:6902:b0d:b0:eb5:2c5e:6965])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:690c:6c08:b0:77f:667f:61f6
 with SMTP id 00721157ae682-780e155533dmr45405427b3.15.1759903219488; Tue, 07
 Oct 2025 23:00:19 -0700 (PDT)
Date: Wed,  8 Oct 2025 05:59:59 +0000
In-Reply-To: <20251008060000.3136021-1-royluo@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com>
X-Mailer: git-send-email 2.51.0.710.ga91ca5db03-goog
Message-ID: <20251008060000.3136021-4-royluo@google.com>
Subject: [PATCH v2 3/4] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Document the device tree bindings for the USB PHY interfaces integrated
with the DWC3 controller on Google Tensor SoCs, starting with G5
generation.

Due to a complete architectural overhaul in the Google Tensor G5, the
existing Samsung/Exynos USB PHY driver and binding for older generations
of Google silicons such as gs101 are no longer compatible.

The USB PHY on Tensor G5 includes two integrated Synopsys PHY IPs: the
eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo PHY IP. Currently only
USB high-speed is described and supported.

Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/phy/google,gs-usb-phy.yaml       | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/google,gs-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/google,gs-usb-phy.yaml b/Documentation/devicetree/bindings/phy/google,gs-usb-phy.yaml
new file mode 100644
index 000000000000..22961e2da6ef
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/google,gs-usb-phy.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/google,gs-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series (G5+) USB PHY
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description: |
+  Describes the USB PHY interfaces integrated with the DWC3 USB controller on
+  Google Tensor SoCs, starting with the G5 generation.
+  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.0 PHY IP
+  and USB 3.2/DisplayPort combo PHY IP.
+  The first phandle argument within the PHY specifier is used to identify the
+  desired PHY. The currently supported value is::
+    0 - USB high-speed.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - google,gs5-usb-phy
+
+  reg:
+    minItems: 3
+    maxItems: 3
+
+  reg-names:
+    items:
+      - const: usb2_cfg_csr
+      - const: dp_top_csr
+      - const: usb_top_cfg_csr
+
+  "#phy-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: usb2_phy_clk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: usb2_phy_reset
+
+  power-domains:
+    maxItems: 1
+
+  orientation-switch:
+    type: boolean
+    description:
+      Indicates the PHY as a handler of USB Type-C orientation changes
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        usb_phy: usb_phy@c410000 {
+            compatible = "google,gs5-usb-phy";
+            reg = <0 0x0c450014 0 0xc>,
+                  <0 0x0c637000 0 0xa0>,
+                  <0 0x0c45002c 0 0x4>;
+            reg-names = "usb2_cfg_csr", "dp_top_csr", "usb_top_cfg_csr";
+            #phy-cells = <1>;
+            clocks = <&hsion_usb2_phy_reset_clk>;
+            clock-names = "usb2_phy_clk";
+            resets = <&hsion_resets_usb2_phy>;
+            reset-names = "usb2_phy_reset";
+            power-domains = <&hsio_n_usb_pd>;
+            orientation-switch;
+        };
+    };
+...
-- 
2.51.0.710.ga91ca5db03-goog


