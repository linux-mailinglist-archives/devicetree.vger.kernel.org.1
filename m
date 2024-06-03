Return-Path: <devicetree+bounces-71809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CD48D8043
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 12:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB3421C2157D
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 10:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4469E83CB7;
	Mon,  3 Jun 2024 10:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hiFZ0l71"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6462982487
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 10:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717411863; cv=none; b=nxvlyNoOHU0xfFrGBbdOnNWcOnPwE4UJJorNVossOaszHZdDyI9Q5CsIYP6OYvPopF9JWG6kPW66oG5Ls7nswQlfOJu8/w0oOHlWpnrkYSk+oB8PN6ysxdLSnKKJf3RZEPMRe0dUqdH5U5NWQm7Wezfo41BCy7Y+01CbQ5nLI9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717411863; c=relaxed/simple;
	bh=IZPrvRPbGNSCghjb/r1UV5NLYTSYSWHR7o/UY4dQ/l8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VulJVW1rrx92Ta/1BH5kz74MsioVM4fbJ5XUhJFTaNJZ5bRfMF0H+qBblU7ydmP3c+QFB6vssh1Lzr1M4jf3rLqaJj9zTqXvtboGfsdiW6R0hXdirWAZPg6BwvnADXruYkCxVTptxplBgIlitHm8WF89MFcb60gr763MC5uRPIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hiFZ0l71; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4212b4eea2eso25845925e9.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 03:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717411860; x=1718016660; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mVKrwpOU8w8n3bWP7IaMbuZSC96tHGg2G6FEzlrVdlk=;
        b=hiFZ0l71OB+PYUXwM3Me/R8p+E5iRVT9XXd59V2jyOns8JKM90Uqb8QOBsNgej8Yim
         x0HeBNEs9BLoIZq8SCle2CG4eF+emXCJjavo4kZpQ9GSq6Esqrmr7nNlYFHNu24y0rDC
         2opMlQQTRRwYF6YbivGRNpEAiAtKoHS6CO0BqXe6waGbthf7T4aLJwv4AXkW+XOAasLJ
         Fn7oVV7qGLLPmDDuUtaY6s9uPSfVOh0KRJUizWef//GoFqMWvULhuc39AReDdlWLY1gK
         uZKM2Jetrs7w5sBSKII/zMQMrgh8tuAXgj+lUMK6fwIuXuvRdgifAamGxSXF7HS8Xpbx
         y31A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717411860; x=1718016660;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mVKrwpOU8w8n3bWP7IaMbuZSC96tHGg2G6FEzlrVdlk=;
        b=nJqcBiCsWtc77FFB47pShbqSUyaU4774z7im2kKPuTNfc3XbkYi80NbLVWPqm2W84X
         JF9ckjENdHhNXisTpP7lxbQcnqsyQFY7Kcvm1LTeTipz2GEdVZ8r8oMVyPNqLtobRHla
         1RK1rk3AEtkP52/kjPUGlNTqAwZa7BR6TAfAyPR+9ezuTuejwuBuCe9ZU7FcWGBSiHU2
         AnSodaQHznvGh7MI2ADf0a4p987fuKHVKHtECcA/FrfK8IzvImvtMTcyU+baJc2Kco7X
         bbmLhgwmwcXYjcm1+sSpdNkdHolIAkCs9LOzeg25H7pEjCPsPqJFjotYr878/aVTOnzi
         6kzA==
X-Gm-Message-State: AOJu0YwKTImuwNOwlHDvQNPC/LnK6qDIpv7GUZF58V7X2o3iou6qP43r
	3hFoYohorRTX2VcDiyOg3WOt4dFiEEQHrJhXc8RbCjI61pU01hubUt8W1N7Xnb4=
X-Google-Smtp-Source: AGHT+IEHJzmkYk1x/64Dttgql0TFeN0LlRnjrwKSBmUBZV11he1EW14HwlQNANH8IEcojrIBxI1yZg==
X-Received: by 2002:a05:600c:3b15:b0:421:925:6655 with SMTP id 5b1f17b1804b1-4212e046201mr66085115e9.1.1717411859616;
        Mon, 03 Jun 2024 03:50:59 -0700 (PDT)
