Return-Path: <devicetree+bounces-1366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A09E77A6012
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B246E1C20D53
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 197193588D;
	Tue, 19 Sep 2023 10:47:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC6F1D6AF
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:47:54 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCDEECD5
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:50 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1c453379020so21266035ad.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695120470; x=1695725270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tf1PJ0q6TPVMk350o6dx+lktk/58er+x6Zb73ZYfynQ=;
        b=Q/ggL1H9YqY9EGTcsvmkUi8w7Awtqozat/PxD3Z7TgY4A4eHnKXxQPKFhzUCAmH7sg
         9C74koxkR4tM1dtbVaLc0r8xRBUWtjm6I4iNOk15+6i1N/sJiMYreu5NxFHVh4NlcLgM
         E5agIEjVhaiZBOUmogv4LzAxNQ2Pt6IdrZf/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695120470; x=1695725270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tf1PJ0q6TPVMk350o6dx+lktk/58er+x6Zb73ZYfynQ=;
        b=Es8C6nQWAygPaikTP2/Sh7EZt6uQ2wWPUr49Vutt9mY9blKU0gXqSb8vudYwqvmo7d
         HeSFJKALFH7zJzoHz7W49imyFUhovz5AGQz6RO+NM+79k35YLb1Ah2uQp9YO/Zh6Gx0l
         tQ4OacF5QETzGPvynnNcWQMkP7USzdnXEka6W1ytnPdzlUyibM44KlSRgH/8xGIHAtRX
         k2sey/zqgB5aR4VML3JTnvL2gJ5o1UUgiPwe4fYO319NZtbZoHHh9IjlPPLEbk33cuxU
         q3XPzjGZOOoUSHVmbIAaph60ga8xaeGLMbh/Vy2D7OyjwuFsBm9D/z7SzHmInSgrqvTk
         2kOw==
X-Gm-Message-State: AOJu0Ywb8C+Rri4ExOevKi2+KgbK2RAhsD2+dYyc+B9vXvAnrr3t04F+
	C9dQc2tK0Ai4B++x6WXUFfgBKw==
X-Google-Smtp-Source: AGHT+IEPQpYEmvz+rkUsRQyZUYWzWGPrXaM3U8K+FD9IZLsKj7Dw7GTNVpixJ9Se0TkvURz5KQTX8g==
X-Received: by 2002:a17:903:41c4:b0:1c0:bcbc:d5d with SMTP id u4-20020a17090341c400b001c0bcbc0d5dmr12153313ple.61.1695120470286;
        Tue, 19 Sep 2023 03:47:50 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:40a:900d:e731:5a43])
        by smtp.gmail.com with ESMTPSA id c10-20020a170902d48a00b001bc445e249asm6719578plg.124.2023.09.19.03.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 03:47:49 -0700 (PDT)
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
Subject: [PATCH v3 10/12] regulator: mt6358: Add missing regulators for MT6366
Date: Tue, 19 Sep 2023 18:43:53 +0800
Message-ID: <20230919104357.3971512-11-wenst@chromium.org>
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

When support for the MT6366 PMIC regulators was added, it was assumed
that it had the same functionality as MT6358. In reality there are
differences. A few regulators have different ranges, or were renamed
and repurposed, or removed altogether.

Add the 3 regulators that were missing from the original submission.
These are added for completeness. VSRAM_CORE is not used in existing
projects. VM18 and VMDDR feed DRAM related consumers, and are not used
in-kernel.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v2:
- Linear range selector values fixed

Angelo's reviewed-by was dropped.

 drivers/regulator/mt6358-regulator.c       | 20 ++++++++++++++++++++
 include/linux/mfd/mt6358/registers.h       | 17 +++++++++++++++++
 include/linux/regulator/mt6358-regulator.h |  3 +++
 3 files changed, 40 insertions(+)

diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
index fdd4710d57d8..4e7891e514b6 100644
--- a/drivers/regulator/mt6358-regulator.c
+++ b/drivers/regulator/mt6358-regulator.c
@@ -325,6 +325,20 @@ static const struct linear_range vldo28_ranges[] = {
 	REGULATOR_LINEAR_RANGE(3000000, 0, 10, 10000),
 };
 
