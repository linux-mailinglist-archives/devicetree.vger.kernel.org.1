Return-Path: <devicetree+bounces-23963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAFE80D12D
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA44E1F2157B
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 16:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5ACB4CB3A;
	Mon, 11 Dec 2023 16:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WHb0hpw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15754CF
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 08:24:16 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3332ad5b3e3so4296883f8f.2
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 08:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702311854; x=1702916654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fQbVEHbE7Jm2oAMcwnEr5YFQ0oFjpYUgR/bdrHjiA1o=;
        b=WHb0hpw1nNUOmaf39yRBqEIKpJWe7kfEJddg/DM+iqopCESpa/elUABaqCv3z7F3aE
         Iop7pTsp/tQkt/Vuf/q8n0hopu6xycO3KMU5oCd79f1QbAcLHyqISY1xsMA/cJTTDEDd
         KXIObBfV8TcxwnSaqYGQF9yEts0pvTIuKdUOCAB9Qy9belDr68RG3xUZdMhrD2AOChbK
         Q+e2SuF6oVU10YTP9ydFLPTGlM0HIwX9SmRLSkL19P9ldaHQeoDLidrzjJexRkfLoFFd
         0WcGmsPTIk4pcX4+IP1Ubc491/KFkusEFy8ZPUmsmMVldHgW9JkOxJyACxkcU/GaW+wr
         6pZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702311854; x=1702916654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fQbVEHbE7Jm2oAMcwnEr5YFQ0oFjpYUgR/bdrHjiA1o=;
        b=bZUEtQo5uZZ6vy4DUltkTpQ5qTDXN7Mh1tdCbvp9P2khGkOSQ8uFLfFtiA4nLyuOKr
         +fNTRd22aeADWcYMbXcMk5mzK5vhLlSQifjYWU3kybxghtiheq28gSGc2JpegRmnJRt0
         +FVPVhdX5JMsy1VIylWR99x5HuniKJLBtOMawTly+fzSCT/KGeDbBnmvdVC1Vkzz3HZd
         FLgUIIXxrCBo0w3F21WJnQjLAhqDVJ/25Df7YrSpP5fAb033CvHkDns2qTgRraZ4oBSa
         Lrvu/dx/rU6xDFFbmB6y3/e7uRjhhxLd8eRW1tbi14lKaZnMYg06rSRUkgu8HSWkRxvy
         czSg==
X-Gm-Message-State: AOJu0YyB5qXXxJPCWgFiRdx5FrS9EiqY+KTJmq+2PlnvcNCBXV6+3f+t
	svOj0BDoPEJfMD+TXXfJp6D2hA==
X-Google-Smtp-Source: AGHT+IGcgfVO1mWG8FPfxS5T/G3kVUnE1ysOiGMiALy4Xb1EWs7pENiryRYBzPBsHZ45g2JRf+dM+w==
X-Received: by 2002:a5d:6e0c:0:b0:32f:88e8:b8d1 with SMTP id h12-20020a5d6e0c000000b0032f88e8b8d1mr2446026wrz.13.1702311854581;
        Mon, 11 Dec 2023 08:24:14 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-28-58.as13285.net. [92.29.28.58])
        by smtp.gmail.com with ESMTPSA id o4-20020a5d58c4000000b0033333bee379sm8923103wrf.107.2023.12.11.08.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 08:24:13 -0800 (PST)
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
Subject: [PATCH v7 01/16] dt-bindings: watchdog: Document Google gs101 watchdog bindings
Date: Mon, 11 Dec 2023 16:23:16 +0000
Message-ID: <20231211162331.435900-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231211162331.435900-1-peter.griffin@linaro.org>
References: <20231211162331.435900-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the "google,gs101-wdt" compatible to the dt-schema documentation.

gs101 SoC has two CPU clusters and each cluster has its own dedicated
watchdog timer (similar to exynos850 and exynosautov9 SoCs).

These WDT instances are controlled using different bits in PMU
registers.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../devicetree/bindings/watchdog/samsung-wdt.yaml         | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
index ea2d206b05ab..77a5ddd0426e 100644
--- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - google,gs101-wdt                      # for Google gs101
           - samsung,s3c2410-wdt                   # for S3C2410
           - samsung,s3c6410-wdt                   # for S3C6410, S5PV210 and Exynos4
           - samsung,exynos5250-wdt                # for Exynos5250
@@ -47,13 +48,14 @@ properties:
   samsung,cluster-index:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
-      Index of CPU cluster on which watchdog is running (in case of Exynos850)
+      Index of CPU cluster on which watchdog is running (in case of Exynos850
+      or Google gs101).
 
   samsung,syscon-phandle:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
       Phandle to the PMU system controller node (in case of Exynos5250,
-      Exynos5420, Exynos7 and Exynos850).
+      Exynos5420, Exynos7, Exynos850 and gs101).
 
 required:
   - compatible
@@ -69,6 +71,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - google,gs101-wdt
               - samsung,exynos5250-wdt
               - samsung,exynos5420-wdt
               - samsung,exynos7-wdt
@@ -82,6 +85,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - google,gs101-wdt
               - samsung,exynos850-wdt
               - samsung,exynosautov9-wdt
     then:
-- 
2.43.0.472.g3155946c3a-goog


