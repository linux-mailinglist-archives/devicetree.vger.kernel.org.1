Return-Path: <devicetree+bounces-282330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGqPHHo+ymnD6gUAu9opvQ
	(envelope-from <devicetree+bounces-282330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 11:12:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30178357EE0
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 11:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 63249301D4E0
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 09:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8916F3AE709;
	Mon, 30 Mar 2026 09:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b="kQfNrtS3"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout70.expurgate.net (mxout70.expurgate.net [194.37.255.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E0A3AD531;
	Mon, 30 Mar 2026 09:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.37.255.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774861658; cv=none; b=UAFKVrZ+1KwA7Nc4zeJ4bzWyGDlLnMludrG+nf8O7QTjyuKCwK2OJhlA7YxP+hlD7C1WcX6Syn/Gm5TwOO/dmaJChwlHqrO08NC2cReBMe0581PTZ/meH4b40Fl1vHrXg3mpS3+Fo82+LVgbCeYinsbfMNvZ1/lwUaLw6OWBLt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774861658; c=relaxed/simple;
	bh=coHmsdtqcsW+dKyhuAd7vn7jGgDFbg9jYRqHLyenC9w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:Cc; b=GIgT4xWE0Bit0BJxydHm2rQCqihghZ8pXI2lD486lhGeCDAPrdX2btuk4OLRc82p0VhAJT3V3TOq6MRhPt3u3WCzIEx3P4e8Jqj2DC9x1zytw+2iZ65dpKh28GgcHyVt+fhZgs3Jdm5UjaJVXRK8vg1NV5242vBJegZ+HtBrkHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de; spf=pass smtp.mailfrom=dev.tdt.de; dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b=kQfNrtS3; arc=none smtp.client-ip=194.37.255.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dev.tdt.de
Received: from [194.37.255.9] (helo=mxout.expurgate.net)
	by relay.expurgate.net with smtp (Exim 4.92)
	(envelope-from <prvs=65635f912b=fe@dev.tdt.de>)
	id 1w78aq-008Ydf-6D; Mon, 30 Mar 2026 11:07:32 +0200
Received: from [195.243.126.94] (helo=securemail.tdt.de)
	by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fe@dev.tdt.de>)
	id 1w78ap-00GTFL-KD; Mon, 30 Mar 2026 11:07:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dev.tdt.de;
	s=z1-selector1; t=1774861651;
	bh=eTw8E3ezVzDUqc+dP4JdW7vl/OP8CGUQKxaL+SejZ2g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kQfNrtS3U/b1N3yvK+ooX+3QBH1QVBrgc36X6tdWU1UM9H5za5gSHr4oUIPYS0VMt
	 jC/xgoN0TpBR0RQqVnYDpnpCY+aGHRNXxVzuL3j9FugVfJrFbOsaPYscu2clrZEgAw
	 vmh4mgFKhdMmEMKQaGJMDUe5YY8SKauzwDYrbp5q8wOklS2Z2fnDD4G8j2MNUltb2o
	 UaNOzK2+/evR6AaQ3EpcNk4Fya89XbtlF00fi9kCThAVm0BHGXzHuyvjkFzKUf3eV6
	 nyRaAhkYXGXQ5NbYIbS+6770JoPgcfcEIVjagVv5wAqwxz1S4huT4iEWzq5dW1/il3
	 Gqn+au3KwRwcw==
Received: from securemail.tdt.de (localhost [127.0.0.1])
	by securemail.tdt.de (Postfix) with ESMTP id 143FA240046;
	Mon, 30 Mar 2026 11:07:31 +0200 (CEST)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
	by securemail.tdt.de (Postfix) with ESMTP id 07392240042;
	Mon, 30 Mar 2026 11:07:31 +0200 (CEST)
Received: from [10.2.3.40] (unknown [10.2.3.40])
	by mail.dev.tdt.de (Postfix) with ESMTPSA id D579F20E49;
	Mon, 30 Mar 2026 11:07:30 +0200 (CEST)
From: Florian Eckert <fe@dev.tdt.de>
Date: Mon, 30 Mar 2026 11:07:13 +0200
Subject: [PATCH v2 3/7] PCI: intel-gw: Enable clock before phy init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260330-pcie-intel-gw-v2-3-8bd07367a298@dev.tdt.de>
References: <20260330-pcie-intel-gw-v2-0-8bd07367a298@dev.tdt.de>
In-Reply-To: <20260330-pcie-intel-gw-v2-0-8bd07367a298@dev.tdt.de>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?utf-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Sajid Dalvi <sdalvi@google.com>,
	Ajay Agarwal <ajayagarwal@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rahul Tanwar <rtanwar@maxlinear.com>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Florian Eckert <fe@dev.tdt.de>,
	Eckert.Florian@googlemail.com, ms@dev.tdt.de
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774861650; l=2080;
 i=fe@dev.tdt.de; s=20260205; h=from:subject:message-id;
 bh=coHmsdtqcsW+dKyhuAd7vn7jGgDFbg9jYRqHLyenC9w=;
 b=T7awTZDD/b7+5jEOtcR4CkLqqj61lqSA8enPoRPazwosA0itEgbgpwu+gglvzKCRpTT1so2Uw
 SdhHrH9PH9ZAcddIOzuilxpL6qU4agJRCrQ+7qoKyempnq7wdfaMzp2
X-Developer-Key: i=fe@dev.tdt.de; a=ed25519;
 pk=q7Pvv3Au2sAVRhBz5UF7ZqUPNxUwXQ78Jdqu8E6Negk=
X-purgate-ID: 151534::1774861652-EF422842-845B70A9/0/0
X-purgate: clean
X-purgate-type: clean
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tdt.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[dev.tdt.de:s=z1-selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[vger.kernel.org,dev.tdt.de,googlemail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-282330-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[dev.tdt.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dev.tdt.de:dkim,dev.tdt.de:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fe@dev.tdt.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,linaro,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 30178357EE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

To ensure that the boot sequence is correct, the dwc pcie core clock must
be switched on before phy init call [1]. This changes are based on patched
kernel sources of the MaxLinear SDK.

[1] https://github.com/maxlinear/linux/blob/updk_9.1.90/drivers/pci/controller/dwc/pcie-intel-gw.c#L544

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 drivers/pci/controller/dwc/pcie-intel-gw.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-intel-gw.c b/drivers/pci/controller/dwc/pcie-intel-gw.c
index e88b8243cc41c607c39e4d58c4dcd8c8c082e8b0..6d9499d954674a26a74bff56b7fb5759767424c0 100644
--- a/drivers/pci/controller/dwc/pcie-intel-gw.c
+++ b/drivers/pci/controller/dwc/pcie-intel-gw.c
@@ -291,13 +291,9 @@ static int intel_pcie_host_setup(struct intel_pcie *pcie)
 
 	intel_pcie_core_rst_assert(pcie);
 	intel_pcie_device_rst_assert(pcie);
-
-	ret = phy_init(pcie->phy);
-	if (ret)
-		return ret;
-
 	intel_pcie_core_rst_deassert(pcie);
 
+	/* Controller clock must be provided earlier than PHY */
 	ret = clk_prepare_enable(pcie->core_clk);
 	if (ret) {
 		dev_err(pcie->pci.dev, "Core clock enable failed: %d\n", ret);
@@ -306,13 +302,17 @@ static int intel_pcie_host_setup(struct intel_pcie *pcie)
 
 	pci->atu_base = pci->dbi_base + 0xC0000;
 
+	ret = phy_init(pcie->phy);
+	if (ret)
+		goto phy_err;
+
 	intel_pcie_ltssm_disable(pcie);
 	intel_pcie_link_setup(pcie);
 	intel_pcie_init_n_fts(pci);
 
 	ret = dw_pcie_setup_rc(&pci->pp);
 	if (ret)
-		goto app_init_err;
+		goto err;
 
 	dw_pcie_upconfig_setup(pci);
 
@@ -321,17 +321,18 @@ static int intel_pcie_host_setup(struct intel_pcie *pcie)
 
 	ret = dw_pcie_wait_for_link(pci);
 	if (ret)
-		goto app_init_err;
+		goto err;
 
 	intel_pcie_core_irq_enable(pcie);
 
 	return 0;
 
-app_init_err:
+err:
+	phy_exit(pcie->phy);
+phy_err:
 	clk_disable_unprepare(pcie->core_clk);
 clk_err:
 	intel_pcie_core_rst_assert(pcie);
-	phy_exit(pcie->phy);
 
 	return ret;
 }

-- 
2.47.3


