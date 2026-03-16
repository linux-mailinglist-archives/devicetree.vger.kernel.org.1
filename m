Return-Path: <devicetree+bounces-276013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKnfDrXCt2n5UwEAu9opvQ
	(envelope-from <devicetree+bounces-276013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:43:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A35296641
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6ED51302B20A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CFC7381B1A;
	Mon, 16 Mar 2026 08:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NkgbmpgU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64040381AF3
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773650484; cv=none; b=XR3Wn4OBttxh0NbO/huVnCNNMfAByU2EfOYIme5d8l9ePIOMBKNgSVXIjZUaOSaBwx+egKTyru+XVuyi2KxeCgSXcCZ2t/gG0BzMAO9CQqAjYiJtwp9/jl1BrlwhTLkrxtBKNn0UNtD2A34JFE1XRJkfI6vWbOnyURKKFq6hMf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773650484; c=relaxed/simple;
	bh=jvkLzgCnkiUvfbAQ/H975bvvQFnAG0JL11VQPZSQyks=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jSh31gaa0Np6zgdwojtNsToyC3CGfyr1/OLhiiMZf0JYgLpAE2LJpwVfyIad9Rf6w64i76ML33BuwMqs20viw78P+zVvZcIfVq8EqotWUs6RAoNGcSTuYVoIl8mAanMTmqVRZwsm/zytPHasw75TENlS7pS59x1Scy9mtAs+v7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NkgbmpgU; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ab46931cf1so38404115ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773650483; x=1774255283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l6XtG3AvTvkCvaM5JUgbGWufscX9JqZNMjL0RdIiJ6c=;
        b=NkgbmpgUMal/QpIMFcDq7VnNSIyaszVrf6oDOU69umjfpMdT/4pywhhtWdtpPJF0+p
         foiKhzONlBFvHa88+jHuXwz4ycr1P382tvqNKxPpQSSyFXoTJbVmxyYCCTwgt0dAeMnB
         ooWJkYGP4rD6Iy5qO/u3ouCZscccfVcjyJHDTf/GbWWvKszQipG0iLeuM+36hFvg6r8m
         IijPbAcsgzzOlcyg6dRId28e/2uKVeUZlfzMEVJ/7NIxWXk/1fEhl2GJTtjWQIALwop+
         Ysdu4AUKZf7Xt7xTsGfCtp0zkHN/aPXOm8bkAy6V1HVdBHWMuurCd5o3O1XmkRaxfwUi
         X4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773650483; x=1774255283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l6XtG3AvTvkCvaM5JUgbGWufscX9JqZNMjL0RdIiJ6c=;
        b=jk+O/bgpEWWelegAC67G98rv1aoNtmCbePWzibGuAV4iyMnFri6+8bSOMzOkajZTgJ
         PVQiZuk2wbmHISFK9h/0uGnCx6En6S+fPPJuNvR8Pb5bWScHG/kW83wabv3NbZ7V1SeG
         wcZJcVPplEfmYm1g/9Wg218AF9UlldAfT8VROzHQJHMqSfxwsGettxgjRAr6TyShNUTP
         n8nMReyPjnQZS6SDaW4hslQDiKD1+ZpMYrL8+eQE9uPsgStO6pdhvCmIueArqv6nhWRa
         oIOfkPmu5ZIGjO2EnKoNR5CWrO/7JvfM8wANNK/yubtY8+YeAsghzQjL7kIbIphz/DWB
         /hEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXu4iVQ2Ebl0zAMfGh0Lrfl9wXEnxJxoeiXuNcWnWLGQDI60pOnm+tjF0ZjdoDQvZPDIwdF0NYR1uta@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh5YADqjfsoMyhdoChyIYTD+8w512Xyd3eWY1Re5dWunIZbZ5e
	WFW4UY9Ck4cECuLDuaNDXhoZdVZmCicH9wfVqSv4BoOS6mrXeX2vwUuI
X-Gm-Gg: ATEYQzyEN19WTn9O1K/QB7bn1CO7IZ/PjQ+CEyVsRrI+nKHXwYIcWgDeiNrkPbNbdK4
	VOH0iZQSyqTf+bT+eYxYalHpXMg+RxjBOMhQkWRgWuhcdKVvZS4ruoZ3z3lh2qL+dEyetGlPJPz
	AgKdgi9EzlzZZwfwDN1ScDllLGTh66sQE705F3qpDmI8DNtnk088Y5YCyXwe0tYc/kLBcAG7lUk
	TjtO8zzNHZwQnddAFiHSmqhWBiOhea9FpA+aeZhIrKj9l77dXFW5fmbhXXBTJayrYMzzY16t6Dt
	KSx0Htk7EeccqUEBjDlDnO8jknL1TYsizlW8Ctxs1c12w8d2V1JE9Wplcua0ZdB4kVi2+dGUEoR
	Sw71KfuKbOS45+UoSnuwZS0kwdpuiHvzi9Q7uFsejqTO4ukGXm4UIN0x1UsonL81a2di3ZzTPXb
	yc48lfDwmnguck6jJvbSuJh0D3ms/8
X-Received: by 2002:a17:902:ec91:b0:2ae:4d6b:b2c7 with SMTP id d9443c01a7336-2aeca50068bmr112406065ad.9.1773650482642;
        Mon, 16 Mar 2026 01:41:22 -0700 (PDT)
Received: from nuvole ([109.166.36.159])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece83188csm101699045ad.75.2026.03.16.01.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 01:41:22 -0700 (PDT)
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
Subject: [PATCH v4 1/2] dt-bindings: display: panel: Add Himax HX83121A
Date: Mon, 16 Mar 2026 16:40:39 +0800
Message-ID: <20260316084040.728106-2-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260316084040.728106-1-mitltlatltl@gmail.com>
References: <20260316084040.728106-1-mitltlatltl@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-276013-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: A8A35296641
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
v4:
- use v2 as the base since v3 was using v1 as the base by mistake
- remove '|' from description (Krzysztof)
- drop description for reset-gpios (Krzysztof)

v3:
- remove '|' from description (Krzysztof)
- drop description for reset-gpios (Krzysztof)
---
 .../display/panel/himax,hx83121a.yaml         | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
new file mode 100644
index 0000000000..e067a2f6d0
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
@@ -0,0 +1,91 @@
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


