Return-Path: <devicetree+bounces-60423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4928A94BD
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 10:16:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 201B0282D30
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 08:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D17D7E11E;
	Thu, 18 Apr 2024 08:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="sSvG6SV/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9BB7D41B
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 08:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713428174; cv=none; b=XHvHXsa6xqqvfglPHteUeqZlbCvl/2sTyH0kqxMIhfWDt1CPRS3QUJ2WRe0vCah2ely9oVS5g3hGk2hJDTMhQKvYG8H86bhWgVCwzQjEaeO/Mxgz/5ETMO32EmwzoPN6FE4aO6UvLl+79T+htBUl88+xwQ9BeR+jLhTxwi2VpjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713428174; c=relaxed/simple;
	bh=1RQq6g9A8gq8yaPzR26jyhyDScyjpMp6zkBI7051AZc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=k+xTJqAFmm2HocrnowiL5+RzMWht380yqEMMdrFs6cH+MGw7KOB6LkX4cnAppm9H+5HqIWSlhf3NygQ4Y69vcfTZ0BjCV13i/B31bNiMW3ESWaApVevml8V24AVliZQFBGtZh6y0a58zGbmYVnKg6lSkM5Y1BtTGqeEgvoq6Y1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=sSvG6SV/; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3c730f599abso398819b6e.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 01:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713428171; x=1714032971; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hGbb639QF70AM8GOOwhigEAHZ87qriZbyNLY03o71uo=;
        b=sSvG6SV/vr5KjFs5SKpk36NRBVBH35WujnR3d44sklCl2Vf9bMOxgWjvl/FEl3ALba
         oLS9mxTm8pffUo4WYKlUPrM2DFsaoxzuhFUrRwZQOcZk3n4SVwbEpFzBq3MXw2Dnob6Y
         /pQvhwtlitp1z4oyT1+aTahfrFLQEWhQbcRD4dJJ7HHMh9H7rGq24lMyH6dw8dl2R4IL
         xSjCFN1VZetuyjTMi6KdN4jORwME9A/wjdxs+VrGvsdMoOaw/m2npEJwIXSWpNzh000B
         /2+pomU2nHKpCulAXJmq9LYVvSMA+D+tYY4F13bCyLsOF18JqbXu63PpgYXD+UxJE5P7
         0M5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713428171; x=1714032971;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hGbb639QF70AM8GOOwhigEAHZ87qriZbyNLY03o71uo=;
        b=rPYkloXFmPIwpZPRldYiQPGF45dSd9WUXsrUZRHKS3CuBE+QbPj4Fm83yxKcCDi3ap
         CX/QmYQ7PAgMBM3AX8IR74K/aQdQ8+tWW9KCUc1TUmURBaQ4z99fpfniv3gtBCnBTPLE
         POPS2Aw5scgCbITZ8VDyqb3vB+zE/byGBkR8kc7FzqPyrTX+1JZNJ+uWz2wfC1rtWcz9
         VzCx0AGSvox8qH2pn6izIThZ8p/g/srRHFeY4Sx7D/6C05v+spF2nGTZSusCOb7V0Ljy
         HMVS1OdaqCUUMDdkrLI9Ab+FI5W4jLgolJ+MCQL3puJiJuPidD2KQxu/U9OFgXRV6jow
         1tHg==
X-Forwarded-Encrypted: i=1; AJvYcCUmyjy3iKM47xGsXMiCpPC1bPhhlLTini6CyRgtveM0fJufZxh7Qukkdk+wT0lsWX8VQq1sXche82ZpGoeZ/esZrQDMQ9pE/7Cuzg==
X-Gm-Message-State: AOJu0YzYDogwBFBXwfDnKf+Q3WdRv/2AG88DZB6j04fmj1ee60UfDxfs
	rlPNMMloRtY7lu66oDmDGrrpS8cofcWXcIV5TAM0n8F/DSu1zDkJ84vlEuJqbos=
X-Google-Smtp-Source: AGHT+IEspyv9P8EY2/qDTHNT4YTY3kFSzuMcr1c0VmB+mBMOVEN4Z9B8GjikmMM/QmHPGVxM51js8g==
X-Received: by 2002:aca:220e:0:b0:3c6:62f:4fd4 with SMTP id b14-20020aca220e000000b003c6062f4fd4mr2408154oic.4.1713428171706;
        Thu, 18 Apr 2024 01:16:11 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id o18-20020a634e52000000b005f3d54c0a57sm881394pgl.49.2024.04.18.01.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 01:16:11 -0700 (PDT)
From: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
To: mripard@kernel.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/2] dt-bindings: display: panel: Add KD101NE3-40TI support
Date: Thu, 18 Apr 2024 16:15:47 +0800
Message-Id: <20240418081548.12160-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Create a new dt-scheam for the kd101ne3-40ti.

Signed-off-by: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 .../panel/kingdisplay,kd101ne3-40ti.yaml      | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
new file mode 100644
index 000000000000..dc79a49eea3b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/kingdisplay,kd101ne3-40ti.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: King Display KD035G6-40TI based MIPI-DSI panels
+
+description: |
+  -This binding is for display panels using an JD9365DA controller
+
+maintainers:
+  - Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: kingdisplay,kd101ne3-40ti
+
+  backlight: true
+  port: true
+  pp3300-supply: true
+  reg: true
+  enable-gpios: true
+  rotation: true
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - pp3300-supply
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


