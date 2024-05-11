Return-Path: <devicetree+bounces-66405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C30218C2EE3
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 04:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4A8B1C213A7
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 02:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A8518049;
	Sat, 11 May 2024 02:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="UvTfBKrN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BA317545
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 02:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715393623; cv=none; b=FZlp+q86orqszEu1fz3dGIQB/P4TbCu4RcIjs3+7TdVB87ZSVSQgaCPpTB2f3LdjJmki9ONiVi3IPMg4x9eh/cpOGNBX3PgrJhrrPFS3C8kXoyO5CClfZ4u8J+alu4PpS4MvMy8n1P5aufEpfrXnY1seu/eSlD9pCknv7BJkgdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715393623; c=relaxed/simple;
	bh=uJNnDWAmstFkyiZ8Vqr7sF22VLg8xgpvgrNC3V5eQfY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SQfsybwwxcnoEUqXqQR1flOlqabNheNmBGXlnb0gOpsd6vmjpKf+NIMofFiOIU7uTfHTQJwQCKBomBFfqRwePDAEwD+ZqEZPoDc0H9zttQpneyzfIOKXI+TrI8FCVWmDJ2rvHL8Gx9Jd6I8CyilhlkGf3hz2t1yk7sYTPD2uEUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=UvTfBKrN; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6f450f43971so2300391b3a.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 19:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715393620; x=1715998420; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7CobSRVRvSvCvdbHg52Uq3JLXXFgOeVwFQVjf6DuNI=;
        b=UvTfBKrNkBDevh1eBV4ojUqw1qZP13v6c/AlHyWpZWExYzHjW2GjOIrzYhPkveKZPP
         swYcIbz8KqHfVNIBypioJVueW+LVRMNM4I+UBdR+ckxzIR4LVRhptGamIRFkFD2DaGXE
         ubQ96r+xYQfEoqmZdpQxKb99x9NfaJWt/53o4JC2qQlj3nrQeXn8aU0c/ZMzwHW3K1eW
         7c8CTM1EygIjI5kVeEhNh70WvYbLuf5OZV9f+1tXMKJpmxm6e3gILw3QiupHOu9JSzPq
         lQbiMa3Cw/5Ci+x/wVUhooaSSC6ZQrmu4mfsxGejSrF1kfnXj0LrGWXSSjr906Azx22m
         MdAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715393620; x=1715998420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w7CobSRVRvSvCvdbHg52Uq3JLXXFgOeVwFQVjf6DuNI=;
        b=Vk5Asd4qxg7GBB3BgyCtiDJKjebksn8tf7o22e3uuL0oVM05fQK+MHSpH6HzqjMNX/
         9ZYST5wuZkATgEYKNi/vdfA3Fl8RlzphLeSmFTKh54Ahpluh7anDKSXso+T036XoAWMU
         B7WVVoh/4ldQQBoNkJ1LW+2GB2/DDEstpVrraCsySlNXU3x4wssW5LCjcvlCy/iprjiL
         aDzX8Gutiklwg9KT2HmJFufFwuAeqdlamtnQMY1FJm1QNSAma3yoLKcwc6401EEACQGm
         n/9FF2OwgO6E7MRHQikYCttpCRuzUavgm47afCe9dNlQQ8R9FeF1nSYG313qxmrKKVsI
         Xe/w==
X-Forwarded-Encrypted: i=1; AJvYcCUwW2PCPD/Rdlh/SskeUTkNx5jPabsM/487PPDZzJ6sao8Sm8gjOxLfgdUDtQ/tCxJQLD6I5oe+3Zq0cWKKbJmzMJeFrNrfvXQ3cQ==
X-Gm-Message-State: AOJu0Yy9p38kXp59OmOFGeLIqCUXANGCCe5SkYVgzPZ/WMuaRsj8XYPi
	n1BC32COzdyHOJ2au2oLsApdENcpw82DEThl+7IyGQlezUDJgGN5C+r8IoMMRP0=
X-Google-Smtp-Source: AGHT+IEOjv/rzqLcQpQn4Nq4tAVyZZZq4+ZitTdDgAP5LssffeyU+/ctOklxRQtHNlpFNG5FvdG18g==
X-Received: by 2002:a05:6a00:1312:b0:6ed:21cb:13f3 with SMTP id d2e1a72fcca58-6f4e02ecde9mr4623500b3a.17.1715393620648;
        Fri, 10 May 2024 19:13:40 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a9d9acsm3680340b3a.90.2024.05.10.19.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 19:13:40 -0700 (PDT)
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
Subject: [PATCH v6 1/7] dt-bindings: display: panel: Add himax hx83102 panel bindings
Date: Sat, 11 May 2024 10:13:20 +0800
Message-Id: <20240511021326.288728-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
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


