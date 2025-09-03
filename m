Return-Path: <devicetree+bounces-212186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EED3BB41F53
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:40:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15F7C7B5505
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9388C2FFDCF;
	Wed,  3 Sep 2025 12:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZxsaNoRz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D292FF643
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756903084; cv=none; b=jMMDE7IaPTlZ7ccl93tI/+WbC0KmX3MSgp3Sg3KyX6CHSvRpDqEf21MMi4dk9WbkioUQn/Vs7zTalcFG2Cr2pU0pZsSRDIXVRg2KXn7j90E/dGFNFvdfFfPmpBW5OAm/4eKK6kmViuWtLaLYgPhYU4WbzXIYWptHwq3PHUl/DCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756903084; c=relaxed/simple;
	bh=aoMZGWqu/xZzw49ERZ15szXiccJVNQvYuNgPnpFIZcg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f+4X2u9mqkNQ5Nih+1NmFnn1jK+QJdZMn8B4Cl0PSWRKxPwixlYraeerUHeYcCHp9hH8hcrKPvbWc5NddpSLmqBtf/hxOg8w02+ycoBViOZOVJgMjQ3fwNYepF13Dbs8uExy4uYvs3I7sypJsUcGQdd6mK5MiMSv05wli/2H20c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZxsaNoRz; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45b8b25296fso23624335e9.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756903080; x=1757507880; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K0sQCAkcI3HRZ4G7wKFkOyZb3siVF0JBhbJFbd5M2Ho=;
        b=ZxsaNoRz9z7NJBbGT/L48HV/jnowiW/6Ix1xssbhK7jKnouyk4BII6Youhh17IBchl
         XKAr4CfSFljSp+5w0YP/a7YzgLDYAAPEVZHAt29YyHPmU5E7dn+cfkmcDSzCyxjYKj5P
         +S8qQI3PK36b82WoOHH6fa+fZsJJv7AkDIRaa+c6Vi9oGjYU1mpt65dU0YWCBNfgozLb
         WhhuVEzuDMaDzHOKAjeFJbB1OS0pTY8KYXkCVruodujHq7ur1KhhcO1gB8Yhk93HpZiO
         oXzKwKcwcV7Q+0i5XTBOHncj0wHXRFMITCfwUI3iBkWGqv+84/V1+mV7Gf2rGU8ov81j
         wo0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756903080; x=1757507880;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K0sQCAkcI3HRZ4G7wKFkOyZb3siVF0JBhbJFbd5M2Ho=;
        b=uM/bfh+8/xC+qztnEiC2ofRQNjVsUmQxSPxWLH0jBS1P4WBjS0uQmyk31rT5tXkuz9
         RuYssRtyG/Fdl1R+u/PurQMeMV7lPwdOpnITLEPtxZ79Om4eDb16nDWaGFszYSfGLtG4
         1L5k1QUfqnHtvfDQ536b4CVJArRuIsE2uhIKx0cpY/SvLPBwkNnxgLP85W4KSipT4NQ7
         H5lbjnflRGt02ruKlMTKyQQ/ojYGhl+5M69wJQkPYBaJOgXSc4wZMY+iK7rQbqZf8Me0
         t7sg4l/Z3ujZV3UiSCJm8RniaN7gBLfQt6uvTQuZIMhlQgUtH/N/NRHpINZ8epFcMRGl
         UGzQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8nPdbVglBDVAO2C9pxnrq1bGJB3E5z2EB4+VNgC6c1ZgQv2R2J0SQL2LJFTLdwBQPGN0dljyqvr6X@vger.kernel.org
X-Gm-Message-State: AOJu0YxleGf29kHJyG/TuyJE979ELIzs64UP4e1rAMd1tLvKhjgfyZKp
	f4dXBO/uTIRKA7FAWAYlLj1jGw/KvTOBzVv34NyqKzwmmy7e/szhl99/n2inVxoCam0=
X-Gm-Gg: ASbGncsSRxWsboOf5AbTa5VAG7Oi7GOhaShHhU5KsqS53PjaxIuly8mjgiMmF6+LSVz
	JmYAzMPjRSoeSJYQh4XFggIiOt9KBOv2ExgvqUH0k/uuPNgO2VuOAGXykICyZ6y6bjuXIEKd600
	LpglE1zx0v+lmUSUU4bzaSgGd9HDBtiXoodcmTHGN2kYOBnNbuFFtcCRuPZqGWGaSUVFFzhCKmt
	R4u1QvypdcgHwDetcPZfRA+iW08brh+f3kKxNkooRYZOEgSWjEefPaOdHAeiF0LAE+7OjREpNyg
	zkE6+Ga9s5OIihkz2eg4vPnI7/fsQifchmxZEtk0MgAUrW1EFp/tjg1uUXssaXfk0yzxbHWaPqG
	7ApNF8RChUsHbvirmF4g3x1xQSahfFuJQRg==
