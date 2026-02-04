Return-Path: <devicetree+bounces-262517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLPgKsbggmnhdwMAu9opvQ
	(envelope-from <devicetree+bounces-262517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 07:01:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 255E1E2290
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 07:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4874D302C5C5
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 06:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6931F35EDCD;
	Wed,  4 Feb 2026 06:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="mRQWG3Y9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B50A35E548
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 06:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770184881; cv=none; b=YThhU/25gjLiFQstDjy5CF2/fy1NRfoGJvKkeK+cp0OEaVY05CKzI57t74S9BPLMBqeZYoPQfgaTtKnKT280YQldDCDWB867jEWmO9L30oWc82JrIT8U7i2aPYSBejml6mv7Jzi976wEgkN0XmuVNB1W7KAcCz+sniauDZdBjMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770184881; c=relaxed/simple;
	bh=GooVB1lBGm2lHrLrB0usOVbk/QUEoqBpICTYvm2ygcg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZABR9YNEr+5YrBOL1dBeuHDGehAeKeVulqLUYWcIskL6UMHV6S7VDjuA61zILvy0ac1QZfCaZmPWUKr8Y0DQ0gH4C0VicMsQUuiZk72kY8IAEfAH0TSBBQjiuyJ2p1QHGwiW2zBAB8rnpdMpaQbUqZZvMQ7+vkUpvh3DShvApV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=mRQWG3Y9; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-81f4e136481so3243129b3a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 22:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1770184880; x=1770789680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6lejf+Tzc2IHsly2f4Gw2xYw1HUpif2wvKpNlfP9f2E=;
        b=mRQWG3Y9UgwG+tQ7j+xSx/mWDU3xQkH3rhvzwNTBxMzMs7ohUeKHBqS9C637Ivj29Y
         EfICO5ZDF1vePx35i4AHffC6YByoebSAVIBDbo2MnZfzJw6woLemsldNVBEQQ78/JRbo
         xJUvPgIXZTI2gJ4ts+81s9rNPlMJw42ckydIyzRm9i9FX4N04wP47SY+8HzgmkrsNbUh
         //P+0UpCv7OHgH0Iw4ecMRTYgCF3+n1O3SSbQgk/9USAtOuLm6aMpNIpkspKnVSdBZLX
         rrpoU4No/a0YIWAORqsn62yoSdpzh026zz7CJtNhFGtNrkkYjPvc31X2hRD0i5T1DMu6
         vfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770184880; x=1770789680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6lejf+Tzc2IHsly2f4Gw2xYw1HUpif2wvKpNlfP9f2E=;
        b=cEbCe/I+Lu0a0xp61ucgOCiIHITnX3ulrhtnTwhPI6TJK2rHU9FsIJ/tbuAsnFAUGr
         GXMk5m/RuFgR43NCQYfsr5EFxM0BDthBgRYb1bZB52R7ZbgXud8Fo2z8elFAhltBz9ZA
         vu64JW3aa3fbLZSq1fFngXa7dNHowHgHHP6Ton73JXDgdr6Bstpwb8eUfqot91H5/DVg
         h2icIFQQIg0UQudisbwVQK6UTHBaySxqAUC5E+2+hLBUBpo7PWFVRN6Ob/cW1uJ/aQse
         NhuGSlzAyTiNNY6dQgJvNYvnFo8fYx5G6nKns6mCY0KFn2Diso5VPx2KoHX1KbdCG5Wa
         yX4A==
X-Forwarded-Encrypted: i=1; AJvYcCWLyR9FOfVwMVjrfKnIIFaZXweMojG66xblDVUx+xK6VSrBPQoFxVWWKUuqbmDOxPbblVI/Hq3rl6Vy@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd+1aDDGiD6m7QDfiDNL6e/iqsv++G8xdArQR9awO5v2WKPM0X
	d/30jDvkH88K76t/quxTTdfXsP2z59yMKyUqkp/4mzL9kvbT47N3wOrBALyyNPGPFr4=
X-Gm-Gg: AZuq6aJWPQemae61b4rj9ddqIxQV5PID4BwrzEHgtt4sN1NxDsQkSFUdLOGLvmtDwsa
	nt3wiNrxnyTXVBjz7LiDym3XBZNm1tjUdVaHtpE95X54aawF8/r+yJFj0vPSCnor4rNfz4JE/jD
	mYHT45qIggHHLjoYYbaRDq9wXY/1fUUvagesrK7yn6/OzkGf6zLV2AgWSTJ9L7yP380cSfE2lFR
	tWlt/+bPr77h2N/M0nTiV7X3Fzmis8XFgQ8lQsA8iN+5dgEoTxayAH+KLrHLay47P43V++iEknk
	FhMC0jIFCDzzQEel2H4LUgVoCixKgByfrAyIDVerBjKi9f8BUpAcu4KlnqhqmDavQ/v1mmZM5GI
	MfZ5Qa5LnZV5osGGBk8dwGaSpTkivcd4L9f7gu1He0QqZZ9Kh8Gifr/k/Yi/jfyZ9cYSQIvEhbb
	iY7r0X7jG/PLzL6ObUXA==
X-Received: by 2002:a05:6a00:a219:b0:81f:15b2:21e3 with SMTP id d2e1a72fcca58-8241c4ea261mr1704367b3a.32.1770184880340;
        Tue, 03 Feb 2026 22:01:20 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:16e9:94c2:69a7:e3c5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d163865sm1335710b3a.9.2026.02.03.22.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 22:01:19 -0800 (PST)
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
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/2] dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
Date: Tue,  3 Feb 2026 22:01:12 -0800
Message-ID: <20260204060114.345219-2-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204060114.345219-1-igor@reznichenko.net>
References: <20260204060114.345219-1-igor@reznichenko.net>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-262517-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[reznichenko.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 255E1E2290
X-Rspamd-Action: no action

Add binding for the Ilitek ILI9488 panel controller which is found on
the FocusLCDs E35GH-I-MW800-CB MIPI DSI panel. Add "focuslcds" to
vendor-prefixes.yaml as it's a brandname and a website
(https://focuslcds.com/) for Focus Display Solutions, Inc.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
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


