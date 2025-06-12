Return-Path: <devicetree+bounces-185143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93183AD6977
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 505BC172F52
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C2EB22172E;
	Thu, 12 Jun 2025 07:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GqUHbFbl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1605522154A
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714565; cv=none; b=SKn9hb1NZMtDYYd22SVC6fMW02Zxzt/ILTR9Nz6TLbCx8QFUFDYAJwOOOJjr3izN43yjm2fzA5n3MCyGCWq1AMDsVPAllNrgCBSnzS6iIiC/yoFoohmomwV4qpOc829l80HrkQcLdW/o7Ce5hsBu3rlKooPb0NU3CavVxGSWpa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714565; c=relaxed/simple;
	bh=lybc9W6Ru2g35FCl7tbh/0HER58S9785YR+C4VsyJks=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g+3uNkpcBHalVxYWPCR47zNA/v1BMjv23D7ZwrCfXFbPCNtLNVRaqkTs7Y1EMGyke3PfsA5fECBu+hcxbom330kip+9+DJMeKeGTszW06hZK2fPh1wiqvMPiiz3XRwBX12PddVi3ggz+2c5Ch2Bb3UsCEbHxnTjHjYFB8HDKjfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GqUHbFbl; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2352e3db62cso5922745ad.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749714563; x=1750319363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rmXxgdE5Y76+Q2Sd3HDIMfBzQR9l3cd66jsguV0wzs=;
        b=GqUHbFblYGohkfQRjGfR1legR6wNquH5dFtmetAN1T8hhsJixH543l0elRO7f6XddV
         y35p95+H34d1gEabntLOoLL6w8U2ML6xVRgzeFglzCscq14KVLm6/JIfeYpWprji7NKO
         QI/QmhLmdzI4IHUC2gelYhP1rRxIk02b4yNUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749714563; x=1750319363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8rmXxgdE5Y76+Q2Sd3HDIMfBzQR9l3cd66jsguV0wzs=;
        b=nMxgetTUOMvu0KnkMeVHRpRRRfI/RwxXqZjbnGbKpUPB/ZKrBh1MGAgJGuJW+0Jw4J
         akyJfDct2t8CvSqB/cwMA3ouJisFTZTaNB1F2OnuZLFzYOTcO4x8z5GuuyZvWVCed8fj
         rr6/bTog9okmdu3zwYLR1YyXrTxvJnrXkuDE1vh01f4/SKD1yeFzzQporuDxAMgj7dA4
         6FPfMNGN8st0Pd9+VZc3gq6axU0tiezVoo8PI3qrL8wo+0Kd3Pxb6gBvzF64Ywjmz9u6
         P4kmX/wFSr65hYkPuaCxvuq6THGXkmKYm0RjP3pK/5okZIlMnL6TslgP8xYGNswfN17E
         eHHg==
X-Forwarded-Encrypted: i=1; AJvYcCX6J6HVXoXILb4cDGtCWSJyDSIu7Ea77Pn2c/mCkc45g6NkY/kI0UAR+CCeRJ1YxF8iq6SNHiCOfudJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzR5hxAYmrNZkt0cV9CKuM2QBfTKsI3YRPtTLOO0N1v54zgRREZ
	AQAr2sypjuEHiq05vllH6BWCUBvmpwe7V2+FTJIjwYj+qMT0lW2Xu8kWzAiOeJx4CA==
X-Gm-Gg: ASbGncuSvg9owJCJfiAiw6uF8dMyYmwymPsyw5MfIMP+wxC2CI79g+77XaT/RwvHi9i
	GakriGBl/ifbhR2kSf7MH7JKDGgQdW+b+rm84D+XsJdnDmcHhSbjfQuMQ86aRe2r0obSkgsv+ae
	SQfdc6grF6MIFiYScQpTLDyob2mqVFrIBu5DIkW6Cpdx+IX1apgj8LiGxbQxrkpH/dEPo55Bxdh
	SmNj5OGo9l/gbiLsG40ih7lPxlR+7QAsNMwJBeswO+6YCLSRbKPPN/4I1dpPzzaifIXJFy1ZiCm
	s8gUkRdfXq5t4kdGWAR6WhdPaAigKOdmmBPwCOyXu70+Tbt71pmRs8Mq6ymO5455iP8X3r7mvrV
	p10Y=
X-Google-Smtp-Source: AGHT+IETZGBfj/YzdDSsonxEfwWc/CcthND9zSTKGdklyqrJnMUaY4T2coeXgqpNXh9qqeHQt9lwGA==
X-Received: by 2002:a17:902:d2c6:b0:234:c65f:6c0f with SMTP id d9443c01a7336-23641aa245dmr76936875ad.8.1749714563347;
        Thu, 12 Jun 2025 00:49:23 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5b9:e73a:2e58:5a47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e63d42esm7893295ad.74.2025.06.12.00.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 00:49:22 -0700 (PDT)
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
Subject: [PATCH v3 3/9] ASoC: dt-bindings: mt8173-afe-pcm: Allow specifying reserved memory region
Date: Thu, 12 Jun 2025 15:48:54 +0800
Message-ID: <20250612074901.4023253-4-wenst@chromium.org>
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

It is desirable to reserve memory for the audio frontend.

Allow the "memory-region" property, to be used to point to a reserved
memory region.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml   | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
index 666408d32f5c..d8993b5d457a 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
@@ -48,6 +48,10 @@ properties:
   power-domains:
     maxItems: 1
 
+  memory-region:
+    description: memory region for audio DMA buffers
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -90,4 +94,5 @@ examples:
                        "i2s2_m",
                        "i2s3_m",
                        "i2s3_b";
+          memory-region = <&afe_dma_mem>;
     };
-- 
2.50.0.rc1.591.g9c95f17f64-goog


