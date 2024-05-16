Return-Path: <devicetree+bounces-67234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0108B8C71F0
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 09:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 222751C214F3
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 07:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E027B3C473;
	Thu, 16 May 2024 07:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="xC4N9bzF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25922D044
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 07:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715844072; cv=none; b=U1Wf8Jciq7lyxzpyd2PzoQjvjHZqU9pBGPHtoP5cyv2Srj3+ZJU89UKubxPOu0OLxE1Q9jOryzdqtDJNqBs9jU185+KwiBJj+N9HlqMJM9uTLdxU9TSSqJjXIQvJMWSPcLTOm9t4qUH9t40quAeXIqyMs5X6k4ALJALQicGllIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715844072; c=relaxed/simple;
	bh=Yf5ehIasg6XYse+GohW47xZA/duOo54zsOqYamoJOGg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WU5kNoO7YIamgrxW+ADdKZb/HT8/KGob6ZxnManY3EgQ2xIlUBZU7+ad+B5vUpp+YcGdWPBN1YCa7LUNxyL7NaxVgxi6oDjA/WI99s5RtpFKKQOtFBkyULmTc+8e/w0neL7V1tk3VB+mSK/IFfzj4f41MEA6fDWliV1g90mKmtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=xC4N9bzF; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6f457853950so5723356b3a.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 00:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715844070; x=1716448870; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tNyE9kNA+CaynLqLbsiRaRBnzN1qmwEHRIdOLCz8/XE=;
        b=xC4N9bzFLPKRbw9nome/h0RsHArrq4KHwxuVavF5KlPNjbwH7psEJoN/w69XjqZpUy
         LAmRgctA9gdCXtEszDUf5a0JNrdXF7uRL9R9u0Zhkt3X/GCl1brlQSM/0zfsmM7PKyQ8
         6tRS13OZnZ5yjJt4ubl9OrNgivx+upNCcYH+T93lcp3TANWbBHrUw65tKX1a2r9Xucs2
         oIBiEc9Nptc0qb0yIWMxNtCNGUvwpc7Pr/T+0zUvv+5/wavEWn2KHoR2jgU49sKHz6qf
         obklepvCDKo8b4f3KNSLSXBZipVtig/vdzs3wnPGDVvGiMmf1rFtdwml30OklLgnfWml
         jaIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715844070; x=1716448870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tNyE9kNA+CaynLqLbsiRaRBnzN1qmwEHRIdOLCz8/XE=;
        b=iqYc35K5dDbzk5jlfqLeP2PqAFPO5rGAjLeGsm4JtGuADiIqx++UqSoS8gbXSmwQHH
         xOZdKmcpAhc3GLxhPhB66SfiFXjilzI7w4QJV3rOA7NK3cgnfCfGrbimARfXaA1Qui1d
         Eih5iqczaJvFz7CZGUZQ9bkO9izKJC+mvA0VWTjpjXeYS2LkvTbidZgWicB4pTb8tCy8
         byQ1ja1xA2dLnuA0hDof3jDKL3DHch5BVn1ChCuCYh1w3AtuXZGT8LQQweYl6m578/u5
         zbgLvZZwk6wjGs1hu9kebMRe9KScIPcfBT/OMYdvwXT6HBDPOy/GQmuRiGkosgWf1ml3
         r2zw==
X-Forwarded-Encrypted: i=1; AJvYcCVMTxJrsJ4ZjMqUCyy2losfgZYeqPglhhIHSpU5YLKGtzHUllW0IX8IgdJnctaHeAv+9cw2HL71upMnUm0hVSOu59Z8J1q6zAzirw==
X-Gm-Message-State: AOJu0YzS7qrWyw3Y1wmNyHKbtk7NUVYHa+L9wrhww1CLP85zM8Zw+zj6
	H+442hcqmZ2OMNw87vwdTahs64QQOFBQKO6aCI37yimocG24YLxhk4PDWPh62FQ=
