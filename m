Return-Path: <devicetree+bounces-11104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 566C77D439B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 02:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C301281777
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 00:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B887FA;
	Tue, 24 Oct 2023 00:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K3buPjn5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429EF1101
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:07:38 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7312C10D0
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:36 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1c87a85332bso32959205ad.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698106056; x=1698710856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VOeGW1+YeyU2G0JvKEORbZjMo9uwDqxfDmsj8nfnjM=;
        b=K3buPjn5SIPBMATqT9XifkzXgi659zuh7sI+MJnFSOvTkY1/4AF93Kp1vBsMeOhzIE
         6A6RV9kH02Z/GchCLo89EYn4JagsCU66GBacqOeyLpuQZA4l5cV6aQrdheLj42RT1GM9
         EIEJOs1d3m+AHpaTJG15NwLOoZ1Dm7gFgJ40k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698106056; x=1698710856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9VOeGW1+YeyU2G0JvKEORbZjMo9uwDqxfDmsj8nfnjM=;
        b=Z0BuajNl0y4R5nxPVfsZICoxwn4p6xXqDRMPFAw5EE80PmEDh2qn1bW50g+Du9cmrl
         /Xec8lEpxA9+1XyU9Z4XfNqYe1u4cgMKM7E6s2SO3WxiCl0wuH5MImifWgUEHzCyn+WB
         0M3vvT4snXRfB6qKvfDTfJsMPaH22npGyXmA6YSj7ZAdc8itDmtvEMmJ3HR3HgbXl7u9
         ojJGshM70xukAIiunuw6q4wT9rqvdeO4JpoGHU/phILbdXqnSTkIFe9a31kdPHfky5uN
         B6kC8SN6F3CWvRC0uL6VAXbtLX92vB4O9m6AsSh8OQSRIvodpx9maF05meIuF6c7M2iD
         JTVw==
X-Gm-Message-State: AOJu0YyAtMYzqw5kQCWqtGBDyCMGeGMLLDpKqYoK4bzsIj0U5pa4LWdJ
	pso96jSxa1xdtba4AqV1Qt4fzQ==
X-Google-Smtp-Source: AGHT+IGJlNox07Z+qWP/5jJ6ZTp86n/wGTcwmCUD6ggrOUjFIR1tQ0GTE4odCzw3VRIeGQT7pg3Dbg==
X-Received: by 2002:a17:902:ce88:b0:1ca:92a:df0 with SMTP id f8-20020a170902ce8800b001ca092a0df0mr11804998plg.59.1698106055836;
        Mon, 23 Oct 2023 17:07:35 -0700 (PDT)
Received: from hsinyi.sjc.corp.google.com ([2620:15c:9d:2:5a2d:c345:7f3f:d26c])
        by smtp.gmail.com with ESMTPSA id a10-20020a170902ecca00b001c5dea67c26sm6505510plh.233.2023.10.23.17.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 17:07:35 -0700 (PDT)
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
Subject: [PATCH 5/6] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-pico
Date: Mon, 23 Oct 2023 17:02:28 -0700
Message-ID: <20231024000724.57714-6-hsinyi@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024000724.57714-1-hsinyi@chromium.org>
References: <20231024000724.57714-1-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pico (sku1) and pico6 (sku2).

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index b131e0bdbf01..6bb1d80dd4eb 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -262,6 +262,13 @@ properties:
           - const: google,makomo-rev5-sku1
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
2.42.0.758.gaed0368e0e-goog


