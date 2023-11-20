Return-Path: <devicetree+bounces-17288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D716F7F1ED3
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:21:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43D64B20CE1
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5988F374EE;
	Mon, 20 Nov 2023 21:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OvM3uzsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E24D11A
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:17 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4083f613272so23316075e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700515276; x=1701120076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oK3+J+uq1zdoJ4AWa77B+gNqjCRYeG1aCZZpF63aTJ0=;
        b=OvM3uzsk0Fy7QzOWF3X7F2CCQADhUQWKlU5551umnL541EWd1DpENmcWTWjpQEhrMo
         q4oM5UKNfCBbR4XfRAFdvB58QrWcRBgVMm5T0AxvaIutUASMGqtKbE8rOcEWsd0i7Aou
         pPoeoZ4fMfrspHE1AZzOg8GYEGSR216L4JF6rMNKyhi3a1hONV672fEngvQz6IMqk/N1
         ufrUX/GG0o/T17lwB4OXnz0fAZj7hzQ5fbmMvIKTxdQYpMvoz+8bdfk7xQ4xfTjkd/4/
         DzBU73nchL3BURGuX3DpOKUOQ+72ernVA54rdEO5uHNr8DG3ApBeQUWPEERoe5FB4x3+
         mN4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700515276; x=1701120076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oK3+J+uq1zdoJ4AWa77B+gNqjCRYeG1aCZZpF63aTJ0=;
        b=RgZK2ijx3I7t852FXshaNyRmXvGcmWRwFztTjPQ6OuKnnNVmMW7lCG2OFanoMKiKC2
         vtNiLPB+7CdNm4317oJTfVhfnXCpWFTuf+JQK8NenEZIGwQpmZWYrr7zcz+yjlSUBBu8
         tLWwi0WCxL9A1Uf6nG+PuJB25n4GhQaNScU0/nYJjHRG5/j7oJelaZfPuR3KUqcgtECX
         8+qei1hPdJEeRFZyMmoOSp60y1OOZDZNqav0WWvbzWdA2xjZPMa9YJ3OZ57vJkvz7Tpg
         sCcSbVvm85ZihJZhJXxG8LIQ5QPLRsijL9wJuxUYSYA7qHYciL20cpxHVFYNubGikGib
         W3YA==
X-Gm-Message-State: AOJu0Yxc5Dnr2PkZFr+3fcOGTDYIJsZ4Xcm8wFjQv4ANSukSv3WhGLu4
	ZTq+hCYizIAJNswexebvIaHAjw==
X-Google-Smtp-Source: AGHT+IHRXdtnlZRBClLJAt3XTWnDX/mD73i3sd95M4tx/4bmM+eSRXliXrhZDPcmIFMdPyRbkhup5A==
X-Received: by 2002:a05:600c:4f84:b0:404:4b6f:d705 with SMTP id n4-20020a05600c4f8400b004044b6fd705mr7792272wmq.17.1700515276465;
        Mon, 20 Nov 2023 13:21:16 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-24-243.as13285.net. [92.29.24.243])
        by smtp.gmail.com with ESMTPSA id je14-20020a05600c1f8e00b0040596352951sm19518451wmb.5.2023.11.20.13.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 13:21:15 -0800 (PST)
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
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com
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
Subject: [PATCH v4 07/19] dt-bindings: pinctrl: samsung: add gs101-wakeup-eint compatible
Date: Mon, 20 Nov 2023 21:20:25 +0000
Message-ID: <20231120212037.911774-8-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.rc1.413.gea7ed67945-goog
In-Reply-To: <20231120212037.911774-1-peter.griffin@linaro.org>
References: <20231120212037.911774-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

gs101 is similar to newer Exynos SoCs like Exynos850 and ExynosAutov9
where more than one pin controller can do external wake-up interrupt.
So add a dedicated compatible for it.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
index 1b75abebb953..41f3a2f2992e 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
@@ -30,6 +30,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - google,gs101-wakeup-eint
           - samsung,s3c2410-wakeup-eint
           - samsung,s3c2412-wakeup-eint
           - samsung,s3c64xx-wakeup-eint
@@ -104,6 +105,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - google,gs101-wakeup-eint
               - samsung,exynos850-wakeup-eint
               - samsung,exynosautov9-wakeup-eint
               - samsung,exynosautov920-wakeup-eint
-- 
2.43.0.rc1.413.gea7ed67945-goog


