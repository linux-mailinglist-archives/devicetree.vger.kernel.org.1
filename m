Return-Path: <devicetree+bounces-306753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D2dAJOJQIWq4DAEAu9opvQ
	(envelope-from <devicetree+bounces-306753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:18:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3767963EF1B
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:18:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=KBeFTVU6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306753-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306753-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9782E30843A8
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 10:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D74C3E024A;
	Thu,  4 Jun 2026 10:12:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFBE3D8913
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 10:12:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780567954; cv=none; b=nQ2ntVatBCBkagAAAkwj2Iw4JrKbNuSZqfKWDnts1PC0hx8hWjcSoDEtfkcpraFMf+LMvAKj/teSBOOyL6jMCs9l4ekvy10abfLL8NwpYCvPTf41jLJkFylKDyz8VCLPnb9EluQls0eupEI0TDZ82TJmpqIc370YgejFsfLQ46s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780567954; c=relaxed/simple;
	bh=KZD8Zz+ug3sS6SUPS7FyviMXeaSNXK4TH+nbzfl418o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eXLEZarbOeDhcrW7IMoK1Ry3jF6ll54BRu6STgihGhEmIqu6O8Dys1E8jWJJfxfCn5LbZJ4A1v4xgj58+U/+oEAL9VLk1GX77nX66jUfXCmcGDw90xJLvg7duQ4xGKA007hrMuNhpxJcclvLRj/oNWquyc1APpbg1VZeWkf1XfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KBeFTVU6; arc=none smtp.client-ip=209.85.216.54
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-36b7b7b7a80so886941a91.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 03:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780567951; x=1781172751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=du3ehlF1Uyll9z9fTITCQGImnBetFueZCw24wEt4ZU8=;
        b=KBeFTVU64PobICdETdrFrnBEwYxbBjuBFXGN0+0QlzuxUNNVK1cBW80DZEfKyG3NQ7
         3p0lG8pbnF9Ko11jIZEObtceUcUg0Mo2jXFkX3kCOKrQ0fLNYKjoWuoco0ES+KYhYSSp
         fxuB4W0uJ8rYf64zG4rTHFFKYFdWI4Yrj3VBbMTkZErRnD6zH9rKWXyNBMOnaofeD3Ip
         LuDDBRe2b66LR+WQw+V9GOoYO76Q4MvgA4Fb+Z2WIXnMz8V9yftErGf6C9XR1rNp8sP8
         vRD21UCr9X9dhg+Mw43xF/BWQ3IYHysUNYEoY0XReqWsNHOnDn6DH3ntpzSDpbtxn/MS
         Hujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780567951; x=1781172751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=du3ehlF1Uyll9z9fTITCQGImnBetFueZCw24wEt4ZU8=;
        b=ZvDOsWU/oSxgIS3LKoIKX+eqd17RLJ/gM+5maKcXLXNiTRTovwqPKE4Emoj0a6lOb4
         h7pjuSkXOIHigIZrZY1TPVsmmJDRbwI9CIEY/yI+/xAKzDs++wTJtSZFhpxVZ92iH8b3
         nAW5A3ERSQoEeFZBBW4wT02iD9f9/UdSAiKPH+JgBbWChWbXUwhT9/xinqoXPo1X4N9+
         xgViPnyc5MLVfJRDl26ru4ogpGdyPRkjTdZ2IyQh2ZGxtkqmCMk4kP7kjwif5YLu4yLB
         kiWrcXQ6/ZFPbNsRCtbqTwYOBdw8Jjzxgu6Lfp7WvIGzOzFCFBOiSMOTNIxbonv+0vuM
         i57g==
X-Forwarded-Encrypted: i=1; AFNElJ804ilkQ5l1sGwC9rf7GYzu/a552qVXmyNQqdOZuuXN/pU8vQDuya7AB0nuelFfZiCpvhJg5PgxwZUg@vger.kernel.org
X-Gm-Message-State: AOJu0YxQSOtov9Ovnm7ri4Tn7MaHXLcDRK+vAuOsXzOQs/3KMuRqisbm
	2z4p2tofhreuPfLB4AN6TVvnINhrqhBt8KtES90W8MN1zXHyE85aftf8
X-Gm-Gg: Acq92OEoDGx87JOx3EPccpMgDvx3Q5+EfNB0wcEuXtHxQjKeGD3ff5SxM+zvWrLB6d5
	WeoEAZeTYOUhGJrnyXdm2DsDFi/Ssz2YSpuxIMDM70OhWX2vTl/0KwiAVqk72Ze1V8hXkmf5JEx
	IfZIbpikHEkvW0RU0XqgMzFZe11cZ0qbwSVZCuOGoMbn+Hz3IJfBlOck+7JMQ9gxdeFzgSyesTl
	5eKRHPBLD6GRpDwjfQ+4jgLxg9gBir499GaZNM6/QdGzKpoDiF4wqoEx60p6YB5Bfn5KmKnoEjb
	EzKCyc2qN6U+ojC9IptDHHU9b8ddQprDgW6BNO4++zGE6afP1rRzJWh2zap0UYjiN02u5dg3svK
	/zmJvCZpEbra5BHxG04uy+6jbbIJqt4wZyMtqBzn6vHk3zBGZC16pqzeBuchlrU5L/ZPFXiPIQc
	4NvdOA1WYcoY2Rt/jGlV0WEQMUz5hjuvdcgrbvEabSHHCL55Cb9EcKJxjlu7GF2VYkawuAIGCha
	pOEYeyR/Ely66EuVJhaktA=
X-Received: by 2002:a17:90b:2c8c:b0:368:65d1:893 with SMTP id 98e67ed59e1d1-36f75f9c22bmr2777074a91.5.1780567951044;
        Thu, 04 Jun 2026 03:12:31 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f70a29cd6sm2483385a91.11.2026.06.04.03.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 03:12:30 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH 1/2] dt-bindings: phy: nuvoton: Add MA35D1 USB2 OTG PHY  binding
