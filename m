Return-Path: <devicetree+bounces-2216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C48597A9FC7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 22:28:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 972BC1C20B5D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8683818C09;
	Thu, 21 Sep 2023 20:28:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD3F182D1
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 20:28:09 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CB05AE242
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 13:27:46 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c12fc235fbso12964441fa.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 13:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695328064; x=1695932864; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oh0qplQ0p9i95P1ir3iSQAnwwlzcuHNAmino55C0bPI=;
        b=jvRbaqPd0+/IBsVSoRU8yyIWK8a/X9glu9Yn8Zd9gp+pqhZKURB129IU8M2KhepC8Z
         h3Jh02SoHnNjk4LWUbr3vQXxHAev8viH40oVNRU0uSjMq6vIMA94cZcOyTLOSyoQeuJo
         Wnb7AU6vr/psXojfghXy+3Kuq5iC6CG5CG01Li3eRIwbLMAo7OcZsGsZ20TWLf0L2EfX
         Bc2DGHyj4I1zEABG6vReDfUSFvjwNR5XDv5jJAxUQmikhvXvDw0mnmQXTShomVpo26t6
         1Zkcw7D2PSt9gUvy/uTADC+O+XVPNdEzJdSuN6YFCvGEG5qkgAGdT2dgUZbrfqbbNaxb
         H+PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695328064; x=1695932864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oh0qplQ0p9i95P1ir3iSQAnwwlzcuHNAmino55C0bPI=;
        b=PjE6ZsIBuPQKzA4bFQUJxQABNjlxGuDBCOqQASzGBUs1UshhjNo/9emwehszDK+Mo0
         z5hXQgeodUF50VFvQ3DIx3OenclJTAL4eafxT/zHgUWj2G9F1QNh5TPUxnswQH6oYm85
         +096B145UYu9osH3pksOmEQyAJ5LbZ4Br92MrJv5OqOLkG7T+3TvX66EfSKUSnXm+mZo
         xrOa09cXubZgM/JXI4MSVlvLg2plr9p312nAQyuAN2PDSHdErEs6JK0awJIeH0IQOsSK
         r8T5k0TXII2HfJ8RS2bRdWDS3txfQkaYW/NdRRs2rHzWCqcud1SexoBP6jkmuoqooe1/
         fP/A==
X-Gm-Message-State: AOJu0YwiHWzfCPa1aSpHPJ9Qh0tX4fNGuBlPf6x0yCrX2vdF1PxI1Llv
	mv/p3f1Lakt5koVYEy+1KwnC7w==
X-Google-Smtp-Source: AGHT+IEk2+aZgalP67uJqCvXlT7y6GYKYSs0wId3nT6wwCH4V4RaabUx9WKGzIT5tCeEHENUMxCQtw==
X-Received: by 2002:a2e:a48a:0:b0:2c0:1a80:d87 with SMTP id h10-20020a2ea48a000000b002c01a800d87mr230957lji.19.1695328064385;
        Thu, 21 Sep 2023 13:27:44 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id y2-20020a2eb002000000b002bcbc62dc22sm524892ljk.86.2023.09.21.13.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 13:27:44 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Sep 2023 22:27:42 +0200
Subject: [PATCH 1/2] rtc: rtc7301: Rewrite bindings in schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230921-rtc-7301-regwidth-v1-1-1900556181bf@linaro.org>
References: <20230921-rtc-7301-regwidth-v1-0-1900556181bf@linaro.org>
In-Reply-To: <20230921-rtc-7301-regwidth-v1-0-1900556181bf@linaro.org>
To: Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akinobu Mita <akinobu.mita@gmail.com>
Cc: Jose Vasconcellos <jvasco@verizon.net>, linux-rtc@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This rewrites the Epson RTC7301 bindings to use YAML schema,
and adds a property for "reg-io-width" as used in several
other bindings to account for different register strides.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/rtc/epson,rtc7301.txt      | 16 -------
 .../devicetree/bindings/rtc/epson,rtc7301.yaml     | 49 ++++++++++++++++++++++
 2 files changed, 49 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/rtc/epson,rtc7301.txt b/Documentation/devicetree/bindings/rtc/epson,rtc7301.txt
deleted file mode 100644
index 5f9df3f1467c..000000000000
--- a/Documentation/devicetree/bindings/rtc/epson,rtc7301.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-EPSON TOYOCOM RTC-7301SF/DG
-
-Required properties:
-
-- compatible: Should be "epson,rtc7301sf" or "epson,rtc7301dg"
-- reg: Specifies base physical address and size of the registers.
-- interrupts: A single interrupt specifier.
-
-Example:
-
-rtc: rtc@44a00000 {
-	compatible = "epson,rtc7301dg";
-	reg = <0x44a00000 0x10000>;
-	interrupt-parent = <&axi_intc_0>;
-	interrupts = <3 2>;
-};
diff --git a/Documentation/devicetree/bindings/rtc/epson,rtc7301.yaml b/Documentation/devicetree/bindings/rtc/epson,rtc7301.yaml
new file mode 100644
index 000000000000..4bcf1716cab6
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/epson,rtc7301.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/epson,rtc7301.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Epson Toyocom RTC-7301SF/DG
+
+description: The only difference between the two variants is the
+  packaging. The DG variant is a DIL package, and the SF variant
+  is a flat package.
+
+maintainers:
+  - Akinobu Mita <akinobu.mita@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - epson,rtc7301dg
+      - epson,rtc7301sf
+
+  reg:
+    maxItems: 1
+
+  reg-io-width:
+    description:
+      The size (in bytes) of the IO accesses that should be performed
+      on the device.
+    enum: [1, 4]
+
+  interrupts:
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
+    #include <dt-bindings/interrupt-controller/irq.h>
+    rtc: rtc@44a00000 {
+        compatible = "epson,rtc7301dg";
+        reg = <0x44a00000 0x10000>;
+        reg-io-width = <4>;
+        interrupt-parent = <&axi_intc_0>;
+        interrupts = <3 2>;
+    };

-- 
2.41.0


