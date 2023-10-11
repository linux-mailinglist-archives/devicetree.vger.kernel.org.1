Return-Path: <devicetree+bounces-7848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9446A7C5BB1
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:49:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E63A282500
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A511D53C;
	Wed, 11 Oct 2023 18:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yn74MsWD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B285320B07
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:49:21 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31C43DA
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:49:20 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32caaa1c493so121375f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697050158; x=1697654958; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpmvATsaTcMJ19Dm+6zr7DE57EEBi8DlV0ssb1TyaVI=;
        b=Yn74MsWDY5XPIxWpuOLDgKRYUkcnYiGitzvhwywR8QfkbRU+zF9WMjJ+p0CQJUeyB/
         tFfICExNk8DX8LyNbb/+N2H34iAdT5OVnOY0VAfDb3PA8wuKdiIdK0fOc0OJcAqMrKgU
         v/vgiVcIQIwDUttWJUAJv9Nwv6U64Psiz+UZoE92e+iN5YN0ZM00RKi2fpsgkxF87aq5
         xkeVL/34rdo5dku0Loz8CZ6TQamfipbQ4ybSp04t54f22SPyybr+IyQQefpJIVqeEqS3
         VifF0KGZt63ANUdyt6ih/qBeedZtqWKd92M98Qq468ZWbePKJ4aSBDO9ZW7KLL/pnB8G
         NSQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697050158; x=1697654958;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpmvATsaTcMJ19Dm+6zr7DE57EEBi8DlV0ssb1TyaVI=;
        b=msbdUlQ96szYfxr2O5bX13Q+1i/HXWp7feL+jU42RRL4e2HPWoI2FiGNG6hmG/EAFe
         eoCxJCn7Crre3rUUA0a1Bo0jtmUf0Qn2cD9ueXcLrM9JJwzW6M2b319GeKNPm/rmxqnn
         rMNt2QJEAajldYe8xS7CJ2PvULoiUXjUR1WTWlsMw9glJ57Hz9srUKymv1ck9agBLRoX
         1wSSN+GXRjYkkm4wGKK4HucZS75faV5kynib5hXVkHBLE9bYSTgK2VtCd656M7f6/Bro
         3ycbnF7edwKrM0q6KtwSJD1lTSxhzBjWh2NmiJK/5mJNGPJ1UzkAhNy1ofD+OnJ5hEYt
         uvwA==
X-Gm-Message-State: AOJu0Yy4o5c4jWrlhFYvtRnc9EZLS/Kfyu0y+AHKRhLaZoetiIHAPUs1
	EeU4DB6eTyN8eOBIXs18gUhFEA==
X-Google-Smtp-Source: AGHT+IHAy75oAsFakfAP4prwtA4lP8VergujqRJdjvDK4geKc35P1aWpL2Iak1gQMuJSm2FE2tk89Q==
X-Received: by 2002:a5d:568e:0:b0:319:867e:97d7 with SMTP id f14-20020a5d568e000000b00319867e97d7mr19718489wrv.52.1697050158598;
        Wed, 11 Oct 2023 11:49:18 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id v6-20020adff686000000b0031980294e9fsm16003875wrp.116.2023.10.11.11.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 11:49:18 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	gregkh@linuxfoundation.org,
	cw00.choi@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 05/20] dt-bindings: arm: google: Add bindings for Google ARM platforms
Date: Wed, 11 Oct 2023 19:48:08 +0100
Message-ID: <20231011184823.443959-6-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
In-Reply-To: <20231011184823.443959-1-peter.griffin@linaro.org>
References: <20231011184823.443959-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This introduces bindings and dt-schema for the Google tensor SoCs.
Currently just gs101 and pixel 6 are supported.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/google.yaml       | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/google.yaml

diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Documentation/devicetree/bindings/arm/google.yaml
new file mode 100644
index 000000000000..167945e4d5ee
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/google.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/google.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor platforms
+
+maintainers:
+  - Peter Griffin <peter.griffin@linaro.org>
+
+description: |
+  ARM platforms using SoCs designed by Google branded "Tensor" used in Pixel
+  devices.
+
+  Currently upstream this is devices using "gs101" SoC which is found in Pixel
+  6, Pixel 6 Pro and Pixel 6a.
+
+  Google have a few different names for the SoC.
+  - Marketing name ("Tensor")
+  - Codename ("Whitechapel")
+  - SoC ID ("gs101")
+  - Die ID ("S5P9845");
+
+  Likewise there are a couple of names for the actual device
+  - Marketing name ("Pixel 6")
+  - Codename ("Oriole")
+
+  Devicetrees should use the lowercased SoC ID and lowercased board codename.
+  e.g. gs101 and gs101-oriole
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+
+      - description: Google Pixel 6 / Oriole
+        items:
+          - enum:
+              - google,gs101-oriole
+          - const: google,gs101
+
+additionalProperties: true
+
+...
-- 
2.42.0.655.g421f12c284-goog


