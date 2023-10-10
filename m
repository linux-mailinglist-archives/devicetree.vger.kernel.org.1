Return-Path: <devicetree+bounces-7423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3037C449E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:50:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22020282172
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B341E31598;
	Tue, 10 Oct 2023 22:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vN7waHZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B565D31594
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:50:00 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44625E3
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:49:56 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4054f790190so61160075e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696978194; x=1697582994; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zurLR0/e73s9qaXsNiBj25J3OO2Gwg9apCX41yzLfwU=;
        b=vN7waHZJ1fE/CcYNyfTXYtR8ERDdtYJIeDhLqJw291GcLJFX0KecEkzom/XHOdNdti
         lh27WpfR7TENnqJEARGDk6cc0Ul8d/VcwkIzlUDWFFKtC7ic84bbBag59onJclssMUCz
         f6UE6uptuHo7a2+XNvfxbfoLP3PHIH84ejURu0oc/+SHj9edGpmQ0hw75WvkEGN7hEUK
         ACuu3C+KI5TlSKlEqg2veCSGNnOMrd/HX4/BzNfTIvOirMFxe3fUHxhGXjt8/5SNp3Yz
         t3KyHDwttKWjdISUekGBnBPlnyFECEZhwLxLmaV5rTfhNCijzR6npZY/whodkuHqkjLy
         r8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696978194; x=1697582994;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zurLR0/e73s9qaXsNiBj25J3OO2Gwg9apCX41yzLfwU=;
        b=sozwg/Sl2pcjqX/ak0idygdHQUjS9mgybY/iXf6uF1Jvm6i5Q5AReERWLpGFVD8YZz
         +Yj0JhCtbFO21wwLWX+GRcIwOVCb9BBieniQX/TtOqfSSGf2LnlAkDQOpY7Gd9y0WrGp
         lBJarrW1k6Xoc7VGtYbiNxmTle9qa1GLInDusJ55llyuFNQqldDaFQbqKtCcxkYFfBob
         aFHcIJGVBbDY6leLINg31Fwp+8+YbFCfQ8SIJyzBVS6cXwuxkSYhS1TWv+yTlc7JHYtc
         uk+44Vs8CJ6or2I7AkxP6o7xCI0KBjCxvG+tIRQ6PacE/79xqLC274fkDshZwd8sEDYM
         k2FA==
X-Gm-Message-State: AOJu0YxyqIYVoXxPl63XB3OHROqCCPSbaSMRyUw6o1oSXfTSSQYKglLY
	jIX0zaAj5yH9Mfas9niTHFadTQ==
X-Google-Smtp-Source: AGHT+IEjsAdZZ2TrgAKTWEGnW3p1wMPoziKHfwDUL1AzluyyUU59YKFDtce6RDEjYzrGHYVBL9ceag==
X-Received: by 2002:adf:f40c:0:b0:324:8700:2fec with SMTP id g12-20020adff40c000000b0032487002fecmr15763212wro.64.1696978194557;
        Tue, 10 Oct 2023 15:49:54 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm13689547wrm.64.2023.10.10.15.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 15:49:54 -0700 (PDT)
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
	linux-serial@vger.kernel.org
Subject: [PATCH v2 06/20] dt-bindings: pinctrl: samsung: add google,gs101-pinctrl compatible
Date: Tue, 10 Oct 2023 23:49:14 +0100
Message-ID: <20231010224928.2296997-7-peter.griffin@linaro.org>
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

Add the "google,gs101-pinctrl" compatible to the dt-schema bindings
documentation.

Add maxItems of 50 for the interrupts property as gs101 can have
multiple irqs.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/pinctrl/samsung,pinctrl.yaml     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index 26614621774a..2464bc43aacb 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -35,6 +35,7 @@ properties:
 
   compatible:
     enum:
+      - google,gs101-pinctrl
       - samsung,s3c2412-pinctrl
       - samsung,s3c2416-pinctrl
       - samsung,s3c2440-pinctrl
@@ -134,6 +135,24 @@ allOf:
           minItems: 1
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-pinctrl
+    then:
+      properties:
+        interrupts:
+          description:
+            Required for external wakeup interrupts. List all external
+            wakeup interrupts supported by this bank.
+          minItems: 1
+          maxItems: 50
+    else:
+      properties:
+        interrupts:
+          maxItems: 1
+
 additionalProperties: false
 
 examples:
-- 
2.42.0.609.gbb76f46606-goog


