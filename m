Return-Path: <devicetree+bounces-7422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ED97C449C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A68F42820FD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA6131593;
	Tue, 10 Oct 2023 22:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vEg2JvS2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66031315A0
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:50:00 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA891F1
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:49:57 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40572aeb6d0so58764325e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696978196; x=1697582996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y4qKMp7WKTgYWQn4jdaHUw1RN+hYCPkZJUgFKC+LCBg=;
        b=vEg2JvS2P4cPdjf97YddAJjciyShFEruYZVqqx6QI+cM/9KqgXPUK/JX7Fsg27mijC
         +xikWtTXE/BTYifhtxw0Nraj+vpNdllf2dbFOsoXD4SG2nyMISUXry9uBV+UAgdpsd24
         1DZmSKv+d23bmNXwK8W5Bfs7AoWeGJkgrTfeGK/PmCQZeelJNCqj9LWedwPJqQnzXmXp
         rjaWm9Gy9pI4Mlc/3gHs17CT2nx8ZKmM62gS6qYHwkX23Kg3AURhDUOwXZJuDhqlTGNa
         n5GoNFEe1+SNpGCdFdfdVuS8gJmJ/NWyy5Rh5xpFeCVS9PFWnTu6B3MvWJ+oxS0Ml++k
         lnBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696978196; x=1697582996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y4qKMp7WKTgYWQn4jdaHUw1RN+hYCPkZJUgFKC+LCBg=;
        b=dyE2X2IupWvHIY4IFgL/QtmFv6tTn/eCMuS7t2ZIPaaBxsbcXOAwC18HWS76q24a+E
         ZmqFhtaFmQ3VhM3T42hOwwDofHcWjlrjTbwVLWnv0u1rXDVjKmO10Z2r5KmUpVClQkrB
         5ctOmmzvDgqhX7rkrO1s0ZlrQSGHNXYOslSL7IOR7DNmVfGRPNjuI96wYv6ShECFYnUA
         MugwVCtKwx19pSffNv7OcpTwYWRfGmbi18UV54t6HnkPlLvGJxcVrly+XF7PMDTDVu76
         77x3Wo3YlLnsI/Zlf1hjBIi0IxxCWx8TPQnK4fxCo7434Bqa6o/9PcCjrDNU81Rrx63W
         i+gA==
X-Gm-Message-State: AOJu0YyOKCADPrJvZ96eqpmIBKFCsxG4GU30XZNJn3RNnUZDfxYDXiM/
	KGMUyYoQyKq63GMZ94HHuaHlYg==
X-Google-Smtp-Source: AGHT+IEloZuZCLDePUs0QPFYOcybxWTkJkyfed9V3vJNhMuLIOUj4aXik2RMdRgdMNiAXc/amo3vnw==
X-Received: by 2002:a1c:7212:0:b0:401:bdd7:499d with SMTP id n18-20020a1c7212000000b00401bdd7499dmr17694790wmc.25.1696978195874;
        Tue, 10 Oct 2023 15:49:55 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm13689547wrm.64.2023.10.10.15.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 15:49:55 -0700 (PDT)
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
Subject: [PATCH v2 07/20] dt-bindings: pinctrl: samsung: add gs101-wakeup-eint compatible
Date: Tue, 10 Oct 2023 23:49:15 +0100
Message-ID: <20231010224928.2296997-8-peter.griffin@linaro.org>
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

gs101 is similar to newer Exynos SoCs like Exynos850 and ExynosAutov9
where more than one pin controller can do external wake-up interrupt.
So add a dedicated compatible for it.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
index 1de91a51234d..7cddce761c46 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
@@ -29,6 +29,7 @@ description: |
 properties:
   compatible:
     enum:
+      - google,gs101-wakeup-eint
       - samsung,s3c2410-wakeup-eint
       - samsung,s3c2412-wakeup-eint
       - samsung,s3c64xx-wakeup-eint
@@ -99,6 +100,7 @@ allOf:
             enum:
               - samsung,exynos850-wakeup-eint
               - samsung,exynosautov9-wakeup-eint
+              - google,gs101-wakeup-eint
     then:
       properties:
         interrupts: false
-- 
2.42.0.609.gbb76f46606-goog


