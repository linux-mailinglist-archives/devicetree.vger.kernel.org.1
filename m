Return-Path: <devicetree+bounces-14119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DAD7E20EF
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E865280FE9
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 006681EB36;
	Mon,  6 Nov 2023 12:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="kOTnpXsn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8051EA8F
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:09:07 +0000 (UTC)
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B36C519A4;
	Mon,  6 Nov 2023 04:09:05 -0800 (PST)
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4SP9B83Hy8zDqr0;
	Mon,  6 Nov 2023 12:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1699272545; bh=YTEY+p9l8vyzga8FHdlMAXeCEukEJdaPJkD1Tear8EA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kOTnpXsnBICUiTpjFjgVOCMbFsACMZnNM3XiE5RWlgtrk0HcQCPhr6wnvPDs3zKFl
	 HQl3b0vEOUsrvLmW2r65HkY1jmOYmkfAM5F1ZzxS+IS2iBgczbGTqgIwZ7bXcgDu1q
	 cVqE64k3CcwtvCGMZmh5+gGyuv77Ctl7+C2GB5HI=
X-Riseup-User-ID: 61DCC19ADFF9D7551A15F9BC64D05A7BC80C6F5FBE86C6E8D5461DA1D9E0C888
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4SP9B46CXgzJmy2;
	Mon,  6 Nov 2023 12:09:00 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Mon, 06 Nov 2023 19:08:31 +0700
Subject: [PATCH 3/8] regulator: qcom_spmi: Add PM8937 SPMI regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-pm8937-v1-3-ec51d9eeec53@riseup.net>
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

The PM8937 has 4 HFSMPS, 2 FTSMPS2.5 (for controlling APC voltage)
and 23 LDO regulators.
Add the configuration for this chip.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
 drivers/regulator/qcom_spmi-regulator.c | 34 +++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/regulator/qcom_spmi-regulator.c b/drivers/regulator/qcom_spmi-regulator.c
index 94f9092b29ef..9a9fa20dcd95 100644
--- a/drivers/regulator/qcom_spmi-regulator.c
+++ b/drivers/regulator/qcom_spmi-regulator.c
@@ -2239,6 +2239,39 @@ static const struct spmi_regulator_data pm8916_regulators[] = {
 	{ }
 };
 
+static const struct spmi_regulator_data pm8937_regulators[] = {
+	{ "s1", 0x1400, "vdd_s1", },
+	{ "s2", 0x1700, "vdd_s2", },
+	{ "s3", 0x1a00, "vdd_s3", },
+	{ "s4", 0x1d00, "vdd_s4", },
+	{ "s5", 0x2000, "vdd_s5", },
+	{ "s6", 0x2300, "vdd_s6", },
+	{ "l1", 0x4000, "vdd_l1_l19", },
+	{ "l2", 0x4100, "vdd_l2_l23", },
+	{ "l3", 0x4200, "vdd_l3", },
+	{ "l4", 0x4300, "vdd_l4_l5_l6_l7_l16", },
+	{ "l5", 0x4400, "vdd_l4_l5_l6_l7_l16", },
+	{ "l6", 0x4500, "vdd_l4_l5_l6_l7_l16", },
+	{ "l7", 0x4600, "vdd_l4_l5_l6_l7_l16", },
+	{ "l8", 0x4700, "vdd_l8_l11_l12_l17_l22", },
+	{ "l9", 0x4800, "vdd_l9_l10_l13_l14_l15_l18", },
+	{ "l10", 0x4900, "vdd_l9_l10_l13_l14_l15_l18", },
+	{ "l11", 0x4a00, "vdd_l8_l11_l12_l17_l22", },
+	{ "l12", 0x4b00, "vdd_l8_l11_l12_l17_l22", },
+	{ "l13", 0x4c00, "vdd_l9_l10_l13_l14_l15_l18", },
+	{ "l14", 0x4d00, "vdd_l9_l10_l13_l14_l15_l18", },
+	{ "l15", 0x4e00, "vdd_l9_l10_l13_l14_l15_l18", },
+	{ "l16", 0x4f00, "vdd_l4_l5_l6_l7_l16", },
+	{ "l17", 0x5000, "vdd_l8_l11_l12_l17_l22", },
+	{ "l18", 0x5100, "vdd_l9_l10_l13_l14_l15_l18", },
+	{ "l19", 0x5200, "vdd_l1_l19", },
+	{ "l20", 0x5300, "vdd_l20_l21", },
+	{ "l21", 0x5400, "vdd_l21_l21", },
+	{ "l22", 0x5500, "vdd_l8_l11_l12_l17_l22", },
+	{ "l23", 0x5600, "vdd_l2_l23", },
+	{ }
+};
+
 static const struct spmi_regulator_data pm8941_regulators[] = {
 	{ "s1", 0x1400, "vdd_s1", },
 	{ "s2", 0x1700, "vdd_s2", },
@@ -2453,6 +2486,7 @@ static const struct of_device_id qcom_spmi_regulator_match[] = {
 	{ .compatible = "qcom,pm8841-regulators", .data = &pm8841_regulators },
 	{ .compatible = "qcom,pm8909-regulators", .data = &pm8909_regulators },
 	{ .compatible = "qcom,pm8916-regulators", .data = &pm8916_regulators },
+	{ .compatible = "qcom,pm8937-regulators", .data = &pm8937_regulators },
 	{ .compatible = "qcom,pm8941-regulators", .data = &pm8941_regulators },
 	{ .compatible = "qcom,pm8950-regulators", .data = &pm8950_regulators },
 	{ .compatible = "qcom,pm8994-regulators", .data = &pm8994_regulators },

-- 
2.42.1


