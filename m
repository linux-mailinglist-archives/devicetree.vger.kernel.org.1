Return-Path: <devicetree+bounces-80254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CB49183DC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:22:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0255A1C2155D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC0EF185E79;
	Wed, 26 Jun 2024 14:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XUvU6t14"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1501850A2
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 14:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719411755; cv=none; b=RiEt3sqQmxqk7E+62NUgjHw/b6FRvDUff4XFSQZ9djwvYKgPbysX/ukMi1bqQR9hsFMtqByXCLhVsueTfuun2H4z0snT7Of0GLKGSdmF4A25S3cgd9WQ6qHfUnSehjNlbD/d31lFGxjuYB++c5crQnqKnAXOBY/9MaKx6wu7EIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719411755; c=relaxed/simple;
	bh=fmmEZQRa427ZeOpTPM8v5KdYuz7uZ82dzZaE4wNfZhU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=REXhbs5+ExzNFS2lVBt/v8zGj8mSapCPNFvrPU79xf1Fdo6yoowfxzLItktMsa6KVkc/5L28SM2iINVJfgDA5C9abr50Yy5+Vt79ZPgFhBYLDGTxSAnGF6G0USiBRpBsqXZqUDX/aZHJhL7KunqJFl7dAr/W2YNndw3IqaXogW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XUvU6t14; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ec002caeb3so86666961fa.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719411752; x=1720016552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pSOqd6xFtwNmB6/la0EhwilFZVmFb3e1mPm8GFnYuuc=;
        b=XUvU6t14U7PnQW0WdLNPfm+P0zHB+gOJKWAUcqwqYOG1abOd+kN27KObgQOMnjVVWg
         nDNkVdLgVVQ5SyVdqTiN6XXs78EIaGfuwb1BOgNaZOZCcIPqoXMfExbsfYJ6fLEwiuoT
         /kB4ppGC84vmZo8bE/gRMDorrNhq7JxryOfW2n2Su9Gj6q6C1V+TXg6Lh0YBZx5W0b8B
         kKx+jBGyepRl2+xcaQirXyGs2y5Zevdpk/tg8Vv2tMAoSnFKxKZiwgayc7oPiD8h9rM1
         hSRr6sZgj93+BsvAyNFa/uT0noO9tEHdF8YEpGZjv6RXxL1CdFgxvvltBCyG/n08yjkA
         dLQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719411752; x=1720016552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pSOqd6xFtwNmB6/la0EhwilFZVmFb3e1mPm8GFnYuuc=;
        b=qXqXc8Tk6pz9fM6+wF4BVeBrpkeH6SqKfU8pKOEtlwKbD5EplZiWS/V5aimGnujorM
         da+ppDNGV8yCkDfVIlPVnnXZeHzB8AlxvCWUHh/osBcOFpUu6Lpo+hNc1UM7rSJaVOmS
         RxO2Gkq9+EnDYee/Js5Z1h3mf1MT6lWDgewtlSAvAOT50aurKluEEVI0geBm+oup96aI
         WN1q0QrkdBT4NsAV7GIOfXBw+YmXrzryV1gBIp0vthmwJa979TZkFF6xtXHOPc6S51XU
         7fjrTX8W1dFYi3IYspGkfodkf/CAP8ZBxpmj0wBuhsG+UaS2AiVvurpYp6TE6CDcZpLQ
         eiEA==
X-Forwarded-Encrypted: i=1; AJvYcCUE5LtnchfGXResan9ZY13R1YTNZeWB2uiiG68rJwSVTte6OzQYewWBLXYemNy16EFwb4EJVs6V8MPn7wn8zSO+NHabbNpztMVLkA==
X-Gm-Message-State: AOJu0YwvGlOaRYt4TUltc0uUQ8eEDYmx+PGDywta4qEyqpwmvlL5ArVn
	L9IXOZ+tmPGe7M+vIvL7jSpf7cbWhO/rmQtDg5cSdNT2CBzPX5tRTyOzjNo2+Q0=
X-Google-Smtp-Source: AGHT+IG5doh7ICzMm/NrOTR59CEuv2r+Q5IA9UA8wl9i2JaEBBV0vUoMwj/zrNmZXpgh5C2T/Pl7CA==
X-Received: by 2002:a2e:9b12:0:b0:2ec:559d:991 with SMTP id 38308e7fff4ca-2ec579ffb28mr70805581fa.50.1719411752241;
        Wed, 26 Jun 2024 07:22:32 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:7be7:aef1:af9e:fff6])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-424c823c28asm27141105e9.5.2024.06.26.07.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 07:22:31 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 2/3] drm/mipi-dsi: add mipi_dsi_usleep_range helper
Date: Wed, 26 Jun 2024 16:22:08 +0200
Message-ID: <20240626142212.1341556-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626142212.1341556-1-jbrunet@baylibre.com>
References: <20240626142212.1341556-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

Like for mipi_dsi_msleep(), usleep_range() may often be called
in between mipi_dsi_dcs_*() functions and needs a multi compatible
counter part.

Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 include/drm/drm_mipi_dsi.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
index 71d121aeef24..0f520eeeaa8e 100644
--- a/include/drm/drm_mipi_dsi.h
+++ b/include/drm/drm_mipi_dsi.h
@@ -10,6 +10,7 @@
 #define __DRM_MIPI_DSI_H__
 
 #include <linux/device.h>
+#include <linux/delay.h>
 
 struct mipi_dsi_host;
 struct mipi_dsi_device;
@@ -297,6 +298,12 @@ ssize_t mipi_dsi_generic_read(struct mipi_dsi_device *dsi, const void *params,
 			msleep(delay);	\
 	} while (0)
 
+#define mipi_dsi_usleep_range(ctx, min, max)	\
+	do {					\
+		if (!(ctx)->accum_err)		\
+			usleep_range(min, max);	\
+	} while (0)
+
 /**
  * enum mipi_dsi_dcs_tear_mode - Tearing Effect Output Line mode
  * @MIPI_DSI_DCS_TEAR_MODE_VBLANK: the TE output line consists of V-Blanking
-- 
2.43.0


