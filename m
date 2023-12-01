Return-Path: <devicetree+bounces-20815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8BD800F35
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 17:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18EA21C209BD
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 16:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3A3F4C63B;
	Fri,  1 Dec 2023 16:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XUOMjZnl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7D2D172E
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 08:10:58 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3333131e08dso634185f8f.2
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 08:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701447057; x=1702051857; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6V1UUtwAmpCe4BOx2n9je9qb/QMltwNIij4rqLKsGDM=;
        b=XUOMjZnlJqJuQwDM9lnM3QFa6Uen2BdJHP2eUWh9BOkdPtpbuN+iDiTlxD4xykaJiW
         EoAJsx0BJd+KtE/5ko+ydEFaQBnduSW2dKQuOeYe3Dc2FXSsoSLkR3pX9k4XtE0uHHLI
         GXJFEjzot0ShhOdwAldmNv+PXAs831z1g7ZF+FqEr7ixrS/RIaOnk3PtWYfX+NOcmhdh
         3dyP76k7vYa9UnxSKKlbU6L0ZLNDhdtrk6w5MUz1/c9R2CEBNscRfxWa3McxUF7GxQhQ
         Z9Ejji9ta/IcBtsa+ynD47e0z7iH1mecqtJ7a8P9+9tOzxediCxu7A4Y3e0ZP9mROF2K
         7baQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701447057; x=1702051857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6V1UUtwAmpCe4BOx2n9je9qb/QMltwNIij4rqLKsGDM=;
        b=l7ACxGwa0MfR0f32DPJRGKrZz2Jze2beSjwPQbBu1FQCV6N0DnciGPcAI+UHZyTrxF
         0T6AWbVLIS1TTvPKl5rF6EkvqDIBs6mthcJEpuwWXsqf30QVRnrubPqMWhlDWXaBBDeH
         /HtCZRW1JxIRvLa2O3zOqoFt/Uy5Lb9kggeZabTtuF4WR2CRk+lg5nSgYKWte2VI29Mc
         5u2FdYF5u4EJhPx4U2ctrVODRTIm3lWYkpDli9vzLQd7Okh2RPdvYqszQrLJtoW2F8/o
         pQdanQM1YWi90B79AEQxngsywg8mySqopILda6b4rKyMqXlVCSFAphGHFm6pfkkH1EBF
         IurA==
X-Gm-Message-State: AOJu0Ywei2xq8f18JcUYxxYnBuWW/0VhymkwIsn+a3HKdq1vlZnJxiJ9
	UNn8lVijWSf/T+D4/dvkJGgP3Q==
X-Google-Smtp-Source: AGHT+IHcniH93ls2L4js8Defcoe1/o0gUisiuD4Xta5PPEUQLQ4rpfJ0BqVOXkpofKNdpYD9Sa4B/A==
X-Received: by 2002:a5d:4051:0:b0:333:eb7:cc15 with SMTP id w17-20020a5d4051000000b003330eb7cc15mr940801wrp.45.1701447057474;
        Fri, 01 Dec 2023 08:10:57 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-24-243.as13285.net. [92.29.24.243])
        by smtp.gmail.com with ESMTPSA id cg16-20020a5d5cd0000000b003332656cd73sm3907386wrb.105.2023.12.01.08.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 08:10:56 -0800 (PST)
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
Subject: [PATCH v5 06/20] dt-bindings: pinctrl: samsung: add google,gs101-pinctrl compatible
Date: Fri,  1 Dec 2023 16:09:11 +0000
Message-ID: <20231201160925.3136868-7-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231201160925.3136868-1-peter.griffin@linaro.org>
References: <20231201160925.3136868-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the "google,gs101-pinctrl" compatible to the dt-schema bindings
documentation.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index 9f04a0c76403..118549c25976 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -35,6 +35,7 @@ properties:
 
   compatible:
     enum:
+      - google,gs101-pinctrl
       - samsung,s3c2412-pinctrl
       - samsung,s3c2416-pinctrl
       - samsung,s3c2440-pinctrl
-- 
2.43.0.rc2.451.g8631bc7472-goog


