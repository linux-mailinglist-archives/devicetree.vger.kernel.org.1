Return-Path: <devicetree+bounces-122137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCFF9CE08D
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 14:48:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71FF01F23F5B
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 13:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99C961D5AB4;
	Fri, 15 Nov 2024 13:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lubXZk1Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7B81D5166
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 13:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731678264; cv=none; b=lp+/9g05bB2jfJeGmjvhH0+rAVVnved+d/a8C1Yo9qNPjj/MgEkOxiuRmHRzXjx02m+P1LUrzVV2l2R56jIPufksUOY4agt9c0mLs9dvgcu/mx3O4ks+KJTAhzC8iLJ/wyWIurU/cMds9c2RKyN80vadEcnG8oDAAb+l4FNC1W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731678264; c=relaxed/simple;
	bh=wtEJOHWb57zTAiri+QKgQmXTlVnXlZ7+4fhBUT3i/40=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gQWJGgP6mwKPqidRxUdsGvgBVxDwrSmYhsN/TqPWSukmdU+yO90beGQakYnma3otszgWqb+iBl6s/SvfyLXx8ho0kP53nf5r7KOw2PSfmY+mSXMfa86so9M4WuvK4qqVLfSPV3qL/B6OqKM1HY6YP6PBnWCU3OE8gielL340GAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lubXZk1Z; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3822429c615so807270f8f.1
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 05:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731678260; x=1732283060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y+YZBVsJh/VAUGpi27AVY3ok+hT+IMM3cBf29hG05qA=;
        b=lubXZk1Zw5kX3u1zKHF4nCSltamqcgiPkhXREvA89U2bxDFodJKhXEYbUYrgqwcrFu
         Od85TqB7HJpDw10X/LeLKGi/sdamDhe3xamaCz79D3ai4y0/F0go/PgiWO2MuZyV15V7
         Em2Oh55hRWb5rBD04ge0KzxINKMhIHi+JdIstshvhlf5NUGJl013BwJIsg76Z06hKc1Y
         V3fEbECo6MIyXm8KxgXjlwubw1lu2iR+c/4tPmfseQtDOeqIYo5V+0iUKfFC5r0UCXpb
         ybz/DocitE6UBKFZJQg5ItMXIPTzxtddWrYf2idLxIDsoBob/YCNJjkYWGC0O0TdCH9I
         /pOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731678260; x=1732283060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y+YZBVsJh/VAUGpi27AVY3ok+hT+IMM3cBf29hG05qA=;
        b=u3o2aVR+S70UU0gNw9sq6w9mmP6mQZVdH4hcM540m3DldAiPG/Biuhx5AIDXg8xLDV
         bbMrKzlO7ndH6PZ7KWB58/49V83RNnQawJ00k/PShwIW3mOTC9ZmZv3QvZlmSFGcuT67
         wW2jXW2YepjKe1c7Y/Op9aizpkN8Nw5sbzzAyorykHGtXUkw6/v78T1cbmnkqGeNA4Jk
         MaxcDZPrEJ0wTocSursfe0MwYHC4m2tdPjaRp68ZxzVyVi1tSamnlibD2OFISEbhhbgR
         86TsA9OimLv0JbpjueugYVrQY1S14WiZ6w5Mu9g5AC9XV0YDONS7RkLsCZnUla0CbXNk
         3xsw==
X-Forwarded-Encrypted: i=1; AJvYcCW2YviiYz+jEJsxN7sV/WcgWjmC8kv7rrApRx8V6udq3hawBfokOePFQz5mmj7265PCnJ61kCqwg/tR@vger.kernel.org
X-Gm-Message-State: AOJu0YzHubsKTcgXRZJDjyvzHWIXALfxkdZbMOVl6bUD9GMRHhkpFgYk
	NRAAMLodtMAudfNkcpx2VYcQY3+ruS3Wb5gUgVEEVxwfevRfTpavyXDx/4ksDQ8=
X-Google-Smtp-Source: AGHT+IG+ynyyYjZn6sC7e7CuEgzQ8b+B6wg20HRVZIxHAkl7FPzEzqPlVzLenjKMoEK/3eaNxUgqNA==
X-Received: by 2002:a05:6000:1ac7:b0:37d:5359:6753 with SMTP id ffacd0b85a97d-38225a41fb8mr2761194f8f.15.1731678260009;
        Fri, 15 Nov 2024 05:44:20 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3821ada3fc9sm4378016f8f.20.2024.11.15.05.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 05:44:19 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	p.zabel@pengutronix.de,
	lethal@linux-sh.org,
	g.liakhovetski@gmx.de
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-serial@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 5/8] arm64: dts: renesas: rzg3s-smarc: Fix the debug serial alias
Date: Fri, 15 Nov 2024 15:43:58 +0200
Message-Id: <20241115134401.3893008-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241115134401.3893008-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241115134401.3893008-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The debug serial of the RZ/G3S is SCIF0 which is routed on the Renesas
RZ SMARC Carrier II board on the SER3_UART. Use serial3 alias for it for
better hardware description. Along with it, the chosen properties were
moved to the device tree corresponding to the RZ SMARC Carrier II board.

Fixes: adb4f0c5699c ("arm64: dts: renesas: Add initial support for RZ/G3S SMARC SoM")
Fixes: d1ae4200bb26 ("arm64: dts: renesas: Add initial device tree for RZ SMARC Carrier-II Board")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 -----
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi     | 7 ++++++-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 2ed01d391554..55c72c8a0735 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -43,11 +43,6 @@ aliases {
 #endif
 	};
 
-	chosen {
-		bootargs = "ignore_loglevel";
-		stdout-path = "serial0:115200n8";
-	};
-
 	memory@48000000 {
 		device_type = "memory";
 		/* First 128MB is reserved for secure area. */
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 4509151344c4..33b9873b225a 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -12,10 +12,15 @@
 / {
 	aliases {
 		i2c0 = &i2c0;
-		serial0 = &scif0;
+		serial3 = &scif0;
 		mmc1 = &sdhi1;
 	};
 
+	chosen {
+		bootargs = "ignore_loglevel";
+		stdout-path = "serial3:115200n8";
+	};
+
 	keys {
 		compatible = "gpio-keys";
 
-- 
2.39.2


