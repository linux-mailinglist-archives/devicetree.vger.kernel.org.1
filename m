Return-Path: <devicetree+bounces-47263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC3986C9BA
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 14:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0DA12889CD
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 13:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17BC17E599;
	Thu, 29 Feb 2024 13:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q3bsZ+Sr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228EE7E10A
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 13:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709212037; cv=none; b=anqVFMSss/eqOTAhvwPxAp86KY7WhhJiYPDdMeWs3yYj5RT9KuCFeDrpTy2HqExlebsU/IX/46gzXe9yZ1Stlq0eFq2IGPwAfSAdcog/eB+DtDJAs/WrjzOB6NI/G8ndyzRB3Q8wk/506lYh1ADQWFcMjgvguL0zRmzQo6akyco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709212037; c=relaxed/simple;
	bh=X1JC6Xko/brlq2AN9Kavl/JUaqcQsV6GNBW/pXtYk2g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TL6opF94Bg06kVmmG4n4H3WyUAwC/c1RdPy0pq08vmB8xmcwh2lMp8epWXjsaEXIQG1/o1BfPstndbm9eTxuqcKIUY/DsHFYX+MNOTevdFqqkMCFKB9ZPtNm2QzEv0EXozMOJx0qos26Np/MMelOhxLvc8P24Vqlg2aBWYIkqK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q3bsZ+Sr; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-412bfacd146so2760755e9.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 05:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212033; x=1709816833; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3uIfY5ntnNufGy4UYEPo9i3yGnfffKpCKmKs8Z7x9Cg=;
        b=q3bsZ+Sryrek3Dp0PONMDHUeprLNmBcJV/dUgHjpVgoTW5r/SVuUqKhAwsEOptWI6N
         arCOeiGBriFJRMpQAs6aoQk1liLLYHZyqcUfzNFeXqQX1cuqe+ykguOWDeFRQUPCb6D5
         6A3b2ws8n2bkY9govH/NX4mStfYL3kZj2mfujkn7etR/9s4N6Vz1vE4LNmK/ZKnOSozY
         VMvP9Qpkk9Jde/5aQhm/CeHe8Eh2oE69t2hV88xjQTjY70wKwxC0CuQs+7l/dBO1+UTi
         9LvumiNGGKSz4yHZq7vupoBELLBlwClcYlMw6pxRDgmUHCWGd7755zfWrx1aIIpuVvep
         A3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212033; x=1709816833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3uIfY5ntnNufGy4UYEPo9i3yGnfffKpCKmKs8Z7x9Cg=;
        b=XHXRq5wGz2gIu5JUCqkpxQtWCfXll4WY5AAXeus4H+ygRpqQDtqd6nTFiFgLyNNK2m
         FThINm6JInP+aiNtxChURlpPu6dyMlWTfLRkQRfVQ68FvVbuDiBidCsWlVU76dK3/YWa
         h18AedWH+ptX3VzwXxoS7/bP6Tun5YJmS9buEQEr3Cyx2qcryBWYlJlhnEMP9qsl3DvI
         0Ko3w81xcKPfP5EDkbZ3FenGUGRJv5Rk2YT0gKv4ZdNXE+mDZmFnA+AFyslNyRJo4sov
         /uOGTR9LS1WziroKU80RVYOcI6ezVnej3I2HhMGtvsqUoJrB4KbYPgDxeltmSkTpVjoZ
         GhwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAgGCvEpvPxtAuMVThRSlVB5wSvJCK6l59LeGTvpKTrTincKw2JgOdTW5sP2oPbqjMkWmMlliEIImdIi2B4PJn2UJyKQ6Pvj8dOg==
X-Gm-Message-State: AOJu0YzmSawjRT6waOb2/Xz/6Jk6jzfi6R0JsawMkFqPe1rt8ClQqWIj
	22/wUnpejZQiOU/eKcJnd85Ic7o27RVNao74kEnZVMqCqUO2lmw82CjTmlzF4+E=
