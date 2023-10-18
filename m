Return-Path: <devicetree+bounces-9725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B717E7CE292
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:19:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3CCB1C20DB1
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 16:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6933C08E;
	Wed, 18 Oct 2023 16:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GtdcjuCn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4333C07F
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 16:18:59 +0000 (UTC)
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3329AFA;
	Wed, 18 Oct 2023 09:18:58 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3b2b1af09c5so2923738b6e.0;
        Wed, 18 Oct 2023 09:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697645937; x=1698250737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hM+gahaFfhqvyzMw+hLPiLwUYVFl/GwZI4lQvIkPZFg=;
        b=GtdcjuCn+ii8ccKgdn6nAB1C198Rl0WmpB1UZLnD8aIS/KO5FcSWgukKlXi1kWTPgh
         kGqdSkThMrudsaamxq+jKevsCyihe9rmsHYmdATxyGVCevUkKG6/9i8bRUKBjR4EGCwb
         uPT8qPBwe+jThVcB2V50VX0fUAIT3a5VB6m0widCnoWRQKjqP9t51fzCIaN9owhsmsuB
         l6D9/YW9D3YQph9Z66ESoyYSzVr6yjVGf1IuE3Yq0OmEYPoh0w3/DKKW9cMDfRib8gvV
         hkGJMNtt5rpNvQ6qih5Tcg00uEezZOXEn6vq9ehLvwn/5To0ubq8+ZO/bq7JDtG0iRFX
         irLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697645937; x=1698250737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hM+gahaFfhqvyzMw+hLPiLwUYVFl/GwZI4lQvIkPZFg=;
        b=Zj+6/XKsgyCCWfrnlagH1PYPMXswCazU5IYF0ub302stSV6DFghipidz8dhu/yFgwM
         dfgVgI1Iz0e3LA1j3pDThsQnYXq7pnx1Zt52vFMDiAGFFNZMtiJ7pCi8QDhFZsUd1Zpz
         PPnxYE5DNWgvM8ZPnMWmEb7hAEskDKGPigVsedUO29Vihzl9g24Ysz4gq8Za8uRS8n38
         08H/rH1oFxtaOoSCCnjTwHBBOCt/czOf93rFPoFSuO3wzEyk/O9ni65PNNXuN/O5P3st
         U2TkWdr8a1PwxSd7dsaOjtwBB73+GrIxqzDubgpXjQ8BlgWgcbKgMmJ8wF7O7vfA7Gtx
         EYNA==
X-Gm-Message-State: AOJu0Yx7D7ZbFBoLeEej54bfCR5d6LB97W4q4vX3Ir7fLZnS/sZy0In3
	zUi0k07Bh/KMZaPFQ0fyqL8=
X-Google-Smtp-Source: AGHT+IH4OYf/H6hu8k3PAsRf3mm4jsjcixitYV7dNNGP1JInDwCe05WxnBR6TBxPI5AC2/tf1wVZoA==
X-Received: by 2002:a05:6808:f8f:b0:3af:b6ea:2e2 with SMTP id o15-20020a0568080f8f00b003afb6ea02e2mr6734005oiw.59.1697645937480;
        Wed, 18 Oct 2023 09:18:57 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id db14-20020a056808408e00b003afe584ed4fsm697390oib.42.2023.10.18.09.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 09:18:57 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Wed, 18 Oct 2023 11:18:47 -0500
Message-Id: <20231018161848.346947-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018161848.346947-1-macroalpha82@gmail.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
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

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a349bf4da6bc..a6612185a7ff 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -674,6 +674,11 @@ properties:
           - const: powkiddy,rgb30
           - const: rockchip,rk3566
 
+      - description: Powkiddy RK2023
+        items:
+          - const: powkiddy,rk2023
+          - const: rockchip,rk3566
+
       - description: Radxa Compute Module 3(CM3)
         items:
           - enum:
-- 
2.34.1


