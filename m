Return-Path: <devicetree+bounces-228468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2360BBEE225
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 11:24:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8658F189F8B1
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 09:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EBA92E2F14;
	Sun, 19 Oct 2025 09:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RVlzshSa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFB42E2DD4
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 09:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760865851; cv=none; b=EzqICxDT8pu9UDxtlWEmC23UGRjeeXIGZyMAhqPYc8ASHAbnnxIJraTAp6j0R+oaS+dubuUpPRgn8BntN+CPqxeJtw/wtVgjikoqCL2pNLCeDu/kRCKPrEimdCWMg8sjz/Thp8Pzg5UB4nJB8RVTChVaTA2pvbgYIcUtKyQQEOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760865851; c=relaxed/simple;
	bh=df02DgKrk+4o0j+XKxT+07XTitEQJgCwjqyHdVDKGB8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hzP+aiI/plAViQlA0HmkRXFUNINr0L/+AiRIMfVFqMjydVrPFjt7O++6Fmg6FPFzLR0wMLDz2NR3X8hM0zQqXy/Lhtm7+VaLqRd6rvWkSx1MlEX35Jl6aH9UH5DPS9aZEWQ/fMp6OhmILQq+eKRAJSSQIt8mmAj6KiXoyEwqBx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RVlzshSa; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2907948c1d2so36637825ad.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 02:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760865849; x=1761470649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7v31il/9BPRPMXGobjFhUFF4PVck9XrAiCxTyIxRVAo=;
        b=RVlzshSaBWJfXtFE7vcqGzGYQ+A3fyz1jGSZhd3ctTICWHaJamXtAy2UmKj0ehRxIf
         dZJaN/iRoI+/R2iw2VNxV/W0sUFaj8kf8PM1ppcAZROIyNYQkR/ScbaQegf/A7DVkOe9
         ssgArE5aBxDbQ6BTgtxr7ukGt9moZQMaYTAVa3UAMIRM2AsCx8HSdOZJfxESfk2KshTi
         X+1ONBJELb0dPqnaq3z5iv45Yr0Tptumu/uCN5yFkE2V4Sdm5NnbShqRZwte6/+1IUuv
         Aeuy/wlQZbRwn47rIEHZvDlAwtQyZg9bpL18ttZpukMtfMrPTgFKTDQeP39qOT2UA++1
         mlbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760865849; x=1761470649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7v31il/9BPRPMXGobjFhUFF4PVck9XrAiCxTyIxRVAo=;
        b=pYdwtCzUFJJWB8zYLwB2u7GkmYKgs5KWL1oViXOEg1weTlsMofcp19jY/b5PT8O+vY
         vZ6JnGBBnOnUDmsg+yy4LVU9Thos69G6PSaWLEG1r8KmxnNp4D3KCeMT59UXcYGYwQhc
         SbHfeLh10kuQudPjm7wLBUjj7aWTKrb4ldku52rIFAK89+jV7WByr9jllbLSZup+5AdL
         MwtV7EkmHDe5zXtqExJ4eXygVXssyZT5BPgByhPyAnLi+ZZKG9EJ/xQom2iTGmT+jRch
         CfuvDw/YlZB4Z7DmJPdRuzQ1yOpbEIATPEjfxrOlZ/Qkx/7xVE6E5noTwTTQdYunRMkG
         GOrg==
X-Gm-Message-State: AOJu0YyWxtFtCId7fgQnYSmtFQQ9scTfbiuoWwB/+dNuwnYecY+5Wtgj
	COtsZ+jLhBibZrWWNcmwc6tH2f5sMsluHqYmw6ShS7A5hlweMSqhzXiu
X-Gm-Gg: ASbGncvRyFem8swdGJlsp6XarDF+ylf6FuKe1rqwwCo7KqxURJGzgZPRXc3xGhOPlI/
	mfsPviORET6XJGOQJ3Nw5pCtYIZgPp68ESDfM9EVFh7MVX7EkQtPECuwvcGc1XLj6iGZUylpezu
	sWgOwmG20KM5015tjpJEcbruOFOMXJnQKpEl4Wc5WnZv9jF0cpoAcP1NToG6Mm/3Ycdg2RZxgNe
	u/1RM43bc9yUlok66bx03CXMRQrBMqf3G+ZcQsazd4WqCIQZLifVa/SAOYrHd0/RdmdLodDmimV
	cpe9GOYQrRHX2vBzwwQ/pHvNPmtbxB32XczywDQVzylNCRMKADtJ07vysQx0yGf1cAMpgdviwD4
	hrp0gnfAA2UwHwmw1GOYASwmB+sXWiN519DJXUVG7GH0tjK/dE3xowfEeJog9cTF7zSGkX1zF7d
	6fSiLYMa+vHd+BYO30s41LSQlwFvnLlQ==
