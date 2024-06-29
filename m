Return-Path: <devicetree+bounces-81636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 607C591CE6E
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 19:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B05A1F21D1F
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 17:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71FB986255;
	Sat, 29 Jun 2024 17:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LArRIdi8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5FA21364
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 17:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719683541; cv=none; b=sgL5a3axIcmM/vvIbiUGev3RPRL8XejlH8tbwvZ3WGccmXsU7sNptTL/g7bvBvFnPYZPnUVFfhypsz2OGbJ8V1InJsWHx5E0d2WKsSXHPTYulxiEg4fjm6M9Y1ZBjtNI1TlX0rQMCtssKh1fmA6LmwLgvgpmDibMqoxf2+yha7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719683541; c=relaxed/simple;
	bh=j4MLfR2m8g6WYEp5qi2r2g0cT9THXcets+OgQX0XZCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cKpLBy9s4C68taoztaC+P8UCFC7MaHXO4GcdGI8tgegd/Pe9Q7B1NEKQZN91OJx75nIFRlvm5MqhJk0boHnvCd+u/66OXj3AwkZAM5Il5KHkZYNAAeScL7nIwHvWDzxk7h5oHCbV0Q9C0d1ce9hZx83nd6Ayqe/PwWk2tMfpN8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LArRIdi8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81F35C2BBFC;
	Sat, 29 Jun 2024 17:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719683540;
	bh=j4MLfR2m8g6WYEp5qi2r2g0cT9THXcets+OgQX0XZCA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LArRIdi8JeqjXSfmGUUy4PMdnwoH9p0aQnvi+vMeaiebau8/JyFWVANbj6YCRU10G
	 lUlvvZFQxaCJMNv0I+kCs9U99OFHS7TvJSv+ntQB1BUmZkuhQDORfadu8sr1478WTX
	 rJEdnAdAgcxYambt+ZYqQFmGwQcIThXvOy8GF92dR3tCih0a0I4IoI6TkjCgGNwM7C
	 gvgGz2XP7NdP9fADWH8mTecy1uJi4YhQ2ZU0ao3NMCZF/2i50CWFh3LaXCPEH6bQxJ
	 4EvkAcdO+uZjlhD/JgfvO8SE2AL6nvXgvPQZtf5n66ndxjSh/1r6i9G+UHUFFXHJvJ
	 s3RYGyZOj0u4g==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 2/2] phy: airoha: Add dtime and Rx AEQ IO registers
Date: Sat, 29 Jun 2024 19:51:49 +0200
Message-ID: <edf3b28926177166c65256604d69f2f576cb6fb3.1719682943.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1719682943.git.lorenzo@kernel.org>
References: <cover.1719682943.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Tx-Rx detection Time and Rx AEQ training mappings to
phy-airoha-pcie driver. This is a preliminary patch to introduce PCIe
support to En7581 SoC through the mediatek-gen3 PCIe driver.
This change is not introducing any backward compatibility issue since
the EN7581 dts is not upstream yet.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/phy/phy-airoha-pcie-regs.h | 17 +++++++++++++
 drivers/phy/phy-airoha-pcie.c      | 38 ++++++++++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/drivers/phy/phy-airoha-pcie-regs.h b/drivers/phy/phy-airoha-pcie-regs.h
index 0c6496b89a71..bb1f679ca1df 100644
--- a/drivers/phy/phy-airoha-pcie-regs.h
+++ b/drivers/phy/phy-airoha-pcie-regs.h
@@ -474,4 +474,21 @@
 #define REG_PCIE_PMA_DIG_RESERVE_27		0x0908
 #define REG_PCIE_PMA_DIG_RESERVE_30		0x0914
 
+/* DTIME */
+#define REG_PCIE_PEXTP_DIG_GLB44		0x00
+#define PCIE_XTP_RXDET_VCM_OFF_STB_T_SEL	GENMASK(7, 0)
+#define PCIE_XTP_RXDET_EN_STB_T_SEL		GENMASK(15, 8)
+#define PCIE_XTP_RXDET_FINISH_STB_T_SEL		GENMASK(23, 16)
+#define PCIE_XTP_TXPD_TX_DATA_EN_DLY		GENMASK(27, 24)
+#define PCIE_XTP_TXPD_RXDET_DONE_CDT		BIT(28)
+#define PCIE_XTP_RXDET_LATCH_STB_T_SEL		GENMASK(31, 29)
+
+/* RX AEQ */
+#define REG_PCIE_PEXTP_DIG_LN_RX30_P0		0x0000
+#define PCIE_XTP_LN_RX_PDOWN_L1P2_EXIT_WAIT	GENMASK(7, 0)
+#define PCIE_XTP_LN_RX_PDOWN_T2RLB_DIG_EN	BIT(8)
+#define PCIE_XTP_LN_RX_PDOWN_E0_AEQEN_WAIT	GENMASK(31, 16)
+
+#define REG_PCIE_PEXTP_DIG_LN_RX30_P1		0x0100
+
 #endif /* _PHY_AIROHA_PCIE_H */
diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
index bba382badb2e..bd3edaa986c8 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/phy-airoha-pcie.c
@@ -31,6 +31,9 @@ enum airoha_pcie_port_gen {
  * @csr_2l: Analogic lane IO mapped register base address
  * @pma0: IO mapped register base address of PMA0-PCIe
  * @pma1: IO mapped register base address of PMA1-PCIe
+ * @p0_xr_dtime: IO mapped register base address of port0 Tx-Rx detection time
+ * @p1_xr_dtime: IO mapped register base address of port1 Tx-Rx detection time
+ * @rx_aeq: IO mapped register base address of Rx AEQ training
  */
 struct airoha_pcie_phy {
 	struct device *dev;
@@ -38,6 +41,9 @@ struct airoha_pcie_phy {
 	void __iomem *csr_2l;
 	void __iomem *pma0;
 	void __iomem *pma1;
+	void __iomem *p0_xr_dtime;
+	void __iomem *p1_xr_dtime;
+	void __iomem *rx_aeq;
 };
 
 static void airoha_phy_clear_bits(void __iomem *reg, u32 mask)
@@ -1101,6 +1107,21 @@ static void airoha_pcie_phy_load_kflow(struct airoha_pcie_phy *pcie_phy)
 static int airoha_pcie_phy_init(struct phy *phy)
 {
 	struct airoha_pcie_phy *pcie_phy = phy_get_drvdata(phy);
+	u32 val;
+
+	/* Setup Tx-Rx detection time */
+	val = FIELD_PREP(PCIE_XTP_RXDET_VCM_OFF_STB_T_SEL, 0x33) |
+	      FIELD_PREP(PCIE_XTP_RXDET_EN_STB_T_SEL, 0x1) |
+	      FIELD_PREP(PCIE_XTP_RXDET_FINISH_STB_T_SEL, 0x2) |
+	      FIELD_PREP(PCIE_XTP_TXPD_TX_DATA_EN_DLY, 0x3) |
+	      FIELD_PREP(PCIE_XTP_RXDET_LATCH_STB_T_SEL, 0x1);
+	writel(val, pcie_phy->p0_xr_dtime + REG_PCIE_PEXTP_DIG_GLB44);
+	writel(val, pcie_phy->p1_xr_dtime + REG_PCIE_PEXTP_DIG_GLB44);
+	/* Setup Rx AEQ training time */
+	val = FIELD_PREP(PCIE_XTP_LN_RX_PDOWN_L1P2_EXIT_WAIT, 0x32) |
+	      FIELD_PREP(PCIE_XTP_LN_RX_PDOWN_E0_AEQEN_WAIT, 0x5050);
+	writel(val, pcie_phy->rx_aeq + REG_PCIE_PEXTP_DIG_LN_RX30_P0);
+	writel(val, pcie_phy->rx_aeq + REG_PCIE_PEXTP_DIG_LN_RX30_P1);
 
 	/* enable load FLL-K flow */
 	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_14,
@@ -1217,6 +1238,23 @@ static int airoha_pcie_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(pcie_phy->phy),
 				     "Failed to create PCIe phy\n");
 
+	pcie_phy->p0_xr_dtime =
+		devm_platform_ioremap_resource_byname(pdev, "p0-xr-dtime");
+	if (IS_ERR(pcie_phy->p0_xr_dtime))
+		return dev_err_probe(dev, PTR_ERR(pcie_phy->p0_xr_dtime),
+				     "Failed to map P0 Tx-Rx dtime base\n");
+
+	pcie_phy->p1_xr_dtime =
+		devm_platform_ioremap_resource_byname(pdev, "p1-xr-dtime");
+	if (IS_ERR(pcie_phy->p1_xr_dtime))
+		return dev_err_probe(dev, PTR_ERR(pcie_phy->p1_xr_dtime),
+				     "Failed to map P1 Tx-Rx dtime base\n");
+
+	pcie_phy->rx_aeq = devm_platform_ioremap_resource_byname(pdev, "rx-aeq");
+	if (IS_ERR(pcie_phy->rx_aeq))
+		return dev_err_probe(dev, PTR_ERR(pcie_phy->rx_aeq),
+				     "Failed to map Rx AEQ base\n");
+
 	pcie_phy->dev = dev;
 	phy_set_drvdata(pcie_phy->phy, pcie_phy);
 
-- 
2.45.2


