Return-Path: <devicetree+bounces-1364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B79DC7A600F
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:48:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71AAD281B6E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225A534CFC;
	Tue, 19 Sep 2023 10:47:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968DA1E511
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:47:48 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B83811AE
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:45 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1bf7a6509deso40289355ad.3
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695120465; x=1695725265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fYMqOhouQ/NFO/zChpCpAVYsC7sfn9gM3yv9sT3Wz5Q=;
        b=P5QBR23YyIBisa+cZMWNaPRcI6V0RELYVR7rA+crTFSyx/19IM0y+h9y1g8sWKR5IO
         j+p/EVPHVdoGsnE3Cs6uOBYXXovrjo3uqGQ70VzkhYq/5HTWVEWpdXLVd9iTO3nNg7Y3
         k6PXJYznjdx7OGN2ZLN433jhhE7xykBa9c0v0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695120465; x=1695725265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fYMqOhouQ/NFO/zChpCpAVYsC7sfn9gM3yv9sT3Wz5Q=;
        b=LUUDuvzg+tCkIK0vFQZHquk8mCEj28ZofgNAVmsLcYTK0Mj9WLHlQPf7BmFKgy/exH
         db5TiRmlGnxA62Xb3xVq7eHeLhH3UQdubeV9XmcGI3ZJTtjf9J7TpPEi0U1JrovV0Za/
         ESGYDkaJ1vJQvDyvhBB+twM85hfBdpDbOqXgDV12pAMDKReAPMbC/psGh4q1rS54QzxH
         czr+TwqInXPNNgp44nIMsezSGCmI2oQAm9/cEUlOeVpGi3AdO8+HBrcRYjwUw8zu8rxa
         9ETI1D4eseO3g9xFMjTU65JO/swJJmfdrDdpfq9u0eYNjWm26pG64yJs7E3vppvVlmom
         rMWw==
X-Gm-Message-State: AOJu0Yw6MwqAO+fg1ugHr6aDEay/jzpy4ce7qGvWGW5Tb1JaX6Wfv102
	LmO0iCmfgnpFg5FqvKMwMEOTjw==
X-Google-Smtp-Source: AGHT+IHHzkMWCd/GakpRqK3mlTfcYSPyKabAVxJCquDY2ycp5KowAgEMeYVz1qFglMENNn+bvAsBtQ==
X-Received: by 2002:a17:903:4294:b0:1c0:e6e1:4a11 with SMTP id ju20-20020a170903429400b001c0e6e14a11mr8140549plb.54.1695120465064;
        Tue, 19 Sep 2023 03:47:45 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:40a:900d:e731:5a43])
        by smtp.gmail.com with ESMTPSA id c10-20020a170902d48a00b001bc445e249asm6719578plg.124.2023.09.19.03.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 03:47:44 -0700 (PDT)
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
Subject: [PATCH v3 08/12] regulator: mt6358: fix and drop type prefix in MT6366 regulator node names
Date: Tue, 19 Sep 2023 18:43:51 +0800
Message-ID: <20230919104357.3971512-9-wenst@chromium.org>
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

The new MT6366 binding does away with the type prefix ("buck_", "ldo_")
in the regulator node names. This better matches the PMIC pin names.
Remaining underscores in names are also replaced with hyphens.

