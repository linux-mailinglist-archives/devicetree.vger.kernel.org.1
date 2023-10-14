Return-Path: <devicetree+bounces-8624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A74717C94C7
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:38:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B6F8282373
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 13:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FAD612B6F;
	Sat, 14 Oct 2023 13:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAC1125DB
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 13:38:39 +0000 (UTC)
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2F25AD;
	Sat, 14 Oct 2023 06:38:37 -0700 (PDT)
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id AAB491C071A;
	Sat, 14 Oct 2023 15:38:34 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
Received: from fluffy-mammal.fritz.box (dslb-088-078-204-065.088.078.pools.vodafone-ip.de [88.78.204.65])
	by srv01.abscue.de (Postfix) with ESMTPSA id 425A61C071E;
	Sat, 14 Oct 2023 15:38:34 +0200 (CEST)
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
Subject: [PATCH v4 3/3] pmdomain: qcom: rpmpd: Add QM215 power domains
Date: Sat, 14 Oct 2023 15:38:23 +0200
Message-Id: <20231014133823.14088-4-otto.pflueger@abscue.de>
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

QM215 is typically paired with a PM8916 PMIC and uses its SMPA1 and
LDOA2 regulators in voltage level mode for VDDCX and VDDMX, respectively.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 drivers/pmdomain/qcom/rpmpd.c | 58 +++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmpd.c b/drivers/pmdomain/qcom/rpmpd.c
index 2980ebd6ed8c..d793cf2f3af8 100644
--- a/drivers/pmdomain/qcom/rpmpd.c
+++ b/drivers/pmdomain/qcom/rpmpd.c
@@ -105,6 +105,24 @@ static struct rpmpd cx_s1a_corner_ao = {
 	.key = KEY_CORNER,
 };
 
+static struct rpmpd cx_s1a_lvl_ao;
+static struct rpmpd cx_s1a_lvl = {
+	.pd = { .name = "cx", },
+	.peer = &cx_s1a_lvl_ao,
+	.res_type = RPMPD_SMPA,
+	.res_id = 1,
+	.key = KEY_LEVEL,
+};
+
+static struct rpmpd cx_s1a_lvl_ao = {
+	.pd = { .name = "cx_ao", },
+	.peer = &cx_s1a_lvl,
+	.active_only = true,
+	.res_type = RPMPD_SMPA,
+	.res_id = 1,
+	.key = KEY_LEVEL,
+};
+
 static struct rpmpd cx_s2a_corner_ao;
 static struct rpmpd cx_s2a_corner = {
 	.pd = { .name = "cx", },
@@ -180,6 +198,13 @@ static struct rpmpd cx_s1a_vfc = {
 	.key = KEY_FLOOR_CORNER,
 };
 
+static struct rpmpd cx_s1a_vfl = {
+	.pd = { .name = "cx_vfl", },
+	.res_type = RPMPD_SMPA,
+	.res_id = 1,
+	.key = KEY_FLOOR_LEVEL,
+};
+
 static struct rpmpd cx_s2a_vfc = {
 	.pd = { .name = "cx_vfc", },
 	.res_type = RPMPD_SMPA,
@@ -239,6 +264,24 @@ static struct rpmpd gx_rwgx0_lvl_ao = {
 };
 
 /* MX */
+static struct rpmpd mx_l2a_lvl_ao;
+static struct rpmpd mx_l2a_lvl = {
+	.pd = { .name = "mx", },
+	.peer = &mx_l2a_lvl_ao,
+	.res_type = RPMPD_LDOA,
+	.res_id = 2,
+	.key = KEY_LEVEL,
+};
+
+static struct rpmpd mx_l2a_lvl_ao = {
+	.pd = { .name = "mx_ao", },
+	.peer = &mx_l2a_lvl,
+	.active_only = true,
+	.res_type = RPMPD_LDOA,
+	.res_id = 2,
+	.key = KEY_LEVEL,
+};
+
 static struct rpmpd mx_l3a_corner_ao;
 static struct rpmpd mx_l3a_corner = {
 	.pd = { .name = "mx", },
@@ -704,6 +747,20 @@ static const struct rpmpd_desc qcs404_desc = {
 	.max_state = RPM_SMD_LEVEL_BINNING,
 };
 
+static struct rpmpd *qm215_rpmpds[] = {
+	[QM215_VDDCX] =		&cx_s1a_lvl,
+	[QM215_VDDCX_AO] =	&cx_s1a_lvl_ao,
+	[QM215_VDDCX_VFL] =	&cx_s1a_vfl,
+	[QM215_VDDMX] =		&mx_l2a_lvl,
+	[QM215_VDDMX_AO] =	&mx_l2a_lvl_ao,
+};
+
+static const struct rpmpd_desc qm215_desc = {
+	.rpmpds = qm215_rpmpds,
+	.num_pds = ARRAY_SIZE(qm215_rpmpds),
+	.max_state = RPM_SMD_LEVEL_TURBO,
+};
+
 static struct rpmpd *sdm660_rpmpds[] = {
 	[SDM660_VDDCX] =	&cx_rwcx0_lvl,
 	[SDM660_VDDCX_AO] =	&cx_rwcx0_lvl_ao,
@@ -805,6 +862,7 @@ static const struct of_device_id rpmpd_match_table[] = {
 	{ .compatible = "qcom,msm8998-rpmpd", .data = &msm8998_desc },
 	{ .compatible = "qcom,qcm2290-rpmpd", .data = &qcm2290_desc },
 	{ .compatible = "qcom,qcs404-rpmpd", .data = &qcs404_desc },
+	{ .compatible = "qcom,qm215-rpmpd", .data = &qm215_desc },
 	{ .compatible = "qcom,sdm660-rpmpd", .data = &sdm660_desc },
 	{ .compatible = "qcom,sm6115-rpmpd", .data = &sm6115_desc },
 	{ .compatible = "qcom,sm6125-rpmpd", .data = &sm6125_desc },
-- 
2.39.2

