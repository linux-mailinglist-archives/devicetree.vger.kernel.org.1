Return-Path: <devicetree+bounces-23972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D096680D170
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:25:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 34DACB21324
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 16:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1484E1C1;
	Mon, 11 Dec 2023 16:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oBZ+QKFn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4D59120
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 08:24:31 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40c4846847eso10281725e9.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 08:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702311870; x=1702916670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZDDirj6oE74DYjeFThqKliMdW5Crzi8BOjdGcSc3/xA=;
        b=oBZ+QKFnk4A7O/CkudKBC+gsdJhp5MJdc2GbBtqLk1E5ylbsCqp4M/UZzv1aBblJqx
         IMdcZsZLQNKVlrFvX37ETBOlW7kxLo/VqNVN+RpZt0OgZ7cS6/LhkjvRXmd/z9QOA6XX
         lSZKKkSChTeNT6yw82F/K8q5Of/IPsIE525C2J5APAfMPrijaAtyJhHLKbEyJX3S4z/9
         qSF+w2QmkxshCcvpiArIv7Ij0f0ACi2yAX63hKwnwAfMM8WZDKTrxuTSNlgDzMf75+VB
         8H0KWH7LHYqo/uhjC+QzpKhzpqKiMT8NPybbSSDif0lsvVzsCtkbFDLprPeA+l/wWf7l
         M5Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702311870; x=1702916670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZDDirj6oE74DYjeFThqKliMdW5Crzi8BOjdGcSc3/xA=;
        b=dYhyiRSQvqsg23+0QrYsMU4QmxV/BMFODAnBmmyituvQrrjyaEBlHG6dclflTbI75Z
         eGShdkIUaSxY8TrZNiSQUb22iQNRC8Dg4SqglpA1W9xp06L7Y26qlcx4I+T49WQtIUdc
         kluFMWs2Ig+PFOeLHOO0Hy7PI44du5lNtU7Q3IgBsqU2nyPqMONlURxSrSuarlC9vlTk
         c03iTJ+NW68IbU1Ok9fXs59SZsSlxCTA3xdc+t8WgULOmvCyM4xpPg7u5MrNyULvt0MD
         QxRh01v+mbTy/+WLxGj1B6dQ172CETtOstuWEJgwqfnZd9uJ+usMIrMBlKxdUCV2z/bp
         mDPg==
X-Gm-Message-State: AOJu0YzjFHwdrtJhOTO+LQ9lCUBTIwL6mIy4eAhfOL1MooyhMdzJ04tC
	+VVvXaHjO45WEaYpwv/z1QC6Nw==
X-Google-Smtp-Source: AGHT+IEAmbAul6ZrpXg2twzLckxDam20V+qQFqTsLJY9Hw6C2Df9rmcAE5tB+Ru7HFpc1ZGE1jzsyw==
X-Received: by 2002:a7b:c4c6:0:b0:40c:2766:5424 with SMTP id g6-20020a7bc4c6000000b0040c27665424mr2453843wmk.171.1702311869976;
        Mon, 11 Dec 2023 08:24:29 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-28-58.as13285.net. [92.29.28.58])
        by smtp.gmail.com with ESMTPSA id o4-20020a5d58c4000000b0033333bee379sm8923103wrf.107.2023.12.11.08.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 08:24:29 -0800 (PST)
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
Subject: [PATCH v7 11/16] watchdog: s3c2410_wdt: Update QUIRK macros to use BIT macro
Date: Mon, 11 Dec 2023 16:23:26 +0000
Message-ID: <20231211162331.435900-12-peter.griffin@linaro.org>
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

Update the remaining QUIRK macros to use the BIT macro.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/watchdog/s3c2410_wdt.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index 7ecb762a371d..b7a03668f743 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -107,11 +107,11 @@
  * DBGACK_MASK bit disables the watchdog outputs when the SoC is in debug mode.
  * Debug mode is determined by the DBGACK CPU signal.
  */
-#define QUIRK_HAS_WTCLRINT_REG			(1 << 0)
-#define QUIRK_HAS_PMU_MASK_RESET		(1 << 1)
-#define QUIRK_HAS_PMU_RST_STAT			(1 << 2)
-#define QUIRK_HAS_PMU_AUTO_DISABLE		(1 << 3)
-#define QUIRK_HAS_PMU_CNT_EN			(1 << 4)
+#define QUIRK_HAS_WTCLRINT_REG			BIT(0)
+#define QUIRK_HAS_PMU_MASK_RESET		BIT(1)
+#define QUIRK_HAS_PMU_RST_STAT			BIT(2)
+#define QUIRK_HAS_PMU_AUTO_DISABLE		BIT(3)
+#define QUIRK_HAS_PMU_CNT_EN			BIT(4)
 #define QUIRK_HAS_DBGACK_BIT			BIT(5)
 
 /* These quirks require that we have a PMU register map */
-- 
2.43.0.472.g3155946c3a-goog


