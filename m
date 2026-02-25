Return-Path: <devicetree+bounces-268101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CXKM6pWnmkKUwQAu9opvQ
	(envelope-from <devicetree+bounces-268101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:55:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8878B19039A
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6CF3830A7559
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 01:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920F922127B;
	Wed, 25 Feb 2026 01:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DtapZzeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD8D1DDC37
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771984081; cv=none; b=RELBEo06fHgoDwDBQqiFF8y9PEulAIubVzI4DWzcwumvgqwxO/vgIepFKYu1HmGKptVanAJqeg7ph09KNBtFdRcM+ZoOFVSZbZJHXeNoFE4DcqWpkHgRxNWxTlG+HgiXK6ugX3WzL42KHU+cEOfau9m9st6B+hMJRg/mBCqaOQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771984081; c=relaxed/simple;
	bh=MAGEEd13MCvi6LrJomw1tdWe/J4Nih2UdmE3xgcfTm4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bXKGD3TF8e6e6He8bYiGhG4L3SrSsJc44uRxNfaM+8Ot9J18bpDLl/tzXVcDrsHLeRs7+YQUVma9htwuSEpsLsho/KL553mYzqtxNDQyVJ5QX3XbD5FpeuBB2qr6odpZTDXoRgQcp9kEPP91pWQLWdnki/hQ8LOwrW69cWAtIlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DtapZzeF; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5fdf71f3327so277518137.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771984079; x=1772588879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bhdRsHb+agfbG472LK6KXfddMx+16zI/+slYVcbavrw=;
        b=DtapZzeFzuw+2Ee4FtNaZyPyvN+sRGDtXiHIc6rUpua4MZJ7xomuX7BiGWFNLD5OTB
         JeNFDuY2M6u2KBz3NbNKwB4YvudxisI+wudMcKeeWeYG7/gU1IXHUVxGXlWuhGqAJU7U
         OjAEJPbIJXVvvAm1sxZHBLiSLwYqlxr3N2/plNTL8Aa45enjC5aZWrhH+wSlC7IQkWgv
         tJ/avQYEnnSgNQIlvBe0Nx7LrJTzGv+nPgtDLU4GGZq1hjoB7aqIq4m9XpjOgZgOI1OM
         f1zmMET3QOsfRlg/Rekf4dMlU2O0R5Z6uLg7ewIqBYORO7FM+zZCOfPC/mjPaedU1P1l
         qlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771984079; x=1772588879;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bhdRsHb+agfbG472LK6KXfddMx+16zI/+slYVcbavrw=;
        b=aGQMrtkCP6YIKqj8RNB+xi55e5FKhxs4bzZ5JQhs3DQk37cNdyji3AH3diRUhx76V0
         1sP0859IkmO64UwTmIeYJqwkXd1rJOkJU2LK66adVj9INqsgcV4UAP09PStwqL9tgj+s
         HhXoqWrB8fVg/GMCXTB2HSHbYPPs98EL7YqVjB2W2+ttLHf4d9A655uSv9TpijbuLk8x
         FgSJX9dR4Je4TE1YS2J5no4HOQw/kQjVSaBY8wZpE65S59BybH2gQIH3SjlISOPioffl
         leh36dJtzke+pbor7mJAoEhG9zbiumNnyM5CoRIak24WSJ76Wm4hnQJVS/nlMMdUU7Qb
         BhrA==
X-Forwarded-Encrypted: i=1; AJvYcCXU3R4HOCgzZfLXKClA1zrZblAeLicTLDuD1gdd+mk7sUouArxEZ/+pOiM4Gs3K00+TjCp406v9qMyi@vger.kernel.org
X-Gm-Message-State: AOJu0YwDt8DJKGRphutb4fqQXalJEbalbctWFb9jG9ZyOFWsaT7NBetx
	ZByTK8N8Nho+x17+8r3UUbyZudknVxBYH/gUxuL29M+9Ep4KQCumz2Qw
X-Gm-Gg: ATEYQzwVWkkr68/wFQhR/Dfb5MJWSDyGkS67IT3+Vas0O3P0EUKgpkWz8+J8r1eSfJt
	hquQugE5P56DS6h5IV23yyjS6JwuKg1cBwDuC/26ddrtcx9jPm54Hr1zmYwJzs01cTCUXYjzyeR
	u6MHXWDIqMAizLmz2MpGpz1UlOgE8mUEDSpllzyG6uTBBHJCDCjQzvQTr7GcwvvrfaTAhEapi/a
	yF5sM7XCd8orSJXA7AWoj9guDeOOTdak+PVsgLHVR2fM6RxpjrlS4x2rax5UrQXbBSWwp24uL6C
	vfA2OXxKluFKfVIYrdCAFofGT8Ni4sxaYSQxe0RM/3Qg4N2hFBgY92JSXaym57qv0lPOP/ra3Be
	yjbwcH+pL6DTi1CrLG+lYTDOfLwe9RfI07hy62Ae1mgEog0A4Afd1QTLQMWMEFLxyyEqtehDweg
	LZLSRTDk9NGlDOggOdCTxNKPkp09LArQzLTe9tGPqXAM1BsP47botgP9xa7e+SB8KKMLOKLIcqd
	HGO
X-Received: by 2002:a05:6102:26c3:b0:5ef:a1ea:bd33 with SMTP id ada2fe7eead31-5feffdf4bbbmr1123398137.9.1771984079132;
        Tue, 24 Feb 2026 17:47:59 -0800 (PST)
Received: from localhost.localdomain ([2804:14d:4c64:82a2:db88:7d47:d63:c87b])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94de1869b3csm1767247241.13.2026.02.24.17.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 17:47:58 -0800 (PST)
From: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
To: krzysztof.kozlowski@oss.qualcomm.com,
	gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	davidm@egauge.net
Cc: ~lkcamp/patches@lists.sr.ht,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH RESEND v2] dt-bindings: usb: maxim,max3421: convert to DT schema
Date: Tue, 24 Feb 2026 22:23:20 -0300
Message-ID: <20260225014751.9121-1-rodrigo.gobbi.7@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigogobbi7@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-268101-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,analog.com:url,0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8878B19039A
X-Rspamd-Action: no action

