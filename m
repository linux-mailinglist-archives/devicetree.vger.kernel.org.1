Return-Path: <devicetree+bounces-270453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MEAC5zTpmnHWgAAu9opvQ
	(envelope-from <devicetree+bounces-270453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:27:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A89A1EF64C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:27:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0330B3158E98
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 12:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A7D327BEC;
	Tue,  3 Mar 2026 12:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kRnuYsfb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336B633EB0A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 12:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772539227; cv=none; b=gnjt+Gs5HnqLQVHLaw3enC3NvaBMlaNCTGTgRGUFnnDUIV4pXbx2IQgWTj0sT+4ZRJmUmFZnEP3+seiEqPyZuueIky88oUXDxSfsC+x9NgabJebb+BSHGP7JiF5VjSGeogU2qSbz1ScN2GcBtgGUZFt4Bwzj4OMXQMMvFfKMb/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772539227; c=relaxed/simple;
	bh=+u8y18JF4VndbNW0zZuNppihMCIj3AiUzGAHUNganUo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j0saZ6aOmR5tyf+BD+rEtrFetr++l9z0dzqDd50egZLtQhF4n4g5xkm+J+791mXmo1vbOQ++ELPNvXXTgup8HKB5f7fjy3UEgVaBKaBa30BnfFaVN1hUPUm/sMoi6ekMFl4zP0vjzZY14Y3tZLQyq8LV2WS4/96Ye+DfZrrzOIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kRnuYsfb; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2ae50a33ff8so16895535ad.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 04:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772539225; x=1773144025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uJYNHbsfkyzn8j4YjF9RcGA2Jegyk8KJV6RIpQamroU=;
        b=kRnuYsfba5nTQRr/DB/ByfH32xqBktPFO4srFroLiP19JruuKRpdRcRmyfy5FeJMnO
         LeE8qjJzzculYqPSxm9KeDvjl+BLE8iGJi7Ut0Ic8ImPViq1H66cx2mk72GiL/CmzWbH
         ntCftnuO4BC+akWKsjEtnORPjt7VAb4vOR/z0u8ST8LuxKH1oyHzUHWpqjjy64vB/WrK
         xIlGUqGVf5sQ081SuoJbrfOF5bvKv+bFBfDOBgPQxHZa5cU7Z5ppSCn6jwassYkhaxiS
         afm49sBNlG1yXvM+kq1EaO+w0yC9cB/UT9YGKTrAcS0nZwlWjMtQzaJALa9VN4b9ewg+
         rBqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772539225; x=1773144025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uJYNHbsfkyzn8j4YjF9RcGA2Jegyk8KJV6RIpQamroU=;
        b=Qcn82EbxAb8B+XfALdp0TFiT2Bn7doQOYBNsZ955yMP/aeQSN9UNqOKqK/Ae0ZVZ9R
         Y69lDAwWYAFJT845fm656TM6z4W+37XFn2iiCniaAzcc8j+b6Jrvt8U2wk3aafFvwJ9r
         FIJG7mMptN6MlWPrgV8RSJckBSOe3Oy178AD7U/hQdaWURNZYPTchEuAV94+1Vx2JvK8
         uKE22eazrtQSAhyXHduSTdrhU+yw7Hc0pgCEavhfkVF0lf/y2uN84CFJLShSJB/Auylp
         glELiXnHeVOR3dHpT1sL9y24HIpObk7f1ZmBpXeh9l/3NDS3pf1DcjnzHXp8cfDJzLon
         n8Dw==
X-Forwarded-Encrypted: i=1; AJvYcCWq9jQK4oJDvE6PLGBO2lZYbkfFKptueld6ee3EhvFo5B4lhQAHqW9d7Daox/p5evqqKX6GsUi6YWIL@vger.kernel.org
X-Gm-Message-State: AOJu0YyAx1HBJbBjAPpQzeKV+TXNPuOG4D1gx7bxNFOQpyecX6bFw9O7
	Hd/0XDO8UErrofpUJsITNbyzLofLAD4+Jj8l1kelws6eqJWrN1Kju05Q
X-Gm-Gg: ATEYQzxkgE65cVa+SfwZuimwLQTO1E+kpOoX5Ud9V3U3tkac2HGEA28xNj9RwMPowQh
	3Pjtae1nxD4jZ1BKwyX5oBN/cJ0Gk1977vx/aWAZDVbGtEqwK/dveQ5L8eKvhcmwgkKNATPqY6q
	19R6wJ1DmVHnAXUQkEnj8DL6UOCAjNzqn2t3CLlxgzhvTYuoJOjBdAebYswGADcqqVGXhOs4Dfa
	SiUhCGSoCniwwlhxgTGdgkAEJtG31JXQtuCWRCNlKUs9UQ20mLF+f7K6auGkIl8KdyU999DPjv9
	kKLdPZJysjc6mBdIyf054SygQx9ZMKDNvqDTnR0px2IsDBUKfD6j535SA4bzuTeF6uyoC3jBSpg
	LBgqIsnn1x0YOibHoxlgt8raf2yT/QOsG+1iVObdeo2Ewa6L4lwzt6ughMZ/nu+gF7iC7/R5Fhb
	3JHU4fM8KRByrPIv47hw==
X-Received: by 2002:a17:903:2b0b:b0:2ae:5a44:ea73 with SMTP id d9443c01a7336-2ae5a44ff28mr47274385ad.30.1772539225280;
        Tue, 03 Mar 2026 04:00:25 -0800 (PST)
Received: from nuvole ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae541358d4sm52570345ad.75.2026.03.03.04.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 04:00:24 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH 1/2] dt-bindings: display: panel: Add Himax HX83121A
Date: Tue,  3 Mar 2026 19:57:29 +0800
Message-ID: <20260303115730.9580-2-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260303115730.9580-1-mitltlatltl@gmail.com>
References: <20260303115730.9580-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5A89A1EF64C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270453-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url,0.0.0.0:email,0.0.0.1:email]
X-Rspamd-Action: no action

HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../display/panel/himax,hx83121a.yaml         | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
new file mode 100644
index 000000000..932f1b1f1
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/himax,hx83121a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HX83121A based DSI display Panels
+
+maintainers:
+  - Pengyu Luo <mitltlatltl@gmail.com>
+
+description: |
+  The Himax HX83121A is a generic DSI Panel IC used to drive dsi
+  panels. Support video mode panels from China Star Optoelectronics
+  Technology (CSOT) and BOE Technology.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - boe,ppc357db1-4
+          - csot,ppc357db1-4
+      - const: himax,hx83121a
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description: phandle of gpio for reset line
+
+  avdd-supply:
+    description: analog positive supply for IC
+
+  avee-supply:
+    description: analog negative supply for IC
+
+  vddi-supply:
+    description: power supply for IC
+
+  backlight: true
+
+required:
+  - compatible
+  - reg
+  - vddi-supply
+  - reset-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "csot,ppc357db1-4", "himax,hx83121a";
+            reg = <0>;
+
+            vddi-supply = <&vreg_l2b>;
+            reset-gpios = <&tlmm 38 GPIO_ACTIVE_LOW>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    panel_in_0: endpoint {
+                        remote-endpoint = <&dsi0_out>;
+                    };
+                };
+
+                port@1{
+                    reg = <1>;
+                    panel_in_1: endpoint {
+                        remote-endpoint = <&dsi1_out>;
+                    };
+                };
+            };
+        };
+    };
+
+...
-- 
2.53.0


