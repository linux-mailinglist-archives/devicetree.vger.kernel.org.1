Return-Path: <devicetree+bounces-12248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CB87D88C4
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:13:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56A711F22EC2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F323B2A5;
	Thu, 26 Oct 2023 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="klRJuN/2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649513AC17
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:13:52 +0000 (UTC)
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A5621B3
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:50 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-5859d13f73dso1059865a12.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698347630; x=1698952430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1OFWJeTJZ0BbVCP/+krvvrTex+iNjXDOseWbkL0Relg=;
        b=klRJuN/25vEKbKMA+xEcWihxEDSvIx8QHd56qMAMIkpWQh55uh8TJOvPhLRRaHxx24
         NUtLt3wK5XAAxOB6ldYrm09pnEUJab2Y2exVsLxthb7PqdOsf774IyIoihjFW404+L0W
         aNS1InTckZ+mp4imKDqRP1WN7ySsZuQ/7J5OA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698347630; x=1698952430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1OFWJeTJZ0BbVCP/+krvvrTex+iNjXDOseWbkL0Relg=;
        b=dLTemsBnTqsX+D+yNXIrspxmAxti61QFDCpQ+pK2Ee5TGqlM85lRHy2ODWJb00wCGE
         VTbW9sWyy6DHotunrRzJ2xftKRHXiATXRCpyAGbx/bhQS7r3kS6k+E7jXJAEo+iAuMn1
         /pVtMDX0rher23k0I/b6j7NIqBeSmLLRU87yrCPPT0MJ6CAg1KC0HPXAA3I7zBv84emy
         v3Ee74B/xS5MHcFrWdMEaXJM60Yif9C3PxncCS3llTJVx8MRu1W96GUFHle+6EMvZDTf
         2WvOmDayN/jJhwED26qiUGAh12WxB7RpFEJVX7RpAFc/C/L3FdEr99Qq8Fhhadjd7EoA
         cAdA==
X-Gm-Message-State: AOJu0YyQHsk3JoboNXpcmojYO/cN/WkMGs94Spz7pcQCGLzt8+pSB7YS
	h4PUFdwc6HJE94QIL4qTLKqBHA==
X-Google-Smtp-Source: AGHT+IGKFCR2N7o33SsWtgj5xAsMYXuAF9RtVdH88kWpjjYB8UGtUqMYI8P2T4uYs5XYLatDKH++HA==
X-Received: by 2002:a17:90a:3003:b0:27d:8d42:6df2 with SMTP id g3-20020a17090a300300b0027d8d426df2mr447016pjb.43.1698347629959;
        Thu, 26 Oct 2023 12:13:49 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:f0fe:5c3b:1d70:d0bb])
        by smtp.gmail.com with ESMTPSA id 22-20020a17090a031600b0027476c68cc3sm2183639pje.22.2023.10.26.12.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 12:13:49 -0700 (PDT)
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
Subject: [PATCH v4 2/7] dt-bindings: arm64: mediatek: Add mt8183-kukui-katsu
Date: Thu, 26 Oct 2023 12:09:11 -0700
Message-ID: <20231026191343.3345279-3-hsinyi@chromium.org>
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
2.42.0.820.g83a721a137-goog


