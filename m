Return-Path: <devicetree+bounces-224438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C705BC3D4C
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B4A614F9473
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE43B2F49F9;
	Wed,  8 Oct 2025 08:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mJoK/Bgq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3002F3C1E
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912122; cv=none; b=tT8Z9qt2Mrewb9TUFpuULRkPSsi1oBDeJtB/q2POMHhZyQQJM21QCdgBpeQ1gYx7Vu2QS6f/euhr7Xq2N/p2AVaU+OmaXbe3vCUgTyZuiFnitbqw4MhBmj5Qpy4ZEfyR3xY1nN/Qu4Hf3BKEFpMhs1JjM5RdjXWi2bY/uLabvyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912122; c=relaxed/simple;
	bh=xzA3Ub2UvKb+tHtSp6GxijYDj63Obr+PQT6bfR/gf6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N7q2Euojbdaa0P/gltu3ocoLhUCVYQy0gTDG8Q3rIpzQ0vaGQ8cVW5ywTi5rZ4soZHIm7cTOLO9a/8bBnNZJ3w+YJdKTU35IVQjBPRWvYHFWUt0Pt2pg88PzR9UwUCNEqgsVnIi6p1pdtl4KsgY8y3aGVuQftc4DRDA1vZ256dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mJoK/Bgq; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-57e03279bfeso850391e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759912119; x=1760516919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OifoNvdWUvVz1qHCNeTwOsRbnki2weR8++KzH+uzE4Q=;
        b=mJoK/BgqCW9VVX9DspPqxycf8ddkbx8ZAlCZgjMsnYyB3q28Mw8qU3+h3PVwfZEtmZ
         uPCH5mnMAPw12vLxUp8CGlocQDxGZZOyFYupz2JU7oRXNFJrcl9zkcILtcQFdHrNoWEq
         kzs9KfAPoH4W49dWzn3+HhMeYCb3IlWMiNbfKPDIL9KF9/p5bDScRaLPVtfO7dFAvG05
         ax92wPEtV9TdbdBo3tDU6pKCkb486Vlmbh5AXmInZP1rHAY4GBDBby/Z9xM4uR2a8bFw
         VJvqhcBJepGFSMoB9Pyk5zJNDLLuKQdG9T7YuK32pvxA9aV2kMCfLItp54uGyZrpgltw
         iCiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759912119; x=1760516919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OifoNvdWUvVz1qHCNeTwOsRbnki2weR8++KzH+uzE4Q=;
        b=CdOblh8ChJ72Pxpv8G6/2wy0jt6yFEI0gFrmINeExJ0iBfrxnDn/QAz+PE3gtSscSP
         J8RIqndl3tjHGBeNwYVUBpRcHHlgFVpYIMcL51rQhrL8f7PnmsEIYe36hzwHHSe7Rk0y
         zGxJUbA0mVEHiAl96Se7XpioaeCbF9EbZf+YAtp+1P9sOe9csVxEpmOKXlOClsmg5WwX
         E/Y/C4m4dCgfYjDLMiFflRr71se0YuqttJbMOKcppOKUjz02gif5BRZREHRx7HqeX/QE
         VMV2gzpsCGXzWwj9yFTWLqNjVxtYWJ4F8XYrSetIYRRUBVBizeSRsd+XodHxRG2xrjvO
         F/OA==
X-Forwarded-Encrypted: i=1; AJvYcCWUx0SwoiqDnVVoPLxc1n1OW0ALGLeRn2scxNFo1y5q03ZD3/rWs5ftzsMolN9x5/qpGwv+gBSN+ppJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyW6s4nhmGQuj36RLePevEI+iaxJirOla3arSCAhDRw8F8FvEj/
	+YbulbkZd0X2voJch2BAaaZDgvJ5F9FjIHRXOUvM3c3BhTayOGsIG+l6
