Return-Path: <devicetree+bounces-259234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FDXHHwYdmnXLgEAu9opvQ
	(envelope-from <devicetree+bounces-259234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:19:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 025B880A50
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:19:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C20473007AC5
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B4131BC84;
	Sun, 25 Jan 2026 13:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QQUPR88X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B846B191F84
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769347170; cv=none; b=PGdvPPsI8K/7vhpFojj0PAczf4RfjtjtCitV/HEyPYRhhKGmOEKtyvhU8w47DBvnoKK4h5FXXhv2SE+G2iNnGF84GxrcyzxW8rgu8OL2QIcG9Tm8BP4kOYPIVmz8PlclP5B1/2enstBNIKpIw2nvZnI/3Ed9Q8/4v4RFVju1UaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769347170; c=relaxed/simple;
	bh=QlyqcO1+IdKatW4r9kkCO0xkGqiulU8TNo9N+h8E64o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XXN7WUhH5Wad2+TN80bZH0jOB4KZsNopk2oB62t7lnNtooqPZ7LyuYHvFo6IuyKudajGcYsq6CCef41Z45rQOPZWMrYMGi6nht1fg97DZkyPAQ2THOgA84C6DEkHWkV/b9pVGkWLcYph3BgIoGhW+HUIia9m0TNAz95ZcHevieg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QQUPR88X; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so53522155e9.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769347167; x=1769951967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R5Zfr1fBtqgJrfSd/g+IV1kLhhHTpd7Gc0DhUBdILk8=;
        b=QQUPR88Xh8X3OWqF+jVZdPM/XIvsG8lw6A4vn34dghDnjpBUgfslM3fpgw/I+8P+Qn
         Wh+hCLAIlrYBCTNjAsnk2YDA9RL//bSKoagSa4VVPF5sdYII/2z9tQx9ReoaMbX8sK9w
         ajj6prJuFMxYvAQrHicoi8hwBPBgByzZH8to1+YMMivaNindNTHsCmaPqOjFEhW2G47J
         libSjcBZv8SqhR4XtVS3aLFDgy3HzsWfSG/uprhc/VjxNRfBP4+/atq9lEkN+nz/vpFF
         bXKIkCC61ahKGNR+0q3pI6gB5GoOnP3RsMDhemDw0bp6ammMD0ovxPbOr1ngshbzp5lE
         BdHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769347167; x=1769951967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R5Zfr1fBtqgJrfSd/g+IV1kLhhHTpd7Gc0DhUBdILk8=;
        b=xMZOBpOuRNXazfLtIr/qMZQSVLimMjZ8mGj4AzvKgs6d5Xckjh7cOMIJNY5xMyh2pJ
         j45Tu6xqN1kOQIL5iqCStDBLmiHKhDZ4zwEJsUlzVACPY/cHAQiv9ZCvxfhTZAqodVug
         ZBRCEfYYkabmnBKJbvqNgFy2tdDZXsfuJs9OtnJNCskeIWhP9XcTD2PHXEvDgClRHzZi
         3ZCca3d0B4wzZUaUstujlGryOE73X9MUGZACtKzI5OYNJrRH9cC8RWGSg5riWPRMmcZh
         o57ohg7pCagYidkpkwXcetBR6O4SeqzPp/4ED/45WXQRq6r8lcN7Wsj3PCki/wwEvAUj
         TtZw==
X-Forwarded-Encrypted: i=1; AJvYcCXQSpI6/K3qTq80Ty5427ermyJRQjcOfHFaDmmjQL4puwUVVP9Ta2tEwyOtorUVeqHawumEyrkWtBUz@vger.kernel.org
X-Gm-Message-State: AOJu0YxhEjDFQYz5LSwfeLloytldOBCr5grdHzaBax5qB7aC9uxbmoeL
	za4gIk1bCHPcgbdVd/7OIjfe4wsvYh2ZoIXVh8WQ6CBuNGh7UyUwmTyR
X-Gm-Gg: AZuq6aI9jlvwe4MD30MXurerF19L2T+Idn58uK7xVg01W4mIzACsd7zHg8tJdM5f9iH
	mHTDRqL5MYn5L3aZx6dhiVyTWOt86v8f+9S4lWNJCzsGmUEf/tpIerLiu8LJtYhfxu9lqU5edS/
	GI+FcqFBJ8UCvgafOHq8WTaU9IEeE7y9DVclCYc33eoIoJWjV4JGMgAnzRT1nC9trAQG4EQcGOi
	rX/2hErI7GnjtBof3LpwXGja7I3ymc0PZRUEjgwUeY/XotoDNEgTklpkGOf7JyMgmM3qPzszzoq
	+RsIaWAUntW0fFA38vuMycG8Db+gR6Hkk0gu5g0nVeXVlsy9lGGCaLPB+zDxfWesqpeplJwc0SD
	lZMK6IQZUgX048n0BVYoIRPyjAtdYdcYipDGHhN+sbiAOfkdjkm8sBMA1LE1+ABosrpOelmWFHO
	wc
X-Received: by 2002:a05:600c:3f18:b0:477:7c7d:d9b2 with SMTP id 5b1f17b1804b1-4805d06ae8dmr25854955e9.32.1769347167119;
        Sun, 25 Jan 2026 05:19:27 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48047028928sm382382215e9.2.2026.01.25.05.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:19:26 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: display: panel: document Atrix 4G and Droid X2 DSI panel
Date: Sun, 25 Jan 2026 15:19:03 +0200
Message-ID: <20260125131904.45372-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260125131904.45372-1-clamor95@gmail.com>
References: <20260125131904.45372-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259234-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[linaro.org,oss.qualcomm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 025B880A50
X-Rspamd-Action: no action

Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. Exact
panel vendor and model are unknown hence generic compatible is used based
on board name it is used with.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../display/panel/motorola,mot-panel.yaml     | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml b/Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
new file mode 100644
index 000000000000..2326a83bc405
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/motorola,mot-panel.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atrix 4G and Droid X2 DSI Display Panel
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description:
+  Atrix 4G and Droid X2 use the same 540x960 DSI video mode panel. Exact
+  panel vendor and model are unknown hence generic compatible is used.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: motorola,mot-panel
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: Regulator for main power supply.
+
+  vddio-supply:
+    description: Regulator for 1.8V IO power supply.
+
+  backlight: true
+  reset-gpios: true
+  port: true
+
+required:
+  - compatible
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
+            compatible = "motorola,mot-panel";
+            reg = <0>;
+
+            reset-gpios = <&gpio 35 GPIO_ACTIVE_LOW>;
+
+            vdd-supply = <&vdd_5v0_panel>;
+            vddio-supply = <&vdd_1v8_vio>;
+
+            backlight = <&backlight>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+...
-- 
2.51.0


