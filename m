Return-Path: <devicetree+bounces-66966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE0C8C5EE3
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 03:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF6E01C210C8
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 01:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6993C1109;
	Wed, 15 May 2024 01:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="LEuG9O5G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1553611B
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 01:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715737618; cv=none; b=KnQGj1IKY8tpQMruLfGXD6aNtQVmXL2RyJiW7Weq3aVyc7O+mBGCtS4JLmDhPw5nlMc26ZJP71htcPMowojmGrYL3NNn2fdY7u3Yp/4rK4xvInFGOJQCeAVOCZeF7lSFi1XyxqtcMTuUsqNS5+BZ0C+VNr5HtMH8ICVeXmJx0OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715737618; c=relaxed/simple;
	bh=kYWSqq/Cj1U2XrBnRj7zVlfofnp24MmxOKNFd+bHlsQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=St+MlJsq9MoSsTnLLitbNrLsfyCREyiIFEnOkdE9kmreYaDP9S0JAwiq3WcFvyHZiV7jyZLgIzczif42D5soNcRaqmdmCVoNiUkhdYtEN0JNBpvksgrIz2DdGkCBlz6kBimHPm8Bgd9ln+nfOU1D6ofK+XYQFRXAlVgJCCCMgoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=LEuG9O5G; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1ee7963db64so52630485ad.1
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 18:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715737616; x=1716342416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XIMNgWlGO5MDpCLLb1bzKZLmOQHOW80W+JrcvHSFxSU=;
        b=LEuG9O5GffEUICTcuMqCq4/L4fIpoSonna5Mu5l66AO3IojIUt5dPyy9BiQIXRTbuZ
         l4TZ80/mzE7DklIm1M/F9kx7VQ6mrWvY5k5aoTqG5CbTVHkx6p52FMGb7tnWnSqGnYuJ
         p4h/68N9BCQDQDlg/KBwoEXi67vRYUtDAh2TJSl/j3vzEak5WeVuxb/dGcnePcQ6nEG2
         UKEWQi5gpOYWz6VejHDT5nXou0Vic8GbCPbrLJ2ORTPU0I0gUG/DfriT04T6s48ccdRA
         /E+vpD4/wOgzrXH/og42XPZm45jM+NJRf+sKyg5sJYXg/Y/Wa92v88M6nP2eYvMV1sPr
         VBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715737616; x=1716342416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XIMNgWlGO5MDpCLLb1bzKZLmOQHOW80W+JrcvHSFxSU=;
        b=OHdQZ3vk/qGOKcs5Eneu1RF48Fb816qXa9n20/lnYd2R4Uh+jtwtCvtqwehbfoeXRo
         gBbB8NR7rEWRCDKmE/gnVwYVsMvd63KayqZn43AtY5snJMPSC03peIHrmN7a/KYXYXhn
         p7VOrBIt4gDRXDkeqTw0S9eSkIKOpxObTE/qMvvh5UYGEuprXz/hMj3WaXTK3Q5ctrJ+
         I7PhBhdB8qS6TFwZqqslOeOa+3iU9Dh/aTtpNt29OLsM/V4T0Wye2/Me830tmtBmXmBO
         aZmL4Y25dvyoygthjG3rgOCLlvGjZGQAKX6qIHT4/WVgKaxjZsSftGaXrMh4mqlqDpPe
         oylg==
X-Forwarded-Encrypted: i=1; AJvYcCW9BS+LiKUGI0LZxtuAITyMRw/6ue+ZYmfMTS2q2SNJj+x5B7JqfHhbg7iQNWFoN6M5iq7k2L9K06XrjT1i64ECvcwy8+DyB1W7og==
X-Gm-Message-State: AOJu0YzofYO8BT+2vvaoDIcv+B0eugh//ckRcjYvIcWJ1/PXlCLLqVO+
	DHfWFrkqv8qLGntAJThrOEhX1BwU+pZqS/ylCCOTfi+8j4dVOMGam2p7gKWkmg8=
X-Google-Smtp-Source: AGHT+IHpvtiP8viFNcwo6kjp7bdZ9URtRvV2Vxv14EHE4J2iAdDI2zbfBIaGavRuxGndxDwc1xAjqA==
X-Received: by 2002:a17:902:ed8c:b0:1e2:a467:1b6b with SMTP id d9443c01a7336-1ef43d2e38bmr149314195ad.16.1715737616050;
        Tue, 14 May 2024 18:46:56 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c1368desm105582145ad.233.2024.05.14.18.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 18:46:55 -0700 (PDT)
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
Subject: [v7 1/7] dt-bindings: display: panel: Add himax hx83102 panel bindings
Date: Wed, 15 May 2024 09:46:37 +0800
Message-Id: <20240515014643.2715010-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
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


