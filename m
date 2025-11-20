Return-Path: <devicetree+bounces-240814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 32266C75C47
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 18:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D533834B0A7
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B00212F532F;
	Thu, 20 Nov 2025 17:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RugDmnNn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBFA36D51D
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 17:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763660224; cv=none; b=QF5yj6ucVUDBRi9p0BDCSspiFTQ7bZDbVjMs/fYH7KnLpPq1BArShy2I7nokuEpdEuidi9auFTPezUHJREqYnkC0NC5l82ZgDQjW4gaEZ4oYQl7R4Tn8QN7kNruVhqfqASiXIBwGLIcqkpV7mFA28MIQBaWmHrbQg623kZFiMK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763660224; c=relaxed/simple;
	bh=/nlRAijHBYdsP293gnShy0fE1HhhnOtosa4NIMB2pDM=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=nS/por4VM9EqCjKE7hIGNis6YlxzJnF5nnbtZQ3ipvX3gB9JdQeFWMMCxdSEeMbZ206TIzedPmVF37h4ekKKyEJY9lZqIcL3b3d4AZhIlgkl9+AznVNRMxJtDIEvnojcTaeFut44LipeJHkGlIaGuB1Hr0iINUfgKpfz1e5hk14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RugDmnNn; arc=none smtp.client-ip=209.85.214.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-297f8a2ba9eso30150625ad.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1763660220; x=1764265020; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=UYKYFwNEQpdo2niOcoCQ+9hrIxMyptwAEyhO1F6F0P8=;
        b=RugDmnNnVcKu9ATOHbiHys5N9NJhye1tG//fVBIyKNA0YXtwwIiFYI18womJTi05EJ
         zv9l1tsW7IYaDTDztcmOrVsbz3vapJateb7YCpAHOgD223loNJrOm111/tMCscWlfu1y
         FkDhdL6a2lx1A+y0l0+UBtunT7eKYJ89+gSesmvYMmpaWK3+q0a/ttXLVm88IGqPwZvB
         sYzInGSAgkfJqi9Ujxqk3er6g4ofGAgTYez3EnHc1bIz3LAEb6n8ytOaPu+rqdDGDNWT
         SAl4/N1uLq3SJwX/hHc8/I3ICQpdZWNq/X9ecka2J/WiEllJxYVw2xQ5jfRpzs3mqJ5I
         XHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763660220; x=1764265020;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UYKYFwNEQpdo2niOcoCQ+9hrIxMyptwAEyhO1F6F0P8=;
        b=tuRz6WuZnMq/15FK1Wx/5A3TUa2gmHG5sHOR454OaKIE2xtGGhMDL7jRh6wNnGo3Cz
         h6dkCf0EGaRYiZ0s+IyiSym4wSTk+ymqur0E3nUnmbgqsRvfJ8KyokJgpTq8eGFo6WFP
         I15vSSHgzcIr+vXOIP/ObnGgNeRpvxteqoLQ17vse8WBxmSMATcxeLqytTGzhH/YEtFj
         09itX+wSwurgo6ZmkIUsMPeXN92Oxke6kUc6K6ed2umVFEqfWz6twYBRZx8wk9ZG1b80
         Nmm01V5oizFSYdjHYMrwa9POVSNkH/SmSKwo63GPPR0SvCygHnkSkbbBl5OBSelTLQc/
         wNzA==
X-Forwarded-Encrypted: i=1; AJvYcCWF9DHz+kpTlytAtCK+lNyN0T2pfFEwDieFme/Q7XytpppoPfs2A2ecfHTOQebUiibwKGiy/lodBYuI@vger.kernel.org
X-Gm-Message-State: AOJu0YxHgsi0MKB6tGULk4Z2/Cy/WzoGp8tKO9x7Ww9fDGFPj01Hwx5K
	vqPXV0VPEPCOVAmiYauoPjNf09RCKfQ7EVItKAUbryduP/66+UnWebgVjwCRNkdIfc/4gkUx/pu
	7T32X0g==
X-Google-Smtp-Source: AGHT+IEEioZM6++kQzrL7puAiFpulDJQBCemZP7kwWZkX+1d1todtDD+KaCy8lRZMXpYLS9GWuETJNyMVYY=
X-Received: from dlbay33.prod.google.com ([2002:a05:7022:6621:b0:11c:5640:3de5])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:1b12:b0:11a:26dc:eb61
 with SMTP id a92af1059eb24-11c95735ddamr930764c88.7.1763660219952; Thu, 20
 Nov 2025 09:36:59 -0800 (PST)
