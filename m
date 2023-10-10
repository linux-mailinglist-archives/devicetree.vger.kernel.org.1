Return-Path: <devicetree+bounces-7421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B76C7C449A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9BE3282110
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 112DE3159E;
	Tue, 10 Oct 2023 22:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yBdR59ce"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C3C31594
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:49:58 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79C3DD7
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:49:55 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4056ce55e7eso58564335e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696978193; x=1697582993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XJ74cedc8GAeBZmTMzF3JIrX0TJ1DJCXAuIkw6TmlM0=;
        b=yBdR59ceuFX+07FjC7A+0Akkg75cSdzxwTfAk6suBwRvZkc9jfKLXzO6lM/6RvJULI
         d0oLxTYKYq/Yva7k1Yf65kox5ByBjEjTWP5YwKaSnCGkUHZVG8RTq71YqFDBiccuw6+9
         oFTlpAjEwzkPX8Lqqls+WRQoC8fFXo/ODfH7ahoYCi+NIFREoLifyGQSwhJ70z0j1MEG
         gJdrDHctdUzmuTGaksrVCVXr0Wy2V+6LZoY4x1CuphdFojaLQk4aijp9Ee7bPVmW501R
         FRElxjnpZG+vmm3OjA2nCxaDDGl+jkeJSbcTrYBPUeSK9duEkYttsM84DKt8ORz9LRY2
         ERUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696978193; x=1697582993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XJ74cedc8GAeBZmTMzF3JIrX0TJ1DJCXAuIkw6TmlM0=;
        b=NVbX9cplNmxsiB1yTDEAk/9romN7UuJ9qZM0H0EQvJezJqNKY3zqoNdeKyLcWF6+7k
         FxU4/MPVXb9USQ+r8OoS5yydEwI9eV3kHOiE/IrJvGGaJBNaWs+yLBnos9xqkhxJPLps
         F12JRee2951Joy3k+SrszAFnfpqo1YLWhhXG8oZb6ZvRUTFYcrdZmmFRL/i1BBq/eV0k
         OFdDraHBZoPwRSLz9QGSQYggnvp8RIcv4TLsWE0vCzQV8tTC+8yzJYvwq6DoUkZgfq/H
         AI2d7LEOSuZq9WkGHaK66rxkIRrDbZa6ByjIof4ZanuiEnzZkTtJhdN6HRK9bEuOEObb
         5xEA==
X-Gm-Message-State: AOJu0Ywp3WXGE9Z8dFLXvP1211CgUOZ+Hmzvj4xL2GEbKkC+K8DjieES
	cdIdMv4RYpUeJT2xFo/4vFPpdA==
X-Google-Smtp-Source: AGHT+IHFt44IvIgGbFix0PK/p+OZEdJuoaRo0Ks4rXQWEu9pD0qfPoVh/wjSuvtPwm9PDp+J2Wwexw==
X-Received: by 2002:a5d:4cc1:0:b0:324:885f:f7fd with SMTP id c1-20020a5d4cc1000000b00324885ff7fdmr17262662wrt.15.1696978193218;
        Tue, 10 Oct 2023 15:49:53 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm13689547wrm.64.2023.10.10.15.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 15:49:52 -0700 (PDT)
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
Subject: [PATCH v2 05/20] dt-bindings: arm: google: Add bindings for Google ARM platforms
Date: Tue, 10 Oct 2023 23:49:13 +0100
Message-ID: <20231010224928.2296997-6-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
In-Reply-To: <20231010224928.2296997-1-peter.griffin@linaro.org>
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
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
2.42.0.609.gbb76f46606-goog


