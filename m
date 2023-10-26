Return-Path: <devicetree+bounces-12250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 229F17D88C8
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF5421F232FF
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988843B783;
	Thu, 26 Oct 2023 19:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jwu+izEA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0473B2B1
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:13:53 +0000 (UTC)
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3CDA1B1
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:52 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1c5cd27b1acso11347285ad.2
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698347632; x=1698952432; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLZEufX4IELLQNXAIl4tmqVd4CvacXFJyoj0xSht3aE=;
        b=jwu+izEA+iNQnS2lnGpzAIush5pUyQCHqH2hr/ymOsr97Ku3anF1/SsYLLzPYiE0Xl
         ugG4/tWySuTFF9WPmjHkhFqoN0MD/kpbXYtHjAdZ+42RFBcFu0VUCBBMNeKDOl8oT7Sr
         3QhuoaTpVCIQxsXCPHJ/qD3dEgVSQmdvzd2xI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698347632; x=1698952432;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yLZEufX4IELLQNXAIl4tmqVd4CvacXFJyoj0xSht3aE=;
        b=NaGf8aiyAamozKPimjnicWJWIlPrXKh6mznC9NCbHpqNMcOrJ3OLwpAetDyftwCRYx
         g78ixVZ/hYqEv2YCtpkZcYHeo7qyeTxrc4q84Maxe8ASKwKDza4RsvhOnOcbOpVtp3fE
         Ho3iRiDeViTInDFVfG5Q8WPxbVOUQ0x+wW+fHg8Urbwuh+FdVYNUvhysezGsVW8Eyd1f
         aHUqgH4c0iGx39zvCbcXr2zZi2gzocE6AVlX+9OOVmZ/hNlRl8Di0xye/T9NiCYLkCnB
         8APGLbQBz8TCzhdzM22VIOvjP8aSVhHrLa7V5nh4FdyCgZqjeENlIKNFAP1h4YIF5rFz
         OrFA==
X-Gm-Message-State: AOJu0YwdueJnQbV5I5a15qQIV6cBU8UpaS5xcAHfb1Utvr3awxdP68WZ
	kTj/xW7ZFyaYH1AB6a/vkNwlqA==
X-Google-Smtp-Source: AGHT+IFk7vjIEklI72YfVhtP3+bOj+LPS0CVkNSGaWn6qlYyy7hlM3KbxfKPXYk+F5DUBE/ZxPVx0g==
X-Received: by 2002:a17:90a:1918:b0:27c:fb63:9c89 with SMTP id 24-20020a17090a191800b0027cfb639c89mr521631pjg.0.1698347632103;
        Thu, 26 Oct 2023 12:13:52 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id 22-20020a17090a031600b0027476c68cc3sm2183639pje.22.2023.10.26.12.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 12:13:51 -0700 (PDT)
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
Subject: [PATCH v4 4/7] dt-bindings: arm64: mediatek: Add mt8183-kukui-jacuzzi-makomo
Date: Thu, 26 Oct 2023 12:09:13 -0700
Message-ID: <20231026191343.3345279-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
In-Reply-To: <20231026191343.3345279-1-hsinyi@chromium.org>
References: <20231026191343.3345279-1-hsinyi@chromium.org>
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
v3->v4: remove error const.
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 4fe58cfe6f1b..c937f49ba3b4 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -251,6 +251,13 @@ properties:
               - google,kodama-sku32
           - const: google,kodama
           - const: mediatek,mt8183
+      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK 2)
+        items:
+          - enum:
+              - google,makomo-sku0
+              - google,makomo-sku1
+          - const: google,makomo
+          - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
-- 
2.42.0.820.g83a721a137-goog


