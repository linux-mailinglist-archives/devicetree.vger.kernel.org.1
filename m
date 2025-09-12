Return-Path: <devicetree+bounces-216263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 261C9B5431F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:43:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 492341C82609
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 06:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7710B287259;
	Fri, 12 Sep 2025 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mlFJSZYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897C2284B33
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757659403; cv=none; b=TRx2fWHaybMrdbNRQyahIOF/V5X1GnH8TL/F20I9rTs6Q8PbQn0d+wisX7Zh4GgMB/JhhHBpw8CdDDJy3x1GytLergy+QRbDgdf9zo55j+YF1N2S4hjt997ewHCxb+JSA9HDooa+R3T4ZEf9X1gnx62HXjPFKSU0karQeK3SqCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757659403; c=relaxed/simple;
	bh=rOVb4unXmnLvpXZofwpgqw18ZSrh2uveJ67FAQaUljI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dvNPmf4i9twuKT45gQiINBbvJOMoOZajjvwS8vdZcvFb7pQMtFVlh0Z49kSarxnI/AuciQ23w4paMYqmOc9j3TEo3DaH1L/J7hy2l8v4bVym08Y1o9wiNs5t8L5d1N8OOCfG14S+qYhQth0jIQupLW/01+EspBjLmcBfR4OI2ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mlFJSZYJ; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55f98e7782bso1844162e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 23:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757659400; x=1758264200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nN89bcFCx4v1Pxsb1bcoAge9Deec1dGBruVjoVQpQco=;
        b=mlFJSZYJVqzs4SuKB6uflOG+LVQSEdaszw4cbYh12REHc2BcdWk17J561mRs6ZNREA
         xc2e3V4th+RQAGkAYQTj8Lhu9UVt8JF08Tny/G0pgB/gUamXUIdFyyzcbexe5qxsjN20
         dHxbXbmlo+dU4GD56bmMwbpr06IjxOFteB2uwDxypWYeRHuWMtK2STGpjwBTCT79BWvM
         8Fd+9HoZ6hS2+sZMIUW/+EBVWMlve7B2iln0IlEGuSKdMCQ1E7Vk/i3WKE33XgaTQJ9F
         kuF5tdvB0ayW51qNafG9WXvjyYpo/cofqX+se/4xnFGN0I+Gf+qoKEtjlxKZ4ySbwHzB
         DxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757659400; x=1758264200;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nN89bcFCx4v1Pxsb1bcoAge9Deec1dGBruVjoVQpQco=;
        b=dB7zlg+dYmbKSOC/M5nHm7+iYvOt/pAs/8qGZG20iqximCjy41Kq2A0hoNk+8SJwDJ
         fCoz/fyoWnnESk+tvSi1izuxmS0TlrZPAm1h+NWu8IXqvR0tTyHNs708bSO+PbTO04dV
         Xcn1iN8u2F1KE4RZ7S5AbVL+ydzTMr+7FoZpllSDW1H3fWgd1UNeVUKdzHvbD4tdNynY
         Lnltqmz5QxMAdxvAv1Jfss9NuujN6DWqahfko40L8iBg6oegFjjRydsagltW7p5tSFA/
         /99EOa2mK7ffxerV75ewC8LQ+wxDr7NCUER403B4wRDSpze/dMinrH/auT2seuobOkh/
         Ew+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWME2ENmyJs3ewT3LPJEw3qPgsKk9gR4O3jB9QGaw+bwuhIeve6v/kn3jQGXCwR0upHGbtNg7izmnUN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/IADQ+fOKqdNRzZBXhrLT8N+XENP/KL8Nw8lDbL/OxRNRqU1H
	bZ/TuijiUKnk7LXpVmHcr+iYY4dZhYABPr4/F6aloTgBwDO+tBCe/VZM
X-Gm-Gg: ASbGnctVLShrdKHRmrsVqzNLyTWs4+9ShnVoLdGGCqUjk5vjEMNcsXhq19YinraGdnI
	m/suidVQ0jU5DIbJ4+zljjpbihTE1UnGQCxDAdKqQLyndlB07RYrZvMA06I7i9ri+8eWSbfCOvK
	VE43/pmtvcf+XL1X4OeP01/rfo6jSOB/7A6chlQqJ1CTXC9AspoO+sLzKaK4MK+Kq1erKuqBP/i
	kzVp6OnhUbe95GwKbRsYieWPpCFzEgvO5MCsXbypXBe9VNxxJVsCYHoyFCaI2Y7nAPdJViKuK+O
	AeTYhKWq7rlC7sQQ0XqatDyON2zeEvV/AVBUJD9dVsOKdqFnDKbxnBNJqH4gML1M8uKJuw6Lk3E
	V7kBWB0WbTM55AUnew4ukVRQu
X-Google-Smtp-Source: AGHT+IGmhrlM+wuGin0oxlClzG6X+S6fBnECkDrMAoDVE+lAyQ7VTk7EelsJsJx33vrlPfBtJzvpWQ==
X-Received: by 2002:a19:6a15:0:b0:570:a8d4:a79c with SMTP id 2adb3069b0e04-570a8d4a962mr411565e87.0.1757659399292;
        Thu, 11 Sep 2025 23:43:19 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e64bd15e6sm917403e87.116.2025.09.11.23.43.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 23:43:18 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: display: panel: document Sharp LQ079L1SX01 panel
Date: Fri, 12 Sep 2025 09:42:52 +0300
Message-ID: <20250912064253.26346-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250912064253.26346-1-clamor95@gmail.com>
References: <20250912064253.26346-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Sharp LQ079L1SX01 panel found in Xiaomi Mi Pad.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../display/panel/sharp,lq079l1sx01.yaml      | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml b/Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml
new file mode 100644
index 000000000000..08a35ebbbb3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/sharp,lq079l1sx01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sharp Microelectronics 7.9" WQXGA TFT LCD panel
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description: >
+  This panel requires a dual-channel DSI host to operate and it supports
+  only left-right split mode, where each channel drives the left or right
+  half of the screen and only video mode.
+
+  Each of the DSI channels controls a separate DSI peripheral.
+  The peripheral driven by the first link (DSI-LINK1), left one, is
+  considered the primary peripheral and controls the device.
+
+allOf:
+  - $ref: panel-common-dual.yaml#
+
+properties:
+  compatible:
+    const: sharp,lq079l1sx01
+
+  reg:
+    maxItems: 1
+
+  avdd-supply:
+    description: regulator that supplies the analog voltage
+
+  vddio-supply:
+    description: regulator that supplies the I/O voltage
+
+  vsp-supply:
+    description: positive boost supply regulator
+
+  vsn-supply:
+    description: negative boost supply regulator
+
+  reset-gpios:
+    maxItems: 1
+
+  backlight: true
+  ports: true
+
+required:
+  - compatible
+  - reg
+  - avdd-supply
+  - vddio-supply
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
+            compatible = "sharp,lq079l1sx01";
+            reg = <0>;
+
+            reset-gpios = <&gpio 59 GPIO_ACTIVE_LOW>;
+
+            avdd-supply = <&avdd_lcd>;
+            vddio-supply = <&vdd_lcd_io>;
+            vsp-supply = <&vsp_5v5_lcd>;
+            vsn-supply = <&vsn_5v5_lcd>;
+
+            backlight = <&backlight>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    panel_in0: endpoint {
+                        remote-endpoint = <&dsi0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    panel_in1: endpoint {
+                        remote-endpoint = <&dsi1_out>;
+                    };
+                };
+            };
+        };
+    };
+...
-- 
2.48.1


