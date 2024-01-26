Return-Path: <devicetree+bounces-35407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCFD83D5EF
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:19:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE0CD1C26676
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68E5185C77;
	Fri, 26 Jan 2024 08:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jlAqrquL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA72C1BF3E
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706258305; cv=none; b=VbvDxjb1XgobLxidkk6Kp2YcZkzcP/SNh8rXlB6rwIRecO1GckV4aJ6cXO0lFxX13w5buO/VS9uxTVSZKSvfFSGAvwMeh1uvJXznH2fmL11NoOQFkqZzZIAvnY/YKI9vngZ7VT8xPls8gtjcu+xA5Tn6fd3HBsIrRIsogtraA1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706258305; c=relaxed/simple;
	bh=HDrHr2Mm2RpUpCdp9W2zvjhFzmQiCA8tVkPkSw8UHGc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pbWhAS5xaBGdUh0vtbfiyj+2aJFh6YSmPU0W5Dwtu0dANltxt743Y2bxOQOv0/x0jSafJgO7gmQXHEr4yNhI4+KagC9ra71nZfpyKvlMPOxAr/lEulqHqQGRsiodfFJksHQ+iolayr64wSLYl+dCfZbHPxi9IVZyGF+m4UCX7uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jlAqrquL; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1d7859efea5so3472925ad.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 00:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706258303; x=1706863103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GKzePUGiZpVCb+bUEgD2WbfAbzcapL4u7uh81bBR8VA=;
        b=jlAqrquLZ5x5UWtFjyvRkbPtjEh11wuuxgodyI1cVXF6u11qE0DDznQvgZXNJr+/AL
         zr5rA9WT7x1EeQBbEpvpkEUxvFEqb7AxGsNoPhV5Md3mFz4XcskSd93mAJE3rJTe9DiH
         BaIyYcNGcDl3ONSStilv7NCc9TglF2a7NBMrY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706258303; x=1706863103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GKzePUGiZpVCb+bUEgD2WbfAbzcapL4u7uh81bBR8VA=;
        b=nxwarGBIVYjg7dED4fYDavWqUCPEjG9l5CzkO4ayJqH8SvR6OSEqTnTxHOexCDNDrA
         l/GdC4krmxg6lHZl85hlXM2cCgoFEhzO97Sf9aEdfXl62Dv8iFAt8qX7nul4XKKMHnT7
         fnHw40ktMZHHsmeV1ED01svJgekiRqzoNKwq58gNN7kWqRa3Lo4PHAjelBCpMYYPYq7u
         z9gRFjXz/iQyvJJumMggf4IN6vvZTp45g7AFZGvUUkWDTFwLUlMUOB1V7OO8QCkhYFD0
         uLiyxKFwvmHExG4yDWkKsPGsKjlbWeEK07ido1PDeBMdZojuPyGAE4gCliFu5xvsottp
         CeGw==
X-Gm-Message-State: AOJu0Ywku0EmBwGRj8syagartfzO7rwdLdT+jeeAHFrvyHPAOo+DPpQ4
	3tUdEtqzScm13RwUHCmJ/PNIkFvRfr+XxENXLnSOMyu3Bb5iHUTTzf/Jc6UVBA==
X-Google-Smtp-Source: AGHT+IGoX96u4tjHCtE1Z/7U5hmcjioZkWhGRLyo7bwfK9lQa1gK/mT/fr7N573TKumHNoAFPo3xfA==
X-Received: by 2002:a17:903:1c3:b0:1d7:2817:a63a with SMTP id e3-20020a17090301c300b001d72817a63amr1016382plh.19.1706258303293;
        Fri, 26 Jan 2024 00:38:23 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2614:bbbd:8db2:1f54])
        by smtp.gmail.com with ESMTPSA id b2-20020a170902a9c200b001d6ff1795aesm589529plr.8.2024.01.26.00.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 00:38:22 -0800 (PST)
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
Subject: [PATCH v5 4/9] dt-bindings: arm: mediatek: Add MT8186 Rusty Chromebook
Date: Fri, 26 Jan 2024 16:37:53 +0800
Message-ID: <20240126083802.2728610-5-wenst@chromium.org>
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

Add an entry for the MT8186 based Rusty Chromebook, also known as the
Lenovo 100e Chromebook Gen 4.

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
 Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 23acfe5ed940..385bd2765626 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -235,6 +235,12 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
+        items:
+          - const: google,steelix-sku196609
+          - const: google,steelix-sku196608
+          - const: google,steelix
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:
-- 
2.43.0.429.g432eaa2c6b-goog


