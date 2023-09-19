Return-Path: <devicetree+bounces-1360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A9E7A6005
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:47:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DD231C20D3B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4721D6AF;
	Tue, 19 Sep 2023 10:47:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B368D2E65D
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:47:36 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9AD512C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:34 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1c0c6d4d650so49565315ad.0
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695120454; x=1695725254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSYY97oVgPZ5kb8TuDqHkXyCfyuOKBglbVv/457JBMY=;
        b=cRB+Fyg+q4cb0QH9ABSJaM+9ir+R6imGfBSqciQxsbna5lw9aTYb0Qmkmi/sAEFj8r
         QkSth+dHRy1y0QOm13mpCtAqBfJz8gsnjQA6xGndBmtR5BFcZV3pd06jip3AGW5iS7HA
         wrW+0VLskk+qLVZwqyw7gCLK94+9swqGY9ogI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695120454; x=1695725254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BSYY97oVgPZ5kb8TuDqHkXyCfyuOKBglbVv/457JBMY=;
        b=Koh5jqTKjSb+d4s8Ojdc+h3tjuELgoPDrBP0kqLgzNhfpaMJeqnMG3L31A53El+JWE
         U2mO8l+6svJ36rWbKab27Klk5aL2+e4Y/ZGmCFmQq3ae8jIQdShadsc7ztiz4IscF6bs
         gmjCl2+EkeGrac63OKrvdUnlt2vTQfxScyD8iNqmC+3LAVNh/O5QS096ZwiXVR34ljhW
         h0u5vwoOGdjClmGHoYc4ujyM2j3CX1vQ8VBSEtdxfIAfuw1Bx1RPG8MvemWvKzHkGuSl
         ul4vI5Z9K3b3khDq8k8yHUu1djOpxB7PRXm2gRrUG2cEwmPTQm23WQcMXl72Ofg8jYNa
         /CWg==
X-Gm-Message-State: AOJu0YzW7Zv1+BLp2LQ8j2vvgMpj2dDbSgLmXYpPIm/L9O/ZV8CU36y7
	CKEZN3hBZlen7Ppu5Psm1WolCw==
X-Google-Smtp-Source: AGHT+IH8dslqjluxddWZr48ltSB+HQMspK87ZRjKTboJ64j/tCHjB7w/HcgYb7fjZuvBhKtht5Dkqg==
X-Received: by 2002:a17:902:be0a:b0:1c3:90c7:b99d with SMTP id r10-20020a170902be0a00b001c390c7b99dmr9899813pls.41.1695120454418;
        Tue, 19 Sep 2023 03:47:34 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:40a:900d:e731:5a43])
        by smtp.gmail.com with ESMTPSA id c10-20020a170902d48a00b001bc445e249asm6719578plg.124.2023.09.19.03.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 03:47:34 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Zhiyong Tao <zhiyong.tao@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 04/12] regulator: dt-bindings: mt6358: Add regulator supplies
Date: Tue, 19 Sep 2023 18:43:47 +0800
Message-ID: <20230919104357.3971512-5-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
In-Reply-To: <20230919104357.3971512-1-wenst@chromium.org>
References: <20230919104357.3971512-1-wenst@chromium.org>
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

The MT6358 PMIC has various regulator power supply pins that should be
supplied from external power sources or routed from one of its outputs.

Add these regulator supplies to the binding. The names are the actual
names from the datasheet, with hyphens replacing underscores.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../regulator/mediatek,mt6358-regulator.yaml  | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
index 62e8fa6b4306..c5f336318ec2 100644
--- a/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
@@ -18,6 +18,41 @@ properties:
   compatible:
     const: mediatek,mt6358-regulator
 
+  vsys-ldo1-supply:
+    description: Supply for LDOs vfe28, vxo22, vcn28, vaux18, vaud28, vsim1, vusb, vbif28
+  vsys-ldo2-supply:
+    description: Supply for LDOs vldo28, vio28, vmc, vmch, vsim2
+  vsys-ldo3-supply:
+    description: Supply for LDOs vcn33, vcama1, vcama2, vemc, vibr
+  vsys-vcore-supply:
+    description: Supply for buck regulator vcore
+  vsys-vdram1-supply:
+    description: Supply for buck regulator vdram1
+  vsys-vgpu-supply:
+    description: Supply for buck regulator vgpu
+  vsys-vmodem-supply:
+    description: Supply for buck regulator vmodem
+  vsys-vpa-supply:
+    description: Supply for buck regulator vpa
+  vsys-vproc11-supply:
+    description: Supply for buck regulator vproc11
+  vsys-vproc12-supply:
+    description: Supply for buck regulator vproc12
+  vsys-vs1-supply:
+    description: Supply for buck regulator vs1
+  vsys-vs2-supply:
+    description: Supply for buck regulator vs2
+  vs1-ldo1-supply:
+    description: Supply for LDOs vrf18, vefuse, vcn18, vcamio, vio18
+  vs2-ldo1-supply:
+    description: Supply for LDOs vdram2
+  vs2-ldo2-supply:
+    description: Supply for LDOs vrf12, va12
+  vs2-ldo3-supply:
+    description: Supply for LDOs vsram-gpu, vsram-others, vsram-proc11, vsram-proc12
+  vs2-ldo4-supply:
+    description: Supply for LDO vcamd
+
 patternProperties:
   "^buck_v(core|dram1|gpu|modem|pa|proc1[12]|s[12])$":
     description: Buck regulators
-- 
2.42.0.459.ge4e396fd5e-goog


