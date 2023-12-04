Return-Path: <devicetree+bounces-21221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4CD802D68
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:42:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81CD81C209FC
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ABBAE552;
	Mon,  4 Dec 2023 08:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="f5cFI+JP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1113F101
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 00:42:27 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1d075392ff6so11371445ad.1
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 00:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701679346; x=1702284146; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qOBfJHT1+5PjLRRaf9qTSuTN75gznyCQLWs4A+G1fg=;
        b=f5cFI+JPUTacsJVpLQ6J8Z9BoPQdVjeaa4bGVfUvdaas+RiLvoXKSE/Jk0pVtUNEmt
         mei1+NOEJbEsy8iW5jphnrNEacqexJsO1TGYeP/y320gFZFu6xyMchvHzTR7Ft8q/1II
         D3+Z9W4ym6nAITEiZx2wI3QfhMgVWCEwZ6W/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701679346; x=1702284146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qOBfJHT1+5PjLRRaf9qTSuTN75gznyCQLWs4A+G1fg=;
        b=NTmV3JBvdTHB83FwuBeozSpUGCjUa/vejAXzcgwOL4g34dWb93KqVK5hs7h0F6nnJ4
         EbK45fEVRMcl5ZF4V5W5bf2CxUk4HJTJsko/ujWtju/0dh0yhyW+hYw3VQ8HtWNTjCgu
         dRYXp7VQjrgv8eIRgk6PHCL4HUcTw2t9PSUkKf2sHBMGRrI4KJibZfmWOseB3xomwwmJ
         7wxxBHVB2U7fMNH3q5bUIlIciAqh2Y4apSnG6tfors6hfxeQS+2Ddkn7rntTZK+kyGs+
         jMCY8LMiqubakmOR5h6NchqmjtvLslyPfnaM59mf9n/z3HWGoBAjeSN58wPmKXzPBBxc
         UnpQ==
X-Gm-Message-State: AOJu0YxTThgnGH5rL+lAKOBHEBVmH8kYmiEx9e6FXXoaW+76o9kflqMf
	sQ0o9DdxVlln/g9Vf55Ne5st+oPyxpAmaEomwCo=
X-Google-Smtp-Source: AGHT+IH3r/F4nbYXPOG1kQenYe0KwmiblO2QhUP+W7XTVCgN8GlIr5u5FdgB35I5wSnpXh/9x+QlNw==
X-Received: by 2002:a17:902:aa48:b0:1d0:6ffd:6120 with SMTP id c8-20020a170902aa4800b001d06ffd6120mr3339981plr.66.1701679346161;
        Mon, 04 Dec 2023 00:42:26 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6084:72e2:9ac2:f115])
        by smtp.gmail.com with ESMTPSA id p14-20020a1709028a8e00b001cfc3f73927sm7871795plo.9.2023.12.04.00.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 00:42:25 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 3/9] dt-bindings: arm: mediatek: Add MT8186 Steelix Chromebook
Date: Mon,  4 Dec 2023 16:40:05 +0800
Message-ID: <20231204084012.2281292-4-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231204084012.2281292-1-wenst@chromium.org>
References: <20231204084012.2281292-1-wenst@chromium.org>
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
---
Changes since v2:
- Picked up Conor's ack
Changes since v1:
none

 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 709a1292bca7..95d2b430ab17 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,13 @@ properties:
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
2.43.0.rc2.451.g8631bc7472-goog