Drop the type prefixes and replace remaining underscores to match the
MT6366 binding.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/regulator/mt6358-regulator.c | 70 ++++++++++++++--------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
index cdb776d30a6d..7122ad43be6e 100644
--- a/drivers/regulator/mt6358-regulator.c
+++ b/drivers/regulator/mt6358-regulator.c
@@ -531,68 +531,68 @@ static const struct mt6358_regulator_info mt6358_regulators[] = {
 
 /* The array is indexed by id(MT6366_ID_XXX) */
 static const struct mt6358_regulator_info mt6366_regulators[] = {
-	MT6366_BUCK("buck_vdram1", VDRAM1, 500000, 2087500, 12500,
+	MT6366_BUCK("vdram1", VDRAM1, 500000, 2087500, 12500,
 		    0x7f, MT6358_BUCK_VDRAM1_DBG0, 0x7f, MT6358_VDRAM1_ANA_CON0, 8),
-	MT6366_BUCK("buck_vcore", VCORE, 500000, 1293750, 6250,
+	MT6366_BUCK("vcore", VCORE, 500000, 1293750, 6250,
 		    0x7f, MT6358_BUCK_VCORE_DBG0, 0x7f, MT6358_VCORE_VGPU_ANA_CON0, 1),
-	MT6366_BUCK("buck_vpa", VPA, 500000, 3650000, 50000,
+	MT6366_BUCK("vpa", VPA, 500000, 3650000, 50000,
 		    0x3f, MT6358_BUCK_VPA_DBG0, 0x3f, MT6358_VPA_ANA_CON0, 3),
-	MT6366_BUCK("buck_vproc11", VPROC11, 500000, 1293750, 6250,
+	MT6366_BUCK("vproc11", VPROC11, 500000, 1293750, 6250,
 		    0x7f, MT6358_BUCK_VPROC11_DBG0, 0x7f, MT6358_VPROC_ANA_CON0, 1),
-	MT6366_BUCK("buck_vproc12", VPROC12, 500000, 1293750, 6250,
+	MT6366_BUCK("vproc12", VPROC12, 500000, 1293750, 6250,
 		    0x7f, MT6358_BUCK_VPROC12_DBG0, 0x7f, MT6358_VPROC_ANA_CON0, 2),
-	MT6366_BUCK("buck_vgpu", VGPU, 500000, 1293750, 6250,
+	MT6366_BUCK("vgpu", VGPU, 500000, 1293750, 6250,
 		    0x7f, MT6358_BUCK_VGPU_ELR0, 0x7f, MT6358_VCORE_VGPU_ANA_CON0, 2),
-	MT6366_BUCK("buck_vs2", VS2, 500000, 2087500, 12500,
+	MT6366_BUCK("vs2", VS2, 500000, 2087500, 12500,
 		    0x7f, MT6358_BUCK_VS2_DBG0, 0x7f, MT6358_VS2_ANA_CON0, 8),
-	MT6366_BUCK("buck_vmodem", VMODEM, 500000, 1293750, 6250,
+	MT6366_BUCK("vmodem", VMODEM, 500000, 1293750, 6250,
 		    0x7f, MT6358_BUCK_VMODEM_DBG0, 0x7f, MT6358_VMODEM_ANA_CON0, 8),
-	MT6366_BUCK("buck_vs1", VS1, 1000000, 2587500, 12500,
+	MT6366_BUCK("vs1", VS1, 1000000, 2587500, 12500,
 		    0x7f, MT6358_BUCK_VS1_DBG0, 0x7f, MT6358_VS1_ANA_CON0, 8),
-	MT6366_REG_FIXED("ldo_vrf12", VRF12,
+	MT6366_REG_FIXED("vrf12", VRF12,
 			 MT6358_LDO_VRF12_CON0, 0, 1200000),
-	MT6366_REG_FIXED("ldo_vio18", VIO18,
+	MT6366_REG_FIXED("vio18", VIO18,
 			 MT6358_LDO_VIO18_CON0, 0, 1800000),
-	MT6366_REG_FIXED("ldo_vcn18", VCN18, MT6358_LDO_VCN18_CON0, 0, 1800000),
-	MT6366_REG_FIXED("ldo_vfe28", VFE28, MT6358_LDO_VFE28_CON0, 0, 2800000),
-	MT6366_REG_FIXED("ldo_vcn28", VCN28, MT6358_LDO_VCN28_CON0, 0, 2800000),
-	MT6366_REG_FIXED("ldo_vxo22", VXO22, MT6358_LDO_VXO22_CON0, 0, 2200000),
-	MT6366_REG_FIXED("ldo_vaux18", VAUX18,
+	MT6366_REG_FIXED("vcn18", VCN18, MT6358_LDO_VCN18_CON0, 0, 1800000),
+	MT6366_REG_FIXED("vfe28", VFE28, MT6358_LDO_VFE28_CON0, 0, 2800000),
+	MT6366_REG_FIXED("vcn28", VCN28, MT6358_LDO_VCN28_CON0, 0, 2800000),
+	MT6366_REG_FIXED("vxo22", VXO22, MT6358_LDO_VXO22_CON0, 0, 2200000),
+	MT6366_REG_FIXED("vaux18", VAUX18,
 			 MT6358_LDO_VAUX18_CON0, 0, 1800000),
-	MT6366_REG_FIXED("ldo_vbif28", VBIF28,
+	MT6366_REG_FIXED("vbif28", VBIF28,
 			 MT6358_LDO_VBIF28_CON0, 0, 2800000),
-	MT6366_REG_FIXED("ldo_vio28", VIO28, MT6358_LDO_VIO28_CON0, 0, 2800000),
-	MT6366_REG_FIXED("ldo_va12", VA12, MT6358_LDO_VA12_CON0, 0, 1200000),
-	MT6366_REG_FIXED("ldo_vrf18", VRF18, MT6358_LDO_VRF18_CON0, 0, 1800000),
-	MT6366_REG_FIXED("ldo_vaud28", VAUD28,
+	MT6366_REG_FIXED("vio28", VIO28, MT6358_LDO_VIO28_CON0, 0, 2800000),
+	MT6366_REG_FIXED("va12", VA12, MT6358_LDO_VA12_CON0, 0, 1200000),
+	MT6366_REG_FIXED("vrf18", VRF18, MT6358_LDO_VRF18_CON0, 0, 1800000),
+	MT6366_REG_FIXED("vaud28", VAUD28,
 			 MT6358_LDO_VAUD28_CON0, 0, 2800000),
-	MT6366_LDO("ldo_vdram2", VDRAM2, vdram2,
+	MT6366_LDO("vdram2", VDRAM2, vdram2,
 		   MT6358_LDO_VDRAM2_CON0, 0, MT6358_LDO_VDRAM2_ELR0, 0x10),
-	MT6366_LDO("ldo_vsim1", VSIM1, vsim,
+	MT6366_LDO("vsim1", VSIM1, vsim,
 		   MT6358_LDO_VSIM1_CON0, 0, MT6358_VSIM1_ANA_CON0, 0xf00),
-	MT6366_LDO("ldo_vibr", VIBR, vibr,
+	MT6366_LDO("vibr", VIBR, vibr,
 		   MT6358_LDO_VIBR_CON0, 0, MT6358_VIBR_ANA_CON0, 0xf00),
-	MT6366_LDO("ldo_vusb", VUSB, vusb,
+	MT6366_LDO("vusb", VUSB, vusb,
 		   MT6358_LDO_VUSB_CON0_0, 0, MT6358_VUSB_ANA_CON0, 0x700),
-	MT6366_LDO("ldo_vefuse", VEFUSE, vefuse,
+	MT6366_LDO("vefuse", VEFUSE, vefuse,
 		   MT6358_LDO_VEFUSE_CON0, 0, MT6358_VEFUSE_ANA_CON0, 0xf00),
-	MT6366_LDO("ldo_vmch", VMCH, vmch_vemc,
+	MT6366_LDO("vmch", VMCH, vmch_vemc,
 		   MT6358_LDO_VMCH_CON0, 0, MT6358_VMCH_ANA_CON0, 0x700),
-	MT6366_LDO("ldo_vemc", VEMC, vmch_vemc,
+	MT6366_LDO("vemc", VEMC, vmch_vemc,
 		   MT6358_LDO_VEMC_CON0, 0, MT6358_VEMC_ANA_CON0, 0x700),
-	MT6366_LDO("ldo_vcn33", VCN33, vcn33,
+	MT6366_LDO("vcn33", VCN33, vcn33,
 		   MT6358_LDO_VCN33_CON0_0, 0, MT6358_VCN33_ANA_CON0, 0x300),
-	MT6366_LDO("ldo_vmc", VMC, vmc,
+	MT6366_LDO("vmc", VMC, vmc,
 		   MT6358_LDO_VMC_CON0, 0, MT6358_VMC_ANA_CON0, 0xf00),
-	MT6366_LDO("ldo_vsim2", VSIM2, vsim,
+	MT6366_LDO("vsim2", VSIM2, vsim,
 		   MT6358_LDO_VSIM2_CON0, 0, MT6358_VSIM2_ANA_CON0, 0xf00),
-	MT6366_LDO1("ldo_vsram_proc11", VSRAM_PROC11, 500000, 1293750, 6250,
+	MT6366_LDO1("vsram-proc11", VSRAM_PROC11, 500000, 1293750, 6250,
 		    MT6358_LDO_VSRAM_PROC11_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON0, 0x7f),
-	MT6366_LDO1("ldo_vsram_others", VSRAM_OTHERS, 500000, 1293750, 6250,
+	MT6366_LDO1("vsram-others", VSRAM_OTHERS, 500000, 1293750, 6250,
 		    MT6358_LDO_VSRAM_OTHERS_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON2, 0x7f),
-	MT6366_LDO1("ldo_vsram_gpu", VSRAM_GPU, 500000, 1293750, 6250,
+	MT6366_LDO1("vsram-gpu", VSRAM_GPU, 500000, 1293750, 6250,
 		    MT6358_LDO_VSRAM_GPU_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON3, 0x7f),
-	MT6366_LDO1("ldo_vsram_proc12", VSRAM_PROC12, 500000, 1293750, 6250,
+	MT6366_LDO1("vsram-proc12", VSRAM_PROC12, 500000, 1293750, 6250,
 		    MT6358_LDO_VSRAM_PROC12_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON1, 0x7f),
 };
 
-- 
2.42.0.459.ge4e396fd5e-goog


