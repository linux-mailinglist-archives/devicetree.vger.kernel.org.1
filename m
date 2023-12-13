Return-Path: <devicetree+bounces-24838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7858115AB
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:05:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DE232827CE
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4FDD2FC4C;
	Wed, 13 Dec 2023 15:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QQdbl9ve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2602EB
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:05:00 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1d04dba2781so41727415ad.3
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702479900; x=1703084700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XvrIa3O45gpt2G985gqVa8hOF+a0Vp/PW1UMbJtMjpQ=;
        b=QQdbl9veXqAXF9n9Tk6P8HQ2iAltBzK+tVCmutHvqzV33X2/wnwQMnij4YZplwd3On
         ztVOJaHlqHyt3awhF87g26JvBtrkp6qoIdm6zeYxQAsm4/ZS6hanxyjWl1DvT3hQsLSc
         avNdSTy/IpThRDjt8twTJ85Vx+d7kLuf6wG0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702479900; x=1703084700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XvrIa3O45gpt2G985gqVa8hOF+a0Vp/PW1UMbJtMjpQ=;
        b=PxL7f9QYqSneup49CA4pi0nzwat9W9zFKBFsCYtjTF1CY3Dv57Q4gBaA34YChHge54
         r/LFjroozHVr8+17Y5VJthCvNgXfcfH970i8gm8XPgoJMOH1CbnF1TvOB4lOVpGN4X/y
         8j2znaFzkglPrzTxbirOuAm8IeSRVrgRog0DUkK00qVeMzbdqjpwO3fFYz9LsCnH2w40
         8WQm+oIy8Vh1RU9JHzLnCRfbdX6stCGLQlwdCQK9iZS+OAX162meScY6HA2mytTKdY72
         mBId1fYevdMloML1wqfnBpSuJoQKEz1JdZVztNfGwXTuuYZQSIDcHfQdMHfuIBmM3tQ9
         2ZDQ==
X-Gm-Message-State: AOJu0Yz5qOn59+6IXeMhMF3uerb8GwdLsNlc/3Aog0tidQrED0FRAkkM
	/pvGJKEUqms2i5Q1rFY1CnwRuA==
X-Google-Smtp-Source: AGHT+IF2oSj+ur61bjoC52Jha6uiwR39mZ8qZHcGzePU+fWCARUA9rccPDp45Z8i0yEhjvLM/0TPyw==
X-Received: by 2002:a17:902:e789:b0:1d0:6ffe:1e6a with SMTP id cp9-20020a170902e78900b001d06ffe1e6amr4428827plb.77.1702479900300;
        Wed, 13 Dec 2023 07:05:00 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1974:9e2:4915:58b0])
        by smtp.gmail.com with ESMTPSA id z15-20020a1709027e8f00b001cc2dc61c99sm813808pla.22.2023.12.13.07.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:04:59 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Eugen Hristev <eugen.hristev@collabora.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 5/9] dt-bindings: arm: mediatek: Add MT8186 Magneton Chromebooks
Date: Wed, 13 Dec 2023 23:04:29 +0800
Message-ID: <20231213150435.4134390-6-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231213150435.4134390-1-wenst@chromium.org>
References: <20231213150435.4134390-1-wenst@chromium.org>
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
2.43.0.472.g3155946c3a-goog


