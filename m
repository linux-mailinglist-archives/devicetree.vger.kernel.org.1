Return-Path: <devicetree+bounces-225849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C661BD18A9
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:56:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE9093B2E54
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5852DF155;
	Mon, 13 Oct 2025 05:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mgPzDZ3H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E08F2DEA75
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334977; cv=none; b=N3b7G7evAam4ouRrEu+5W5l2raCAorl3P3Ct2uulhXwZfMbox5+nHdhnEXZM5EvdgIGBvT6XxYsG+6yA4rrdSRZVluz8QK7amIX+ipKE4ulz+2xvCBP/GryrvPtaqSjIAyGXdnzS/dc2jy9RaesEgupj3BZmxPNePODk/43EhN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334977; c=relaxed/simple;
	bh=M+TtnNRlKxmwNkWjOrflCvsVUhdbfnUnfwwEyraGfY0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jHCuCi5Cu2u2LgC9TMFGZAxpIv1v3dVRLnS7wjAeGAoir4nLJdPk7IK3OdQ7/ysDqnG4XbjxqGnAngBz/pPdby/5h3vOeDJRL40i/OM5DyTY5QhVqOJfgsJXQPUfCSkAsTFqpg3uuTZslOdf7+e2FAa/xo5U3w/+kShEMAAEOJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mgPzDZ3H; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-637e74e9104so5090350a12.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760334974; x=1760939774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MmVeYmdQG39CjbFRBoggArBt69tBLOMtXANeqHPySaA=;
        b=mgPzDZ3HAHGC3lbyh6ymSMn5R0mryNTIn4t1Qy6W2C5mxbuZrnX0vhriVhGhknCDW5
         J9d8mehe4BLjWtry5jX+U3GVX4uNn6K4Uo2VO9NvXphqOAsdZgF90nhIYsJCjgtkwECF
         U+v9S7YDKfixfh2zPttXx+rLyzChxLMWM227TCFqj+b+y+knkDbGH2Hfe+j+jZguBzfC
         W7XbEB7UBBJBg8sRqwHagWQked6xqld7RdK+e1X6mSU9cT7JRF1oeaUu1ZG9N6qPAxDH
         9EBrPAwcOYwYc6OC3NOu5IqAlnb7JKoIXfYPu+9kJHSZmfblpmXJQaswP4amq1wwD1do
         LuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334974; x=1760939774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MmVeYmdQG39CjbFRBoggArBt69tBLOMtXANeqHPySaA=;
        b=H36FP10afbKc3HEo0Esf/CqYp0iFkjGYEYu95UrTLerQ5r9tmUj9zKnvdt1V0b1xvQ
         5lccTbCjjZj8K3h6MBMdPNlu3KrMrpM/OdOnrmRG7VjlBDbeyLnI54ZcxPfmug/A8RHA
         DWl0/0ZyXNathUrW23oaHkhOr5kyf02nNNL9MJ7V+XZSFY2wQrplkJWzftUCm+21dGFu
         kDuMtjFDBIfHRR4iqIf2jtDscr44tX9DiaQBTiNmzz5uriZDD9yDSXFsIYihmVQQr5cZ
         W/gjy7iv3dpbMk3doPt50gO7xH+vRqQNqeTqU/R3nayOBRyv65xPyg+IlpEs5dzlD06x
         3hVQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/A7B8RqgFHMqqYx/oB4f+bWz7ZwFZWVubRbL5682jyP7bufl4zypqJTxhIRmJhWu+sNilof7Qbisl@vger.kernel.org
X-Gm-Message-State: AOJu0YzlkU2rPeCQ61gVfR09VkD+VFMbDwn7qg83LC/AfTqIBUT6jUVU
	QbI7IDZw/EQ4F2kj4tJIGF19l1jpFxG137nwGjg415VlK6lEvJX/k+5H
X-Gm-Gg: ASbGnctR36hLfyvMjgGxM/V9SEOzbvnOSB0DytPvTCuZypQzgj9lP+iffMS+Stz5LoC
	WpD9kz2ypavn/IRlR62rNKEu0/SYQTcj39CJgPoWCiBA8LFpiqjEOzrCBk5ed1kTaNQ9hA0CHqo
	v4smD/tCl/IC7qYxKW3aTRUYOtYNCKCtzwFKYxeAIYCxS/BdXyfOzAbhnK6XuhAcxDXoytG0G9z
	hkIyi3qFqQvOAx0kpCcRrQsbJ6ugD7NFyJG89NQKleiVaguLOMj615G0/Dj+dgcu9wZlaXZL0Nk
	LEID14Z26Z9tg80G61jRvSYm4Lts3vQm9438hAf/wgh5B0IVfbJEzBKVnuJe6Wnk+fjERdj5RF7
	OfVS24ycJSUhnvlyi/R7L6LOAWQhU28+1izmGP5op/Io=
X-Google-Smtp-Source: AGHT+IH2c+24CivWPPJ/ldu3md2RU+buuXCl55Yc9ObghGW9GfGlOejHYQ5h1JhatOPelTBivJjgCA==
X-Received: by 2002:a17:907:5c8:b0:b40:b6a9:f70f with SMTP id a640c23a62f3a-b50a9c5b352mr2011241866b.4.1760334973858;
        Sun, 12 Oct 2025 22:56:13 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d63c9a3csm860912566b.23.2025.10.12.22.56.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:56:13 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
Subject: [PATCH v3 1/7] dt-bindings: display: panel: properly document LG LD070WX3 panel
Date: Mon, 13 Oct 2025 08:55:36 +0300
Message-ID: <20251013055543.43185-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251013055543.43185-1-clamor95@gmail.com>
References: <20251013055543.43185-1-clamor95@gmail.com>
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../display/panel/lg,ld070wx3-sl01.yaml       | 60 +++++++++++++++++++
 .../display/panel/panel-simple-dsi.yaml       |  2 -
 2 files changed, 60 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld070wx3-sl01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/lg,ld070wx3-sl01.yaml b/Documentation/devicetree/bindings/display/panel/lg,ld070wx3-sl01.yaml
new file mode 100644
index 000000000000..0f0b9079f199
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lg,ld070wx3-sl01.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lg,ld070wx3-sl01.yaml#
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


