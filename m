Return-Path: <devicetree+bounces-6198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAC47BA373
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:57:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 69B85282B39
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3B8328B5;
	Thu,  5 Oct 2023 15:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fKN0FNxZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD7231A6A
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:57:33 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8592386832
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:57:31 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32157c8e4c7so1155115f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 08:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696521449; x=1697126249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+WotVRIx4IfQWLl7bsIqhgSrhHJCYtM2efkzCcXjlJ0=;
        b=fKN0FNxZQsnaKhU8KpZohEQIexiyaLjkt2O8JHVuY7/rXBtmgp3DFt7ZxA0wRpyq5b
         AuEruZGCxhuOFpECFlxMjvVYAxLQfeUWE/RB86KG13uiKAQYpWJ76kTIVA2MytD/TlnV
         1nRdb/Y9JepnHmfTfIxzx9TJlhQRXRoq11GNI1fK59ETXEI4RIzTHSG9PSH6GS5K+ekz
         u0YLO8grA92CM82ZjQ4HEfd0Hw0ArC28hrC9XdFCkqR2t3OQuMCJfyvFs9ZsQu3RH9n6
         U6LSF1g+6XbMis2C9W7lVPCGzxoOrTEsVEL0CX80rtx/5ctxE/LPwqra+9vOh9w7EDLA
         C1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696521449; x=1697126249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+WotVRIx4IfQWLl7bsIqhgSrhHJCYtM2efkzCcXjlJ0=;
        b=rCVQ8M0rBvbheVTTP+BYAhqfOrVSoWtXFMTmZiPcvS9O+U4ZR+WGIsFnuY24fhKNcl
         c1y1CzcekuFVOUY1LHreVlg6NuKW/nkemDz97nYhymq78UpvY4ue5dA4CUQATj9PYTIY
         omAJRgIwblaJhu1kL0CCpIzASUDF8sMJ/VI2TggIyQxOFK2rz8s0Ehi+Viv4n8E954FI
         T7G1ZhtZ8jITQMtMK/ic8FjxTZvmzOnSa0slxi6JpUGIqjEvTBcL1gR0/I4jJ8xdwOyQ
         zCIVaEDvmovcrI4v+QkenbOaxqQjPkXkxyJjsTONkybl3xFAG8iIXQ+AvPBgd/bXqBPN
         Hu2w==
X-Gm-Message-State: AOJu0YwtBJZwSKplJY//3OZo1fh9AAYmsMq5qA2xWF7hHQcR2kSq6ivA
	oD8ra/gGe/zSU/DDWUe0p6um+Q==
X-Google-Smtp-Source: AGHT+IHb0s500PrFGOrLeuuBwpGQ7OFg+clB+5dsL7CoXu4v4IuKDCuex94QNDTzGTMDp0JcDuLSUg==
X-Received: by 2002:adf:cc81:0:b0:321:5971:23a5 with SMTP id p1-20020adfcc81000000b00321597123a5mr5355332wrj.20.1696521449677;
        Thu, 05 Oct 2023 08:57:29 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id t9-20020a5d4609000000b0031f8a59dbeasm2084336wrq.62.2023.10.05.08.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 08:57:29 -0700 (PDT)
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
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: [PATCH 07/21] dt-bindings: pinctrl: samsung: add google,gs101-pinctrl compatible
Date: Thu,  5 Oct 2023 16:56:04 +0100
Message-ID: <20231005155618.700312-8-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
In-Reply-To: <20231005155618.700312-1-peter.griffin@linaro.org>
References: <20231005155618.700312-1-peter.griffin@linaro.org>
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
 .../devicetree/bindings/pinctrl/samsung,pinctrl.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index 26614621774a..e0f37f8ae8e7 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -54,11 +54,13 @@ properties:
       - samsung,exynos850-pinctrl
       - samsung,exynosautov9-pinctrl
       - tesla,fsd-pinctrl
+      - google,gs101-pinctrl
 
   interrupts:
     description:
       Required for GPIO banks supporting external GPIO interrupts.
-    maxItems: 1
+    minItems: 1
+    maxItems: 50
 
   power-domains:
     maxItems: 1
-- 
2.42.0.582.g8ccd20d70d-goog