X-Google-Smtp-Source: AGHT+IFRlFFqv027OSQUv7v+MX1Tdba7pA0SqEFYdNoXA1iNG1aZgnCBxSFI/EZIbC1jeqbHbOHR4g==
X-Received: by 2002:a17:903:46d0:b0:26a:b9b4:8342 with SMTP id d9443c01a7336-290c9cf2ca2mr120029135ad.25.1760865849103;
        Sun, 19 Oct 2025 02:24:09 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.99.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ebd215sm48313115ad.14.2025.10.19.02.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 02:24:08 -0700 (PDT)
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
Subject: [PATCH v3 1/4] dt: bindings: Add virtualcolor class dt bindings documentation.
Date: Sun, 19 Oct 2025 22:23:24 +1300
Message-ID: <20251019092331.49531-2-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251019092331.49531-1-professorjonny98@gmail.com>
References: <20251019092331.49531-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Add DT bindings for the LEDs virtualcolor class framework. Add
LED-FUNCTION-VIRTUAL-STATUS ID to the FUNCTION ID list for device tree
bindings.

co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 .../leds/leds-class-virtualcolor.yaml         | 90 +++++++++++++++++++
 include/dt-bindings/leds/common.h             |  4 +
 2 files changed, 94 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml b/Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml
new file mode 100644
index 000000000000..8cbbbf0d746c
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/leds-class-virtualcolor.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/leds-class-virtualcolor.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: virtualcolor LED class
+
+maintainers:
+  - Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
+
+description: |
+  Validates individual virtual LED nodes that aggregate multiple monochromatic
+  or PWM LEDs.
+
+properties:
+  $nodename:
+    pattern: "^virtual-led(@[0-9a-f])?$"
+
+  reg:
+    maxItems: 1
+    description: Virtual LED index/number
+
+  function:
+    description: |
+      LED function. It is recommended to use LED_FUNCTION_VIRTUAL_STATUS
+      for virtual LEDs to distinguish them from physical LEDs.
+      See: include/dt-bindings/leds/common.h
+
+  color:
+    description: |
+      LED color identifier from the LED_COLOR_ID_* namespace.
+      See: include/dt-bindings/leds/common.h
+
+  leds:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 15
+    description: |
+      Array of phandles to monochromatic LEDs that compose this virtual LED.
+
+  pwm-leds-red:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 15
+    description: |
+      Array of phandles to PWM-controlled red LEDs that compose this virtual
+      LED.
+
+  pwm-leds-green:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 15
+    description: |
+      Array of phandles to PWM-controlled green LEDs that compose this virtual
+      LED.
+
+  pwm-leds-blue:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 15
+    description: |
+      Array of phandles to PWM-controlled blue LEDs that compose this virtual
+      LED.
+
+  priority:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    description: |
+      Priority level for this virtual LED. Higher values take precedence
+      when multiple virtual LEDs are active simultaneously.
+
+required:
+  - reg
+
+anyOf:
+  - required:
+      - leds
+  - required:
+      - pwm-leds-red
+  - required:
+      - pwm-leds-green
+  - required:
+      - pwm-leds-blue
+
+allOf:
+  - $ref: common.yaml#
+
+additionalProperties: true
+...
diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index 4f017bea0123..39c34d585a47 100644
--- a/include/dt-bindings/leds/common.h
+++ b/include/dt-bindings/leds/common.h
@@ -63,6 +63,10 @@
      "lp5523:{r,g,b}" (Nokia N900) */
 #define LED_FUNCTION_STATUS "status"

+/* Virtual system LEDs Used for virtual LED groups, multifunction RGB
+	 indicators or status LEDs that reflect complex system states */
+#define LED_FUNCTION_VIRTUAL_STATUS "virtual-status"
+
 #define LED_FUNCTION_MICMUTE "micmute"
 #define LED_FUNCTION_MUTE "mute"

--
2.43.0

