Return-Path: <devicetree+bounces-2321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C45F57AA8EA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C97E51C20A43
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B272156EE;
	Fri, 22 Sep 2023 06:24:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97622104
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 06:24:28 +0000 (UTC)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898F0197;
	Thu, 21 Sep 2023 23:24:27 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6907e44665bso1584097b3a.1;
        Thu, 21 Sep 2023 23:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695363867; x=1695968667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6OHbfvvmaSbzlb/vBLJ9aFEGcvRSExJ6vAXO7h1XWQ4=;
        b=Waczws66AauZ2v4uXYpW3vOyi5OHrD9cYzY1TTA2nGgm+YncETkgYZU7eo9Y9IXEqa
         aeg/tQGmdw/HhGiH7xIlG2iLmC0RLEWWHATjkey/VLDQn5Kz7ddRRfhYV09tCJ8QY+In
         FPUDRBsRIqOcBdkPhhKQZjmbsr6XHPHlQfPxFMFSs5d3pfK45Ni9M6xNnww565PMXVb2
         l5sRlcV8lLR/fEwCrWKZ9bcD95Xb6DH1S4fb1JwyedYkVEM3g9ZvET1IWBRyOGvbe4UP
         SJ7iCAU5DmnVLOgnsJwUSgp58mBOj6Cdoa1Ps+cd531egFJZYdKYRkbPXGNEyEIIKlQc
         4Gsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695363867; x=1695968667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6OHbfvvmaSbzlb/vBLJ9aFEGcvRSExJ6vAXO7h1XWQ4=;
        b=YAVwB2p2uDt1V1cMbCGHBmO0+JBKWpZd4DPN2lndvbwmPZEMkk4mYYSHSO9Noke4EK
         YQv8wVZ07KiVzu6X0QlFgeAvad8r4C8Eb8gS/lUD65KF7b+/3Z0PF5OcWIkRdFQQWPNw
         h0nFm2q3w35lNLx+dCj9hHnvx4MK/05iEf+lS4KJKj0w1OX7rgyPtKguJ90L8/+HIu3F
         bfyHSEcIct75J/9Bgo/OekcJRYDANrbGzQG1qWUgm8Onpdyw/b9Lec25kn5LUG9Yv6CX
         0/4PFVMnD1096Jd4hDosTwEf+98wVQ5w5rUvCv/7kKAbfC2qC5tBq2NRSkz9LXBSxdri
         Q/gQ==
X-Gm-Message-State: AOJu0YwZOX1TIH4AEQdq0Ta4GWHAzq7xGn/W+J12O55O8LqUt59+peOy
	qTC4UaBDgKoHW+IvHbPPgYY=
X-Google-Smtp-Source: AGHT+IFFTlcWa90VeyhvMcSnLlwIuZC8B7Kc5k+nHNBZi3cDE/M6+hvtq8kXYUnRtcJ65TnHD3Gbgw==
X-Received: by 2002:a05:6a20:7288:b0:135:7975:f55 with SMTP id o8-20020a056a20728800b0013579750f55mr8454349pzk.47.1695363866963;
        Thu, 21 Sep 2023 23:24:26 -0700 (PDT)
Received: from hcdev-d520mt2.. (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id m11-20020a17090ade0b00b00274de7c8aacsm4157417pjv.45.2023.09.21.23.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 23:24:26 -0700 (PDT)
From: Marvin Lin <milkfafa@gmail.com>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	andrzej.p@collabora.com
Cc: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	kwliu@nuvoton.com,
	kflin@nuvoton.com,
	Marvin Lin <milkfafa@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v16 3/7] dt-bindings: soc: nuvoton: Add NPCM GFXI
Date: Fri, 22 Sep 2023 14:24:01 +0800
Message-Id: <20230922062405.2571850-4-milkfafa@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230922062405.2571850-1-milkfafa@gmail.com>
References: <20230922062405.2571850-1-milkfafa@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add dt-bindings document for Graphics Core Information (GFXI) node. It
is used by NPCM video driver to retrieve Graphics core information.

Signed-off-by: Marvin Lin <milkfafa@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/nuvoton/nuvoton,gfxi.yaml    | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/nuvoton/nuvoton,gfxi.yaml

diff --git a/Documentation/devicetree/bindings/soc/nuvoton/nuvoton,gfxi.yaml b/Documentation/devicetree/bindings/soc/nuvoton/nuvoton,gfxi.yaml
new file mode 100644
index 000000000000..0222a43977ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/nuvoton/nuvoton,gfxi.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/nuvoton/nuvoton,gfxi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Graphics Core Information block in Nuvoton SoCs
+
+maintainers:
+  - Joseph Liu <kwliu@nuvoton.com>
+  - Marvin Lin <kflin@nuvoton.com>
+
+description:
+  The Graphics Core Information (GFXI) are a block of registers in Nuvoton SoCs
+  that analyzes Graphics core behavior and provides information in registers.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - nuvoton,npcm750-gfxi
+          - nuvoton,npcm845-gfxi
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    gfxi: gfxi@e000 {
+      compatible = "nuvoton,npcm750-gfxi", "syscon";
+      reg = <0xe000 0x100>;
+    };
-- 
2.34.1


