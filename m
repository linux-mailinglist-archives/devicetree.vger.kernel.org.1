Return-Path: <devicetree+bounces-323669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6llzGpaFT2rbigIAu9opvQ
	(envelope-from <devicetree+bounces-323669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:27:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F33B97304E6
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:27:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ite.com.tw header.s=dkim header.b=jNbmxidu;
	dmarc=pass (policy=quarantine) header.from=ite.com.tw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323669-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323669-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 47B373009CE6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A0DE41168F;
	Thu,  9 Jul 2026 11:27:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (hc210-202-87-179.vdslpro.static.apol.com.tw [210.202.87.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B693FFF8E;
	Thu,  9 Jul 2026 11:27:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783596430; cv=none; b=JEYpghWD0VpaNh/EylO7pRNMXgO8MfLgBkVObPVH7ViVobnlFinf/flPI3mzREdu6Zlt4qIO5h/HHS1X8hOKqGlH2R9EPPBy2dHpf1taK+XVGO3LJ9lQ81QA8LOH8ZXodXLiMjVJCVceQX3wr/kRRXASc3eRKG1bQWmMEwgD8eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783596430; c=relaxed/simple;
	bh=luJW/TfpwScFAJOPzOKKSMkvd9yiHNCd+kn0ONp/zJE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=ACzFxsr0p7zp0w2kK93Pt4owwgtZ2YodrR62T7Li+dSpzvw3iiM9xCwyipDqtPgPpIj622AuGS4wfYhfacTcZDO1uKSVyoG86QYjnaQPmss1YIjteLoeatb2ifirHrLg5bpHV99BYDvwTG7aT4OwNkKap9jCZ1MIHSIx1z4PH0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=jNbmxidu; arc=none smtp.client-ip=210.202.87.179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=t8eYubgmszips6H0ZPFeGALMgj6ljkLqh8iAGD5/48Y=;
  b=jNbmxiduhxSOz/A5GTWBdrSpWW/LlpKE+CiWFrCxTcFAkrbLa6n8DRvs
   RiLbm4vT9cDuukXbKFlLrQjkflLHZYD5LDHs845CMc6MaQnn3biz++3vP
   TvzQzexjZGeRE2RfZ7/rYnW0Eb4ib5qTaW0todaY0D4ioYeMkexXLn2lN
   nB7fI6o5La/vQEjQjt79+5LyTBe+1/wluT33anUsTwfmvZ+2GSHIoENF6
   7HUjZF18B2vJxhaImiyfh546RURDbzmz3uTnAUkFG8NBYlQX/yxY0tQIi
   YbpCW6yqzC/TGcS2Yjcgs6tB6EGCe5c32PnkxktDH3gxl5aXGTqmW8kwL
   w==;
X-CSE-ConnectionGUID: GqxYrjjKQ6+goGngqTQ2xw==
X-CSE-MsgGUID: VvIjqZWVTrSxOvMrGkJScg==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 09 Jul 2026 19:25:56 +0800
Received: from hscmail1.internal.ite.com.tw (HSCMAIL1.internal.ite.com.tw [192.168.35.58])
	by mse.ite.com.tw with ESMTP id 669BPqM9093118;
	Thu, 9 Jul 2026 19:25:52 +0800 (+08)
	(envelope-from amber.kao@ite.com.tw)
Received: from [127.0.1.1] (192.168.37.107) by HSCMAIL1.internal.ite.com.tw
 (192.168.35.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Thu, 9 Jul
 2026 19:25:50 +0800
From: Amber Kao <amber.kao@ite.com.tw>
Date: Fri, 10 Jul 2026 03:25:47 +0800
Subject: [PATCH v3 1/2] dt-bindings: usb: Add ITE IT885x support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260710-ucsi-itepd-feature-v3-1-8523e1e1c47a@ite.com.tw>
References: <20260710-ucsi-itepd-feature-v3-0-8523e1e1c47a@ite.com.tw>
In-Reply-To: <20260710-ucsi-itepd-feature-v3-0-8523e1e1c47a@ite.com.tw>
To: Jeson Yang <jeson.yang@ite.com.tw>, Yaode Fang <Yaode.Fang@ite.com.tw>,
        Bling Chiang <Bling.Chiang@ite.com.tw>,
        Doreen Lin <doreen.lin@ite.com.tw>, Eric Su <Eric.Su@ite.com.tw>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki
 Krogerus <heikki.krogerus@linux.intel.com>
CC: <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Amber Kao <amber.kao@ite.com.tw>
X-Mailer: b4 0.15.2
X-ClientProxiedBy: CSBMAIL2.internal.ite.com.tw (192.168.65.41) To
 HSCMAIL1.internal.ite.com.tw (192.168.35.58)
X-TM-SNTS-SMTP:
	1A0234764F38D13FC10216A884E845B759D95D4C06B6A4AA3A8A219F0C702D062002:8
X-MAIL:mse.ite.com.tw 669BPqM9093118
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.34 / 15.00];
	DATE_IN_FUTURE(4.00)[7];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ite.com.tw,quarantine];
	R_DKIM_ALLOW(-0.20)[ite.com.tw:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323669-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[amber.kao@ite.com.tw,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jeson.yang@ite.com.tw,m:Yaode.Fang@ite.com.tw,m:Bling.Chiang@ite.com.tw,m:doreen.lin@ite.com.tw,m:Eric.Su@ite.com.tw,m:gregkh@linuxfoundation.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heikki.krogerus@linux.intel.com,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:amber.kao@ite.com.tw,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amber.kao@ite.com.tw,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ite.com.tw:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F33B97304E6

Add device tree binding documentation for the ITE IT885x. The ITE
IT885x is an I2C-based USB Type-C Power Delivery (PD) controller.

v2 -> v3: No changes, resent alongside the driver patch which needed
another revision.

v1 -> v2:
- Per Conor/Sashiko: dropped the redundant `gpios` property, the
  interrupt line is already described via `interrupts`
- Per Conor: renamed example node from `itepd@40` to `typec@40`

Cc: Yaode Fang <Yaode.Fang@ite.com.tw>
Cc: Jeson Yang <jeson.yang@ite.com.tw>
Cc: Bling Chiang <Bling.Chiang@ite.com.tw>
Cc: Eric Su <Eric.Su@ite.com.tw>
Cc: Doreen Lin <doreen.lin@ite.com.tw>
Signed-off-by: Amber Kao <amber.kao@ite.com.tw>

---
v1: https://lore.kernel.org/all/20260615-ucsi-itepd-feature-v1-0-a826cfd0df6a@ite.com.tw/
---
 .../devicetree/bindings/usb/ite,itepd-it885x.yaml  | 105 +++++++++++++++++++++
 MAINTAINERS                                        |  11 +++
 2 files changed, 116 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ite,itepd-it885x.yaml b/Documentation/devicetree/bindings/usb/ite,itepd-it885x.yaml
new file mode 100644
index 000000000000..0a292a8e72cd
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ite,itepd-it885x.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ite,itepd-it885x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ITE IT885x USB Type-C Power Delivery Controller
+
+maintainers:
+  - Jeson Yang <jeson.yang@ite.com.tw>
+
+description:
+  The ITE IT885x is an I2C-based USB Type-C Power Delivery (PD) controller.
+
+properties:
+  compatible:
+    const: ite,itepd-it885x
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  wakeup-source: true
+
+  pinctrl-names:
+    minItems: 1
+
+  pinctrl-0: true
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  "^connector(@[0-9a-f]+)?$":
+    $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        typec@40 {
+            compatible = "ite,itepd-it885x";
+            reg = <0x40>;
+            interrupts-extended = <&tlmm 129 IRQ_TYPE_EDGE_FALLING>;
+            wakeup-source;
+
+            pinctrl-names = "default";
+            pinctrl-0 = <&itepd_int_default>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            connector@0 {
+                compatible = "usb-c-connector";
+                reg = <0>;
+                label = "USB-C";
+                power-role = "dual";
+                data-role = "dual";
+
+                ports {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+
+                    port@0 {
+                        reg = <0>;
+                        endpoint {
+                            remote-endpoint = <&eud_con>;
+                        };
+                    };
+
+                    port@1 {
+                        reg = <1>;
+                        endpoint {
+                            remote-endpoint = <&redriver_ss_out>;
+                        };
+                    };
+
+                    port@2 {
+                        reg = <2>;
+                        endpoint {
+                            remote-endpoint = <&fsa4480_sbu_mux>;
+                        };
+                    };
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 461a3eed6129..1b03fa3aa060 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13720,6 +13720,17 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/bridge/ite,it66121.yaml
 F:	drivers/gpu/drm/bridge/ite-it66121.c
 
+ITE IT885x TYPE-C PD CONTROLLER DRIVER
+M:	Jeson Yang <jeson.yang@ite.com.tw>
+M:	Amber Kao <amber.kao@ite.com.tw>
+R:	Yaode Fang <Yaode.Fang@ite.com.tw>
+R:	Bling Chiang <Bling.Chiang@ite.com.tw>
+R:	Doreen Lin <doreen.lin@ite.com.tw>
+R:	Eric Su <Eric.Su@ite.com.tw>
+L:	linux-usb@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/usb/ite,itepd-it885x.yaml
+
 IVTV VIDEO4LINUX DRIVER
 M:	Andy Walls <awalls@md.metrocast.net>
 L:	linux-media@vger.kernel.org

-- 
2.53.0


