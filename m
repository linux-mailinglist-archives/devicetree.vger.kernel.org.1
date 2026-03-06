Return-Path: <devicetree+bounces-272316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJX/Dr0kq2n6aAEAu9opvQ
	(envelope-from <devicetree+bounces-272316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:02:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DD8226E50
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 20:02:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 571CE304947C
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 19:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41B8F371066;
	Fri,  6 Mar 2026 19:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZCVmjgpo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF60C366829
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 19:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772823732; cv=none; b=p1cVyejKxNCL6DR9GHD/Jsx4bmXrimOe8YrpSEvN+Q6T2Lh9Ym04BhFVV05LVhSLsKbdugIgQ4TVSSoujv+8IrL2CFrOwXmgSYzERgOci1Q6X5Yb2p8GkWG/f27E71wvA+mh5njbDEPRiuUk4EVULDLPD8J/VQpA+RGHrURdd5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772823732; c=relaxed/simple;
	bh=H1e4gqaV2JetLMM4A8QT65Ya0OhayTEFoaSkzjmmcGA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PvaxBQLVLaeu9jdizpXcDgruu0pS7ksNeEz8dA+3l+62Md19Rf4PzPivQV1gRRdm4DMBx5/WBjheIbAdcOz9wzVLACryDDojXZjsinV938Pjpa2Zo4oJulHcOXZR6jNKsFgA7S6d2tM9bY1J0ysiuW8riw0f8bpWgJ+E8nVS6vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZCVmjgpo; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439bcec8613so4333990f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 11:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772823726; x=1773428526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h38h80KHifUI84SS+z6wlkgcplrzkREaoXBLQFpmips=;
        b=ZCVmjgpoFsh7ObCq2VbX/duLr8drysISlkYJX+O40zlH/RmeJdDLKAFdg51Nl1vRw+
         k8DPqcnhUSd1gQ97qwL7dxMwrllFKcnlQK7+UhOcmTjSB/pKt+30EicOkX2b2hKLrIoO
         wEn3eBsAu8juzyPclF95elSx8t7+mNu3AETdnNU7F9rZayEUcTSVIojUXPPIFC4Dw1wX
         Fet8EIf8euUsGHwrgTV1OYch6ukyP5WP+jrI2bdJGuCfSqAzL+gkbz7zt0mvKmK+8sO0
         +i2qRm07ZJyVuSyp5AuqSqtA2qPaX96B93yxTWOdbcunqekRIEwPGR3SRZVB/j3JPV5u
         ewTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772823726; x=1773428526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h38h80KHifUI84SS+z6wlkgcplrzkREaoXBLQFpmips=;
        b=lRcav95Z2sA7mvUzunGm3g0JAsmcfQn1dq38Tqasgftd2QA3+GFezBuFAHlOHnTcyA
         TpZcf4s5AFlYnFgWI/C7n4Ap+MTDuTZ5c3vhTBb6wNJLu74W8ZvU6AWeEp6GJucZV4i3
         zt3DzmMub27a9/LViGsPt5RF3hmM37nkQByeUkvNcrrgJ6/EQ5OQhReUvavKZ7c8J7tm
         dyEtxWgLG6gK1dU8rZN6FW+oPg4tmKWUqnpztKVyuvf1EGOC9ApTKprS6T2ehSPNwrDH
         p8/Tv7KRsbbx216RkqWhcoSJF4GkRDr31mxUOt9E14FPm8MX7/QlED75y2tbe/cU0fu0
         jiGw==
X-Forwarded-Encrypted: i=1; AJvYcCUUM+N4qR7PVXMOZSCtFi12AHeHnFsKgOxMIDZV/Jq+84+7UAlR0rzfP4/WBBJuoOMn8+DuBngaVa8D@vger.kernel.org
X-Gm-Message-State: AOJu0YwtRxVhBLpzMNVc4ZAFqO8HdaJDJfglCO7A7n7m1PZteq7EUcu7
	49hN+DMFn0bYE14Bazx0fhR3NbqCG/wRc/CBRwC2DBqN5KDjlVcRJXJj
X-Gm-Gg: ATEYQzyP0CxDMxg/od9NpN+3yktP444zR7Mf5aT+ylMcSYpVClNg6BRf6WDuZW5ulY/
	CNvuPY+jnrHLlT8l76Aja6o2NwNlXqAEddU6cHG7gm04c2sS4QdtbGgYSMV84WidgZovrwqk0og
	waCfrf0nn5siJy11/7EP6DmEQwnldap14IsApQ1x1ZCDGZSAipJpDZT+xWDmyi0sPGrStpEzlfy
	8jRBKEfJMiD+bic1eIKiEC9viHDQwK8dhsLWtE8K0+pbrRDClC3zbGPeXiUU/a4HxZdwgye9AJN
	Su3A2C07S1zpXWFX5Jl+tDah1sUjqvubA+16truwYK6ZCb4CC/Ccn064RF2FzhiyyhnavXixPna
	Q93UeQpsBlMsw/jwvyNljmNhwdLYj43FZYUxHkE/Nqe4wsjQUf7740R/4z/51WycX+G9Dd/xOkM
	/pCgKd7h7xPjGEUtNGGDWqVRAOU5w+keDLa4vL2bI1c1BkI6OK7gX4Y/w=
X-Received: by 2002:a05:6000:26c7:b0:439:b79d:b9ac with SMTP id ffacd0b85a97d-439da67c237mr5354464f8f.45.1772823725737;
        Fri, 06 Mar 2026 11:02:05 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-439dae2ba66sm4743436f8f.20.2026.03.06.11.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 11:02:05 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 2/4] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Fri,  6 Mar 2026 20:01:51 +0100
