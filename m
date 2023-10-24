Return-Path: <devicetree+bounces-11459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3D87D5D24
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CABF1C20D7B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C05C3F4CA;
	Tue, 24 Oct 2023 21:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JCf9bsc8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A193D967
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:26:27 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41A0B129
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:26 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1c9d922c039so41722535ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698182785; x=1698787585; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nPMghuwp+tPA5DuqxMPybyD0q/nbyVUGg3y+BUmnhAU=;
        b=JCf9bsc8gsFmYEEN5FA/Mq1VcLZntjYOHPWNQUlkZ1hEP2lhwV9dA9Nr1muGijf7zm
         h7xEERbar6T2fPjFtWySQBQNVEKyNkWEUR4t5moPvQRcQztfiYcwcp9zso+sZ9q2p1iu
         h04Cw6fXmgVMKLJvO8Bj16FBULE9whIKqqo/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698182785; x=1698787585;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nPMghuwp+tPA5DuqxMPybyD0q/nbyVUGg3y+BUmnhAU=;
        b=K5hcfOucoucWxQmRalvAqM3zo37rMa26UEf+vyPpXd2pnklRH8F+V1zRmIHYt6i9zY
         Gmmo+FtI5HJL6Yqs8mZQRiDSZTymnm0LQ7SbmLt0CbJGoQ9D/q3r/RqKcny8+EmKWuat
         rNZ/tisMJBotAyomj2dIRoQNgvfEJ3bswSD4v8QTn0WoIqSFVNQGTDuxyRBoAsqFeEYc
         86sW6bQlQGKH5wmv9JjQLRyp4mngNQ6LVKqyFKuis7SMnm5ljJvhbQxJ024GbuTsMr/K
         sV56/dT4w5Tj/pRrUBdZz4KSdk9g7iewiJmx73N1YauSd3KC8rbbmqiG1nCdB9fIABxY
         Hr3Q==
X-Gm-Message-State: AOJu0Yw44Gsm8nzEs0Y/G6yL3UFfsnx4mXCqosSabgy/4Pk+yg7AXpKp
	J/6SagAlvY50NvVYjrfrCgJkKA==
X-Google-Smtp-Source: AGHT+IFmCsigqtOmK3pF3vfTppVXjAMhmh8TLrWxud/qg3KLT70MRIgtqngZr0IQmbvT4J7nmCwjDA==
X-Received: by 2002:a17:903:200b:b0:1ca:8e79:53a2 with SMTP id s11-20020a170903200b00b001ca8e7953a2mr12674948pla.46.1698182785720;
        Tue, 24 Oct 2023 14:26:25 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id p9-20020a170902e74900b001b850c9d7b3sm7824140plf.249.2023.10.24.14.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:26:25 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	=?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 2/7] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-katsu
Date: Tue, 24 Oct 2023 14:22:24 -0700
Message-ID: <20231024212618.1079676-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024212618.1079676-1-hsinyi@chromium.org>
References: <20231024212618.1079676-1-hsinyi@chromium.org>
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
v1->v2: non sku38 is sku32
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


