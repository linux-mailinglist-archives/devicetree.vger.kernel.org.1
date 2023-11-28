Return-Path: <devicetree+bounces-19777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 321257FC935
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 23:13:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C87C9B21296
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 22:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB5C481C5;
	Tue, 28 Nov 2023 22:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A6331BE;
	Tue, 28 Nov 2023 14:13:20 -0800 (PST)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-58d3c5126e9so2477499eaf.1;
        Tue, 28 Nov 2023 14:13:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701209599; x=1701814399;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76mP+x+bYO6jX4WukwyAY+fmiKt3MRVCF+jR8taIB6c=;
        b=pq1CazXO1TwvBLO4RzhAo3YONJ81RLa/olOzdogkMD8x7osYxjfabAAu2T8HaZHFPQ
         ZXy7zUGVu6ezIvQYbF/gTeNNey3Tjrr8fYEWr1WcDqz2B4E4EnBJ+nOtZ7JJMEhl2Ygm
         VTKQLDiE+8wcF0oPqZVARpV25oO0dvzUASVSR5eNHyQaAVQ8maMqJMO44IySUbb/Tr01
         F82TfC8ipB0mdrYYO/dQhqUFjUVTTmcny16jyLoAEv0CNjfwogC6wa/GDc5TJ5mBgs+V
         r7VCGC76C2ll12XZcoRysNd5c6InGkfq24XrIj5e1aGFgLJuaovH+wa6bqqwY1RucjyE
         f7Cw==
X-Gm-Message-State: AOJu0Yx7DtxQpKqNmk1zOIosK4itBSgPur5koe3u0CN9kYv8ZgxxUCt1
	Vvb1bXzy5jpaEisma/5x3Q==
X-Google-Smtp-Source: AGHT+IHLa/L1r6e7R0OzqIz2an7oAGmbLiFuC1QyvPdBbgI2xiaK1h3cuyi5/8Y7OB+uf8eAxVWIFA==
X-Received: by 2002:a05:6820:626:b0:58d:74f2:bb4f with SMTP id e38-20020a056820062600b0058d74f2bb4fmr10557302oow.1.1701209599248;
        Tue, 28 Nov 2023 14:13:19 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e64-20020a4a5543000000b0058d8b0c4bbdsm835334oob.32.2023.11.28.14.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 14:13:18 -0800 (PST)
Received: (nullmailer pid 4078954 invoked by uid 1000);
	Tue, 28 Nov 2023 22:13:17 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: Turn on undocumented compatible checks
Date: Tue, 28 Nov 2023 16:10:08 -0600
Message-ID: <20231128221008.4050638-2-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The undocumented compatibles in the examples are down to just a few
left. Turn on the warning by default. The increased visibility should
get the remaining warnings fixed.

Signed-off-by: Rob Herring <robh@kernel.org>
---
After the last batch of fixes I've sent out, there's 6 warnings 
remaining:

 ['socionext,milbeaut-usio-uart']
 ['sprd,sc9863a-glbregs', 'syscon', 'simple-mfd']
 ['brcm,bcm2711-avs-monitor', 'syscon', 'simple-mfd']
 ['fsl,imx6q-anatop', 'syscon', 'simple-mfd']
 ['hisilicon,hi3798cv200-combphy']
 ['qca,ar9331-switch']

 Documentation/devicetree/bindings/Makefile | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/Makefile b/Documentation/devicetree/bindings/Makefile
index 3e886194b043..3e3e49d8a733 100644
--- a/Documentation/devicetree/bindings/Makefile
+++ b/Documentation/devicetree/bindings/Makefile
@@ -61,9 +61,6 @@ override DTC_FLAGS := \
 	-Wno-unique_unit_address \
 	-Wunique_unit_address_if_enabled
 
-# Disable undocumented compatible checks until warning free
-override DT_CHECKER_FLAGS ?=
-
 $(obj)/processed-schema.json: $(DT_DOCS) $(src)/.yamllint check_dtschema_version FORCE
 	$(call if_changed_rule,chkdt)
 
-- 
2.42.0


