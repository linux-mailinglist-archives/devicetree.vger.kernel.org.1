Return-Path: <devicetree+bounces-185144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40012AD697A
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:50:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E2457AE095
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B887821D5BC;
	Thu, 12 Jun 2025 07:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gymkjwyh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2E0221F1E
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714568; cv=none; b=nEivHwyGwx7uSuEn1LNFh8gbnJC7yRN2J4Q77ocPtjymvPSubuIYJpE+LzcKcf9RoqMBG5YWkJGzw9sbwmaD4Qy/qU2fXfx7sGZZoXs7J1Je/G7POeESvrNDtgd3xYdAxPSmVQq1erZ/8yQJAYL9U6mo6SFwTGcGwQ2Vo/lLLFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714568; c=relaxed/simple;
	bh=GB/p/LNUInAZmB/jmWxOOXaF6ppDZpt2N2fwtIwapzc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M7JIiJMWuWl1G2sn8KHiFoU+KNprEE39ZIRwYxSj7tbevPImf/8XTyJu+JKnr/DS8hgJSElmP/lxTtReJpNXgpE+E7POdNt1uDhuEbrEr8EcVN4D9UuFQ4dDlRustUHdOJNMgmzxGfnhIGnBO2YEV8C71/OVc84SJVNkznlWkc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gymkjwyh; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-23602481460so6728215ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749714566; x=1750319366; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qw5Lgt5fODmZWlZ1xq501GDoPtHJnRW5D55nCqbrfp4=;
        b=gymkjwyhy1Bb7Ebnb1EQ8Pm7FjBoDvQEMRQLvIB2zK0o6p7HSm42UPnPCdVXPlJ1eL
         72YeODFwANy+sGp2O3Nt4nirVDNSO82Xch1x50A3V6ID28R4RRm3DNrOmMuQLofpigIO
         QEGVaug2vVsAT0vyTkxbX3uwG96bgcOHjkITc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749714566; x=1750319366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qw5Lgt5fODmZWlZ1xq501GDoPtHJnRW5D55nCqbrfp4=;
        b=l5a4+sGrDMhbLtQik6pX5VPOMh5uk9Kx7Lazc/Mcgmhy4Yd71qQV+ADb6fOwSCKaVM
         W1/JxA8+cKjMoIFaC4ONvMiPb59O0mP3m5WUneDvmX0LlwJ7i7pLAlWtkT7/S660737t
         NqQ2DSg7SaYr5BKHySaLP7GSgzM5/eJZKIOAksFYYb6AXTyibb5NRj/sEgMLf3h+zfHJ
         lhTNNgdsZ0rFz3y8UHQHGAqWMTjVoYbjSOK0EvaQqHe1gfUy1TBiPUl7wV+xeqP6z1BU
         zUEQbjj00lmdwB7Kjzm5EhCJte0zKK/H3kaguCcyuhilOugLx9fHtn2z6Hib3rdFUaeX
         KseA==
X-Forwarded-Encrypted: i=1; AJvYcCUcLPPOGQQ+gsSoE6QA1xiCy04T3EkB0N9qRoji8yUG2qfUYF5l4sNlZcV2GMpzgd1u9rt/fIBSzLgN@vger.kernel.org
X-Gm-Message-State: AOJu0YzL6Rr9r7kvUCxAFXOcIMu0F/Ewoh2uxsbXI18ygDeNZPehrg4P
	XdnpP5L5eQfddjdaFaBN1S1P1/g5/nGT14hylrAHbu2jwWLBBpO0hkVb2js9msSQOw==
X-Gm-Gg: ASbGncvqVKVQzWpF+u+/mMdKJ41ReQkYcBs3rONbEUKpL6CGzwZ5dorNki0KAYUHwgY
	ZIGrbTawKuLWm+Krdk+/0M8lOwR38toEQWiLZshJIP+NMLuOzxopXbCLFt0eq8AsaoONzC6gKm0
	7xEgfEgf7EPhN0HlCy0N47yG9bgkNCVvIrrDIr8NF2A0/h7UpphJvitqf2YluJMWpJb9OsBk9Us
	hYKw2uXPYXoYPPpWATOhKKaoOliQ47yp4Wz02LyIdeX3SWi8oREH4+xqbSDZWkbC+OMxqKJ2Hgj
	I2ZZAKRb8ppRoU8s8fBMnlX1yRhqWtAru05sF381ovyXc/E7HI1SCcCtLiRrF26HnQKEIPyA022
	lxoI=
X-Google-Smtp-Source: AGHT+IGLmVy09OL49mJ9w79Slu0toVZtoekmlbumEh4gtf04pg2yxxSPvNOvb9XVQc/93dY7TLT9gg==
X-Received: by 2002:a17:902:db08:b0:235:f632:a4d5 with SMTP id d9443c01a7336-23641aa22e5mr78622785ad.9.1749714566433;
        Thu, 12 Jun 2025 00:49:26 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5b9:e73a:2e58:5a47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e63d42esm7893295ad.74.2025.06.12.00.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 00:49:26 -0700 (PDT)
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
Subject: [PATCH v3 4/9] ASoC: dt-bindings: mt8186-afe-pcm: Allow specifying reserved memory region
Date: Thu, 12 Jun 2025 15:48:55 +0800
Message-ID: <20250612074901.4023253-5-wenst@chromium.org>
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
 Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml
index 7fe85b08f9df..f5af2cf18158 100644
--- a/Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml
@@ -25,6 +25,10 @@ properties:
   reset-names:
     const: audiosys
 
+  memory-region:
+    description: memory region for audio DMA buffers
+    maxItems: 1
+
   mediatek,apmixedsys:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: The phandle of the mediatek apmixedsys controller
@@ -170,6 +174,7 @@ examples:
                       "top_apll12_div_tdm",
                       "top_mux_audio_h",
                       "top_clk26m_clk";
+        memory-region = <&afe_dma_mem>;
     };
 
 ...
-- 
2.50.0.rc1.591.g9c95f17f64-goog


