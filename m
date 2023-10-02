Return-Path: <devicetree+bounces-5115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA84F7B54C1
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:10:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BABAF281112
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3877119BBA;
	Mon,  2 Oct 2023 14:10:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AD119BB0
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:10:40 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D0A1B4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:10:38 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-406619b53caso26695045e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 07:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696255836; x=1696860636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V91cYRIt8yJYSOx2f4FKH7CFK9UttvFj+gUpHbgWKyw=;
        b=pn60SBYQaqwGaVUHpjOuTuLTUBL1ISxsU8vXjrNHUAdSeFs1F2FLx5gP4fm53cXl32
         oQEE+2vHpiVBOfRJv1FYYoyRRVt9svfBltNk7n9ExWZsLB1SFKlLcHhh+TpJT8cD/FX7
         fk9zK4KEnnZ51hCHTX6CBh2c54sU5h5boCFz+toZh1iXrZHKs08sBlbPONEGLbTh5hjl
         fW1IkeqlrojC8om3S6f6f3JpgJILBgGt8TGsBSpFegM3NmKSM1iTkbFQloVk+FtWS9Kl
         p08PkPJEQN3/906EcjS250VL/eRdskDj0AqFqnmK1CWc4+485n0xGpSHWHJP22yt+dXD
         mEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696255836; x=1696860636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V91cYRIt8yJYSOx2f4FKH7CFK9UttvFj+gUpHbgWKyw=;
        b=EhUGGya3pf6JHevvB+rTPahv34k6b/Hrl/UNhjyxw1XDI/PGY2xpcOwqgSAGx4IRxK
         6nWCDx3SOcbUAi2+CLbRaWVoyEw0+5oZFEVyEThx/VUXRytfmkb517L2o4uLKUIhIaS+
         xvdppbTFrbL1O6N/ZTj7TLS/3BUNCcN8YfDcEcnlyPUlWykIdvTaHyzTC8Q4fjr/gU41
         oWH2T07YcWhK4UQ3qzyotgt7F3CJQj3Rn1vdH0RvBF0UjpgXAAT2uENbq9lt5tJaWTSZ
         hb/NUm4OjjTeV2tHygiEuml5x4J21+ZXtTrOAZURi5Yu/9gYemxF9gn0/qRu5vmBJ8wi
         4R9w==
X-Gm-Message-State: AOJu0Yxt7GDiNTk8dtAa9IJ9s0eQH6JY4R5g8gho6kiPC9tx4ruPYCtp
	td6hmyOeTH4iHeuFVk0N8zlHcQ==
X-Google-Smtp-Source: AGHT+IH12gMfHz+WiKvadwSp8NrQkbn9hq0VDKvMaeWJbbqRL8bgMgmJ4ZngnP0ASA8/U+F6q3Nr3A==
X-Received: by 2002:a05:600c:255:b0:404:74e3:27a4 with SMTP id 21-20020a05600c025500b0040474e327a4mr10414923wmj.40.1696255836595;
        Mon, 02 Oct 2023 07:10:36 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:fcf2:65f1:853c:13be])
        by smtp.googlemail.com with ESMTPSA id k3-20020a05600c0b4300b003fe1fe56202sm7361911wmr.33.2023.10.02.07.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 07:10:36 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Da Xue <da.xue@libretech.co>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm: amlogic: add libretech cottonwood support
Date: Mon,  2 Oct 2023 16:10:19 +0200
Message-Id: <20231002141020.2403652-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231002141020.2403652-1-jbrunet@baylibre.com>
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add compatibles for the Libretech cottonwood board family

Co-developed-by: Da Xue <da.xue@libretech.co>
Signed-off-by: Da Xue <da.xue@libretech.co>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index b7b0eda4164a..caab7ceeda45 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -155,6 +155,7 @@ properties:
           - enum:
               - bananapi,bpi-m2s
               - khadas,vim3
+              - libretech,aml-a311d-cc
               - radxa,zero2
           - const: amlogic,a311d
           - const: amlogic,g12b
@@ -196,6 +197,7 @@ properties:
               - hardkernel,odroid-hc4
               - haochuangyi,h96-max
               - khadas,vim3l
+              - libretech,aml-s905d3-cc
               - seirobotics,sei610
           - const: amlogic,sm1
 
-- 
2.40.1


