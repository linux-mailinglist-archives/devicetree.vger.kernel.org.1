Return-Path: <devicetree+bounces-275793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eD/bMEvGtmk3IgEAu9opvQ
	(envelope-from <devicetree+bounces-275793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 15:46:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3110729111E
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 15:46:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1E123014BCB
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 14:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17A92369993;
	Sun, 15 Mar 2026 14:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XaxiNCny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6AB5369975
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 14:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773585979; cv=none; b=Va7xSB7SOMqoQqH2yvb42THYmmxZa14LARQXXD+ZCuHFIkBUeN+fTs+fNIeUOc59C9hQIeW73Tp7FES0GATyaP5/MquMDneJ2IwjdLGPDgr4WC5KNpRmCWq/S05ByyL9tP+rkFVKYK94BOjruzCX/bql6l+1TsTljAN1mTCVlp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773585979; c=relaxed/simple;
	bh=L2I7ABPYZMaz5th8XwKSxIRcI6YZFscd6sD+TZBzlrQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b5y1sR+Qwn0FYOj97BzQ+bSjwIHyQZfZyO66+RdXpd0AwE5aZUXZHtaiSFL3lDFoWKwFX3WWtMb1PcitcSb36RSiZNp5uKjvYzSTi/22BNS/fAlnftPCOnAKT+BqCZgKfb0CjhqR1QtTPGLtbKWuIeQUtAeh28GbtOQilSsqTTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XaxiNCny; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-35b9ed7a329so56388a91.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 07:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773585977; x=1774190777; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DtJRSPmUvgmNOu9vZgaeyPwZaZMDOKypdtTq/nu3S7c=;
        b=XaxiNCnydb34xpn7iVw8BOU11DkDvmgrpPXBckP2kYWQuRVbHRvnedkvQz0hdOgaOq
         q1FJ/ILuRG8QbO17SsSA+UEbHyzRHtLL1CzV7QSxFrR1DrdRiWNQNvUoqwJoYCAw0RLc
         tIE6sLBV0ClqRSAbbnfAMwfd0kUvB6ysEZoV/Idevd8pcAdKZ5RJKbeiopguXoJ34HjE
         j5GTm+VZYLN2K2FhTSk0QB9m8UwULDqLC7l9ibvAGIPKD5f0L2tVnA9Ll/tIDf2bVY80
         yhmZk3AYHQZxlNxzj2poMZa+XqLf49OguL7rKLz875SGKyXXxWaPf0icaER3Rtiy23hq
         Py8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773585977; x=1774190777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DtJRSPmUvgmNOu9vZgaeyPwZaZMDOKypdtTq/nu3S7c=;
        b=eZ0zM2JX7U2YfFu8BaxaxRWoxeU0ACiQEsMI8GXkAhxSkY3nzTIZmtfMeb4AJb8z96
         WBSe9R/t67rg6Qm65e0Tqf7q+fRme214wT61woBWjdMgVFvIi8s/gcG4giJfXDG6lItw
         hnUz5abLtwW36QkiBPz+X24YOp17CV25aLgvYT5esPrlA79Mb4iCKRgd3790oE/7s32+
         rmVQkDbWlalrbVbw/b2acrML+QGudybBHX1Sy5tp2+mDEy8kAfdMU4SczZI/GltpnTJ4
         bKCN7srFyxEin5UGTpfODoye+6XWNPAXEOG8hEBC9WR7GXD9NzGHtgfjQzwTAxE/bMMj
         G9PA==
X-Forwarded-Encrypted: i=1; AJvYcCVQSPTipFW/9LRZ/WGdu1huWDkjPokCwYCr8Q70+fm5Bwjfu95LHXJopjZESOznG6Z8L4OLmBfdsyXy@vger.kernel.org
X-Gm-Message-State: AOJu0YxtD9IQylJs2x3OYL9004ot5VKDbpBoYQzmf8l7ncFHyAT83Aiw
	K9Pb1JMNytMKkGmeFvAhd41IECOPVUUBfU5DgV8e9t+8KLnU7niKjjMU
X-Gm-Gg: ATEYQzyXNw0JyIMgIWu7J5Vqb8mOiUrvzvMILnQw9xBi61TeHUZs6mGqSf7hJtyU8/Z
	t5IWqezd31YAcsSARjOx8VDRkNdgryOXAEawoCpLDbjvb1octeFHPjZTOLQyOaah0kbFk1DJ8Vm
	xd5Eu8ocTusS5y6FapvgOW6A7Ye63Q4NLvJxb61bibshi26hvZYi5YjlJOXhG0JswJPtWQqn+6a
	zFKlLA3VOtPIXdp/ajNsEPUS7BStHWX/CpSPOIvfu5WC+5ebmY4Fa5eTKumtM4bIg87XHttgDac
	qFbb+WYMyhVvz72rLKDGRufC8V/NyofAPK0au6vaOuErwCawsPJp6e3Ra/Kw98WwDEMIyLcBAqq
	OfEAuVvgyJUuLZusObXBOiq9xKXJaBiYFBRa/J3cq/WI6mXMZPJAQmtvaGMRWL/m+B4YO9vbtwp
	My4T4TyTG1BjghrqVJhBAFMRsSwq5a
X-Received: by 2002:a17:90b:1d09:b0:359:94d8:34e7 with SMTP id 98e67ed59e1d1-35a220554f9mr8970605a91.32.1773585977009;
        Sun, 15 Mar 2026 07:46:17 -0700 (PDT)
Received: from nuvole ([109.166.36.159])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02e196fdsm14022887a91.2.2026.03.15.07.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 07:46:16 -0700 (PDT)
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
	Pengyu Luo <mitltlatltl@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: display: panel: Add Himax HX83121A
Date: Sun, 15 Mar 2026 22:45:35 +0800
Message-ID: <20260315144536.515032-2-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260315144536.515032-1-mitltlatltl@gmail.com>
References: <20260315144536.515032-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275793-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,devicetree.org:url,0.0.0.1:email]
X-Rspamd-Queue-Id: 3110729111E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
v3:
- remove '|' from description (Krzysztof)
- drop description for reset-gpios (Krzysztof)
---
 .../display/panel/himax,hx83121a.yaml         | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
new file mode 100644
index 0000000000..603e3ad85b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
@@ -0,0 +1,86 @@
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
+description:
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


