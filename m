Return-Path: <devicetree+bounces-35406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D527783D5ED
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42406B20EC3
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02AA782D7E;
	Fri, 26 Jan 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="oI20iQfW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74088823AD
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706258302; cv=none; b=dn200+haLociXbapTIID+F45iZ3TYJHFwu8Tw6Q0f7fpr6kTjnZw/5fXt3UTXl8vvSW5rBSwuQfTeLUAtvT2aTy9MaFgJC5UJrHEqdcvR/MHV6B1M+goakMlanVt4dPl+lFegRcuapN3rr+vrFbIxwscD1pZsZbDqaiKQqMr/hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706258302; c=relaxed/simple;
	bh=LqtmnevtRTioL5+MOiNaOXN+tA7khuWbKstLdYSQFgg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uiF3x370bzPfqUbALdS4nkqQZttZ/KvLnqaDxwpI2jEcojsmHxnNzuSDdoxLHPQk3yo3HlAZB1A6u4iGHbuTR9YVRuDLuY/sot1bACmRKblcrvFBWWr/oZganA2OQB+tIYE3jnHvu89EeuF+tTJZyFaX8YC7hPqWXTi5GF58Ht0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=oI20iQfW; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1d720c7fc04so687125ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 00:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706258301; x=1706863101; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7oTTl0kuIE0sGIGedIYHJhdAzFdP8/kOBtYd/88i2hU=;
        b=oI20iQfWzNsRzBaonQhdrGF/221IFjzkqHF52fyBlGK/6nniIMHxPgvvKRiwMcd7cc
         Sfd6tCUMzKLV8Mt3W+poJT8UW7jwrlIkdyF4MD+oSyuEQ+/tX/8LO62+/vIaHdqexaVJ
         BNYhvTbetqYnfFYUyOt12oQdKUPE/IDg7FO7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706258301; x=1706863101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7oTTl0kuIE0sGIGedIYHJhdAzFdP8/kOBtYd/88i2hU=;
        b=hNeGIU+pe9Gx9CzF3oRKUy5LBbKzQSNz1uTyEneqh1WXRET0e2s4n0mtRV3HzCTyoF
         oMP2XtPceOeVjSy1pMoyezLmHdaxDcJnbnToCOdz8Nlia3nARyLpwEixgYpaQWZk82IK
         mcpS80smqvbBMtRbg+5VNRbPaOX3MG4ffOux/RWIvX9YqJeUQxnYisJ3cRSR+GufORMd
         npBfT+ngXTmnJnM3FRQBCnAYvO9Bnx8z8CiYSIVDeZQIVhVr86iyfdHMs4glCHzYuTH8
         AKGV7qcFU4gL5AmiYcap+ur90vQm50JJcImkf/fyLzm9ayETt1Z4uoYpT8iz3RVP6cAT
         ZNsg==
X-Gm-Message-State: AOJu0Yx/YRVDVi1+zVB7ZBqhEEGd/Qacgn5fr8cbdrsfQrSm/61GFTEN
	z8DmglNI8B3g6jR6RMnAbwEx84XigQSYtlAfm162OkqUg/hIMM5PO42T6+g8JwJz1VLDo5Uqtj8
	=
X-Google-Smtp-Source: AGHT+IETHH1fQVURJgrJ4iOrJNkKJ3noS96sIPlIi5X44S4MZUtWIcs1NtUNftj3yuO6DgF0WGtHgw==
X-Received: by 2002:a17:902:c403:b0:1d7:4d4f:db24 with SMTP id k3-20020a170902c40300b001d74d4fdb24mr944475plk.0.1706258300840;
        Fri, 26 Jan 2024 00:38:20 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2614:bbbd:8db2:1f54])
        by smtp.gmail.com with ESMTPSA id b2-20020a170902a9c200b001d6ff1795aesm589529plr.8.2024.01.26.00.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 00:38:20 -0800 (PST)
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
Subject: [PATCH v5 3/9] dt-bindings: arm: mediatek: Add MT8186 Steelix Chromebook
Date: Fri, 26 Jan 2024 16:37:52 +0800
Message-ID: <20240126083802.2728610-4-wenst@chromium.org>
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

Add an entry for the MT8186 based Steelix Chromebook, also known as the
Lenovo 300e Yoga Chromebook Gen 4.

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
none
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index d9fdc1196b10..23acfe5ed940 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -235,6 +235,13 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
+        items:
+          - enum:
+              - google,steelix-sku131072
+              - google,steelix-sku131073
+          - const: google,steelix
+          - const: mediatek,mt8186
       - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM1402F)
         items:
           - const: google,tentacruel-sku262147
-- 
2.43.0.429.g432eaa2c6b-goog


