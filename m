Return-Path: <devicetree+bounces-185142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 559B0AD6976
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7B3C67AD0E5
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D089421CA1E;
	Thu, 12 Jun 2025 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QpMq05/2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F44220F47
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714563; cv=none; b=gbm6rzG+/GRcPCKxOdl2EXVqSDTP2eOzxtQbtCrg4DK/+iIM4qoIvpdifuRCxfBuIoupfhG6K3MM77h9mYpd0RXh0HkMjp8ytEZSio2kmCb5F+913GBD+B77N9PtOlzOuD2K74b6fEQxxD/SRMyAI0+oKfBB68+lGH5dMU4bEs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714563; c=relaxed/simple;
	bh=M6CossAzrTItIWAzn1A9+kxxQ8xCK/jJ8XqU64/5Zf8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IOJDZ3apIxpmdyb547yKpnY8Rd0OdCox6mznqjZQ5z+vld+6ip8+0ZmUe+/j39b94EvXzNkcMN8h5AtzAaLGm9ilRUx0DCLwYyLfZwmS1XEm2bCYsDAw6VcpYY0bTfjY6iDupQrRDmy+tw565JM2thZfA4gH+85CtVzwg2K31gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QpMq05/2; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2363497cc4dso5939175ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749714560; x=1750319360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hYQyoxfiAVqopjQvGW02GMsvVlG13E9Tz7Vl2Ymi3WE=;
        b=QpMq05/2z0Omoetd1k2lkYpR5mgNnSVKYnFD96tlVCx3UOsgllXd/gTeyw2iLXoGsg
         PQfj4eTdL0UiPNTFYIkujWcpQUV1SfJ9EdRsdSk9bKe9QeX8xqR0YTzTUJCiDiZ7mHqJ
         xUn9fp6+ytjSwG44KQ0/ve6hmOhsBzJw8UsoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749714560; x=1750319360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hYQyoxfiAVqopjQvGW02GMsvVlG13E9Tz7Vl2Ymi3WE=;
        b=kTtS2BW/tB7h5hmBGZwvYrgwFmnEvmPcymy9+PhwyWf0PUWCKvAzHwNU0XggV8pAgQ
         B7SAVaGmFTi+uASMkcxVZ0q4QyKz4GuUvh53F9reyk28IW0zpkpdWZGDFYAfTSungKJR
         mnWUaY19s9WyNUTWRfLeNiyEMl2jbWacJ+8zKV6I4DWjTyDYngQAhy0Ol6w0qhp4tFMC
         cyFVHditCutbweOSgXgQ5oGQ/G5KVsPdS0Uu5ofBUpGNglmrRAwZOrzLNvHcsFB8Pi5s
         gHfgTPqBzngwQpI2aVrGFMjBWo8carqTRLg7Gruo4Bl2vHZCviA87D6CNj8T+DQV6ILr
         ruCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcC0FGNRvlAkTwTdc2HF8D79iK40aauImQoxD5cdJHHkM//4XjFkk2dh05X9/O805do9+jJbbQNwAp@vger.kernel.org
X-Gm-Message-State: AOJu0YzRgLq2QxrR/NciNVdslN/mV8kXmY4QBxcd8OJNjlPYHdysmtoB
	v1Qh3p4p6tFAzubO95nzrUxKpAuHOK8/6Igb1+39d13wPCQgtNwxfVkfhG+UO/sWNg==
X-Gm-Gg: ASbGnctfZOfPFihTIdjMQUFToKy3twMsaQW9Ol+w6kmgAd0frs1Gh3xqbhdquvarE8b
	I8zVNKj9pVUcIpeA/RUSjymeuBbYxITh/b7RvbEVtjL6iBVHtLdQscggdDOeajrTiVmHilfm/MZ
	QgecrdrbD5p97l6dBmRSlrXP30/yg7KGxxEdwCa79TEvmctU5YM6RsmWlyV2f8h9fBTD9Ticrpb
	/NJWnE793w/Na+ZiGkk3Xiqq0y92T9l3GFQRxgnOyN/MEsDib7diz7idis27rpacIaMh8mLwZBU
	slZ1q+ZR4sI4oE+vTuuyurVqsa6VXeJf1Eqm7bBuFpHHgYmlavIlgsWZJylBgNP39fBovm7tmFV
	GIz0=
X-Google-Smtp-Source: AGHT+IFaK/aSeTPU1FVSUiJwy75RRBlflMYnV4oLKYPHyMqt0+SId2lcqzKkgBqwPYhNLtKoxyy+Ag==
X-Received: by 2002:a17:902:d60d:b0:223:4537:65b1 with SMTP id d9443c01a7336-23641b28de4mr102187465ad.36.1749714560273;
        Thu, 12 Jun 2025 00:49:20 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5b9:e73a:2e58:5a47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e63d42esm7893295ad.74.2025.06.12.00.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 00:49:19 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/9] ASoC: dt-bindings: mt8173-afe-pcm: Add power domain
Date: Thu, 12 Jun 2025 15:48:53 +0800
Message-ID: <20250612074901.4023253-3-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc1.591.g9c95f17f64-goog
In-Reply-To: <20250612074901.4023253-1-wenst@chromium.org>
References: <20250612074901.4023253-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The audio subsystem sits under a controllable power domain.

Add it to the binding.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml  | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
index a95215ba6361..666408d32f5c 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
@@ -45,12 +45,16 @@ properties:
       - const: i2s3_m
       - const: i2s3_b
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
   - interrupts
   - clocks
   - clock-names
+  - power-domains
 
 additionalProperties: false
 
@@ -59,11 +63,13 @@ examples:
     #include <dt-bindings/clock/mt8173-clk.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     mt8173-afe-pcm@11220000 {
         compatible = "mediatek,mt8173-afe-pcm";
         reg = <0x11220000 0x1000>;
         interrupts = <GIC_SPI 134 IRQ_TYPE_EDGE_FALLING>;
+        power-domains = <&spm MT8173_POWER_DOMAIN_AUDIO>;
         clocks = <&infracfg CLK_INFRA_AUDIO>,
                  <&topckgen CLK_TOP_AUDIO_SEL>,
                  <&topckgen CLK_TOP_AUD_INTBUS_SEL>,
-- 
2.50.0.rc1.591.g9c95f17f64-goog


