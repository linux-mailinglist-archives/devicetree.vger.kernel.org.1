Return-Path: <devicetree+bounces-108276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6784F99236F
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 06:12:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AED9281DB8
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 04:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A89191292CE;
	Mon,  7 Oct 2024 04:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1cJbJVK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8070281ADA;
	Mon,  7 Oct 2024 04:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728274357; cv=none; b=fdaqxpCw682q25EQFITh7VdJcAx9VtmtzgJY+Bvlo7m44BrDqYp+JZaHZusCS/R1wGVu0sSSOWXskmb0exU4WI1/kF+8uu4UxHdXp3U6DoiP3qU2x6hS+ob/zjjfY3sXudJu/WIzGvwnhOiBtrVD2+YprpEeYILen35QoItMOaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728274357; c=relaxed/simple;
	bh=CGcccEYuvoybRQgdYe2xCNaYcJqQ9ouoUKNedFHmqjs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ju7SldKfruKfoKrQsMaPrE6FXXJ409B49m29hYPrhzr1kFt2S0ZA0JdBx//SCEHVGPBBq2pLkb3XcNUbdpmawpuCiTrvqvfS+OBHdqbHKbvSUuCrXbmLrVRMF3Pq6jlIota/D6yw3dJZkIOSA1pHgn2fqPHayILSjKQUAbrQLwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1cJbJVK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FF22C4CECF;
	Mon,  7 Oct 2024 04:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274357;
	bh=CGcccEYuvoybRQgdYe2xCNaYcJqQ9ouoUKNedFHmqjs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E1cJbJVKXb3b9ZltwrSWTC9giS1iAgn1OkF9q8/xvoAAHdbb8K82jkHo/YEpnoQCr
	 5fDS8IXfoo4qllKDLYELcLANYbmCt8L2V0VNrVwHjNoxOOxLWnyTO6Jc2NKkM36RhR
	 oDiuUVbSkvasU/Otv8u0dNcRFnSulpOUUaNx7uFs48n/dRHDw1tSlLyNaLKodc/7Mo
	 fH6jSr6ZMBsGiAKC+Vuz3Y5G7SGhsIY/XEEJNgXV5gn43VfG/mf4UK7l8pOg7fX6L/
	 pu8FvhI03kPo7IkZGl25gi+1ayrdBRpUuaIVceVd9T9e3MmmbcKKmxlTuFhDNNwF6u
	 cgaG7xQ3xzLPg==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v3 07/12] PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
Date: Mon,  7 Oct 2024 13:12:13 +0900
Message-ID: <20241007041218.157516-8-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the code in rockchip_pcie_ep_probe() to hide the MSI-X capability
to its own function, rockchip_pcie_ep_hide_msix_cap(). No functional
changes.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 54 +++++++++++++----------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 523e9cdfd241..7a1798fcc2ad 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -581,6 +581,34 @@ static void rockchip_pcie_ep_release_resources(struct rockchip_pcie_ep *ep)
 	pci_epc_mem_exit(ep->epc);
 }
 
+static void rockchip_pcie_ep_hide_msix_cap(struct rockchip_pcie *rockchip)
+{
+	u32 cfg_msi, cfg_msix_cp;
+
+	/*
+	 * MSI-X is not supported but the controller still advertises the MSI-X
+	 * capability by default, which can lead to the Root Complex side
+	 * allocating MSI-X vectors which cannot be used. Avoid this by skipping
+	 * the MSI-X capability entry in the PCIe capabilities linked-list: get
+	 * the next pointer from the MSI-X entry and set that in the MSI
+	 * capability entry (which is the previous entry). This way the MSI-X
+	 * entry is skipped (left out of the linked-list) and not advertised.
+	 */
+	cfg_msi = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
+				     ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
+
+	cfg_msi &= ~ROCKCHIP_PCIE_EP_MSI_CP1_MASK;
+
+	cfg_msix_cp = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
+					 ROCKCHIP_PCIE_EP_MSIX_CAP_REG) &
+					 ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK;
+
+	cfg_msi |= cfg_msix_cp;
+
+	rockchip_pcie_write(rockchip, cfg_msi,
+			    PCIE_EP_CONFIG_BASE + ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
+}
+
 static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -588,7 +616,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	struct rockchip_pcie *rockchip;
 	struct pci_epc *epc;
 	int err;
-	u32 cfg_msi, cfg_msix_cp;
 
 	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
 	if (!ep)
@@ -619,6 +646,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	if (err)
 		goto err_disable_clocks;
 
+	rockchip_pcie_ep_hide_msix_cap(rockchip);
+
 	/* Establish the link automatically */
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
@@ -626,29 +655,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	/* Only enable function 0 by default */
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
-	/*
-	 * MSI-X is not supported but the controller still advertises the MSI-X
-	 * capability by default, which can lead to the Root Complex side
-	 * allocating MSI-X vectors which cannot be used. Avoid this by skipping
-	 * the MSI-X capability entry in the PCIe capabilities linked-list: get
-	 * the next pointer from the MSI-X entry and set that in the MSI
-	 * capability entry (which is the previous entry). This way the MSI-X
-	 * entry is skipped (left out of the linked-list) and not advertised.
-	 */
-	cfg_msi = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
-				     ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
-
-	cfg_msi &= ~ROCKCHIP_PCIE_EP_MSI_CP1_MASK;
-
-	cfg_msix_cp = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
-					 ROCKCHIP_PCIE_EP_MSIX_CAP_REG) &
-					 ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK;
-
-	cfg_msi |= cfg_msix_cp;
-
-	rockchip_pcie_write(rockchip, cfg_msi,
-			    PCIE_EP_CONFIG_BASE + ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
-
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
-- 
2.46.2


