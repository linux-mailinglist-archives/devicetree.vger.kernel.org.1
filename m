Return-Path: <devicetree+bounces-35078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EEA83C436
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAB431F23E09
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42055605A0;
	Thu, 25 Jan 2024 14:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AdOI+uXN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F85604CD
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706191306; cv=none; b=BOW9Ms4TeI/CcFQ8XIUw222HxZz+3FGZbo68BZRZn4xFudP4eFTkruMDoL/mTMXoBg6bSt/cZkwZL9wPxLL3SLdOilr4xkyRWHXNGvuDtMgLMf57F7rwSneLEg9IK9IHKG903l9nurIk3mJOuefWamsz8U48HJlqiCJxayk7LdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706191306; c=relaxed/simple;
	bh=lfXymCih8K4E3VCnUTnLCvDgmUDS6aPwTshK7FgaqVY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jt/bREmN7sWPGoJ45UtIxtWV34L6azdtXOZBYJdnoNuaB5eRzNkjtJti0PO1KueUVxhacRA/6BGGTlUOEEWYslp5RMpT1iZ3RvVCarvaHnXlcEjFVuTpwRQH92BFE8DtEsgsX/RNOynDIXW6iyZF05rkKD0rJPPSZ5Usta2gXpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AdOI+uXN; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5100893015fso3750584e87.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706191302; x=1706796102; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1KvKCRCBN449rio/DKI464Fncv3o1DnaiUByEc969UA=;
        b=AdOI+uXNDQzJmfGTNRyUm1GtkUx/EyKhwcoQI1G1bOA8mNRIT98F/1IdAmE462hrBk
         0KwTAez614+dlJaAwNrimmsnQLYIkzyWQBTGO652Ayhd1Ca3B2ykxw8Qy7pUjsxfCe/m
         Guq7rdlEEap5Q9DXiHiuh/xmWdVXJPibikkJjNDSDbb30HU9rT0+SMmE5bL6yWuoK9Fi
         uH9KTRAsqFOzl5/7i4Sg+aTkWDC7WnrTeV/PHqXapNERjlmCKaQY0ZfD+cXECSbGcEcP
         HUrQdfw/oYB5eekHkw3jYShtzrtIv6+iL9KwShIfvsC6R2fZc9bc+Djz0bkWREPE7TyC
         Djgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706191302; x=1706796102;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1KvKCRCBN449rio/DKI464Fncv3o1DnaiUByEc969UA=;
        b=WcOqn8wtIu7WK7txcPE3xCDjnApANSJxpVLp0FgYrOMAZpTWqZtQX7+ATeagBS9Utj
         CJf2jvwl08WvlhOIextBcRcDEI1f51Ck/Fc+7taDB+uAYv5K0fId7wRqqMSi0Dba9r2I
         s4Yp0jvat1cROb+6m1rLRAkpSQm4wsvBgdVTVZsujWePc2tEY53sn4iWTkVaVdrl/a60
         isAMfJiLbe19rS3g0VGZh1hTNMZkQA63f1lk6l7PSG4TOzr9ut8xlxNyUcB594inbHWw
         gh+M3UPvb3Z5SNA2opNJprnYFijZNNQ0HyfpZHqhWfeAq5PRd531qvVtxL/eTquSdviq
         OPIQ==
X-Gm-Message-State: AOJu0Yxr5u/k/CrJ6+yBj9a4ix8HUC8nWi+YyYsD0iOFy3AH2FiyPi7l
	6m+Xg4wMmEjkG7djdeulwKh40yzwTx+HOaG3kaR/88LHpEhebVdgzGv9RqEoRNo=
X-Google-Smtp-Source: AGHT+IEUSuckZSbp7+7LJ/KMKFB8cmOCZlQnHH9oeU4dOPU6vGxMnuPXXl5wbqmBe4kz+uw5KVF/4g==
X-Received: by 2002:ac2:5e66:0:b0:510:bbd:6de1 with SMTP id a6-20020ac25e66000000b005100bbd6de1mr329846lfr.204.1706191302478;
        Thu, 25 Jan 2024 06:01:42 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id r17-20020a1709067fd100b00a2c7d34157asm1048170ejs.180.2024.01.25.06.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:01:41 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	peter.griffin@linaro.org
Cc: kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: samsung: exynos-sysreg: gs101-peric0 requires a clock
Date: Thu, 25 Jan 2024 14:01:38 +0000
Message-ID: <20240125140139.3616119-1-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

... otherwise it won't be accessible.

Update the schema to make this obvious.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index 1794e3799f21..33d837ae4f45 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -72,6 +72,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - google,gs101-peric0-sysreg
               - samsung,exynos850-cmgp-sysreg
               - samsung,exynos850-peri-sysreg
               - samsung,exynos850-sysreg
-- 
2.43.0.429.g432eaa2c6b-goog


