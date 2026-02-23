Return-Path: <devicetree+bounces-267458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oL+HMctjnGkoFgQAu9opvQ
	(envelope-from <devicetree+bounces-267458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:27:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB27177FCF
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:27:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A619630B54CD
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13960289374;
	Mon, 23 Feb 2026 14:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IB7KaY4x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF0528A1E6
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771856656; cv=none; b=pFjzmO+fm2fhHIELBAvTwXhnxkwhbPMtepkbLlPRQfSbxVQA3hBBxQqumDxgxXDP1rf4sqb2KUsR/DrpgKEE1z6xQU7ogHRrPf2eTo/wXlZvMWSlKHE9RdsFs1VTyMrUKLhpHO1tBNLCpZq+ULWzF3BtwMFUlOuCsJ5J+aTQPBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771856656; c=relaxed/simple;
	bh=V7fqUxwHPHnpclzLi48IhRpOeLBkH3gWfVtQ4pPChnA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=APXxEmrV2qqbjAe0UiIeBnm1wpuXUznFCPsLL+vSgqongkrpAbTFj4M2VBpg1uJPu4y003JE5DtbLeJydMzroW/8Ah9GKJCWxNuvvD7eh18BcB/xmgoRguM2U3GiAr9cqsgV7g1vOUFuLMJhyQx5N8Rc2WEyhI37zY25KCQkWGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IB7KaY4x; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4836d4c26d3so38559725e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771856653; x=1772461453; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E2KmA+8Pfbp7g0ZPmDRNIiwTVdZh9YZrLO0rcJPB57Y=;
        b=IB7KaY4xC9pa2OXcD6dE0fDzBLjuoHnMoUJrMHfaVEfip0P0fgmur92lA6p6pPAB/M
         ZOXniM5PL2QXsPlCDVIovCLlrE3RAuoxLVGorKuRBb4IKzNhK7s5tpSFjvI8EghM6Wro
         EdWc3iarv8Cn5EfhUwth1/HbMHRP8R5AMRHZX0uRqByV/Mc4XESTFfGIfmh3fsplqQCq
         Cncyl5eILItePU2ftm5LfjV0d7IhuCMpE2dcG3W5WRxJCBX/yb2trZ4tylJWOYh9nI8s
         TTldM3caFat5UlTNfgZ4/Tz2dmiod5FYijv0XPc5fAseYX802k1Dtyswqi5P1h21gyn0
         S/jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771856653; x=1772461453;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E2KmA+8Pfbp7g0ZPmDRNIiwTVdZh9YZrLO0rcJPB57Y=;
        b=DM6rRwlz23gjC6hQr2G2sr8wjQPv5u3rs5L7g9Aqo0mJOcTwHGNK3RJJ5X9r0aQQ9e
         uB1joJ+ZViiV0B3H8qDOvyGN8t3AmPjLDAMAORsFagyxJkol53geBhdAaLqbi4N+RNfy
         0VWTbq7fM3Nna2kWcs1SwRGINVJNIu3C2tmu/QoZIFox1demPsGh7vMhOFR71/wukyQa
         fTbrKIcRBP3iBouzEKZTYBm0fVULNs9P6RQdSXrbvaWCLTm3/4qQh/dOPde7HiYVB6qQ
         aoE9tdfz+wqgBTWMaJpIAJgpbNvMQ2A4VZoGDVqlImPnXNUKrp6J4XUePkGQByL9WqTv
         /bYQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7+/xU1RR+lkO4Hux8Xr/hR7nPXr7VJmAs0qpynDD1Jd9zmfFjmuKnXWL1XWa2fW5HkoInaEwuE3F5@vger.kernel.org
X-Gm-Message-State: AOJu0YwqIiXavuti47fdJ/8CZQ7xJKDsj2GChlcYm9AzK/JOu6ar1M0X
	iExWssKaLsrVqwy26q2HKnZgPQfP47lCU63UALCbqu6Q10XpAI/z9qbEh8XjF0Q8
X-Gm-Gg: AZuq6aLwpQYerizs3S+lcXj+xR8smh8oucg6lgz3GMXh2tFZzrL9aZgrCGhbXKKDXvx
	QhNhLNqJ7rFBJ6Ym9+KAnqDPwRxuFH2i/+7p7XfmMhkVfK4YqBqDb1bI0Zvzb6TzzjcSTJNX96A
	36uK77+5fXViKCCiuzIJhrlJbaGg7ivo+/y5HaL/a1zckL0irpoZPp8W+SLoZxPwYOfGv8hS17g
	eJo4W9NPQEy2qCpkzQsRJncTD7q4KCU2OxM3Ror9EDUzOE8O5NKdwY8zb44jeZmCRJHy1mjQNUT
	4zbyIwqPouOvVwp/LNUrkm1teNFyc+qXJ84H28pVBEDFX3Av4k1AbRT5dOZXWOegHeHnqv/M8zC
	atxRy6MVx/9czglo1z9dncTz50UEYl8IjFXavTgbyX6wQe50+BZ+A5PJ7rlxFZgTG+YFNPleMbf
	7XxHhIcjAUJBNEXlGC64poYV/8wZztMqzLctqapMq/wJCAU3eQoWdfrCAAftv742Q=
X-Received: by 2002:a05:600c:3e05:b0:483:6fc6:1e20 with SMTP id 5b1f17b1804b1-483a95b5410mr153230345e9.9.1771856652458;
        Mon, 23 Feb 2026 06:24:12 -0800 (PST)
Received: from [10.100.102.82] (46-116-183-56.bb.netvision.net.il. [46.116.183.56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970bfa1bdsm18713233f8f.3.2026.02.23.06.24.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 06:24:12 -0800 (PST)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Mon, 23 Feb 2026 16:24:02 +0200
Subject: [PATCH 1/3] dt-bindings: display: panel: Add Samsung S6E8FCO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260223-panel-patches-v1-1-7756209477f9@gmail.com>
References: <20260223-panel-patches-v1-0-7756209477f9@gmail.com>
In-Reply-To: <20260223-panel-patches-v1-0-7756209477f9@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771856648; l=2810;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=V7fqUxwHPHnpclzLi48IhRpOeLBkH3gWfVtQ4pPChnA=;
 b=fhpsupwfISjwnsevZ8FXMVKuyp5OVx51389rFkscMCKeLRab4QAjsX/0UzAsG/ttvJZ2hmY7h
 7olplTnimlSAvMYFK235Tx3nXIkWlT8wpYniDss53zdUWUmF1RjWAfu
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267458-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,ixit.cz:email,protonmail.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,linaro.org:email]
X-Rspamd-Queue-Id: 2DB27177FCF
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


