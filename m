Return-Path: <devicetree+bounces-61391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A278AC849
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:03:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7F171F218D7
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA7F56B68;
	Mon, 22 Apr 2024 09:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Eskdzlwf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0169753390
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713776610; cv=none; b=KThitEfuWOINi18ThhI4tKFTcpoBYMqbvE6V5CQqO3Rt/7wqnfW1Sg0HuNF1rfIJDD6A4VsAfMq32MTOfsWzpQ3OmRmhie8HZKi7ax8whuc7Dg/4amj0zItqOWtJZsHZMqZWzD1DSNz4akT8C7gxRqO4ZKvSd2WNx2NTOfY9Wg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713776610; c=relaxed/simple;
	bh=BKTDKIx4qdpSl3cXBADKrIH40ld4k6SSpBzLG8UfvNw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aftGBfgesPbzgvzRg5B+6LS3Z85cercJFYVNhOdE+iz9OnxkMvA5Ba3nC3ju5G91CRJhMuUYvLvdzpvU4ue6LOcXjrpIHQVBkBBQt+Mm/GkSg27Z7A2jZ5gTusKnmF+9B/0ewyuVMRe6trM5MFE0KOhlEnCx88SIEvLC4LfLYWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Eskdzlwf; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6f0aeee172dso2032783b3a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 02:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713776605; x=1714381405; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3bGwbMVBW9JMkaCtxs81SRVI+X7PdkUKjZQUdNYYUU=;
        b=Eskdzlwf4d2HAI4B5OJge7VdnStdxgDhPJ/w54ebbmyaNRIaOhR83JrbBmgphFNTJ2
         q/gpUeYY4QphaZM2pf3TF/q466KQgbKxtTDWacj+dHdEKrpTc2nSQL+ulQ+iH8YvfKoe
         ovuBAeKTU/ZPI3sPVZii90lsxmHbOFy6kwcdvhc+0O6/exRyPKf0Ae5bidL9spYbuyWl
         cTqPjYIIGYkORXhpMI3PgLfbBoSEPz1rqP/vTf77mkx9vDzgzFi0pMr0FwbV9T2GFKOX
         nhPtdA77biCr+pvg7hNOnH1qVQvxpkP73C77Y4gxQI+Lwkgx/9xbEa23GYtT+bsFxlFe
         PmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713776605; x=1714381405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3bGwbMVBW9JMkaCtxs81SRVI+X7PdkUKjZQUdNYYUU=;
        b=ZG2XG7+0iJ4AHDDIn8fPnjwPAPuo/5OHkVR6nq85xHqeu3gc2/iQ+RvgWVyyph3laL
         JsipcWZbQ03WatuR0wTMLOPuhd39dOQ507lIqP8WDMAs00seDObB2lpFbcZOrYjjPB4e
         oJE7WMaTOt4Snr23Ri/Ycz1zKZFEI7I1EYbqg5M4rkZgrS9TqcZO0eukVJDFCf5pFoVF
         FsV+LxYXQjmFwx9AkU+vU+jOJV6aIMecxvD5483wpwjtX5npASC2aTW0eozN1roqe+3g
         dhtZX/OekwM5kVgdIWx/+zjrXXh6PGdrXCixqhjMbukNZluYhGeT8TuC8m4tSrcgZdX4
         GXWw==
X-Forwarded-Encrypted: i=1; AJvYcCUsGHtJJT60A+65DwZHNG7UoUjO+qnGxeAuOOyK0CfVr6xLwouqmTqfdB98Q4DFAgf1VOEjoyeX3AFbgZjp8X8VQCFV/AH+Mqtidw==
X-Gm-Message-State: AOJu0YxslUuBN0ybC+1A5/zPlauZl47730v63xve4acavldxVXyZjwC8
	05YESYXDawv7YY+MNTvygEWuyET4LmM5fpYYrHVlgTmD1l8k2g1EVneAjT0DqSs=
X-Google-Smtp-Source: AGHT+IGO2mLo+nckyIM2FhOHlELT6Ndn5AzW9myMeznYDlNxLFym3M9PI3lXcBd3GDpj5c86eP65aA==
X-Received: by 2002:a05:6a21:3416:b0:1ac:3d62:9154 with SMTP id yn22-20020a056a21341600b001ac3d629154mr10753407pzb.31.1713776605319;
        Mon, 22 Apr 2024 02:03:25 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id by42-20020a056a0205aa00b005fdd11c0874sm1919137pgb.64.2024.04.22.02.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 02:03:24 -0700 (PDT)
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
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v2 1/7] dt-bindings: display: panel: Add himax hx83102 panel bindings
Date: Mon, 22 Apr 2024 17:03:04 +0800
Message-Id: <20240422090310.3311429-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In V1, discussed with Doug and Linus [1], we need break out as separate
driver for the himax83102-j02 controller. So add new documentation for
"starry,himax83102-j02" panel.

[1]: https://lore.kernel.org/all/CACRpkdbzYZAS0=zBQJUC4CB2wj4s1h6n6aSAZQvdMV95r3zRUw@mail.gmail.com

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
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
index 000000000000..2e0cd6998ba8
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
+    enum:
+        # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
+      - starry,himax83102-j02
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
+  backlight:
+    description: phandle of the backlight device attached to the panel
+
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
+            compatible = "starry,himax83102-j02";
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


