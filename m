Return-Path: <devicetree+bounces-21223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EC4802D6A
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:42:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DE15280DBB
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC55DF56;
	Mon,  4 Dec 2023 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q+w/Ns1r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 833F3187
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 00:42:31 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6cb749044a2so4524180b3a.0
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 00:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701679351; x=1702284151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/aA6QuGxbpfyLA8GoL1DX22vu6yZybaikV0/22DbGWE=;
        b=Q+w/Ns1rTUgFW+FgUX4cYk0cD9vzyT6rfXCVAcQf2i8NmvWYbEDoHHehxK6oGN9cxW
         /BvRSaTs9rJOEzm2gFX0dUEluVPxMhHhU/rsAukuxdRb+Ga5xcNHsqoYLSnOp+Dv2/aR
         4WDP973C2tQ3gQ+ikQx35+YcQO7EDAkLoR7xg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701679351; x=1702284151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aA6QuGxbpfyLA8GoL1DX22vu6yZybaikV0/22DbGWE=;
        b=ZMKyMQTflPhYeN3wrEY7dMN9BgANFIwbQZzd1ocaR0vu9klq8gUx0QfRhg2Hrqms5J
         SuO9Lz1AjOr+7ZvHzPsynpkgbErUp5QOK2J21dfzxx5XWxn4hVGZwivb3qiaHqEX4KXN
         f/4bgymZhs7gGFhBthBiwScD0JvAQDp1jTwCER6Jp2gH1oSOeZb2uX9jstmgpjYyfJea
         oOkLBdLL4tQIF7cy/HTz7riLVMVhx4jY9mWUZHZ1QPSsjlbmbMqnL8OzHCnfFcf6csut
         0L0k/h9EySmT2Q3FPQh3H5kA9SVdyBlyh5F/uGgPV/SRPOC3O6yGQZQauAiDe7RP3xB4
         uhSQ==
X-Gm-Message-State: AOJu0Ywo2iFO/PyX+b9Gp8bYswydC6y6HAk5rZW9uZuh4a6QYuz9VNy/
	GQ4M6/gGx1U0D0iuZK4v88yb0w==
X-Google-Smtp-Source: AGHT+IHHys4G1j0LzvAtyDH5r6jNjBqc4C4gAmcOTNfRgLJLRIorxSqsekbLtM7ag3o9PDZsFhb5eA==
X-Received: by 2002:a05:6a20:4298:b0:188:444e:2b6c with SMTP id o24-20020a056a20429800b00188444e2b6cmr4840529pzj.49.1701679350992;
        Mon, 04 Dec 2023 00:42:30 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6084:72e2:9ac2:f115])
        by smtp.gmail.com with ESMTPSA id p14-20020a1709028a8e00b001cfc3f73927sm7871795plo.9.2023.12.04.00.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 00:42:30 -0800 (PST)
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
Subject: [PATCH v3 5/9] dt-bindings: arm: mediatek: Add MT8186 Magneton Chromebooks
Date: Mon,  4 Dec 2023 16:40:07 +0800
Message-ID: <20231204084012.2281292-6-wenst@chromium.org>
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

Add entries for the MT8186 based Chromebooks, also collectively known
as the Lenovo IdeaPad Slim 3 Chromebook (14M868). It is also based on
the "Steelix" design. Being a laptop instead of a convertible device,
there is no touchscreen or stylus, which is similar to Rusty. However
Magneton does not have ports on the right side of the device.

Three variants are listed separately. These use different touchscreen
controllers, or lack a touchscreen altogether.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v2:
- Picked up Conor's ack

Changes since v1:
- Reorder SKU numbers in descending order.

 .../devicetree/bindings/arm/mediatek.yaml      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 85d394e390f0..155ba22e2ad3 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,24 @@ properties:
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
2.43.0.rc2.451.g8631bc7472-goog