Received: from [127.0.1.1] ([84.102.31.231])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42133227f8asm95372535e9.19.2024.06.03.03.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 03:50:59 -0700 (PDT)
From: Julien Panis <jpanis@baylibre.com>
Date: Mon, 03 Jun 2024 12:50:48 +0200
Subject: [PATCH v7 1/6] dt-bindings: thermal: mediatek: Fix thermal zone
 definition for MT8186
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240603-mtk-thermal-mt818x-dtsi-v7-1-8c8e3c7a3643@baylibre.com>
References: <20240603-mtk-thermal-mt818x-dtsi-v7-0-8c8e3c7a3643@baylibre.com>
In-Reply-To: <20240603-mtk-thermal-mt818x-dtsi-v7-0-8c8e3c7a3643@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Nicolas Pitre <npitre@baylibre.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Julien Panis <jpanis@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1717411855; l=2060;
 i=jpanis@baylibre.com; s=20230526; h=from:subject:message-id;
 bh=IZPrvRPbGNSCghjb/r1UV5NLYTSYSWHR7o/UY4dQ/l8=;
 b=H0YGfuOx97A32AYKnSb54my+ipnwNHN3gyXGwn1w1+Gowhq81ksSoJwKx5VAgIuDuFdYqw47N
 vgPxSRvm45PD22rChAtElT+XIOrWc0ylFv5Ds4cGkpg6i0UnRDm/xCa
X-Developer-Key: i=jpanis@baylibre.com; a=ed25519;
 pk=8eSM4/xkiHWz2M1Cw1U3m2/YfPbsUdEJPCWY3Mh9ekQ=

Fix a thermal zone name for consistency with the other SoCs:
MFG contains GPU, the latter is more specific and must be used here.

The naming must be fixed "atomically" so compilation does not break.
As a result, the change is made in the dt-bindings and in the LVTS
driver within a single commit, despite the checkpatch warning.

The definition can be safely modified here because it is used only
in the LVTS driver, which is modified accordingly, and has not yet
been included in a released kernel.

Fixes: a2ca202350f9 ("dt-bindings: thermal: mediatek: Add LVTS thermal controller definition for MT8186")
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 drivers/thermal/mediatek/lvts_thermal.c             | 2 +-
 include/dt-bindings/thermal/mediatek,lvts-thermal.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/mediatek/lvts_thermal.c
index 0bb3a495b56e..506eed52db1e 100644
--- a/drivers/thermal/mediatek/lvts_thermal.c
+++ b/drivers/thermal/mediatek/lvts_thermal.c
@@ -1436,7 +1436,7 @@ static const struct lvts_ctrl_data mt8186_lvts_data_ctrl[] = {
 			  .cal_offsets = { 29, 30, 31 } },
 			{ .dt_id = MT8186_ADSP,
 			  .cal_offsets = { 34, 35, 28 } },
-			{ .dt_id = MT8186_MFG,
+			{ .dt_id = MT8186_GPU,
 			  .cal_offsets = { 39, 32, 33 } }
 		},
 		VALID_SENSOR_MAP(1, 1, 1, 0),
diff --git a/include/dt-bindings/thermal/mediatek,lvts-thermal.h b/include/dt-bindings/thermal/mediatek,lvts-thermal.h
index bf95309d2525..85d25b4d726d 100644
--- a/include/dt-bindings/thermal/mediatek,lvts-thermal.h
+++ b/include/dt-bindings/thermal/mediatek,lvts-thermal.h
@@ -24,7 +24,7 @@
 #define MT8186_BIG_CPU1	5
 #define MT8186_NNA		6
 #define MT8186_ADSP		7
-#define MT8186_MFG		8
+#define MT8186_GPU		8
 
 #define MT8188_MCU_LITTLE_CPU0	0
 #define MT8188_MCU_LITTLE_CPU1	1

-- 
2.37.3


