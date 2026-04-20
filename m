Return-Path: <devicetree+bounces-288497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPfSEy6U5WnrlgEAu9opvQ
	(envelope-from <devicetree+bounces-288497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 04:49:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B0B426660
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 04:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3696C3004C38
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 02:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA80377579;
	Mon, 20 Apr 2026 02:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b="lAQNjAth"
X-Original-To: devicetree@vger.kernel.org
Received: from out198-20.us.a.mail.aliyun.com (out198-20.us.a.mail.aliyun.com [47.90.198.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20C52FA0C4;
	Mon, 20 Apr 2026 02:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=47.90.198.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776652787; cv=none; b=WvzeEqT3hRYhesLZVKcr8IQPY+7bpJTJQu/ZtvmVHeJcYqGYUACME765DOVfEyRMSWyic3YeQUwQ9RAeVs2uTPC34CjIAzrnVRnrHekLJyx5nBq+vPFxZ8mjY/Ef1kxusrCQczDrcddC40v9JLyhuJj14zqjSJvpT+6FWVnIV8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776652787; c=relaxed/simple;
	bh=sXGzw0SaheHxvM+yDjhkIt9iDq6X84Mi4MvfA1Pj9AM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=COluVaO5uGPWZ0MLJZfjG97x7khtPw4b56VmWln9z8QQmXK4OhTRLv9OTjqKRXWhfQxfLU6DQGfKqorkJryFvPMvzb5a8CDEqy3jG6ltLmubQXdF4m6brNIPYyTc+Yke5AZh7AmCtxvtwOD2XuGDuv9NZTVfQ2LkbC0wUberQyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=lAQNjAth; arc=none smtp.client-ip=47.90.198.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lontium.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1776652765; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=0F0EvAAE+CnWiQhcCA0mRZ4UGdtN6zmfX1qElHsMKOY=;
	b=lAQNjAthfQedvGS4T3QceHuWkX8rHh1okHlfRDQRddKRSyiPsDRaUH2Szu10MQFiBpKDEJXEEEeClpCriSQxIZzHH1qL4s7rA/cb63lwld/9pvPS/GEjY8s77o7aICvKDQ3KKvj9sC4MhhkVtwjmg1gFd433YH8f76QD9pt9I+zlWVTFbGiay0BeTWO4QRViaPkDuo1dar3dufoHatkMUTKBLcB13f7Rzdk/0wxDWJZB0sPa1vSt9hdPEHHIhS9AkXLP4yptJHdvwEHDa2L/ZR1cCFge8now3+0AWrlbV8Nx4mwNu0ngQgCe+PptlEGb2IOpyPTxrZwh+lT6nkv9Mg==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.07761437|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0631755-0.000267913-0.936557;FP=12538500463005234610|0|0|0|0|-1|-1|-1;HT=maildocker-contentspam033032023038;MF=syyang@lontium.com;NM=1;PH=DS;RN=19;RT=19;SR=0;TI=SMTPD_---.hFmvE2f_1776652441;
Received: from DESKTOP-V2MKAT2.localdomain(mailfrom:syyang@lontium.com fp:SMTPD_---.hFmvE2f_1776652441 cluster:ay29)
          by smtp.aliyun-inc.com;
          Mon, 20 Apr 2026 10:34:04 +0800
From: syyang@lontium.com
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com,
	maarten.lankhorst@linux.intel.com,
	rfoss@kernel.org,
	mripard@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	tzimmermann@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	yangsunyun1993@gmail.com,
	xmzhu@lontium.corp-partner.google.com,
	Sunyun Yang <syyang@lontium.com>
Subject: [PATCH 1/2] dt-bindings:bridge Add LT7911EXC binding
Date: Mon, 20 Apr 2026 10:33:53 +0800
Message-Id: <20260420023354.1192642-2-syyang@lontium.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260420023354.1192642-1-syyang@lontium.com>
References: <20260420023354.1192642-1-syyang@lontium.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [6.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288497-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[lontium.com:s=default];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	DMARC_NA(0.00)[lontium.com];
	DKIM_TRACE(0.00)[lontium.com:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_SPF_ALLOW(0.00)[+ip4:172.105.105.114:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.993];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,0.0.0.41:email,lontium.com:email,lontium.com:dkim,lontium.com:mid]
X-Rspamd-Queue-Id: 92B0B426660
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

From: Sunyun Yang <syyang@lontium.com>

-binding for lt7911exc.

Signed-off-by: Sunyun Yang <syyang@lontium.com>
---
 .../display/bridge/lontium,lt7911exc.yaml     | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
new file mode 100644
index 000000000000..54a73d41635a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/lontium,lt7911exc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lontium LT7911EXC eDP to MIPI Bridge
+
+maintainers:
+  - Sunyun Yang <syyang@lontium.com>
+
+properties:
+  compatible:
+    enum:
+      - lontium,lt7911exc
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO connected to RST_ pin.
+
+  vdd-supply:
+    description: Regulator for 1.2V MIPI phy power.
+
+  vcc-supply:
+    description: Regulator for 3.3V IO power.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for mipi dsi output.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for eDP input.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vdd-supply
+  - vcc-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mipi-bridge@41 {
+            compatible = "lontium,lt7911exc";
+            reg = <0x41>;
+            reset-gpios = <&gpy8 8 GPIO_ACTIVE_HIGH>;
+            vdd-supply = <&lt7911exc_1v2>;
+            vcc-supply = <&lt7911exc_3v3>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    bridge_out: endpoint {
+                        remote-endpoint = <&panel_in>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    bridge_in: endpoint {
+                        remote-endpoint = <&edp_out>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.34.1


