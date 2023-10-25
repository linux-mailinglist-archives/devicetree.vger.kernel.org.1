Return-Path: <devicetree+bounces-12016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6957D772A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C91441C20E4E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CDE636B1B;
	Wed, 25 Oct 2023 21:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Y68lC1js"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE6DC8C0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:55:28 +0000 (UTC)
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FB1013A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:27 -0700 (PDT)
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-581edcde26cso182693eaf.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698270926; x=1698875726; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=maPZys3Husg1xXw3s250DwrK944nIzcFhej3lZUZ87w=;
        b=Y68lC1jsi7W7Xr9rJPgeJxvWGyGVP9hc9MVnuKR5bZ9k5OmSxKj/DQHvNBsluroAlr
         R2PMase9fZPq+DOsNIJSmDaNDPSWuwm/xp2TzNZvnEON4t5IlqSR5Fkiaeg6eUf/snl9
         1rjL8STYzIN49AdIa657l1TNtqwbbbpYOeT18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698270926; x=1698875726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=maPZys3Husg1xXw3s250DwrK944nIzcFhej3lZUZ87w=;
        b=wCQWQdCSMu51sm5TW2CBqlTLZ0QjY/vXkG4cIlWVyy82a5yzIuwHV+EfJP4py8Dcyt
         np69/McQmrBsLnneaT0nAKXJik5/Ejh+P6egSROXFfGC/BFddvatX0jBOe9kzaBL/3xZ
         bTs9aOcc4GhR3I0NbTVUtHBfsttAp4nByn0zn/SJuld1NX4fOH4KGtg7OUlpUu48DioC
         7Ew24mxqBOfw0UaPbBC2hHkziobZcEB/FgiEdWnQPmKBZ6voJg+hxM9PvQ/qVe2wxuqM
         SjStjSb97V8yV8aqYCEPpdsAiAGsNl8zQo7VkfgrLZe+9Yf9mQsjllOQBrI0lM7H2Dr1
         rVHQ==
X-Gm-Message-State: AOJu0Yxsy6EnQlifkXD2yyKCtQvqdH1TMpzcWFdjyxmYE5DMdVNlikOi
	SdCsAXXOAhZLVAfU2V+z5ysg1A==
X-Google-Smtp-Source: AGHT+IEXp2iiwi0OzXg1ybXYcSTK0weNwhbjcuttoe7Qbdl31Zp2IvdlZ6c0LZV7ASE9Q2yxU4WSIg==
X-Received: by 2002:a05:6358:6a95:b0:168:f55d:4ef9 with SMTP id n21-20020a0563586a9500b00168f55d4ef9mr5866825rwh.28.1698270926641;
        Wed, 25 Oct 2023 14:55:26 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id w14-20020a63160e000000b005b8ebef9fa0sm2994943pgl.83.2023.10.25.14.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 14:55:26 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 2/7] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-katsu
Date: Wed, 25 Oct 2023 14:48:44 -0700
Message-ID: <20231025215517.1388735-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231025215517.1388735-1-hsinyi@chromium.org>
References: <20231025215517.1388735-1-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add katsu sku32 and sku38 which uses different audio codec.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a5999b3afc35..4fe58cfe6f1b 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -235,6 +235,13 @@ properties:
         items:
           - const: google,kappa
           - const: mediatek,mt8183
+      - description: Google Katsu (ASUS Chromebook Detachable CZ1)
+        items:
+          - enum:
+              - google,katsu-sku32
+              - google,katsu-sku38
+          - const: google,katsu
+          - const: mediatek,mt8183
       - description: Google Kodama (Lenovo 10e Chromebook Tablet)
         items:
           - enum:
-- 
2.42.0.758.gaed0368e0e-goog