X-Google-Smtp-Source: AGHT+IFs4nV8miq0IK8B287pip+3Gpyj9/MX3VZQhKrSuFji1E+4+hZHhgsqd+s9dN8nbt2XIkHbiQ==
X-Received: by 2002:a05:600c:1f07:b0:412:a0f9:391 with SMTP id bd7-20020a05600c1f0700b00412a0f90391mr1978004wmb.2.1709212033570;
        Thu, 29 Feb 2024 05:07:13 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:13 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 29 Feb 2024 14:07:03 +0100
Subject: [PATCH RFT 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-3-07e24a231840@linaro.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2847;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=X1JC6Xko/brlq2AN9Kavl/JUaqcQsV6GNBW/pXtYk2g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF7bR995LMpFRuBZdMowgnvRMAzKvP6HT+j6bBn
 u6qijAOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBewAKCRB33NvayMhJ0dQnD/
 4hNlvIyL/Ebb4vd28Lo3pt7v0cvIWPEgi6PPa/eZ5GmfzzRU6yKgZYIaKc6aJa6PVdZy5nOY534bbM
 C9Z5GPriw4NAxtshNm8QqBAjTU4JsnWWnjnFl/uh6vUJKjvvx8nmFLfTCiUU5Ld4Sjz72lq4BGQsdx
 CZBpiP+9l1wvfC0sQMHCZd8H3bbcw+kDOYbNaddUPUX9WBs0+/Gly0eD6RIppiPsVmI10kVcHCOPsV
 cDjdboIKv3VP5jgNKB59IjGgG94HLPR8sCyyWCpQsfT6NPsKER06GeDaEN+U1BOwwhivt8KbHtvIuW
 dYExHtEopydMXRbuK3RKSTNRt/aSp/NLcsSkX8Up4FtIYVc9sSov8qYuVpK8HgvtyUk5WbIKA+nLa3
 OKTV5RsMCTcPBMreqQcGlYH45vYN7Fl6m1DANR5Hr1OvbvVkhu0uFpYPLLx8xuyopRHj7TZHllTAOP
 oDBgQDYry4ojq3ngLDPIEADXMe7wlZghvBUUHrSIIi6KWAroAjkLv0bljBNjhu+K2/oDxnlsTVi58a
 4euoIMmLUHEhxyRea7K7Zdvcs7Th8kKZ3z6dSGR/00l/8v7INoyvCrXySk4Hqorx2ePkrsXHxwaYQi
 2yrXhNLfgwlsZ/1jfqWVpnbKmyx2bZsv1dJp46javpCAf5/bNawRFV7P3ERQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Introduce an enum for the QMP Combo PHY modes, use it in the
QMP commmon phy init function and default to COMBO mode.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 3721bbea9eae..ac5d528fd7a1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -61,6 +61,12 @@
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
+enum qphy_mode {
+	QPHY_MODE_COMBO = 0,
+	QPHY_MODE_DP_ONLY,
+	QPHY_MODE_USB_ONLY,
+};
+
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
 	/* PCS registers */
@@ -1491,6 +1497,7 @@ struct qmp_combo {
 
 	struct mutex phy_mutex;
 	int init_count;
+	enum qphy_mode init_mode;
 
 	struct phy *usb_phy;
 	enum phy_mode mode;
@@ -2531,12 +2538,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
 		val |= SW_PORTSELECT_VAL;
 	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
-	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
 
-	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
-	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
-			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
-			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+	switch (qmp->init_mode) {
+		case QPHY_MODE_COMBO:
+			writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+			/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
+			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+					SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
+					SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+			break;
+
+		case QPHY_MODE_DP_ONLY:
+			writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+			/* bring QMP DP PHY PCS block out of reset */
+			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+					SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
+			break;
+
+		case QPHY_MODE_USB_ONLY:
+			writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+			/* bring QMP USB PHY PCS block out of reset */
+			qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+					SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+			break;
+	}
 
 	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
 	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
@@ -3545,6 +3573,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/* Set PHY_MODE as combo by default */
+	qmp->init_mode = QPHY_MODE_COMBO;
+
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);

-- 
2.34.1


