Return-Path: <devicetree+bounces-71444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6826D8D6EFB
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 10:46:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B75A1C221B4
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 08:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1A8713DDDB;
	Sat,  1 Jun 2024 08:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="E7KfxK9o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2ED013D8A3
	for <devicetree@vger.kernel.org>; Sat,  1 Jun 2024 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717231596; cv=none; b=Np+CY37YKJWOxzJ12a9/rjd3Uku3v4gAUhAU4rIXefqtRcKOUzkP7BV7aFXuLt6hhlGGlIAo38oyqKV2FGhGeA9p2aygzZjLrpUiijym6BK7FStE/5e4yNy7T9ehhuhy5VYqFdun5riZN3zzt1wtWS3MIOQwyU2AzgluMYlOYCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717231596; c=relaxed/simple;
	bh=0ShjCl1Qen1ebS2mpgxeBGd8NrFuzOdElxyxdD7Gdno=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=X5HwBDl/8kG073gxYgKkilMK4UAk060X9AAj2uQWRTQc3dzhrue5WhYx8cG/Iyb6DgEfTOTs6E/dW/Yzc6DywMoQdW0h/D+y38HRrDVlvXoQy2+mPgfQt6oY+P+rxAQet79MutbO4CIs3vLtCF456wRHgaMRf3xYDHzH7lMMXFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=E7KfxK9o; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7024494f7daso1483628b3a.3
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2024 01:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1717231594; x=1717836394; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BWMKP5LFlkDOSxfrnz5yHlOyMbunRcU9qIKa5/oOPUc=;
        b=E7KfxK9oM1Ep9vo6bpaePw+WrRuRsVyTVcSkEpPEJrlu+SF5HM9A70W0dalmQ/fc4P
         ey3rEdOChQ7fl6jwqxWA6rww+AHOGj2P4tIs2KNXSpgHPvtqdSjVgXB3Y0sX6kdtJfxa
         GzW+qH5ZUg12HL2yQvggC0mbP/IHU2blYM+MtKvXd+WQZAFogdZOVL1gxa0ERAYGMjw2
         AWYt5lAhgf3J5FHJRF35FyXRS2C03lCRye49q7kkTq0WvpkJLaQjUDAvH8M2LMWtQfrI
         D65J8lT68a46oCuOS+seeI61O8VxghMZySw4kocDozYXaVNoxfrlhvr6vNed1x1xS87C
         3gig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717231594; x=1717836394;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BWMKP5LFlkDOSxfrnz5yHlOyMbunRcU9qIKa5/oOPUc=;
        b=w/F2d/2SS50XUC2W3eevi4RX6+0zr2aVE9PyE7zsm8MWRK2czfZCUmRfPVyn1cm7g6
         vZiJhTrhQtmIZckF1GiWk1HI9+m+OMCbqLSX+qxH2RJcOJFB232j5L/rOYPKMOJpSmHT
         DpQOkj6J5wi4kGxTMSHnEk691wwrzTTgWzNHQySOr19SM6Tkrm0k2KEO3wRO9GbuNS4+
         HteVa1gC7OxzGqSzLk5MdJgUHygShfeZLjG5JlyNq65L49QFGZ0Yl9TP9Awp1ZOtxAf4
         IhYHmg3XEF8h9ykJIdndeNGIngX0nl0RBvQFBXs1lIWkR9Qs7dSV/GdJnqT/6lHKXdwA
         vy3A==
X-Forwarded-Encrypted: i=1; AJvYcCUVyKlFuNdOQ9bEAPjUVuXsOea/BYtkZCXoN83p8DskcIQdPjwZrGKgzrLSaebWwl/Tw4D7wpB7rbSp4Na+2t/nffBhufwjloThww==
X-Gm-Message-State: AOJu0Ywe+iKus2QPxSa7fGcVBnjXnRx7RITFSgu7NVLfGM7Lvbp7KY/h
	xmLMjTr5jzjBMyOzKsND5VolXcNb4suktzjEmW1Tf/yXAMSLh+sCtkNK4GvWse0=
X-Google-Smtp-Source: AGHT+IGXPuE8dbUUxqNOYjw6L1iImTMU+Bb7Ncc2SHFeKOzPZbY2wYMNuci4TbwP5eGNNmY//5z8yg==
X-Received: by 2002:a05:6a00:2e90:b0:702:56c0:299 with SMTP id d2e1a72fcca58-70256c00467mr1173669b3a.20.1717231593905;
        Sat, 01 Jun 2024 01:46:33 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-702423c7b49sm2512044b3a.37.2024.06.01.01.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Jun 2024 01:46:33 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 1/4] dt-bindings: display: panel: Add KD101NE3-40TI support
Date: Sat,  1 Jun 2024 16:45:25 +0800
Message-Id: <20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Create a new dt-scheam for the kd101ne3-40ti.
The bias IC of this kindisplay-kd101ne3 panel is placed
on the panel side, so when the panel is powered on,
there is no need to control AVDD and AVEE in the driver.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---

Chage since V2:

-  Drop some properties that have already been defined in panel-common.
-  The header file 'dt-bindings/gpio/gpio.h' is not used, delete it

V1: https://lore.kernel.org/all/20240418081548.12160-2-lvzhaoxiong@huaqin.corp-partner.google.com/

---
 .../panel/kingdisplay,kd101ne3-40ti.yaml      | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
new file mode 100644
index 000000000000..b0cf12bb727d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/kingdisplay,kd101ne3-40ti.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kingdisplay KD101NE3-40TI based MIPI-DSI panels
+
+maintainers:
+  - Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - kingdisplay,kd101ne3-40ti
+
+  reg:
+    description: the virtual channel number of a DSI peripheral
+
+  pp3300-supply:
+    description: core voltage supply
+
+required:
+  - compatible
+  - reg
+  - pp3300-supply
+  - enable-gpios
+  - backlight
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel: panel@0 {
+            compatible = "kingdisplay,kd101ne3-40ti";
+            reg = <0>;
+            enable-gpios = <&pio 98 0>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&panel_pins_default>;
+            pp3300-supply = <&en_pp6000_mipi_disp>;
+            backlight = <&backlight_lcd0>;
+            rotation = <90>;
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.17.1