+static const unsigned int mt6366_vmddr_selectors[] = { 0, 1, 2, 3, 4, 5, 6, 7, 9, 12 };
+static const struct linear_range mt6366_vmddr_ranges[] = {
+	REGULATOR_LINEAR_RANGE(600000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(700000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(800000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(900000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1000000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1100000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1200000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1300000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1500000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1800000, 0, 10, 10000),
+};
+
 static const unsigned int mt6366_vcn18_vm18_selectors[] = {
 	0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };
 static const struct linear_range mt6366_vcn18_vm18_ranges[] = {
@@ -608,6 +622,10 @@ static const struct mt6358_regulator_info mt6366_regulators[] = {
 		   MT6358_LDO_VSIM2_CON0, 0, MT6358_VSIM2_ANA_CON0, 0xf00),
 	MT6366_LDO("vcn18", VCN18, mt6366_vcn18_vm18,
 		   MT6358_LDO_VCN18_CON0, 0, MT6358_VCN18_ANA_CON0, 0xf00),
+	MT6366_LDO("vm18", VM18, mt6366_vcn18_vm18,
+		   MT6358_LDO_VM18_CON0, 0, MT6358_VM18_ANA_CON0, 0xf00),
+	MT6366_LDO("vmddr", VMDDR, mt6366_vmddr,
+		   MT6358_LDO_VMDDR_CON0, 0, MT6358_VMDDR_ANA_CON0, 0xf00),
 	MT6366_LDO1("vsram-proc11", VSRAM_PROC11, 500000, 1293750, 6250,
 		    MT6358_LDO_VSRAM_PROC11_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON0, 0x7f),
 	MT6366_LDO1("vsram-others", VSRAM_OTHERS, 500000, 1293750, 6250,
@@ -616,6 +634,8 @@ static const struct mt6358_regulator_info mt6366_regulators[] = {
 		    MT6358_LDO_VSRAM_GPU_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON3, 0x7f),
 	MT6366_LDO1("vsram-proc12", VSRAM_PROC12, 500000, 1293750, 6250,
 		    MT6358_LDO_VSRAM_PROC12_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON1, 0x7f),
+	MT6366_LDO1("vsram-core", VSRAM_CORE, 500000, 1293750, 6250,
+		    MT6358_LDO_VSRAM_CORE_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON5, 0x7f),
 };
 
 static int mt6358_sync_vcn33_setting(struct device *dev)
diff --git a/include/linux/mfd/mt6358/registers.h b/include/linux/mfd/mt6358/registers.h
index 5ea2590be710..d83e87298ac4 100644
--- a/include/linux/mfd/mt6358/registers.h
+++ b/include/linux/mfd/mt6358/registers.h
@@ -294,4 +294,21 @@
 #define MT6358_AUD_TOP_INT_CON0               0x2228
 #define MT6358_AUD_TOP_INT_STATUS0            0x2234
 
+/*
+ * MT6366 has no VCAM*, but has other regulators in its place. The names
+ * keep the MT6358 prefix for ease of use in the regulator driver.
+ */
+#define MT6358_LDO_VSRAM_CON5                 0x1bf8
+#define MT6358_LDO_VM18_CON0                  MT6358_LDO_VCAMA1_CON0
+#define MT6358_LDO_VM18_CON1                  MT6358_LDO_VCAMA1_CON1
+#define MT6358_LDO_VM18_CON2                  MT6358_LDO_VCAMA1_CON2
+#define MT6358_LDO_VMDDR_CON0                 MT6358_LDO_VCAMA2_CON0
+#define MT6358_LDO_VMDDR_CON1                 MT6358_LDO_VCAMA2_CON1
+#define MT6358_LDO_VMDDR_CON2                 MT6358_LDO_VCAMA2_CON2
+#define MT6358_LDO_VSRAM_CORE_CON0            MT6358_LDO_VCAMD_CON0
+#define MT6358_LDO_VSRAM_CORE_DBG0            0x1cb6
+#define MT6358_LDO_VSRAM_CORE_DBG1            0x1cb8
+#define MT6358_VM18_ANA_CON0                  MT6358_VCAMA1_ANA_CON0
+#define MT6358_VMDDR_ANA_CON0                 MT6358_VCAMD_ANA_CON0
+
 #endif /* __MFD_MT6358_REGISTERS_H__ */
diff --git a/include/linux/regulator/mt6358-regulator.h b/include/linux/regulator/mt6358-regulator.h
index c71a6a9fce7a..562386f9b80e 100644
--- a/include/linux/regulator/mt6358-regulator.h
+++ b/include/linux/regulator/mt6358-regulator.h
@@ -86,6 +86,9 @@ enum {
 	MT6366_ID_VMC,
 	MT6366_ID_VAUD28,
 	MT6366_ID_VSIM2,
+	MT6366_ID_VM18,
+	MT6366_ID_VMDDR,
+	MT6366_ID_VSRAM_CORE,
 	MT6366_ID_RG_MAX,
 };
 
-- 
2.42.0.459.ge4e396fd5e-goog


