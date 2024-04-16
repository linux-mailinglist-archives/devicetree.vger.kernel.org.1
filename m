Return-Path: <devicetree+bounces-59789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2808A706D
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 17:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBD2A1F24183
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 15:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D6E113791E;
	Tue, 16 Apr 2024 15:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="u3+kVkJp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E25F13775A
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 15:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713282809; cv=none; b=DCdlh21rhZ16pDozCqY1ojFwCnR4K1mPo11QvBAZPaC/X5y+2SWgBted5oqwf6EXFlqPNSKANkbqazUbrQeyHewOkshVAeedeyNSczqfov35fdt7lqh2iKZLosn/0dbz/DlxBFN6WGKnmhd31P7HuFmwaOsuEY1qjQpDd38cUAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713282809; c=relaxed/simple;
	bh=v9vBdfSwmyDVuprDi5U3tWTSEMiU4Zfz1GYaXHrP9lk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LVQpiZw48PoH3+/2iyzvwHA7eryCJJmwpKuPnyAqQDavpmlftcq/RaCvBIwyIFnTCXTonKcKdZCs9TYmFRa0zk/1iepnReE0qrpmZ6DOsxb5WfwNwxXGTIC00r2hRud2iTBrmJgd495XH3Pk+tVWlxfjP57VBDokafOfZb0KeuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=u3+kVkJp; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a54176639ecso250074466b.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 08:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713282806; x=1713887606; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aAexrd/46uwMAH6jYKwN+uUc2aBRy9RedyqD/mSslIk=;
        b=u3+kVkJphK8op/drzOvX7w4QwX0D390bX3vuFtg+9sTX40YSor5ufuuH2wJyWnBUPb
         +AD7/0bFrL9pAr/zo6erCrusY6CHZ9xaZMcs3ffMPeZLDwtmkicVINQHEVDFiQCQeN8a
         S6ICYjGfTdpFaVkxxynV3Y1znQT/xy8xOgBL0vjHUoATARONwdsiHZ8buqNa+70GczSO
         5JxgxmRyGGp06OR1wgMEqNxz3IhB5JIjFkD3JQukRdTHxHGf1XDujNr0p4TNdCZfwd4n
         ubV559h+qljmgONWD6vzFDJzWLcNf6MzyrF45k3YNCxMsrStHE3cqE4iWmxYxFpX7bSm
         2HLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713282806; x=1713887606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aAexrd/46uwMAH6jYKwN+uUc2aBRy9RedyqD/mSslIk=;
        b=DaXf0VMR2AXWWZrgFWAMv40jnpYMeKUg4iWPTh15VMKs8VJconAIV51EccAQhLvdRt
         AZlY9rfyFuNUUfTdaEJpjHFHaMMhF0czZi8pt5/NA7MTWpFD3P9/zEytsKeVrRF+J7iv
         AtmQL7KB53/lbVz6GlulHAh71F8cUTcEpE8WRNe72KVuke9gXSRhcc+QuJl0o5yLlJie
         dmqk9ZyKx8WsWm7bs5iqZKNZInKhduVjNyjQs7P26SyD+KsIGoNXQEOhGrDKQXvMOhXY
         fqmEdgUua719UKBqDaxTxUZ75F72GYoUkFKTYTNFvcDbh1bT2daDX0FD+0+mAPlg+wmM
         p/WA==
X-Forwarded-Encrypted: i=1; AJvYcCUNx5ASgyXRtRxZtn4uRre1p8F1TGmEIJbAr1SnLeR77gSEbtBQbwfaY1j7RpU2EMmx/HQKKQRwSI6pUeaKbG9XYDSCvjBlupgZsA==
X-Gm-Message-State: AOJu0YwIrRlDhJDv+VaQNjb0cAmWjZE+KT6xquL/5mI9Y4jzCCpKN3vl
	9DeRe48pAQxI/al7I1vbnD8V7Wo61PwGR9Pd+BFQyI5uDIOIUe9EMps2/xP8nmk=
X-Google-Smtp-Source: AGHT+IEX7zZn5a5jXK0yRc4ZNU3IRQE4xFEasuu6yFOPXdGGPigbQkHsv8LLTaPDrzx9MEJkztjv7A==
X-Received: by 2002:a17:906:eb43:b0:a52:6d2b:e8f7 with SMTP id mc3-20020a170906eb4300b00a526d2be8f7mr3458529ejb.12.1713282805879;
        Tue, 16 Apr 2024 08:53:25 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d12-20020a170906174c00b00a52567ca1b6sm4156691eje.94.2024.04.16.08.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 08:53:25 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Tue, 16 Apr 2024 17:53:06 +0200
Subject: [PATCH v2 05/18] dt-bindings: display: mediatek: dsi: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v2-5-33ce8864b227@baylibre.com>
References: <20231023-display-support-v2-0-33ce8864b227@baylibre.com>
In-Reply-To: <20231023-display-support-v2-0-33ce8864b227@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org, 
 linux-clk@vger.kernel.org, Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=832; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=v9vBdfSwmyDVuprDi5U3tWTSEMiU4Zfz1GYaXHrP9lk=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmHp7qDH7y69korfmHarmHqyVoW084RPRM+0dGorYb
 06qx0OqJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZh6e6gAKCRArRkmdfjHURZZbEA
 CFurBeZ8JWkQD63WKANfDU4sh9fFHov3vdAImDiE4y/61UBSlQJNDs4OGQopcGv3OhX6HNSpHCMSdt
 6jEbw1fR7SC2uO2Nzs6CeAsPJ2MvqMxdf8d4yuWQN6sSlFmGmeqWHugXb5LA7rZS/4hJEYIELYyT8E
 nXS6YXndtuypD2mCILIoW+tIMnzAx9ingmIu7m4tBuQ4l7wCzluY7C1g1enC/+ixeHXh+1yq+SKync
 Npx576SQ90X9YKgun1RZPSBPvWVrSDKF80VPxLw0S6f/KSMl03mIwULooPbo1bcX1UsmzNCkC//UAc
 vM6Lea5Srbr2hyen079yzpKzVR1a7KfosMKldpe0WUEW8XN6sYt/2rcMQyguwqpNb1jbd4pdWk4Ixi
 ykXFSkbdXziarDQhgWe6MInH869cD7xYasnAvtWyuxryZidSYx68CbbUnF/GGsome2AvewfrGD43Md
 MvyFso9OT4nXlPoJ6C2SUACtRyIuM6SvyWEylq0BRTjgaOO9atDRdoSynMK8vfT1b59Hytjg/C4RWy
 7+pfwqHi1fomk0+KMxL7XOxYEhNWkAfUawM5akvEoIqHX0UCuBSGc01ueRmyqX2n/EKO3sOWHFPiqb
 rA4zwq3KgSyIpiR/rAyZUI1wG1236xykviUnWQ6styY5xP2kLozze+jaYV2g==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the Display Serial Interface on MT8365, which is compatible
with that of the MT8183.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
index 8611319bed2e..a7aa8fcb0dd1 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
@@ -37,6 +37,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8195-dsi
+              - mediatek,mt8365-dsi
           - const: mediatek,mt8183-dsi
 
   reg:

-- 
2.25.1


