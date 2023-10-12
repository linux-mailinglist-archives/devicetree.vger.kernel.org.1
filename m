Return-Path: <devicetree+bounces-8315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1CD7C7A19
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 01:03:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A732C1C21052
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 23:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA623D037;
	Thu, 12 Oct 2023 23:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UIj4TMYE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1A01D68F
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 23:03:00 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E091BE3
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:02:58 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1c9b7c234a7so13344215ad.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697151778; x=1697756578; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GBvy7lbYwOwBhn+AJIxwjjdhBjxul9CUNWBOFs/FosQ=;
        b=UIj4TMYElMdp6G4kwkWFYIq0vBIjEHUBXm86+uO/we2nKAn/mA2d62eC0tFDUwDUOt
         IrMXD0nc4zQ6vhYRnMFneu5d7a6y0cmFAjm+6bNTTe4ixkMWoGTF5bRWqI4E3PudaTSX
         5rH0Rw75TbMzC3iMLDbZUgzCg4HM8CXWrsYTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697151778; x=1697756578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GBvy7lbYwOwBhn+AJIxwjjdhBjxul9CUNWBOFs/FosQ=;
        b=fOfagIhbCV0dGyelvYTVACoZhqOO7JnyDQBR44UFomVeBl2Jx5ZPS4eH1HnLE6Ltz6
         FSwMTix4SkXP12RrgelKYiKLStnk7tR0CUwu7Mg8h51zOi3mxB2WgsZy4f09yV2yqfG4
         U/E0dmzFoz1EvvXWfeSwGll5bSMnXlU6acb2IACnCU2RipclWaEcgbpfXT6wrc+gavVH
         5s4lk0zRTix+uSPEKrhPSOtRnGa4xnWm2LiaNAilA1M4Y1E5L0MZfI8J1fPafM4Y4MwW
         HKDXMpvb/SGASoWfQab3vRm55fPuv1Ikj2oXvLoCv4umuy+ji3eSR+dMn//Afbh4Q/Y3
         rNIA==
X-Gm-Message-State: AOJu0Yy1Vi7CzHsClj9/PGsR6DudujC79AKJCl5lnx8qm0Wdb36Q5VTV
	3x3ONJeUYkJpsdG2Tn4k5sWHFw==
X-Google-Smtp-Source: AGHT+IGXznJ4hIrXPd2v4LG0qd7GDuqFPhe4DtqE9+/RvasogqCkxgRRCfWmbESl1PyoeLxvWTeJjA==
X-Received: by 2002:a17:902:f14c:b0:1c9:e0f9:a668 with SMTP id d12-20020a170902f14c00b001c9e0f9a668mr2179774plb.18.1697151778356;
        Thu, 12 Oct 2023 16:02:58 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7397:2561:ed13:bac8])
        by smtp.gmail.com with ESMTPSA id g11-20020a1709026b4b00b001c613091aeasm2494390plt.297.2023.10.12.16.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 16:02:58 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/9] dt-bindings: arm: mediatek: Add MT8186 Rusty Chromebook
Date: Fri, 13 Oct 2023 07:02:30 +0800
Message-ID: <20231012230237.2676469-5-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
In-Reply-To: <20231012230237.2676469-1-wenst@chromium.org>
References: <20231012230237.2676469-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add an entry for the MT8186 based Rusty Chromebook, also known as the
Lenovo 100e Chromebook Gen 4.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index fafd5e18f640..5e5834d9865f 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -206,6 +206,12 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
+        items:
+          - const: google,steelix-sku196608
+          - const: google,steelix-sku196609
+          - const: google,steelix
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:
-- 
2.42.0.655.g421f12c284-goog


