Return-Path: <devicetree+bounces-8688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2099B7C9B26
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 547E7281725
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 20:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC2711721;
	Sun, 15 Oct 2023 20:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="HVBfOQoz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A265511701
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:03:38 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51ADCB7;
	Sun, 15 Oct 2023 13:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697400213; bh=qZlNzEpRoS5paF/EbsvUPqS1Yv+qD45c+PbzCsHBeTY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=HVBfOQozHsT0wnd4rGAVdyIdNep7uY/Mz/KEH2BlKWYMJFH02V/wTSvrrUPrFTsyu
	 rFdQ56rpQemoYvQxk9+eAzE1op8drtc/mTa5KP2dc/HbZdTOty6FgnSH0QV8xa2i8/
	 wt+gFWrFZXChbw6pjonXBl3ghMaQdCPcXVv8i2xg=
From: Luca Weiss <luca@z3ntu.xyz>
Date: Sun, 15 Oct 2023 22:03:08 +0200
Subject: [PATCH 3/4] wifi: wcn36xx: Add check for WCN3680B
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231015-fp3-wcnss-v1-3-1b311335e931@z3ntu.xyz>
References: <20231015-fp3-wcnss-v1-0-1b311335e931@z3ntu.xyz>
In-Reply-To: <20231015-fp3-wcnss-v1-0-1b311335e931@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>, 
 Kalle Valo <kvalo@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 Luca Weiss <luca@z3ntu.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=966; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=qZlNzEpRoS5paF/EbsvUPqS1Yv+qD45c+PbzCsHBeTY=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlLEWSIODDShP6A2fJ2Vf5LSlcaLukdHI504hZW
 gRd8oh2nMCJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZSxFkgAKCRBy2EO4nU3X
 VtSMD/44Ttl62qB0epFTn19gfFMWUYwSXnzdqFhapN+LsRfa10HzoTnuEEsQCl2LvpAzjRj1kgC
 EaiQO372J3sCgPAIt4wTV/XM2HWxeGsKSPxNdFfRSsZxT24c5nRQuWQ7SJn3AF8PYB2eCBX9LPQ
 JNmyJJ/U70XqT+TLvjrLVYO6rayCYRXhAEXESJPu4McFO6I2SKo6i6KWRhZn4aXOM6Flz/1+/Mk
 rho9kpWhkBLcQXwDbjkPOwsWQEZT3a962deOwLkpbKQsw5I0IVce3xlx59aG/0FErAipgK51xke
 m2QjHJnLjtC3UwEyjaMSaGeMkNVpn9x1+DW1IIbwX8RmmYDPXOj3btcE7um0fADKc5Fp+87FZmp
 Iwycw+zbnt4dUX3RaOXG0KxY+DjU7TQHKlfSsIzcNulfhfmO7NFbXj9FT3Yd7iIyAUMJdQbK0DK
 V5FZhDKDlx5qDCOX4CqrMkbpdH+cHgy+2l1Jya9JFr7lzBSCjjCLIv/E/FcJ2/NwGaCzco++sES
 dACParyXrslCuJ0oc9MyPDBe2Gi3ETe/HFliGM8iZnflgmXpSeA9kqQ8nuaiZBvau177K7P93GS
 duCitbhvfH1jKTyvvRNlAmBO3Xyzv6nzw9Mag4Yq1OACkr0iDWYRSWHJCg6Z3d3zl6hynYjEH0v
 6keZ4ZS6nCPNbkw==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a check for the WCN3680B compatible next to the WCN3680 compatible.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 drivers/net/wireless/ath/wcn36xx/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/wcn36xx/main.c b/drivers/net/wireless/ath/wcn36xx/main.c
index 2bd1163177f0..74b0b7074760 100644
--- a/drivers/net/wireless/ath/wcn36xx/main.c
+++ b/drivers/net/wireless/ath/wcn36xx/main.c
@@ -1535,7 +1535,8 @@ static int wcn36xx_platform_get_resources(struct wcn36xx *wcn,
 		if (of_device_is_compatible(iris_node, "qcom,wcn3660") ||
 		    of_device_is_compatible(iris_node, "qcom,wcn3660b"))
 			wcn->rf_id = RF_IRIS_WCN3660;
-		if (of_device_is_compatible(iris_node, "qcom,wcn3680"))
+		if (of_device_is_compatible(iris_node, "qcom,wcn3680") ||
+		    of_device_is_compatible(iris_node, "qcom,wcn3680b"))
 			wcn->rf_id = RF_IRIS_WCN3680;
 		of_node_put(iris_node);
 	}

-- 
2.42.0


