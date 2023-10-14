Return-Path: <devicetree+bounces-8625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1BF7C94C8
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:38:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E1011C20B00
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 13:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62F1412B73;
	Sat, 14 Oct 2023 13:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DFB1170F
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 13:38:39 +0000 (UTC)
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F04C2;
	Sat, 14 Oct 2023 06:38:37 -0700 (PDT)
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id 3BC0A1C071C;
	Sat, 14 Oct 2023 15:38:34 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
Received: from fluffy-mammal.fritz.box (dslb-088-078-204-065.088.078.pools.vodafone-ip.de [88.78.204.65])
	by srv01.abscue.de (Postfix) with ESMTPSA id C5B1D1C071A;
	Sat, 14 Oct 2023 15:38:33 +0200 (CEST)
From: =?UTF-8?q?Otto=20Pfl=C3=BCger?= <otto.pflueger@abscue.de>
To: linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	=?UTF-8?q?Otto=20Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: [PATCH v4 2/3] pmdomain: qcom: rpmpd: Add MSM8917 power domains
Date: Sat, 14 Oct 2023 15:38:22 +0200
Message-Id: <20231014133823.14088-3-otto.pflueger@abscue.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231014133823.14088-1-otto.pflueger@abscue.de>
References: <20231014133823.14088-1-otto.pflueger@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

MSM8917 uses the SMPA2 and LDOA3 regulators provided by the PM8937 PMIC
for the VDDCX and VDDMX power domains in voltage level mode,
respectively. These definitions should also work on MSM8937.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 drivers/pmdomain/qcom/rpmpd.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmpd.c b/drivers/pmdomain/qcom/rpmpd.c
index 3135dd1dafe0..2980ebd6ed8c 100644
--- a/drivers/pmdomain/qcom/rpmpd.c
+++ b/drivers/pmdomain/qcom/rpmpd.c
@@ -257,6 +257,24 @@ static struct rpmpd mx_l3a_corner_ao = {
 	.key = KEY_CORNER,
 };
 
+static struct rpmpd mx_l3a_lvl_ao;
+static struct rpmpd mx_l3a_lvl = {
+	.pd = { .name = "mx", },
+	.peer = &mx_l3a_lvl_ao,
+	.res_type = RPMPD_LDOA,
+	.res_id = 3,
+	.key = KEY_LEVEL,
+};
+
+static struct rpmpd mx_l3a_lvl_ao = {
+	.pd = { .name = "mx_ao", },
+	.peer = &mx_l3a_lvl,
+	.active_only = true,
+	.res_type = RPMPD_LDOA,
+	.res_id = 3,
+	.key = KEY_LEVEL,
+};
+
 static struct rpmpd mx_l12a_lvl_ao;
 static struct rpmpd mx_l12a_lvl = {
 	.pd = { .name = "mx", },
@@ -572,6 +590,20 @@ static const struct rpmpd_desc msm8916_desc = {
 	.max_state = MAX_CORNER_RPMPD_STATE,
 };
 
+static struct rpmpd *msm8917_rpmpds[] = {
+	[MSM8917_VDDCX] =	&cx_s2a_lvl,
+	[MSM8917_VDDCX_AO] =	&cx_s2a_lvl_ao,
+	[MSM8917_VDDCX_VFL] =	&cx_s2a_vfl,
+	[MSM8917_VDDMX] =	&mx_l3a_lvl,
+	[MSM8917_VDDMX_AO] =	&mx_l3a_lvl_ao,
+};
+
+static const struct rpmpd_desc msm8917_desc = {
+	.rpmpds = msm8917_rpmpds,
+	.num_pds = ARRAY_SIZE(msm8917_rpmpds),
+	.max_state = RPM_SMD_LEVEL_TURBO,
+};
+
 static struct rpmpd *msm8953_rpmpds[] = {
 	[MSM8953_VDDMD] =	&md_s1a_lvl,
 	[MSM8953_VDDMD_AO] =	&md_s1a_lvl_ao,
@@ -764,6 +796,7 @@ static const struct of_device_id rpmpd_match_table[] = {
 	{ .compatible = "qcom,msm8226-rpmpd", .data = &msm8226_desc },
 	{ .compatible = "qcom,msm8909-rpmpd", .data = &msm8916_desc },
 	{ .compatible = "qcom,msm8916-rpmpd", .data = &msm8916_desc },
+	{ .compatible = "qcom,msm8917-rpmpd", .data = &msm8917_desc },
 	{ .compatible = "qcom,msm8939-rpmpd", .data = &msm8939_desc },
 	{ .compatible = "qcom,msm8953-rpmpd", .data = &msm8953_desc },
 	{ .compatible = "qcom,msm8976-rpmpd", .data = &msm8976_desc },
-- 
2.39.2