X-Gm-Gg: ASbGnctBefM3MsJ6YirLEEBOnMT85nBMGnUVhSUsp47mUaLk0j/q6ioHVD3pVNTDk/q
	gM3XbZvhlYaVPlYb4NB8WsEkLDw+APTdxwPlJJGm3q12V0ceGa/yO9cAetK8ozLJx7YBhoh+Ywh
	qa58pVO+bTiL6VML7AVLJN6eEwtTrr6mgF5WZ5qYCidLl4AjzUZ5Qpta30I+9huEhi8igNUaqFw
	BFl8sY2V2npc5gNoqQbxEd63hEIYgdFIqR6FKk90SeKuzSYAor6uPjKXE2tGprSYbtOFEiM6d06
	d5Ql0wK8jLrkJihxMbbQ4lDZRZRq6GmVrII6G9Ksb45wBt/qz8LLFGyJaPvytoE4kVu+aSjsEpj
	9xBp4zhdG+jKr6QOube4o3TDq3M48k5Z2JeF0upeD4IFTRIUB
X-Google-Smtp-Source: AGHT+IHfIjb+vp+D8iidYlh2VgbHqf5szlozN2l0NR3ftIsB0ghBzmQUoPOzH+DwkkgGa53YEvsiXQ==
X-Received: by 2002:a05:6512:31c3:b0:583:9860:1405 with SMTP id 2adb3069b0e04-5905e1d2d85mr1863965e87.4.1759912118491;
        Wed, 08 Oct 2025 01:28:38 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124649sm6968733e87.15.2025.10.08.01.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:28:38 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v2 1/7] dt-bindings: display: panel: properly document LG LD070WX3 panel
Date: Wed,  8 Oct 2025 11:27:53 +0300
Message-ID: <20251008082800.67718-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251008082800.67718-1-clamor95@gmail.com>
References: <20251008082800.67718-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

LG LD070WX3-SL01 was mistakenly documented as a simple DSI panel, which it
clearly is not. Address this by adding the proper schema for this panel.

There is only one user of this panel binding in the mainline Linux kernel,
which is the Nvidia tablet Tegra Note 7. Its panel is broken anyway since
it cannot initialize properly if the bootloader does not leave a
pre-initialized panel. It also cannot suspend or re-initialize properly,
since no DSI configuration is set and it has a loose regulator which
relies on an always-on property rather than being hooked to the panel
where it belongs.

Tegra Note 7 device tree is adjusted as a part of this series.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/display/panel/lg,ld070wx3.yaml   | 60 +++++++++++++++++++
 .../display/panel/panel-simple-dsi.yaml       |  2 -
 2 files changed, 60 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml b/Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml
new file mode 100644
index 000000000000..0a82cf311452
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lg,ld070wx3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LG Corporation 7" WXGA TFT LCD panel
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: lg,ld070wx3-sl01
+
+  reg:
+    maxItems: 1
+
+  vdd-supply: true
+  vcc-supply: true
+
+  backlight: true
+  port: true
+
+required:
+  - compatible
+  - vdd-supply
+  - vcc-supply
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
+            compatible = "lg,ld070wx3-sl01";
+            reg = <0>;
+
+            vdd-supply = <&vdd_3v3_lcd>;
+            vcc-supply = <&vcc_1v8_lcd>;
+
+            backlight = <&backlight>;
+
+            port {
+                endpoint {
+                    remote-endpoint = <&dsi0_out>;
+                };
+            };
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index 9b92a05791cc..f9f1e76a810c 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -42,8 +42,6 @@ properties:
       - kingdisplay,kd097d04
         # LG ACX467AKM-7 4.95" 1080×1920 LCD Panel
       - lg,acx467akm-7
-        # LG Corporation 7" WXGA TFT LCD panel
-      - lg,ld070wx3-sl01
         # LG Corporation 5" HD TFT LCD panel
       - lg,lh500wx1-sd03
         # Lincoln LCD197 5" 1080x1920 LCD panel
-- 
2.48.1


