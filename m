Return-Path: <devicetree+bounces-65418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 277588BE4D5
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 15:54:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A91901F224F8
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 13:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FF015E80B;
	Tue,  7 May 2024 13:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="jzu9Vmly"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7E615E5D7
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 13:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715089983; cv=none; b=eUTyZLU2IZhBF98sLXmyHFnQLmM59Atuc/7A7YPehMWK30Y0fThXD8Dg7tMtlasRvSA2d/cr9021CryhWXs9HlS7oYJwThqUpZQ0k9sLKIC5owT36gY9q0/egtyK6relghLdODGg90Kn8Y657UO6Ve4hHU3jjbEuMgdprzXGd0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715089983; c=relaxed/simple;
	bh=ZK/tKKRr2/nEyLcsTaJXfoWejqnYbsGg7dH1c5ZlwC4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m2MpiNaa0x1pL7Mfhm72PsK5Jh6feUe9v6foBHtXTWqCTRsnzjF6hPytTb44fCfn3ZFYR+lYwTlqzqYz46AybyAX+Me09uhK0zYcLLCsEAxqweC7qMZRS/IXWtzGH9KYZnGwtEHqHroSwK1P4m02RTCE4+rX3myMqYNtr/WWpHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=jzu9Vmly; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5b1ff50e8d1so1715445eaf.0
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 06:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715089981; x=1715694781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fd7zJQgzqEaBgMHOkbXwkF1H9L39T9H8kzbx5q3PlWk=;
        b=jzu9VmlyxjeYg/ktnVpB3aYZMmoB/Kcr2Ulu4yG28gnYDEVnhmAetJ9/Mbk4LRy8Qx
         YaJN1xK2dXWW3SHYpqKYlRdOLcjcHxLHlpw1BWoI+wydEt6PJq4a2sDgfqtou+RML7ap
         +bO44av2bNlD9SeqYayFp3rTGLFxPfzN60BdDK659T5nRIuJP3e0R9gA27ykGzKe18rn
         6CfpNWzJJIHu78g0Jh/VbKtuEAqFB6FERQgGeKUmfQUqnxsGtohaGfuKRPs2kbyDWqze
         8BczZEP8jkWgdvrO9Kkq2QW5YK5NqiV30YLzS6ICFxpF5QQ+6MeRchcHyzSafzEfZQOS
         PT2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715089981; x=1715694781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fd7zJQgzqEaBgMHOkbXwkF1H9L39T9H8kzbx5q3PlWk=;
        b=MKdafZCwSOgz6Z9KPRQH6ZjGkz/9VcqmnIxcZE9fMVHtryt8Rce9Cf5uIICpU83fnV
         0Hbq/d33S5c7ky9F48k24Ogb7xzshS35LtNVUWxGEdr4YL3tBTIg1yiU2BCTmz1dIpu6
         e8XcsJ3Wjz1x3BsPsS/gtjYulsiHbGc9KgLIwU6gh3+n6jKPdKoH7iDWkIAWpcXBaArL
         iz9gYiMa7jnwNZSdI98uAt+lX//E17zfG8GizsM5z7mqx9NIKAw9ABvx7qLFOqLL8Xg7
         O50NmmFPBG99qkhu5Iz4jbXKHgm588+im9LMrKVdY+U+B5M5RXBLna+78ALtXVXB3HKQ
         2W0g==
X-Forwarded-Encrypted: i=1; AJvYcCXVn0EwuJfxJ9iWTHiEEqjsWwSze146K+MI8XPcEauWp5NnMSLybeF/1fil3XHmF0k+pBUx3SeE6xoMaZ089CIaRI3Omkn2NlUUyQ==
X-Gm-Message-State: AOJu0Yw9Y9N9y8uxC4faGJHIkcJKWM/vTEUVDliYunwURiYnoYmFFfoa
	yYWQVuTEnFDK7zDMSium2fMbR7z3KNkV+eiwYJPvdxhssG8KKvDoyv42cmdGkJE=
X-Google-Smtp-Source: AGHT+IEsnZ77ZUDxgsNmh4OEWDd7fgK5pPFOYQK6h64QDvP6Csu575rTvWK+lrHQ6tA0SqdS8cGbig==
X-Received: by 2002:a05:6359:4e03:b0:17e:8e7f:59f9 with SMTP id oq3-20020a0563594e0300b0017e8e7f59f9mr21441480rwb.26.1715089980766;
        Tue, 07 May 2024 06:53:00 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id e7-20020a63e007000000b005dc8702f0a9sm9850542pgh.1.2024.05.07.06.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 06:53:00 -0700 (PDT)
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
Subject: [PATCH v4 1/7] dt-bindings: display: panel: Add himax hx83102 panel bindings
Date: Tue,  7 May 2024 21:52:28 +0800
Message-Id: <20240507135234.1356855-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
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
---
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
index 000000000000..7cd720eb4981
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
+            compatible = "starry,himax83102-j02, himax,hx83102";
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


