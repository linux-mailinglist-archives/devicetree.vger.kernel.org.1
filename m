Return-Path: <devicetree+bounces-126866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1FC9E3698
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 10:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C64212812DC
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 09:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8C51AE861;
	Wed,  4 Dec 2024 09:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HE0Lpkgo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C2D1AC884
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 09:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733304548; cv=none; b=UvK7M9nun6r/zpWSSS+i1nC6qZ/qobJ9D065zCK4x64Ic3kQsT3I43Xg/tBrwYyA8UxbS0vObhshzhkLXhT2RapD3Vwba+WN2SUeRvcgp9rZdA5aOrCflWIOwNJt2mg4AWtmov6bBys9IaceL5nw9oNQrxXWycX+c4EV9z7XWhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733304548; c=relaxed/simple;
	bh=BuT/7nos5URevs5nXU7ajsEIN7CIlXo3ltjg+xI8Y04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iQoyIY1hf9K7foKj6/H5jZXoipzwjq89mVCQZ4r1d73o6MjV9CQAQ4DH6XWJ8Rbi0nVfGVv80bHY35p+kXSdofS3+0tba652rKpqEosmp5wGaIqep8PbXU/dpF+McG9RrR7k/f71dYFhSOP9IGn5Sd21+J+whfCmFDL2gZr6Mgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HE0Lpkgo; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71d5476ebb1so2992675a34.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 01:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733304544; x=1733909344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3a2o2nbwJCPSnXwOfL4XIKrCkhJXnP+2FlXfd5kTMs=;
        b=HE0LpkgoVheOfstNCMMGYBGbRCebMj76iPNB4UbUQfuTpqfpSpblRueQcjNleZnWW3
         r4Ibbr6NyoetusNJX47Jw+MjfWMRgvorgBly0s4yRNXkIzw+B7z+5evqRlEoIxoSeTCf
         RIG6+m3heeDthOd1gWGcC4B78hICp80PGnn/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733304544; x=1733909344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3a2o2nbwJCPSnXwOfL4XIKrCkhJXnP+2FlXfd5kTMs=;
        b=Inbj+P9Fc2KBb9jQwMwITjOOaBPZ9UvKCEisrfI6hcCAvZUEjzOukRv6NDcwL1cPhf
         vTw1eDY8vE5crgzjz2Q/lxj58tU+2pk3fEVmYzvDPkaDjYTA2vMrp2Hd/c0MU4N1Odz8
         dAmC8CqC5Qxy+xfXhBIuUare6paxkHNPYwjuIJl9yKLw3X1Gq08YQcyG7Z93N2eCzMbL
         Ln1rK8dkdx4CuQmcbIfJNGhY1MdA6+A3grOn0SmmA7hdDiOEn5yRkbdv8yaQj2SD5c+6
         lty5V4ZLHWGtnkMXa7MhgyZDayXOWlyp1S5FF/omrDE444YASo5YPcdmhOL0i2jZnISa
         0qNQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4gaw0LSLmupoKGFgfnGXBQw13bHpBihK6xfuvexnTt1WgoSPFFpy/51zxEMBJg58W1vnCby1Y9NcB@vger.kernel.org
X-Gm-Message-State: AOJu0YyiKVS06j+SBRoDSHMYuQP0gPrjAKAn2tzvMhC8eHthO9hmBT87
	3wjLBBe4cWFuda0CBxqEC2YpXks8C6X/kM2PJGu4pNJhSBO+E2T0xMIcD5+WyQ==
X-Gm-Gg: ASbGncvWmMybiLK1K35D57IUD2BJBVOJnJSWflxaXsHme9SK5ZgAqcOTZf62rnzI/a8
	u6LjjZZbZTU1pez1qqTwiVxKTYKKj1s9b9+ogT3GbC+VW8CHIlw4g++cBsWu/vdMkG5yASKto/v
	0igJ7OyTIlXECudK5qFe2wHbLnERSNPDbhk78NPWNW0csfgLMy+jq4WuUGEoCuBZzwTCaTG9xjb
	aztkpVfez1EHIS0nzGgfgOhXiYj8+mXDomPhnwOHwFyGSdScLN/VU2SkHwmmpf/97bQ
X-Google-Smtp-Source: AGHT+IG2OOr+DFMkoVU9c8r19W+ABIjfnQAct57iSGJbN6PcBsKoE81tPXls96jiKM1xKEyUQ5FchA==
X-Received: by 2002:a05:6830:2045:b0:71d:5b70:41bd with SMTP id 46e09a7af769-71dad610b0bmr5596609a34.12.1733304544427;
        Wed, 04 Dec 2024 01:29:04 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2eb1:a68a:2625:b944])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fc9c2d38dbsm11049024a12.15.2024.12.04.01.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 01:29:04 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Chaotian Jing <chaotian.jing@mediatek.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wenbin Mei <wenbin.mei@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Andy-ld Lu <andy-ld.lu@mediatek.com>
Subject: [PATCH 1/2] dt-bindings: mmc: mtk-sd: Document compatibles that need two register ranges
Date: Wed,  4 Dec 2024 17:28:52 +0800
Message-ID: <20241204092855.1365638-2-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241204092855.1365638-1-wenst@chromium.org>
References: <20241204092855.1365638-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Besides the MT8183's MMC controller and all its compatible derivatives,
the recently added MT7986 and MT8196 also require two register ranges.
This is based on the actual device trees.

Properly enforce this in the binding.

Fixes: 4a8bd2b07d88 ("dt-bindings: mmc: mtk-sd: Add mt7988 SoC")
Fixes: 58927c9dc4ab ("dt-bindings: mmc: mtk-sd: Add support for MT8196")
Cc: Frank Wunderlich <frank-w@public-files.de>
Cc: Andy-ld Lu <andy-ld.lu@mediatek.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
index f86ebd81f5a5..9ea035928563 100644
--- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
+++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
@@ -235,11 +235,18 @@ allOf:
       properties:
         compatible:
           contains:
-            const: mediatek,mt8183-mmc
+            enum:
+              - mediatek,mt7986-mmc
+              - mediatek,mt8183-mmc
+              - mediatek,mt8196-mmc
     then:
       properties:
         reg:
           minItems: 2
+    else:
+      properties:
+        reg:
+          maxItems: 1
 
   - if:
       properties:
-- 
2.47.0.338.g60cca15819-goog


