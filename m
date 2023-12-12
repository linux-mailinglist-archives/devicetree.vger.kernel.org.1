Return-Path: <devicetree+bounces-24252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC2C80E7C9
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 10:34:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE0341F215A7
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0A42584FF;
	Tue, 12 Dec 2023 09:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dziLiuQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155E1CE;
	Tue, 12 Dec 2023 01:34:48 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c3ceded81so29403505e9.1;
        Tue, 12 Dec 2023 01:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702373686; x=1702978486; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZlLSLEWUd1/iq+JA+Lsz6BXe+7Zz+SmGu5k5JTmZh/M=;
        b=dziLiuQw8OE8cdPTs5eADjydLM8EhU5N1fIsX4tzG1KXy5nWWxuJ5Njj1X8cAZilB/
         pyyXrahp4GdZAM83zFLMPL40aDRupV336CaxmyneSlp+T/H1QfhPX2pn2OVYYF2eweYI
         N0w2t3A+B1vUoUPgbY5AZykEQCahaHOxo2PqTeCxDW8oUV/B8sKDtumemluUeix5zgP8
         umHMYLzRlFwI3bbjC/An8zq8Polgk0fwtXU4nn7Sj2kTLQ4dMRNQiEoUgJPBH6YAttAG
         lp8zPlO/AY2wAnM/WhHNSgK3DOAZsSTkxccueCeZUefvx4q2TlWpqhSTy7hzxfRN/isp
         7rzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702373686; x=1702978486;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZlLSLEWUd1/iq+JA+Lsz6BXe+7Zz+SmGu5k5JTmZh/M=;
        b=eWOa8tR8IwE3PI4mhLqH1D/7IL62drPq9OmdQUiD3WzGto0PjVWLTf98LtaW0iOuaK
         BTqbdYkD8kxVB6hlU8ypLLXc6I0NKRvqn4RZxSrmNjhxK1yfyfHV44ZZcwXuIsM6iSeZ
         HjA20quuUO2Ta1TJlWxHVaMHFoV573xzn5qlSlz0BYSXClYwpAq92sxfupEgBiEJah3h
         /ufhU879me7E0QaIkXC+A9ztGzvalkCI3FsmYJBc7zuADatsgW31yRyQwza56xtb5PVl
         2dXAX8nhK/B8Bl03LTEsU08T9ivNsHHpBe/DeMFWv/9jPVl1MDMm+pyHQNwh5D5FtsS5
         BmSQ==
X-Gm-Message-State: AOJu0YwIwsT0+Ax1kp+SCdelyVCGFzlFhuj2g8X45NIlmipF6kNRDJ1O
	ItZbJJ9XrOSP5X9JeZyqAKoDOLajbOM=
X-Google-Smtp-Source: AGHT+IHxrwrcWxXtPo3h4ISIgbxcwLfR7qEWZg4nkgUwBk3bxp777OAjMiv7o1jlsbYD3G73SDXajQ==
X-Received: by 2002:a05:600c:601c:b0:40c:3984:4975 with SMTP id az28-20020a05600c601c00b0040c39844975mr2943686wmb.95.1702373685821;
        Tue, 12 Dec 2023 01:34:45 -0800 (PST)
Received: from localhost.localdomain (141.red-88-10-53.dynamicip.rima-tde.net. [88.10.53.141])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b0040c4886f254sm6009578wmn.13.2023.12.12.01.34.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 01:34:45 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: devicetree@vger.kernel.org
Cc: tglx@linutronix.de,
	daniel.lezcano@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v2] dt-bindings: timer: add Ralink SoCs system tick counter
Date: Tue, 12 Dec 2023 10:34:43 +0100
Message-Id: <20231212093443.1898591-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add YAML doc for the system tick counter which is present on Ralink SoCs.

cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2 RESEND:
- Add Daniel Lezcano to CC in the patch itself.
Changes in v2:
- Add Rob's Reviewed-by tag.

v1: https://lore.kernel.org/lkml/CAMhs-H_9kAdOfR-RaJWqAq6d3S3DXtKJqWy-EWCu0-ZjWKB9Sw@mail.gmail.com/T/#re9225265416ca8463c5f06d736f9834ae75efe0c

I am sending this with Rob's RB added since I ping for the v1 multiple
times without response. So I can be missing something or the patch is
lost for any reason. Thanks!

 .../bindings/timer/ralink,cevt-systick.yaml   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/ralink,cevt-systick.yaml

diff --git a/Documentation/devicetree/bindings/timer/ralink,cevt-systick.yaml b/Documentation/devicetree/bindings/timer/ralink,cevt-systick.yaml
new file mode 100644
index 000000000000..59d97feddf4e
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/ralink,cevt-systick.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/ralink,cevt-systick.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: System tick counter present in Ralink family SoCs
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+properties:
+  compatible:
+    const: ralink,cevt-systick
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    systick@d00 {
+        compatible = "ralink,cevt-systick";
+        reg = <0xd00 0x10>;
+
+        interrupt-parent = <&cpuintc>;
+        interrupts = <7>;
+    };
+...
-- 
2.25.1


