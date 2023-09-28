Return-Path: <devicetree+bounces-4145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8527B1698
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:56:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7A1CC281E21
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F6133990;
	Thu, 28 Sep 2023 08:56:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA4B27715
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:55:58 +0000 (UTC)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE618196
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:55:56 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-692779f583fso9267052b3a.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695891356; x=1696496156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FRtfnBP9AwX73M7WqRrv6j9K/SzoRky3umOfoZElyY0=;
        b=nNu2oiDEcLtwMa4eozythgdjGBLmTpyIMJiqGEu9HRwKm41Ei2jLNZB/flOmvyI9KF
         afrontNqpyZVw3LiICXDgOUNkhiIq5JgG8NENQIlpH1FcFOOLwKZkZM+JOEWszqR8QMh
         /D3u9jRvluIq0wZ6925OrG5nmSsOp/BhDuR2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695891356; x=1696496156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FRtfnBP9AwX73M7WqRrv6j9K/SzoRky3umOfoZElyY0=;
        b=cnMx+ewgaEHJwuiTYwXyC6V3KMJ0AiWITTr/B5QQeg+tmMCwXdUjWlr8DoRFggIcD5
         RonFfOniE+CIrFYzfTwO6zjmRK7Of2jlso9kEtUh+46TNjmEkEckvJbI7UdFjRqe/tNL
         zGrC3xANN4cwQtmy/lXdWgG4qCerQf0VEyIgoYaTJ1qaoCfqI4rD8A4tJ1qfMYggtvXe
         DjhXhqq3eGG9gIi6PIXIFWr8i855ZMprPAn6sy1vOcuPgoUMqmckwmQQp4ZdnMK7Sbv3
         CuZJvtovVS8EFE3H6YDFJD/Vo+53Pr4R/lBYiNudq+lxj5Ra/aYfTn+gu32ZyOGILy5F
         NnUg==
X-Gm-Message-State: AOJu0YwciTmwVUubBqvREvTzIJdUezq7bGeFZLi8EQMly/Oo6ZEiBHWt
	dcHVpiS/s5jBrNYXY/x+DtYN0A==
X-Google-Smtp-Source: AGHT+IFM5vuqerQOsjNfjBDCVwTrMH1Xk0IlOBL7t8bM4NJqtTrVxCstFnITrUdBqIH6D1ZRG2/Aqg==
X-Received: by 2002:a05:6a00:14c9:b0:693:3783:4a29 with SMTP id w9-20020a056a0014c900b0069337834a29mr619701pfu.20.1695891356126;
        Thu, 28 Sep 2023 01:55:56 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6747:c12a:dbfd:2cc7])
        by smtp.gmail.com with ESMTPSA id y7-20020aa78047000000b006879493aca0sm1754016pfm.26.2023.09.28.01.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 01:55:55 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Lee Jones <lee@kernel.org>,
	Zhiyong Tao <zhiyong.tao@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 01/12] dt-bindings: mfd: mt6397: Split out compatible for MediaTek MT6366 PMIC
Date: Thu, 28 Sep 2023 16:55:24 +0800
Message-ID: <20230928085537.3246669-2-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
In-Reply-To: <20230928085537.3246669-1-wenst@chromium.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
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

The MT6366 PMIC is mostly, but not fully, compatible with MT6358. It has
a different set of regulators. Specifically, it lacks the camera related
VCAM* LDOs and VLDO28, but has additional VM18, VMDDR, and VSRAM_CORE LDOs.

The PMICs contain a chip ID register that can be used to detect which
exact model is preset, so it is possible to share a common base
compatible string.

Add a separate compatible for the MT6366 PMIC, with a fallback to the
MT6358 PMIC.

Fixes: 49be16305587 ("dt-bindings: mfd: Add compatible for the MediaTek MT6366 PMIC")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/mt6397.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 294693a8906c..10540aa7afa1 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -22,8 +22,9 @@ compatible:
 	"mediatek,mt6323" for PMIC MT6323
 	"mediatek,mt6331" for PMIC MT6331 and MT6332
 	"mediatek,mt6357" for PMIC MT6357
-	"mediatek,mt6358" for PMIC MT6358 and MT6366
+	"mediatek,mt6358" for PMIC MT6358
 	"mediatek,mt6359" for PMIC MT6359
+	"mediatek,mt6366", "mediatek,mt6358" for PMIC MT6366
 	"mediatek,mt6397" for PMIC MT6397
 
 Optional subnodes:
@@ -40,6 +41,7 @@ Optional subnodes:
 		- compatible: "mediatek,mt6323-regulator"
 	see ../regulator/mt6323-regulator.txt
 		- compatible: "mediatek,mt6358-regulator"
+		- compatible: "mediatek,mt6366-regulator", "mediatek-mt6358-regulator"
 	see ../regulator/mt6358-regulator.txt
 		- compatible: "mediatek,mt6397-regulator"
 	see ../regulator/mt6397-regulator.txt
-- 
2.42.0.582.g8ccd20d70d-goog