X-Google-Smtp-Source: AGHT+IEbLnDCsM4sB75vMKi6w7QYg5rUiB42IQxhXphR0JNJN7hi0gEar3z81FBgH479cIIAURm5Mw==
X-Received: by 2002:a05:600c:548a:b0:45c:b5f7:c6e4 with SMTP id 5b1f17b1804b1-45cb5f7c9fcmr18333175e9.35.1756903080372;
        Wed, 03 Sep 2025 05:38:00 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a7691340sm22526782f8f.39.2025.09.03.05.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:37:59 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 03 Sep 2025 15:37:43 +0300
Subject: [PATCH v2 2/3] phy: qcom: edp: Make the number of clocks flexible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-phy-qcom-edp-add-missing-refclk-v2-2-d88c1b0cdc1b@linaro.org>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2122; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=aoMZGWqu/xZzw49ERZ15szXiccJVNQvYuNgPnpFIZcg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouDafbS+nkc8kWOV4DK0zkPyYfwLjgSaBZE/7y
 +15peFlhqeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLg2nwAKCRAbX0TJAJUV
 Vo7fD/0YbtaTpC+kddzF7LNDkHXDOyQzlNpy7c0Rqpxj1lscRMv1uk/5VG7ukyTVXF3Crxwyxqk
 F0SaB/NcafklYsw+SK9X+VmXRzONuFux2cENvi7J+Ydl3Z6H0dENS/2VQ2OpbybJ64aPUJhNo7x
 Sd/HLR+NeKmBpiJ5/mwn+TLJplY0DbP2+O6oya7Kuaw1KNBfY7mir5nBQq0O6ZqbRLrvjb0k/eT
 abgWb8tGGI9dvl/iiJChLZKQwTdKpOiSVyMjJtQS+Z5LtXUae4afVktbuYQ0R+YZ+1aUAmeOAlR
 Z0dApgeSvbdJShbRZr/3bQX32o1Qw8C60J+DaqStNniuIY5eFpjubHFASJjbnqrD6Lqot3SHrkZ
 HqzI69Ukm/Bg7j93zkoEK/CumV+4fEoVqC8DfadiqPBgp2xh7vV9iGpzk8XkUyciCJC4defwgJg
 dLVXQ/EWP9twSSjj1nJQVFXjfQQniEBVgiP5v1kXBninV/OUD5WRGTUCbDVAO9F8iSHkgBzvNt1
 uBN/r7Q7oWCoSTTXImkZxybGVktc4bCP1tUiZWoNfapUfF/8Mly3+8maxxIolXuqbaIVGTcT90g
 +6qLYYr4RCxIxbBdEXSvOG2e3T7EjaL4Ro5gxL1ld0ncazvcXrd369yltG3KB4WgYJ03tqWmb90
 RfTeXPPXG5ABZpw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

On X Elite, the DP PHY needs another clock called refclk,
while all other platforms do not. So get all the clocks
regardless of how many there are provided.

Cc: stable@vger.kernel.org # v6.10
Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f1b51018683d51df064f60440864c6031638670c..116b7f7b4f8be93e5128c3cc6f382ce7576accbc 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -103,7 +103,9 @@ struct qcom_edp {
 
 	struct phy_configure_opts_dp dp_opts;
 
-	struct clk_bulk_data clks[2];
+	struct clk_bulk_data *clks;
+	int num_clks;
+
 	struct regulator_bulk_data supplies[2];
 
 	bool is_edp;
@@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
+	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
 	if (ret)
 		goto out_disable_supplies;
 
@@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
 
-	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
+	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
 	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
 
 	return 0;
@@ -1092,11 +1094,11 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(edp->pll))
 		return PTR_ERR(edp->pll);
 
-	edp->clks[0].id = "aux";
-	edp->clks[1].id = "cfg_ahb";
-	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
-	if (ret)
-		return ret;
+	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
+	if (edp->num_clks < 0) {
+		dev_err(dev, "Failed to get clocks\n");
+		return edp->num_clks;
+	}
 
 	edp->supplies[0].supply = "vdda-phy";
 	edp->supplies[1].supply = "vdda-pll";

-- 
2.45.2


