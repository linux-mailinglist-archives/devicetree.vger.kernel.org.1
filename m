Return-Path: <devicetree+bounces-317356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VFX1NjcsQ2pjTQoAu9opvQ
	(envelope-from <devicetree+bounces-317356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 04:38:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5705C6DFD60
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 04:38:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MJqnafbm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317356-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317356-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A9D7305696A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 02:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 285B436C5AC;
	Tue, 30 Jun 2026 02:37:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD5F21CC5C
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:37:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782787042; cv=none; b=pZ0/JNpa77BN4IkYR2DuT0PiXVUwPCLqVNlStolvkeIecd6uA16a8KTyP9EZo9iLgU3YEEOG3TaVEWiOg5f//e/Bz5LJyg0BFQQts1Snqq1DfJ/kEkXtqwHy1+pvczlkYy/Ld7gr5Diq8YONw6tOjdD5z1zoHLhFQc8vDymNiF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782787042; c=relaxed/simple;
	bh=MjH7X+f43hA1yryX6ERI67rzdIL6Egvla+N4vMWWkbA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XRk1PH8dUigLdD9l/AnMN69d3cmrGqCIEAo97jkfIqduW/QzEA8mly6e4L3aZ/PtkQhy4UtDJimk/5QVIKtG7BbzfZ/gMpRs00NvkLHc3BmCAcVf45LkSwJXgQgJ5J2T91l4fAqYguOsQXwuS4xwHrGxhrZRNs2D6pGaiABqBow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MJqnafbm; arc=none smtp.client-ip=209.85.214.170
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2c9b42be8feso22504275ad.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 19:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782787040; x=1783391840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RIDvIEEjfLAoYUqaVOiOTF/fktMs0pzzICShunhvFN8=;
        b=MJqnafbmG7VYI53pd+OHKa0jO+KaIo7L4ZKuvZpdxje+S5p6sCzVDYaEFa6XLUfHnz
         NjT9tLJrxlIqtzVe7xLPHGLPnrcY8Lz8U/zWXN12wHY3uYPGS97RsRqshxmbCjrOXU0G
         9ngqrXS9uKS9t/odk37akyk8F/gRXe4MNZ2OZwdgOaeLAJskpTYjcJos8QdN0s/U1LDM
         ToKt3TIfoBR+3D3sQVNyApWkVS13+ORZp1QZVxpDi1egy6XzWv/UY7lC6P54ijc4AZ53
         ioMLUhxtgaJo4JeRf0CD9zL0q/4mtshgqqa7yQLrNzhl/xpT9Xzd+yiQK5EFL96UTb1W
         miCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782787040; x=1783391840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RIDvIEEjfLAoYUqaVOiOTF/fktMs0pzzICShunhvFN8=;
        b=CjefexeGVN9K2Phm0ohZN2Gj2hsGECef/zbImjnhfiJ0VBNckgcX7Of3NZesQuzJBT
         g45+cPy7VWDqLIb776TL/DLhAjm2hN7CKHmh3C54NgZq6dNzHMJqhnXwMgLfuNIWg4bZ
         mpvrD3DCIapMjglubHhFJo7ONeNzwQ7nY/i3MQKHMCfCgAg3b4AqHHW+GmUfsNBHDKuL
         P0w263IW1na4z2H1wZ38aMWcOX8aRNYWLEVuXOlJjIRoNGl4JVwhgF4Xmx+u6mookYTG
         3xaU9ZWpr+ByY7nNULAWOOLkDEQMeHsLEh9KbGKHHx5wdIG4wKeheHIzdTyEopdAxJ4r
         1UGQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp20qd6UlqkIVQ51Qx9tKbqlBhMJnnMdbQ2l19ftF4cyexjcTp2j6ki2EJ1cppdb2zhv4Uf2Py8ji2S@vger.kernel.org
X-Gm-Message-State: AOJu0YxriJqJcLyhNc0y3U2SogWIU8E4iPBzGJhj+HzWnQyEFcWGduOG
	fP5zi7Hqg1BCMtUSTl6PVzx6+dpWuLu9TSvkDclDS62vVJMJahs2JK/fUT4Nn35SFe0=
X-Gm-Gg: AfdE7cnSZk07I3LVA9tu26pLP/vE9KLtKo1ESNMV5cQpdTAwtpcYjXowhOUAmJXjc/X
	QulbhnANYs6S489sv+ugAQ4uMjyrR6qUpYCIV6DfCN7CIzXGlsUbieOie54T7KQlIYpKi+eef1j
	K1RROWNuiR6zx9Mk0urD2eNaNH1ISNMRUc5982kUbeJHbT6iNlcSAD1W6VVc68+bhY44J0ilaXC
	C6nM6LXKNlXb0q+hkZy2ZFktLI3z3DTnBOdyXF0LTuse2MWKOqhJaha0JGTPRRtxo492kqRhOpj
	xrbY4G1LllZ34NKLmRR5r7qOHSTBK5NkUyXGW4U/AyB6w1cNlwORH8Y70UhZ6vf7cDFQUquzOn1
	RXHcFprn9Gy7XpPjbstomPzN6WK3uezsumCGqXnRhSLCliza0iptby11IpJgZKXE//hCgVambC4
	5QfJ1J/LmiX7g=
X-Received: by 2002:a17:903:8c6:b0:2c9:97a8:8c1b with SMTP id d9443c01a7336-2ca2eb32b10mr13789275ad.46.1782787040083;
        Mon, 29 Jun 2026 19:37:20 -0700 (PDT)
Received: from nuvole ([2408:844c:b00:2b2f:398a:8bef:b88c:653a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca3828c2fesm3310465ad.49.2026.06.29.19.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 19:37:19 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH 1/2] dt-bindings: display: panel: Add Novatek NT36536
Date: Tue, 30 Jun 2026 10:34:38 +0800
Message-ID: <20260630023439.248861-2-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260630023439.248861-1-mitltlatltl@gmail.com>
References: <20260630023439.248861-1-mitltlatltl@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317356-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mitltlatltl@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5705C6DFD60

NT36536 is a driver IC used to drive MIPI-DSI panels. It is found in
LENOVO Legion Y700 Gen4 with a 10-bit CSOT panel.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../display/panel/novatek,nt36536.yaml        | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
new file mode 100644
index 000000000000..f854fc99ba81
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/novatek,nt36536.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Novatek NT36536 based DSI display Panels
+
+maintainers:
+  - Pengyu Luo <mitltlatltl@gmail.com>
+
+description:
+  The Novatek NT36536 is a generic DSI Panel IC used to drive dsi
+  panels. Support video mode panels from China Star Optoelectronics
+  Technology (CSOT).
+
+allOf:
+  - $ref: panel-common-dual.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - csot,pp8807hb1-1
+      - const: novatek,nt36536
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  vddio-supply:
+    description: I/O source voltage rail
+
+  vsp-supply:
+    description: Positive source voltage rail
+
+  vsn-supply:
+    description: Negative source voltage rail
+
+  backlight: true
+  ports: true
+
+required:
+  - compatible
+  - reg
+  - vddio-supply
+  - reset-gpios
+  - ports
+
+additionalProperties: false
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
+            compatible = "csot,pp8807hb1-1", "novatek,nt36536";
+            reg = <0>;
+
+            vddio-supply = <&vreg_iovdd_1p8>;
+            reset-gpios = <&tlmm 98 GPIO_ACTIVE_LOW>;
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
2.54.0


