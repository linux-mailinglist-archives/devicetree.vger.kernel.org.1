Return-Path: <devicetree+bounces-35408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5393383D5F1
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5B00B27015
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04CE86AC7;
	Fri, 26 Jan 2024 08:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Uqnv5vEc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD498613C
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706258307; cv=none; b=uSv0eaXCuUW7RtveMMNswLDEYsuMcjMG9PGM5VXHpWw5Z+MAph07LXyp2gH3hULDLsp3G3ShMsAn5o+1ERBhRJyvz7dDYPd3W5QW7aDE8GSPa0qy+XX8UwgnbZC+Q3trwuYKYlankQ+3vD9Fc+Y4zsUInghPDCUxgQVIN9TY2og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706258307; c=relaxed/simple;
	bh=2ET6gXx2WDcj/tTCYQs+rCB8w/NgFBj9M/d+V4yzwcQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FnM4rBjooE9rqnTaS+EugBcVm0YppafwGgQUXiW6shQhyO3SktbwZSRF23itEiOmhCtM4fKHfDRNoxGLerRNqNcvya7C3HC12ZFZ3WBYmlfhdGJ9h59/mwXoxSnw4H3VSCVMSZc8qcgJUirz2S/9wnf2GqBRB9wCGHIXILxKvAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Uqnv5vEc; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1d711d7a940so1130445ad.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 00:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706258306; x=1706863106; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vOQ3ZMLM6BNgqZNY26VIORkirN4X+ohLlja4VMJ4YDQ=;
        b=Uqnv5vEcEQe3ejRWemwagBL/VvB5hXWXdD3y527q/llf8+4D+M+/7Sl5D9XK6vo1vx
         D6JCY8fJswT5igky3KqZ+yVTRiyY5KxrvZ7sUxxHJY0RXsKbAA+S2HfGJQGyYmcylwJr
         rAs82B0qi+dagXy4xzMJQ4/5a/5MDjTX5/xVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706258306; x=1706863106;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vOQ3ZMLM6BNgqZNY26VIORkirN4X+ohLlja4VMJ4YDQ=;
        b=j37ZEfPh8CkLF7254sfAIj+2Ew/xd8bAtqzx+j3XsCS80mM2WIYX6krHIv+U3eHL7e
         Emudkx6erVutQxHOBB4XRdonZ/4ntE5SJtscNRxKu31ns/3u+4UglK9PrqPY/RCnwUz8
         qiAHwYr2NxezEOIjYHC+42axfpdR+dfYpFC+K3iF8BwwiuDZHXNAS0SHslZU4cSRgRbE
         6DvA8tuqiOz2s6eplsNXhfEpBCO/TQ8q6URAWNVyBFBM7/QbMpXgiELY1dpLGT0ZpVtX
         8MEhwcU6D3qKtgov0M6wOAa4Z2MM4MlGjP1ghVQhVBGtnTSorJMdwKsIkKgr6BIySjef
         OKTg==
X-Gm-Message-State: AOJu0YxpgJ5NvT6Rd2cTEDnPMm1YAqF6pOECOf/dbunOboVUzcnrab00
	gHSE3x52kiUe7KDbfNUbJW/3NdUwQ82+DgjLKPcnwf4g4W7rQ8Tx3jTpcSwRAQ==
X-Google-Smtp-Source: AGHT+IEdU0jjp4x1vfdUDk27VzbSzMJV7tHx5EPjaW1ZDfrbybo5kZdbWLoY7h2ux1gijzQ8/dWEiw==
X-Received: by 2002:a17:903:22c8:b0:1d7:c27:2d32 with SMTP id y8-20020a17090322c800b001d70c272d32mr1144102plg.12.1706258305852;
        Fri, 26 Jan 2024 00:38:25 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2614:bbbd:8db2:1f54])
        by smtp.gmail.com with ESMTPSA id b2-20020a170902a9c200b001d6ff1795aesm589529plr.8.2024.01.26.00.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 00:38:25 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Eugen Hristev <eugen.hristev@collabora.com>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 5/9] dt-bindings: arm: mediatek: Add MT8186 Magneton Chromebooks
Date: Fri, 26 Jan 2024 16:37:54 +0800
Message-ID: <20240126083802.2728610-6-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240126083802.2728610-1-wenst@chromium.org>
References: <20240126083802.2728610-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entries for the MT8186 based Chromebooks, also collectively known
as the Lenovo IdeaPad Slim 3 Chromebook (14M868). It is also based on
the "Steelix" design. Being a laptop instead of a convertible device,
there is no touchscreen or stylus, which is similar to Rusty. However
Magneton does not have ports on the right side of the device.

Three variants are listed separately. These use different touchscreen
controllers, or lack a touchscreen altogether.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
Changes since v4:
none

Changes since v3:
- Collected reviewed-by from Angelo

Changes since v2:
- Picked up Conor's ack

Changes since v1:
- Reorder SKU numbers in descending order.
---
 .../devicetree/bindings/arm/mediatek.yaml      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 385bd2765626..2a2ca4756bca 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -235,6 +235,24 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393219
+          - const: google,steelix-sku393216
+          - const: google,steelix
+          - const: mediatek,mt8186
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393220
+          - const: google,steelix-sku393217
+          - const: google,steelix
+          - const: mediatek,mt8186
+      - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14M868))
+        items:
+          - const: google,steelix-sku393221
+          - const: google,steelix-sku393218
+          - const: google,steelix
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196609
-- 
2.43.0.429.g432eaa2c6b-goog


