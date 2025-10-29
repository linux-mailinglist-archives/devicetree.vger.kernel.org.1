Return-Path: <devicetree+bounces-232731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 478EBC1AFDA
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C78674F1026
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E6D3559D3;
	Wed, 29 Oct 2025 13:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cnZmI33y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ABA3559C6
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761744713; cv=none; b=LqDisZyrO/1g/lVC8DEa3HRAfi+1kw27Q1sXcwPDOKJYBE6TqMq8DzAxtTaQkn19ZMq+FRJr3cp+tDXW2sR8PIYzYoxG6i4SP7+c6PYWtGhB70EDxjGjI/k1tdFSuKATKTPaNXs6LoK1pM0iABPvKRA/J8mBUKwYH4NIpnEMxts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761744713; c=relaxed/simple;
	bh=8G7bBZM5fRStxMOcO22TYhdX2AnVHFbVN1k+A3ZBenc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JZGOh+Ve2F31Xa7gez0UOvE63uc0b279MlT/TOMaLTznmPdahcu02niwL59bh8t+nX/a1DbO59yn637Qkx+tdheeOJ2pA/q6AnDiTh8w2EFYkNW/fV3tWJKJBHeMuw6jjA6Maww/DKZq3TYnGzUFXIH6vqeyaCIAcJdKlcCJSsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cnZmI33y; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e6a689bd0so72758845e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761744710; x=1762349510; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cDnFmawmmprbP/aIYkdXiYRzW2ZBujViLSp90PI7KCk=;
        b=cnZmI33yXCjPWPt4nHtuXj+kCZ29CfTkcUUk3VDFGJqbn72pFlO5rRwVta6DDFlxKb
         yM+UMpYGPkWJsJlhrgbPts9CGVTBDPKeShjUn90Mshu0mqKSWVr4v57T4vNdQTH8hO0n
         ASRA5joUkfa4uSX5adjUA00W2CBxhDbJ1znMgKx2U2RMW1XN3VElk9qUxq2Eru4YdVda
         F2kHDO5EJhKpld/faSINFsVAsWYmNrRGx49f2txhicbpwOzSpeVp4pAQuhnNkJrveUf7
         n4khJxhpr1t9njy9t39o/w1sJB5++d7RDFCDrXIKtZ6b4M0s+sTV0E9wUA7TBnsVJsdh
         bYug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761744710; x=1762349510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cDnFmawmmprbP/aIYkdXiYRzW2ZBujViLSp90PI7KCk=;
        b=RTdGv8P//sIn3I6haCAeicu32f7HKwNE7vApiX+nb5NQPfnZzZi/FPTu6vOudLA637
         9goS6Ak9UEFmUOdi3awiNfckhfl6ixl4b2Ix37P1ZtA/7mrva5IEOx7Eie6sQ70JoTeJ
         8j8FmNQ+yF9VXu+BAVuXPb16mU1Krvzc30dGYKEq2XrF7kI7RDcrF+X/9qJ/2TJ2MxGp
         //6e7bhAxWPB6nSM76+zq8BGFfDUGAO2XR396jycQegvELG/th4KEWHrg5w104bzeB13
         NzyLY6nhwkjuIFp1blmTNiCgWlJ4gR5ev8Hheh1y0rXPvbWaIhlxuCveoOQPsxcnlGn3
         xcgQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8nlzAcAs2Z1xC/7lWFyT4C9c+pCOwajgTsB8euwjUEm0tc087WOwQDvDHJBN5UKG30pFzE1M6gUrk@vger.kernel.org
X-Gm-Message-State: AOJu0YytD4ByVVEeXU9nnVnehLNq22kDFhbGIJ9KcHyfURHyTPBBBLVF
	KFadYA2UIPK9sCsEmpWmJ6C5hbEZ0w0gK+drbvCVhym1G7vest1IUP997nyNzbk10kg=
