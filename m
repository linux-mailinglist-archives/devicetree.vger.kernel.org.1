Return-Path: <devicetree+bounces-4148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3DD7B169E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:56:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 30C4B281F7F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BCB931A91;
	Thu, 28 Sep 2023 08:56:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BF727715
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:56:06 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D6DC1A2
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:56:04 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6910ea9cca1so10012232b3a.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695891364; x=1696496164; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8VUxLWLgQ80Pm3L1prBCg/hMI4tne1YjHqrpTBd8u2Q=;
        b=W/oSGHxU0Y+ACv009W1WQs6exmL8vRwYtpNbpjkyjCuvEvKg1UhhG9BO1D5+c+5Ea6
         2qm/zJzyS3BOfspONaJ6hcNJhKsDEHPj017woZJ/YReky8qbGAWYwnTKKPxKW3mKa3Ck
         Wg1NVpTAwW7UmtzNdSsXcLiNqfHjJp1KAyGus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695891364; x=1696496164;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8VUxLWLgQ80Pm3L1prBCg/hMI4tne1YjHqrpTBd8u2Q=;
        b=Um8Kc1j3AwzBc4/ZJw9AeAi3Poc1NKmotIEqsuVE7SCwU1FpAN/VXsUgRQjJuBnU3D
         Cs5540jaJHPTyoiLBpgo30EXnW9Mmn7t+TDglmwAsmgFtPGUs6DQJzbpuxy9aE3/s65D
         9E0BYjoFK4l9ZbFKz++m6abiKMfwSz1w4Mz11Qmy9RGrsBHrLsHOtu3Tme2IJlK1fr8d
         JRdgPs7qPBQJ+ziR2KvMU6zIqJHC9d0LAMSfi2AvpjW7ugh5obPsB0vEyodaOpJsjX6p
         csMafTzrwhkgwLnRVSzfxTHJYaSqgCMrvVo/IytW0pBOkHVdbAgpsqXGWiF9OAqpPl2/
         J58A==
X-Gm-Message-State: AOJu0Yz0Q4bXpglHxU1dy+qIIzO05xDGeaGRHsAWTFPs4Vmr9XnKnvK6
	8zodWnT7DP6LnjYYRDsQd6Ow0A==
X-Google-Smtp-Source: AGHT+IHtrWewxnhjNB2afm44QHya+LkWPvHNgUDR7Ji3onSnvYMF6drgVnRdKj2wM7M/V1Ql8GZGLA==
X-Received: by 2002:a05:6a00:1381:b0:690:4362:7012 with SMTP id t1-20020a056a00138100b0069043627012mr612979pfg.28.1695891364006;
        Thu, 28 Sep 2023 01:56:04 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6747:c12a:dbfd:2cc7])
        by smtp.gmail.com with ESMTPSA id y7-20020aa78047000000b006879493aca0sm1754016pfm.26.2023.09.28.01.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 01:56:03 -0700 (PDT)
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
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 04/12] regulator: dt-bindings: mt6358: Add regulator supplies
Date: Thu, 28 Sep 2023 16:55:27 +0800
Message-ID: <20230928085537.3246669-5-wenst@chromium.org>
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

The MT6358 PMIC has various regulator power supply pins that should be
supplied from external power sources or routed from one of its outputs.

Add these regulator supplies to the binding. The names are the actual
names from the datasheet, with hyphens replacing underscores.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../regulator/mediatek,mt6358-regulator.yaml  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
index e8c3299d698f..f2219d8656c2 100644
--- a/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
@@ -34,6 +34,40 @@ properties:
       regulator-allowed-modes: false
     unevaluatedProperties: false
 
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
 
 patternProperties:
   "^buck_v(core|dram1|gpu|modem|pa|proc1[12]|s[12])$":
-- 
2.42.0.582.g8ccd20d70d-goog


