Return-Path: <devicetree+bounces-4661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8AE7B35F4
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 391D71C209F2
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D55516D5;
	Fri, 29 Sep 2023 14:45:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DA641ABA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:45:01 +0000 (UTC)
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2117D1A8
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:45:00 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-57bab8676f9so5187775eaf.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695998699; x=1696603499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gGhQthT64pdSxzZ5aTBXuH64J4biaW8ztdfRr2G2cDM=;
        b=N7SpxTND7enfNaphkyWEBIWMWrT+kDAZHZFAeS9ZQ3g3ezCNkkY+IDcENhmIxzXY4r
         CCzEjPMB879CFHY1UKyevwvydwMiIHIq0Z75vyaxLpGr0jz4Aqp5iQzGVW/CXMmpPwZB
         YHy2VmCEDlrRNXNyK58seDVSVql9m3Nk8EuDcBL6djdUpkABDzZZOVIvVDg2row+Mvaq
         7841yv4Rl5UzLto1PVyKoeDtlOyh9M7/Dx5N9M6W/AJjESkXLtmPl27CVz9Yvj7r9M97
         Ni0U5cuc0NhPP8U4M5ICXp349i4aRL2U71slWLmZLKrtr3vrShLWwKzA9PoyGxoLLHlU
         ozkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695998699; x=1696603499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gGhQthT64pdSxzZ5aTBXuH64J4biaW8ztdfRr2G2cDM=;
        b=IUsh5ULD+Xj7LtPwa3g3pDm3ENIKfChhDOsMmYX+0P/NTILr0/aN9cpXwtNjCV9i4j
         R3cs57MAyf8OXnpezwrqm25JvfE2uQIeEUt6qGKUd5yf2v5UJwwBtTmc7ktFFNOiUIkL
         o0+RRd1V8YxauQn2MYc/3HfB+bHVa8kXiErnfjhknwFzNcVEzoJRdJjH2LMyRzOX8fYA
         +iacxEcj+TEEQ9KtzLdlB5ZrDxY/C6aGLiO067MwFt16FzHRo3WOy7AKDIJ+o5zMMdNR
         V81SYka8McKT8AiwM44FSK+7S0tAhUHFQGJjMhR1L8DCFYcukMzNmwIKX3eGCzl3Dvg3
         ycvQ==
X-Gm-Message-State: AOJu0YwXQktR5A4x7jNcFGmu3MVpieiY3Y5W4J/ion97aSYIThNCwGT5
	XS7Xv+foAEMoeAO7FgcnUsU=
X-Google-Smtp-Source: AGHT+IELq6iwO1Fa157H4tcNZ5YXb3nXTi/tPLBGB2vyJx6Y8gwTC2FoYMVGNpnR7EeH15ZCLR3LPA==
X-Received: by 2002:a4a:2742:0:b0:57b:a346:167e with SMTP id w2-20020a4a2742000000b0057ba346167emr4474794oow.6.1695998699351;
        Fri, 29 Sep 2023 07:44:59 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id q19-20020a9d6653000000b006b753685cc5sm3012619otm.79.2023.09.29.07.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 07:44:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	uwu@icenowy.me,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	andre.przywara@arm.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V6 3/4] dt-bindings: arm: sunxi: add Anbernic RG-Nano
Date: Fri, 29 Sep 2023 09:44:40 -0500
Message-Id: <20230929144441.3409-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929144441.3409-1-macroalpha82@gmail.com>
References: <20230929144441.3409-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG-Nano is a portable handheld console from Anbernic which
uses the Allwinner V3s SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index e4dd678f4212..1929a0a475fd 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -51,6 +51,11 @@ properties:
           - const: allwinner,parrot
           - const: allwinner,sun8i-a33
 
+      - description: Anbernic RG-Nano
+        items:
+          - const: anbernic,rg-nano
+          - const: allwinner,sun8i-v3s
+
       - description: Amarula A64 Relic
         items:
           - const: amarula,a64-relic
-- 
2.34.1