X-Gm-Gg: ASbGncux97j2OXjeCSGSvyl8D6b9ajTvGKbwkAGIxqi8SrIe3XV5xd0L3s0/NnZ5HIT
	cWKOhbUTXNET+MtAtMiHxYV44jCFcTAuuGwiH3IZsojCfBiLx7s3PCrCpKCUZh61xZ7g8nY2qKy
	WIe6K2XkErBXbcQLB4NxLHnNDEZUI66RMIKdJnnOEJM1UgCCzDjZXBzf1IRHbof92KXg3SBGdfl
	1pktxjwuNbWSUAfwAQkNfewg5hhna84ztmhP6kQ5sAb2cCzLkwbnl7POs5OUXE+bF8P2L/We1XU
	3sFDeEfoJXT1CgpP9UqmFVjPqeumK/1+xQ3opB4Z4pz7ppZVEwtPwEtT84PQyq3V04awR0jQpr2
	6RAUkcg1LU+PB3n/89lAx0jEAP/fKJ954JTjsNP/crUr54dfVl7V4WvXS9/O9hTT0qhvp3mcon1
	XkTcDfn5dL
X-Google-Smtp-Source: AGHT+IFbg6BFEL/60ybW9+vLXJwBfQuA40HL8F0GZNxl3ke1BA0V2nBoyBT0JT9Hc1p/wv8b8DcZEQ==
X-Received: by 2002:a05:600c:46c4:b0:476:84e9:b571 with SMTP id 5b1f17b1804b1-4771e183b35mr31193495e9.14.1761744710195;
        Wed, 29 Oct 2025 06:31:50 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3b7cb9sm58273015e9.15.2025.10.29.06.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:31:49 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 29 Oct 2025 15:31:31 +0200
Subject: [PATCH v4 2/3] phy: qcom: edp: Make the number of clocks flexible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-phy-qcom-edp-add-missing-refclk-v4-2-adb7f5c54fe4@linaro.org>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
In-Reply-To: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2600; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=8G7bBZM5fRStxMOcO22TYhdX2AnVHFbVN1k+A3ZBenc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpAhc6s4Uh/dUfAYZupYH9eljo7awvlT+dv+1e6
 RErvJ4IpzSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQIXOgAKCRAbX0TJAJUV
 VjIUD/wOCZ2tSWzusRUJKd/vcgzBvxDU8jY9JQjwDoD9GHjINqFbKmkYTj5LVqVeXKpnET7fs1F
 94chs0bTrj+AOVZOq/3jz8Sxzg9sCvrwYBnhAMt2Dl8AoXf9r1b+dcnCq5bDV2mLQtVZYeCmljV
 rFKZ2DguPERu3m/vd1F5uPlQnM9nuHEYRTKEvmG3JhYWVwaqm6ssxYiqAWBTF7v8tsPO5BuhcYf
 ip4GgnypTrDkj3F3VNK4NH12mHNeagfsBbU2qw7qXQ9IUNyMGGS577/WhM4bC0z9xeBIfoNFO3n
 1zqm91VS1tKI27WFqb3RC7J/bgPvHUnzv0s0Bn4Pz8x43pmkbJSy5xdNEBaKl5FcTsmvATZhlzH
 mE2X4M5XMa6LDJ0J2N2g8TAk56Vi/9h5J7gBCN77NPjKErrPm3zHS2qSFCDEkNKsUdkRSve1oHV
 W2B/GUhH98W6POlqgQqNPiHKvtEKcDZV9pUBj9AiHtaJKjKU3hS4psPOBsafOstWL2HCcOMgAOU
 p+0EGJnYVo3s7MuiWiQRN6zNexjxJC0nLTlQcXwiPxC95lj+XiVd9EhLPHW50mFVw5pClLRvyX2
 D6EhVQpJjLW4TjYR3YLT8HgA/NvO5juEMNJROgvu4OrDy8EN/oJXqfcUoS+UGGVBA3Gl5q4phJV
 Rd1Ok9QEn26lofQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

On X Elite, the DP PHY needs another clock called ref, while all other
platforms do not.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So in order to handle these clocks on different platforms, make the driver
get all the clocks regardless of how many there are provided.

Cc: stable@vger.kernel.org # v6.10
Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f1b51018683d51df064f60440864c6031638670c..ca9bb9d70e29e1a132bd499fb9f74b5837acf45b 100644
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
@@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(edp->pll))
 		return PTR_ERR(edp->pll);
 
-	edp->clks[0].id = "aux";
-	edp->clks[1].id = "cfg_ahb";
-	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
-	if (ret)
-		return ret;
+	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
+	if (edp->num_clks < 0)
+		return dev_err_probe(dev, edp->num_clks, "failed to parse clocks\n");
 
 	edp->supplies[0].supply = "vdda-phy";
 	edp->supplies[1].supply = "vdda-pll";

-- 
2.48.1


