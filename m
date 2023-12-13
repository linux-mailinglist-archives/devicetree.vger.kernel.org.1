Return-Path: <devicetree+bounces-24837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D988115A9
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F1371C21119
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396B82F87C;
	Wed, 13 Dec 2023 15:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lfHAQJaB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53DE710B
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:58 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1d30141d108so18125275ad.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702479898; x=1703084698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dHQKk4d8ddwdrjZBqESFWwMSVagHkFt89kWPhTD7Nn4=;
        b=lfHAQJaBkFEDbtJbPqboW/6IahVxZUEYIk6XZxBrIt+B2S5Q8yoA2ZVFI6u3/DFWdU
         ivlRWeNnwgOamFc/YePaXLga9BO3zsM49EDMsbgwUG3jjnYQMXdhWGHoQGuJw3Pjhc35
         yoiHIk86NOQQ8Ddz4vs41t249bMreUtu0aE34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702479898; x=1703084698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dHQKk4d8ddwdrjZBqESFWwMSVagHkFt89kWPhTD7Nn4=;
        b=hXj/X5dY3T+qIzBLoxniZ8b0AV5l7WoHlOw0SbSn1dqwqoSHWc59rKafj1CV7C5r8B
         74kJfPEkN203IHQ4MfK9ZC6ydV5dbt9zuaWJeNONNQ5VWECo2tYolTUC7qjFxvGQrLM5
         TiSzF5cN4R5+c10BcYO1OhbRFDO5Io/MFSJGWnDLcLL2M7QRl4J3ep4DLnnOr5lFpn0k
         4pQs6PIT/mD4Dq0yyMkwcOUVxJobf0DJAeiMfHh+PH72XIHrGIglULEx4Yd72ui3UFrp
         WaCIkARL+U/rg3Ow3H7ir2Jn+ZgcY8qeCsE39iaS5Ajbal3Py1lrUzJ5pqkxB5I1j5OI
         Fy+g==
X-Gm-Message-State: AOJu0YxMMKGHv3uFRrR4g2B+d3WuAcnG1dqcB1aSFwpPQAqgLPr8NnzO
	v3MPCH7Zu0InFLtdUVtrQYSmXw==
X-Google-Smtp-Source: AGHT+IGkHAOSAbKahJZ+Rvzu3EviFtnKBG06cWxjCCSZxriqnyEZUPbnctUK9bg7P+z3snWvZmTsTA==
X-Received: by 2002:a17:902:bf06:b0:1d0:a663:20f5 with SMTP id bi6-20020a170902bf0600b001d0a66320f5mr2807931plb.67.1702479897768;
        Wed, 13 Dec 2023 07:04:57 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1974:9e2:4915:58b0])
        by smtp.gmail.com with ESMTPSA id z15-20020a1709027e8f00b001cc2dc61c99sm813808pla.22.2023.12.13.07.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 07:04:56 -0800 (PST)
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
Subject: [PATCH v4 4/9] dt-bindings: arm: mediatek: Add MT8186 Rusty Chromebook
Date: Wed, 13 Dec 2023 23:04:28 +0800
Message-ID: <20231213150435.4134390-5-wenst@chromium.org>
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

Add an entry for the MT8186 based Rusty Chromebook, also known as the
Lenovo 100e Chromebook Gen 4.

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
 Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 95d2b430ab17..85d394e390f0 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,12 @@ properties:
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
2.43.0.472.g3155946c3a-goog