Date: Thu, 20 Nov 2025 17:36:41 +0000
In-Reply-To: <20251120-phyb4-v6-0-b6694e1f0caf@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20251120-phyb4-v6-0-b6694e1f0caf@google.com>
X-Developer-Key: i=royluo@google.com; a=ed25519; pk=nTq1n8WcJActRWe1s8jdcy+TzpTK4a+IYRCIWvQfq5k=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763660216; l=5106;
 i=royluo@google.com; s=20251120; h=from:subject:message-id;
 bh=/nlRAijHBYdsP293gnShy0fE1HhhnOtosa4NIMB2pDM=; b=OtgUI8TiSQQ3qjNKPmkO1gps1OW2/r18VExz8XfJT1PK4cN6ccCF38j3DpneIPr20f3mpnhzi
 vk8owTmMP1VBy5WlDaRr9sItysw6vjqGt12AWl+7cMAteJ2RVHB/STz
X-Mailer: b4 0.14.2
Message-ID: <20251120-phyb4-v6-1-b6694e1f0caf@google.com>
Subject: [PATCH v6 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?utf-8?q?Andr=C3=A9_Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="utf-8"

Document the device tree bindings for the USB PHY interfaces integrated
with the DWC3 controller on Google Tensor SoCs, starting with G5
generation (Laguna). The USB PHY on Tensor G5 includes two integrated
Synopsys PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo
PHY IP.

Due to a complete architectural overhaul in the Google Tensor G5, the
existing Samsung/Exynos USB PHY binding for older generations of Google
silicons such as gs101 are no longer compatible, necessitating this new
device tree binding.

Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/phy/google,lga-usb-phy.yaml           | 133 +++++++++++++++++++++
 1 file changed, 133 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml b/Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..a0dd8e1afa56950b8371545e462db24cbb9a7959
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/google,lga-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series G5 (Laguna) USB PHY
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description: |
+  Describes the USB PHY interfaces integrated with the DWC3 USB controller on
+  Google Tensor SoCs, starting with the G5 generation (laguna).
+  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.0 PHY IP
+  and USB3.2/DisplayPort combo PHY IP.
+
+properties:
+  compatible:
+    const: google,lga-usb-phy
+
+  reg:
+    items:
+      - description: USB3.2/DisplayPort combo PHY core registers.
+      - description: USB3.2/DisplayPort combo PHY Type-C Assist registers.
+      - description: eUSB 2.0 PHY core registers.
+      - description: Top-level wrapper registers for the integrated PHYs.
+
+  reg-names:
+    items:
+      - const: usb3_core
+      - const: usb3_tca
+      - const: usb2_core
+      - const: usbdp_top
+
+  "#phy-cells":
+    description: |
+      The phandle's argument in the PHY specifier selects one of the three
+      following PHY interfaces.
+      - 0 for USB high-speed.
+      - 1 for USB super-speed.
+      - 2 for DisplayPort.
+    const: 1
+
+  clocks:
+    items:
+      - description: USB2 PHY clock.
+      - description: USB2 PHY APB clock.
+      - description: USB3.2/DisplayPort combo PHY clock.
+      - description: USB3.2/DisplayPort combo PHY firmware clock.
+
+  clock-names:
+    items:
+      - const: usb2
+      - const: usb2_apb
+      - const: usb3
+      - const: usb3_fw
+
+  resets:
+    items:
+      - description: USB2 PHY reset.
+      - description: USB2 PHY APB reset.
+      - description: USB3.2/DisplayPort combo PHY reset.
+
+  reset-names:
+    items:
+      - const: usb2
+      - const: usb2_apb
+      - const: usb3
+
+  power-domains:
+    maxItems: 1
+
+  orientation-switch:
+    type: boolean
+    description:
+      Indicates the PHY as a handler of USB Type-C orientation changes
+
+  google,usb-cfg-csr:
+    description:
+      A phandle to a syscon node used to access the USB configuration
+      registers. These registers are the top-level wrapper of the USB
+      subsystem and provide control and status for the integrated USB
+      controller and USB PHY.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the syscon node.
+          - description: USB2 PHY configuration register offset.
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
+  - power-domains
+  - orientation-switch
+  - google,usb-cfg-csr
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        usb_phy: usb_phy@c410000 {
+            compatible = "google,lga-usb-phy";
+            reg = <0 0x0c410000 0 0x20000>,
+                  <0 0x0c430000 0 0x1000>,
+                  <0 0x0c440000 0 0x10000>,
+                  <0 0x0c637000 0 0xa0>;
+            reg-names = "usb3_core", "usb3_tca", "usb2_core", "usbdp_top";
+            #phy-cells = <1>;
+            clocks = <&hsion_usb2_phy_clk>, <&hsion_u2phy_apb_clk>,
+                     <&hsion_usb3_phy_clk>, <&hsion_usb3_phy_fw_clk>;
+            clock-names = "usb2", "usb2_apb", "usb3", "usb3_fw";
+            resets = <&hsion_resets_usb2_phy>,
+                     <&hsion_resets_u2phy_apb>,
+                     <&hsion_resets_usb3_phy>;
+            reset-names = "usb2", "usb2_apb", "usb3";
+            power-domains = <&hsio_n_usb_pd>;
+            orientation-switch;
+            google,usb-cfg-csr = <&usb_cfg_csr 0x14>;
+        };
+    };
+...

-- 
2.52.0.rc1.455.g30608eb744-goog


