Return-Path: <devicetree+bounces-41438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71370853ADE
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 20:24:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E00592810C4
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 19:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1639C60B84;
	Tue, 13 Feb 2024 19:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="iCN6vaTi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF58605DD
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 19:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707852242; cv=none; b=STdLBdnyIsLRIUCx6Z1J91W4Hvw26ewxYq1+lA0FuDwtwYkz0HhmvWAQujs3DNxPYQ6nxcbitBCHmXw8QvlZYsh9O6OTCPbmJrvomSmJQzuGC1McgE3ltY3MiVgGWRW3viqufzjjOewcW/M1NQekBjHaiBHqCkmTWqJ3hQp7YcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707852242; c=relaxed/simple;
	bh=XV+OtUBZjtriQOOO0xB5U/nkCH5OAeoPwHKPq6JTspE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=EMWRIss9ChgeA5rXLpv4Wkt0PPXWh9x4fc/ve0VhZoWmDrbOM4pYxbUMZ37EefwiYLytXgPYKkc5fTShkuySUcWKXb+VwrsdJPjTdGq7ZBgooQBPjU8R8rKr5LnWJVhsiCWJCCo9XmYiKnC60jgepurzKLIhbiCrec/RNqQAF28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=iCN6vaTi; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5621f7c86c9so148308a12.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1707852236; x=1708457036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X83gpdHuaLrcfBf2an0RmK494zTVrvs1ZHu/AXNLWgY=;
        b=iCN6vaTiIVXXWWlJKmUTeSRUk4Vgz5nvqFWuf7Rjtj7wR/9dSzQ0LT/zQQKM3RQiBD
         RviWL7bLKzMlumirZgrGl6AEQOGyqad22bJzyrcu6ADzn/aiQKHk1pISSIz6EltBm3EJ
         9UBPtpJHKQP5Inhh5bTX8bJ0F6kYj21+fzkY8pJscCiLHlWZ8GGw2icZ4rgn+ojupbBY
         t27pg8iaXQGmmsiMfHh5emp7uvRvrh4qMmr/NqMMJ1nTkOZ4h/CC/lCvstlY/ahSxQzY
         ho+EzaP6Tb3rzMGi8bAd5Nalh4qww1Bu6JdozfihV94AaWd+iH4C9esFz5mfBnOqNEO7
         H/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707852236; x=1708457036;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X83gpdHuaLrcfBf2an0RmK494zTVrvs1ZHu/AXNLWgY=;
        b=eyDLEzsUMJXjqnQetUhr4dTLDHeUzXmhETgTlJGWASgmrLXDEYhFenVBQGzigJQfQY
         1iSRuhPyuvX1gzV+5WqIFyhXlEm0hePMkyLcmBXqvfSgVXy7WTGhfObeo6Lp6slg9WME
         uiO/66sLaSxtCeqcMFUyWsBkwlgxHkgUHeFCQoSMQ7Oknc8Bf8LrogH41wmeqpKoaeJp
         HcbEkZJdNG/XSWSCQq6pALaPafXN+cJxAPDIa/u4JSy2E8G2LRm6NcEeW1AAs/puXHqG
         VR2431Cc3RhQdUssBHHi57dSgveMlr03UxB5heedM7LQuTE6mIscqtCM2Pijq9KXSAHY
         Q72w==
X-Gm-Message-State: AOJu0YyqU4f2H5HZdC9lLj7wJcIlNBlnSp2sR4IkgCAKXZ9PsjWnlHl9
	mPrs0mdtwnEF2vl9knb42Q6fbiN/H3eSscjc7z/vfpLh0rq1TzxySmeqp/14aQc=
X-Google-Smtp-Source: AGHT+IE+v6xLxPpU9X715rz2MaGHKpbnSpTuP2qnpi6iovd+8i5qpbEbZIjG1aLI0YI0vr8E2gCcgA==
X-Received: by 2002:a05:6402:1f49:b0:561:3b53:d0af with SMTP id 9-20020a0564021f4900b005613b53d0afmr3145260edz.12.1707852235483;
        Tue, 13 Feb 2024 11:23:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU+fFgnoTZqLspCu6NHukjFILS/CKN2mFpuRaXqmt21sSR2uA7QYZIsGvX/Ob4EP9dGjKSMgocKSnvQzRvRkyc7WpvDTniBGS0xAOLzOxrPp39NaD5pIC70lsqqwJGMLFp+5ua7nr6d+WtOlR1FC40SedZLvPIH/1tw02XUaZ2IQZLhaihoBW3GKjBiUcyYU2Mvfp7LKPyTtr4W4ROkf7uZEqV0JkbfYJFFp5FdUKM4LzpQh7idhGa4uU/bsDaOKDEPfnZe1hxAYJ1a+ECCYIgEQkrZousGm/FcImmTcx6lHhQd7zE=
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id g22-20020a056402091600b00561623dff71sm3961117edz.59.2024.02.13.11.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 11:23:54 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3] dt-bindings: renesas: Document preferred compatible naming
Date: Tue, 13 Feb 2024 20:23:40 +0100
Message-ID: <20240213192340.2786430-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Compatibles can come in two formats. Either "vendor,ip-soc" or
"vendor,soc-ip". Add a DT schema file documenting Renesas preferred
policy and enforcing it for all new compatibles, except few existing
patterns.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
* Changes since v2
- Improve the select so it matches on any compatible containing a
  component specific Renesas value.
