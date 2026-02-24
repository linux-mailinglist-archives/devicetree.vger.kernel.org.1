Return-Path: <devicetree+bounces-267905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIQcHFilnWmgQwQAu9opvQ
	(envelope-from <devicetree+bounces-267905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:19:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD7618784E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:19:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C17731CE264
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD5C939C637;
	Tue, 24 Feb 2026 13:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dKRn5zU5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732C839C636
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938941; cv=none; b=JPj5kebPmSU1V3DQwrCYkE4P4RMZfVpALj0QtNOAPRobo7t7PeWjkuSPzZlYzTrN42/b1F9U7sN2wc8gFgI7m81aIIbSAhp2bV2TVOJYRrmm19r0iPNQpuuO+TDb+TX2J0dtVaYQQ0BPpLFLZrOt0kdOLcnrJ50nAyStdoCI18Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938941; c=relaxed/simple;
	bh=ntDf5EIj+pJANxjzhgtonTAti2/lZAfjc17UnVhvnjw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ml2pkvh7cjU2278/OYNchG2UqPIV6Y57WzU1YymfDjOC/VUgM3ClJTevuZB4P1VnbK+wOp50kGspYfPwXRdjYbRkgxVp63Yp5DVGUA10P4Jk3hXMeviBOZsxfKlXlZIaqkzZdHXJ9PZC7IZn8YEOeK3zAp6SwIZUKLrZI/K5cVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dKRn5zU5; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-8230f2140beso3644584b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771938940; x=1772543740; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZKyVMXkU8eVMnRXROgyxZzfs8lU4JDR8nVIKWksqSOY=;
        b=dKRn5zU5zNuenj8l9rNV8Upcg8BX5TM8iXBx7hzTitLtT0DFHavPiHLuHBOwCeLEBK
         d7mVnGwKWE28w1ez00Jv58SqXHj3hw8Ybih6zPCXONs1tE1JDFv6HWsUIn4uSnQSQ5t1
         +PG5HfZYw+/XGWJngNGpz4MsD6OVDFT2g0n8H8LsCnfjO5qHy5I82mDTI7KmAEoN7nwv
         dxfewmb8U1le3hHdYqperRKPUwcIVQAW3oGrB5ZrOyNqyUVl5W8K9hZxfmxGGeGIzIgk
         AhCoZbAfRYK6183TdsyFkpglvRq5fAmJ8rfrWAyxMyqi/Xh6ihw8pRLfZKvS2yTVJqn9
         TvaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771938940; x=1772543740;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZKyVMXkU8eVMnRXROgyxZzfs8lU4JDR8nVIKWksqSOY=;
        b=AW4tQIHSwPeTw5nr9gUVfgmfGjQQAX+CcbC1VtzG/k83NK0vP/p/cxAt4CCHQvOYaQ
         nRES8k8GjA7XohDHZxJrBC/Tkcez5xRPMDd/Nz/ahegc9KkvpmHnZZw9Qc/3W4lgfERC
         0fqC3pG9t0+QsA60txJwf/InhoY1ljBOL8xPNSroq1TuZpZLotoV+MLK1a/g9fcUvnK5
         jLxaCwDlCM1c8VcXR6M37Uc/AZ6eN7lJYUyoFY3sqNF8zp+CBeGn/XZDiq7kBNfReLPH
         Z3hFU7tIk52wH7bDSVpo1x6hs/N1BLz1BmOfwIuKBtorMb6Fr902W88nuUn48Diph/Mc
         2mig==
X-Forwarded-Encrypted: i=1; AJvYcCXeQx6uI1xMjdCHUjZ18HxEcZUPPdsOpEGeU6klZDT8pXzy2wdGuM8PkeTlgXchZMTFwWj+m8P/eFsQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzstZKY5bDLgE2K/U//FtWEqcO4vaI8+onKCnV5RPbHPycEdjeg
	1Ou/FC3XxLr4xjSd9b1aN2Su2yQp2HO4+KDkLdEla6BBPCCEV7AqeMAB
X-Gm-Gg: AZuq6aL91Oy6Fiw63i99PDo1V7No4QsBmK3SaoIsW3dOpUnKB3DmfC6pgduFY0zLNBp
	KLgGsoNAjy4fFR3ratcLpvBbMDkLManNGa/uo97eU8ZFDTlzGay/OZ+2B47Q2PRS3ww0hjnAgeh
	C42VdyCpPxrjQUt0PzZy/918O6NTY+se/in3hpLVw41Rf4/M41XZ+ZTzRN0T6uKC6Ltrz8WzqPQ
	YblFzEMPq1PV+9O95rdzaMwRncE/pt1h+M3mckms2fiENN6UR1mIxFeX8Bs0MkrvFYXNPpQQAG0
	hb6zncjY1HwPBcQuQrc2phAp13mY8HQU+TZi6tv7yjNbE3z9Doz0Wr/zSof6+vgLgqBs+n3WNeY
	0ZtFMiEgv07lYb/ryHfatb/OHXVgv56T/DwTU5zaTJvi4jXdb4iVjAgzO3Jzl+gUDEHswDPOzRc
	Ye4duC/RD93UcVi9ukKbwbegr69RekhW6YcQUsZC6G1g==
X-Received: by 2002:a05:6a20:918e:b0:35e:5055:1ec with SMTP id adf61e73a8af0-395460a1f45mr11049420637.17.1771938939751;
        Tue, 24 Feb 2026 05:15:39 -0800 (PST)
Received: from Black-Pearl.localdomain ([27.7.171.51])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c70b7253a70sm10794013a12.24.2026.02.24.05.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 05:15:39 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Tue, 24 Feb 2026 13:13:00 +0000
Subject: [PATCH v2 3/4] dt-bindings: usb: atmel,at91rm9200-udc: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-atmel-usb-v2-3-6d6a615c9c47@gmail.com>
References: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
In-Reply-To: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Herve Codina <herve.codina@bootlin.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267905-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fffa4000:email,microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: DFD7618784E
X-Rspamd-Action: no action

Convert Atmel AT91 USB Device Controller (UDC) binding to DT schema.
Changes during conversion:
- Include "atmel,pullup-gpio" and "atmel,matrix" in the properties since
  they are required by existing in-tree DTS definitions.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/usb/atmel,at91rm9200-udc.yaml         | 77 ++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml b/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml
new file mode 100644
index 000000000000..6961cd5d5d89
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/atmel,at91rm9200-udc.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/atmel,at91rm9200-udc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91 USB Device Controller (UDC)
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+description:
+  The Atmel AT91 USB Device Controller provides USB gadget (device-mode)
+  functionality on AT91 SoCs. It requires a peripheral clock and an AHB
+  clock for operation and may optionally control VBUS power through a GPIO.
+
+properties:
+  compatible:
+    enum:
+      - atmel,at91rm9200-udc
+      - atmel,at91sam9260-udc
+      - atmel,at91sam9261-udc
+      - atmel,at91sam9263-udc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: hclk
+
+  atmel,vbus-gpio:
+    description: GPIO used to enable or control VBUS power for the USB bus.
+    maxItems: 1
+
+  atmel,matrix:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the Atmel bus matrix controller.
+
+  atmel,pullup-gpio:
+    description:
+      GPIO controlling the USB D+ pull-up resistor used to signal device
+      connection to the host.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/at91.h>
+    #include <dt-bindings/gpio/gpio.h>
+    gadget@fffa4000 {
+        compatible = "atmel,at91rm9200-udc";
+        reg = <0xfffa4000 0x4000>;
+        interrupts = <11 IRQ_TYPE_LEVEL_HIGH 2>;
+        clocks = <&udc_clk>, <&udpck>;
+        clock-names = "pclk", "hclk";
+        atmel,vbus-gpio = <&pioC 5 GPIO_ACTIVE_HIGH>;
+    };
+...

-- 
2.53.0


