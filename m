Return-Path: <devicetree+bounces-51579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E140687FBFD
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1C96EB21363
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01E587EF05;
	Tue, 19 Mar 2024 10:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XhAy031Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A01B5B1E7
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845085; cv=none; b=Jq2IzPRwvHoDKMtCdoDjv8HqFpx+zFd0J6fWgzSnuACqKOOGq3RkjHrJOna0YVADwgYkUDbp2v/CHMYgqnHRBMcz4H6O225FJOPIvCK3bioAocNaBlzlT6e3r12yrqYlR0EwgmYwAne+OLHbnhIIjMLSqZGciqE6ciOyGHnsZvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845085; c=relaxed/simple;
	bh=L9f7mVzB9wMW7O3NrZIDvpmvouDLp7SdgWUnDSjbq1A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rsNR+Ty1VIMB69yAd6VfHKT8yqQcjfryjjqa7RzIoUeoxTJ44YcHH1JIVJkpp5NI2TvG03o7uVh1PZW1Ca41NcVSOKGBkEeOSTs9XlzRDfG5lJT2lH/Ve4HGrdsxnkOreBHEKkgeyFXW4LZkyQ3lbeaxd9MeNijJfL6kgBwrKL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XhAy031Y; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-34169f28460so1298619f8f.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845082; x=1711449882; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDlVBiiHg4pmaOoXuH8MpX01GVb560GIyVnt1+W2Ilw=;
        b=XhAy031YJ33a/Jy5X8HCCTYTLqYI4KN/4ZMCVHD9WPeUIMFPSt3T/WSMJcIPqIcFfu
         KDdTeuBTQR4+n7HA6qEaZorvEBPg8SqPv/h6dss8mtYjbt17+JPTZqy1siEsf8csJFsN
         WZjm/h512xh0R4AKLHUKs4lciN5g5YlkSwtHXdcA1Vwq3prXyCFF64eUiz4FgZvhLHoz
         gqdYcU/j6tm45d/5cGix8ukLFHediTkzXjlgF7rL+ZvFqMqRf1k1GYVSjXyRkJMMk0dY
         YzZyYrzGG7R4ObxlaGPRK9K8sb8V5tPg6o7XA+4+FJ+Ealy5JId5KMuw/+YwF7HAz5VB
         sIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845082; x=1711449882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HDlVBiiHg4pmaOoXuH8MpX01GVb560GIyVnt1+W2Ilw=;
        b=Hssi1tPLKilpX50k1r7+BsGTsOQOg7mz1TSSI0VAFTh0XiQ4Pqre2UvSMwBMg6xxgV
         vwpL+0K4R/7M5KMGxJDtv2HZgQ3NvzhNjNYyV8eipyP4ri1mHNvo18v0tkQTAuq2aIwZ
         TkQxme12ujhHAeVwWaiTclRBpSFXN6gQ86QlEN/gEk4YkKwfMPrRQxmCNqLIDA8rezrn
         6v56iRRSlISobLIlPMdA/3Ea+jDq5WvV5zmc/zlSHme36PEgZHMjgJVZy5c301PHhL3v
         JFfhXq9RejuFdyl6TZ/cMqWwNzsU1rYVPZKwYToM82Q/rNyTPxW99Siuy4kCuEHK8egn
         Z3/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWay+QsRHBK7kAcpKA53NUsIQVzDww64mOCrJP5UEJa3F0TskRb8W6pyWfHppKt7XU7VE1LoGwXKv5IqyZrvVYVJDYpzycvlGl6Xw==
X-Gm-Message-State: AOJu0YwG5pHWzjLNAksfFNOFeM3ppN+v0Gs8aEgUSoZPqiUPgL+KSqM1
	4dzhKZ7e4Ujx/lCt/kamScdsn2xoCLKday/ZRvb+knMVRIbfgNje/eFBma23swM=
