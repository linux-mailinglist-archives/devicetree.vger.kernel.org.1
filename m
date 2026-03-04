Return-Path: <devicetree+bounces-270821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YrRhKeyDp2mgiAAAu9opvQ
	(envelope-from <devicetree+bounces-270821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:59:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC291F9080
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:59:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 909E2308AF71
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 00:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 857EB29992B;
	Wed,  4 Mar 2026 00:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BoYgXmPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DD9223336
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 00:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772585950; cv=none; b=rU/x8OWpitE7/gfnpg/O38Fe7pIQKrIzpw3/tc3SMNo1l00j1mExJSDWd9osAb+D93MeNJT7qm+uiULWIFwU1HOYkQ/I3RVcDX65FwrtKL35SRy4uS0ZLuOTA7wX0cRyVygrsigu62offerpaoFEOA2ItYeO3G93uV2gKRMQ/dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772585950; c=relaxed/simple;
	bh=H1e4gqaV2JetLMM4A8QT65Ya0OhayTEFoaSkzjmmcGA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U2w6cSKfMEPegynNQjEG4UE4F5g6LPVymS4GpscqYHxbVQSfBdHdvZKowOGX1+/zLiONzpebE5DAWn0oBM2wzUh86sTMI+Jykkw7q8dNh6ugEjfxIW/YV74kSJkFVlZ47pDkc7kEzBUBJ8mzp3SVl2g4fbFYHL5pr0hR6W1+Chs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BoYgXmPF; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso55475795e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 16:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772585947; x=1773190747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h38h80KHifUI84SS+z6wlkgcplrzkREaoXBLQFpmips=;
        b=BoYgXmPFk9j2BfsnKHSRS4XRZPNecRMh9W3jm1wX7cAtxfi24SjRIa2v2sTVGk/vkj
         LfgE6mFUmWtLxlF76Kkyq9fZjtaM+5/NTA2UC0Prq0dS5AkXqhP2s5VO7PDa8hSUqMuz
         nklQHQySoVQGQmyAmUDhSCnX+b3vAlh36JJ5O5b9ChLMTpVIUQivbpP+GqN7yu+uip3W
         fxBHx3E8zgQfqkkVjMznSOJQ+JHNMkwgmshAADrqlWkInDwp622m7ovIRUqhp/gbcZJ8
         04a6PYSMhYCrPVTnykw9PUGtMoqX0Z3WRtUNOynn8eJzasvDiCIGnKg407yTia6lSSmU
         LWcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772585947; x=1773190747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h38h80KHifUI84SS+z6wlkgcplrzkREaoXBLQFpmips=;
        b=UwgY18y/kmFj0n5OyAG3Ug+a+0RAsgisJ5fYTbKkrEXKZ+5qWkzE96oMX7Md+hKzjM
         D39pSofwYNke7WzgtJl9/o4NTtbXO4MD6PDrz9GVbLyFgjlIZrBxBnXzHi6SjBOZz7lZ
         i7tE51cnMteJYc3O4BrCddJgpZBz+pP5wLr/6IO1pZX+Vnl8l6EdxMhQWTaOWQxw3Nts
         6bQsR3frWnilXabqGfQCwQZqSlhFtO+62xjCjjYpvUilZDsR6fn3rQiim/C4SVOwlMAd
         UtJVPdHfqS76WsWLI5NnuM29qoXrZDnN/C/aROiokQq2iCZ5E7pbXXiPmVjpkA7qLJ2r
         qX5A==
X-Forwarded-Encrypted: i=1; AJvYcCXWL3q4xRhDZOFxuYqHhUTtV1IJN7uCbQuIZpCd/jgLM188bsUIT1i1AWilW6/fVx15vqrhChx6sxxs@vger.kernel.org
X-Gm-Message-State: AOJu0YwcMwMiIwVIEUURIT0nVmMv0Dn++tFtLrMAZmX8+0qmTTF9Rxso
	Y/nXSl2k1KFjhiAuEERZ7sNuOuEvFPHV8IY2aKDPw5VQvDaZsBlkJDxD
X-Gm-Gg: ATEYQzzRiIwUoGgMXfZmSBJVJVLN+kaVfRwgCjNZHo2hCOD41VHTJuv0fi6GuOg84R3
	NcDINxF8d/JuX0QKOEpX1TjnkRVEdrW9F69aI2nTssplKMq+2j4jyyCJY+GFmQNW4Gjzr75bXTO
	kKy71WyMp0sYWbIMipWT0el2bzrPEMq6rgz7EDKJvxUHL8VVyX2E01u4jWdrth8wg5N4LDHXJLm
	KKFPW5ZdxJCaBN/ED7F2JdiSqImlLYSMzqgZyyH75Y+EfNXAcxLomSAmYnIsFb8/8rwAd5Uc+g2
	cbcN/3Zv6oUvL46ZIbLMxnuGNjCUdIP5jZAunDVWC+4lUhKtqUD29gQ5QxzpWilax/G9h6Anz2l
	rGtXnCavsIvFDepl63K6AdbOUmEK8DKa4a9lIR4H7lckOhp2FA/fyf+gHWb3MhX4UXB+bV8FCtr
	3izdt1+9YiqfTzwxdi2FTTxzc1/BD5oavtgUhVgkTC+qC5pIh8sd8Wbwo=
X-Received: by 2002:a05:600c:4e51:b0:483:7783:5373 with SMTP id 5b1f17b1804b1-4851988ce8fmr3051295e9.23.1772585947161;
        Tue, 03 Mar 2026 16:59:07 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851880724esm26927575e9.9.2026.03.03.16.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 16:59:06 -0800 (PST)
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
Subject: [PATCH v5 2/4] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Wed,  4 Mar 2026 01:58:34 +0100
Message-ID: <20260304005843.2680-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260304005843.2680-1-ansuelsmth@gmail.com>
References: <20260304005843.2680-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1AC291F9080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270821-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,infradead.org:email,microchip.com:email,devicetree.org:url]
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


