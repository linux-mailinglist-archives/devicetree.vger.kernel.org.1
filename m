Return-Path: <devicetree+bounces-14118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1D47E20ED
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC9AB2811A8
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1A81EB39;
	Mon,  6 Nov 2023 12:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="pwM8r55c"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFA51EA8F
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:08:59 +0000 (UTC)
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 099271732;
	Mon,  6 Nov 2023 04:08:58 -0800 (PST)
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4SP9B11GPQzDqq1;
	Mon,  6 Nov 2023 12:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1699272537; bh=vxdLPlYkKHzrfDcJmGFVY0ukHxnT/HqPpbvcc0KQ5Q8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pwM8r55cuCfAoQcIiRbgSkcymakzicgkiypUqJSfphwkfvXzEmQdETzSsKaEgINRo
	 3JLKAaq/LHHX+niTaXkdzGRHjpg+3clPKQOrDVhVYJwsKqCAembkLmtkpu5ivTrk7f
	 7e4YpmmgLkZCvQNC0veBd6agErZ1btF183d2S1xI=
X-Riseup-User-ID: B5E5DFBA031A42562C92CDB58BBB3267332B43F9401CDFB88B8A99D1CED59ED0
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4SP99x6RvvzJp9g;
	Mon,  6 Nov 2023 12:08:53 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Mon, 06 Nov 2023 19:08:29 +0700
Subject: [PATCH 1/8] mfd: qcom-spmi-pmic: Add support for PM8937
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-pm8937-v1-1-ec51d9eeec53@riseup.net>
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

Add the subtype and compatible strings for PM8937.

The PM8937 is found in various SoCs, including MSM8917, MSM8937,
MSM8940 and APQ variants.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
 drivers/mfd/qcom-spmi-pmic.c      | 1 +
 include/soc/qcom/qcom-spmi-pmic.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/mfd/qcom-spmi-pmic.c b/drivers/mfd/qcom-spmi-pmic.c
index 4549fa9f7d4b..eab5bf6cff10 100644
--- a/drivers/mfd/qcom-spmi-pmic.c
+++ b/drivers/mfd/qcom-spmi-pmic.c
@@ -53,6 +53,7 @@ static const struct of_device_id pmic_spmi_id_table[] = {
 	{ .compatible = "qcom,pm8901", .data = N_USIDS(2) },
 	{ .compatible = "qcom,pm8909", .data = N_USIDS(2) },
 	{ .compatible = "qcom,pm8916", .data = N_USIDS(2) },
+	{ .compatible = "qcom,pm8937", .data = N_USIDS(2) },
 	{ .compatible = "qcom,pm8941", .data = N_USIDS(2) },
 	{ .compatible = "qcom,pm8950", .data = N_USIDS(2) },
 	{ .compatible = "qcom,pm8994", .data = N_USIDS(2) },
diff --git a/include/soc/qcom/qcom-spmi-pmic.h b/include/soc/qcom/qcom-spmi-pmic.h
index c47cc71a999e..17a0a8c3d656 100644
--- a/include/soc/qcom/qcom-spmi-pmic.h
+++ b/include/soc/qcom/qcom-spmi-pmic.h
@@ -31,6 +31,7 @@
 #define PM8998_SUBTYPE		0x14
 #define PMI8998_SUBTYPE		0x15
 #define PM8005_SUBTYPE		0x18
+#define PM8937_SUBTYPE		0x19
 #define PM660L_SUBTYPE		0x1a
 #define PM660_SUBTYPE		0x1b
 #define PM8150_SUBTYPE		0x1e

-- 
2.42.1