- Make the regexps more compact.
- Define MaxItems to allow the increased selection to work.
- Add rmobile and shmobile prefixes.
- I did not take Rob's ack from v2 as the schema changed a lot after
  Geerts review.

* Changes since v1
- Split the "SoC agnostic compatibles" section into two to make it's
  intent clearer.
- Improved the documentation for each group of compatibles.
- Reduced the number of regexp to create a larger target area. As
  suggested by Krzysztof the goal is not to validate each SoC name but
  check for the correct order of SoC-IP.

* Changes since RFC
- Moved to Documentation/devicetree/bindings/soc/renesas.
- Changed the pattern in the initial select to match on .*-.*.
- Added a lot of missing compatible values.
---
 .../bindings/soc/renesas/renesas-soc.yaml     | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
new file mode 100644
index 000000000000..57c11022d793
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/renesas/renesas-soc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas SoC compatibles naming convention
+
+maintainers:
+  - Geert Uytterhoeven <geert+renesas@glider.be>
+  - Niklas Söderlund <niklas.soderlund@ragnatech.se>
+
+description: |
+  Guidelines for new compatibles for SoC blocks/components.
+  When adding new compatibles in new bindings, use the format::
+    renesas,SoC-IP
+
+  For example::
+   renesas,r8a77965-csi2
+
+  When adding new compatibles to existing bindings, use the format in the
+  existing binding, even if it contradicts the above.
+
+select:
+  properties:
+    compatible:
+      contains:
+        pattern: "^renesas,.+-.+$"
+  required:
+    - compatible
+
+properties:
+  compatible:
+    maxItems: 4
+    items:
+      anyOf:
+        # Preferred naming style for compatibles of SoC components
+        - pattern: "^renesas,(emev2|r(7s|8a|9a)[a-z0-9]+|rcar|rmobile|rz[a-z0-9]*|sh(7[a-z0-9]+)?|mobile)-[a-z0-9-]+$"
+        - pattern: "^renesas,(condor|falcon|gr-peach|salvator|sk-rz|smar(c(2)?)?|spider|white-hawk)(.*)?$"
+
+        # Legacy compatibles
+        #
+        # New compatibles are not allowed.
+        - pattern: "^renesas,(can|cpg|dmac|du|(g)?ether(avb)?|gpio|hscif|(r)?i[i2]c|imr|intc|ipmmu|irqc|jpu|mmcif|msiof|mtu2|pci(e)?|pfc|pwm|[rq]spi|rcar_sound|sata|scif[ab]*|sdhi|thermal|tmu|tpu|usb(2|hs)?|vin|xhci)-[a-z0-9-]+$"
+        - pattern: "^renesas,(d|s)?bsc(3)?-(r8a73a4|r8a7740|sh73a0)$"
+        - pattern: "^renesas,em-(gio|sti|uart)$"
+        - pattern: "^renesas,fsi2-(r8a7740|sh73a0)$"
+        - pattern: "^renesas,hspi-r8a777[89]$"
+        - pattern: "^renesas,sysc-(r8a73a4|r8a7740|rmobile|sh73a0)$"
+        - enum:
+            - renesas,imr-lx4
+            - renesas,mtu2-r7s72100
+
+        # None SoC component compatibles
+        #
+        # Compatibles with the Renesas vendor prefix that do not relate to any SoC
+        # component are OK. New compatibles are allowed.
+        - enum:
+            - renesas,smp-sram
+
+        # Do not fail compatibles not matching the select pattern
+        #
+        # Some SoC components in addition to a Renesas compatible list
+        # compatibles not related to Renesas. The select pattern for this
+        # schema hits all compatibles that have at lest one Renesas compatible
+        # and try to validate all values in that compatible array, allow all
+        # that don't match the schema select pattern. For example,
+        #
+        #   compatible = "renesas,r9a07g044-mali", "arm,mali-bifrost";
+        - pattern: "^(?!renesas,.+-.+).+$"
+
+additionalProperties: true
-- 
2.43.0


