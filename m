Return-Path: <devicetree+bounces-14778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEF27E6760
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 11:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4826B20BA2
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BC1156F6;
	Thu,  9 Nov 2023 10:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="V+U3PVkf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA7313FE3
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 10:07:09 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C7D73252
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 02:07:09 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1cc1ee2d8dfso6248335ad.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 02:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699524428; x=1700129228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ireTpCfN0lAkDpS22SoHjbEWTJUzLlFEUnZESQj8kY=;
        b=V+U3PVkfF5uxOrXpN8BVULqi55XRpztj0ymrjnICLVyJmKd10JQNEw0fITvjirFT0S
         kik+ceQR3+ctMCdte0jR42wXZWRkoVmrmRqVtcCGiAdVfi/krDrfZC9zTyL2/U0yP2EW
         xRwymNhHUdCT7ZuaIklIrRPeOvpXWr5Vn05ZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699524428; x=1700129228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0ireTpCfN0lAkDpS22SoHjbEWTJUzLlFEUnZESQj8kY=;
        b=pn2qmMnyfVwDUuaUBPXHQvv/I+A7+O+/fxylLMVxixk9nqe0CGxxQjOYoiwVkthNON
         Pi6PDaCrZjJtSxtg9t5AF2+gxeyJzQZahSXr604qHJqD1cJRJ0pEKQJmyU7FtPoKwki1
         gTfdXqQW9ODdHCY58bBbaEMU1rjsiGwDgOsksevoSbdx5A7gRr3K5pkdqiWm5doIQj8y
         OUBnze92NpA+5jVSLB5faUF6XdGCyekvHVM6cMWJ3jo4mndzAurgqiddikWjZ4XnmSJM
         kFO9FFLdNPwkPDiclXt5Non63SYz20bIDddMrYzXtc/EBXTpCNMbjCmmEholHX9jb37J
         Ik6g==
X-Gm-Message-State: AOJu0Yx6jgZfjvkYiFCsOG3HEVv/teznRAZx+0OV7aCZIxOUriOzRKtL
	bcf8lxbcsV/hN7xiutcHTiUe4Q==
X-Google-Smtp-Source: AGHT+IFYLvEMMUZ9GrbH908WNtQJvicj83HyjofOmfRWFZrCflNz7TaOuy+rHHNosFSsiJ8aNjo+JQ==
X-Received: by 2002:a17:902:ecc1:b0:1cc:2ed0:5ab1 with SMTP id a1-20020a170902ecc100b001cc2ed05ab1mr5039394plh.17.1699524428617;
        Thu, 09 Nov 2023 02:07:08 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6f57:d4c:468c:5daf])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001c60ba709b7sm3127511plg.125.2023.11.09.02.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 02:07:08 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	andriy.shevchenko@linux.intel.com,
	Jiri Kosina <jikos@kernel.org>,
	linus.walleij@linaro.org,
	broonie@kernel.org,
	gregkh@linuxfoundation.org,
	hdegoede@redhat.com,
	james.clark@arm.com,
	james@equiv.tech,
	keescook@chromium.org,
	petr.tesarik.ext@huawei.com,
	rafael@kernel.org,
	tglx@linutronix.de,
	Jeff LaBundy <jeff@labundy.com>,
	linux-input@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH v2 6/7] dt-bindings: arm: mediatek: Remove SKU specific compatibles for Google Krane
Date: Thu,  9 Nov 2023 18:06:03 +0800
Message-ID: <20231109100606.1245545-7-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231109100606.1245545-1-wenst@chromium.org>
References: <20231109100606.1245545-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In cases where the same Chromebook model is manufactured with different
components (MIPI DSI panels, MIPI CSI camera sensors, or trackpad /
touchscreens with conflicting addresses), a different SKU ID is
allocated to each specific combination. This SKU ID is exported by the
bootloader into the device tree, and can be used to "discover" which
combination is present on the current machine. Thus we no longer have
to specify separate compatible strings for each of them.

Remove the SKU specific compatible strings for Google Krane.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a4541855a838..ef3dfb286814 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -186,9 +186,6 @@ properties:
           - const: mediatek,mt8183
       - description: Google Krane (Lenovo IdeaPad Duet, 10e,...)
         items:
-          - enum:
-              - google,krane-sku0
-              - google,krane-sku176
           - const: google,krane
           - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
-- 
2.42.0.869.gea05f2083d-goog