Convert legacy maxim,max3421.txt to proper format.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
---
Just resending this from last year [1] since it might not be on Greg's
inbox anymore. Same as v2, just with review tag.
Tks and regards.

[1] https://lore.kernel.org/linux-devicetree/20251107001812.10180-1-rodrigo.gobbi.7@gmail.com/

Changelog:
v2: https://lore.kernel.org/linux-devicetree/20251107001812.10180-1-rodrigo.gobbi.7@gmail.com/
v1: https://lore.kernel.org/all/20251009182046.185520-1-rodrigo.gobbi.7@gmail.com/

---
 .../devicetree/bindings/usb/maxim,max3421.txt | 23 -------
 .../bindings/usb/maxim,max3421.yaml           | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/maxim,max3421.txt
 create mode 100644 Documentation/devicetree/bindings/usb/maxim,max3421.yaml

diff --git a/Documentation/devicetree/bindings/usb/maxim,max3421.txt b/Documentation/devicetree/bindings/usb/maxim,max3421.txt
deleted file mode 100644
index 90495b1aeec2..000000000000
--- a/Documentation/devicetree/bindings/usb/maxim,max3421.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-Maxim Integrated SPI-based USB 2.0 host controller MAX3421E
-
-Required properties:
- - compatible: Should be "maxim,max3421"
- - spi-max-frequency: maximum frequency for this device must not exceed 26 MHz.
- - reg: chip select number to which this device is connected.
- - maxim,vbus-en-pin: <GPOUTx ACTIVE_LEVEL>
-   GPOUTx is the number (1-8) of the GPOUT pin of MAX3421E to drive Vbus.
-   ACTIVE_LEVEL is 0 or 1.
- - interrupts: the interrupt line description for the interrupt controller.
-   The driver configures MAX3421E for active low level triggered interrupts,
-   configure your interrupt line accordingly.
-
-Example:
-
-	usb@0 {
-		compatible = "maxim,max3421";
-		reg = <0>;
-		maxim,vbus-en-pin = <3 1>;
-		spi-max-frequency = <26000000>;
-		interrupt-parent = <&PIC>;
-		interrupts = <42>;
-	};
diff --git a/Documentation/devicetree/bindings/usb/maxim,max3421.yaml b/Documentation/devicetree/bindings/usb/maxim,max3421.yaml
new file mode 100644
index 000000000000..4639be7ab059
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/maxim,max3421.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/maxim,max3421.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MAXIM MAX3421e USB Peripheral/Host Controller
+
+maintainers:
+  - David Mosberger <davidm@egauge.net>
+
+description: |
+  The controller provides USB2.0 compliant with Full Speed or Low Speed when in
+  the host mode. At peripheral, it operates at Full Speed. At both cases, it
+  uses a SPI interface.
+  Datasheet at:
+    https://www.analog.com/media/en/technical-documentation/data-sheets/max3421e.pdf
+
+properties:
+  compatible:
+    const: maxim,max3421
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 26000000
+
+  maxim,vbus-en-pin:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      One of eight GPOUT pins to control external VBUS power and the polarity
+      of the active level. It's an array of GPIO number and the active level of it.
+    minItems: 2
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - maxim,vbus-en-pin
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        usb@0 {
+          compatible = "maxim,max3421";
+          reg = <0>;
+          maxim,vbus-en-pin = <3 1>;
+          spi-max-frequency = <26000000>;
+          interrupt-parent = <&gpio>;
+          interrupts = <42>;
+        };
+    };
-- 
2.48.1


