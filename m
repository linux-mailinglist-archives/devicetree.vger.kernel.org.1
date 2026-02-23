Return-Path: <devicetree+bounces-267642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMPaAQ24nGkqKAQAu9opvQ
	(envelope-from <devicetree+bounces-267642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:26:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADAF17CDC2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C3AE303EEA2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A91B437756D;
	Mon, 23 Feb 2026 20:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mCR2Qpqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B61A377576
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 20:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771878408; cv=none; b=QjQd4mdlUVUGEfQ3SimuHDb5ds2hMYTwWarAE9jMDFBSQ0Tvi7etTuNBFGt4BRbBCZiWbe53IrU4TavBwrTmrRYkwkU3zXCFKEcmP0vkgMZAlZkPPa6iwyMEhQek/qlfLBFFsrB9odRyTPf/jFI83iHtPmq6dxSor/6Wy9iFMbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771878408; c=relaxed/simple;
	bh=V7fqUxwHPHnpclzLi48IhRpOeLBkH3gWfVtQ4pPChnA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IqwXFIZFTJdHhYn8r+O6v28S9uI8s7NxLgrgwiyYJEr3+9NTWFxpZ5Cb1JLN9r8Pk//Y7QMXWFwK01h7D8k2xFDnSKieYirPT8M96aJvU8SL75aAj5MuNGu34ckxMao5arXIrFH2wrSdKXDZLO2664P6eRfDqb1llCKW0cUSXlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mCR2Qpqg; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4807068eacbso37566805e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771878405; x=1772483205; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E2KmA+8Pfbp7g0ZPmDRNIiwTVdZh9YZrLO0rcJPB57Y=;
        b=mCR2QpqgX/9NubaPgZ9WbsauhYRdSMBrzJJBIiE1HsiOCOGBxUfvmKXMQlZFDeJOGA
         C8odO1sBXru5lVnpFefIO2af+1HN0+Hypy5cxM3eWvMcSn5GGkLY3J4ByvrdLCrp3uxB
         IPS/ds5ocuiIsQ8wcGcfYC0lyNX9AiWzj2G1R9Psv8XS2kjQ4IQG1QYKlZkeVqrpuWUI
         oEXAE7LnXMWishydiyyR1aUqmhUNsX8ZKYInFE1V3aa57OIYcye93y03lwgFYsYf1jZ4
         2Gux5azgmaW2pgK2GOO3Sf6dF2wRjQp3BpUP3IkGYiuxsZKHWeru1QM4ux2U4c4Imqsv
         ixPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771878405; x=1772483205;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E2KmA+8Pfbp7g0ZPmDRNIiwTVdZh9YZrLO0rcJPB57Y=;
        b=Y3SL+789yn1fwn+ndwWNJt/4/vUp3HtJShI6f/sNWJFi7iE6IIhCN6f6dDBWWjDBRc
         Q5QYLEKQjLFZeUHOmHUP7jdGc0tY8yHN+bh1q9y8EQkUqLVSV6ratshROYLZIhGBB+Bu
         lJcZbxB/nAYmAlO6DS9MNJ9Fs1aSuNm8znn9owtft2QSHBalhI5Xe6rVQ81lB/W/4dQz
         35d0OJLVS5kHe3cQtTwg13NJHFyT7Bdd6uuMyGysbDQC/nU8dlW8IqvoY7XoS7bpgpKC
         zHtlw09SLuHa7beuCdpSxHwLk4UFbRq8rwk1MX3iQmsL3+tMgcwd1ZOlQAedD9yfU+4R
         eOTA==
X-Forwarded-Encrypted: i=1; AJvYcCUDWu5Uch97tZckP/aHtSGjajfpStYYO75IIK/WO+q/4qJvILKYeoJb7GOzpbXv3ZzYj7A41uvUrB2z@vger.kernel.org
X-Gm-Message-State: AOJu0YzpMXY3bVEA2sF0smEVNuq1DSmHr/1GATEqHR09M5hQ8KpealZc
	i2zAnf1eD9clQju4kJO1jOOWrcyZP5SLaMAb+KEiaEUpdvvZ56kcvkjt
X-Gm-Gg: ATEYQzyih96P862p0pN89cbMmTlvFCgd3kBIDhuOlZurTMjXfXIjqbJr5jyrfhEdSgY
	lU917ICf/gD+nMonZXHFF1bJlSPT481NB6asnRVK8GJjpgYVvNJzjxHJOyj3ve2hWA5jtzDA7H/
	3NCHyj2ZHZyLmX1bgiVxJxvjHRzRZy3wuFFz7h7NX0z/MLm+64dJwCLD7A1vMit82Msa6Kltk3T
	xgi0ZUqblW9Q0ww1QEBze5qEhUqJGyiyh4CeAW5zTddzjN/qT5cvhT8beWuNHe34xWs4Viud6vF
	7kW513v1rU3DAwiqFeQjn0jYMZnBNsIr3PJUjM17P2KW9x0vGZOJjYe2/xEng1A8IulV9LhPFXv
	KpQ5irQr63XkEqs7HBYmbdQEuDqgbfGJ0VvP3sFMsBvHm2m6bpFa8Rxoo9XNAhZ3s0jbLH6mqLT
	6pkKmOTBS0w5kqDrbWYIrN/93Bmkw3T7QMPpzkrpHsrAUhRWDuPDRPkH/7Q+B8AyI=
X-Received: by 2002:a05:6000:2004:b0:437:6c07:998f with SMTP id ffacd0b85a97d-4396f1812a0mr18928065f8f.45.1771878405247;
        Mon, 23 Feb 2026 12:26:45 -0800 (PST)
Received: from [10.100.102.82] (46-116-183-56.bb.netvision.net.il. [46.116.183.56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54c5csm21369551f8f.38.2026.02.23.12.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 12:26:44 -0800 (PST)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Mon, 23 Feb 2026 22:26:20 +0200
Subject: [PATCH v2 1/3] dt-bindings: display: panel: Add Samsung S6E8FCO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260223-panel-patches-v2-1-1b6ad471d540@gmail.com>
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
In-Reply-To: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Yedaya Katsman <yedaya.ka@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771878400; l=2810;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=V7fqUxwHPHnpclzLi48IhRpOeLBkH3gWfVtQ4pPChnA=;
 b=CkxTItGSw02vnP3BgtaVJvQ2rlHgubEMYaZKNbuiwz6iA/OQZlH0fTnnql52+Pl+7wtgAgeLN
 TRBcEu/AcxoBOShrpzZ4yqizrtoi8Kp/TG0itJDVeQTbxYrnNZAmCCF
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267642-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,lists.freedesktop.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,protonmail.com:email,ixit.cz:email]
X-Rspamd-Queue-Id: 3ADAF17CDC2
X-Rspamd-Action: no action

Document Samsung S6E8FCO 6.09" 720x1560 panel
found in the Xiaomi Mi A3 smartphone.

Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
 .../bindings/display/panel/samsung,s6e8fco.yaml    | 64 ++++++++++++++++++++++
 MAINTAINERS                                        |  5 ++
 2 files changed, 69 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e8fco.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e8fco.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..8c042ce5f65bf317df48e109d88ebdc87ef5d5ed
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e8fco.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,s6e8fco.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S6E8FCO AMOLED Panel
+
+maintainers:
+  - Yedaya Katsman <yedaya.ka@gmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,s6e8fco
+
+  reg:
+    maxItems: 1
+
+  vddio-supply: true
+  ldo-supply: true
+  iovcc-supply: true
+  reset-gpios: true
+  port: true
+
+required:
+  - compatible
+  - reg
+  - vddio-supply
+  - ldo-supply
+  - iovcc-supply
+  - port
+  - reset-gpios
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
+            compatible = "samsung,s6e8fco";
+            reg = <0>;
+
+            vddio-supply = <&vreg_l9a>;
+            ldo-supply = <&panel_ldo_supply>;
+            iovcc-supply = <&panel_iovcc_supply>;
+
+            reset-gpios = <&tlmm 90 GPIO_ACTIVE_LOW>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&mdss_dsi0_out>;
+                };
+            };
+        };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index e087673237636268346979ddc270f8cf0905c722..545d4cf68b9ac27765c7981e668e32cfecf3366b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8183,6 +8183,11 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/display/panel/samsung,s6e3ha8.yaml
 F:	drivers/gpu/drm/panel/panel-samsung-s6e3ha8.c
 
+DRM DRIVER FOR SAMSUNG S6E8FCO PANELS
+M:	Yedaya Katsman <yedaya.ka@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/panel/samsung,s6e8fco.yaml
+
 DRM DRIVER FOR SAMSUNG SOFEF00 DDIC
 M:	David Heidelberg <david@ixit.cz>
 M:	Casey Connolly <casey.connolly@linaro.org>

-- 
2.53.0