X-Google-Smtp-Source: AGHT+IHAzBCUmS5bizg3nwnKwHX1CPXzsO67GYvnP3tdQPmQK608yrKRlUXImApJPrpCYmPIT46UYQ==
X-Received: by 2002:a05:6a20:6a26:b0:1b0:111f:2b6d with SMTP id adf61e73a8af0-1b0111f2cb7mr9961023637.28.1715844070039;
        Thu, 16 May 2024 00:21:10 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a663a3sm12318724b3a.41.2024.05.16.00.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 00:21:09 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dmitry.baryshkov@linaro.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 1/6] dt-bindings: display: panel: Add himax hx83102 panel bindings
Date: Thu, 16 May 2024 15:20:34 +0800
Message-Id: <20240516072039.1287065-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In V1, discussed with Doug and Linus [1], we need break out as separate
driver for the himax83102-j02 controller. Beacuse "starry,himax83102-j02"
and in this series "BOE nv110wum-l60" "IVO t109nw41" panels use same
controller, they have some common CMDS. So add new documentation for
this panels.

For himax83102-j02 controller, no need 3v3 supply, so remove it.

[1]: https://lore.kernel.org/all/CACRpkdbzYZAS0=zBQJUC4CB2wj4s1h6n6aSAZQvdMV95r3zRUw@mail.gmail.com

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
Chage since V8:

- No change.

V7: https://lore.kernel.org/all/20240515014643.2715010-2-yangcong5@huaqin.corp-partner.google.com

Chage since V7:

- No change.

V6: https://lore.kernel.org/all/20240511021326.288728-2-yangcong5@huaqin.corp-partner.google.com

Chage since V6:

- No change.

V5: https://lore.kernel.org/all/20240509015207.3271370-2-yangcong5@huaqin.corp-partner.google.com

Chage since V5:

- Modify compatible format.

V4: https://lore.kernel.org/all/20240507135234.1356855-2-yangcong5@huaqin.corp-partner.google.com

Chage since V4:

- Update commit message and add fallback compatible.

V3: https://lore.kernel.org/all/20240424023010.2099949-2-yangcong5@huaqin.corp-partner.google.com

Chage since V3:

- Update commit message.

V2: https://lore.kernel.org/all/20240422090310.3311429-2-yangcong5@huaqin.corp-partner.google.com
---
 .../display/panel/boe,tv101wum-nl6.yaml       |  2 -
 .../bindings/display/panel/himax,hx83102.yaml | 73 +++++++++++++++++++
 2 files changed, 73 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 906ef62709b8..53fb35f5c9de 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -32,8 +32,6 @@ properties:
       - innolux,hj110iz-01a
         # STARRY 2081101QFH032011-53G 10.1" WUXGA TFT LCD panel
       - starry,2081101qfh032011-53g
-        # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
-      - starry,himax83102-j02
         # STARRY ili9882t 10.51" WUXGA TFT LCD panel
       - starry,ili9882t
 
diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
new file mode 100644
index 000000000000..fc584b5088ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/himax,hx83102.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Himax HX83102 MIPI-DSI LCD panel controller
+
+maintainers:
+  - Cong Yang <yangcong5@huaqin.corp-partner.google.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
+          - starry,himax83102-j02
+      - const: himax,hx83102
+
+  reg:
+    description: the virtual channel number of a DSI peripheral
+
+  enable-gpios:
+    description: a GPIO spec for the enable pin
+
+  pp1800-supply:
+    description: core voltage supply
+
+  avdd-supply:
+    description: phandle of the regulator that provides positive voltage
+
+  avee-supply:
+    description: phandle of the regulator that provides negative voltage
+
+  backlight: true
+  port: true
+  rotation: true
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - pp1800-supply
+  - avdd-supply
+  - avee-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "starry,himax83102-j02", "himax,hx83102";
+            reg = <0>;
+            enable-gpios = <&pio 45 0>;
+            avdd-supply = <&ppvarn_lcd>;
+            avee-supply = <&ppvarp_lcd>;
+            pp1800-supply = <&pp1800_lcd>;
+            backlight = <&backlight_lcd0>;
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
2.25.1


