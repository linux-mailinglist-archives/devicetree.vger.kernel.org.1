Return-Path: <devicetree+bounces-12018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAF87D772E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B159F281D89
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F73837161;
	Wed, 25 Oct 2023 21:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OXl8Egtp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CFD34CF1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:55:30 +0000 (UTC)
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4750E13D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:29 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6b9af7d41d2so228269b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698270929; x=1698875729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79jtSdDl24cfVMtRgsa8bqnoadvLE5wlo58xyGE1d9Q=;
        b=OXl8Egtp4ErTW6gEES/Xj4DdasMuSIF1JyGGjtLyxW25o9yNaSN33OSxpwfsv+Jfv2
         DYF0t0vf0SnCsZZ0ejs3/7r2CQUtf6ok5cxARVWlzUzdyQVSHBoXNHIBBrr+TNAmeQ2y
         T04ZWQ16eSjAqKeNuTl2khsAr2RMhslGMkvCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698270929; x=1698875729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=79jtSdDl24cfVMtRgsa8bqnoadvLE5wlo58xyGE1d9Q=;
        b=LuPwwNkEjGKUeqJWNYd7e+gDUhzxANCkl9w2fa/q+OBNqd2Xzc68bpBjEEX3FVncCN
         dHis4oLRZogo7RT6aQFA0pdesGhBmbj3Z3gWWFvdrxoGsiihPsjWtmjtbnIagzz4HieI
         ykO6eVDJ1xhP4r5DDpk+HLF/MuPjqJbuAvsVcfTOmfoGVgHCEpZDBR7h46mPi9NHO7Ak
         qzPp3H2gJ4itwIMfdp09hhizJEbKTu3JRnv9cYojoU6Rhmm3OG2PHj13ZFT4Sw6ZQJuT
         9Evbj9xAzh5eiebownQfcy8MYH3Yb3J+qgdokXU7cFBGRqGloF55wT3zlczNsJZmDdRd
         SXag==
X-Gm-Message-State: AOJu0YycSZ278iOZIjqYQSfSqVaeDvP8EqV/kQGiHTMEt69KFF6+6Tam
	rxo4c6xA+gX8rZV2tfnX0folfg==
X-Google-Smtp-Source: AGHT+IFuGCQXgqHOERVCnmynQHpCmt3yHZRhhoyZFj7fm++vY0NnVC5T3ML6yQACdGrMP7uHxm1ntg==
X-Received: by 2002:a05:6a20:7fa4:b0:15e:b8a1:57b9 with SMTP id d36-20020a056a207fa400b0015eb8a157b9mr7855392pzj.24.1698270928820;
        Wed, 25 Oct 2023 14:55:28 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id w14-20020a63160e000000b005b8ebef9fa0sm2994943pgl.83.2023.10.25.14.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 14:55:28 -0700 (PDT)
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
Subject: [PATCH v3 4/7] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-makomo
Date: Wed, 25 Oct 2023 14:48:46 -0700
Message-ID: <20231025215517.1388735-5-hsinyi@chromium.org>
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

Add makomo sku0 and sku1 which uses different audio codec.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
v2->v3: remove rev since match on sku is sufficient.
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 4fe58cfe6f1b..54141b9bb714 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -251,6 +251,13 @@ properties:
               - google,kodama-sku32
           - const: google,kodama
           - const: mediatek,mt8183
+      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK 2)
+        items:
+          - enum:
+              - const: google,makomo-sku0
+              - const: google,makomo-sku1
+          - const: google,makomo
+          - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
-- 
2.42.0.758.gaed0368e0e-goog


