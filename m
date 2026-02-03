Return-Path: <devicetree+bounces-262041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBdMAcKKgWnuGwMAu9opvQ
	(envelope-from <devicetree+bounces-262041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:42:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD70D4C8E
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5021304D96B
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 05:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D68366DC4;
	Tue,  3 Feb 2026 05:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="SK8vrpnS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC67336657F
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 05:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770097291; cv=none; b=Sogx/eQsHMOWn8G9voqZpw9qo/hS3+ZeCs1XN0XKgrUv8XlDcKgncl9VfR7Um/t8uey5LRabnbU0OE3hzp+b3SandOe9ZqtnzF7jPhnUgPur6jUQXO3kGiYBO2C35Wr600wIv/5wno0fh4bNJviWTn69WsYGXjcRDk0S8nkCVu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770097291; c=relaxed/simple;
	bh=UFnzN/KOVb+bIbsiHlsSRihiq8JDv5w+i8ottbU6VWg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=roehNLa911FANBcXgBri1o4XbeHsQkI8V/X8xuJIFkzfmqetmNVziOT3KCvFRbFgt1mbWV2DuCYe4Y8BplbcZ5/2oWcQIAAzZaQbgOCFAUhsGagQ3tMhUJm7fB1x4YOmTKO8GgCfLeSH4nYczk3SjyfxqC5wVJh9ih3baPM62XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=SK8vrpnS; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-81e8a9d521dso3100517b3a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 21:41:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1770097289; x=1770702089; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yEfiSIftUOQSLeWOpxZiWd1+I6rz5yVYKhg8cViyxSc=;
        b=SK8vrpnSXEBRU7sC1npVBKz85QGcRAjyoKleQNcW3VWWxotrlfLqm1JCo8zgRIIGbu
         7tQ8cwE5kO+RuqPGqKfkUBA3A+MWU96VopQJZLcOGo8jmq5W7gGVREGYhXDriHNA5Hfl
         7Bt5p5d5CM7gzM9TmFhafMPgAsfoaDiOZlDhCCMuuwzNtKsPZwqPjZduHgJf7TKajrR7
         sNcDSeOJfj9EzFXbMXJ8Co430YvUzV9PmjoUJ1imnrnCIeUWe1nDSbOriKrsCiPPNdRJ
         PIzoOt+iqMZ9WfD5BDr4B2rcLwpmlpDOF76Pp0xjCPXKwt13Ru/g0mddZOoWJxaE8zD6
         /cDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770097289; x=1770702089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yEfiSIftUOQSLeWOpxZiWd1+I6rz5yVYKhg8cViyxSc=;
        b=pJU3gwzVNqOtM7SflkI4oBytEr2zP+oFiCrpQnfg6eGNKI3bdMgK9gR81a7uXM99Fg
         PGxu9UGQ7d8X0ZrO9Xa9jGHKIdCEU9lx3InuKtvGjp/FVsXyRqrLm/YvgQdCWkq+Q9e2
         yc0Br+S97vylkz66BPIm0NZuULLvS/4ObT8bJoWcYJ7CADfUxCNNMCmmNZvHp+Ur+DWz
         p9o7ZrJuW6zYYYKcpEO9gY4bjUXiMfG+1IEMpvjk9YNVWviiE4SdgWSDXHmgdU7h6mDx
         /SrJDHzNXZ3x3rDuxKvhuZq5fCLcGBJ7kZULeMH2UaY7t95NYpa+UmklZUTFd8vjH5dN
         k6dw==
X-Forwarded-Encrypted: i=1; AJvYcCWA+jUdg6YlmK0e9edpnEYtX5HPNFML50LdXcHnx176SqY9u1kpHbZFFt80k8AMSMR9A8yohP8qEMm7@vger.kernel.org
X-Gm-Message-State: AOJu0YzzJRT3vSYKAuw1EHZAlmbuB9HgNSYViboMz4deXxDYJXu2S9ri
	syPFDqFKqmRRWr7zGQUoXtATIZHIP22XkP5kngNUWvp4ZXVwLLcke78GXq22x2vBLk4=
X-Gm-Gg: AZuq6aLBiwAPVXW3mm07sv1k+rD0Stu44YLVrcZDA+tO0vsO4AtWD63BFEb7iAWoFmX
	j9s2OJv8/mVrgpTUmUhTffx55nbLfcPOhby9YAUubpzU/Q44RQe4LUykTXgXELgUkjkl8kb9VzO
	YGBbfJMlm6u415tIGW25M+gy3FTl945eqmgf2cxvlYIlk4yinmmsXuI53tTbh1EXOq8A00dPm9p
	y6q+53/L4Bl6wigLv0wAKrsfvMQtWvJMrOBjsStnkFW91tLC1UDMHWwc0caK8QKdyxfwjJ/vSWm
	AFlJdbC4E1HcVVpDZ2VZx9gz3w25nzU1sw+sEWP9VpGbvk83l2sbS/Ba10m9JvWZ88iLecZ6DAb
	9P0ElL0LwpIt5l/pNZI2L3vFrN/TH8Ub0xyz01El0437UzXXbTvgC3ddILE2zM9odR0ZvYGwzvk
	SkAsU7MelVb/nT72IXpg==
X-Received: by 2002:a05:6a20:7345:b0:38e:92e1:e8d with SMTP id adf61e73a8af0-392e005a2b6mr12969136637.30.1770097289159;
        Mon, 02 Feb 2026 21:41:29 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:361d:bbce:3ed0:c3b6])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6427da845csm16051669a12.12.2026.02.02.21.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 21:41:28 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
Date: Mon,  2 Feb 2026 21:41:19 -0800
Message-ID: <20260203054121.335441-2-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203054121.335441-1-igor@reznichenko.net>
References: <20260203054121.335441-1-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[reznichenko.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-262041-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[reznichenko.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reznichenko.net:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 5AD70D4C8E
X-Rspamd-Action: no action

Add binding for the Ilitek ILI9488 panel controller which is found on
the FocusLCDs E35GH-I-MW800-CB MIPI DSI panel. Add "focuslcds" to
vendor-prefixes.yaml as it's a brandname and a website for
Focus Display Solutions, Inc.

Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
---
 .../display/panel/ilitek,ili9488.yaml         | 63 +++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 2 files changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
new file mode 100644
index 000000000000..ea7449273022
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,ili9488.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek ILI9488 based MIPI-DSI panels
+
+maintainers:
+  - Igor Reznichenko <igor@reznichenko.net>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - focuslcds,e35gh-i-mw800cb
+      - const: ilitek,ili9488
+
+  reg:
+    maxItems: 1
+
+  vci-supply: true
+  iovcc-supply: true
+
+required:
+  - compatible
+  - reg
+  - vci-supply
+  - iovcc-supply
+  - reset-gpios
+  - backlight
+  - port
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
+            compatible = "focuslcds,e35gh-i-mw800cb", "ilitek,ili9488";
+            reg = <0>;
+            vci-supply = <&reg_vci_panel>;
+            iovcc-supply = <&reg_iovcc_panel>;
+            reset-gpios = <&gpio3 6 GPIO_ACTIVE_LOW>;
+            backlight = <&pwm_bl>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..aa3a8fd67155 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -584,6 +584,8 @@ patternProperties:
     description: Flipkart Inc.
   "^focaltech,.*":
     description: FocalTech Systems Co.,Ltd
+  "^focuslcds,.*":
+    description: Focus Display Solutions, Inc.
   "^forlinx,.*":
     description: Baoding Forlinx Embedded Technology Co., Ltd.
   "^foursemi,.*":
-- 
2.43.0