Message-ID: <20260306190156.22297-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306190156.22297-1-ansuelsmth@gmail.com>
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C1DD8226E50
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272316-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,infradead.org:email,devicetree.org:url]
X-Rspamd-Action: no action

Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
always supported. The USB 3.0 mode is optional and depends on the Serdes
mode currently configured on the system for the relevant USB port.

To correctly calibrate, the USB 2.0 port require correct value in
"airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
selecting one of the 4 monitor clock for calibration (internal clock not
exposed to the system) but each port have only one of the 4 actually
connected in HW hence the correct value needs to be specified in DT
based on board and the physical port. Normally it's monitor clock 1 for
USB1 and monitor clock 2 for USB2.

To correctly setup the Serdes mode attached to the USB 3.0 mode, the
"airoha,usb3-serdes" property is required. This can be either
AIROHA_SCU_SERDES_USB1 or AIROHA_SCU_SERDES_USB2 and is used to identify
what modes support the PHY and what register to use to setup the
requested mode.

The first USB port on the SoC can be both used for USB 3.0 operation or
Ethernet (HSGMII).
The second USB port on the SoC can be both used for USB 3.0 operation or
for an additional PCIe line.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 71 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..ec467fb7f971
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7581-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7581 SoC USB PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7581 SoC USB PHY describes the USB PHY for the USB controller.
+
+  Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
+  always supported. The USB 3.0 mode is optional and depends on the Serdes
+  mode currently configured on the system for the relevant USB port.
+
+  The first USB port on the SoC can be both used for USB 3.0 operation or
+  Ethernet (HSGMII).
+  The second USB port on the SoC can be both used for USB 3.0 operation or
+  for an additional PCIe line.
+
+properties:
+  compatible:
+    const: airoha,an7581-usb-phy
+
+  reg:
+    maxItems: 1
+
+  airoha,usb2-monitor-clk-sel:
+    description: Describe what oscillator across the available 4
+      should be selected for USB 2.0 Slew Rate calibration.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  airoha,usb3-serdes:
+    description: Describe what Serdes line is attached to the USB 3.0 port.
+      Can be either AIROHA_SCU_SERDES_USB1 or AIROHA_SCU_SERDES_USB2 as
+      defined in dt-bindings/soc/airoha,scu-ssr.h
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  '#phy-cells':
+    description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+      as defined in dt-bindings/phy/phy.h.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - airoha,usb2-monitor-clk-sel
+  - airoha,usb3-serdes
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/airoha,scu-ssr.h>
+
+    phy@1fac0000 {
+        compatible = "airoha,an7581-usb-phy";
+        reg = <0x1fac0000 0x10000>;
+
+        airoha,usb2-monitor-clk-sel = <1>;
+        airoha,usb3-serdes = <AIROHA_SCU_SERDES_USB1>;
+
+        #phy-cells = <1>;
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 364f0bec8748..d75f59118a9a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -779,6 +779,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
 F:	drivers/spi/spi-airoha-snfi.c
 
+AIROHA USB PHY DRIVER
+M:	Christian Marangi <ansuelsmth@gmail.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
+
 AIRSPY MEDIA DRIVER
 L:	linux-media@vger.kernel.org
 S:	Orphan
-- 
2.51.0


