Return-Path: <devicetree+bounces-271427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4E4cMn9DqWkt3gAAu9opvQ
	(envelope-from <devicetree+bounces-271427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:49:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E7820DB58
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:49:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5102D3009F35
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94FE375F63;
	Thu,  5 Mar 2026 08:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EzftcQrP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056893750BE
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 08:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772700539; cv=none; b=UuBsUbe7OPDXvw3chW2ltvsjFCHhELdzS1KLuZzgboy0jlwxPS/1JL3HiZdLBq5X6qnQWA3BtDnRxnsOZb7eL5TOGNEDqmIRgDhD9sMX/0Fu/1hLjiYDaHzYLzgYk3G18g5tXADPBqgfsblkjA4SdTxpFB5jX/1VGOXeyJdnK20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772700539; c=relaxed/simple;
	bh=0iC2LK9YwdQ0sfJqDEiKqaXTtpBTEiQE8B7Z1S48CU4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dTTgUn8mfXFyyqlYMuAT4bmXxlCM29s75OACjOyiKEzGKNoUvXvz0st15otG4P62XZZGCtKX6QvEDpijTbhzs06MpBcdtVCvKrOdW4zjQ+TlaN+65ai3g0qvcNCeU2PGpncL8gQznSlldVDU/6Sxj6yDuEwk+tHb9UdDoAqpboM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EzftcQrP; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ab46931cf1so56548985ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772700536; x=1773305336; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ux1peg+z6f5tqJpG2qb5n2Jl0YeB1bva8nLP/vG8Vjk=;
        b=EzftcQrPPMjF07Ch8y7DpNKbhrX5uIvQvCGO4h8HeDStI3rZtLnce8T5vfTKYbiO21
         N8DgqCDFCnuEhn4Nsk+5paqu0HExBJRPnDvWILStqQQ4b/igCjWwRpTUoi7HLHFSuA7y
         gkK4UBKdlwpAGL0sVOIL5rKEsBWN1yKCpBWCa62sBWsVLXJXXz8cDpI1C0WvjnX+avCM
         Rdv+rE+bb6T10ah77XNzPdWKsUA/Gv8syDsz9U5B1AA0mULYn2M1Dsf6ev+Jd5xCYOW8
         mqo0T9DXw6Sp3SzH9BNDgB4KZLqRTg2KQ/pfc/JPkWHw2FvZn+XQ9EPfNQz8MVC43tBF
         JjFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772700536; x=1773305336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ux1peg+z6f5tqJpG2qb5n2Jl0YeB1bva8nLP/vG8Vjk=;
        b=gNLTpuuYR+g5e/2MJmdn9K5UWq0LM/TdpSfDF4oRm1Jl+QO1YAdWrf/6aNaYcsQG7T
         cX3eNDIm4/NI4fWuT3HK8pBTh+/COeOez2J9dDD86iStqYe+2Q7ncoG4QOTJwvNcRsSe
         8bb//Jjy05Rp33jcOmf1FHNxnU2Pu3RRlmY63pMPVuJlRqvOlCbHLbP7F0p0vxvd6Yr8
         WF2D+HJ/mjf9RZFRfIOWGioO9Q0lGUHlUOUjGuwaEijp8Q2N4sAus6gLGO9ZT6Ez+rxo
         WnvPw44UcqfSbJ90O0D031XXXDpE5vA1cqpSbMgDNKs8KzFu8bNgXYHaOhzhEE+xFqUj
         mi8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVkxYXPp0Tk8qF2dr95/sMSDm/r6rwQyntCmsLfbdUY9xh+kyPCMVVSeUjd37VK2yxRk8G72U3PVMQu@vger.kernel.org
X-Gm-Message-State: AOJu0YxhSg3o03lW505vtNsZzd/cc7wglzuBu/nUhp0t+yZkEY5W1s6v
	0rBcIrtT2e3vhxAaRsGBfgVPY9TmOHlI8FaG/OKINBusMIvUJ3KvE1o2/DXj/NPm7f4=
X-Gm-Gg: ATEYQzzR0Tkf76osF+yOJgIi7dbdXPZr0u1JPBYXAmRqVLhhKSXLlAOLy67higSjak0
	Yoh/SU31hRL43gv5cum9StpuSsoBXbRu6lk8l0PhbXIcvwsN+vv0/ogavBPWYxUwMF14EgJb87o
	gr9rNVHFcC63IJgU42NJqHyxlj9lGmlmccq2W5L9Lxm9BGeHh0VGaVnYCGcX6Yu6wgFxBf2enW3
	CtYtFKLNsHobcFa0cHH63nVReEtSQIKFqtaV3N7fZk4U5SoqipEnDqvMk7ggvc+tDL16bmx1v1k
	9zofbksO8Irg/sV7Slgte3S92tqvRtmM/CBmhhUgQwxTnqjr4qEtZzQfwdM4tfwWoqAGBuOYxyN
	ZogXW92qCqQhsFUWXoVXLelYOHjk5lsiL/rqBasKFcXcxvL/3QQdIS/tSxNUW3Jx1jyKsQaii45
	ywIzSJ9EPiY3d6Y2cvIw==
X-Received: by 2002:a17:902:d54f:b0:2ae:46b9:c643 with SMTP id d9443c01a7336-2ae75b51d60mr17109585ad.7.1772700536198;
        Thu, 05 Mar 2026 00:48:56 -0800 (PST)
Received: from nuvole ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c9f79sm233490715ad.33.2026.03.05.00.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 00:48:55 -0800 (PST)
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
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Add Himax HX83121A
Date: Thu,  5 Mar 2026 16:48:09 +0800
Message-ID: <20260305084810.370024-2-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260305084810.370024-1-mitltlatltl@gmail.com>
References: <20260305084810.370024-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 64E7820DB58
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-271427-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.1:email,0.0.0.0:email]
X-Rspamd-Action: no action

HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../display/panel/himax,hx83121a.yaml         | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
new file mode 100644
index 000000000..b6bcace29
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
@@ -0,0 +1,92 @@
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
+allOf:
+  - $ref: panel-common-dual.yaml#
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
+  ports: true
+
+required:
+  - compatible
+  - reg
+  - vddi-supply
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


