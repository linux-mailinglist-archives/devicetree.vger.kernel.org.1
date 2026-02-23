Return-Path: <devicetree+bounces-267269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHN+Lov4m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:49:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FEF1725C9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:49:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C9BF83038FE4
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C243234846C;
	Mon, 23 Feb 2026 06:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l8dfujQ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6947D343D75
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829202; cv=none; b=rDfRtwOjAcqD5eRZrzgW69HZ18f5sEJyBmUbOSM3jOwn11KkMAAzF4+LnaC0hh0INLG3mJ23xt1dXP5Kw3ct3LCPhOm4/LqYaSxkA6ewZgSKKVis2iaYkr6S6MwJthjPrYBo+FQScNk5eAIEGy3RiKfxywjuF6PflLsF43B5Tzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829202; c=relaxed/simple;
	bh=7q13FrwCY/dZkIdtu2/TtHfSstHzM8aNk9VoqhIK3dg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ip8lUA+tqJ2QQvUcqRs+WEC+Ab8XNQBusHA8SHTleLGAvAv9Y6wDrFeD86ae/0SPh9OpbhOl5WhpLegDwjBdTTOGxYnrL16ec+VcUQc1n7yXJx4NLgQ+sTTLVTkr9mTG9H5eepsx4AYEIcb/eIUE8RHmNcAZj9F4MwjbIuqPJDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l8dfujQ8; arc=none smtp.client-ip=209.85.167.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f67.google.com with SMTP id 2adb3069b0e04-59de2d1fc2cso5034059e87.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829200; x=1772434000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=baeC+X5Nfr5uKMH7xDmpR34MeVXwZFkQ6W3X0tbDjB8=;
        b=l8dfujQ8XM5A53ixZgwyqyBju7sH07MbKmCHSd5xvqubcammbxdyefdHUPg8pd1Kay
         oGosPtUzWYxPrIRo4NngDZxaBgYoFeADWqwGyRyUiNKFfVMR4KEDnjT1/+/9uKGy7iX7
         VmTqRbK1QqK0twZvQBUK5yovhn0JjPxDYqRadYaA1ERJ91ZHHSGDlr3IaBe1ksNBBUrc
         K1LEe681ITcWzUFYD3kpjooJdKtScdTy0t+CJKUQTd+anm8OYL83X4T6qW/qOCgGf6zl
         wT7TqEXZo/twFWeTAG8keGmtVkzCHtnmnbDkB569M3m5cqrl2PI67nJovioMqS9cSko0
         fQ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829200; x=1772434000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=baeC+X5Nfr5uKMH7xDmpR34MeVXwZFkQ6W3X0tbDjB8=;
        b=rSr/JRfHeBBO+0UGCBzjHWP4t1CaXQQ1RrEbVAVNjDj8PROPHZZLIMnvZH4ZYVT57O
         44VN2rkxyzTgE+HxkasEsfoew5ujlCtGiHon5GNTBUiz2gNu5umUl2aoaNTroUQHzyc4
         c2HaH8kKlHEwKR457iVOxYDwiyZk2oPDY1yRw1nlIasjS931C4SI6IRXdgT3F6gLw2Ta
         0qXP3/7qefNfYSKzcn5d7CARr6WsLOV9Doc/Kcgd3do3fouRLKQfOteYOwvppChkjDj4
         0Rd/pLB6IrBZIbHSBHWCFWjZg0qg/lxiD/IZGJEaZpHIVgJiuVE0QMxtBXSft1kivZy7
         u0yw==
X-Forwarded-Encrypted: i=1; AJvYcCUiJlC4AjJ+llAi0aZkFUuWQ9uldonS0SYDj54+VUTJfdrGnrefI4Um0sHjOEA6xFk+lurg6GS/uQgy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz55rxPzupWk+vFwcmCoTY+y93mSjXRIiSELJxC9Zhrrs2tj86d
	UW7wppcKcRvVtuoN9BH/2ESgQggTiCg1RSh2PO/KWvKm9zZ2GhGMTTwa
X-Gm-Gg: AZuq6aKIrQE/tkdwm5UhrUlzfQxz5Qv1gj6uOUgefdu4JOn7z8zoYS6p40YkjJj1k94
	jz87csGt+GqIsDqTOdAdi94lt7kW6Rb6mWFxw0yrTb+F57j1nQbv7TZ0wvPExH7CoXKszlvN4rD
	N3xEF0wBE++K5iQ6O+F+deK4jtAqP4OriRRI1O6OCV2vcoiKEhn9yUC6M70MjiGq2r9cS4dPtdH
	4V7LGgzcbqC59vibogFOS6TV/2XMzLrG9cE6T0bEuiOKn+Gy4ayzi25b38vaRMhDnXQGyDy1Rir
	NtSw3zh5aT3OuMTlyb3u3TPLB4ZaYFRh+ohlogLREGq+CSqfuWatNcxOjq7PH7uDEAWlCSFP7IH
	Jmmiv9quLW1viUMpo3aPs7n5towKNO5KVYPREc25yYK2lhiF6kGzecX06EBNSqNFlTbxtJbdIAF
	E+Umjdm/Bo5m/T
X-Received: by 2002:a05:6512:a83:b0:59e:62d0:2ad3 with SMTP id 2adb3069b0e04-5a0ed9baa65mr2203028e87.43.1771829199434;
        Sun, 22 Feb 2026 22:46:39 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b89asm1386201e87.2.2026.02.22.22.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:46:38 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
Subject: [PATCH v2 1/2] dt-bindings: display: panel: document Atrix 4G and Droid X2 DSI panel
Date: Mon, 23 Feb 2026 08:46:29 +0200
Message-ID: <20260223064630.12720-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223064630.12720-1-clamor95@gmail.com>
References: <20260223064630.12720-1-clamor95@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267269-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 33FEF1725C9
X-Rspamd-Action: no action

Atrix 4G and Droid X2 are based on a board called by Motorola "Mot" and
use the same 540x960 DSI video mode panel. Exact panel vendor and model
are unknown hence generic compatible based on board name "Mot" is used.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../display/panel/motorola,mot-panel.yaml     | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml b/Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
new file mode 100644
index 000000000000..99fa1b3ed426
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
@@ -0,0 +1,69 @@
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
+  panel vendor and model are unknown hence generic compatible based on the
+  board name "Mot" is used.
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