Date: Thu,  4 Jun 2026 18:12:19 +0800
Message-ID: <20260604101220.1092822-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604101220.1092822-1-a0987203069@gmail.com>
References: <20260604101220.1092822-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306753-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:a0987203069@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nuvoton.com,lists.infradead.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3767963EF1B

Add device tree binding documentation for the Nuvoton MA35D1 USB 2.0
OTG PHY driver (nuvoton,ma35d1-usb2-phy-otg).

PHY index 0 (USB0) is an OTG port whose signals are routed by a hardware
mux to either the DWC2 device controller or the EHCI0/OHCI0 host
controllers depending on the USB ID pin state.  PHY index 1 (USB1) is a
dedicated host-only port.

Optional properties allow board-specific resistor calibration trim
(nuvoton,rcalcode) and over-current detect polarity configuration
(nuvoton,oc-active-high).

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../phy/nuvoton,ma35d1-usb2-phy-otg.yaml      | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml

diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml
new file mode 100644
index 000000000000..19f074565cc6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nuvoton,ma35d1-usb2-phy-otg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35D1 USB 2.0 host PHY
+
+maintainers:
+  - Joey Lu <yclu4@nuvoton.com>
+
+description:
+  USB 2.0 PHY driver for the Nuvoton MA35D1 SoC, used by the EHCI and
+  OHCI host controllers.
+
+  USB0 (PHY index 0) is an OTG port whose physical signals are routed to
+  either the DWC2 device controller or the EHCI0/OHCI0 host controller by
+  a hardware mux that follows the USB ID pin.
+
+  USB1 (PHY index 1) is a dedicated host port with no OTG capability.
+
+properties:
+  compatible:
+    const: nuvoton,ma35d1-usb2-phy-otg
+
+  clocks:
+    maxItems: 1
+
+  nuvoton,sys:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the system management syscon.
+          - description: PHY instance index.
+            enum:
+              - 0   # USB0, OTG port (shared with DWC2 gadget controller)
+              - 1   # USB1, host-only port
+    description:
+      A phandle to the syscon node covering the SYS register block, with
+      one argument selecting the PHY instance. Index 0 selects the OTG
+      port PHY (USB0) and index 1 selects the host-only PHY (USB1).
+
+  "#phy-cells":
+    const: 0
+
+  nuvoton,rcalcode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+    description:
+      Resistor calibration trim code written to the RCALCODE field in
+      USBPMISCR. The 4-bit value adjusts the PHY's internal termination
+      resistance. When absent the hardware reset default is used.
+
+  nuvoton,oc-active-high:
+    type: boolean
+    description:
+      When present, the over-current detect input from the VBUS power
+      switch is treated as active-high. The default (property absent) is
+      active-low. This setting is shared by both USB host ports.
+
+required:
+  - compatible
+  - clocks
+  - nuvoton,sys
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+
+    usb_hphy0: usb-host-phy {
+        compatible = "nuvoton,ma35d1-usb2-phy-otg";
+        clocks = <&clk HUSBH0_GATE>;
+        nuvoton,sys = <&sys 0>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


