Return-Path: <devicetree+bounces-1365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DAF7A6010
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5683B1C20CA0
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96ADD31A67;
	Tue, 19 Sep 2023 10:47:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5FD1E511
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:47:51 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41AB9CCE
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:48 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1bdf4752c3cso39800065ad.2
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695120467; x=1695725267; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dgL7bVCmTeXSAUxRJPsWW6VflSxwxTKu8gD+M41yTns=;
        b=FhvzI2NSK1EAajnK3SXAcuVLKuQ5B8vpp14VRnZPEOmRzKnSsG95ONvPnYDYM9jAAL
         QHsIeL7xjureJleYDlwJ+U7oY/Jq9WmlUtxUoM2qWgk3AKWwcZYVY5XKgOTgyVh9gXoB
         WB8lS8jZjNDz4z+SjaQO+tWLpc/iSnw9b2WE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695120467; x=1695725267;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dgL7bVCmTeXSAUxRJPsWW6VflSxwxTKu8gD+M41yTns=;
        b=pAtXFYQh+kuUN8ZqVVezYZOxaxKTQj5r/9DK9cKh86GUZ6fz+8sbPUW26aMaDRRwUW
         t0/Kq3bdmCDXFGnBWPxccs7fJwugwwglIJxjbekXLNVUJ/5JdFOYCeWoaDw10fVTRy77
         8oqUWrq4x2x1Zu55cM+tfCnL94gBo5Z+OVO3nZO9Cw6IAhoRAnXKrDTuR9jNhSzF3jLA
         ifKnOtfJqWZHMrQPeledKBXqAh2J+itn/8/6v1CztAgW1tX0my8lnHFxBunaFVljgZUb
         sQEKJsn66mbqlwNvbHdj77Z5xjswb/e2eoM9Pn8u511ASRQK9I+ad0GUIhF95CFyQ+sc
         34LQ==
X-Gm-Message-State: AOJu0YzjU01MkbLBFpprzjGkK30HVkr3E0Zx6382M8Co6BcdjtNeurZ0
	40dsBg6NedJkeeplczgPOWvArQ==
X-Google-Smtp-Source: AGHT+IFplgVxrIR06V2bVySXAOitXyoTokakgA3Y/GdbyCeDXtXSoOdxb5QtMFQuHjFRcC1bH76SvA==
X-Received: by 2002:a17:902:db0b:b0:1c4:5c05:c3c9 with SMTP id m11-20020a170902db0b00b001c45c05c3c9mr7490890plx.56.1695120467676;
        Tue, 19 Sep 2023 03:47:47 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:40a:900d:e731:5a43])
        by smtp.gmail.com with ESMTPSA id c10-20020a170902d48a00b001bc445e249asm6719578plg.124.2023.09.19.03.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 03:47:47 -0700 (PDT)
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
Subject: [PATCH v3 09/12] regulator: mt6358: Make MT6366 vcn18 LDO configurable
Date: Tue, 19 Sep 2023 18:43:52 +0800
Message-ID: <20230919104357.3971512-10-wenst@chromium.org>
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

The VCN18 regulator on the MT6366 (only) actually has a wide
configurable range of voltages, even though its name suggests a fixed
output voltage.

Convert it from a fixed LDO to a configurable LDO. Its range of settings
is the same as the VM18 regulator, which is missing and will be added in
a subsequent patch.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v2:
- Linear range selector values fixed

Angelo's reviewed-by was dropped.

 drivers/regulator/mt6358-regulator.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
index 7122ad43be6e..fdd4710d57d8 100644
--- a/drivers/regulator/mt6358-regulator.c
+++ b/drivers/regulator/mt6358-regulator.c
@@ -325,6 +325,27 @@ static const struct linear_range vldo28_ranges[] = {
 	REGULATOR_LINEAR_RANGE(3000000, 0, 10, 10000),
 };
 
+static const unsigned int mt6366_vcn18_vm18_selectors[] = {
+	0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };
+static const struct linear_range mt6366_vcn18_vm18_ranges[] = {
+	REGULATOR_LINEAR_RANGE(600000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(700000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(800000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(900000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1000000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1100000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1200000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1300000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1400000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1500000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1600000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1700000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1800000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(1900000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(2000000, 0, 10, 10000),
+	REGULATOR_LINEAR_RANGE(2100000, 0, 10, 10000),
+};
+
 static unsigned int mt6358_map_mode(unsigned int mode)
 {
 	return mode == MT6397_BUCK_MODE_AUTO ?
@@ -553,7 +574,6 @@ static const struct mt6358_regulator_info mt6366_regulators[] = {
 			 MT6358_LDO_VRF12_CON0, 0, 1200000),
 	MT6366_REG_FIXED("vio18", VIO18,
 			 MT6358_LDO_VIO18_CON0, 0, 1800000),
-	MT6366_REG_FIXED("vcn18", VCN18, MT6358_LDO_VCN18_CON0, 0, 1800000),
 	MT6366_REG_FIXED("vfe28", VFE28, MT6358_LDO_VFE28_CON0, 0, 2800000),
 	MT6366_REG_FIXED("vcn28", VCN28, MT6358_LDO_VCN28_CON0, 0, 2800000),
 	MT6366_REG_FIXED("vxo22", VXO22, MT6358_LDO_VXO22_CON0, 0, 2200000),
@@ -586,6 +606,8 @@ static const struct mt6358_regulator_info mt6366_regulators[] = {
 		   MT6358_LDO_VMC_CON0, 0, MT6358_VMC_ANA_CON0, 0xf00),
 	MT6366_LDO("vsim2", VSIM2, vsim,
 		   MT6358_LDO_VSIM2_CON0, 0, MT6358_VSIM2_ANA_CON0, 0xf00),
+	MT6366_LDO("vcn18", VCN18, mt6366_vcn18_vm18,
+		   MT6358_LDO_VCN18_CON0, 0, MT6358_VCN18_ANA_CON0, 0xf00),
 	MT6366_LDO1("vsram-proc11", VSRAM_PROC11, 500000, 1293750, 6250,
 		    MT6358_LDO_VSRAM_PROC11_DBG0, 0x7f00, MT6358_LDO_VSRAM_CON0, 0x7f),
 	MT6366_LDO1("vsram-others", VSRAM_OTHERS, 500000, 1293750, 6250,
-- 
2.42.0.459.ge4e396fd5e-goog


