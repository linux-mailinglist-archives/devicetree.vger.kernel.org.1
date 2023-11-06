Return-Path: <devicetree+bounces-14122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA96D7E20F2
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D89AD1C20BA7
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C278D1EB41;
	Mon,  6 Nov 2023 12:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="esaN8iFg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E6C1EB36
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:09:14 +0000 (UTC)
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C65FC19B6;
	Mon,  6 Nov 2023 04:09:12 -0800 (PST)
Received: from mx0.riseup.net (mx0-pn.riseup.net [10.0.1.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4SP9BJ2gTxzDqsX;
	Mon,  6 Nov 2023 12:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1699272552; bh=7pgsRKWcwRTNDPHDoZLIANiLecTwz83xiDRbmz/rPtw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=esaN8iFgm8e8WFmO+JYOBohR4UiK0MoDXYBqE4zmbd3wD1T6zxEL06S4HWAS650XE
	 ynKy8ez+K4RqbG2P46OAPfX6KadUgHSkiHLqxMjqtMOERMUXojqk8XqdRbrJqHQDW1
	 GPL+a9pl5eUr5X1ni6EFosM3louB6+QnAxWaK8qY=
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx0.riseup.net (Postfix) with ESMTPS id 4SP9BH14Zlz9t68;
	Mon,  6 Nov 2023 12:09:11 +0000 (UTC)
X-Riseup-User-ID: BD66EE103BBC77DFC4872B2C4102DF19499F98CDCA7198128B6896BB94568163
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4SP9BC5vCgzJmsF;
	Mon,  6 Nov 2023 12:09:07 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Mon, 06 Nov 2023 19:08:33 +0700
Subject: [PATCH 5/8] regulator: qcom_smd: Add PM8937 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-pm8937-v1-5-ec51d9eeec53@riseup.net>
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
In-Reply-To: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Robert Marko <robimarko@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Dang Huynh <danct12@riseup.net>

The PM8937 is found on boards with MSM8917, MSM8937, MSM8940 SoCs and
APQ variants.

It provides 6 SMPS (two are controlled by SPMI) and 23 LDO regulators.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
 drivers/regulator/qcom_smd-regulator.c | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/regulator/qcom_smd-regulator.c b/drivers/regulator/qcom_smd-regulator.c
index f53ada076252..09c471a0ba2e 100644
--- a/drivers/regulator/qcom_smd-regulator.c
+++ b/drivers/regulator/qcom_smd-regulator.c
@@ -1012,6 +1012,39 @@ static const struct rpm_regulator_data rpm_pm8916_regulators[] = {
 	{}
 };
 
+static const struct rpm_regulator_data rpm_pm8937_regulators[] = {
+	{ "s1", QCOM_SMD_RPM_SMPA, 1, &pm8994_hfsmps, "vdd_s1" },
+	{ "s2", QCOM_SMD_RPM_SMPA, 2, &pm8994_hfsmps, "vdd_s2" },
+	{ "s3", QCOM_SMD_RPM_SMPA, 3, &pm8994_hfsmps, "vdd_s3" },
+	{ "s4", QCOM_SMD_RPM_SMPA, 4, &pm8994_hfsmps, "vdd_s4" },
+	/* S5 - S6 are managed by SPMI */
+
+	{ "l1", QCOM_SMD_RPM_LDOA, 1, &pm8953_ult_nldo, "vdd_l1_l19" },
+	{ "l2", QCOM_SMD_RPM_LDOA, 2, &pm8953_ult_nldo, "vdd_l2_l23" },
+	{ "l3", QCOM_SMD_RPM_LDOA, 3, &pm8953_ult_nldo, "vdd_l3" },
+	{ "l4", QCOM_SMD_RPM_LDOA, 4, &pm8950_ult_pldo, "vdd_l4_l5_l6_l7_l16" },
+	{ "l5", QCOM_SMD_RPM_LDOA, 5, &pm8950_ult_pldo, "vdd_l4_l5_l6_l7_l16" },
+	{ "l6", QCOM_SMD_RPM_LDOA, 6, &pm8950_ult_pldo, "vdd_l4_l5_l6_l7_l16" },
+	{ "l7", QCOM_SMD_RPM_LDOA, 7, &pm8950_ult_pldo, "vdd_l4_l5_l6_l7_l16" },
+	{ "l8", QCOM_SMD_RPM_LDOA, 8, &pm8950_ult_pldo, "vdd_l8_l11_l12_l17_l22" },
+	{ "l9", QCOM_SMD_RPM_LDOA, 9, &pm8950_ult_pldo, "vdd_l9_l10_l13_l14_l15_l18" },
+	{ "l10", QCOM_SMD_RPM_LDOA, 10, &pm8950_ult_pldo, "vdd_l9_l10_l13_l14_l15_l18"},
+	{ "l11", QCOM_SMD_RPM_LDOA, 11, &pm8950_ult_pldo, "vdd_l8_l11_l12_l17_l22" },
+	{ "l12", QCOM_SMD_RPM_LDOA, 12, &pm8950_ult_pldo, "vdd_l8_l11_l12_l17_l22" },
+	{ "l13", QCOM_SMD_RPM_LDOA, 13, &pm8950_ult_pldo, "vdd_l9_l10_l13_l14_l15_l18" },
+	{ "l14", QCOM_SMD_RPM_LDOA, 14, &pm8950_ult_pldo, "vdd_l9_l10_l13_l14_l15_l18" },
+	{ "l15", QCOM_SMD_RPM_LDOA, 15, &pm8950_ult_pldo, "vdd_l9_l10_l13_l14_l15_l18" },
+	{ "l16", QCOM_SMD_RPM_LDOA, 16, &pm8950_ult_pldo, "vdd_l4_l5_l6_l7_l16" },
+	{ "l17", QCOM_SMD_RPM_LDOA, 17, &pm8950_ult_pldo, "vdd_l8_l11_l12_l17_l22" },
+	{ "l18", QCOM_SMD_RPM_LDOA, 18, &pm8950_ult_pldo, "vdd_l9_l10_l13_l14_l15_l18" },
+	{ "l19", QCOM_SMD_RPM_LDOA, 19, &pm8953_ult_nldo, "vdd_l1_l19" },
+	{ "l20", QCOM_SMD_RPM_LDOA, 20, &pm8953_lnldo, "vdd_l20_l21" },
+	{ "l21", QCOM_SMD_RPM_LDOA, 21, &pm8953_lnldo, "vdd_l20_l21" },
+	{ "l22", QCOM_SMD_RPM_LDOA, 22, &pm8950_ult_pldo, "vdd_l8_l11_l12_l17_l22" },
+	{ "l23", QCOM_SMD_RPM_LDOA, 23, &pm8994_nldo, "vdd_l2_l23" },
+	{}
+};
+
 static const struct rpm_regulator_data rpm_pm8941_regulators[] = {
 	{ "s1", QCOM_SMD_RPM_SMPA, 1, &pm8x41_hfsmps, "vdd_s1" },
 	{ "s2", QCOM_SMD_RPM_SMPA, 2, &pm8x41_hfsmps, "vdd_s2" },
@@ -1329,6 +1362,7 @@ static const struct of_device_id rpm_of_match[] = {
 	{ .compatible = "qcom,rpm-pm8841-regulators", .data = &rpm_pm8841_regulators },
 	{ .compatible = "qcom,rpm-pm8909-regulators", .data = &rpm_pm8909_regulators },
 	{ .compatible = "qcom,rpm-pm8916-regulators", .data = &rpm_pm8916_regulators },
+	{ .compatible = "qcom,rpm-pm8937-regulators", .data = &rpm_pm8937_regulators },
 	{ .compatible = "qcom,rpm-pm8941-regulators", .data = &rpm_pm8941_regulators },
 	{ .compatible = "qcom,rpm-pm8950-regulators", .data = &rpm_pm8950_regulators },
 	{ .compatible = "qcom,rpm-pm8953-regulators", .data = &rpm_pm8953_regulators },

-- 
2.42.1


