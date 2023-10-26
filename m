Return-Path: <devicetree+bounces-12252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2847F7D88CC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:14:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADBCAB213D2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994293B795;
	Thu, 26 Oct 2023 19:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FovDHLKF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051A63B78F
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:13:55 +0000 (UTC)
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D15C91B8
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:54 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-27d087c4276so1054757a91.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698347634; x=1698952434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LKO2g208XzCfOsORI6ZMG1mCYRoaMgItfO0wExwA+14=;
        b=FovDHLKFv9Gi3C2YjP7dXJfItRR3PH6JFC+StLbj0rZX2lSdGcAZNGY+ENj4h/CWWw
         FvkdXgqEcnMMZJuiA6fLYF1yt+xLnf5DP2JhvYbFJJQMu669YuZbT0rb1FwgNYGm5xaU
         T/vjsuw7Y0dq29pQY7yaXyNy8mFH/EOoOSsyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698347634; x=1698952434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LKO2g208XzCfOsORI6ZMG1mCYRoaMgItfO0wExwA+14=;
        b=Jd/RLRn2X/2A52XblqOTRX7pbi3niDFa22TNVBxElKWXwCXrngMM+lyAxZdqQzzMGo
         aVxlU6aGzsTwZkxyZFHalrAZgPLek8yZ3XBokVUORO50DTyYBce58cAZBlNglGcz8sHZ
         Zr+RHhxN5v7W1uFhjci2aaN6zds0W3Sqev69UPquv8lkJZ5Y6byi7zTcSqow0XVT1c3C
         xLopi3Si9SPPSEF7sWvSVqgbPhpvhXiyobnFEGMX1ke78QXMU3PrtarB584gaJUwoiep
         fEXoqMjgRCXyHdJBPWVRqEX6WU23J1xJQpbzCi2SXKa1LD/9W1JOJxDkL9h/cFByFL8e
         DX+Q==
X-Gm-Message-State: AOJu0YztshHoPp8wDPI2+104Br4gZEWSIlI40bk1fuqycstfvbEkSUMj
	wLF9cIrF0SE1r4k8LNzgEbDBbQ1YM7+AfMGksL8=
X-Google-Smtp-Source: AGHT+IEmsklJ5EWfVQVMeGYaB6B6U1UOfAuEgiqRe/EIB/KFs8EkGHLZUt6Yhm9lhheQgYiVB6Lw/Q==
X-Received: by 2002:a17:90b:f0a:b0:27d:37bb:12c0 with SMTP id br10-20020a17090b0f0a00b0027d37bb12c0mr449838pjb.36.1698347634291;
        Thu, 26 Oct 2023 12:13:54 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id 22-20020a17090a031600b0027476c68cc3sm2183639pje.22.2023.10.26.12.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 12:13:54 -0700 (PDT)
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
Subject: [PATCH v4 6/7] dt-bindings: arm64: mediatek: Add mt8183-kukui-jacuzzi-pico
Date: Thu, 26 Oct 2023 12:09:15 -0700
Message-ID: <20231026191343.3345279-7-hsinyi@chromium.org>
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

Add pico (sku1) and pico6 (sku2).

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index c937f49ba3b4..f133d9673803 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -258,6 +258,13 @@ properties:
               - google,makomo-sku1
           - const: google,makomo
           - const: mediatek,mt8183
+      - description: Google Pico (Acer Chromebook Spin 311)
+        items:
+          - enum:
+              - google,pico-sku1
+              - google,pico-sku2
+          - const: google,pico
+          - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
-- 
2.42.0.820.g83a721a137-goog


