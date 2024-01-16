Return-Path: <devicetree+bounces-32165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C3A82E7A5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 02:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 352B61C22C4E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 01:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C310A20DD9;
	Tue, 16 Jan 2024 01:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EAOOogTt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFD820DC2
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 01:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2cddf596321so996201fa.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 17:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367476; x=1705972276; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J5SAl7h8gFScgWdY2BB7MUIpGVN5ls88lp1PxJmfDXY=;
        b=EAOOogTttundkti68GsILaq8G57bnYDwOplaae97hBpOoU7StH4xy26QE6aorL4BSk
         yErudtBxpdMeAGKmcoGb7vkDNMIuuDWjUBuZFMMm6oJQVJmrsCu4eZA0KcsAYgvVVee2
         9cIdgW1ayZ4eKT35kmR2T4YUiPyw9fzpd82bD2t/SNUJMCAjmmeYO9noiirkSt8zMaVV
         rMJSi/LWVGaDhBks0gbBYdghlH3cO9AcxrlT2X8ki/fwGCcQ2NRSraiiWVU6Qt+U9POr
         tWQuqqdSdm2qISrG8GFTklISfoLks2/lSN3hoc7fIL+0wNfubdfxk0YWSqBzYMoyN/0U
         qZ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367476; x=1705972276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J5SAl7h8gFScgWdY2BB7MUIpGVN5ls88lp1PxJmfDXY=;
        b=EVi7qV9v13O4TfJegj10RZNlPmOAGqgZtGMv78yM9UVinTch47V29SNJaJXDawT4IK
         GRdeJ4nOjkQiMjr6pAaB2hETTVZp4ehtzXpZN0+dBxSki8H+dhR5VM0rAM5ZtghDuElb
         H2o/sI7qggWtZc7F2ROIcL9PS85k7nKWX5OhaOcBxCgLgdjknP07cnXRMKItv3wbK6lR
         UqC8GQETZoHh6t+NHUQa4w4ms17mXWPikhrD2ZLul6tzxpZCHgx2VEb3Js8vVdkwd04y
         fTmF99nJ3kqZlotwK9NWEfS3K6HT5pAzaZzf56GQ3/96MLfXN/g2ANm+tjhWSdRqDqSg
         0e8w==
X-Gm-Message-State: AOJu0YwIePgeGf2xSfCtudD3+UWEt1WAYoPSv2hTmMovowN87nu5BTQT
	UVeIOkUT3YcPFvVuBdUgYqaN18ivD576aQ==
X-Google-Smtp-Source: AGHT+IGnFSgrxxhuxucsFygBud7v8OlWJ2Srm7pGmOeI++Y3FYvteXWehObGvCiESvrq7GXczc+w1Q==
X-Received: by 2002:a2e:8193:0:b0:2cd:217:4605 with SMTP id e19-20020a2e8193000000b002cd02174605mr2838078ljg.50.1705367476226;
        Mon, 15 Jan 2024 17:11:16 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e84cf000000b002cc7a2f7a9asm1513414ljh.98.2024.01.15.17.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:11:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:10:56 +0200
Subject: [PATCH 2/4] phy: qcom: qmp-usbc: enable SDM630 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240116-sdm660-usb3-support-v1-2-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3233;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LV1qhUDjS69E+vkNbGfcoPcd1GenuQZvkFoXfpH+sl4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdexwWXnEsw4+1OBDC1CllDE0TkIbp3x5YUxM
 pKToQtVOEeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXsQAKCRCLPIo+Aiko
 1ZACB/oDojuk1Tw5dooz8yXhndcO4Yq7KT2xCIo+40pOTgx2m54SJy67qrEzjXBExPn8dttYzvN
 h6TmOcjwKJ55G/Xth39mkbI4ZAtpJ9KUubM2loksZKl6nsfwlueBNdG4sxRbqXY8HgUpShjmT8X
 QG88AS3hv6xl7nWswzPE8xl3BPuSjOgO4y//7lQq7TL4Jai/15EXbY8G9Bg/T5zV7Ykl33T/d9b
 mf+VsG9VSZAouAoqrXEVwP0IDydyDySq+HeQA7Ob9AKt0QvhERarAoDWsG0aFhnMUBTkLhWQijd
 bAqTiWSa7MwdJ6ByeAAFv/T9addNbpXoG8pBDCcm5cXobB84
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Provide PHY configuration for the USB QMP PHY for the SDM630 / SDM660
platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 40 ++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3a4b4849db0f..02babec76881 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -293,6 +293,27 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x00),
 };
 
+/* the only difference is QSERDES_V3_RX_UCDR_PI_CONTROLS */
+static const struct qmp_phy_init_tbl sdm660_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FO_GAIN, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4e),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_VGA_CAL_CNTRL2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_ENABLES, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x00),
+};
+
 static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXMGN_V0, 0x9f),
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x17),
@@ -474,6 +495,22 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
+static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
+	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= sdm660_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
+};
+
 static void qmp_usbc_configure_lane(void __iomem *base,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
@@ -1171,6 +1208,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,sdm660-qmp-usb3-phy",
+		.data = &sdm660_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sm6115-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,

-- 
2.39.2