X-Google-Smtp-Source: AGHT+IGZs6bS4wuGXvJcnPNcRn+hN4DIRrSoCaWLbaixhzIt8JvTEga0/2Q3eL0YWuG9FLqGwZMk3w==
X-Received: by 2002:adf:fbd1:0:b0:33e:7054:5b2b with SMTP id d17-20020adffbd1000000b0033e70545b2bmr1463846wrs.4.1710845082283;
        Tue, 19 Mar 2024 03:44:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:28 +0100
Subject: [PATCH 2/7] phy: qcom: qmp-pcie: refactor clock register code
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-2-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2539;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=L9f7mVzB9wMW7O3NrZIDvpmvouDLp7SdgWUnDSjbq1A=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyVqMHIPwowIY+jis50jKt8HWeaChSOf1n5Qo/s
 VvyV6LyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslQAKCRB33NvayMhJ0cTwD/
 4oCFX/soYZyw0allUAHdZ2JeGA2i8z2dwZVs45CGAYYDPZ5upLTxBHX1I4/AWQRFCIxqpE1bjcDX99
 7Z3Xz2KwKIjl8l3fAoGDoaCKj64IQ77VSio/mFt5PHdZDpYykBX/DIE0HM2IRt58mTmQxpSiWPgCZA
 T6FobLiQtF9uYKESOWkypSag5wV8BMNTsRF5PqeUpDirDyJk4Egdz9ovFUqVVWU57dHWDJmfzsZ6M9
 2oRAsipFxKpF2jmBJX0StNlWu5xwILHpTQ3a/XpeG/hDbZj2tahcHwEVl0mgl0mhaHLIvEtdqQJBdd
 lDs//mTTZnggxYSsxBoMrXEW3VE1FgHfuNUtD7AHFcYaQ4f3UTr3XUrZzJCEZOsLb3zvIr1MPMlbz1
 EYdHfIEGH1oEOB5sT5SIpc/ENEHHbvgPGCBHuKTp96Dw3tZOMzJ394vzmIhgNrCFUfhXKjffMH9Wyx
 Hxv3Wmmza4WfAfutfpUzBsd7gdocun1KTLduSxW2uLOb8QnlE1QFo8x2CUrEMKJsRU/R3Qqo+WZT0f
 K1Av2n3lmk3aoj5M8z5rys/HsZ9rGrSU+2XjJYtxQdwslYw9D+uaQKh/dXN9HqFysm1EVzyuTWRyHC
 Hy2CdIca4gZDAdlUpfoWdtQrNNxulOAH4x4Bj49WTLfeKSqecYX0XN1p9AzA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
in order to expose it, split the current clock registering in two parts:
- CCF clock registering
- DT clock registering

Also switch to devm_of_clk_add_hw_provider().

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 8836bb1ff0cc..079b3e306489 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3635,11 +3635,6 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
-{
-	of_clk_del_provider(res);
-}
-
 /*
  * Register a fixed rate pipe clock.
  *
@@ -3664,7 +3659,7 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 	struct clk_init_data init = { };
 	int ret;
 
-	ret = of_property_read_string(np, "clock-output-names", &init.name);
+	ret = of_property_read_string_index(np, "clock-output-names", 0, &init.name);
 	if (ret) {
 		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
 		return ret;
@@ -3683,19 +3678,19 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 
 	fixed->hw.init = &init;
 
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-	if (ret)
-		return ret;
+	return devm_clk_hw_register(qmp->dev, &fixed->hw);
+}
 
-	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
+static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
+{
+	int ret;
+
+	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
 		return ret;
 
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
+	return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
+					   &qmp->pipe_clk_fixed.hw);
 }
 
 static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np)
@@ -3899,7 +3894,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = phy_pipe_clk_register(qmp, np);
+	ret = qmp_pcie_register_clocks(qmp, np);
 	if (ret)
 		goto err_node_put;
 

-- 
2.34.1


