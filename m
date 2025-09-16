Return-Path: <devicetree+bounces-217818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA85B594A8
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 217481BC7487
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E28AF2C2361;
	Tue, 16 Sep 2025 11:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TS8CSB2E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4261B221DAC
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020560; cv=none; b=A5S4aXYlDhxropx8OuIwcgjyMppsb7cKH0W7DANC3MZ7j7PE8PEuTPzrUzwToKpNjQKLRe+yQgMvtGmnl8LZ8fbVWfYk2qX1tv0dRDUYoKxQeZkRsMytLOSRZBv2Krlo+M2yvVq3px4FW1C5blcjTS4Kq3p3lraSr2NmPFBhYA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020560; c=relaxed/simple;
	bh=y9jnqLmE0N2IfF6Kb1ZTaozI7fYb0EitahVJY1Lv5CA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MWvnII+YhBdQ2Pvr99zYVSmWYwz0NTroAC+nOEELyTM0wwq1QkCSwn3fKannvUCCuwmpSTyqneygjKVepROTrmV79cuqn2TJ+el6UqlfYCPif3xaTzyg+U7eX2ZMK2S4mmLwDxxPhkHsR1qU7RlcpV5rX/04ukg7s/qxcHfg5hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TS8CSB2E; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-266fa7a0552so18222035ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758020558; x=1758625358; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QnhnAohADwwgLMymLFupZmG/k4zaXDapUOznK23UZtA=;
        b=TS8CSB2EIikax9/hAOi/dx3Ta3VjgucC6rMWgdRSjS5gDUy3mJmVet77u8PhLeB+r5
         YJetb+7BcI37dPFn3issqmxZaPfEv2STwW1pSYotBggX0InhprTsSUkohT8tmNdYSDUK
         mR+E2IqdwI51A1aju6xUAgMNrQbokYbRdq0hi5QsvChBmjRq2U22SmkIf6GlBdIWLaQ3
         N2xwZUnzsNipod1YTXAW55bBNCREiZaq7dO2klG3YgxVszOrtiyH0updYW7QnYkNp+yb
         wq2zy5XeWYSRRoNfRi5yKY0FJCbmuBaLDoeJj54Ea9i8wv8yv3cHddNk2+tMSctBUQG/
         uLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020558; x=1758625358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QnhnAohADwwgLMymLFupZmG/k4zaXDapUOznK23UZtA=;
        b=rKDA5YQkg3w9D471Vo90/9j3RXnXIF2+ClipcY+JwoS3jk/G8F/j8kHrdcDBZSX09F
         Bh480pNGDbOxASVRBr988hXmbtjZRZRNxVSLC1hRBdUnjrSLBRhrmB8F7px2R+rsaVqo
         Bxrpo8cFnwRgjco+rQLad5Fu3F5djrFlD92wpJkqnOnwv5Oiut7y/6kHuFNhT7aNnQwI
         mv99ZaOqbPjwiWFvjoHt9OYAEcuL4faXSTuxs0j8B1H7J6O9k6+QDDLylyGg0M1gzugW
         lvGiCMVf3gGrVtPYBfekfj6uwHlJr3hR9BQqvVOGZpW7qm7Iz+P039Wtos8hKoMfQkNN
         1paw==
X-Gm-Message-State: AOJu0YzBwV1M1fhlJBBtLzRUkePsuW9+ZiCOct/doCLl+V4usYB4blOz
	/5BvD+5Qyh3FbDjslD2SHtpuaxcxq0vVgLGqpPsRffMBR4sBSOypq0aE
X-Gm-Gg: ASbGncsUIyyqEN4S+De1rLCddo7zzIsOVDTXTKcKKTlGqxfCrZMb9FDY1DJA95DWXaj
	vsMW0jxQDF2LNaNgnXeFoDGOej3HJMbUco/jNd9dznrxAesQ80lKHdNZNJ14v4nNW1r01c+YrVt
	TNny0vE2eoA1/+bIkDkBudv6HvWHjXCzdp89vQfgYUvoJknay3CTDBVxw1209P6JI99Tu+cyA21
	O06fZsF8xhah+BffCuxgrFJu2GMNnXl5tuy7/13v8p2oK8gHMegAVo54aQzY2y7WTGRCPicB/CC
	iYz/BWVUmU1sjQv4n8qogButzv1tbC3n5gbhvSw2b9RRcLFnDRso0qz3u9o0MS/T3s4EONiRgzO
	i70P1UQcmJrYbHlIzp36Ivdx2WMR1vtFm6bmlPjQsNdUW
X-Google-Smtp-Source: AGHT+IFx+My0FmYEI7yM3GGPS1Qs9nZQxJH6ip07Fyet0g7/yxeKatQnAkiffmCmgeNC9lyoW5P2eQ==
X-Received: by 2002:a17:902:d58a:b0:264:c48:9cae with SMTP id d9443c01a7336-2640c489f42mr124067255ad.38.1758020558299;
        Tue, 16 Sep 2025 04:02:38 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.103.177])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3b304ce8sm158761725ad.128.2025.09.16.04.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 04:02:38 -0700 (PDT)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH 3/5] dt-bindings: leds: Add YAML bindings for Virtual Color LED Group driver
Date: Tue, 16 Sep 2025 23:02:15 +1200
Message-ID: <20250916110217.45894-3-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916110217.45894-1-professorjonny98@gmail.com>
References: <20250916110217.45894-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Document Virtual Color device tree bindings.

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../leds/leds-group-virtualcolor.yaml         | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml b/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml
new file mode 100644
index 000000000..945058415
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/leds-group-virtualcolor.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/leds/leds-group-virtualcolor.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+title: Virtual LED Group with Priority Control
+
+maintainers:
+  - Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+
+description: |
+  Virtual LED group driver that combines multiple monochromatic LEDs into logical
+  groups with priority-based control. The driver ensures only the highest-priority
+  LED state is active at any given time.
+
+allOf:
+  - $ref: leds.yaml#
+
+properties:
+  compatible:
+    const: leds-group-virtualcolor
+
+required:
+  - compatible
+
+patternProperties:
+  "^led@[0-9a-f]$":
+    type: object
+    $ref: leds.yaml#
+    properties:
+      reg:
+        maxItems: 1
+      monochromatic-leds:
+        type: array
+        items:
+          maxItems: 1
+          $ref: /schemas/types.yaml#/definitions/phandle
+        minItems: 1
+        description: List of phandles to the monochromatic LEDs to group
+      priority:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Priority level for LED activation (higher value means higher priority)
+      blink-delay-on:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Time in milliseconds the LED is on during blink
+      blink-delay-off:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Time in milliseconds the LED is off during blink
+
+    required:
+      - reg
+      - monochromatic-leds
+
+additionalProperties: false
+
+examples:
+  - |
+    leds {
+        compatible = "leds-group-virtualcolor";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led@0 {
+            reg = <0>;
+            label = "status:red";
+            monochromatic-leds = <&led_red>;
+            priority = <2>;
+            blink-delay-on = <500>;
+            blink-delay-off = <500>;
+        };
+
+        led@1 {
+            reg = <1>;
+            label = "status:green";
+            monochromatic-leds = <&led_green>;
+            priority = <1>;
+        };
+    };
\ No newline at end of file
-- 
2.43.0


