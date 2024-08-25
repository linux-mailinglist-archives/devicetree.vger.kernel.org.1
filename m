Return-Path: <devicetree+bounces-96446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0759C95E2C5
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 10:49:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BEB372822B3
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 08:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20FAB57CBA;
	Sun, 25 Aug 2024 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EnJSYzvI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F0F6F2F6
	for <devicetree@vger.kernel.org>; Sun, 25 Aug 2024 08:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724575793; cv=none; b=j5ryEeeEiW13TVNctp2Ne+U0GwnCxCoh8Zzxh9+v8jxvipokI7+/DaJ09wzNnXCuAvCWoGRTzF6a4ZxFpIzGq7oiTlE4nouwd3+iFTLiHBnz+KB1FTBozrHFaChQ8pZ3dxaFaLmjSZoXa+bYT0Lm3IS83RYRiT39YiFnYJwQ2U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724575793; c=relaxed/simple;
	bh=jFbZBwvOwRIn52AfzwHiXcl99jHNvWYflv+t7ict3Pc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m9t/uMPNvSoNmAoru6GL4bWvCMOx8P/6F3OJT3Pwgs3gxOBE8Ge64ZHYmtQrt4/v39J40VzuZ9QJWfY07EeUP7YHm6LSIZTSotXqEcx8Npu7r8PbTGXMbKl0FY8Wns8AXPAxYGOUcokdUd3UjXpaVfRLgMZeujzzJPFU7U1VEqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EnJSYzvI; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4280692835dso5178295e9.1
        for <devicetree@vger.kernel.org>; Sun, 25 Aug 2024 01:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724575790; x=1725180590; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EFcadNGvy7x7r92tr7jHWl9lbifMfuT6t7Vxj8SP/Jk=;
        b=EnJSYzvIKjog/CFUt+Jf5MAknU5Q0HC43Q2Yuut/VanUDdXHdBrgV1jrnUeV315v6S
         QQ4cg5qrPiDFK30UuQwdJg7vcz+Nglpyil/eNmEwqxbE4cLboVcAV4oyGNd8WB25GSFw
         pbeEbhutgTqHX3OXMs47v3jdaXldI15Avh9wrObjB904OiRBetsdnJWCC4UGL32329G2
         eDDpsUX/+eOozAZAvLlJtDH+6RqyyGgLqxx/5NYGeyXed5Bj6u6Qh/l3/Wtina/u1xIV
         X8qpTP7WKUEQiDbToKHWQ6dToJYfpzX/uUOZpXGWY8LhV/d6XVIXpNTS437riZ4IW1qK
         3EGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724575790; x=1725180590;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EFcadNGvy7x7r92tr7jHWl9lbifMfuT6t7Vxj8SP/Jk=;
        b=YFUA7wL3A9CIzM+DhxL0yDB04w5bwDcdMWzBa8JY9T7bW3vNag9qeBdD3P3BF1vb9L
         mSFrkRezRMjGCzueqSUg1CZg+YRdnPY9w13PmL6GZ0VMAtv6trD0iqMUx6yyhm5Fb2T6
         yUAA8YCx97ljl/WaL4orKHe67SWglnAXuOal6ojzC+8M+S+Bw5ERT1njCbUk4bmasm0+
         vy9vloAydRKCwk+x+uYRbtZv4BMVoP/7swIDKmrkytVQyE9IA+VFiukmUMVnDEKWnvKB
         e88dsr6ZVWNqYc6uZvBNX4XjD6JUXpMDMACurtcHRnzY5B3s9vrgLy8QYP+xzmFOvles
         dB4Q==
X-Forwarded-Encrypted: i=1; AJvYcCV0ER7uElB2N38fej3h9/INu5kXlEsX8l4uZJx0XhOABuIretK1ZL6s3nq1BcU8nmUCjUQCMZA9OiUS@vger.kernel.org
X-Gm-Message-State: AOJu0YwEO8acec1g3YwBYxxM0rniEzuhRjYI6oIjtXuj605XYr3paRhs
	GOtf3SUnk9yVJtks6sESNOCt874ivV0xly6E5EZHUX8MQD222W2/KxRzNJh0GK8=
X-Google-Smtp-Source: AGHT+IFqH0eWasXxHm3lqwZoRqKEelIfT6oDSORS7GZS6+5bcKfRtIe6ivTGxioz5piGW5U07J9kWg==
X-Received: by 2002:a5d:59a9:0:b0:36b:36aa:a14e with SMTP id ffacd0b85a97d-373118d1d2fmr3033528f8f.8.1724575789527;
        Sun, 25 Aug 2024 01:49:49 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730826b10bsm8108269f8f.114.2024.08.25.01.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Aug 2024 01:49:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] imx: MAINTAINERS: correct TQ Systems DTS patterns
Date: Sun, 25 Aug 2024 10:49:46 +0200
Message-ID: <20240825084946.20457-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix file patterns for TQ systems DTS after re-organizing the ARM DTS
structure to fix get_maintainers.pl self-tests like:

  ./MAINTAINERS:23329: warning: no file matches	F:	arch/arm/boot/dts/imx*mba*.dts*

Fixes: 724ba6751532 ("ARM: dts: Move .dts files to vendor sub-directories")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Shawn, can you grab it directly?
---
 MAINTAINERS | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index a7cb909ffa1d..6574b4910f8a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23326,9 +23326,8 @@ TQ SYSTEMS BOARD & DRIVER SUPPORT
 L:	linux@ew.tq-group.com
 S:	Supported
 W:	https://www.tq-group.com/en/products/tq-embedded/
-F:	arch/arm/boot/dts/imx*mba*.dts*
-F:	arch/arm/boot/dts/imx*tqma*.dts*
-F:	arch/arm/boot/dts/mba*.dtsi
+F:	arch/arm/boot/dts/nxp/imx/*mba*.dts*
+F:	arch/arm/boot/dts/nxp/imx/*tqma*.dts*
 F:	arch/arm64/boot/dts/freescale/fsl-*tqml*.dts*
 F:	arch/arm64/boot/dts/freescale/imx*mba*.dts*
 F:	arch/arm64/boot/dts/freescale/imx*tqma*.dts*
-- 
2.43.0


