Return-Path: <devicetree+bounces-7436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 697747C44DA
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:50:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C0EA1C20BA4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 22:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E3632196;
	Tue, 10 Oct 2023 22:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YLflrFqB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F3E32C7B
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:50:28 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A36591A8
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:17 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3231df054c4so5644291f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696978215; x=1697583015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s37SUcPotioxZcjEHmhq7GzFTfw04ERbXr6RSb1B27c=;
        b=YLflrFqBNoeyMQu4V1GkkHdtxG9kaosjv+MB38MkhKDT1STbCHbvuO1/XAHB58CVHo
         yeHIWoHJdykr3+pxcRY0yaQ/h6a8jyDE4y0UD0vVrNVKjmurwkTe5tpgIf7VH5uNDw8j
         eu/vfjjG7fuCIZo/KFu14RZ0Y/lMSiKDd2U/TeA4SIn0lpfLPAA+HHGILEJdokfnEIxo
         +3s7s0dZAZg6Qpfo7Ne/wLrpwNaRzjTeFojWAZYNIkhlCmNN8+pacwCslnefZiw/7tay
         qsPZ/XlOM+MQz9Sueam/yYbA7zRPIbB0PNWHX0Eom5ugKIgUedc0qzFen/YouEOP/Cbn
         QdGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696978215; x=1697583015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s37SUcPotioxZcjEHmhq7GzFTfw04ERbXr6RSb1B27c=;
        b=W3Tm+pZXcoe4/mfKwVVu2WcJBSJ4LulPiBQ0DVpIqRW8vl7gg2JKM4nam0FnGRDL4b
         9ptj7B0Zp3TU/J7/bNtQUMeFJWfY5mE0zByKEE6yvYgvZVrIN85p2iwNwhU7ocCdnOyo
         jT55EINtK7dr7jsq0DL9ACiz5Chj2NWFHeOlU3Z+ZARe9lzNkz+VmPxZkldCKudqqK6+
         WvMQzdPZiyJ6DNC1pTUteiZGUBexS+AO8QNk47i6cDBdBsyiG3xeuB2b4Xk5N32EVO+5
         bQn1LcsCqV2z4QAgr/5bIHtygQvPm6ytRAOIuCAxjkjkA0tcA7tFldwjOTBWJrydnmUO
         FkLQ==
X-Gm-Message-State: AOJu0YyrjB5W9q1lU4SJP5gU6ZkbMEFgA468d4qrPXGNpOC/eqCoYyzU
	fpzJtWCfEO+KTYgwgaL45RnjIQ==
X-Google-Smtp-Source: AGHT+IHJw3S0mLbaumsobRC5IL/pZDMQtHIFgcBqimA/C5vlsITA5NsDBJI4cgvehYn3duSLLOm7Lg==
X-Received: by 2002:adf:f84e:0:b0:324:8353:6e51 with SMTP id d14-20020adff84e000000b0032483536e51mr18255367wrq.45.1696978215668;
        Tue, 10 Oct 2023 15:50:15 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm13689547wrm.64.2023.10.10.15.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 15:50:15 -0700 (PDT)
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
Subject: [PATCH v2 20/20] MAINTAINERS: add entry for Google Tensor SoC
Date: Tue, 10 Oct 2023 23:49:28 +0100
Message-ID: <20231010224928.2296997-21-peter.griffin@linaro.org>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add maintainers entry for the Google tensor SoC based
platforms.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..149a0c364309 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8836,6 +8836,16 @@ S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/chrome-platform/linux.git
 F:	drivers/firmware/google/
 
+GOOGLE TENSOR SoC SUPPORT
+M:	Peter Griffin <peter.griffin@linaro.org>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-samsung-soc@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+F:	arch/arm64/boot/dts/google/
+F:	drivers/clk/samsung/clk-gs101.c
+F:	include/dt-bindings/clock/google,clk-gs101.h
+
 GPD POCKET FAN DRIVER
 M:	Hans de Goede <hdegoede@redhat.com>
 L:	platform-driver-x86@vger.kernel.org
-- 
2.42.0.609.gbb76f46606-goog


